# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudWatchRUM
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AppMonitor = Shapes::StructureShape.new(name: 'AppMonitor')
    AppMonitorConfiguration = Shapes::StructureShape.new(name: 'AppMonitorConfiguration')
    AppMonitorDetails = Shapes::StructureShape.new(name: 'AppMonitorDetails')
    AppMonitorDomain = Shapes::StringShape.new(name: 'AppMonitorDomain')
    AppMonitorId = Shapes::StringShape.new(name: 'AppMonitorId')
    AppMonitorName = Shapes::StringShape.new(name: 'AppMonitorName')
    AppMonitorSummary = Shapes::StructureShape.new(name: 'AppMonitorSummary')
    AppMonitorSummaryList = Shapes::ListShape.new(name: 'AppMonitorSummaryList')
    Arn = Shapes::StringShape.new(name: 'Arn')
    BatchCreateRumMetricDefinitionsError = Shapes::StructureShape.new(name: 'BatchCreateRumMetricDefinitionsError')
    BatchCreateRumMetricDefinitionsErrors = Shapes::ListShape.new(name: 'BatchCreateRumMetricDefinitionsErrors')
    BatchCreateRumMetricDefinitionsRequest = Shapes::StructureShape.new(name: 'BatchCreateRumMetricDefinitionsRequest')
    BatchCreateRumMetricDefinitionsResponse = Shapes::StructureShape.new(name: 'BatchCreateRumMetricDefinitionsResponse')
    BatchDeleteRumMetricDefinitionsError = Shapes::StructureShape.new(name: 'BatchDeleteRumMetricDefinitionsError')
    BatchDeleteRumMetricDefinitionsErrors = Shapes::ListShape.new(name: 'BatchDeleteRumMetricDefinitionsErrors')
    BatchDeleteRumMetricDefinitionsRequest = Shapes::StructureShape.new(name: 'BatchDeleteRumMetricDefinitionsRequest')
    BatchDeleteRumMetricDefinitionsResponse = Shapes::StructureShape.new(name: 'BatchDeleteRumMetricDefinitionsResponse')
    BatchGetRumMetricDefinitionsRequest = Shapes::StructureShape.new(name: 'BatchGetRumMetricDefinitionsRequest')
    BatchGetRumMetricDefinitionsResponse = Shapes::StructureShape.new(name: 'BatchGetRumMetricDefinitionsResponse')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateAppMonitorRequest = Shapes::StructureShape.new(name: 'CreateAppMonitorRequest')
    CreateAppMonitorResponse = Shapes::StructureShape.new(name: 'CreateAppMonitorResponse')
    CustomEvents = Shapes::StructureShape.new(name: 'CustomEvents')
    CustomEventsStatus = Shapes::StringShape.new(name: 'CustomEventsStatus')
    CwLog = Shapes::StructureShape.new(name: 'CwLog')
    DataStorage = Shapes::StructureShape.new(name: 'DataStorage')
    DeleteAppMonitorRequest = Shapes::StructureShape.new(name: 'DeleteAppMonitorRequest')
    DeleteAppMonitorResponse = Shapes::StructureShape.new(name: 'DeleteAppMonitorResponse')
    DeleteRumMetricsDestinationRequest = Shapes::StructureShape.new(name: 'DeleteRumMetricsDestinationRequest')
    DeleteRumMetricsDestinationResponse = Shapes::StructureShape.new(name: 'DeleteRumMetricsDestinationResponse')
    DestinationArn = Shapes::StringShape.new(name: 'DestinationArn')
    DimensionKey = Shapes::StringShape.new(name: 'DimensionKey')
    DimensionKeysMap = Shapes::MapShape.new(name: 'DimensionKeysMap')
    DimensionName = Shapes::StringShape.new(name: 'DimensionName')
    EventData = Shapes::StringShape.new(name: 'EventData')
    EventDataList = Shapes::ListShape.new(name: 'EventDataList')
    EventPattern = Shapes::StringShape.new(name: 'EventPattern')
    FavoritePages = Shapes::ListShape.new(name: 'FavoritePages')
    GetAppMonitorDataRequest = Shapes::StructureShape.new(name: 'GetAppMonitorDataRequest')
    GetAppMonitorDataResponse = Shapes::StructureShape.new(name: 'GetAppMonitorDataResponse')
    GetAppMonitorRequest = Shapes::StructureShape.new(name: 'GetAppMonitorRequest')
    GetAppMonitorResponse = Shapes::StructureShape.new(name: 'GetAppMonitorResponse')
    ISOTimestampString = Shapes::StringShape.new(name: 'ISOTimestampString')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    IdentityPoolId = Shapes::StringShape.new(name: 'IdentityPoolId')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    JsonValue = Shapes::StringShape.new(name: 'JsonValue')
    ListAppMonitorsRequest = Shapes::StructureShape.new(name: 'ListAppMonitorsRequest')
    ListAppMonitorsResponse = Shapes::StructureShape.new(name: 'ListAppMonitorsResponse')
    ListRumMetricsDestinationsRequest = Shapes::StructureShape.new(name: 'ListRumMetricsDestinationsRequest')
    ListRumMetricsDestinationsResponse = Shapes::StructureShape.new(name: 'ListRumMetricsDestinationsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxQueryResults = Shapes::IntegerShape.new(name: 'MaxQueryResults')
    MaxResultsInteger = Shapes::IntegerShape.new(name: 'MaxResultsInteger')
    MetricDefinition = Shapes::StructureShape.new(name: 'MetricDefinition')
    MetricDefinitionId = Shapes::StringShape.new(name: 'MetricDefinitionId')
    MetricDefinitionIds = Shapes::ListShape.new(name: 'MetricDefinitionIds')
    MetricDefinitionRequest = Shapes::StructureShape.new(name: 'MetricDefinitionRequest')
    MetricDefinitions = Shapes::ListShape.new(name: 'MetricDefinitions')
    MetricDefinitionsRequest = Shapes::ListShape.new(name: 'MetricDefinitionsRequest')
    MetricDestination = Shapes::StringShape.new(name: 'MetricDestination')
    MetricDestinationSummary = Shapes::StructureShape.new(name: 'MetricDestinationSummary')
    MetricDestinationSummaryList = Shapes::ListShape.new(name: 'MetricDestinationSummaryList')
    MetricName = Shapes::StringShape.new(name: 'MetricName')
    Namespace = Shapes::StringShape.new(name: 'Namespace')
    Pages = Shapes::ListShape.new(name: 'Pages')
    PutRumEventsRequest = Shapes::StructureShape.new(name: 'PutRumEventsRequest')
    PutRumEventsRequestBatchIdString = Shapes::StringShape.new(name: 'PutRumEventsRequestBatchIdString')
    PutRumEventsRequestIdString = Shapes::StringShape.new(name: 'PutRumEventsRequestIdString')
    PutRumEventsResponse = Shapes::StructureShape.new(name: 'PutRumEventsResponse')
    PutRumMetricsDestinationRequest = Shapes::StructureShape.new(name: 'PutRumMetricsDestinationRequest')
    PutRumMetricsDestinationResponse = Shapes::StructureShape.new(name: 'PutRumMetricsDestinationResponse')
    QueryFilter = Shapes::StructureShape.new(name: 'QueryFilter')
    QueryFilterKey = Shapes::StringShape.new(name: 'QueryFilterKey')
    QueryFilterValue = Shapes::StringShape.new(name: 'QueryFilterValue')
    QueryFilterValueList = Shapes::ListShape.new(name: 'QueryFilterValueList')
    QueryFilters = Shapes::ListShape.new(name: 'QueryFilters')
    QueryTimestamp = Shapes::IntegerShape.new(name: 'QueryTimestamp')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RumEvent = Shapes::StructureShape.new(name: 'RumEvent')
    RumEventIdString = Shapes::StringShape.new(name: 'RumEventIdString')
    RumEventList = Shapes::ListShape.new(name: 'RumEventList')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SessionSampleRate = Shapes::FloatShape.new(name: 'SessionSampleRate')
    StateEnum = Shapes::StringShape.new(name: 'StateEnum')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Telemetries = Shapes::ListShape.new(name: 'Telemetries')
    Telemetry = Shapes::StringShape.new(name: 'Telemetry')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimeRange = Shapes::StructureShape.new(name: 'TimeRange')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Token = Shapes::StringShape.new(name: 'Token')
    UnitLabel = Shapes::StringShape.new(name: 'UnitLabel')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAppMonitorRequest = Shapes::StructureShape.new(name: 'UpdateAppMonitorRequest')
    UpdateAppMonitorResponse = Shapes::StructureShape.new(name: 'UpdateAppMonitorResponse')
    UpdateRumMetricDefinitionRequest = Shapes::StructureShape.new(name: 'UpdateRumMetricDefinitionRequest')
    UpdateRumMetricDefinitionResponse = Shapes::StructureShape.new(name: 'UpdateRumMetricDefinitionResponse')
    Url = Shapes::StringShape.new(name: 'Url')
    UserDetails = Shapes::StructureShape.new(name: 'UserDetails')
    UserDetailsSessionIdString = Shapes::StringShape.new(name: 'UserDetailsSessionIdString')
    UserDetailsUserIdString = Shapes::StringShape.new(name: 'UserDetailsUserIdString')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValueKey = Shapes::StringShape.new(name: 'ValueKey')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AppMonitor.add_member(:app_monitor_configuration, Shapes::ShapeRef.new(shape: AppMonitorConfiguration, location_name: "AppMonitorConfiguration"))
    AppMonitor.add_member(:created, Shapes::ShapeRef.new(shape: ISOTimestampString, location_name: "Created"))
    AppMonitor.add_member(:custom_events, Shapes::ShapeRef.new(shape: CustomEvents, location_name: "CustomEvents"))
    AppMonitor.add_member(:data_storage, Shapes::ShapeRef.new(shape: DataStorage, location_name: "DataStorage"))
    AppMonitor.add_member(:domain, Shapes::ShapeRef.new(shape: AppMonitorDomain, location_name: "Domain"))
    AppMonitor.add_member(:id, Shapes::ShapeRef.new(shape: AppMonitorId, location_name: "Id"))
    AppMonitor.add_member(:last_modified, Shapes::ShapeRef.new(shape: ISOTimestampString, location_name: "LastModified"))
    AppMonitor.add_member(:name, Shapes::ShapeRef.new(shape: AppMonitorName, location_name: "Name"))
    AppMonitor.add_member(:state, Shapes::ShapeRef.new(shape: StateEnum, location_name: "State"))
    AppMonitor.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    AppMonitor.struct_class = Types::AppMonitor

    AppMonitorConfiguration.add_member(:allow_cookies, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllowCookies"))
    AppMonitorConfiguration.add_member(:enable_x_ray, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableXRay"))
    AppMonitorConfiguration.add_member(:excluded_pages, Shapes::ShapeRef.new(shape: Pages, location_name: "ExcludedPages"))
    AppMonitorConfiguration.add_member(:favorite_pages, Shapes::ShapeRef.new(shape: FavoritePages, location_name: "FavoritePages"))
    AppMonitorConfiguration.add_member(:guest_role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "GuestRoleArn"))
    AppMonitorConfiguration.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: "IdentityPoolId"))
    AppMonitorConfiguration.add_member(:included_pages, Shapes::ShapeRef.new(shape: Pages, location_name: "IncludedPages"))
    AppMonitorConfiguration.add_member(:session_sample_rate, Shapes::ShapeRef.new(shape: SessionSampleRate, location_name: "SessionSampleRate"))
    AppMonitorConfiguration.add_member(:telemetries, Shapes::ShapeRef.new(shape: Telemetries, location_name: "Telemetries"))
    AppMonitorConfiguration.struct_class = Types::AppMonitorConfiguration

    AppMonitorDetails.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    AppMonitorDetails.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    AppMonitorDetails.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    AppMonitorDetails.struct_class = Types::AppMonitorDetails

    AppMonitorSummary.add_member(:created, Shapes::ShapeRef.new(shape: ISOTimestampString, location_name: "Created"))
    AppMonitorSummary.add_member(:id, Shapes::ShapeRef.new(shape: AppMonitorId, location_name: "Id"))
    AppMonitorSummary.add_member(:last_modified, Shapes::ShapeRef.new(shape: ISOTimestampString, location_name: "LastModified"))
    AppMonitorSummary.add_member(:name, Shapes::ShapeRef.new(shape: AppMonitorName, location_name: "Name"))
    AppMonitorSummary.add_member(:state, Shapes::ShapeRef.new(shape: StateEnum, location_name: "State"))
    AppMonitorSummary.struct_class = Types::AppMonitorSummary

    AppMonitorSummaryList.member = Shapes::ShapeRef.new(shape: AppMonitorSummary)

    BatchCreateRumMetricDefinitionsError.add_member(:error_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ErrorCode"))
    BatchCreateRumMetricDefinitionsError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ErrorMessage"))
    BatchCreateRumMetricDefinitionsError.add_member(:metric_definition, Shapes::ShapeRef.new(shape: MetricDefinitionRequest, required: true, location_name: "MetricDefinition"))
    BatchCreateRumMetricDefinitionsError.struct_class = Types::BatchCreateRumMetricDefinitionsError

    BatchCreateRumMetricDefinitionsErrors.member = Shapes::ShapeRef.new(shape: BatchCreateRumMetricDefinitionsError)

    BatchCreateRumMetricDefinitionsRequest.add_member(:app_monitor_name, Shapes::ShapeRef.new(shape: AppMonitorName, required: true, location: "uri", location_name: "AppMonitorName"))
    BatchCreateRumMetricDefinitionsRequest.add_member(:destination, Shapes::ShapeRef.new(shape: MetricDestination, required: true, location_name: "Destination"))
    BatchCreateRumMetricDefinitionsRequest.add_member(:destination_arn, Shapes::ShapeRef.new(shape: DestinationArn, location_name: "DestinationArn"))
    BatchCreateRumMetricDefinitionsRequest.add_member(:metric_definitions, Shapes::ShapeRef.new(shape: MetricDefinitionsRequest, required: true, location_name: "MetricDefinitions"))
    BatchCreateRumMetricDefinitionsRequest.struct_class = Types::BatchCreateRumMetricDefinitionsRequest

    BatchCreateRumMetricDefinitionsResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchCreateRumMetricDefinitionsErrors, required: true, location_name: "Errors"))
    BatchCreateRumMetricDefinitionsResponse.add_member(:metric_definitions, Shapes::ShapeRef.new(shape: MetricDefinitions, location_name: "MetricDefinitions"))
    BatchCreateRumMetricDefinitionsResponse.struct_class = Types::BatchCreateRumMetricDefinitionsResponse

    BatchDeleteRumMetricDefinitionsError.add_member(:error_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ErrorCode"))
    BatchDeleteRumMetricDefinitionsError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ErrorMessage"))
    BatchDeleteRumMetricDefinitionsError.add_member(:metric_definition_id, Shapes::ShapeRef.new(shape: MetricDefinitionId, required: true, location_name: "MetricDefinitionId"))
    BatchDeleteRumMetricDefinitionsError.struct_class = Types::BatchDeleteRumMetricDefinitionsError

    BatchDeleteRumMetricDefinitionsErrors.member = Shapes::ShapeRef.new(shape: BatchDeleteRumMetricDefinitionsError)

    BatchDeleteRumMetricDefinitionsRequest.add_member(:app_monitor_name, Shapes::ShapeRef.new(shape: AppMonitorName, required: true, location: "uri", location_name: "AppMonitorName"))
    BatchDeleteRumMetricDefinitionsRequest.add_member(:destination, Shapes::ShapeRef.new(shape: MetricDestination, required: true, location: "querystring", location_name: "destination"))
    BatchDeleteRumMetricDefinitionsRequest.add_member(:destination_arn, Shapes::ShapeRef.new(shape: DestinationArn, location: "querystring", location_name: "destinationArn"))
    BatchDeleteRumMetricDefinitionsRequest.add_member(:metric_definition_ids, Shapes::ShapeRef.new(shape: MetricDefinitionIds, required: true, location: "querystring", location_name: "metricDefinitionIds"))
    BatchDeleteRumMetricDefinitionsRequest.struct_class = Types::BatchDeleteRumMetricDefinitionsRequest

    BatchDeleteRumMetricDefinitionsResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchDeleteRumMetricDefinitionsErrors, required: true, location_name: "Errors"))
    BatchDeleteRumMetricDefinitionsResponse.add_member(:metric_definition_ids, Shapes::ShapeRef.new(shape: MetricDefinitionIds, location_name: "MetricDefinitionIds"))
    BatchDeleteRumMetricDefinitionsResponse.struct_class = Types::BatchDeleteRumMetricDefinitionsResponse

    BatchGetRumMetricDefinitionsRequest.add_member(:app_monitor_name, Shapes::ShapeRef.new(shape: AppMonitorName, required: true, location: "uri", location_name: "AppMonitorName"))
    BatchGetRumMetricDefinitionsRequest.add_member(:destination, Shapes::ShapeRef.new(shape: MetricDestination, required: true, location: "querystring", location_name: "destination"))
    BatchGetRumMetricDefinitionsRequest.add_member(:destination_arn, Shapes::ShapeRef.new(shape: DestinationArn, location: "querystring", location_name: "destinationArn"))
    BatchGetRumMetricDefinitionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsInteger, location: "querystring", location_name: "maxResults"))
    BatchGetRumMetricDefinitionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    BatchGetRumMetricDefinitionsRequest.struct_class = Types::BatchGetRumMetricDefinitionsRequest

    BatchGetRumMetricDefinitionsResponse.add_member(:metric_definitions, Shapes::ShapeRef.new(shape: MetricDefinitions, location_name: "MetricDefinitions"))
    BatchGetRumMetricDefinitionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    BatchGetRumMetricDefinitionsResponse.struct_class = Types::BatchGetRumMetricDefinitionsResponse

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceName"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateAppMonitorRequest.add_member(:app_monitor_configuration, Shapes::ShapeRef.new(shape: AppMonitorConfiguration, location_name: "AppMonitorConfiguration"))
    CreateAppMonitorRequest.add_member(:custom_events, Shapes::ShapeRef.new(shape: CustomEvents, location_name: "CustomEvents"))
    CreateAppMonitorRequest.add_member(:cw_log_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "CwLogEnabled"))
    CreateAppMonitorRequest.add_member(:domain, Shapes::ShapeRef.new(shape: AppMonitorDomain, required: true, location_name: "Domain"))
    CreateAppMonitorRequest.add_member(:name, Shapes::ShapeRef.new(shape: AppMonitorName, required: true, location_name: "Name"))
    CreateAppMonitorRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateAppMonitorRequest.struct_class = Types::CreateAppMonitorRequest

    CreateAppMonitorResponse.add_member(:id, Shapes::ShapeRef.new(shape: AppMonitorId, location_name: "Id"))
    CreateAppMonitorResponse.struct_class = Types::CreateAppMonitorResponse

    CustomEvents.add_member(:status, Shapes::ShapeRef.new(shape: CustomEventsStatus, location_name: "Status"))
    CustomEvents.struct_class = Types::CustomEvents

    CwLog.add_member(:cw_log_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "CwLogEnabled"))
    CwLog.add_member(:cw_log_group, Shapes::ShapeRef.new(shape: String, location_name: "CwLogGroup"))
    CwLog.struct_class = Types::CwLog

    DataStorage.add_member(:cw_log, Shapes::ShapeRef.new(shape: CwLog, location_name: "CwLog"))
    DataStorage.struct_class = Types::DataStorage

    DeleteAppMonitorRequest.add_member(:name, Shapes::ShapeRef.new(shape: AppMonitorName, required: true, location: "uri", location_name: "Name"))
    DeleteAppMonitorRequest.struct_class = Types::DeleteAppMonitorRequest

    DeleteAppMonitorResponse.struct_class = Types::DeleteAppMonitorResponse

    DeleteRumMetricsDestinationRequest.add_member(:app_monitor_name, Shapes::ShapeRef.new(shape: AppMonitorName, required: true, location: "uri", location_name: "AppMonitorName"))
    DeleteRumMetricsDestinationRequest.add_member(:destination, Shapes::ShapeRef.new(shape: MetricDestination, required: true, location: "querystring", location_name: "destination"))
    DeleteRumMetricsDestinationRequest.add_member(:destination_arn, Shapes::ShapeRef.new(shape: DestinationArn, location: "querystring", location_name: "destinationArn"))
    DeleteRumMetricsDestinationRequest.struct_class = Types::DeleteRumMetricsDestinationRequest

    DeleteRumMetricsDestinationResponse.struct_class = Types::DeleteRumMetricsDestinationResponse

    DimensionKeysMap.key = Shapes::ShapeRef.new(shape: DimensionKey)
    DimensionKeysMap.value = Shapes::ShapeRef.new(shape: DimensionName)

    EventDataList.member = Shapes::ShapeRef.new(shape: EventData)

    FavoritePages.member = Shapes::ShapeRef.new(shape: String)

    GetAppMonitorDataRequest.add_member(:filters, Shapes::ShapeRef.new(shape: QueryFilters, location_name: "Filters"))
    GetAppMonitorDataRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxQueryResults, location_name: "MaxResults"))
    GetAppMonitorDataRequest.add_member(:name, Shapes::ShapeRef.new(shape: AppMonitorName, required: true, location: "uri", location_name: "Name"))
    GetAppMonitorDataRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetAppMonitorDataRequest.add_member(:time_range, Shapes::ShapeRef.new(shape: TimeRange, required: true, location_name: "TimeRange"))
    GetAppMonitorDataRequest.struct_class = Types::GetAppMonitorDataRequest

    GetAppMonitorDataResponse.add_member(:events, Shapes::ShapeRef.new(shape: EventDataList, location_name: "Events"))
    GetAppMonitorDataResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetAppMonitorDataResponse.struct_class = Types::GetAppMonitorDataResponse

    GetAppMonitorRequest.add_member(:name, Shapes::ShapeRef.new(shape: AppMonitorName, required: true, location: "uri", location_name: "Name"))
    GetAppMonitorRequest.struct_class = Types::GetAppMonitorRequest

    GetAppMonitorResponse.add_member(:app_monitor, Shapes::ShapeRef.new(shape: AppMonitor, location_name: "AppMonitor"))
    GetAppMonitorResponse.struct_class = Types::GetAppMonitorResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    ListAppMonitorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListAppMonitorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListAppMonitorsRequest.struct_class = Types::ListAppMonitorsRequest

    ListAppMonitorsResponse.add_member(:app_monitor_summaries, Shapes::ShapeRef.new(shape: AppMonitorSummaryList, location_name: "AppMonitorSummaries"))
    ListAppMonitorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListAppMonitorsResponse.struct_class = Types::ListAppMonitorsResponse

    ListRumMetricsDestinationsRequest.add_member(:app_monitor_name, Shapes::ShapeRef.new(shape: AppMonitorName, required: true, location: "uri", location_name: "AppMonitorName"))
    ListRumMetricsDestinationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListRumMetricsDestinationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListRumMetricsDestinationsRequest.struct_class = Types::ListRumMetricsDestinationsRequest

    ListRumMetricsDestinationsResponse.add_member(:destinations, Shapes::ShapeRef.new(shape: MetricDestinationSummaryList, location_name: "Destinations"))
    ListRumMetricsDestinationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListRumMetricsDestinationsResponse.struct_class = Types::ListRumMetricsDestinationsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MetricDefinition.add_member(:dimension_keys, Shapes::ShapeRef.new(shape: DimensionKeysMap, location_name: "DimensionKeys"))
    MetricDefinition.add_member(:event_pattern, Shapes::ShapeRef.new(shape: EventPattern, location_name: "EventPattern"))
    MetricDefinition.add_member(:metric_definition_id, Shapes::ShapeRef.new(shape: MetricDefinitionId, required: true, location_name: "MetricDefinitionId"))
    MetricDefinition.add_member(:name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "Name"))
    MetricDefinition.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, location_name: "Namespace"))
    MetricDefinition.add_member(:unit_label, Shapes::ShapeRef.new(shape: UnitLabel, location_name: "UnitLabel"))
    MetricDefinition.add_member(:value_key, Shapes::ShapeRef.new(shape: ValueKey, location_name: "ValueKey"))
    MetricDefinition.struct_class = Types::MetricDefinition

    MetricDefinitionIds.member = Shapes::ShapeRef.new(shape: MetricDefinitionId)

    MetricDefinitionRequest.add_member(:dimension_keys, Shapes::ShapeRef.new(shape: DimensionKeysMap, location_name: "DimensionKeys"))
    MetricDefinitionRequest.add_member(:event_pattern, Shapes::ShapeRef.new(shape: EventPattern, location_name: "EventPattern"))
    MetricDefinitionRequest.add_member(:name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "Name"))
    MetricDefinitionRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, location_name: "Namespace"))
    MetricDefinitionRequest.add_member(:unit_label, Shapes::ShapeRef.new(shape: UnitLabel, location_name: "UnitLabel"))
    MetricDefinitionRequest.add_member(:value_key, Shapes::ShapeRef.new(shape: ValueKey, location_name: "ValueKey"))
    MetricDefinitionRequest.struct_class = Types::MetricDefinitionRequest

    MetricDefinitions.member = Shapes::ShapeRef.new(shape: MetricDefinition)

    MetricDefinitionsRequest.member = Shapes::ShapeRef.new(shape: MetricDefinitionRequest)

    MetricDestinationSummary.add_member(:destination, Shapes::ShapeRef.new(shape: MetricDestination, location_name: "Destination"))
    MetricDestinationSummary.add_member(:destination_arn, Shapes::ShapeRef.new(shape: DestinationArn, location_name: "DestinationArn"))
    MetricDestinationSummary.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "IamRoleArn"))
    MetricDestinationSummary.struct_class = Types::MetricDestinationSummary

    MetricDestinationSummaryList.member = Shapes::ShapeRef.new(shape: MetricDestinationSummary)

    Pages.member = Shapes::ShapeRef.new(shape: Url)

    PutRumEventsRequest.add_member(:app_monitor_details, Shapes::ShapeRef.new(shape: AppMonitorDetails, required: true, location_name: "AppMonitorDetails"))
    PutRumEventsRequest.add_member(:batch_id, Shapes::ShapeRef.new(shape: PutRumEventsRequestBatchIdString, required: true, location_name: "BatchId"))
    PutRumEventsRequest.add_member(:id, Shapes::ShapeRef.new(shape: PutRumEventsRequestIdString, required: true, location: "uri", location_name: "Id"))
    PutRumEventsRequest.add_member(:rum_events, Shapes::ShapeRef.new(shape: RumEventList, required: true, location_name: "RumEvents"))
    PutRumEventsRequest.add_member(:user_details, Shapes::ShapeRef.new(shape: UserDetails, required: true, location_name: "UserDetails"))
    PutRumEventsRequest.struct_class = Types::PutRumEventsRequest

    PutRumEventsResponse.struct_class = Types::PutRumEventsResponse

    PutRumMetricsDestinationRequest.add_member(:app_monitor_name, Shapes::ShapeRef.new(shape: AppMonitorName, required: true, location: "uri", location_name: "AppMonitorName"))
    PutRumMetricsDestinationRequest.add_member(:destination, Shapes::ShapeRef.new(shape: MetricDestination, required: true, location_name: "Destination"))
    PutRumMetricsDestinationRequest.add_member(:destination_arn, Shapes::ShapeRef.new(shape: DestinationArn, location_name: "DestinationArn"))
    PutRumMetricsDestinationRequest.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "IamRoleArn"))
    PutRumMetricsDestinationRequest.struct_class = Types::PutRumMetricsDestinationRequest

    PutRumMetricsDestinationResponse.struct_class = Types::PutRumMetricsDestinationResponse

    QueryFilter.add_member(:name, Shapes::ShapeRef.new(shape: QueryFilterKey, location_name: "Name"))
    QueryFilter.add_member(:values, Shapes::ShapeRef.new(shape: QueryFilterValueList, location_name: "Values"))
    QueryFilter.struct_class = Types::QueryFilter

    QueryFilterValueList.member = Shapes::ShapeRef.new(shape: QueryFilterValue)

    QueryFilters.member = Shapes::ShapeRef.new(shape: QueryFilter)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceName"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RumEvent.add_member(:details, Shapes::ShapeRef.new(shape: JsonValue, required: true, location_name: "details", metadata: {"jsonvalue"=>true}))
    RumEvent.add_member(:id, Shapes::ShapeRef.new(shape: RumEventIdString, required: true, location_name: "id"))
    RumEvent.add_member(:metadata, Shapes::ShapeRef.new(shape: JsonValue, location_name: "metadata", metadata: {"jsonvalue"=>true}))
    RumEvent.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "timestamp"))
    RumEvent.add_member(:type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "type"))
    RumEvent.struct_class = Types::RumEvent

    RumEventList.member = Shapes::ShapeRef.new(shape: RumEvent)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Telemetries.member = Shapes::ShapeRef.new(shape: Telemetry)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TimeRange.add_member(:after, Shapes::ShapeRef.new(shape: QueryTimestamp, required: true, location_name: "After"))
    TimeRange.add_member(:before, Shapes::ShapeRef.new(shape: QueryTimestamp, location_name: "Before"))
    TimeRange.struct_class = Types::TimeRange

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAppMonitorRequest.add_member(:app_monitor_configuration, Shapes::ShapeRef.new(shape: AppMonitorConfiguration, location_name: "AppMonitorConfiguration"))
    UpdateAppMonitorRequest.add_member(:custom_events, Shapes::ShapeRef.new(shape: CustomEvents, location_name: "CustomEvents"))
    UpdateAppMonitorRequest.add_member(:cw_log_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "CwLogEnabled"))
    UpdateAppMonitorRequest.add_member(:domain, Shapes::ShapeRef.new(shape: AppMonitorDomain, location_name: "Domain"))
    UpdateAppMonitorRequest.add_member(:name, Shapes::ShapeRef.new(shape: AppMonitorName, required: true, location: "uri", location_name: "Name"))
    UpdateAppMonitorRequest.struct_class = Types::UpdateAppMonitorRequest

    UpdateAppMonitorResponse.struct_class = Types::UpdateAppMonitorResponse

    UpdateRumMetricDefinitionRequest.add_member(:app_monitor_name, Shapes::ShapeRef.new(shape: AppMonitorName, required: true, location: "uri", location_name: "AppMonitorName"))
    UpdateRumMetricDefinitionRequest.add_member(:destination, Shapes::ShapeRef.new(shape: MetricDestination, required: true, location_name: "Destination"))
    UpdateRumMetricDefinitionRequest.add_member(:destination_arn, Shapes::ShapeRef.new(shape: DestinationArn, location_name: "DestinationArn"))
    UpdateRumMetricDefinitionRequest.add_member(:metric_definition, Shapes::ShapeRef.new(shape: MetricDefinitionRequest, required: true, location_name: "MetricDefinition"))
    UpdateRumMetricDefinitionRequest.add_member(:metric_definition_id, Shapes::ShapeRef.new(shape: MetricDefinitionId, required: true, location_name: "MetricDefinitionId"))
    UpdateRumMetricDefinitionRequest.struct_class = Types::UpdateRumMetricDefinitionRequest

    UpdateRumMetricDefinitionResponse.struct_class = Types::UpdateRumMetricDefinitionResponse

    UserDetails.add_member(:session_id, Shapes::ShapeRef.new(shape: UserDetailsSessionIdString, location_name: "sessionId"))
    UserDetails.add_member(:user_id, Shapes::ShapeRef.new(shape: UserDetailsUserIdString, location_name: "userId"))
    UserDetails.struct_class = Types::UserDetails

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "endpointPrefix" => "rum",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "CloudWatch RUM",
        "serviceId" => "RUM",
        "signatureVersion" => "v4",
        "signingName" => "rum",
        "uid" => "rum-2018-05-10",
      }

      api.add_operation(:batch_create_rum_metric_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchCreateRumMetricDefinitions"
        o.http_method = "POST"
        o.http_request_uri = "/rummetrics/{AppMonitorName}/metrics"
        o.input = Shapes::ShapeRef.new(shape: BatchCreateRumMetricDefinitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchCreateRumMetricDefinitionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:batch_delete_rum_metric_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeleteRumMetricDefinitions"
        o.http_method = "DELETE"
        o.http_request_uri = "/rummetrics/{AppMonitorName}/metrics"
        o.input = Shapes::ShapeRef.new(shape: BatchDeleteRumMetricDefinitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDeleteRumMetricDefinitionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:batch_get_rum_metric_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetRumMetricDefinitions"
        o.http_method = "GET"
        o.http_request_uri = "/rummetrics/{AppMonitorName}/metrics"
        o.input = Shapes::ShapeRef.new(shape: BatchGetRumMetricDefinitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetRumMetricDefinitionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:create_app_monitor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAppMonitor"
        o.http_method = "POST"
        o.http_request_uri = "/appmonitor"
        o.input = Shapes::ShapeRef.new(shape: CreateAppMonitorRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAppMonitorResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_app_monitor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAppMonitor"
        o.http_method = "DELETE"
        o.http_request_uri = "/appmonitor/{Name}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAppMonitorRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAppMonitorResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_rum_metrics_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRumMetricsDestination"
        o.http_method = "DELETE"
        o.http_request_uri = "/rummetrics/{AppMonitorName}/metricsdestination"
        o.input = Shapes::ShapeRef.new(shape: DeleteRumMetricsDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRumMetricsDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_app_monitor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAppMonitor"
        o.http_method = "GET"
        o.http_request_uri = "/appmonitor/{Name}"
        o.input = Shapes::ShapeRef.new(shape: GetAppMonitorRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAppMonitorResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_app_monitor_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAppMonitorData"
        o.http_method = "POST"
        o.http_request_uri = "/appmonitor/{Name}/data"
        o.input = Shapes::ShapeRef.new(shape: GetAppMonitorDataRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAppMonitorDataResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_app_monitors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAppMonitors"
        o.http_method = "POST"
        o.http_request_uri = "/appmonitors"
        o.input = Shapes::ShapeRef.new(shape: ListAppMonitorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAppMonitorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_rum_metrics_destinations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRumMetricsDestinations"
        o.http_method = "GET"
        o.http_request_uri = "/rummetrics/{AppMonitorName}/metricsdestination"
        o.input = Shapes::ShapeRef.new(shape: ListRumMetricsDestinationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRumMetricsDestinationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:put_rum_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutRumEvents"
        o.http_method = "POST"
        o.http_request_uri = "/appmonitors/{Id}/"
        o.endpoint_pattern = {
          "hostPrefix" => "dataplane.",
        }
        o.input = Shapes::ShapeRef.new(shape: PutRumEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutRumEventsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:put_rum_metrics_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutRumMetricsDestination"
        o.http_method = "POST"
        o.http_request_uri = "/rummetrics/{AppMonitorName}/metricsdestination"
        o.input = Shapes::ShapeRef.new(shape: PutRumMetricsDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutRumMetricsDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_app_monitor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAppMonitor"
        o.http_method = "PATCH"
        o.http_request_uri = "/appmonitor/{Name}"
        o.input = Shapes::ShapeRef.new(shape: UpdateAppMonitorRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAppMonitorResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_rum_metric_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRumMetricDefinition"
        o.http_method = "PATCH"
        o.http_request_uri = "/rummetrics/{AppMonitorName}/metrics"
        o.input = Shapes::ShapeRef.new(shape: UpdateRumMetricDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRumMetricDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
