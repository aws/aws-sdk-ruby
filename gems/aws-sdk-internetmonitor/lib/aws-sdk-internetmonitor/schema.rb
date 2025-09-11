# frozen_string_literal: true

# This is generated code!

module Aws::InternetMonitor
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.internetmonitor#AccountId', name: 'AccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.internetmonitor#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:.*"})
    AvailabilityMeasurement = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#AvailabilityMeasurement', name: 'AvailabilityMeasurement')
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#BadRequestException', name: 'BadRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClientLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#ClientLocation', name: 'ClientLocation')
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateMonitorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#CreateMonitorInput', name: 'CreateMonitorInput')
    CreateMonitorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#CreateMonitorOutput', name: 'CreateMonitorOutput')
    DeleteMonitorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#DeleteMonitorInput', name: 'DeleteMonitorInput')
    DeleteMonitorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#DeleteMonitorOutput', name: 'DeleteMonitorOutput')
    FilterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.internetmonitor#FilterList', name: 'FilterList')
    FilterParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#FilterParameter', name: 'FilterParameter')
    FilterParameters = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.internetmonitor#FilterParameters', name: 'FilterParameters')
    GetHealthEventOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#GetHealthEventOperationInput', name: 'GetHealthEventOperationInput')
    GetHealthEventOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#GetHealthEventOperationOutput', name: 'GetHealthEventOperationOutput')
    GetInternetEventInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#GetInternetEventInput', name: 'GetInternetEventInput')
    GetInternetEventOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#GetInternetEventOutput', name: 'GetInternetEventOutput')
    GetMonitorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#GetMonitorInput', name: 'GetMonitorInput')
    GetMonitorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#GetMonitorOutput', name: 'GetMonitorOutput')
    GetQueryResultsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#GetQueryResultsInput', name: 'GetQueryResultsInput')
    GetQueryResultsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#GetQueryResultsOutput', name: 'GetQueryResultsOutput')
    GetQueryStatusInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#GetQueryStatusInput', name: 'GetQueryStatusInput')
    GetQueryStatusOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#GetQueryStatusOutput', name: 'GetQueryStatusOutput')
    HealthEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#HealthEvent', name: 'HealthEvent')
    HealthEventImpactType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.internetmonitor#HealthEventImpactType', name: 'HealthEventImpactType', traits: {"smithy.api#enum" => [{"value" => "AVAILABILITY", "name" => "AVAILABILITY"}, {"value" => "PERFORMANCE", "name" => "PERFORMANCE"}, {"value" => "LOCAL_AVAILABILITY", "name" => "LOCAL_AVAILABILITY"}, {"value" => "LOCAL_PERFORMANCE", "name" => "LOCAL_PERFORMANCE"}]})
    HealthEventList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.internetmonitor#HealthEventList', name: 'HealthEventList')
    HealthEventName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.internetmonitor#HealthEventName', name: 'HealthEventName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9/_.-]+$"})
    HealthEventStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.internetmonitor#HealthEventStatus', name: 'HealthEventStatus', traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "RESOLVED", "name" => "RESOLVED"}]})
    HealthEventsConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#HealthEventsConfig', name: 'HealthEventsConfig')
    ImpactedLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#ImpactedLocation', name: 'ImpactedLocation')
    ImpactedLocationsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.internetmonitor#ImpactedLocationsList', name: 'ImpactedLocationsList')
    InternalServerErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#InternalServerErrorException', name: 'InternalServerErrorException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    InternetEventId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.internetmonitor#InternetEventId', name: 'InternetEventId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    InternetEventMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.internetmonitor#InternetEventMaxResults', name: 'InternetEventMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    InternetEventStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.internetmonitor#InternetEventStatus', name: 'InternetEventStatus', traits: {"smithy.api#enum" => [{"name" => "ACTIVE", "value" => "ACTIVE"}, {"name" => "RESOLVED", "value" => "RESOLVED"}]})
    InternetEventSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#InternetEventSummary', name: 'InternetEventSummary')
    InternetEventType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.internetmonitor#InternetEventType', name: 'InternetEventType', traits: {"smithy.api#enum" => [{"value" => "AVAILABILITY", "name" => "AVAILABILITY"}, {"value" => "PERFORMANCE", "name" => "PERFORMANCE"}]})
    InternetEventsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.internetmonitor#InternetEventsList', name: 'InternetEventsList')
    InternetHealth = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#InternetHealth', name: 'InternetHealth')
    InternetMeasurementsLogDelivery = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#InternetMeasurementsLogDelivery', name: 'InternetMeasurementsLogDelivery')
    Ipv4PrefixList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.internetmonitor#Ipv4PrefixList', name: 'Ipv4PrefixList')
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ListHealthEventsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#ListHealthEventsOperationInput', name: 'ListHealthEventsOperationInput')
    ListHealthEventsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#ListHealthEventsOperationOutput', name: 'ListHealthEventsOperationOutput')
    ListInternetEventsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#ListInternetEventsInput', name: 'ListInternetEventsInput')
    ListInternetEventsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#ListInternetEventsOutput', name: 'ListInternetEventsOutput')
    ListMonitorsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#ListMonitorsInput', name: 'ListMonitorsInput')
    ListMonitorsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#ListMonitorsOutput', name: 'ListMonitorsOutput')
    ListTagsForResourceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#ListTagsForResourceOperationInput', name: 'ListTagsForResourceOperationInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.internetmonitor#MonitorResource", "ids" => {"MonitorName" => "ResourceArn"}}]})
    ListTagsForResourceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#ListTagsForResourceOperationOutput', name: 'ListTagsForResourceOperationOutput')
    LocalHealthEventsConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#LocalHealthEventsConfig', name: 'LocalHealthEventsConfig')
    LocalHealthEventsConfigStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.internetmonitor#LocalHealthEventsConfigStatus', name: 'LocalHealthEventsConfigStatus', traits: {"smithy.api#enum" => [{"name" => "ENABLED", "value" => "ENABLED"}, {"name" => "DISABLED", "value" => "DISABLED"}]})
    LogDeliveryStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.internetmonitor#LogDeliveryStatus', name: 'LogDeliveryStatus', traits: {"smithy.api#enum" => [{"name" => "ENABLED", "value" => "ENABLED"}, {"name" => "DISABLED", "value" => "DISABLED"}]})
    MaxCityNetworksToMonitor = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.internetmonitor#MaxCityNetworksToMonitor', name: 'MaxCityNetworksToMonitor', traits: {"smithy.api#range" => {"min" => 1, "max" => 500000}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.internetmonitor#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 25}})
    Monitor = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#Monitor', name: 'Monitor')
    MonitorArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.internetmonitor#MonitorArn', name: 'MonitorArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 512}, "smithy.api#pattern" => "^arn:.*"})
    MonitorConfigState = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.internetmonitor#MonitorConfigState', name: 'MonitorConfigState', traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "INACTIVE", "name" => "INACTIVE"}, {"value" => "ERROR", "name" => "ERROR"}]})
    MonitorList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.internetmonitor#MonitorList', name: 'MonitorList')
    MonitorProcessingStatusCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.internetmonitor#MonitorProcessingStatusCode', name: 'MonitorProcessingStatusCode', traits: {"smithy.api#enum" => [{"value" => "OK", "name" => "OK"}, {"value" => "INACTIVE", "name" => "INACTIVE"}, {"value" => "COLLECTING_DATA", "name" => "COLLECTING_DATA"}, {"value" => "INSUFFICIENT_DATA", "name" => "INSUFFICIENT_DATA"}, {"value" => "FAULT_SERVICE", "name" => "FAULT_SERVICE"}, {"value" => "FAULT_ACCESS_CLOUDWATCH", "name" => "FAULT_ACCESS_CLOUDWATCH"}]})
    Network = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#Network', name: 'Network')
    NetworkImpairment = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#NetworkImpairment', name: 'NetworkImpairment')
    NetworkList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.internetmonitor#NetworkList', name: 'NetworkList')
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#NotFoundException', name: 'NotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Operator = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.internetmonitor#Operator', name: 'Operator', traits: {"smithy.api#enum" => [{"name" => "EQUALS", "value" => "EQUALS"}, {"name" => "NOT_EQUALS", "value" => "NOT_EQUALS"}]})
    Percentage = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.internetmonitor#Percentage', name: 'Percentage', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    PerformanceMeasurement = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#PerformanceMeasurement', name: 'PerformanceMeasurement')
    QueryData = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.internetmonitor#QueryData', name: 'QueryData')
    QueryField = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#QueryField', name: 'QueryField')
    QueryFields = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.internetmonitor#QueryFields', name: 'QueryFields')
    QueryMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.internetmonitor#QueryMaxResults', name: 'QueryMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    QueryRow = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.internetmonitor#QueryRow', name: 'QueryRow')
    QueryStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.internetmonitor#QueryStatus', name: 'QueryStatus', traits: {"smithy.api#enum" => [{"name" => "QUEUED", "value" => "QUEUED"}, {"name" => "RUNNING", "value" => "RUNNING"}, {"name" => "SUCCEEDED", "value" => "SUCCEEDED"}, {"name" => "FAILED", "value" => "FAILED"}, {"name" => "CANCELED", "value" => "CANCELED"}]})
    QueryType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.internetmonitor#QueryType', name: 'QueryType', traits: {"smithy.api#enum" => [{"name" => "MEASUREMENTS", "value" => "MEASUREMENTS"}, {"name" => "TOP_LOCATIONS", "value" => "TOP_LOCATIONS"}, {"name" => "TOP_LOCATION_DETAILS", "value" => "TOP_LOCATION_DETAILS"}, {"name" => "OVERALL_TRAFFIC_SUGGESTIONS", "value" => "OVERALL_TRAFFIC_SUGGESTIONS"}, {"name" => "OVERALL_TRAFFIC_SUGGESTIONS_DETAILS", "value" => "OVERALL_TRAFFIC_SUGGESTIONS_DETAILS"}, {"name" => "ROUTING_SUGGESTIONS", "value" => "ROUTING_SUGGESTIONS"}]})
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.internetmonitor#ResourceName', name: 'ResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RoundTripTime = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#RoundTripTime', name: 'RoundTripTime')
    S3Config = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#S3Config', name: 'S3Config')
    SetOfARNs = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.internetmonitor#SetOfARNs', name: 'SetOfARNs')
    StartQueryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#StartQueryInput', name: 'StartQueryInput')
    StartQueryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#StartQueryOutput', name: 'StartQueryOutput')
    StopQueryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#StopQueryInput', name: 'StopQueryInput')
    StopQueryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#StopQueryOutput', name: 'StopQueryOutput')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.internetmonitor#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.internetmonitor#TagKeys', name: 'TagKeys', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.internetmonitor#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#TagResourceOperationInput', name: 'TagResourceOperationInput', traits: {"aws.api#data" => "tagging", "smithy.api#references" => [{"resource" => "com.amazonaws.internetmonitor#MonitorResource", "ids" => {"MonitorName" => "ResourceArn"}}]})
    TagResourceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#TagResourceOperationOutput', name: 'TagResourceOperationOutput')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.internetmonitor#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#TooManyRequestsException', name: 'TooManyRequestsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    TrafficPercentageToMonitor = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.internetmonitor#TrafficPercentageToMonitor', name: 'TrafficPercentageToMonitor', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    TriangulationEventType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.internetmonitor#TriangulationEventType', name: 'TriangulationEventType', traits: {"smithy.api#enum" => [{"value" => "AWS", "name" => "AWS"}, {"value" => "Internet", "name" => "INTERNET"}]})
    UntagResourceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#UntagResourceOperationInput', name: 'UntagResourceOperationInput', traits: {"aws.api#data" => "tagging", "smithy.api#references" => [{"resource" => "com.amazonaws.internetmonitor#MonitorResource", "ids" => {"MonitorName" => "ResourceArn"}}]})
    UntagResourceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#UntagResourceOperationOutput', name: 'UntagResourceOperationOutput')
    UpdateMonitorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#UpdateMonitorInput', name: 'UpdateMonitorInput')
    UpdateMonitorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#UpdateMonitorOutput', name: 'UpdateMonitorOutput')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.internetmonitor#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AvailabilityMeasurement.add_member(:experience_score, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'ExperienceScore'))
    AvailabilityMeasurement.add_member(:percent_of_total_traffic_impacted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'PercentOfTotalTrafficImpacted'))
    AvailabilityMeasurement.add_member(:percent_of_client_location_impacted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'PercentOfClientLocationImpacted'))
    AvailabilityMeasurement.type = Types::AvailabilityMeasurement
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    BadRequestException.type = Types::BadRequestException
    ClientLocation.add_member(:as_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ASName', traits: {"smithy.api#required" => {}}))
    ClientLocation.add_member(:as_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'ASNumber', traits: {"smithy.api#required" => {}}))
    ClientLocation.add_member(:country, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Country', traits: {"smithy.api#required" => {}}))
    ClientLocation.add_member(:subdivision, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Subdivision'))
    ClientLocation.add_member(:metro, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Metro'))
    ClientLocation.add_member(:city, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'City', traits: {"smithy.api#required" => {}}))
    ClientLocation.add_member(:latitude, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'Latitude', traits: {"smithy.api#required" => {}}))
    ClientLocation.add_member(:longitude, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'Longitude', traits: {"smithy.api#required" => {}}))
    ClientLocation.type = Types::ClientLocation
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ConflictException.type = Types::ConflictException
    CreateMonitorInput.add_member(:monitor_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'MonitorName', traits: {"smithy.api#required" => {}}))
    CreateMonitorInput.add_member(:resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetOfARNs, location_name: 'Resources'))
    CreateMonitorInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ClientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateMonitorInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags'))
    CreateMonitorInput.add_member(:max_city_networks_to_monitor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxCityNetworksToMonitor, location_name: 'MaxCityNetworksToMonitor'))
    CreateMonitorInput.add_member(:internet_measurements_log_delivery, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternetMeasurementsLogDelivery, location_name: 'InternetMeasurementsLogDelivery'))
    CreateMonitorInput.add_member(:traffic_percentage_to_monitor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPercentageToMonitor, location_name: 'TrafficPercentageToMonitor'))
    CreateMonitorInput.add_member(:health_events_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthEventsConfig, location_name: 'HealthEventsConfig'))
    CreateMonitorInput.type = Types::CreateMonitorInput
    CreateMonitorOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorArn, location_name: 'Arn', traits: {"smithy.api#required" => {}}))
    CreateMonitorOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorConfigState, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    CreateMonitorOutput.type = Types::CreateMonitorOutput
    DeleteMonitorInput.add_member(:monitor_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'MonitorName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMonitorInput.type = Types::DeleteMonitorInput
    DeleteMonitorOutput.type = Types::DeleteMonitorOutput
    FilterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    FilterParameter.add_member(:field, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Field'))
    FilterParameter.add_member(:operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operator, location_name: 'Operator'))
    FilterParameter.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Values'))
    FilterParameter.type = Types::FilterParameter
    FilterParameters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterParameter)
    GetHealthEventOperationInput.add_member(:monitor_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'MonitorName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetHealthEventOperationInput.add_member(:event_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthEventName, location_name: 'EventId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetHealthEventOperationInput.add_member(:linked_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'LinkedAccountId', traits: {"smithy.api#httpQuery" => "LinkedAccountId"}))
    GetHealthEventOperationInput.type = Types::GetHealthEventOperationInput
    GetHealthEventOperationOutput.add_member(:event_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'EventArn', traits: {"smithy.api#required" => {}}))
    GetHealthEventOperationOutput.add_member(:event_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthEventName, location_name: 'EventId', traits: {"smithy.api#required" => {}}))
    GetHealthEventOperationOutput.add_member(:started_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'StartedAt', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetHealthEventOperationOutput.add_member(:ended_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'EndedAt', traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetHealthEventOperationOutput.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetHealthEventOperationOutput.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastUpdatedAt', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetHealthEventOperationOutput.add_member(:impacted_locations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpactedLocationsList, location_name: 'ImpactedLocations', traits: {"smithy.api#required" => {}}))
    GetHealthEventOperationOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthEventStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    GetHealthEventOperationOutput.add_member(:percent_of_total_traffic_impacted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'PercentOfTotalTrafficImpacted'))
    GetHealthEventOperationOutput.add_member(:impact_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthEventImpactType, location_name: 'ImpactType', traits: {"smithy.api#required" => {}}))
    GetHealthEventOperationOutput.add_member(:health_score_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'HealthScoreThreshold', traits: {"smithy.api#default" => 0}))
    GetHealthEventOperationOutput.type = Types::GetHealthEventOperationOutput
    GetInternetEventInput.add_member(:event_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternetEventId, location_name: 'EventId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetInternetEventInput.type = Types::GetInternetEventInput
    GetInternetEventOutput.add_member(:event_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternetEventId, location_name: 'EventId', traits: {"smithy.api#required" => {}}))
    GetInternetEventOutput.add_member(:event_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'EventArn', traits: {"smithy.api#required" => {}}))
    GetInternetEventOutput.add_member(:started_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'StartedAt', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetInternetEventOutput.add_member(:ended_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'EndedAt', traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetInternetEventOutput.add_member(:client_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLocation, location_name: 'ClientLocation', traits: {"smithy.api#required" => {}}))
    GetInternetEventOutput.add_member(:event_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternetEventType, location_name: 'EventType', traits: {"smithy.api#required" => {}}))
    GetInternetEventOutput.add_member(:event_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternetEventStatus, location_name: 'EventStatus', traits: {"smithy.api#required" => {}}))
    GetInternetEventOutput.type = Types::GetInternetEventOutput
    GetMonitorInput.add_member(:monitor_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'MonitorName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMonitorInput.add_member(:linked_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'LinkedAccountId', traits: {"smithy.api#httpQuery" => "LinkedAccountId"}))
    GetMonitorInput.type = Types::GetMonitorInput
    GetMonitorOutput.add_member(:monitor_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'MonitorName', traits: {"smithy.api#required" => {}}))
    GetMonitorOutput.add_member(:monitor_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorArn, location_name: 'MonitorArn', traits: {"smithy.api#required" => {}}))
    GetMonitorOutput.add_member(:resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetOfARNs, location_name: 'Resources', traits: {"smithy.api#required" => {}}))
    GetMonitorOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorConfigState, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    GetMonitorOutput.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetMonitorOutput.add_member(:modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'ModifiedAt', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetMonitorOutput.add_member(:processing_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorProcessingStatusCode, location_name: 'ProcessingStatus'))
    GetMonitorOutput.add_member(:processing_status_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ProcessingStatusInfo'))
    GetMonitorOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags'))
    GetMonitorOutput.add_member(:max_city_networks_to_monitor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxCityNetworksToMonitor, location_name: 'MaxCityNetworksToMonitor'))
    GetMonitorOutput.add_member(:internet_measurements_log_delivery, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternetMeasurementsLogDelivery, location_name: 'InternetMeasurementsLogDelivery'))
    GetMonitorOutput.add_member(:traffic_percentage_to_monitor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPercentageToMonitor, location_name: 'TrafficPercentageToMonitor'))
    GetMonitorOutput.add_member(:health_events_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthEventsConfig, location_name: 'HealthEventsConfig'))
    GetMonitorOutput.type = Types::GetMonitorOutput
    GetQueryResultsInput.add_member(:monitor_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'MonitorName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueryResultsInput.add_member(:query_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'QueryId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueryResultsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    GetQueryResultsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryMaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    GetQueryResultsInput.type = Types::GetQueryResultsInput
    GetQueryResultsOutput.add_member(:fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryFields, location_name: 'Fields', traits: {"smithy.api#required" => {}}))
    GetQueryResultsOutput.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryData, location_name: 'Data', traits: {"smithy.api#required" => {}}))
    GetQueryResultsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken'))
    GetQueryResultsOutput.type = Types::GetQueryResultsOutput
    GetQueryStatusInput.add_member(:monitor_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'MonitorName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueryStatusInput.add_member(:query_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'QueryId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueryStatusInput.type = Types::GetQueryStatusInput
    GetQueryStatusOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    GetQueryStatusOutput.type = Types::GetQueryStatusOutput
    HealthEvent.add_member(:event_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'EventArn', traits: {"smithy.api#required" => {}}))
    HealthEvent.add_member(:event_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthEventName, location_name: 'EventId', traits: {"smithy.api#required" => {}}))
    HealthEvent.add_member(:started_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'StartedAt', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    HealthEvent.add_member(:ended_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'EndedAt', traits: {"smithy.api#timestampFormat" => "date-time"}))
    HealthEvent.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#timestampFormat" => "date-time"}))
    HealthEvent.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastUpdatedAt', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    HealthEvent.add_member(:impacted_locations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpactedLocationsList, location_name: 'ImpactedLocations', traits: {"smithy.api#required" => {}}))
    HealthEvent.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthEventStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    HealthEvent.add_member(:percent_of_total_traffic_impacted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'PercentOfTotalTrafficImpacted'))
    HealthEvent.add_member(:impact_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthEventImpactType, location_name: 'ImpactType', traits: {"smithy.api#required" => {}}))
    HealthEvent.add_member(:health_score_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'HealthScoreThreshold', traits: {"smithy.api#default" => 0}))
    HealthEvent.type = Types::HealthEvent
    HealthEventList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthEvent)
    HealthEventsConfig.add_member(:availability_score_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'AvailabilityScoreThreshold', traits: {"smithy.api#default" => 0}))
    HealthEventsConfig.add_member(:performance_score_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'PerformanceScoreThreshold', traits: {"smithy.api#default" => 0}))
    HealthEventsConfig.add_member(:availability_local_health_events_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocalHealthEventsConfig, location_name: 'AvailabilityLocalHealthEventsConfig'))
    HealthEventsConfig.add_member(:performance_local_health_events_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocalHealthEventsConfig, location_name: 'PerformanceLocalHealthEventsConfig'))
    HealthEventsConfig.type = Types::HealthEventsConfig
    ImpactedLocation.add_member(:as_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ASName', traits: {"smithy.api#required" => {}}))
    ImpactedLocation.add_member(:as_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'ASNumber', traits: {"smithy.api#required" => {}}))
    ImpactedLocation.add_member(:country, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Country', traits: {"smithy.api#required" => {}}))
    ImpactedLocation.add_member(:subdivision, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Subdivision'))
    ImpactedLocation.add_member(:metro, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Metro'))
    ImpactedLocation.add_member(:city, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'City'))
    ImpactedLocation.add_member(:latitude, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'Latitude'))
    ImpactedLocation.add_member(:longitude, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'Longitude'))
    ImpactedLocation.add_member(:country_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'CountryCode'))
    ImpactedLocation.add_member(:subdivision_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'SubdivisionCode'))
    ImpactedLocation.add_member(:service_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ServiceLocation'))
    ImpactedLocation.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthEventStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    ImpactedLocation.add_member(:caused_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkImpairment, location_name: 'CausedBy'))
    ImpactedLocation.add_member(:internet_health, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternetHealth, location_name: 'InternetHealth'))
    ImpactedLocation.add_member(:ipv4_prefixes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv4PrefixList, location_name: 'Ipv4Prefixes'))
    ImpactedLocation.type = Types::ImpactedLocation
    ImpactedLocationsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpactedLocation)
    InternalServerErrorException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    InternalServerErrorException.type = Types::InternalServerErrorException
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    InternalServerException.type = Types::InternalServerException
    InternetEventSummary.add_member(:event_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternetEventId, location_name: 'EventId', traits: {"smithy.api#required" => {}}))
    InternetEventSummary.add_member(:event_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'EventArn', traits: {"smithy.api#required" => {}}))
    InternetEventSummary.add_member(:started_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'StartedAt', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    InternetEventSummary.add_member(:ended_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'EndedAt', traits: {"smithy.api#timestampFormat" => "date-time"}))
    InternetEventSummary.add_member(:client_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLocation, location_name: 'ClientLocation', traits: {"smithy.api#required" => {}}))
    InternetEventSummary.add_member(:event_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternetEventType, location_name: 'EventType', traits: {"smithy.api#required" => {}}))
    InternetEventSummary.add_member(:event_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternetEventStatus, location_name: 'EventStatus', traits: {"smithy.api#required" => {}}))
    InternetEventSummary.type = Types::InternetEventSummary
    InternetEventsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternetEventSummary)
    InternetHealth.add_member(:availability, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityMeasurement, location_name: 'Availability'))
    InternetHealth.add_member(:performance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceMeasurement, location_name: 'Performance'))
    InternetHealth.type = Types::InternetHealth
    InternetMeasurementsLogDelivery.add_member(:s3_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Config, location_name: 'S3Config'))
    InternetMeasurementsLogDelivery.type = Types::InternetMeasurementsLogDelivery
    Ipv4PrefixList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    LimitExceededException.type = Types::LimitExceededException
    ListHealthEventsOperationInput.add_member(:monitor_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'MonitorName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListHealthEventsOperationInput.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'StartTime', traits: {"smithy.api#httpQuery" => "StartTime", "smithy.api#timestampFormat" => "date-time"}))
    ListHealthEventsOperationInput.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'EndTime', traits: {"smithy.api#httpQuery" => "EndTime", "smithy.api#timestampFormat" => "date-time"}))
    ListHealthEventsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListHealthEventsOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListHealthEventsOperationInput.add_member(:event_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthEventStatus, location_name: 'EventStatus', traits: {"smithy.api#httpQuery" => "EventStatus"}))
    ListHealthEventsOperationInput.add_member(:linked_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'LinkedAccountId', traits: {"smithy.api#httpQuery" => "LinkedAccountId"}))
    ListHealthEventsOperationInput.type = Types::ListHealthEventsOperationInput
    ListHealthEventsOperationOutput.add_member(:health_events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthEventList, location_name: 'HealthEvents', traits: {"smithy.api#required" => {}}))
    ListHealthEventsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken'))
    ListHealthEventsOperationOutput.type = Types::ListHealthEventsOperationOutput
    ListInternetEventsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListInternetEventsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternetEventMaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "InternetEventMaxResults"}))
    ListInternetEventsInput.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'StartTime', traits: {"smithy.api#httpQuery" => "StartTime", "smithy.api#timestampFormat" => "date-time"}))
    ListInternetEventsInput.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'EndTime', traits: {"smithy.api#httpQuery" => "EndTime", "smithy.api#timestampFormat" => "date-time"}))
    ListInternetEventsInput.add_member(:event_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'EventStatus', traits: {"smithy.api#httpQuery" => "EventStatus"}))
    ListInternetEventsInput.add_member(:event_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'EventType', traits: {"smithy.api#httpQuery" => "EventType"}))
    ListInternetEventsInput.type = Types::ListInternetEventsInput
    ListInternetEventsOutput.add_member(:internet_events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternetEventsList, location_name: 'InternetEvents', traits: {"smithy.api#required" => {}}))
    ListInternetEventsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken'))
    ListInternetEventsOutput.type = Types::ListInternetEventsOutput
    ListMonitorsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListMonitorsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListMonitorsInput.add_member(:monitor_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'MonitorStatus', traits: {"smithy.api#httpQuery" => "MonitorStatus"}))
    ListMonitorsInput.add_member(:include_linked_accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'IncludeLinkedAccounts', traits: {"smithy.api#httpQuery" => "IncludeLinkedAccounts"}))
    ListMonitorsInput.type = Types::ListMonitorsInput
    ListMonitorsOutput.add_member(:monitors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorList, location_name: 'Monitors', traits: {"smithy.api#required" => {}}))
    ListMonitorsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken'))
    ListMonitorsOutput.type = Types::ListMonitorsOutput
    ListTagsForResourceOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorArn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceOperationInput.type = Types::ListTagsForResourceOperationInput
    ListTagsForResourceOperationOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags'))
    ListTagsForResourceOperationOutput.type = Types::ListTagsForResourceOperationOutput
    LocalHealthEventsConfig.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocalHealthEventsConfigStatus, location_name: 'Status'))
    LocalHealthEventsConfig.add_member(:health_score_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'HealthScoreThreshold', traits: {"smithy.api#default" => 0}))
    LocalHealthEventsConfig.add_member(:min_traffic_impact, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'MinTrafficImpact', traits: {"smithy.api#default" => 0}))
    LocalHealthEventsConfig.type = Types::LocalHealthEventsConfig
    Monitor.add_member(:monitor_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'MonitorName', traits: {"smithy.api#required" => {}}))
    Monitor.add_member(:monitor_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorArn, location_name: 'MonitorArn', traits: {"smithy.api#required" => {}}))
    Monitor.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorConfigState, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    Monitor.add_member(:processing_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorProcessingStatusCode, location_name: 'ProcessingStatus'))
    Monitor.type = Types::Monitor
    MonitorList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Monitor)
    Network.add_member(:as_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ASName', traits: {"smithy.api#required" => {}}))
    Network.add_member(:as_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'ASNumber', traits: {"smithy.api#required" => {}}))
    Network.type = Types::Network
    NetworkImpairment.add_member(:networks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkList, location_name: 'Networks', traits: {"smithy.api#required" => {}}))
    NetworkImpairment.add_member(:as_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkList, location_name: 'AsPath', traits: {"smithy.api#required" => {}}))
    NetworkImpairment.add_member(:network_event_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TriangulationEventType, location_name: 'NetworkEventType', traits: {"smithy.api#required" => {}}))
    NetworkImpairment.type = Types::NetworkImpairment
    NetworkList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Network)
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    NotFoundException.type = Types::NotFoundException
    PerformanceMeasurement.add_member(:experience_score, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'ExperienceScore'))
    PerformanceMeasurement.add_member(:percent_of_total_traffic_impacted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'PercentOfTotalTrafficImpacted'))
    PerformanceMeasurement.add_member(:percent_of_client_location_impacted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'PercentOfClientLocationImpacted'))
    PerformanceMeasurement.add_member(:round_trip_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoundTripTime, location_name: 'RoundTripTime'))
    PerformanceMeasurement.type = Types::PerformanceMeasurement
    QueryData.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryRow)
    QueryField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Name'))
    QueryField.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Type'))
    QueryField.type = Types::QueryField
    QueryFields.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryField)
    QueryRow.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RoundTripTime.add_member(:p50, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'P50'))
    RoundTripTime.add_member(:p90, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'P90'))
    RoundTripTime.add_member(:p95, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: 'P95'))
    RoundTripTime.type = Types::RoundTripTime
    S3Config.add_member(:bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'BucketName', traits: {"smithy.api#length" => {"min" => 3}}))
    S3Config.add_member(:bucket_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'BucketPrefix'))
    S3Config.add_member(:log_delivery_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogDeliveryStatus, location_name: 'LogDeliveryStatus'))
    S3Config.type = Types::S3Config
    SetOfARNs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    StartQueryInput.add_member(:monitor_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'MonitorName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartQueryInput.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'StartTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    StartQueryInput.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'EndTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    StartQueryInput.add_member(:query_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryType, location_name: 'QueryType', traits: {"smithy.api#required" => {}}))
    StartQueryInput.add_member(:filter_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterParameters, location_name: 'FilterParameters'))
    StartQueryInput.add_member(:linked_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'LinkedAccountId'))
    StartQueryInput.type = Types::StartQueryInput
    StartQueryOutput.add_member(:query_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'QueryId', traits: {"smithy.api#required" => {}}))
    StartQueryOutput.type = Types::StartQueryOutput
    StopQueryInput.add_member(:monitor_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'MonitorName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopQueryInput.add_member(:query_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'QueryId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopQueryInput.type = Types::StopQueryInput
    StopQueryOutput.type = Types::StopQueryOutput
    TagKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorArn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    TagResourceOperationInput.type = Types::TagResourceOperationInput
    TagResourceOperationOutput.type = Types::TagResourceOperationOutput
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ThrottlingException.type = Types::ThrottlingException
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UntagResourceOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorArn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceOperationInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'TagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceOperationInput.type = Types::UntagResourceOperationInput
    UntagResourceOperationOutput.type = Types::UntagResourceOperationOutput
    UpdateMonitorInput.add_member(:monitor_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'MonitorName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMonitorInput.add_member(:resources_to_add, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetOfARNs, location_name: 'ResourcesToAdd'))
    UpdateMonitorInput.add_member(:resources_to_remove, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetOfARNs, location_name: 'ResourcesToRemove'))
    UpdateMonitorInput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorConfigState, location_name: 'Status'))
    UpdateMonitorInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ClientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateMonitorInput.add_member(:max_city_networks_to_monitor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxCityNetworksToMonitor, location_name: 'MaxCityNetworksToMonitor'))
    UpdateMonitorInput.add_member(:internet_measurements_log_delivery, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternetMeasurementsLogDelivery, location_name: 'InternetMeasurementsLogDelivery'))
    UpdateMonitorInput.add_member(:traffic_percentage_to_monitor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficPercentageToMonitor, location_name: 'TrafficPercentageToMonitor'))
    UpdateMonitorInput.add_member(:health_events_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthEventsConfig, location_name: 'HealthEventsConfig'))
    UpdateMonitorInput.type = Types::UpdateMonitorInput
    UpdateMonitorOutput.add_member(:monitor_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorArn, location_name: 'MonitorArn', traits: {"smithy.api#required" => {}}))
    UpdateMonitorOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorConfigState, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    UpdateMonitorOutput.type = Types::UpdateMonitorOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ValidationException.type = Types::ValidationException

    InternetMonitor20210603 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.internetmonitor#InternetMonitor20210603"
      service.name = "InternetMonitor20210603"
      service.version = "2021-06-03"
      service.traits = {"aws.api#service" => {"sdkId" => "InternetMonitor", "arnNamespace" => "internetmonitor", "cloudFormationName" => "InternetMonitor", "cloudTrailEventSource" => "internetmonitor.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "internetmonitor"}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tag key-value pairs attached to the resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tag key-value pairs in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by the tag keys in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["Content-Type", "X-Amz-Requested-Operation"]}, "smithy.api#title" => "Amazon CloudWatch Internet Monitor"}
      service.add_operation(:create_monitor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.internetmonitor#CreateMonitor"
        operation.name = "CreateMonitor"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMonitorInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMonitorOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#http" => {"uri" => "/v20210603/Monitors", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_monitor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.internetmonitor#DeleteMonitor"
        operation.name = "DeleteMonitor"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMonitorInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMonitorOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v20210603/Monitors/{MonitorName}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_health_event, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.internetmonitor#GetHealthEvent"
        operation.name = "GetHealthEvent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetHealthEventOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetHealthEventOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v20210603/Monitors/{MonitorName}/HealthEvents/{EventId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_internet_event, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.internetmonitor#GetInternetEvent"
        operation.name = "GetInternetEvent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInternetEventInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInternetEventOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v20210603/InternetEvents/{EventId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_monitor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.internetmonitor#GetMonitor"
        operation.name = "GetMonitor"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMonitorInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMonitorOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v20210603/Monitors/{MonitorName}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_query_results, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.internetmonitor#GetQueryResults"
        operation.name = "GetQueryResults"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueryResultsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueryResultsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v20210603/Monitors/{MonitorName}/Queries/{QueryId}/Results", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetQueryResults.new
      end)
      service.add_operation(:get_query_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.internetmonitor#GetQueryStatus"
        operation.name = "GetQueryStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueryStatusInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueryStatusOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v20210603/Monitors/{MonitorName}/Queries/{QueryId}/Status", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_health_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.internetmonitor#ListHealthEvents"
        operation.name = "ListHealthEvents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListHealthEventsOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListHealthEventsOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v20210603/Monitors/{MonitorName}/HealthEvents", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListHealthEvents.new
      end)
      service.add_operation(:list_internet_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.internetmonitor#ListInternetEvents"
        operation.name = "ListInternetEvents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListInternetEventsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListInternetEventsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v20210603/InternetEvents", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListInternetEvents.new
      end)
      service.add_operation(:list_monitors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.internetmonitor#ListMonitors"
        operation.name = "ListMonitors"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMonitorsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMonitorsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v20210603/Monitors", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMonitors.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.internetmonitor#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:start_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.internetmonitor#StartQuery"
        operation.name = "StartQuery"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartQueryInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartQueryOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v20210603/Monitors/{MonitorName}/Queries", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:stop_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.internetmonitor#StopQuery"
        operation.name = "StopQuery"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopQueryInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopQueryOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v20210603/Monitors/{MonitorName}/Queries/{QueryId}", "method" => "DELETE"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.internetmonitor#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.internetmonitor#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys"], "smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_monitor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.internetmonitor#UpdateMonitor"
        operation.name = "UpdateMonitor"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMonitorInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMonitorOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v20210603/Monitors/{MonitorName}", "method" => "PATCH"}, "smithy.api#idempotent" => {}}
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
