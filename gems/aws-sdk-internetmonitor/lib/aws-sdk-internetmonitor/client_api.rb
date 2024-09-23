# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::InternetMonitor
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AvailabilityMeasurement = Shapes::StructureShape.new(name: 'AvailabilityMeasurement')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ClientLocation = Shapes::StructureShape.new(name: 'ClientLocation')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateMonitorInput = Shapes::StructureShape.new(name: 'CreateMonitorInput')
    CreateMonitorOutput = Shapes::StructureShape.new(name: 'CreateMonitorOutput')
    DeleteMonitorInput = Shapes::StructureShape.new(name: 'DeleteMonitorInput')
    DeleteMonitorOutput = Shapes::StructureShape.new(name: 'DeleteMonitorOutput')
    Double = Shapes::FloatShape.new(name: 'Double')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    FilterParameter = Shapes::StructureShape.new(name: 'FilterParameter')
    FilterParameters = Shapes::ListShape.new(name: 'FilterParameters')
    GetHealthEventInput = Shapes::StructureShape.new(name: 'GetHealthEventInput')
    GetHealthEventOutput = Shapes::StructureShape.new(name: 'GetHealthEventOutput')
    GetInternetEventInput = Shapes::StructureShape.new(name: 'GetInternetEventInput')
    GetInternetEventOutput = Shapes::StructureShape.new(name: 'GetInternetEventOutput')
    GetMonitorInput = Shapes::StructureShape.new(name: 'GetMonitorInput')
    GetMonitorOutput = Shapes::StructureShape.new(name: 'GetMonitorOutput')
    GetQueryResultsInput = Shapes::StructureShape.new(name: 'GetQueryResultsInput')
    GetQueryResultsOutput = Shapes::StructureShape.new(name: 'GetQueryResultsOutput')
    GetQueryStatusInput = Shapes::StructureShape.new(name: 'GetQueryStatusInput')
    GetQueryStatusOutput = Shapes::StructureShape.new(name: 'GetQueryStatusOutput')
    HealthEvent = Shapes::StructureShape.new(name: 'HealthEvent')
    HealthEventImpactType = Shapes::StringShape.new(name: 'HealthEventImpactType')
    HealthEventList = Shapes::ListShape.new(name: 'HealthEventList')
    HealthEventName = Shapes::StringShape.new(name: 'HealthEventName')
    HealthEventStatus = Shapes::StringShape.new(name: 'HealthEventStatus')
    HealthEventsConfig = Shapes::StructureShape.new(name: 'HealthEventsConfig')
    ImpactedLocation = Shapes::StructureShape.new(name: 'ImpactedLocation')
    ImpactedLocationsList = Shapes::ListShape.new(name: 'ImpactedLocationsList')
    InternalServerErrorException = Shapes::StructureShape.new(name: 'InternalServerErrorException')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InternetEventId = Shapes::StringShape.new(name: 'InternetEventId')
    InternetEventMaxResults = Shapes::IntegerShape.new(name: 'InternetEventMaxResults')
    InternetEventStatus = Shapes::StringShape.new(name: 'InternetEventStatus')
    InternetEventSummary = Shapes::StructureShape.new(name: 'InternetEventSummary')
    InternetEventType = Shapes::StringShape.new(name: 'InternetEventType')
    InternetEventsList = Shapes::ListShape.new(name: 'InternetEventsList')
    InternetHealth = Shapes::StructureShape.new(name: 'InternetHealth')
    InternetMeasurementsLogDelivery = Shapes::StructureShape.new(name: 'InternetMeasurementsLogDelivery')
    Ipv4PrefixList = Shapes::ListShape.new(name: 'Ipv4PrefixList')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListHealthEventsInput = Shapes::StructureShape.new(name: 'ListHealthEventsInput')
    ListHealthEventsOutput = Shapes::StructureShape.new(name: 'ListHealthEventsOutput')
    ListInternetEventsInput = Shapes::StructureShape.new(name: 'ListInternetEventsInput')
    ListInternetEventsOutput = Shapes::StructureShape.new(name: 'ListInternetEventsOutput')
    ListMonitorsInput = Shapes::StructureShape.new(name: 'ListMonitorsInput')
    ListMonitorsOutput = Shapes::StructureShape.new(name: 'ListMonitorsOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    LocalHealthEventsConfig = Shapes::StructureShape.new(name: 'LocalHealthEventsConfig')
    LocalHealthEventsConfigStatus = Shapes::StringShape.new(name: 'LocalHealthEventsConfigStatus')
    LogDeliveryStatus = Shapes::StringShape.new(name: 'LogDeliveryStatus')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaxCityNetworksToMonitor = Shapes::IntegerShape.new(name: 'MaxCityNetworksToMonitor')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Monitor = Shapes::StructureShape.new(name: 'Monitor')
    MonitorArn = Shapes::StringShape.new(name: 'MonitorArn')
    MonitorConfigState = Shapes::StringShape.new(name: 'MonitorConfigState')
    MonitorList = Shapes::ListShape.new(name: 'MonitorList')
    MonitorProcessingStatusCode = Shapes::StringShape.new(name: 'MonitorProcessingStatusCode')
    Network = Shapes::StructureShape.new(name: 'Network')
    NetworkImpairment = Shapes::StructureShape.new(name: 'NetworkImpairment')
    NetworkList = Shapes::ListShape.new(name: 'NetworkList')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    Operator = Shapes::StringShape.new(name: 'Operator')
    Percentage = Shapes::FloatShape.new(name: 'Percentage')
    PerformanceMeasurement = Shapes::StructureShape.new(name: 'PerformanceMeasurement')
    QueryData = Shapes::ListShape.new(name: 'QueryData')
    QueryField = Shapes::StructureShape.new(name: 'QueryField')
    QueryFields = Shapes::ListShape.new(name: 'QueryFields')
    QueryMaxResults = Shapes::IntegerShape.new(name: 'QueryMaxResults')
    QueryRow = Shapes::ListShape.new(name: 'QueryRow')
    QueryStatus = Shapes::StringShape.new(name: 'QueryStatus')
    QueryType = Shapes::StringShape.new(name: 'QueryType')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RoundTripTime = Shapes::StructureShape.new(name: 'RoundTripTime')
    S3Config = Shapes::StructureShape.new(name: 'S3Config')
    S3ConfigBucketNameString = Shapes::StringShape.new(name: 'S3ConfigBucketNameString')
    SetOfARNs = Shapes::ListShape.new(name: 'SetOfARNs')
    StartQueryInput = Shapes::StructureShape.new(name: 'StartQueryInput')
    StartQueryOutput = Shapes::StructureShape.new(name: 'StartQueryOutput')
    StopQueryInput = Shapes::StructureShape.new(name: 'StopQueryInput')
    StopQueryOutput = Shapes::StructureShape.new(name: 'StopQueryOutput')
    String = Shapes::StringShape.new(name: 'String')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceOutput = Shapes::StructureShape.new(name: 'TagResourceOutput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    TrafficPercentageToMonitor = Shapes::IntegerShape.new(name: 'TrafficPercentageToMonitor')
    TriangulationEventType = Shapes::StringShape.new(name: 'TriangulationEventType')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
    UpdateMonitorInput = Shapes::StructureShape.new(name: 'UpdateMonitorInput')
    UpdateMonitorOutput = Shapes::StructureShape.new(name: 'UpdateMonitorOutput')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AvailabilityMeasurement.add_member(:experience_score, Shapes::ShapeRef.new(shape: Double, location_name: "ExperienceScore"))
    AvailabilityMeasurement.add_member(:percent_of_total_traffic_impacted, Shapes::ShapeRef.new(shape: Double, location_name: "PercentOfTotalTrafficImpacted"))
    AvailabilityMeasurement.add_member(:percent_of_client_location_impacted, Shapes::ShapeRef.new(shape: Double, location_name: "PercentOfClientLocationImpacted"))
    AvailabilityMeasurement.struct_class = Types::AvailabilityMeasurement

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    BadRequestException.struct_class = Types::BadRequestException

    ClientLocation.add_member(:as_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ASName"))
    ClientLocation.add_member(:as_number, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "ASNumber"))
    ClientLocation.add_member(:country, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Country"))
    ClientLocation.add_member(:subdivision, Shapes::ShapeRef.new(shape: String, location_name: "Subdivision"))
    ClientLocation.add_member(:metro, Shapes::ShapeRef.new(shape: String, location_name: "Metro"))
    ClientLocation.add_member(:city, Shapes::ShapeRef.new(shape: String, required: true, location_name: "City"))
    ClientLocation.add_member(:latitude, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "Latitude"))
    ClientLocation.add_member(:longitude, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "Longitude"))
    ClientLocation.struct_class = Types::ClientLocation

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateMonitorInput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "MonitorName"))
    CreateMonitorInput.add_member(:resources, Shapes::ShapeRef.new(shape: SetOfARNs, location_name: "Resources"))
    CreateMonitorInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateMonitorInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateMonitorInput.add_member(:max_city_networks_to_monitor, Shapes::ShapeRef.new(shape: MaxCityNetworksToMonitor, location_name: "MaxCityNetworksToMonitor"))
    CreateMonitorInput.add_member(:internet_measurements_log_delivery, Shapes::ShapeRef.new(shape: InternetMeasurementsLogDelivery, location_name: "InternetMeasurementsLogDelivery"))
    CreateMonitorInput.add_member(:traffic_percentage_to_monitor, Shapes::ShapeRef.new(shape: TrafficPercentageToMonitor, location_name: "TrafficPercentageToMonitor"))
    CreateMonitorInput.add_member(:health_events_config, Shapes::ShapeRef.new(shape: HealthEventsConfig, location_name: "HealthEventsConfig"))
    CreateMonitorInput.struct_class = Types::CreateMonitorInput

    CreateMonitorOutput.add_member(:arn, Shapes::ShapeRef.new(shape: MonitorArn, required: true, location_name: "Arn"))
    CreateMonitorOutput.add_member(:status, Shapes::ShapeRef.new(shape: MonitorConfigState, required: true, location_name: "Status"))
    CreateMonitorOutput.struct_class = Types::CreateMonitorOutput

    DeleteMonitorInput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "MonitorName"))
    DeleteMonitorInput.struct_class = Types::DeleteMonitorInput

    DeleteMonitorOutput.struct_class = Types::DeleteMonitorOutput

    FilterList.member = Shapes::ShapeRef.new(shape: String)

    FilterParameter.add_member(:field, Shapes::ShapeRef.new(shape: String, location_name: "Field"))
    FilterParameter.add_member(:operator, Shapes::ShapeRef.new(shape: Operator, location_name: "Operator"))
    FilterParameter.add_member(:values, Shapes::ShapeRef.new(shape: FilterList, location_name: "Values"))
    FilterParameter.struct_class = Types::FilterParameter

    FilterParameters.member = Shapes::ShapeRef.new(shape: FilterParameter)

    GetHealthEventInput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "MonitorName"))
    GetHealthEventInput.add_member(:event_id, Shapes::ShapeRef.new(shape: HealthEventName, required: true, location: "uri", location_name: "EventId"))
    GetHealthEventInput.add_member(:linked_account_id, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "LinkedAccountId"))
    GetHealthEventInput.struct_class = Types::GetHealthEventInput

    GetHealthEventOutput.add_member(:event_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "EventArn"))
    GetHealthEventOutput.add_member(:event_id, Shapes::ShapeRef.new(shape: HealthEventName, required: true, location_name: "EventId"))
    GetHealthEventOutput.add_member(:started_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "StartedAt"))
    GetHealthEventOutput.add_member(:ended_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "EndedAt"))
    GetHealthEventOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "CreatedAt"))
    GetHealthEventOutput.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "LastUpdatedAt"))
    GetHealthEventOutput.add_member(:impacted_locations, Shapes::ShapeRef.new(shape: ImpactedLocationsList, required: true, location_name: "ImpactedLocations"))
    GetHealthEventOutput.add_member(:status, Shapes::ShapeRef.new(shape: HealthEventStatus, required: true, location_name: "Status"))
    GetHealthEventOutput.add_member(:percent_of_total_traffic_impacted, Shapes::ShapeRef.new(shape: Double, location_name: "PercentOfTotalTrafficImpacted"))
    GetHealthEventOutput.add_member(:impact_type, Shapes::ShapeRef.new(shape: HealthEventImpactType, required: true, location_name: "ImpactType"))
    GetHealthEventOutput.add_member(:health_score_threshold, Shapes::ShapeRef.new(shape: Percentage, location_name: "HealthScoreThreshold"))
    GetHealthEventOutput.struct_class = Types::GetHealthEventOutput

    GetInternetEventInput.add_member(:event_id, Shapes::ShapeRef.new(shape: InternetEventId, required: true, location: "uri", location_name: "EventId"))
    GetInternetEventInput.struct_class = Types::GetInternetEventInput

    GetInternetEventOutput.add_member(:event_id, Shapes::ShapeRef.new(shape: InternetEventId, required: true, location_name: "EventId"))
    GetInternetEventOutput.add_member(:event_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "EventArn"))
    GetInternetEventOutput.add_member(:started_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "StartedAt"))
    GetInternetEventOutput.add_member(:ended_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "EndedAt"))
    GetInternetEventOutput.add_member(:client_location, Shapes::ShapeRef.new(shape: ClientLocation, required: true, location_name: "ClientLocation"))
    GetInternetEventOutput.add_member(:event_type, Shapes::ShapeRef.new(shape: InternetEventType, required: true, location_name: "EventType"))
    GetInternetEventOutput.add_member(:event_status, Shapes::ShapeRef.new(shape: InternetEventStatus, required: true, location_name: "EventStatus"))
    GetInternetEventOutput.struct_class = Types::GetInternetEventOutput

    GetMonitorInput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "MonitorName"))
    GetMonitorInput.add_member(:linked_account_id, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "LinkedAccountId"))
    GetMonitorInput.struct_class = Types::GetMonitorInput

    GetMonitorOutput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "MonitorName"))
    GetMonitorOutput.add_member(:monitor_arn, Shapes::ShapeRef.new(shape: MonitorArn, required: true, location_name: "MonitorArn"))
    GetMonitorOutput.add_member(:resources, Shapes::ShapeRef.new(shape: SetOfARNs, required: true, location_name: "Resources"))
    GetMonitorOutput.add_member(:status, Shapes::ShapeRef.new(shape: MonitorConfigState, required: true, location_name: "Status"))
    GetMonitorOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "CreatedAt"))
    GetMonitorOutput.add_member(:modified_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "ModifiedAt"))
    GetMonitorOutput.add_member(:processing_status, Shapes::ShapeRef.new(shape: MonitorProcessingStatusCode, location_name: "ProcessingStatus"))
    GetMonitorOutput.add_member(:processing_status_info, Shapes::ShapeRef.new(shape: String, location_name: "ProcessingStatusInfo"))
    GetMonitorOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    GetMonitorOutput.add_member(:max_city_networks_to_monitor, Shapes::ShapeRef.new(shape: MaxCityNetworksToMonitor, location_name: "MaxCityNetworksToMonitor"))
    GetMonitorOutput.add_member(:internet_measurements_log_delivery, Shapes::ShapeRef.new(shape: InternetMeasurementsLogDelivery, location_name: "InternetMeasurementsLogDelivery"))
    GetMonitorOutput.add_member(:traffic_percentage_to_monitor, Shapes::ShapeRef.new(shape: TrafficPercentageToMonitor, location_name: "TrafficPercentageToMonitor"))
    GetMonitorOutput.add_member(:health_events_config, Shapes::ShapeRef.new(shape: HealthEventsConfig, location_name: "HealthEventsConfig"))
    GetMonitorOutput.struct_class = Types::GetMonitorOutput

    GetQueryResultsInput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "MonitorName"))
    GetQueryResultsInput.add_member(:query_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "QueryId"))
    GetQueryResultsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "NextToken"))
    GetQueryResultsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: QueryMaxResults, location: "querystring", location_name: "MaxResults"))
    GetQueryResultsInput.struct_class = Types::GetQueryResultsInput

    GetQueryResultsOutput.add_member(:fields, Shapes::ShapeRef.new(shape: QueryFields, required: true, location_name: "Fields"))
    GetQueryResultsOutput.add_member(:data, Shapes::ShapeRef.new(shape: QueryData, required: true, location_name: "Data"))
    GetQueryResultsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetQueryResultsOutput.struct_class = Types::GetQueryResultsOutput

    GetQueryStatusInput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "MonitorName"))
    GetQueryStatusInput.add_member(:query_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "QueryId"))
    GetQueryStatusInput.struct_class = Types::GetQueryStatusInput

    GetQueryStatusOutput.add_member(:status, Shapes::ShapeRef.new(shape: QueryStatus, required: true, location_name: "Status"))
    GetQueryStatusOutput.struct_class = Types::GetQueryStatusOutput

    HealthEvent.add_member(:event_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "EventArn"))
    HealthEvent.add_member(:event_id, Shapes::ShapeRef.new(shape: HealthEventName, required: true, location_name: "EventId"))
    HealthEvent.add_member(:started_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "StartedAt"))
    HealthEvent.add_member(:ended_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "EndedAt"))
    HealthEvent.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "CreatedAt"))
    HealthEvent.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "LastUpdatedAt"))
    HealthEvent.add_member(:impacted_locations, Shapes::ShapeRef.new(shape: ImpactedLocationsList, required: true, location_name: "ImpactedLocations"))
    HealthEvent.add_member(:status, Shapes::ShapeRef.new(shape: HealthEventStatus, required: true, location_name: "Status"))
    HealthEvent.add_member(:percent_of_total_traffic_impacted, Shapes::ShapeRef.new(shape: Double, location_name: "PercentOfTotalTrafficImpacted"))
    HealthEvent.add_member(:impact_type, Shapes::ShapeRef.new(shape: HealthEventImpactType, required: true, location_name: "ImpactType"))
    HealthEvent.add_member(:health_score_threshold, Shapes::ShapeRef.new(shape: Percentage, location_name: "HealthScoreThreshold"))
    HealthEvent.struct_class = Types::HealthEvent

    HealthEventList.member = Shapes::ShapeRef.new(shape: HealthEvent)

    HealthEventsConfig.add_member(:availability_score_threshold, Shapes::ShapeRef.new(shape: Percentage, location_name: "AvailabilityScoreThreshold"))
    HealthEventsConfig.add_member(:performance_score_threshold, Shapes::ShapeRef.new(shape: Percentage, location_name: "PerformanceScoreThreshold"))
    HealthEventsConfig.add_member(:availability_local_health_events_config, Shapes::ShapeRef.new(shape: LocalHealthEventsConfig, location_name: "AvailabilityLocalHealthEventsConfig"))
    HealthEventsConfig.add_member(:performance_local_health_events_config, Shapes::ShapeRef.new(shape: LocalHealthEventsConfig, location_name: "PerformanceLocalHealthEventsConfig"))
    HealthEventsConfig.struct_class = Types::HealthEventsConfig

    ImpactedLocation.add_member(:as_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ASName"))
    ImpactedLocation.add_member(:as_number, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "ASNumber"))
    ImpactedLocation.add_member(:country, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Country"))
    ImpactedLocation.add_member(:subdivision, Shapes::ShapeRef.new(shape: String, location_name: "Subdivision"))
    ImpactedLocation.add_member(:metro, Shapes::ShapeRef.new(shape: String, location_name: "Metro"))
    ImpactedLocation.add_member(:city, Shapes::ShapeRef.new(shape: String, location_name: "City"))
    ImpactedLocation.add_member(:latitude, Shapes::ShapeRef.new(shape: Double, location_name: "Latitude"))
    ImpactedLocation.add_member(:longitude, Shapes::ShapeRef.new(shape: Double, location_name: "Longitude"))
    ImpactedLocation.add_member(:country_code, Shapes::ShapeRef.new(shape: String, location_name: "CountryCode"))
    ImpactedLocation.add_member(:subdivision_code, Shapes::ShapeRef.new(shape: String, location_name: "SubdivisionCode"))
    ImpactedLocation.add_member(:service_location, Shapes::ShapeRef.new(shape: String, location_name: "ServiceLocation"))
    ImpactedLocation.add_member(:status, Shapes::ShapeRef.new(shape: HealthEventStatus, required: true, location_name: "Status"))
    ImpactedLocation.add_member(:caused_by, Shapes::ShapeRef.new(shape: NetworkImpairment, location_name: "CausedBy"))
    ImpactedLocation.add_member(:internet_health, Shapes::ShapeRef.new(shape: InternetHealth, location_name: "InternetHealth"))
    ImpactedLocation.add_member(:ipv_4_prefixes, Shapes::ShapeRef.new(shape: Ipv4PrefixList, location_name: "Ipv4Prefixes"))
    ImpactedLocation.struct_class = Types::ImpactedLocation

    ImpactedLocationsList.member = Shapes::ShapeRef.new(shape: ImpactedLocation)

    InternalServerErrorException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerErrorException.struct_class = Types::InternalServerErrorException

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    InternetEventSummary.add_member(:event_id, Shapes::ShapeRef.new(shape: InternetEventId, required: true, location_name: "EventId"))
    InternetEventSummary.add_member(:event_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "EventArn"))
    InternetEventSummary.add_member(:started_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "StartedAt"))
    InternetEventSummary.add_member(:ended_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "EndedAt"))
    InternetEventSummary.add_member(:client_location, Shapes::ShapeRef.new(shape: ClientLocation, required: true, location_name: "ClientLocation"))
    InternetEventSummary.add_member(:event_type, Shapes::ShapeRef.new(shape: InternetEventType, required: true, location_name: "EventType"))
    InternetEventSummary.add_member(:event_status, Shapes::ShapeRef.new(shape: InternetEventStatus, required: true, location_name: "EventStatus"))
    InternetEventSummary.struct_class = Types::InternetEventSummary

    InternetEventsList.member = Shapes::ShapeRef.new(shape: InternetEventSummary)

    InternetHealth.add_member(:availability, Shapes::ShapeRef.new(shape: AvailabilityMeasurement, location_name: "Availability"))
    InternetHealth.add_member(:performance, Shapes::ShapeRef.new(shape: PerformanceMeasurement, location_name: "Performance"))
    InternetHealth.struct_class = Types::InternetHealth

    InternetMeasurementsLogDelivery.add_member(:s3_config, Shapes::ShapeRef.new(shape: S3Config, location_name: "S3Config"))
    InternetMeasurementsLogDelivery.struct_class = Types::InternetMeasurementsLogDelivery

    Ipv4PrefixList.member = Shapes::ShapeRef.new(shape: String)

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListHealthEventsInput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "MonitorName"))
    ListHealthEventsInput.add_member(:start_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location: "querystring", location_name: "StartTime"))
    ListHealthEventsInput.add_member(:end_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location: "querystring", location_name: "EndTime"))
    ListHealthEventsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "NextToken"))
    ListHealthEventsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListHealthEventsInput.add_member(:event_status, Shapes::ShapeRef.new(shape: HealthEventStatus, location: "querystring", location_name: "EventStatus"))
    ListHealthEventsInput.add_member(:linked_account_id, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "LinkedAccountId"))
    ListHealthEventsInput.struct_class = Types::ListHealthEventsInput

    ListHealthEventsOutput.add_member(:health_events, Shapes::ShapeRef.new(shape: HealthEventList, required: true, location_name: "HealthEvents"))
    ListHealthEventsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListHealthEventsOutput.struct_class = Types::ListHealthEventsOutput

    ListInternetEventsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "NextToken"))
    ListInternetEventsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: InternetEventMaxResults, location: "querystring", location_name: "InternetEventMaxResults"))
    ListInternetEventsInput.add_member(:start_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location: "querystring", location_name: "StartTime"))
    ListInternetEventsInput.add_member(:end_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location: "querystring", location_name: "EndTime"))
    ListInternetEventsInput.add_member(:event_status, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "EventStatus"))
    ListInternetEventsInput.add_member(:event_type, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "EventType"))
    ListInternetEventsInput.struct_class = Types::ListInternetEventsInput

    ListInternetEventsOutput.add_member(:internet_events, Shapes::ShapeRef.new(shape: InternetEventsList, required: true, location_name: "InternetEvents"))
    ListInternetEventsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListInternetEventsOutput.struct_class = Types::ListInternetEventsOutput

    ListMonitorsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "NextToken"))
    ListMonitorsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListMonitorsInput.add_member(:monitor_status, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "MonitorStatus"))
    ListMonitorsInput.add_member(:include_linked_accounts, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "IncludeLinkedAccounts"))
    ListMonitorsInput.struct_class = Types::ListMonitorsInput

    ListMonitorsOutput.add_member(:monitors, Shapes::ShapeRef.new(shape: MonitorList, required: true, location_name: "Monitors"))
    ListMonitorsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListMonitorsOutput.struct_class = Types::ListMonitorsOutput

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: MonitorArn, required: true, location: "uri", location_name: "ResourceArn"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    LocalHealthEventsConfig.add_member(:status, Shapes::ShapeRef.new(shape: LocalHealthEventsConfigStatus, location_name: "Status"))
    LocalHealthEventsConfig.add_member(:health_score_threshold, Shapes::ShapeRef.new(shape: Percentage, location_name: "HealthScoreThreshold"))
    LocalHealthEventsConfig.add_member(:min_traffic_impact, Shapes::ShapeRef.new(shape: Percentage, location_name: "MinTrafficImpact"))
    LocalHealthEventsConfig.struct_class = Types::LocalHealthEventsConfig

    Monitor.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "MonitorName"))
    Monitor.add_member(:monitor_arn, Shapes::ShapeRef.new(shape: MonitorArn, required: true, location_name: "MonitorArn"))
    Monitor.add_member(:status, Shapes::ShapeRef.new(shape: MonitorConfigState, required: true, location_name: "Status"))
    Monitor.add_member(:processing_status, Shapes::ShapeRef.new(shape: MonitorProcessingStatusCode, location_name: "ProcessingStatus"))
    Monitor.struct_class = Types::Monitor

    MonitorList.member = Shapes::ShapeRef.new(shape: Monitor)

    Network.add_member(:as_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ASName"))
    Network.add_member(:as_number, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "ASNumber"))
    Network.struct_class = Types::Network

    NetworkImpairment.add_member(:networks, Shapes::ShapeRef.new(shape: NetworkList, required: true, location_name: "Networks"))
    NetworkImpairment.add_member(:as_path, Shapes::ShapeRef.new(shape: NetworkList, required: true, location_name: "AsPath"))
    NetworkImpairment.add_member(:network_event_type, Shapes::ShapeRef.new(shape: TriangulationEventType, required: true, location_name: "NetworkEventType"))
    NetworkImpairment.struct_class = Types::NetworkImpairment

    NetworkList.member = Shapes::ShapeRef.new(shape: Network)

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    NotFoundException.struct_class = Types::NotFoundException

    PerformanceMeasurement.add_member(:experience_score, Shapes::ShapeRef.new(shape: Double, location_name: "ExperienceScore"))
    PerformanceMeasurement.add_member(:percent_of_total_traffic_impacted, Shapes::ShapeRef.new(shape: Double, location_name: "PercentOfTotalTrafficImpacted"))
    PerformanceMeasurement.add_member(:percent_of_client_location_impacted, Shapes::ShapeRef.new(shape: Double, location_name: "PercentOfClientLocationImpacted"))
    PerformanceMeasurement.add_member(:round_trip_time, Shapes::ShapeRef.new(shape: RoundTripTime, location_name: "RoundTripTime"))
    PerformanceMeasurement.struct_class = Types::PerformanceMeasurement

    QueryData.member = Shapes::ShapeRef.new(shape: QueryRow)

    QueryField.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    QueryField.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    QueryField.struct_class = Types::QueryField

    QueryFields.member = Shapes::ShapeRef.new(shape: QueryField)

    QueryRow.member = Shapes::ShapeRef.new(shape: String)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RoundTripTime.add_member(:p50, Shapes::ShapeRef.new(shape: Double, location_name: "P50"))
    RoundTripTime.add_member(:p90, Shapes::ShapeRef.new(shape: Double, location_name: "P90"))
    RoundTripTime.add_member(:p95, Shapes::ShapeRef.new(shape: Double, location_name: "P95"))
    RoundTripTime.struct_class = Types::RoundTripTime

    S3Config.add_member(:bucket_name, Shapes::ShapeRef.new(shape: S3ConfigBucketNameString, location_name: "BucketName"))
    S3Config.add_member(:bucket_prefix, Shapes::ShapeRef.new(shape: String, location_name: "BucketPrefix"))
    S3Config.add_member(:log_delivery_status, Shapes::ShapeRef.new(shape: LogDeliveryStatus, location_name: "LogDeliveryStatus"))
    S3Config.struct_class = Types::S3Config

    SetOfARNs.member = Shapes::ShapeRef.new(shape: Arn)

    StartQueryInput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "MonitorName"))
    StartQueryInput.add_member(:start_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "StartTime"))
    StartQueryInput.add_member(:end_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "EndTime"))
    StartQueryInput.add_member(:query_type, Shapes::ShapeRef.new(shape: QueryType, required: true, location_name: "QueryType"))
    StartQueryInput.add_member(:filter_parameters, Shapes::ShapeRef.new(shape: FilterParameters, location_name: "FilterParameters"))
    StartQueryInput.add_member(:linked_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "LinkedAccountId"))
    StartQueryInput.struct_class = Types::StartQueryInput

    StartQueryOutput.add_member(:query_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueryId"))
    StartQueryOutput.struct_class = Types::StartQueryOutput

    StopQueryInput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "MonitorName"))
    StopQueryInput.add_member(:query_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "QueryId"))
    StopQueryInput.struct_class = Types::StopQueryInput

    StopQueryOutput.struct_class = Types::StopQueryOutput

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: MonitorArn, required: true, location: "uri", location_name: "ResourceArn"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "Tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceOutput.struct_class = Types::TagResourceOutput

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: MonitorArn, required: true, location: "uri", location_name: "ResourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UntagResourceOutput.struct_class = Types::UntagResourceOutput

    UpdateMonitorInput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "MonitorName"))
    UpdateMonitorInput.add_member(:resources_to_add, Shapes::ShapeRef.new(shape: SetOfARNs, location_name: "ResourcesToAdd"))
    UpdateMonitorInput.add_member(:resources_to_remove, Shapes::ShapeRef.new(shape: SetOfARNs, location_name: "ResourcesToRemove"))
    UpdateMonitorInput.add_member(:status, Shapes::ShapeRef.new(shape: MonitorConfigState, location_name: "Status"))
    UpdateMonitorInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    UpdateMonitorInput.add_member(:max_city_networks_to_monitor, Shapes::ShapeRef.new(shape: MaxCityNetworksToMonitor, location_name: "MaxCityNetworksToMonitor"))
    UpdateMonitorInput.add_member(:internet_measurements_log_delivery, Shapes::ShapeRef.new(shape: InternetMeasurementsLogDelivery, location_name: "InternetMeasurementsLogDelivery"))
    UpdateMonitorInput.add_member(:traffic_percentage_to_monitor, Shapes::ShapeRef.new(shape: TrafficPercentageToMonitor, location_name: "TrafficPercentageToMonitor"))
    UpdateMonitorInput.add_member(:health_events_config, Shapes::ShapeRef.new(shape: HealthEventsConfig, location_name: "HealthEventsConfig"))
    UpdateMonitorInput.struct_class = Types::UpdateMonitorInput

    UpdateMonitorOutput.add_member(:monitor_arn, Shapes::ShapeRef.new(shape: MonitorArn, required: true, location_name: "MonitorArn"))
    UpdateMonitorOutput.add_member(:status, Shapes::ShapeRef.new(shape: MonitorConfigState, required: true, location_name: "Status"))
    UpdateMonitorOutput.struct_class = Types::UpdateMonitorOutput

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-06-03"

      api.metadata = {
        "apiVersion" => "2021-06-03",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "internetmonitor",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Amazon CloudWatch Internet Monitor",
        "serviceId" => "InternetMonitor",
        "signatureVersion" => "v4",
        "signingName" => "internetmonitor",
        "uid" => "internetmonitor-2021-06-03",
      }

      api.add_operation(:create_monitor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMonitor"
        o.http_method = "POST"
        o.http_request_uri = "/v20210603/Monitors"
        o.input = Shapes::ShapeRef.new(shape: CreateMonitorInput)
        o.output = Shapes::ShapeRef.new(shape: CreateMonitorOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_monitor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMonitor"
        o.http_method = "DELETE"
        o.http_request_uri = "/v20210603/Monitors/{MonitorName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteMonitorInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteMonitorOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_health_event, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetHealthEvent"
        o.http_method = "GET"
        o.http_request_uri = "/v20210603/Monitors/{MonitorName}/HealthEvents/{EventId}"
        o.input = Shapes::ShapeRef.new(shape: GetHealthEventInput)
        o.output = Shapes::ShapeRef.new(shape: GetHealthEventOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_internet_event, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInternetEvent"
        o.http_method = "GET"
        o.http_request_uri = "/v20210603/InternetEvents/{EventId}"
        o.input = Shapes::ShapeRef.new(shape: GetInternetEventInput)
        o.output = Shapes::ShapeRef.new(shape: GetInternetEventOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_monitor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMonitor"
        o.http_method = "GET"
        o.http_request_uri = "/v20210603/Monitors/{MonitorName}"
        o.input = Shapes::ShapeRef.new(shape: GetMonitorInput)
        o.output = Shapes::ShapeRef.new(shape: GetMonitorOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_query_results, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQueryResults"
        o.http_method = "GET"
        o.http_request_uri = "/v20210603/Monitors/{MonitorName}/Queries/{QueryId}/Results"
        o.input = Shapes::ShapeRef.new(shape: GetQueryResultsInput)
        o.output = Shapes::ShapeRef.new(shape: GetQueryResultsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_query_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQueryStatus"
        o.http_method = "GET"
        o.http_request_uri = "/v20210603/Monitors/{MonitorName}/Queries/{QueryId}/Status"
        o.input = Shapes::ShapeRef.new(shape: GetQueryStatusInput)
        o.output = Shapes::ShapeRef.new(shape: GetQueryStatusOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_health_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListHealthEvents"
        o.http_method = "GET"
        o.http_request_uri = "/v20210603/Monitors/{MonitorName}/HealthEvents"
        o.input = Shapes::ShapeRef.new(shape: ListHealthEventsInput)
        o.output = Shapes::ShapeRef.new(shape: ListHealthEventsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_internet_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInternetEvents"
        o.http_method = "GET"
        o.http_request_uri = "/v20210603/InternetEvents"
        o.input = Shapes::ShapeRef.new(shape: ListInternetEventsInput)
        o.output = Shapes::ShapeRef.new(shape: ListInternetEventsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_monitors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMonitors"
        o.http_method = "GET"
        o.http_request_uri = "/v20210603/Monitors"
        o.input = Shapes::ShapeRef.new(shape: ListMonitorsInput)
        o.output = Shapes::ShapeRef.new(shape: ListMonitorsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:start_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartQuery"
        o.http_method = "POST"
        o.http_request_uri = "/v20210603/Monitors/{MonitorName}/Queries"
        o.input = Shapes::ShapeRef.new(shape: StartQueryInput)
        o.output = Shapes::ShapeRef.new(shape: StartQueryOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:stop_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopQuery"
        o.http_method = "DELETE"
        o.http_request_uri = "/v20210603/Monitors/{MonitorName}/Queries/{QueryId}"
        o.input = Shapes::ShapeRef.new(shape: StopQueryInput)
        o.output = Shapes::ShapeRef.new(shape: StopQueryOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: TagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:update_monitor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMonitor"
        o.http_method = "PATCH"
        o.http_request_uri = "/v20210603/Monitors/{MonitorName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateMonitorInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateMonitorOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)
    end

  end
end
