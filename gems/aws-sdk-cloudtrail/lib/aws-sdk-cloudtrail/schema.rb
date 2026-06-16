# frozen_string_literal: true

# This is generated code!

module Aws::CloudTrail
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#AccessDeniedException", name: "AccessDeniedException", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceAccessDenied", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountHasOngoingImportException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#AccountHasOngoingImportException", name: "AccountHasOngoingImportException", traits: {"aws.protocols#awsQueryError" => {"code" => "AccountHasOngoingImport", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 16}, "smithy.api#pattern" => "^\\d+$"})
    AccountNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#AccountNotFoundException", name: "AccountNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "AccountNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    AccountNotRegisteredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#AccountNotRegisteredException", name: "AccountNotRegisteredException", traits: {"aws.protocols#awsQueryError" => {"code" => "AccountNotRegistered", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AccountRegisteredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#AccountRegisteredException", name: "AccountRegisteredException", traits: {"aws.protocols#awsQueryError" => {"code" => "AccountRegistered", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AddTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#AddTagsRequest", name: "AddTagsRequest")
    AddTagsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#AddTagsResponse", name: "AddTagsResponse")
    AdvancedEventSelector = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#AdvancedEventSelector", name: "AdvancedEventSelector")
    AdvancedEventSelectors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtrail#AdvancedEventSelectors", name: "AdvancedEventSelectors")
    AdvancedFieldSelector = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#AdvancedFieldSelector", name: "AdvancedFieldSelector")
    AdvancedFieldSelectors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtrail#AdvancedFieldSelectors", name: "AdvancedFieldSelectors", traits: {"smithy.api#length" => {"min" => 1}})
    BillingMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudtrail#BillingMode", name: "BillingMode")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudtrail#Boolean", name: "Boolean")
    ByteBuffer = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.cloudtrail#ByteBuffer", name: "ByteBuffer")
    CancelQueryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#CancelQueryRequest", name: "CancelQueryRequest")
    CancelQueryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#CancelQueryResponse", name: "CancelQueryResponse")
    CannotDelegateManagementAccountException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#CannotDelegateManagementAccountException", name: "CannotDelegateManagementAccountException", traits: {"aws.protocols#awsQueryError" => {"code" => "CannotDelegateManagementAccount", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Channel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#Channel", name: "Channel")
    ChannelARNInvalidException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ChannelARNInvalidException", name: "ChannelARNInvalidException", traits: {"aws.protocols#awsQueryError" => {"code" => "ChannelARNInvalid", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ChannelAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ChannelAlreadyExistsException", name: "ChannelAlreadyExistsException", traits: {"aws.protocols#awsQueryError" => {"code" => "ChannelAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ChannelArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#ChannelArn", name: "ChannelArn", traits: {"smithy.api#length" => {"min" => 3, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9._/\\-:]+$"})
    ChannelExistsForEDSException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ChannelExistsForEDSException", name: "ChannelExistsForEDSException", traits: {"aws.protocols#awsQueryError" => {"code" => "ChannelExistsForEDS", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ChannelMaxLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ChannelMaxLimitExceededException", name: "ChannelMaxLimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "ChannelMaxLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ChannelName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#ChannelName", name: "ChannelName", traits: {"smithy.api#length" => {"min" => 3, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9._\\-]+$"})
    ChannelNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ChannelNotFoundException", name: "ChannelNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "ChannelNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Channels = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtrail#Channels", name: "Channels")
    CloudTrailARNInvalidException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#CloudTrailARNInvalidException", name: "CloudTrailARNInvalidException", traits: {"aws.protocols#awsQueryError" => {"code" => "CloudTrailARNInvalid", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CloudTrailAccessNotEnabledException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#CloudTrailAccessNotEnabledException", name: "CloudTrailAccessNotEnabledException", traits: {"aws.protocols#awsQueryError" => {"code" => "CloudTrailAccessNotEnabled", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CloudTrailInvalidClientTokenIdException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#CloudTrailInvalidClientTokenIdException", name: "CloudTrailInvalidClientTokenIdException", traits: {"aws.protocols#awsQueryError" => {"code" => "CloudTrailInvalidClientTokenId", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CloudWatchLogsDeliveryUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#CloudWatchLogsDeliveryUnavailableException", name: "CloudWatchLogsDeliveryUnavailableException", traits: {"aws.protocols#awsQueryError" => {"code" => "CloudWatchLogsDeliveryUnavailable", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ConcurrentModificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ConcurrentModificationException", name: "ConcurrentModificationException", traits: {"aws.protocols#awsQueryError" => {"code" => "ConcurrentModification", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ConflictException", name: "ConflictException", traits: {"aws.protocols#awsQueryError" => {"code" => "ConflictException", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContextKeySelector = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ContextKeySelector", name: "ContextKeySelector")
    ContextKeySelectors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtrail#ContextKeySelectors", name: "ContextKeySelectors", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    CreateChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#CreateChannelRequest", name: "CreateChannelRequest")
    CreateChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#CreateChannelResponse", name: "CreateChannelResponse")
    CreateDashboardRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#CreateDashboardRequest", name: "CreateDashboardRequest")
    CreateDashboardResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#CreateDashboardResponse", name: "CreateDashboardResponse")
    CreateEventDataStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#CreateEventDataStoreRequest", name: "CreateEventDataStoreRequest")
    CreateEventDataStoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#CreateEventDataStoreResponse", name: "CreateEventDataStoreResponse")
    CreateTrailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#CreateTrailRequest", name: "CreateTrailRequest")
    CreateTrailResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#CreateTrailResponse", name: "CreateTrailResponse")
    DashboardArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#DashboardArn", name: "DashboardArn", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9._/\\-:]+$"})
    DashboardDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#DashboardDetail", name: "DashboardDetail")
    DashboardName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#DashboardName", name: "DashboardName", traits: {"smithy.api#length" => {"min" => 3, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-]+$"})
    DashboardStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudtrail#DashboardStatus", name: "DashboardStatus")
    DashboardType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudtrail#DashboardType", name: "DashboardType")
    Dashboards = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtrail#Dashboards", name: "Dashboards")
    DataResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#DataResource", name: "DataResource")
    DataResourceValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtrail#DataResourceValues", name: "DataResourceValues")
    DataResources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtrail#DataResources", name: "DataResources")
    Date = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.cloudtrail#Date", name: "Date")
    DelegatedAdminAccountLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#DelegatedAdminAccountLimitExceededException", name: "DelegatedAdminAccountLimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "DelegatedAdminAccountLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DeleteChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#DeleteChannelRequest", name: "DeleteChannelRequest")
    DeleteChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#DeleteChannelResponse", name: "DeleteChannelResponse")
    DeleteDashboardRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#DeleteDashboardRequest", name: "DeleteDashboardRequest")
    DeleteDashboardResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#DeleteDashboardResponse", name: "DeleteDashboardResponse")
    DeleteEventDataStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#DeleteEventDataStoreRequest", name: "DeleteEventDataStoreRequest")
    DeleteEventDataStoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#DeleteEventDataStoreResponse", name: "DeleteEventDataStoreResponse")
    DeleteResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#DeleteResourcePolicyRequest", name: "DeleteResourcePolicyRequest")
    DeleteResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#DeleteResourcePolicyResponse", name: "DeleteResourcePolicyResponse")
    DeleteTrailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#DeleteTrailRequest", name: "DeleteTrailRequest")
    DeleteTrailResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#DeleteTrailResponse", name: "DeleteTrailResponse")
    DeliveryS3Uri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#DeliveryS3Uri", name: "DeliveryS3Uri", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?$"})
    DeliveryStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudtrail#DeliveryStatus", name: "DeliveryStatus")
    DeregisterOrganizationDelegatedAdminRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#DeregisterOrganizationDelegatedAdminRequest", name: "DeregisterOrganizationDelegatedAdminRequest")
    DeregisterOrganizationDelegatedAdminResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#DeregisterOrganizationDelegatedAdminResponse", name: "DeregisterOrganizationDelegatedAdminResponse")
    DescribeQueryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#DescribeQueryRequest", name: "DescribeQueryRequest")
    DescribeQueryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#DescribeQueryResponse", name: "DescribeQueryResponse")
    DescribeTrailsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#DescribeTrailsRequest", name: "DescribeTrailsRequest")
    DescribeTrailsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#DescribeTrailsResponse", name: "DescribeTrailsResponse")
    Destination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#Destination", name: "Destination")
    DestinationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudtrail#DestinationType", name: "DestinationType")
    Destinations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtrail#Destinations", name: "Destinations", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    DisableFederationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#DisableFederationRequest", name: "DisableFederationRequest")
    DisableFederationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#DisableFederationResponse", name: "DisableFederationResponse")
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.cloudtrail#Double", name: "Double")
    EnableFederationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#EnableFederationRequest", name: "EnableFederationRequest")
    EnableFederationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#EnableFederationResponse", name: "EnableFederationResponse")
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#ErrorCode", name: "ErrorCode", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[\\w\\d\\s_.,\\-:\\[\\]]+$"})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#ErrorMessage", name: "ErrorMessage", traits: {"smithy.api#length" => {"min" => 4, "max" => 1000}, "smithy.api#pattern" => ".*"})
    Event = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#Event", name: "Event")
    EventCategory = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudtrail#EventCategory", name: "EventCategory")
    EventDataStore = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#EventDataStore", name: "EventDataStore")
    EventDataStoreARNInvalidException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#EventDataStoreARNInvalidException", name: "EventDataStoreARNInvalidException", traits: {"aws.protocols#awsQueryError" => {"code" => "EventDataStoreARNInvalid", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EventDataStoreAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#EventDataStoreAlreadyExistsException", name: "EventDataStoreAlreadyExistsException", traits: {"aws.protocols#awsQueryError" => {"code" => "EventDataStoreAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EventDataStoreArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#EventDataStoreArn", name: "EventDataStoreArn", traits: {"smithy.api#length" => {"min" => 3, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9._/\\-:]+$"})
    EventDataStoreFederationEnabledException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#EventDataStoreFederationEnabledException", name: "EventDataStoreFederationEnabledException", traits: {"aws.protocols#awsQueryError" => {"code" => "EventDataStoreFederationEnabled", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EventDataStoreHasOngoingImportException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#EventDataStoreHasOngoingImportException", name: "EventDataStoreHasOngoingImportException", traits: {"aws.protocols#awsQueryError" => {"code" => "EventDataStoreHasOngoingImport", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EventDataStoreKmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#EventDataStoreKmsKeyId", name: "EventDataStoreKmsKeyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 350}, "smithy.api#pattern" => "^[a-zA-Z0-9._/\\-:]+$"})
    EventDataStoreList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtrail#EventDataStoreList", name: "EventDataStoreList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    EventDataStoreMaxLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#EventDataStoreMaxLimitExceededException", name: "EventDataStoreMaxLimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "EventDataStoreMaxLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EventDataStoreName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#EventDataStoreName", name: "EventDataStoreName", traits: {"smithy.api#length" => {"min" => 3, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9._\\-]+$"})
    EventDataStoreNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#EventDataStoreNotFoundException", name: "EventDataStoreNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "EventDataStoreNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    EventDataStoreStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudtrail#EventDataStoreStatus", name: "EventDataStoreStatus")
    EventDataStoreTerminationProtectedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#EventDataStoreTerminationProtectedException", name: "EventDataStoreTerminationProtectedException", traits: {"aws.protocols#awsQueryError" => {"code" => "EventDataStoreTerminationProtectedException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EventDataStores = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtrail#EventDataStores", name: "EventDataStores")
    EventName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#EventName", name: "EventName", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9_]+$"})
    EventSelector = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#EventSelector", name: "EventSelector")
    EventSelectors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtrail#EventSelectors", name: "EventSelectors")
    EventSource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#EventSource", name: "EventSource", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-z0-9_-]+\\.amazonaws\\.com$"})
    EventsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtrail#EventsList", name: "EventsList")
    ExcludeManagementEventSources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtrail#ExcludeManagementEventSources", name: "ExcludeManagementEventSources")
    FederationRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#FederationRoleArn", name: "FederationRoleArn", traits: {"smithy.api#length" => {"min" => 3, "max" => 125}, "smithy.api#pattern" => "^[a-zA-Z0-9._/\\-:@=\\+,\\.]+$"})
    FederationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudtrail#FederationStatus", name: "FederationStatus")
    GenerateQueryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#GenerateQueryRequest", name: "GenerateQueryRequest")
    GenerateQueryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#GenerateQueryResponse", name: "GenerateQueryResponse")
    GenerateResponseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#GenerateResponseException", name: "GenerateResponseException", traits: {"aws.protocols#awsQueryError" => {"code" => "GenerateResponse", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    GetChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#GetChannelRequest", name: "GetChannelRequest")
    GetChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#GetChannelResponse", name: "GetChannelResponse")
    GetDashboardRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#GetDashboardRequest", name: "GetDashboardRequest")
    GetDashboardResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#GetDashboardResponse", name: "GetDashboardResponse")
    GetEventConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#GetEventConfigurationRequest", name: "GetEventConfigurationRequest")
    GetEventConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#GetEventConfigurationResponse", name: "GetEventConfigurationResponse")
    GetEventDataStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#GetEventDataStoreRequest", name: "GetEventDataStoreRequest")
    GetEventDataStoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#GetEventDataStoreResponse", name: "GetEventDataStoreResponse")
    GetEventSelectorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#GetEventSelectorsRequest", name: "GetEventSelectorsRequest")
    GetEventSelectorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#GetEventSelectorsResponse", name: "GetEventSelectorsResponse")
    GetImportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#GetImportRequest", name: "GetImportRequest")
    GetImportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#GetImportResponse", name: "GetImportResponse")
    GetInsightSelectorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#GetInsightSelectorsRequest", name: "GetInsightSelectorsRequest")
    GetInsightSelectorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#GetInsightSelectorsResponse", name: "GetInsightSelectorsResponse")
    GetQueryResultsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#GetQueryResultsRequest", name: "GetQueryResultsRequest")
    GetQueryResultsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#GetQueryResultsResponse", name: "GetQueryResultsResponse")
    GetResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#GetResourcePolicyRequest", name: "GetResourcePolicyRequest")
    GetResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#GetResourcePolicyResponse", name: "GetResourcePolicyResponse")
    GetTrailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#GetTrailRequest", name: "GetTrailRequest")
    GetTrailResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#GetTrailResponse", name: "GetTrailResponse")
    GetTrailStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#GetTrailStatusRequest", name: "GetTrailStatusRequest")
    GetTrailStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#GetTrailStatusResponse", name: "GetTrailStatusResponse")
    ImportDestinations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtrail#ImportDestinations", name: "ImportDestinations", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ImportFailureList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtrail#ImportFailureList", name: "ImportFailureList")
    ImportFailureListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ImportFailureListItem", name: "ImportFailureListItem")
    ImportFailureStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudtrail#ImportFailureStatus", name: "ImportFailureStatus")
    ImportNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ImportNotFoundException", name: "ImportNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "ImportNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ImportSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ImportSource", name: "ImportSource")
    ImportStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ImportStatistics", name: "ImportStatistics")
    ImportStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudtrail#ImportStatus", name: "ImportStatus")
    ImportsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtrail#ImportsList", name: "ImportsList")
    ImportsListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ImportsListItem", name: "ImportsListItem")
    InactiveEventDataStoreException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#InactiveEventDataStoreException", name: "InactiveEventDataStoreException", traits: {"aws.protocols#awsQueryError" => {"code" => "InactiveEventDataStore", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InactiveQueryException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#InactiveQueryException", name: "InactiveQueryException", traits: {"aws.protocols#awsQueryError" => {"code" => "InactiveQuery", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IngestionStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#IngestionStatus", name: "IngestionStatus")
    InsightNotEnabledException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#InsightNotEnabledException", name: "InsightNotEnabledException", traits: {"aws.protocols#awsQueryError" => {"code" => "InsightNotEnabled", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InsightSelector = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#InsightSelector", name: "InsightSelector")
    InsightSelectors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtrail#InsightSelectors", name: "InsightSelectors")
    InsightType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudtrail#InsightType", name: "InsightType")
    InsightsMetricDataType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudtrail#InsightsMetricDataType", name: "InsightsMetricDataType")
    InsightsMetricMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudtrail#InsightsMetricMaxResults", name: "InsightsMetricMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 21600}})
    InsightsMetricNextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#InsightsMetricNextToken", name: "InsightsMetricNextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 5000}})
    InsightsMetricPeriod = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudtrail#InsightsMetricPeriod", name: "InsightsMetricPeriod", traits: {"smithy.api#range" => {"min" => 60, "max" => 3600}})
    InsightsMetricValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtrail#InsightsMetricValues", name: "InsightsMetricValues")
    InsufficientDependencyServiceAccessPermissionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#InsufficientDependencyServiceAccessPermissionException", name: "InsufficientDependencyServiceAccessPermissionException", traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientDependencyServiceAccessPermission", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InsufficientEncryptionPolicyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#InsufficientEncryptionPolicyException", name: "InsufficientEncryptionPolicyException", traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientEncryptionPolicy", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InsufficientIAMAccessPermissionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#InsufficientIAMAccessPermissionException", name: "InsufficientIAMAccessPermissionException", traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientIAMAccessPermission", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InsufficientS3BucketPolicyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#InsufficientS3BucketPolicyException", name: "InsufficientS3BucketPolicyException", traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientS3BucketPolicy", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    InsufficientSnsTopicPolicyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#InsufficientSnsTopicPolicyException", name: "InsufficientSnsTopicPolicyException", traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientSnsTopicPolicy", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudtrail#Integer", name: "Integer")
    InvalidCloudWatchLogsLogGroupArnException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#InvalidCloudWatchLogsLogGroupArnException", name: "InvalidCloudWatchLogsLogGroupArnException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidCloudWatchLogsLogGroupArn", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidCloudWatchLogsRoleArnException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#InvalidCloudWatchLogsRoleArnException", name: "InvalidCloudWatchLogsRoleArnException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidCloudWatchLogsRoleArn", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDateRangeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#InvalidDateRangeException", name: "InvalidDateRangeException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDateRange", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidEventCategoryException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#InvalidEventCategoryException", name: "InvalidEventCategoryException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidEventCategory", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidEventDataStoreCategoryException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#InvalidEventDataStoreCategoryException", name: "InvalidEventDataStoreCategoryException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidEventDataStoreCategory", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidEventDataStoreStatusException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#InvalidEventDataStoreStatusException", name: "InvalidEventDataStoreStatusException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidEventDataStoreStatus", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidEventSelectorsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#InvalidEventSelectorsException", name: "InvalidEventSelectorsException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidEventSelectors", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidHomeRegionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#InvalidHomeRegionException", name: "InvalidHomeRegionException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidHomeRegion", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidImportSourceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#InvalidImportSourceException", name: "InvalidImportSourceException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidImportSource", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidInsightSelectorsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#InvalidInsightSelectorsException", name: "InvalidInsightSelectorsException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidInsightSelectors", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidKmsKeyIdException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#InvalidKmsKeyIdException", name: "InvalidKmsKeyIdException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidKmsKeyId", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidLookupAttributesException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#InvalidLookupAttributesException", name: "InvalidLookupAttributesException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidLookupAttributes", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidMaxResultsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#InvalidMaxResultsException", name: "InvalidMaxResultsException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidMaxResults", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidNextTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#InvalidNextTokenException", name: "InvalidNextTokenException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidNextToken", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterCombinationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#InvalidParameterCombinationException", name: "InvalidParameterCombinationException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidParameterCombinationError", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#InvalidParameterException", name: "InvalidParameterException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidParameter", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidQueryStatementException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#InvalidQueryStatementException", name: "InvalidQueryStatementException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidQueryStatement", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidQueryStatusException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#InvalidQueryStatusException", name: "InvalidQueryStatusException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidQueryStatus", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidS3BucketNameException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#InvalidS3BucketNameException", name: "InvalidS3BucketNameException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidS3BucketName", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidS3PrefixException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#InvalidS3PrefixException", name: "InvalidS3PrefixException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidS3Prefix", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSnsTopicNameException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#InvalidSnsTopicNameException", name: "InvalidSnsTopicNameException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSnsTopicName", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSourceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#InvalidSourceException", name: "InvalidSourceException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSource", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidTagParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#InvalidTagParameterException", name: "InvalidTagParameterException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidTagParameter", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidTimeRangeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#InvalidTimeRangeException", name: "InvalidTimeRangeException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidTimeRange", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#InvalidTokenException", name: "InvalidTokenException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidToken", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidTrailNameException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#InvalidTrailNameException", name: "InvalidTrailNameException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidTrailName", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KmsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#KmsException", name: "KmsException", traits: {"aws.protocols#awsQueryError" => {"code" => "KmsException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KmsKeyDisabledException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#KmsKeyDisabledException", name: "KmsKeyDisabledException", traits: {"aws.protocols#awsQueryError" => {"code" => "KmsKeyDisabled", "httpResponseCode" => 400}, "smithy.api#deprecated" => {}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KmsKeyNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#KmsKeyNotFoundException", name: "KmsKeyNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "KmsKeyNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListChannelsMaxResultsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudtrail#ListChannelsMaxResultsCount", name: "ListChannelsMaxResultsCount", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListChannelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ListChannelsRequest", name: "ListChannelsRequest")
    ListChannelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ListChannelsResponse", name: "ListChannelsResponse")
    ListDashboardsMaxResultsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudtrail#ListDashboardsMaxResultsCount", name: "ListDashboardsMaxResultsCount", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListDashboardsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ListDashboardsRequest", name: "ListDashboardsRequest")
    ListDashboardsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ListDashboardsResponse", name: "ListDashboardsResponse")
    ListEventDataStoresMaxResultsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudtrail#ListEventDataStoresMaxResultsCount", name: "ListEventDataStoresMaxResultsCount", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListEventDataStoresRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ListEventDataStoresRequest", name: "ListEventDataStoresRequest")
    ListEventDataStoresResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ListEventDataStoresResponse", name: "ListEventDataStoresResponse")
    ListImportFailuresMaxResultsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudtrail#ListImportFailuresMaxResultsCount", name: "ListImportFailuresMaxResultsCount", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListImportFailuresRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ListImportFailuresRequest", name: "ListImportFailuresRequest")
    ListImportFailuresResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ListImportFailuresResponse", name: "ListImportFailuresResponse")
    ListImportsMaxResultsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudtrail#ListImportsMaxResultsCount", name: "ListImportsMaxResultsCount", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListImportsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ListImportsRequest", name: "ListImportsRequest")
    ListImportsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ListImportsResponse", name: "ListImportsResponse")
    ListInsightsMetricDataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ListInsightsMetricDataRequest", name: "ListInsightsMetricDataRequest")
    ListInsightsMetricDataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ListInsightsMetricDataResponse", name: "ListInsightsMetricDataResponse")
    ListPublicKeysRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ListPublicKeysRequest", name: "ListPublicKeysRequest")
    ListPublicKeysResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ListPublicKeysResponse", name: "ListPublicKeysResponse")
    ListQueriesMaxResultsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudtrail#ListQueriesMaxResultsCount", name: "ListQueriesMaxResultsCount", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListQueriesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ListQueriesRequest", name: "ListQueriesRequest")
    ListQueriesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ListQueriesResponse", name: "ListQueriesResponse")
    ListTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ListTagsRequest", name: "ListTagsRequest")
    ListTagsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ListTagsResponse", name: "ListTagsResponse")
    ListTrailsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ListTrailsRequest", name: "ListTrailsRequest")
    ListTrailsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ListTrailsResponse", name: "ListTrailsResponse")
    Location = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#Location", name: "Location", traits: {"smithy.api#length" => {"min" => 3, "max" => 1024}, "smithy.api#pattern" => "^[a-zA-Z0-9._/\\-:*]+$"})
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudtrail#Long", name: "Long")
    LookupAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#LookupAttribute", name: "LookupAttribute")
    LookupAttributeKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudtrail#LookupAttributeKey", name: "LookupAttributeKey")
    LookupAttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#LookupAttributeValue", name: "LookupAttributeValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    LookupAttributesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtrail#LookupAttributesList", name: "LookupAttributesList")
    LookupEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#LookupEventsRequest", name: "LookupEventsRequest")
    LookupEventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#LookupEventsResponse", name: "LookupEventsResponse")
    MaxConcurrentQueriesException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#MaxConcurrentQueriesException", name: "MaxConcurrentQueriesException", traits: {"aws.protocols#awsQueryError" => {"code" => "MaxConcurrentQueries", "httpResponseCode" => 429}, "smithy.api#error" => "client", "smithy.api#httpError" => 429})
    MaxEventSize = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudtrail#MaxEventSize", name: "MaxEventSize")
    MaxQueryResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudtrail#MaxQueryResults", name: "MaxQueryResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudtrail#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaximumNumberOfTrailsExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#MaximumNumberOfTrailsExceededException", name: "MaximumNumberOfTrailsExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "MaximumNumberOfTrailsExceeded", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#NextToken", name: "NextToken")
    NoManagementAccountSLRExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#NoManagementAccountSLRExistsException", name: "NoManagementAccountSLRExistsException", traits: {"aws.protocols#awsQueryError" => {"code" => "NoManagementAccountSLRExists", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    NotOrganizationManagementAccountException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#NotOrganizationManagementAccountException", name: "NotOrganizationManagementAccountException", traits: {"aws.protocols#awsQueryError" => {"code" => "NotOrganizationManagementAccount", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    NotOrganizationMasterAccountException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#NotOrganizationMasterAccountException", name: "NotOrganizationMasterAccountException", traits: {"aws.protocols#awsQueryError" => {"code" => "NotOrganizationMasterAccount", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    OperationNotPermittedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#OperationNotPermittedException", name: "OperationNotPermittedException", traits: {"aws.protocols#awsQueryError" => {"code" => "OperationNotPermitted", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Operator = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtrail#Operator", name: "Operator", traits: {"smithy.api#length" => {"min" => 1}})
    OperatorTargetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtrail#OperatorTargetList", name: "OperatorTargetList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    OperatorTargetListMember = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#OperatorTargetListMember", name: "OperatorTargetListMember", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    OperatorValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#OperatorValue", name: "OperatorValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^.+$"})
    OrganizationNotInAllFeaturesModeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#OrganizationNotInAllFeaturesModeException", name: "OrganizationNotInAllFeaturesModeException", traits: {"aws.protocols#awsQueryError" => {"code" => "OrganizationNotInAllFeaturesMode", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    OrganizationsNotInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#OrganizationsNotInUseException", name: "OrganizationsNotInUseException", traits: {"aws.protocols#awsQueryError" => {"code" => "OrganizationsNotInUse", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#PaginationToken", name: "PaginationToken", traits: {"smithy.api#length" => {"min" => 4, "max" => 1000}, "smithy.api#pattern" => ".*"})
    PartitionKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#PartitionKey", name: "PartitionKey")
    PartitionKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtrail#PartitionKeyList", name: "PartitionKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    PartitionKeyName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#PartitionKeyName", name: "PartitionKeyName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    PartitionKeyType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#PartitionKeyType", name: "PartitionKeyType", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    Prompt = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#Prompt", name: "Prompt", traits: {"smithy.api#length" => {"min" => 3, "max" => 500}, "smithy.api#pattern" => "^[ -~\\n]*$"})
    PublicKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#PublicKey", name: "PublicKey")
    PublicKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtrail#PublicKeyList", name: "PublicKeyList")
    PutEventConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#PutEventConfigurationRequest", name: "PutEventConfigurationRequest")
    PutEventConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#PutEventConfigurationResponse", name: "PutEventConfigurationResponse")
    PutEventSelectorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#PutEventSelectorsRequest", name: "PutEventSelectorsRequest")
    PutEventSelectorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#PutEventSelectorsResponse", name: "PutEventSelectorsResponse")
    PutInsightSelectorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#PutInsightSelectorsRequest", name: "PutInsightSelectorsRequest")
    PutInsightSelectorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#PutInsightSelectorsResponse", name: "PutInsightSelectorsResponse")
    PutResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#PutResourcePolicyRequest", name: "PutResourcePolicyRequest")
    PutResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#PutResourcePolicyResponse", name: "PutResourcePolicyResponse")
    Queries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtrail#Queries", name: "Queries")
    Query = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#Query", name: "Query")
    QueryAlias = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#QueryAlias", name: "QueryAlias", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9._\\-]*$"})
    QueryIdNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#QueryIdNotFoundException", name: "QueryIdNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "QueryIdNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    QueryParameter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#QueryParameter", name: "QueryParameter", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => ".*"})
    QueryParameterKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#QueryParameterKey", name: "QueryParameterKey", traits: {"smithy.api#length" => {"min" => 3, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9._/\\-:$]+$"})
    QueryParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#QueryParameterValue", name: "QueryParameterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9._/\\-:]+$"})
    QueryParameterValues = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudtrail#QueryParameterValues", name: "QueryParameterValues")
    QueryParameters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtrail#QueryParameters", name: "QueryParameters", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    QueryResultColumn = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudtrail#QueryResultColumn", name: "QueryResultColumn")
    QueryResultKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#QueryResultKey", name: "QueryResultKey")
    QueryResultRow = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtrail#QueryResultRow", name: "QueryResultRow")
    QueryResultRows = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtrail#QueryResultRows", name: "QueryResultRows")
    QueryResultValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#QueryResultValue", name: "QueryResultValue")
    QueryStatement = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#QueryStatement", name: "QueryStatement", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}, "smithy.api#pattern" => "^(?s)"})
    QueryStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#QueryStatistics", name: "QueryStatistics")
    QueryStatisticsForDescribeQuery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#QueryStatisticsForDescribeQuery", name: "QueryStatisticsForDescribeQuery")
    QueryStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudtrail#QueryStatus", name: "QueryStatus")
    ReadWriteType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudtrail#ReadWriteType", name: "ReadWriteType")
    RefreshId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#RefreshId", name: "RefreshId", traits: {"smithy.api#length" => {"min" => 10, "max" => 20}, "smithy.api#pattern" => "^\\d+$"})
    RefreshSchedule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#RefreshSchedule", name: "RefreshSchedule")
    RefreshScheduleFrequency = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#RefreshScheduleFrequency", name: "RefreshScheduleFrequency")
    RefreshScheduleFrequencyUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudtrail#RefreshScheduleFrequencyUnit", name: "RefreshScheduleFrequencyUnit")
    RefreshScheduleFrequencyValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudtrail#RefreshScheduleFrequencyValue", name: "RefreshScheduleFrequencyValue")
    RefreshScheduleStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudtrail#RefreshScheduleStatus", name: "RefreshScheduleStatus")
    RegisterOrganizationDelegatedAdminRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#RegisterOrganizationDelegatedAdminRequest", name: "RegisterOrganizationDelegatedAdminRequest")
    RegisterOrganizationDelegatedAdminResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#RegisterOrganizationDelegatedAdminResponse", name: "RegisterOrganizationDelegatedAdminResponse")
    RemoveTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#RemoveTagsRequest", name: "RemoveTagsRequest")
    RemoveTagsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#RemoveTagsResponse", name: "RemoveTagsResponse")
    RequestWidget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#RequestWidget", name: "RequestWidget")
    RequestWidgetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtrail#RequestWidgetList", name: "RequestWidgetList")
    Resource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#Resource", name: "Resource")
    ResourceARNNotValidException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ResourceARNNotValidException", name: "ResourceARNNotValidException", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceARNNotValid", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 3, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9._/\\-:]+$"})
    ResourceIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtrail#ResourceIdList", name: "ResourceIdList")
    ResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtrail#ResourceList", name: "ResourceList")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourcePolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#ResourcePolicy", name: "ResourcePolicy", traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}})
    ResourcePolicyNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ResourcePolicyNotFoundException", name: "ResourcePolicyNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourcePolicyNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePolicyNotValidException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ResourcePolicyNotValidException", name: "ResourcePolicyNotValidException", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourcePolicyNotValid", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceTag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ResourceTag", name: "ResourceTag")
    ResourceTagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtrail#ResourceTagList", name: "ResourceTagList")
    ResourceTypeNotSupportedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ResourceTypeNotSupportedException", name: "ResourceTypeNotSupportedException", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceTypeNotSupported", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RestoreEventDataStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#RestoreEventDataStoreRequest", name: "RestoreEventDataStoreRequest")
    RestoreEventDataStoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#RestoreEventDataStoreResponse", name: "RestoreEventDataStoreResponse")
    RetentionPeriod = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudtrail#RetentionPeriod", name: "RetentionPeriod", traits: {"smithy.api#range" => {"min" => 7, "max" => 3653}})
    S3BucketDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#S3BucketDoesNotExistException", name: "S3BucketDoesNotExistException", traits: {"aws.protocols#awsQueryError" => {"code" => "S3BucketDoesNotExist", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    S3ImportSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#S3ImportSource", name: "S3ImportSource")
    SampleQueryDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#SampleQueryDescription", name: "SampleQueryDescription")
    SampleQueryName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#SampleQueryName", name: "SampleQueryName")
    SampleQueryRelevance = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.cloudtrail#SampleQueryRelevance", name: "SampleQueryRelevance", traits: {"smithy.api#default" => 0})
    SampleQuerySQL = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#SampleQuerySQL", name: "SampleQuerySQL")
    SearchSampleQueriesMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudtrail#SearchSampleQueriesMaxResults", name: "SearchSampleQueriesMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    SearchSampleQueriesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#SearchSampleQueriesRequest", name: "SearchSampleQueriesRequest")
    SearchSampleQueriesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#SearchSampleQueriesResponse", name: "SearchSampleQueriesResponse")
    SearchSampleQueriesSearchPhrase = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#SearchSampleQueriesSearchPhrase", name: "SearchSampleQueriesSearchPhrase", traits: {"smithy.api#length" => {"min" => 2, "max" => 1000}, "smithy.api#pattern" => "^[ -~\\n]*$"})
    SearchSampleQueriesSearchResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#SearchSampleQueriesSearchResult", name: "SearchSampleQueriesSearchResult")
    SearchSampleQueriesSearchResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtrail#SearchSampleQueriesSearchResults", name: "SearchSampleQueriesSearchResults")
    SelectorField = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#SelectorField", name: "SelectorField", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[\\w|\\d|\\.|_]+$"})
    SelectorName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#SelectorName", name: "SelectorName", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => ".*"})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "ServiceQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Source = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#Source", name: "Source", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => ".*"})
    SourceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#SourceConfig", name: "SourceConfig")
    StartDashboardRefreshRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#StartDashboardRefreshRequest", name: "StartDashboardRefreshRequest")
    StartDashboardRefreshResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#StartDashboardRefreshResponse", name: "StartDashboardRefreshResponse")
    StartEventDataStoreIngestionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#StartEventDataStoreIngestionRequest", name: "StartEventDataStoreIngestionRequest")
    StartEventDataStoreIngestionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#StartEventDataStoreIngestionResponse", name: "StartEventDataStoreIngestionResponse")
    StartImportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#StartImportRequest", name: "StartImportRequest")
    StartImportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#StartImportResponse", name: "StartImportResponse")
    StartLoggingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#StartLoggingRequest", name: "StartLoggingRequest")
    StartLoggingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#StartLoggingResponse", name: "StartLoggingResponse")
    StartQueryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#StartQueryRequest", name: "StartQueryRequest")
    StartQueryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#StartQueryResponse", name: "StartQueryResponse")
    StopEventDataStoreIngestionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#StopEventDataStoreIngestionRequest", name: "StopEventDataStoreIngestionRequest")
    StopEventDataStoreIngestionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#StopEventDataStoreIngestionResponse", name: "StopEventDataStoreIngestionResponse")
    StopImportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#StopImportRequest", name: "StopImportRequest")
    StopImportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#StopImportResponse", name: "StopImportResponse")
    StopLoggingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#StopLoggingRequest", name: "StopLoggingRequest")
    StopLoggingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#StopLoggingResponse", name: "StopLoggingResponse")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#String", name: "String")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    TagsLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#TagsLimitExceededException", name: "TagsLimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "TagsLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TagsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtrail#TagsList", name: "TagsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TerminationProtectionEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudtrail#TerminationProtectionEnabled", name: "TerminationProtectionEnabled")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#ThrottlingException", name: "ThrottlingException", traits: {"aws.protocols#awsQueryError" => {"code" => "ThrottlingException", "httpResponseCode" => 429}, "smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TimeOfDay = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#TimeOfDay", name: "TimeOfDay", traits: {"smithy.api#pattern" => "^[0-9]{2}:[0-9]{2}$"})
    Timestamps = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtrail#Timestamps", name: "Timestamps")
    Trail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#Trail", name: "Trail")
    TrailAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#TrailAlreadyExistsException", name: "TrailAlreadyExistsException", traits: {"aws.protocols#awsQueryError" => {"code" => "TrailAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TrailInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#TrailInfo", name: "TrailInfo")
    TrailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtrail#TrailList", name: "TrailList")
    TrailNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtrail#TrailNameList", name: "TrailNameList")
    TrailNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#TrailNotFoundException", name: "TrailNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "TrailNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    TrailNotProvidedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#TrailNotProvidedException", name: "TrailNotProvidedException", traits: {"aws.protocols#awsQueryError" => {"code" => "TrailNotProvided", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Trails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtrail#Trails", name: "Trails")
    Type = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudtrail#Type", name: "Type")
    UUID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#UUID", name: "UUID", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-f0-9\\-]+$"})
    UnsupportedOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#UnsupportedOperationException", name: "UnsupportedOperationException", traits: {"aws.protocols#awsQueryError" => {"code" => "UnsupportedOperation", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UpdateChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#UpdateChannelRequest", name: "UpdateChannelRequest")
    UpdateChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#UpdateChannelResponse", name: "UpdateChannelResponse")
    UpdateDashboardRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#UpdateDashboardRequest", name: "UpdateDashboardRequest")
    UpdateDashboardResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#UpdateDashboardResponse", name: "UpdateDashboardResponse")
    UpdateEventDataStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#UpdateEventDataStoreRequest", name: "UpdateEventDataStoreRequest")
    UpdateEventDataStoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#UpdateEventDataStoreResponse", name: "UpdateEventDataStoreResponse")
    UpdateTrailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#UpdateTrailRequest", name: "UpdateTrailRequest")
    UpdateTrailResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#UpdateTrailResponse", name: "UpdateTrailResponse")
    ViewPropertiesKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#ViewPropertiesKey", name: "ViewPropertiesKey", traits: {"smithy.api#length" => {"min" => 3, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9._\\-]+$"})
    ViewPropertiesMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudtrail#ViewPropertiesMap", name: "ViewPropertiesMap")
    ViewPropertiesValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudtrail#ViewPropertiesValue", name: "ViewPropertiesValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9._\\- ]+$"})
    Widget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudtrail#Widget", name: "Widget")
    WidgetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudtrail#WidgetList", name: "WidgetList")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountHasOngoingImportException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    AccountHasOngoingImportException.type = Types::AccountHasOngoingImportException
    AccountNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    AccountNotFoundException.type = Types::AccountNotFoundException
    AccountNotRegisteredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    AccountNotRegisteredException.type = Types::AccountNotRegisteredException
    AccountRegisteredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    AccountRegisteredException.type = Types::AccountRegisteredException
    AddTagsRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    AddTagsRequest.add_member(:tags_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsList, location_name: "TagsList", traits: {"smithy.api#required" => {}}))
    AddTagsRequest.type = Types::AddTagsRequest
    AddTagsResponse.type = Types::AddTagsResponse
    AdvancedEventSelector.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectorName, location_name: "Name"))
    AdvancedEventSelector.add_member(:field_selectors, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvancedFieldSelectors, location_name: "FieldSelectors", traits: {"smithy.api#required" => {}}))
    AdvancedEventSelector.type = Types::AdvancedEventSelector
    AdvancedEventSelectors.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AdvancedEventSelector)
    AdvancedFieldSelector.add_member(:field, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectorField, location_name: "Field", traits: {"smithy.api#required" => {}}))
    AdvancedFieldSelector.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: Operator, location_name: "Equals"))
    AdvancedFieldSelector.add_member(:starts_with, ::Smithy::Schema::Shapes::MemberShape.new(target: Operator, location_name: "StartsWith"))
    AdvancedFieldSelector.add_member(:ends_with, ::Smithy::Schema::Shapes::MemberShape.new(target: Operator, location_name: "EndsWith"))
    AdvancedFieldSelector.add_member(:not_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: Operator, location_name: "NotEquals"))
    AdvancedFieldSelector.add_member(:not_starts_with, ::Smithy::Schema::Shapes::MemberShape.new(target: Operator, location_name: "NotStartsWith"))
    AdvancedFieldSelector.add_member(:not_ends_with, ::Smithy::Schema::Shapes::MemberShape.new(target: Operator, location_name: "NotEndsWith"))
    AdvancedFieldSelector.type = Types::AdvancedFieldSelector
    AdvancedFieldSelectors.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AdvancedFieldSelector)
    BillingMode.add_member(:extendable_retention_pricing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXTENDABLE_RETENTION_PRICING", traits: {"smithy.api#enumValue" => "EXTENDABLE_RETENTION_PRICING"}))
    BillingMode.add_member(:fixed_retention_pricing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FIXED_RETENTION_PRICING", traits: {"smithy.api#enumValue" => "FIXED_RETENTION_PRICING"}))
    CancelQueryRequest.add_member(:event_data_store, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreArn, location_name: "EventDataStore", traits: {"smithy.api#deprecated" => {"message" => "EventDataStore is no longer required by CancelQueryRequest"}}))
    CancelQueryRequest.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, location_name: "QueryId", traits: {"smithy.api#required" => {}}))
    CancelQueryRequest.add_member(:event_data_store_owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "EventDataStoreOwnerAccountId"))
    CancelQueryRequest.type = Types::CancelQueryRequest
    CancelQueryResponse.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, location_name: "QueryId", traits: {"smithy.api#required" => {}}))
    CancelQueryResponse.add_member(:query_status, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStatus, location_name: "QueryStatus", traits: {"smithy.api#required" => {}}))
    CancelQueryResponse.add_member(:event_data_store_owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "EventDataStoreOwnerAccountId"))
    CancelQueryResponse.type = Types::CancelQueryResponse
    CannotDelegateManagementAccountException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    CannotDelegateManagementAccountException.type = Types::CannotDelegateManagementAccountException
    Channel.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelArn, location_name: "ChannelArn"))
    Channel.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelName, location_name: "Name"))
    Channel.type = Types::Channel
    ChannelARNInvalidException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    ChannelARNInvalidException.type = Types::ChannelARNInvalidException
    ChannelAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    ChannelAlreadyExistsException.type = Types::ChannelAlreadyExistsException
    ChannelExistsForEDSException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    ChannelExistsForEDSException.type = Types::ChannelExistsForEDSException
    ChannelMaxLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    ChannelMaxLimitExceededException.type = Types::ChannelMaxLimitExceededException
    ChannelNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    ChannelNotFoundException.type = Types::ChannelNotFoundException
    Channels.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Channel)
    CloudTrailARNInvalidException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    CloudTrailARNInvalidException.type = Types::CloudTrailARNInvalidException
    CloudTrailAccessNotEnabledException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    CloudTrailAccessNotEnabledException.type = Types::CloudTrailAccessNotEnabledException
    CloudTrailInvalidClientTokenIdException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    CloudTrailInvalidClientTokenIdException.type = Types::CloudTrailInvalidClientTokenIdException
    CloudWatchLogsDeliveryUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    CloudWatchLogsDeliveryUnavailableException.type = Types::CloudWatchLogsDeliveryUnavailableException
    ConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    ConflictException.type = Types::ConflictException
    ContextKeySelector.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Type, location_name: "Type", traits: {"smithy.api#required" => {}}))
    ContextKeySelector.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: OperatorTargetList, location_name: "Equals", traits: {"smithy.api#required" => {}}))
    ContextKeySelector.type = Types::ContextKeySelector
    ContextKeySelectors.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContextKeySelector)
    CreateChannelRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateChannelRequest.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, location_name: "Source", traits: {"smithy.api#required" => {}}))
    CreateChannelRequest.add_member(:destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: Destinations, location_name: "Destinations", traits: {"smithy.api#required" => {}}))
    CreateChannelRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsList, location_name: "Tags"))
    CreateChannelRequest.type = Types::CreateChannelRequest
    CreateChannelResponse.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelArn, location_name: "ChannelArn"))
    CreateChannelResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelName, location_name: "Name"))
    CreateChannelResponse.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, location_name: "Source"))
    CreateChannelResponse.add_member(:destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: Destinations, location_name: "Destinations"))
    CreateChannelResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsList, location_name: "Tags"))
    CreateChannelResponse.type = Types::CreateChannelResponse
    CreateDashboardRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateDashboardRequest.add_member(:refresh_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshSchedule, location_name: "RefreshSchedule"))
    CreateDashboardRequest.add_member(:tags_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsList, location_name: "TagsList"))
    CreateDashboardRequest.add_member(:termination_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: TerminationProtectionEnabled, location_name: "TerminationProtectionEnabled"))
    CreateDashboardRequest.add_member(:widgets, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestWidgetList, location_name: "Widgets"))
    CreateDashboardRequest.type = Types::CreateDashboardRequest
    CreateDashboardResponse.add_member(:dashboard_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardArn, location_name: "DashboardArn"))
    CreateDashboardResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardName, location_name: "Name"))
    CreateDashboardResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardType, location_name: "Type"))
    CreateDashboardResponse.add_member(:widgets, ::Smithy::Schema::Shapes::MemberShape.new(target: WidgetList, location_name: "Widgets"))
    CreateDashboardResponse.add_member(:tags_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsList, location_name: "TagsList"))
    CreateDashboardResponse.add_member(:refresh_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshSchedule, location_name: "RefreshSchedule"))
    CreateDashboardResponse.add_member(:termination_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: TerminationProtectionEnabled, location_name: "TerminationProtectionEnabled"))
    CreateDashboardResponse.type = Types::CreateDashboardResponse
    CreateEventDataStoreRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateEventDataStoreRequest.add_member(:advanced_event_selectors, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvancedEventSelectors, location_name: "AdvancedEventSelectors"))
    CreateEventDataStoreRequest.add_member(:multi_region_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "MultiRegionEnabled"))
    CreateEventDataStoreRequest.add_member(:organization_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "OrganizationEnabled"))
    CreateEventDataStoreRequest.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriod, location_name: "RetentionPeriod"))
    CreateEventDataStoreRequest.add_member(:termination_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: TerminationProtectionEnabled, location_name: "TerminationProtectionEnabled"))
    CreateEventDataStoreRequest.add_member(:tags_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsList, location_name: "TagsList"))
    CreateEventDataStoreRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreKmsKeyId, location_name: "KmsKeyId"))
    CreateEventDataStoreRequest.add_member(:start_ingestion, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "StartIngestion"))
    CreateEventDataStoreRequest.add_member(:billing_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingMode, location_name: "BillingMode"))
    CreateEventDataStoreRequest.type = Types::CreateEventDataStoreRequest
    CreateEventDataStoreResponse.add_member(:event_data_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreArn, location_name: "EventDataStoreArn"))
    CreateEventDataStoreResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreName, location_name: "Name"))
    CreateEventDataStoreResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreStatus, location_name: "Status"))
    CreateEventDataStoreResponse.add_member(:advanced_event_selectors, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvancedEventSelectors, location_name: "AdvancedEventSelectors"))
    CreateEventDataStoreResponse.add_member(:multi_region_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "MultiRegionEnabled"))
    CreateEventDataStoreResponse.add_member(:organization_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "OrganizationEnabled"))
    CreateEventDataStoreResponse.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriod, location_name: "RetentionPeriod"))
    CreateEventDataStoreResponse.add_member(:termination_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: TerminationProtectionEnabled, location_name: "TerminationProtectionEnabled"))
    CreateEventDataStoreResponse.add_member(:tags_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsList, location_name: "TagsList"))
    CreateEventDataStoreResponse.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "CreatedTimestamp"))
    CreateEventDataStoreResponse.add_member(:updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "UpdatedTimestamp"))
    CreateEventDataStoreResponse.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreKmsKeyId, location_name: "KmsKeyId"))
    CreateEventDataStoreResponse.add_member(:billing_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingMode, location_name: "BillingMode"))
    CreateEventDataStoreResponse.type = Types::CreateEventDataStoreResponse
    CreateTrailRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateTrailRequest.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "S3BucketName", traits: {"smithy.api#required" => {}}))
    CreateTrailRequest.add_member(:s3_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "S3KeyPrefix"))
    CreateTrailRequest.add_member(:sns_topic_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SnsTopicName"))
    CreateTrailRequest.add_member(:include_global_service_events, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "IncludeGlobalServiceEvents"))
    CreateTrailRequest.add_member(:is_multi_region_trail, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "IsMultiRegionTrail"))
    CreateTrailRequest.add_member(:enable_log_file_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "EnableLogFileValidation"))
    CreateTrailRequest.add_member(:cloud_watch_logs_log_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "CloudWatchLogsLogGroupArn"))
    CreateTrailRequest.add_member(:cloud_watch_logs_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "CloudWatchLogsRoleArn"))
    CreateTrailRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "KmsKeyId"))
    CreateTrailRequest.add_member(:is_organization_trail, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "IsOrganizationTrail"))
    CreateTrailRequest.add_member(:tags_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsList, location_name: "TagsList"))
    CreateTrailRequest.type = Types::CreateTrailRequest
    CreateTrailResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Name"))
    CreateTrailResponse.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "S3BucketName"))
    CreateTrailResponse.add_member(:s3_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "S3KeyPrefix"))
    CreateTrailResponse.add_member(:sns_topic_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SnsTopicName", traits: {"smithy.api#deprecated" => {}}))
    CreateTrailResponse.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SnsTopicARN"))
    CreateTrailResponse.add_member(:include_global_service_events, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "IncludeGlobalServiceEvents"))
    CreateTrailResponse.add_member(:is_multi_region_trail, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "IsMultiRegionTrail"))
    CreateTrailResponse.add_member(:trail_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "TrailARN"))
    CreateTrailResponse.add_member(:log_file_validation_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "LogFileValidationEnabled"))
    CreateTrailResponse.add_member(:cloud_watch_logs_log_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "CloudWatchLogsLogGroupArn"))
    CreateTrailResponse.add_member(:cloud_watch_logs_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "CloudWatchLogsRoleArn"))
    CreateTrailResponse.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "KmsKeyId"))
    CreateTrailResponse.add_member(:is_organization_trail, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "IsOrganizationTrail"))
    CreateTrailResponse.type = Types::CreateTrailResponse
    DashboardDetail.add_member(:dashboard_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardArn, location_name: "DashboardArn"))
    DashboardDetail.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardType, location_name: "Type"))
    DashboardDetail.type = Types::DashboardDetail
    DashboardStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    DashboardStatus.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    DashboardStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    DashboardStatus.add_member(:updated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATED", traits: {"smithy.api#enumValue" => "UPDATED"}))
    DashboardStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    DashboardType.add_member(:managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MANAGED", traits: {"smithy.api#enumValue" => "MANAGED"}))
    DashboardType.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CUSTOM", traits: {"smithy.api#enumValue" => "CUSTOM"}))
    Dashboards.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardDetail)
    DataResource.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Type"))
    DataResource.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: DataResourceValues, location_name: "Values"))
    DataResource.type = Types::DataResource
    DataResourceValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    DataResources.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DataResource)
    DelegatedAdminAccountLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    DelegatedAdminAccountLimitExceededException.type = Types::DelegatedAdminAccountLimitExceededException
    DeleteChannelRequest.add_member(:channel, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelArn, location_name: "Channel", traits: {"smithy.api#required" => {}}))
    DeleteChannelRequest.type = Types::DeleteChannelRequest
    DeleteChannelResponse.type = Types::DeleteChannelResponse
    DeleteDashboardRequest.add_member(:dashboard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardArn, location_name: "DashboardId", traits: {"smithy.api#required" => {}}))
    DeleteDashboardRequest.type = Types::DeleteDashboardRequest
    DeleteDashboardResponse.type = Types::DeleteDashboardResponse
    DeleteEventDataStoreRequest.add_member(:event_data_store, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreArn, location_name: "EventDataStore", traits: {"smithy.api#required" => {}}))
    DeleteEventDataStoreRequest.type = Types::DeleteEventDataStoreRequest
    DeleteEventDataStoreResponse.type = Types::DeleteEventDataStoreResponse
    DeleteResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    DeleteResourcePolicyRequest.type = Types::DeleteResourcePolicyRequest
    DeleteResourcePolicyResponse.type = Types::DeleteResourcePolicyResponse
    DeleteTrailRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Name", traits: {"smithy.api#required" => {}}))
    DeleteTrailRequest.type = Types::DeleteTrailRequest
    DeleteTrailResponse.type = Types::DeleteTrailResponse
    DeliveryStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    DeliveryStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DeliveryStatus.add_member(:failed_signing_file, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED_SIGNING_FILE", traits: {"smithy.api#enumValue" => "FAILED_SIGNING_FILE"}))
    DeliveryStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    DeliveryStatus.add_member(:resource_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESOURCE_NOT_FOUND", traits: {"smithy.api#enumValue" => "RESOURCE_NOT_FOUND"}))
    DeliveryStatus.add_member(:access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACCESS_DENIED", traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    DeliveryStatus.add_member(:access_denied_signing_file, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACCESS_DENIED_SIGNING_FILE", traits: {"smithy.api#enumValue" => "ACCESS_DENIED_SIGNING_FILE"}))
    DeliveryStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    DeliveryStatus.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    DeregisterOrganizationDelegatedAdminRequest.add_member(:delegated_admin_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "DelegatedAdminAccountId", traits: {"smithy.api#required" => {}}))
    DeregisterOrganizationDelegatedAdminRequest.type = Types::DeregisterOrganizationDelegatedAdminRequest
    DeregisterOrganizationDelegatedAdminResponse.type = Types::DeregisterOrganizationDelegatedAdminResponse
    DescribeQueryRequest.add_member(:event_data_store, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreArn, location_name: "EventDataStore", traits: {"smithy.api#deprecated" => {"message" => "EventDataStore is no longer required by DescribeQueryRequest"}}))
    DescribeQueryRequest.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, location_name: "QueryId"))
    DescribeQueryRequest.add_member(:query_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryAlias, location_name: "QueryAlias"))
    DescribeQueryRequest.add_member(:refresh_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshId, location_name: "RefreshId"))
    DescribeQueryRequest.add_member(:event_data_store_owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "EventDataStoreOwnerAccountId"))
    DescribeQueryRequest.type = Types::DescribeQueryRequest
    DescribeQueryResponse.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, location_name: "QueryId"))
    DescribeQueryResponse.add_member(:query_string, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStatement, location_name: "QueryString"))
    DescribeQueryResponse.add_member(:query_status, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStatus, location_name: "QueryStatus"))
    DescribeQueryResponse.add_member(:query_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStatisticsForDescribeQuery, location_name: "QueryStatistics"))
    DescribeQueryResponse.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "ErrorMessage"))
    DescribeQueryResponse.add_member(:delivery_s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryS3Uri, location_name: "DeliveryS3Uri"))
    DescribeQueryResponse.add_member(:delivery_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryStatus, location_name: "DeliveryStatus"))
    DescribeQueryResponse.add_member(:prompt, ::Smithy::Schema::Shapes::MemberShape.new(target: Prompt, location_name: "Prompt"))
    DescribeQueryResponse.add_member(:event_data_store_owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "EventDataStoreOwnerAccountId"))
    DescribeQueryResponse.type = Types::DescribeQueryResponse
    DescribeTrailsRequest.add_member(:trail_name_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TrailNameList, location_name: "trailNameList"))
    DescribeTrailsRequest.add_member(:include_shadow_trails, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "includeShadowTrails"))
    DescribeTrailsRequest.type = Types::DescribeTrailsRequest
    DescribeTrailsResponse.add_member(:trail_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TrailList, location_name: "trailList"))
    DescribeTrailsResponse.type = Types::DescribeTrailsResponse
    Destination.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationType, location_name: "Type", traits: {"smithy.api#required" => {}}))
    Destination.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, location_name: "Location", traits: {"smithy.api#required" => {}}))
    Destination.type = Types::Destination
    DestinationType.add_member(:event_data_store, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EVENT_DATA_STORE", traits: {"smithy.api#enumValue" => "EVENT_DATA_STORE"}))
    DestinationType.add_member(:aws_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_SERVICE", traits: {"smithy.api#enumValue" => "AWS_SERVICE"}))
    Destinations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Destination)
    DisableFederationRequest.add_member(:event_data_store, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreArn, location_name: "EventDataStore", traits: {"smithy.api#required" => {}}))
    DisableFederationRequest.type = Types::DisableFederationRequest
    DisableFederationResponse.add_member(:event_data_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreArn, location_name: "EventDataStoreArn"))
    DisableFederationResponse.add_member(:federation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: FederationStatus, location_name: "FederationStatus"))
    DisableFederationResponse.type = Types::DisableFederationResponse
    EnableFederationRequest.add_member(:event_data_store, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreArn, location_name: "EventDataStore", traits: {"smithy.api#required" => {}}))
    EnableFederationRequest.add_member(:federation_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FederationRoleArn, location_name: "FederationRoleArn", traits: {"smithy.api#required" => {}}))
    EnableFederationRequest.type = Types::EnableFederationRequest
    EnableFederationResponse.add_member(:event_data_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreArn, location_name: "EventDataStoreArn"))
    EnableFederationResponse.add_member(:federation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: FederationStatus, location_name: "FederationStatus"))
    EnableFederationResponse.add_member(:federation_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FederationRoleArn, location_name: "FederationRoleArn"))
    EnableFederationResponse.type = Types::EnableFederationResponse
    Event.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "EventId"))
    Event.add_member(:event_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "EventName"))
    Event.add_member(:read_only, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ReadOnly"))
    Event.add_member(:access_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "AccessKeyId"))
    Event.add_member(:event_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "EventTime"))
    Event.add_member(:event_source, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "EventSource"))
    Event.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Username"))
    Event.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceList, location_name: "Resources"))
    Event.add_member(:cloud_trail_event, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "CloudTrailEvent"))
    Event.type = Types::Event
    EventCategory.add_member(:insight, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Insight", traits: {"smithy.api#enumValue" => "insight"}))
    EventDataStore.add_member(:event_data_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreArn, location_name: "EventDataStoreArn"))
    EventDataStore.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreName, location_name: "Name"))
    EventDataStore.add_member(:termination_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: TerminationProtectionEnabled, location_name: "TerminationProtectionEnabled", traits: {"smithy.api#deprecated" => {"message" => "TerminationProtectionEnabled is no longer returned by ListEventDataStores"}}))
    EventDataStore.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreStatus, location_name: "Status", traits: {"smithy.api#deprecated" => {"message" => "Status is no longer returned by ListEventDataStores"}}))
    EventDataStore.add_member(:advanced_event_selectors, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvancedEventSelectors, location_name: "AdvancedEventSelectors", traits: {"smithy.api#deprecated" => {"message" => "AdvancedEventSelectors is no longer returned by ListEventDataStores"}}))
    EventDataStore.add_member(:multi_region_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "MultiRegionEnabled", traits: {"smithy.api#deprecated" => {"message" => "MultiRegionEnabled is no longer returned by ListEventDataStores"}}))
    EventDataStore.add_member(:organization_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "OrganizationEnabled", traits: {"smithy.api#deprecated" => {"message" => "OrganizationEnabled is no longer returned by ListEventDataStores"}}))
    EventDataStore.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriod, location_name: "RetentionPeriod", traits: {"smithy.api#deprecated" => {"message" => "RetentionPeriod is no longer returned by ListEventDataStores"}}))
    EventDataStore.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "CreatedTimestamp", traits: {"smithy.api#deprecated" => {"message" => "CreatedTimestamp is no longer returned by ListEventDataStores"}}))
    EventDataStore.add_member(:updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "UpdatedTimestamp", traits: {"smithy.api#deprecated" => {"message" => "UpdatedTimestamp is no longer returned by ListEventDataStores"}}))
    EventDataStore.type = Types::EventDataStore
    EventDataStoreARNInvalidException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    EventDataStoreARNInvalidException.type = Types::EventDataStoreARNInvalidException
    EventDataStoreAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    EventDataStoreAlreadyExistsException.type = Types::EventDataStoreAlreadyExistsException
    EventDataStoreFederationEnabledException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    EventDataStoreFederationEnabledException.type = Types::EventDataStoreFederationEnabledException
    EventDataStoreHasOngoingImportException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    EventDataStoreHasOngoingImportException.type = Types::EventDataStoreHasOngoingImportException
    EventDataStoreList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreArn)
    EventDataStoreMaxLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    EventDataStoreMaxLimitExceededException.type = Types::EventDataStoreMaxLimitExceededException
    EventDataStoreNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    EventDataStoreNotFoundException.type = Types::EventDataStoreNotFoundException
    EventDataStoreStatus.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    EventDataStoreStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    EventDataStoreStatus.add_member(:pending_deletion, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_DELETION", traits: {"smithy.api#enumValue" => "PENDING_DELETION"}))
    EventDataStoreStatus.add_member(:starting_ingestion, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STARTING_INGESTION", traits: {"smithy.api#enumValue" => "STARTING_INGESTION"}))
    EventDataStoreStatus.add_member(:stopping_ingestion, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPING_INGESTION", traits: {"smithy.api#enumValue" => "STOPPING_INGESTION"}))
    EventDataStoreStatus.add_member(:stopped_ingestion, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPED_INGESTION", traits: {"smithy.api#enumValue" => "STOPPED_INGESTION"}))
    EventDataStoreTerminationProtectedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    EventDataStoreTerminationProtectedException.type = Types::EventDataStoreTerminationProtectedException
    EventDataStores.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStore)
    EventSelector.add_member(:read_write_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadWriteType, location_name: "ReadWriteType"))
    EventSelector.add_member(:include_management_events, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "IncludeManagementEvents"))
    EventSelector.add_member(:data_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: DataResources, location_name: "DataResources"))
    EventSelector.add_member(:exclude_management_event_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludeManagementEventSources, location_name: "ExcludeManagementEventSources"))
    EventSelector.type = Types::EventSelector
    EventSelectors.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EventSelector)
    EventsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Event)
    ExcludeManagementEventSources.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    FederationStatus.add_member(:enabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLING", traits: {"smithy.api#enumValue" => "ENABLING"}))
    FederationStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    FederationStatus.add_member(:disabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLING", traits: {"smithy.api#enumValue" => "DISABLING"}))
    FederationStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    GenerateQueryRequest.add_member(:event_data_stores, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreList, location_name: "EventDataStores", traits: {"smithy.api#required" => {}}))
    GenerateQueryRequest.add_member(:prompt, ::Smithy::Schema::Shapes::MemberShape.new(target: Prompt, location_name: "Prompt", traits: {"smithy.api#required" => {}}))
    GenerateQueryRequest.type = Types::GenerateQueryRequest
    GenerateQueryResponse.add_member(:query_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStatement, location_name: "QueryStatement"))
    GenerateQueryResponse.add_member(:query_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryAlias, location_name: "QueryAlias"))
    GenerateQueryResponse.add_member(:event_data_store_owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "EventDataStoreOwnerAccountId"))
    GenerateQueryResponse.type = Types::GenerateQueryResponse
    GenerateResponseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    GenerateResponseException.type = Types::GenerateResponseException
    GetChannelRequest.add_member(:channel, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelArn, location_name: "Channel", traits: {"smithy.api#required" => {}}))
    GetChannelRequest.type = Types::GetChannelRequest
    GetChannelResponse.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelArn, location_name: "ChannelArn"))
    GetChannelResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelName, location_name: "Name"))
    GetChannelResponse.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, location_name: "Source"))
    GetChannelResponse.add_member(:source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceConfig, location_name: "SourceConfig"))
    GetChannelResponse.add_member(:destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: Destinations, location_name: "Destinations"))
    GetChannelResponse.add_member(:ingestion_status, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestionStatus, location_name: "IngestionStatus"))
    GetChannelResponse.type = Types::GetChannelResponse
    GetDashboardRequest.add_member(:dashboard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardArn, location_name: "DashboardId", traits: {"smithy.api#required" => {}}))
    GetDashboardRequest.type = Types::GetDashboardRequest
    GetDashboardResponse.add_member(:dashboard_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardArn, location_name: "DashboardArn"))
    GetDashboardResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardType, location_name: "Type"))
    GetDashboardResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardStatus, location_name: "Status"))
    GetDashboardResponse.add_member(:widgets, ::Smithy::Schema::Shapes::MemberShape.new(target: WidgetList, location_name: "Widgets"))
    GetDashboardResponse.add_member(:refresh_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshSchedule, location_name: "RefreshSchedule"))
    GetDashboardResponse.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "CreatedTimestamp"))
    GetDashboardResponse.add_member(:updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "UpdatedTimestamp"))
    GetDashboardResponse.add_member(:last_refresh_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshId, location_name: "LastRefreshId"))
    GetDashboardResponse.add_member(:last_refresh_failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "LastRefreshFailureReason"))
    GetDashboardResponse.add_member(:termination_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: TerminationProtectionEnabled, location_name: "TerminationProtectionEnabled"))
    GetDashboardResponse.type = Types::GetDashboardResponse
    GetEventConfigurationRequest.add_member(:event_data_store, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "EventDataStore"))
    GetEventConfigurationRequest.type = Types::GetEventConfigurationRequest
    GetEventConfigurationResponse.add_member(:event_data_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreArn, location_name: "EventDataStoreArn"))
    GetEventConfigurationResponse.add_member(:max_event_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxEventSize, location_name: "MaxEventSize"))
    GetEventConfigurationResponse.add_member(:context_key_selectors, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextKeySelectors, location_name: "ContextKeySelectors"))
    GetEventConfigurationResponse.type = Types::GetEventConfigurationResponse
    GetEventDataStoreRequest.add_member(:event_data_store, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreArn, location_name: "EventDataStore", traits: {"smithy.api#required" => {}}))
    GetEventDataStoreRequest.type = Types::GetEventDataStoreRequest
    GetEventDataStoreResponse.add_member(:event_data_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreArn, location_name: "EventDataStoreArn"))
    GetEventDataStoreResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreName, location_name: "Name"))
    GetEventDataStoreResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreStatus, location_name: "Status"))
    GetEventDataStoreResponse.add_member(:advanced_event_selectors, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvancedEventSelectors, location_name: "AdvancedEventSelectors"))
    GetEventDataStoreResponse.add_member(:multi_region_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "MultiRegionEnabled"))
    GetEventDataStoreResponse.add_member(:organization_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "OrganizationEnabled"))
    GetEventDataStoreResponse.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriod, location_name: "RetentionPeriod"))
    GetEventDataStoreResponse.add_member(:termination_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: TerminationProtectionEnabled, location_name: "TerminationProtectionEnabled"))
    GetEventDataStoreResponse.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "CreatedTimestamp"))
    GetEventDataStoreResponse.add_member(:updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "UpdatedTimestamp"))
    GetEventDataStoreResponse.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreKmsKeyId, location_name: "KmsKeyId"))
    GetEventDataStoreResponse.add_member(:billing_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingMode, location_name: "BillingMode"))
    GetEventDataStoreResponse.add_member(:federation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: FederationStatus, location_name: "FederationStatus"))
    GetEventDataStoreResponse.add_member(:federation_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FederationRoleArn, location_name: "FederationRoleArn"))
    GetEventDataStoreResponse.add_member(:partition_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionKeyList, location_name: "PartitionKeys"))
    GetEventDataStoreResponse.type = Types::GetEventDataStoreResponse
    GetEventSelectorsRequest.add_member(:trail_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "TrailName", traits: {"smithy.api#required" => {}}))
    GetEventSelectorsRequest.type = Types::GetEventSelectorsRequest
    GetEventSelectorsResponse.add_member(:trail_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "TrailARN"))
    GetEventSelectorsResponse.add_member(:event_selectors, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSelectors, location_name: "EventSelectors"))
    GetEventSelectorsResponse.add_member(:advanced_event_selectors, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvancedEventSelectors, location_name: "AdvancedEventSelectors"))
    GetEventSelectorsResponse.type = Types::GetEventSelectorsResponse
    GetImportRequest.add_member(:import_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, location_name: "ImportId", traits: {"smithy.api#required" => {}}))
    GetImportRequest.type = Types::GetImportRequest
    GetImportResponse.add_member(:import_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, location_name: "ImportId"))
    GetImportResponse.add_member(:destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportDestinations, location_name: "Destinations"))
    GetImportResponse.add_member(:import_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportSource, location_name: "ImportSource"))
    GetImportResponse.add_member(:start_event_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "StartEventTime"))
    GetImportResponse.add_member(:end_event_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "EndEventTime"))
    GetImportResponse.add_member(:import_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportStatus, location_name: "ImportStatus"))
    GetImportResponse.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "CreatedTimestamp"))
    GetImportResponse.add_member(:updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "UpdatedTimestamp"))
    GetImportResponse.add_member(:import_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportStatistics, location_name: "ImportStatistics"))
    GetImportResponse.type = Types::GetImportResponse
    GetInsightSelectorsRequest.add_member(:trail_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "TrailName"))
    GetInsightSelectorsRequest.add_member(:event_data_store, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreArn, location_name: "EventDataStore"))
    GetInsightSelectorsRequest.type = Types::GetInsightSelectorsRequest
    GetInsightSelectorsResponse.add_member(:trail_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "TrailARN"))
    GetInsightSelectorsResponse.add_member(:insight_selectors, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightSelectors, location_name: "InsightSelectors"))
    GetInsightSelectorsResponse.add_member(:event_data_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreArn, location_name: "EventDataStoreArn"))
    GetInsightSelectorsResponse.add_member(:insights_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreArn, location_name: "InsightsDestination"))
    GetInsightSelectorsResponse.type = Types::GetInsightSelectorsResponse
    GetQueryResultsRequest.add_member(:event_data_store, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreArn, location_name: "EventDataStore", traits: {"smithy.api#deprecated" => {"message" => "EventDataStore is no longer required by GetQueryResultsRequest"}}))
    GetQueryResultsRequest.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, location_name: "QueryId", traits: {"smithy.api#required" => {}}))
    GetQueryResultsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    GetQueryResultsRequest.add_member(:max_query_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxQueryResults, location_name: "MaxQueryResults"))
    GetQueryResultsRequest.add_member(:event_data_store_owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "EventDataStoreOwnerAccountId"))
    GetQueryResultsRequest.type = Types::GetQueryResultsRequest
    GetQueryResultsResponse.add_member(:query_status, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStatus, location_name: "QueryStatus"))
    GetQueryResultsResponse.add_member(:query_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStatistics, location_name: "QueryStatistics"))
    GetQueryResultsResponse.add_member(:query_result_rows, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryResultRows, location_name: "QueryResultRows"))
    GetQueryResultsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    GetQueryResultsResponse.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "ErrorMessage"))
    GetQueryResultsResponse.type = Types::GetQueryResultsResponse
    GetResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    GetResourcePolicyRequest.type = Types::GetResourcePolicyRequest
    GetResourcePolicyResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "ResourceArn"))
    GetResourcePolicyResponse.add_member(:resource_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, location_name: "ResourcePolicy"))
    GetResourcePolicyResponse.add_member(:delegated_admin_resource_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, location_name: "DelegatedAdminResourcePolicy"))
    GetResourcePolicyResponse.type = Types::GetResourcePolicyResponse
    GetTrailRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Name", traits: {"smithy.api#required" => {}}))
    GetTrailRequest.type = Types::GetTrailRequest
    GetTrailResponse.add_member(:trail, ::Smithy::Schema::Shapes::MemberShape.new(target: Trail, location_name: "Trail"))
    GetTrailResponse.type = Types::GetTrailResponse
    GetTrailStatusRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Name", traits: {"smithy.api#required" => {}}))
    GetTrailStatusRequest.type = Types::GetTrailStatusRequest
    GetTrailStatusResponse.add_member(:is_logging, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "IsLogging"))
    GetTrailStatusResponse.add_member(:latest_delivery_error, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "LatestDeliveryError"))
    GetTrailStatusResponse.add_member(:latest_notification_error, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "LatestNotificationError"))
    GetTrailStatusResponse.add_member(:latest_delivery_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "LatestDeliveryTime"))
    GetTrailStatusResponse.add_member(:latest_notification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "LatestNotificationTime"))
    GetTrailStatusResponse.add_member(:start_logging_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "StartLoggingTime"))
    GetTrailStatusResponse.add_member(:stop_logging_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "StopLoggingTime"))
    GetTrailStatusResponse.add_member(:latest_cloud_watch_logs_delivery_error, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "LatestCloudWatchLogsDeliveryError"))
    GetTrailStatusResponse.add_member(:latest_cloud_watch_logs_delivery_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "LatestCloudWatchLogsDeliveryTime"))
    GetTrailStatusResponse.add_member(:latest_digest_delivery_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "LatestDigestDeliveryTime"))
    GetTrailStatusResponse.add_member(:latest_digest_delivery_error, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "LatestDigestDeliveryError"))
    GetTrailStatusResponse.add_member(:latest_delivery_attempt_time, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "LatestDeliveryAttemptTime"))
    GetTrailStatusResponse.add_member(:latest_notification_attempt_time, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "LatestNotificationAttemptTime"))
    GetTrailStatusResponse.add_member(:latest_notification_attempt_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "LatestNotificationAttemptSucceeded"))
    GetTrailStatusResponse.add_member(:latest_delivery_attempt_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "LatestDeliveryAttemptSucceeded"))
    GetTrailStatusResponse.add_member(:time_logging_started, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "TimeLoggingStarted"))
    GetTrailStatusResponse.add_member(:time_logging_stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "TimeLoggingStopped"))
    GetTrailStatusResponse.type = Types::GetTrailStatusResponse
    ImportDestinations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreArn)
    ImportFailureList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ImportFailureListItem)
    ImportFailureListItem.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Location"))
    ImportFailureListItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportFailureStatus, location_name: "Status"))
    ImportFailureListItem.add_member(:error_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ErrorType"))
    ImportFailureListItem.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ErrorMessage"))
    ImportFailureListItem.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "LastUpdatedTime"))
    ImportFailureListItem.type = Types::ImportFailureListItem
    ImportFailureStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ImportFailureStatus.add_member(:retry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RETRY", traits: {"smithy.api#enumValue" => "RETRY"}))
    ImportFailureStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ImportNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    ImportNotFoundException.type = Types::ImportNotFoundException
    ImportSource.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ImportSource, location_name: "S3", traits: {"smithy.api#required" => {}}))
    ImportSource.type = Types::ImportSource
    ImportStatistics.add_member(:prefixes_found, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, location_name: "PrefixesFound"))
    ImportStatistics.add_member(:prefixes_completed, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, location_name: "PrefixesCompleted"))
    ImportStatistics.add_member(:files_completed, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, location_name: "FilesCompleted"))
    ImportStatistics.add_member(:events_completed, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, location_name: "EventsCompleted"))
    ImportStatistics.add_member(:failed_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, location_name: "FailedEntries"))
    ImportStatistics.type = Types::ImportStatistics
    ImportStatus.add_member(:initializing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INITIALIZING", traits: {"smithy.api#enumValue" => "INITIALIZING"}))
    ImportStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ImportStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ImportStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    ImportStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ImportsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ImportsListItem)
    ImportsListItem.add_member(:import_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, location_name: "ImportId"))
    ImportsListItem.add_member(:import_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportStatus, location_name: "ImportStatus"))
    ImportsListItem.add_member(:destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportDestinations, location_name: "Destinations"))
    ImportsListItem.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "CreatedTimestamp"))
    ImportsListItem.add_member(:updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "UpdatedTimestamp"))
    ImportsListItem.type = Types::ImportsListItem
    InactiveEventDataStoreException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InactiveEventDataStoreException.type = Types::InactiveEventDataStoreException
    InactiveQueryException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InactiveQueryException.type = Types::InactiveQueryException
    IngestionStatus.add_member(:latest_ingestion_success_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "LatestIngestionSuccessTime"))
    IngestionStatus.add_member(:latest_ingestion_success_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, location_name: "LatestIngestionSuccessEventID"))
    IngestionStatus.add_member(:latest_ingestion_error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "LatestIngestionErrorCode"))
    IngestionStatus.add_member(:latest_ingestion_attempt_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "LatestIngestionAttemptTime"))
    IngestionStatus.add_member(:latest_ingestion_attempt_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, location_name: "LatestIngestionAttemptEventID"))
    IngestionStatus.type = Types::IngestionStatus
    InsightNotEnabledException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InsightNotEnabledException.type = Types::InsightNotEnabledException
    InsightSelector.add_member(:insight_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightType, location_name: "InsightType"))
    InsightSelector.type = Types::InsightSelector
    InsightSelectors.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InsightSelector)
    InsightType.add_member(:api_call_rate_insight, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ApiCallRateInsight", traits: {"smithy.api#enumValue" => "ApiCallRateInsight"}))
    InsightType.add_member(:api_error_rate_insight, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ApiErrorRateInsight", traits: {"smithy.api#enumValue" => "ApiErrorRateInsight"}))
    InsightsMetricDataType.add_member(:fill_with_zeros, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FILL_WITH_ZEROS", traits: {"smithy.api#enumValue" => "FillWithZeros"}))
    InsightsMetricDataType.add_member(:non_zero_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NON_ZERO_DATA", traits: {"smithy.api#enumValue" => "NonZeroData"}))
    InsightsMetricValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Double)
    InsufficientDependencyServiceAccessPermissionException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InsufficientDependencyServiceAccessPermissionException.type = Types::InsufficientDependencyServiceAccessPermissionException
    InsufficientEncryptionPolicyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InsufficientEncryptionPolicyException.type = Types::InsufficientEncryptionPolicyException
    InsufficientIAMAccessPermissionException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InsufficientIAMAccessPermissionException.type = Types::InsufficientIAMAccessPermissionException
    InsufficientS3BucketPolicyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InsufficientS3BucketPolicyException.type = Types::InsufficientS3BucketPolicyException
    InsufficientSnsTopicPolicyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InsufficientSnsTopicPolicyException.type = Types::InsufficientSnsTopicPolicyException
    InvalidCloudWatchLogsLogGroupArnException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InvalidCloudWatchLogsLogGroupArnException.type = Types::InvalidCloudWatchLogsLogGroupArnException
    InvalidCloudWatchLogsRoleArnException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InvalidCloudWatchLogsRoleArnException.type = Types::InvalidCloudWatchLogsRoleArnException
    InvalidDateRangeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InvalidDateRangeException.type = Types::InvalidDateRangeException
    InvalidEventCategoryException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InvalidEventCategoryException.type = Types::InvalidEventCategoryException
    InvalidEventDataStoreCategoryException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InvalidEventDataStoreCategoryException.type = Types::InvalidEventDataStoreCategoryException
    InvalidEventDataStoreStatusException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InvalidEventDataStoreStatusException.type = Types::InvalidEventDataStoreStatusException
    InvalidEventSelectorsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InvalidEventSelectorsException.type = Types::InvalidEventSelectorsException
    InvalidHomeRegionException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InvalidHomeRegionException.type = Types::InvalidHomeRegionException
    InvalidImportSourceException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InvalidImportSourceException.type = Types::InvalidImportSourceException
    InvalidInsightSelectorsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InvalidInsightSelectorsException.type = Types::InvalidInsightSelectorsException
    InvalidKmsKeyIdException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InvalidKmsKeyIdException.type = Types::InvalidKmsKeyIdException
    InvalidLookupAttributesException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InvalidLookupAttributesException.type = Types::InvalidLookupAttributesException
    InvalidMaxResultsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InvalidMaxResultsException.type = Types::InvalidMaxResultsException
    InvalidNextTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    InvalidParameterCombinationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InvalidParameterCombinationException.type = Types::InvalidParameterCombinationException
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InvalidParameterException.type = Types::InvalidParameterException
    InvalidQueryStatementException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InvalidQueryStatementException.type = Types::InvalidQueryStatementException
    InvalidQueryStatusException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InvalidQueryStatusException.type = Types::InvalidQueryStatusException
    InvalidS3BucketNameException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InvalidS3BucketNameException.type = Types::InvalidS3BucketNameException
    InvalidS3PrefixException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InvalidS3PrefixException.type = Types::InvalidS3PrefixException
    InvalidSnsTopicNameException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InvalidSnsTopicNameException.type = Types::InvalidSnsTopicNameException
    InvalidSourceException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InvalidSourceException.type = Types::InvalidSourceException
    InvalidTagParameterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InvalidTagParameterException.type = Types::InvalidTagParameterException
    InvalidTimeRangeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InvalidTimeRangeException.type = Types::InvalidTimeRangeException
    InvalidTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InvalidTokenException.type = Types::InvalidTokenException
    InvalidTrailNameException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InvalidTrailNameException.type = Types::InvalidTrailNameException
    KmsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    KmsException.type = Types::KmsException
    KmsKeyDisabledException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    KmsKeyDisabledException.type = Types::KmsKeyDisabledException
    KmsKeyNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    KmsKeyNotFoundException.type = Types::KmsKeyNotFoundException
    ListChannelsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListChannelsMaxResultsCount, location_name: "MaxResults"))
    ListChannelsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    ListChannelsRequest.type = Types::ListChannelsRequest
    ListChannelsResponse.add_member(:channels, ::Smithy::Schema::Shapes::MemberShape.new(target: Channels, location_name: "Channels"))
    ListChannelsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    ListChannelsResponse.type = Types::ListChannelsResponse
    ListDashboardsRequest.add_member(:name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardName, location_name: "NamePrefix"))
    ListDashboardsRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardType, location_name: "Type"))
    ListDashboardsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    ListDashboardsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListDashboardsMaxResultsCount, location_name: "MaxResults"))
    ListDashboardsRequest.type = Types::ListDashboardsRequest
    ListDashboardsResponse.add_member(:dashboards, ::Smithy::Schema::Shapes::MemberShape.new(target: Dashboards, location_name: "Dashboards"))
    ListDashboardsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    ListDashboardsResponse.type = Types::ListDashboardsResponse
    ListEventDataStoresRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    ListEventDataStoresRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListEventDataStoresMaxResultsCount, location_name: "MaxResults"))
    ListEventDataStoresRequest.type = Types::ListEventDataStoresRequest
    ListEventDataStoresResponse.add_member(:event_data_stores, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStores, location_name: "EventDataStores"))
    ListEventDataStoresResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    ListEventDataStoresResponse.type = Types::ListEventDataStoresResponse
    ListImportFailuresRequest.add_member(:import_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, location_name: "ImportId", traits: {"smithy.api#required" => {}}))
    ListImportFailuresRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListImportFailuresMaxResultsCount, location_name: "MaxResults"))
    ListImportFailuresRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    ListImportFailuresRequest.type = Types::ListImportFailuresRequest
    ListImportFailuresResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportFailureList, location_name: "Failures"))
    ListImportFailuresResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    ListImportFailuresResponse.type = Types::ListImportFailuresResponse
    ListImportsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListImportsMaxResultsCount, location_name: "MaxResults"))
    ListImportsRequest.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreArn, location_name: "Destination"))
    ListImportsRequest.add_member(:import_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportStatus, location_name: "ImportStatus"))
    ListImportsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    ListImportsRequest.type = Types::ListImportsRequest
    ListImportsResponse.add_member(:imports, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportsList, location_name: "Imports"))
    ListImportsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    ListImportsResponse.type = Types::ListImportsResponse
    ListInsightsMetricDataRequest.add_member(:event_source, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSource, location_name: "EventSource", traits: {"smithy.api#required" => {}}))
    ListInsightsMetricDataRequest.add_member(:event_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventName, location_name: "EventName", traits: {"smithy.api#required" => {}}))
    ListInsightsMetricDataRequest.add_member(:insight_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightType, location_name: "InsightType", traits: {"smithy.api#required" => {}}))
    ListInsightsMetricDataRequest.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, location_name: "ErrorCode"))
    ListInsightsMetricDataRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "StartTime"))
    ListInsightsMetricDataRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "EndTime"))
    ListInsightsMetricDataRequest.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightsMetricPeriod, location_name: "Period"))
    ListInsightsMetricDataRequest.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightsMetricDataType, location_name: "DataType"))
    ListInsightsMetricDataRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightsMetricMaxResults, location_name: "MaxResults"))
    ListInsightsMetricDataRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightsMetricNextToken, location_name: "NextToken"))
    ListInsightsMetricDataRequest.type = Types::ListInsightsMetricDataRequest
    ListInsightsMetricDataResponse.add_member(:event_source, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSource, location_name: "EventSource"))
    ListInsightsMetricDataResponse.add_member(:event_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventName, location_name: "EventName"))
    ListInsightsMetricDataResponse.add_member(:insight_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightType, location_name: "InsightType"))
    ListInsightsMetricDataResponse.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, location_name: "ErrorCode"))
    ListInsightsMetricDataResponse.add_member(:timestamps, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamps, location_name: "Timestamps"))
    ListInsightsMetricDataResponse.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightsMetricValues, location_name: "Values"))
    ListInsightsMetricDataResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightsMetricNextToken, location_name: "NextToken"))
    ListInsightsMetricDataResponse.type = Types::ListInsightsMetricDataResponse
    ListPublicKeysRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "StartTime"))
    ListPublicKeysRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "EndTime"))
    ListPublicKeysRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    ListPublicKeysRequest.type = Types::ListPublicKeysRequest
    ListPublicKeysResponse.add_member(:public_key_list, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicKeyList, location_name: "PublicKeyList"))
    ListPublicKeysResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    ListPublicKeysResponse.type = Types::ListPublicKeysResponse
    ListQueriesRequest.add_member(:event_data_store, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreArn, location_name: "EventDataStore", traits: {"smithy.api#required" => {}}))
    ListQueriesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    ListQueriesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListQueriesMaxResultsCount, location_name: "MaxResults"))
    ListQueriesRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "StartTime"))
    ListQueriesRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "EndTime"))
    ListQueriesRequest.add_member(:query_status, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStatus, location_name: "QueryStatus"))
    ListQueriesRequest.type = Types::ListQueriesRequest
    ListQueriesResponse.add_member(:queries, ::Smithy::Schema::Shapes::MemberShape.new(target: Queries, location_name: "Queries"))
    ListQueriesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    ListQueriesResponse.type = Types::ListQueriesResponse
    ListTagsRequest.add_member(:resource_id_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdList, location_name: "ResourceIdList", traits: {"smithy.api#required" => {}}))
    ListTagsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    ListTagsRequest.type = Types::ListTagsRequest
    ListTagsResponse.add_member(:resource_tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagList, location_name: "ResourceTagList"))
    ListTagsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    ListTagsResponse.type = Types::ListTagsResponse
    ListTrailsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    ListTrailsRequest.type = Types::ListTrailsRequest
    ListTrailsResponse.add_member(:trails, ::Smithy::Schema::Shapes::MemberShape.new(target: Trails, location_name: "Trails"))
    ListTrailsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    ListTrailsResponse.type = Types::ListTrailsResponse
    LookupAttribute.add_member(:attribute_key, ::Smithy::Schema::Shapes::MemberShape.new(target: LookupAttributeKey, location_name: "AttributeKey", traits: {"smithy.api#required" => {}}))
    LookupAttribute.add_member(:attribute_value, ::Smithy::Schema::Shapes::MemberShape.new(target: LookupAttributeValue, location_name: "AttributeValue", traits: {"smithy.api#required" => {}}))
    LookupAttribute.type = Types::LookupAttribute
    LookupAttributeKey.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EVENT_ID", traits: {"smithy.api#enumValue" => "EventId"}))
    LookupAttributeKey.add_member(:event_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EVENT_NAME", traits: {"smithy.api#enumValue" => "EventName"}))
    LookupAttributeKey.add_member(:read_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "READ_ONLY", traits: {"smithy.api#enumValue" => "ReadOnly"}))
    LookupAttributeKey.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "USERNAME", traits: {"smithy.api#enumValue" => "Username"}))
    LookupAttributeKey.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESOURCE_TYPE", traits: {"smithy.api#enumValue" => "ResourceType"}))
    LookupAttributeKey.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESOURCE_NAME", traits: {"smithy.api#enumValue" => "ResourceName"}))
    LookupAttributeKey.add_member(:event_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EVENT_SOURCE", traits: {"smithy.api#enumValue" => "EventSource"}))
    LookupAttributeKey.add_member(:access_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACCESS_KEY_ID", traits: {"smithy.api#enumValue" => "AccessKeyId"}))
    LookupAttributesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LookupAttribute)
    LookupEventsRequest.add_member(:lookup_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: LookupAttributesList, location_name: "LookupAttributes"))
    LookupEventsRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "StartTime"))
    LookupEventsRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "EndTime"))
    LookupEventsRequest.add_member(:event_category, ::Smithy::Schema::Shapes::MemberShape.new(target: EventCategory, location_name: "EventCategory"))
    LookupEventsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults"))
    LookupEventsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    LookupEventsRequest.type = Types::LookupEventsRequest
    LookupEventsResponse.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: EventsList, location_name: "Events"))
    LookupEventsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    LookupEventsResponse.type = Types::LookupEventsResponse
    MaxConcurrentQueriesException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    MaxConcurrentQueriesException.type = Types::MaxConcurrentQueriesException
    MaxEventSize.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Standard", traits: {"smithy.api#enumValue" => "Standard"}))
    MaxEventSize.add_member(:large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Large", traits: {"smithy.api#enumValue" => "Large"}))
    MaximumNumberOfTrailsExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    MaximumNumberOfTrailsExceededException.type = Types::MaximumNumberOfTrailsExceededException
    NoManagementAccountSLRExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    NoManagementAccountSLRExistsException.type = Types::NoManagementAccountSLRExistsException
    NotOrganizationManagementAccountException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    NotOrganizationManagementAccountException.type = Types::NotOrganizationManagementAccountException
    NotOrganizationMasterAccountException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    NotOrganizationMasterAccountException.type = Types::NotOrganizationMasterAccountException
    OperationNotPermittedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    OperationNotPermittedException.type = Types::OperationNotPermittedException
    Operator.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OperatorValue)
    OperatorTargetList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OperatorTargetListMember)
    OrganizationNotInAllFeaturesModeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    OrganizationNotInAllFeaturesModeException.type = Types::OrganizationNotInAllFeaturesModeException
    OrganizationsNotInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    OrganizationsNotInUseException.type = Types::OrganizationsNotInUseException
    PartitionKey.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionKeyName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    PartitionKey.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionKeyType, location_name: "Type", traits: {"smithy.api#required" => {}}))
    PartitionKey.type = Types::PartitionKey
    PartitionKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionKey)
    PublicKey.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ByteBuffer, location_name: "Value"))
    PublicKey.add_member(:validity_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "ValidityStartTime"))
    PublicKey.add_member(:validity_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "ValidityEndTime"))
    PublicKey.add_member(:fingerprint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Fingerprint"))
    PublicKey.type = Types::PublicKey
    PublicKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PublicKey)
    PutEventConfigurationRequest.add_member(:event_data_store, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "EventDataStore"))
    PutEventConfigurationRequest.add_member(:max_event_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxEventSize, location_name: "MaxEventSize", traits: {"smithy.api#required" => {}}))
    PutEventConfigurationRequest.add_member(:context_key_selectors, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextKeySelectors, location_name: "ContextKeySelectors", traits: {"smithy.api#required" => {}}))
    PutEventConfigurationRequest.type = Types::PutEventConfigurationRequest
    PutEventConfigurationResponse.add_member(:event_data_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreArn, location_name: "EventDataStoreArn"))
    PutEventConfigurationResponse.add_member(:max_event_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxEventSize, location_name: "MaxEventSize"))
    PutEventConfigurationResponse.add_member(:context_key_selectors, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextKeySelectors, location_name: "ContextKeySelectors"))
    PutEventConfigurationResponse.type = Types::PutEventConfigurationResponse
    PutEventSelectorsRequest.add_member(:trail_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "TrailName", traits: {"smithy.api#required" => {}}))
    PutEventSelectorsRequest.add_member(:event_selectors, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSelectors, location_name: "EventSelectors"))
    PutEventSelectorsRequest.add_member(:advanced_event_selectors, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvancedEventSelectors, location_name: "AdvancedEventSelectors"))
    PutEventSelectorsRequest.type = Types::PutEventSelectorsRequest
    PutEventSelectorsResponse.add_member(:trail_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "TrailARN"))
    PutEventSelectorsResponse.add_member(:event_selectors, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSelectors, location_name: "EventSelectors"))
    PutEventSelectorsResponse.add_member(:advanced_event_selectors, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvancedEventSelectors, location_name: "AdvancedEventSelectors"))
    PutEventSelectorsResponse.type = Types::PutEventSelectorsResponse
    PutInsightSelectorsRequest.add_member(:trail_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "TrailName"))
    PutInsightSelectorsRequest.add_member(:insight_selectors, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightSelectors, location_name: "InsightSelectors", traits: {"smithy.api#required" => {}}))
    PutInsightSelectorsRequest.add_member(:event_data_store, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreArn, location_name: "EventDataStore"))
    PutInsightSelectorsRequest.add_member(:insights_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreArn, location_name: "InsightsDestination"))
    PutInsightSelectorsRequest.type = Types::PutInsightSelectorsRequest
    PutInsightSelectorsResponse.add_member(:trail_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "TrailARN"))
    PutInsightSelectorsResponse.add_member(:insight_selectors, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightSelectors, location_name: "InsightSelectors"))
    PutInsightSelectorsResponse.add_member(:event_data_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreArn, location_name: "EventDataStoreArn"))
    PutInsightSelectorsResponse.add_member(:insights_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreArn, location_name: "InsightsDestination"))
    PutInsightSelectorsResponse.type = Types::PutInsightSelectorsResponse
    PutResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:resource_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, location_name: "ResourcePolicy", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyRequest.type = Types::PutResourcePolicyRequest
    PutResourcePolicyResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "ResourceArn"))
    PutResourcePolicyResponse.add_member(:resource_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, location_name: "ResourcePolicy"))
    PutResourcePolicyResponse.add_member(:delegated_admin_resource_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, location_name: "DelegatedAdminResourcePolicy"))
    PutResourcePolicyResponse.type = Types::PutResourcePolicyResponse
    Queries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Query)
    Query.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, location_name: "QueryId"))
    Query.add_member(:query_status, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStatus, location_name: "QueryStatus"))
    Query.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "CreationTime"))
    Query.type = Types::Query
    QueryIdNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    QueryIdNotFoundException.type = Types::QueryIdNotFoundException
    QueryParameterValues.key = ::Smithy::Schema::Shapes::MemberShape.new(target: QueryParameterKey)
    QueryParameterValues.value = ::Smithy::Schema::Shapes::MemberShape.new(target: QueryParameterValue)
    QueryParameters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: QueryParameter)
    QueryResultColumn.key = ::Smithy::Schema::Shapes::MemberShape.new(target: QueryResultKey)
    QueryResultColumn.value = ::Smithy::Schema::Shapes::MemberShape.new(target: QueryResultValue)
    QueryResultRow.member = ::Smithy::Schema::Shapes::MemberShape.new(target: QueryResultColumn)
    QueryResultRows.member = ::Smithy::Schema::Shapes::MemberShape.new(target: QueryResultRow)
    QueryStatistics.add_member(:results_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "ResultsCount"))
    QueryStatistics.add_member(:total_results_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "TotalResultsCount"))
    QueryStatistics.add_member(:bytes_scanned, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, location_name: "BytesScanned"))
    QueryStatistics.type = Types::QueryStatistics
    QueryStatisticsForDescribeQuery.add_member(:events_matched, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, location_name: "EventsMatched"))
    QueryStatisticsForDescribeQuery.add_member(:events_scanned, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, location_name: "EventsScanned"))
    QueryStatisticsForDescribeQuery.add_member(:bytes_scanned, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, location_name: "BytesScanned"))
    QueryStatisticsForDescribeQuery.add_member(:execution_time_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "ExecutionTimeInMillis"))
    QueryStatisticsForDescribeQuery.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "CreationTime"))
    QueryStatisticsForDescribeQuery.type = Types::QueryStatisticsForDescribeQuery
    QueryStatus.add_member(:queued, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "QUEUED", traits: {"smithy.api#enumValue" => "QUEUED"}))
    QueryStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    QueryStatus.add_member(:finished, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FINISHED", traits: {"smithy.api#enumValue" => "FINISHED"}))
    QueryStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    QueryStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    QueryStatus.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    ReadWriteType.add_member(:read_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ReadOnly", traits: {"smithy.api#enumValue" => "ReadOnly"}))
    ReadWriteType.add_member(:write_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WriteOnly", traits: {"smithy.api#enumValue" => "WriteOnly"}))
    ReadWriteType.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "All", traits: {"smithy.api#enumValue" => "All"}))
    RefreshSchedule.add_member(:frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshScheduleFrequency, location_name: "Frequency"))
    RefreshSchedule.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshScheduleStatus, location_name: "Status"))
    RefreshSchedule.add_member(:time_of_day, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeOfDay, location_name: "TimeOfDay"))
    RefreshSchedule.type = Types::RefreshSchedule
    RefreshScheduleFrequency.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshScheduleFrequencyUnit, location_name: "Unit"))
    RefreshScheduleFrequency.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshScheduleFrequencyValue, location_name: "Value"))
    RefreshScheduleFrequency.type = Types::RefreshScheduleFrequency
    RefreshScheduleFrequencyUnit.add_member(:hours, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HOURS", traits: {"smithy.api#enumValue" => "HOURS"}))
    RefreshScheduleFrequencyUnit.add_member(:days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DAYS", traits: {"smithy.api#enumValue" => "DAYS"}))
    RefreshScheduleStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    RefreshScheduleStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    RegisterOrganizationDelegatedAdminRequest.add_member(:member_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "MemberAccountId", traits: {"smithy.api#required" => {}}))
    RegisterOrganizationDelegatedAdminRequest.type = Types::RegisterOrganizationDelegatedAdminRequest
    RegisterOrganizationDelegatedAdminResponse.type = Types::RegisterOrganizationDelegatedAdminResponse
    RemoveTagsRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    RemoveTagsRequest.add_member(:tags_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsList, location_name: "TagsList", traits: {"smithy.api#required" => {}}))
    RemoveTagsRequest.type = Types::RemoveTagsRequest
    RemoveTagsResponse.type = Types::RemoveTagsResponse
    RequestWidget.add_member(:query_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStatement, location_name: "QueryStatement", traits: {"smithy.api#required" => {}}))
    RequestWidget.add_member(:query_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryParameters, location_name: "QueryParameters"))
    RequestWidget.add_member(:view_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewPropertiesMap, location_name: "ViewProperties", traits: {"smithy.api#required" => {}}))
    RequestWidget.type = Types::RequestWidget
    RequestWidgetList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RequestWidget)
    Resource.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ResourceType"))
    Resource.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ResourceName"))
    Resource.type = Types::Resource
    ResourceARNNotValidException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    ResourceARNNotValidException.type = Types::ResourceARNNotValidException
    ResourceIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    ResourceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Resource)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourcePolicyNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    ResourcePolicyNotFoundException.type = Types::ResourcePolicyNotFoundException
    ResourcePolicyNotValidException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    ResourcePolicyNotValidException.type = Types::ResourcePolicyNotValidException
    ResourceTag.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ResourceId"))
    ResourceTag.add_member(:tags_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsList, location_name: "TagsList"))
    ResourceTag.type = Types::ResourceTag
    ResourceTagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTag)
    ResourceTypeNotSupportedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    ResourceTypeNotSupportedException.type = Types::ResourceTypeNotSupportedException
    RestoreEventDataStoreRequest.add_member(:event_data_store, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreArn, location_name: "EventDataStore", traits: {"smithy.api#required" => {}}))
    RestoreEventDataStoreRequest.type = Types::RestoreEventDataStoreRequest
    RestoreEventDataStoreResponse.add_member(:event_data_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreArn, location_name: "EventDataStoreArn"))
    RestoreEventDataStoreResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreName, location_name: "Name"))
    RestoreEventDataStoreResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreStatus, location_name: "Status"))
    RestoreEventDataStoreResponse.add_member(:advanced_event_selectors, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvancedEventSelectors, location_name: "AdvancedEventSelectors"))
    RestoreEventDataStoreResponse.add_member(:multi_region_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "MultiRegionEnabled"))
    RestoreEventDataStoreResponse.add_member(:organization_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "OrganizationEnabled"))
    RestoreEventDataStoreResponse.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriod, location_name: "RetentionPeriod"))
    RestoreEventDataStoreResponse.add_member(:termination_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: TerminationProtectionEnabled, location_name: "TerminationProtectionEnabled"))
    RestoreEventDataStoreResponse.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "CreatedTimestamp"))
    RestoreEventDataStoreResponse.add_member(:updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "UpdatedTimestamp"))
    RestoreEventDataStoreResponse.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreKmsKeyId, location_name: "KmsKeyId"))
    RestoreEventDataStoreResponse.add_member(:billing_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingMode, location_name: "BillingMode"))
    RestoreEventDataStoreResponse.type = Types::RestoreEventDataStoreResponse
    S3BucketDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    S3BucketDoesNotExistException.type = Types::S3BucketDoesNotExistException
    S3ImportSource.add_member(:s3_location_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "S3LocationUri", traits: {"smithy.api#required" => {}}))
    S3ImportSource.add_member(:s3_bucket_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "S3BucketRegion", traits: {"smithy.api#required" => {}}))
    S3ImportSource.add_member(:s3_bucket_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "S3BucketAccessRoleArn", traits: {"smithy.api#required" => {}}))
    S3ImportSource.type = Types::S3ImportSource
    SearchSampleQueriesRequest.add_member(:search_phrase, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchSampleQueriesSearchPhrase, location_name: "SearchPhrase", traits: {"smithy.api#required" => {}}))
    SearchSampleQueriesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchSampleQueriesMaxResults, location_name: "MaxResults"))
    SearchSampleQueriesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    SearchSampleQueriesRequest.type = Types::SearchSampleQueriesRequest
    SearchSampleQueriesResponse.add_member(:search_results, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchSampleQueriesSearchResults, location_name: "SearchResults"))
    SearchSampleQueriesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    SearchSampleQueriesResponse.type = Types::SearchSampleQueriesResponse
    SearchSampleQueriesSearchResult.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleQueryName, location_name: "Name"))
    SearchSampleQueriesSearchResult.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleQueryDescription, location_name: "Description"))
    SearchSampleQueriesSearchResult.add_member(:sql, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleQuerySQL, location_name: "SQL"))
    SearchSampleQueriesSearchResult.add_member(:relevance, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleQueryRelevance, location_name: "Relevance", traits: {"smithy.api#default" => 0}))
    SearchSampleQueriesSearchResult.type = Types::SearchSampleQueriesSearchResult
    SearchSampleQueriesSearchResults.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SearchSampleQueriesSearchResult)
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SourceConfig.add_member(:apply_to_all_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ApplyToAllRegions"))
    SourceConfig.add_member(:advanced_event_selectors, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvancedEventSelectors, location_name: "AdvancedEventSelectors"))
    SourceConfig.type = Types::SourceConfig
    StartDashboardRefreshRequest.add_member(:dashboard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardArn, location_name: "DashboardId", traits: {"smithy.api#required" => {}}))
    StartDashboardRefreshRequest.add_member(:query_parameter_values, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryParameterValues, location_name: "QueryParameterValues"))
    StartDashboardRefreshRequest.type = Types::StartDashboardRefreshRequest
    StartDashboardRefreshResponse.add_member(:refresh_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshId, location_name: "RefreshId"))
    StartDashboardRefreshResponse.type = Types::StartDashboardRefreshResponse
    StartEventDataStoreIngestionRequest.add_member(:event_data_store, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreArn, location_name: "EventDataStore", traits: {"smithy.api#required" => {}}))
    StartEventDataStoreIngestionRequest.type = Types::StartEventDataStoreIngestionRequest
    StartEventDataStoreIngestionResponse.type = Types::StartEventDataStoreIngestionResponse
    StartImportRequest.add_member(:destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportDestinations, location_name: "Destinations"))
    StartImportRequest.add_member(:import_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportSource, location_name: "ImportSource"))
    StartImportRequest.add_member(:start_event_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "StartEventTime"))
    StartImportRequest.add_member(:end_event_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "EndEventTime"))
    StartImportRequest.add_member(:import_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, location_name: "ImportId"))
    StartImportRequest.type = Types::StartImportRequest
    StartImportResponse.add_member(:import_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, location_name: "ImportId"))
    StartImportResponse.add_member(:destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportDestinations, location_name: "Destinations"))
    StartImportResponse.add_member(:import_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportSource, location_name: "ImportSource"))
    StartImportResponse.add_member(:start_event_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "StartEventTime"))
    StartImportResponse.add_member(:end_event_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "EndEventTime"))
    StartImportResponse.add_member(:import_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportStatus, location_name: "ImportStatus"))
    StartImportResponse.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "CreatedTimestamp"))
    StartImportResponse.add_member(:updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "UpdatedTimestamp"))
    StartImportResponse.type = Types::StartImportResponse
    StartLoggingRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Name", traits: {"smithy.api#required" => {}}))
    StartLoggingRequest.type = Types::StartLoggingRequest
    StartLoggingResponse.type = Types::StartLoggingResponse
    StartQueryRequest.add_member(:query_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStatement, location_name: "QueryStatement"))
    StartQueryRequest.add_member(:delivery_s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryS3Uri, location_name: "DeliveryS3Uri"))
    StartQueryRequest.add_member(:query_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryAlias, location_name: "QueryAlias"))
    StartQueryRequest.add_member(:query_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryParameters, location_name: "QueryParameters"))
    StartQueryRequest.add_member(:event_data_store_owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "EventDataStoreOwnerAccountId"))
    StartQueryRequest.type = Types::StartQueryRequest
    StartQueryResponse.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, location_name: "QueryId"))
    StartQueryResponse.add_member(:event_data_store_owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "EventDataStoreOwnerAccountId"))
    StartQueryResponse.type = Types::StartQueryResponse
    StopEventDataStoreIngestionRequest.add_member(:event_data_store, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreArn, location_name: "EventDataStore", traits: {"smithy.api#required" => {}}))
    StopEventDataStoreIngestionRequest.type = Types::StopEventDataStoreIngestionRequest
    StopEventDataStoreIngestionResponse.type = Types::StopEventDataStoreIngestionResponse
    StopImportRequest.add_member(:import_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, location_name: "ImportId", traits: {"smithy.api#required" => {}}))
    StopImportRequest.type = Types::StopImportRequest
    StopImportResponse.add_member(:import_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, location_name: "ImportId"))
    StopImportResponse.add_member(:import_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportSource, location_name: "ImportSource"))
    StopImportResponse.add_member(:destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportDestinations, location_name: "Destinations"))
    StopImportResponse.add_member(:import_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportStatus, location_name: "ImportStatus"))
    StopImportResponse.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "CreatedTimestamp"))
    StopImportResponse.add_member(:updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "UpdatedTimestamp"))
    StopImportResponse.add_member(:start_event_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "StartEventTime"))
    StopImportResponse.add_member(:end_event_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "EndEventTime"))
    StopImportResponse.add_member(:import_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportStatistics, location_name: "ImportStatistics"))
    StopImportResponse.type = Types::StopImportResponse
    StopLoggingRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Name", traits: {"smithy.api#required" => {}}))
    StopLoggingRequest.type = Types::StopLoggingRequest
    StopLoggingResponse.type = Types::StopLoggingResponse
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, location_name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, location_name: "Value"))
    Tag.type = Types::Tag
    TagsLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    TagsLimitExceededException.type = Types::TagsLimitExceededException
    TagsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag)
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    ThrottlingException.type = Types::ThrottlingException
    Timestamps.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Date)
    Trail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Name"))
    Trail.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "S3BucketName"))
    Trail.add_member(:s3_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "S3KeyPrefix"))
    Trail.add_member(:sns_topic_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SnsTopicName", traits: {"smithy.api#deprecated" => {}}))
    Trail.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SnsTopicARN"))
    Trail.add_member(:include_global_service_events, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "IncludeGlobalServiceEvents"))
    Trail.add_member(:is_multi_region_trail, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "IsMultiRegionTrail"))
    Trail.add_member(:home_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "HomeRegion"))
    Trail.add_member(:trail_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "TrailARN"))
    Trail.add_member(:log_file_validation_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "LogFileValidationEnabled"))
    Trail.add_member(:cloud_watch_logs_log_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "CloudWatchLogsLogGroupArn"))
    Trail.add_member(:cloud_watch_logs_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "CloudWatchLogsRoleArn"))
    Trail.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "KmsKeyId"))
    Trail.add_member(:has_custom_event_selectors, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "HasCustomEventSelectors"))
    Trail.add_member(:has_insight_selectors, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "HasInsightSelectors"))
    Trail.add_member(:is_organization_trail, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "IsOrganizationTrail"))
    Trail.type = Types::Trail
    TrailAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    TrailAlreadyExistsException.type = Types::TrailAlreadyExistsException
    TrailInfo.add_member(:trail_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "TrailARN"))
    TrailInfo.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Name"))
    TrailInfo.add_member(:home_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "HomeRegion"))
    TrailInfo.type = Types::TrailInfo
    TrailList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Trail)
    TrailNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    TrailNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    TrailNotFoundException.type = Types::TrailNotFoundException
    TrailNotProvidedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    TrailNotProvidedException.type = Types::TrailNotProvidedException
    Trails.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TrailInfo)
    Type.add_member(:tag_context, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TagContext", traits: {"smithy.api#enumValue" => "TagContext"}))
    Type.add_member(:request_context, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RequestContext", traits: {"smithy.api#enumValue" => "RequestContext"}))
    UnsupportedOperationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    UnsupportedOperationException.type = Types::UnsupportedOperationException
    UpdateChannelRequest.add_member(:channel, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelArn, location_name: "Channel", traits: {"smithy.api#required" => {}}))
    UpdateChannelRequest.add_member(:destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: Destinations, location_name: "Destinations"))
    UpdateChannelRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelName, location_name: "Name"))
    UpdateChannelRequest.type = Types::UpdateChannelRequest
    UpdateChannelResponse.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelArn, location_name: "ChannelArn"))
    UpdateChannelResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelName, location_name: "Name"))
    UpdateChannelResponse.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, location_name: "Source"))
    UpdateChannelResponse.add_member(:destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: Destinations, location_name: "Destinations"))
    UpdateChannelResponse.type = Types::UpdateChannelResponse
    UpdateDashboardRequest.add_member(:dashboard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardArn, location_name: "DashboardId", traits: {"smithy.api#required" => {}}))
    UpdateDashboardRequest.add_member(:widgets, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestWidgetList, location_name: "Widgets"))
    UpdateDashboardRequest.add_member(:refresh_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshSchedule, location_name: "RefreshSchedule"))
    UpdateDashboardRequest.add_member(:termination_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: TerminationProtectionEnabled, location_name: "TerminationProtectionEnabled"))
    UpdateDashboardRequest.type = Types::UpdateDashboardRequest
    UpdateDashboardResponse.add_member(:dashboard_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardArn, location_name: "DashboardArn"))
    UpdateDashboardResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardName, location_name: "Name"))
    UpdateDashboardResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardType, location_name: "Type"))
    UpdateDashboardResponse.add_member(:widgets, ::Smithy::Schema::Shapes::MemberShape.new(target: WidgetList, location_name: "Widgets"))
    UpdateDashboardResponse.add_member(:refresh_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshSchedule, location_name: "RefreshSchedule"))
    UpdateDashboardResponse.add_member(:termination_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: TerminationProtectionEnabled, location_name: "TerminationProtectionEnabled"))
    UpdateDashboardResponse.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "CreatedTimestamp"))
    UpdateDashboardResponse.add_member(:updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "UpdatedTimestamp"))
    UpdateDashboardResponse.type = Types::UpdateDashboardResponse
    UpdateEventDataStoreRequest.add_member(:event_data_store, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreArn, location_name: "EventDataStore", traits: {"smithy.api#required" => {}}))
    UpdateEventDataStoreRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreName, location_name: "Name"))
    UpdateEventDataStoreRequest.add_member(:advanced_event_selectors, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvancedEventSelectors, location_name: "AdvancedEventSelectors"))
    UpdateEventDataStoreRequest.add_member(:multi_region_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "MultiRegionEnabled"))
    UpdateEventDataStoreRequest.add_member(:organization_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "OrganizationEnabled"))
    UpdateEventDataStoreRequest.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriod, location_name: "RetentionPeriod"))
    UpdateEventDataStoreRequest.add_member(:termination_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: TerminationProtectionEnabled, location_name: "TerminationProtectionEnabled"))
    UpdateEventDataStoreRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreKmsKeyId, location_name: "KmsKeyId"))
    UpdateEventDataStoreRequest.add_member(:billing_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingMode, location_name: "BillingMode"))
    UpdateEventDataStoreRequest.type = Types::UpdateEventDataStoreRequest
    UpdateEventDataStoreResponse.add_member(:event_data_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreArn, location_name: "EventDataStoreArn"))
    UpdateEventDataStoreResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreName, location_name: "Name"))
    UpdateEventDataStoreResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreStatus, location_name: "Status"))
    UpdateEventDataStoreResponse.add_member(:advanced_event_selectors, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvancedEventSelectors, location_name: "AdvancedEventSelectors"))
    UpdateEventDataStoreResponse.add_member(:multi_region_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "MultiRegionEnabled"))
    UpdateEventDataStoreResponse.add_member(:organization_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "OrganizationEnabled"))
    UpdateEventDataStoreResponse.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriod, location_name: "RetentionPeriod"))
    UpdateEventDataStoreResponse.add_member(:termination_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: TerminationProtectionEnabled, location_name: "TerminationProtectionEnabled"))
    UpdateEventDataStoreResponse.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "CreatedTimestamp"))
    UpdateEventDataStoreResponse.add_member(:updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, location_name: "UpdatedTimestamp"))
    UpdateEventDataStoreResponse.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDataStoreKmsKeyId, location_name: "KmsKeyId"))
    UpdateEventDataStoreResponse.add_member(:billing_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingMode, location_name: "BillingMode"))
    UpdateEventDataStoreResponse.add_member(:federation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: FederationStatus, location_name: "FederationStatus"))
    UpdateEventDataStoreResponse.add_member(:federation_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FederationRoleArn, location_name: "FederationRoleArn"))
    UpdateEventDataStoreResponse.type = Types::UpdateEventDataStoreResponse
    UpdateTrailRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateTrailRequest.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "S3BucketName"))
    UpdateTrailRequest.add_member(:s3_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "S3KeyPrefix"))
    UpdateTrailRequest.add_member(:sns_topic_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SnsTopicName"))
    UpdateTrailRequest.add_member(:include_global_service_events, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "IncludeGlobalServiceEvents"))
    UpdateTrailRequest.add_member(:is_multi_region_trail, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "IsMultiRegionTrail"))
    UpdateTrailRequest.add_member(:enable_log_file_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "EnableLogFileValidation"))
    UpdateTrailRequest.add_member(:cloud_watch_logs_log_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "CloudWatchLogsLogGroupArn"))
    UpdateTrailRequest.add_member(:cloud_watch_logs_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "CloudWatchLogsRoleArn"))
    UpdateTrailRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "KmsKeyId"))
    UpdateTrailRequest.add_member(:is_organization_trail, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "IsOrganizationTrail"))
    UpdateTrailRequest.type = Types::UpdateTrailRequest
    UpdateTrailResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Name"))
    UpdateTrailResponse.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "S3BucketName"))
    UpdateTrailResponse.add_member(:s3_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "S3KeyPrefix"))
    UpdateTrailResponse.add_member(:sns_topic_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SnsTopicName", traits: {"smithy.api#deprecated" => {}}))
    UpdateTrailResponse.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SnsTopicARN"))
    UpdateTrailResponse.add_member(:include_global_service_events, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "IncludeGlobalServiceEvents"))
    UpdateTrailResponse.add_member(:is_multi_region_trail, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "IsMultiRegionTrail"))
    UpdateTrailResponse.add_member(:trail_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "TrailARN"))
    UpdateTrailResponse.add_member(:log_file_validation_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "LogFileValidationEnabled"))
    UpdateTrailResponse.add_member(:cloud_watch_logs_log_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "CloudWatchLogsLogGroupArn"))
    UpdateTrailResponse.add_member(:cloud_watch_logs_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "CloudWatchLogsRoleArn"))
    UpdateTrailResponse.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "KmsKeyId"))
    UpdateTrailResponse.add_member(:is_organization_trail, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "IsOrganizationTrail"))
    UpdateTrailResponse.type = Types::UpdateTrailResponse
    ViewPropertiesMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ViewPropertiesKey)
    ViewPropertiesMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ViewPropertiesValue)
    Widget.add_member(:query_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryAlias, location_name: "QueryAlias"))
    Widget.add_member(:query_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStatement, location_name: "QueryStatement"))
    Widget.add_member(:query_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryParameters, location_name: "QueryParameters"))
    Widget.add_member(:view_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewPropertiesMap, location_name: "ViewProperties"))
    Widget.type = Types::Widget
    WidgetList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Widget)

    CloudTrail20131101 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.cloudtrail#CloudTrail_20131101"
      service.name = "CloudTrail20131101"
      service.version = "2013-11-01"
      service.traits = {"aws.api#service" => {"sdkId" => "CloudTrail", "arnNamespace" => "cloudtrail", "cloudFormationName" => "CloudTrail", "cloudTrailEventSource" => "cloudtrail.amazonaws.com", "endpointPrefix" => "cloudtrail"}, "aws.auth#sigv4" => {"name" => "cloudtrail"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS CloudTrail", "smithy.api#xmlNamespace" => {"uri" => "http://cloudtrail.amazonaws.com/doc/2013-11-01/"}}
      service.add_operation(:add_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#AddTags"
        operation.name = "AddTags"
        operation.input = AddTagsRequest
        operation.output = AddTagsResponse
        operation.errors << ChannelARNInvalidException
        operation.errors << ChannelNotFoundException
        operation.errors << CloudTrailARNInvalidException
        operation.errors << ConflictException
        operation.errors << EventDataStoreARNInvalidException
        operation.errors << EventDataStoreNotFoundException
        operation.errors << InactiveEventDataStoreException
        operation.errors << InvalidTagParameterException
        operation.errors << InvalidTrailNameException
        operation.errors << NoManagementAccountSLRExistsException
        operation.errors << NotOrganizationMasterAccountException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceTypeNotSupportedException
        operation.errors << TagsLimitExceededException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:cancel_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#CancelQuery"
        operation.name = "CancelQuery"
        operation.input = CancelQueryRequest
        operation.output = CancelQueryResponse
        operation.errors << ConflictException
        operation.errors << EventDataStoreARNInvalidException
        operation.errors << EventDataStoreNotFoundException
        operation.errors << InactiveEventDataStoreException
        operation.errors << InactiveQueryException
        operation.errors << InvalidParameterException
        operation.errors << NoManagementAccountSLRExistsException
        operation.errors << OperationNotPermittedException
        operation.errors << QueryIdNotFoundException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#CreateChannel"
        operation.name = "CreateChannel"
        operation.input = CreateChannelRequest
        operation.output = CreateChannelResponse
        operation.errors << ChannelAlreadyExistsException
        operation.errors << ChannelMaxLimitExceededException
        operation.errors << EventDataStoreARNInvalidException
        operation.errors << EventDataStoreNotFoundException
        operation.errors << InactiveEventDataStoreException
        operation.errors << InvalidEventDataStoreCategoryException
        operation.errors << InvalidParameterException
        operation.errors << InvalidSourceException
        operation.errors << InvalidTagParameterException
        operation.errors << OperationNotPermittedException
        operation.errors << TagsLimitExceededException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:create_dashboard, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#CreateDashboard"
        operation.name = "CreateDashboard"
        operation.input = CreateDashboardRequest
        operation.output = CreateDashboardResponse
        operation.errors << ConflictException
        operation.errors << EventDataStoreNotFoundException
        operation.errors << InactiveEventDataStoreException
        operation.errors << InsufficientEncryptionPolicyException
        operation.errors << InvalidQueryStatementException
        operation.errors << InvalidTagParameterException
        operation.errors << ServiceQuotaExceededException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_event_data_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#CreateEventDataStore"
        operation.name = "CreateEventDataStore"
        operation.input = CreateEventDataStoreRequest
        operation.output = CreateEventDataStoreResponse
        operation.errors << CloudTrailAccessNotEnabledException
        operation.errors << ConflictException
        operation.errors << EventDataStoreAlreadyExistsException
        operation.errors << EventDataStoreMaxLimitExceededException
        operation.errors << InsufficientDependencyServiceAccessPermissionException
        operation.errors << InsufficientEncryptionPolicyException
        operation.errors << InvalidEventSelectorsException
        operation.errors << InvalidKmsKeyIdException
        operation.errors << InvalidParameterException
        operation.errors << InvalidTagParameterException
        operation.errors << KmsException
        operation.errors << KmsKeyNotFoundException
        operation.errors << NoManagementAccountSLRExistsException
        operation.errors << NotOrganizationMasterAccountException
        operation.errors << OperationNotPermittedException
        operation.errors << OrganizationNotInAllFeaturesModeException
        operation.errors << OrganizationsNotInUseException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:create_trail, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#CreateTrail"
        operation.name = "CreateTrail"
        operation.input = CreateTrailRequest
        operation.output = CreateTrailResponse
        operation.errors << CloudTrailAccessNotEnabledException
        operation.errors << CloudTrailInvalidClientTokenIdException
        operation.errors << CloudWatchLogsDeliveryUnavailableException
        operation.errors << ConflictException
        operation.errors << InsufficientDependencyServiceAccessPermissionException
        operation.errors << InsufficientEncryptionPolicyException
        operation.errors << InsufficientS3BucketPolicyException
        operation.errors << InsufficientSnsTopicPolicyException
        operation.errors << InvalidCloudWatchLogsLogGroupArnException
        operation.errors << InvalidCloudWatchLogsRoleArnException
        operation.errors << InvalidKmsKeyIdException
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterException
        operation.errors << InvalidS3BucketNameException
        operation.errors << InvalidS3PrefixException
        operation.errors << InvalidSnsTopicNameException
        operation.errors << InvalidTagParameterException
        operation.errors << InvalidTrailNameException
        operation.errors << KmsException
        operation.errors << KmsKeyDisabledException
        operation.errors << KmsKeyNotFoundException
        operation.errors << MaximumNumberOfTrailsExceededException
        operation.errors << NoManagementAccountSLRExistsException
        operation.errors << NotOrganizationMasterAccountException
        operation.errors << OperationNotPermittedException
        operation.errors << OrganizationNotInAllFeaturesModeException
        operation.errors << OrganizationsNotInUseException
        operation.errors << S3BucketDoesNotExistException
        operation.errors << TagsLimitExceededException
        operation.errors << ThrottlingException
        operation.errors << TrailAlreadyExistsException
        operation.errors << TrailNotProvidedException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#DeleteChannel"
        operation.name = "DeleteChannel"
        operation.input = DeleteChannelRequest
        operation.output = DeleteChannelResponse
        operation.errors << ChannelARNInvalidException
        operation.errors << ChannelNotFoundException
        operation.errors << OperationNotPermittedException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:delete_dashboard, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#DeleteDashboard"
        operation.name = "DeleteDashboard"
        operation.input = DeleteDashboardRequest
        operation.output = DeleteDashboardResponse
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_event_data_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#DeleteEventDataStore"
        operation.name = "DeleteEventDataStore"
        operation.input = DeleteEventDataStoreRequest
        operation.output = DeleteEventDataStoreResponse
        operation.errors << ChannelExistsForEDSException
        operation.errors << ConflictException
        operation.errors << EventDataStoreARNInvalidException
        operation.errors << EventDataStoreFederationEnabledException
        operation.errors << EventDataStoreHasOngoingImportException
        operation.errors << EventDataStoreNotFoundException
        operation.errors << EventDataStoreTerminationProtectedException
        operation.errors << InactiveEventDataStoreException
        operation.errors << InsufficientDependencyServiceAccessPermissionException
        operation.errors << InvalidParameterException
        operation.errors << NoManagementAccountSLRExistsException
        operation.errors << NotOrganizationMasterAccountException
        operation.errors << OperationNotPermittedException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:delete_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = DeleteResourcePolicyRequest
        operation.output = DeleteResourcePolicyResponse
        operation.errors << ConflictException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceARNNotValidException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourcePolicyNotFoundException
        operation.errors << ResourceTypeNotSupportedException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_trail, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#DeleteTrail"
        operation.name = "DeleteTrail"
        operation.input = DeleteTrailRequest
        operation.output = DeleteTrailResponse
        operation.errors << CloudTrailARNInvalidException
        operation.errors << ConflictException
        operation.errors << InsufficientDependencyServiceAccessPermissionException
        operation.errors << InvalidHomeRegionException
        operation.errors << InvalidTrailNameException
        operation.errors << NoManagementAccountSLRExistsException
        operation.errors << NotOrganizationMasterAccountException
        operation.errors << OperationNotPermittedException
        operation.errors << ThrottlingException
        operation.errors << TrailNotFoundException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:deregister_organization_delegated_admin, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#DeregisterOrganizationDelegatedAdmin"
        operation.name = "DeregisterOrganizationDelegatedAdmin"
        operation.input = DeregisterOrganizationDelegatedAdminRequest
        operation.output = DeregisterOrganizationDelegatedAdminResponse
        operation.errors << AccountNotFoundException
        operation.errors << AccountNotRegisteredException
        operation.errors << CloudTrailAccessNotEnabledException
        operation.errors << ConflictException
        operation.errors << InsufficientDependencyServiceAccessPermissionException
        operation.errors << InvalidParameterException
        operation.errors << NotOrganizationManagementAccountException
        operation.errors << OperationNotPermittedException
        operation.errors << OrganizationNotInAllFeaturesModeException
        operation.errors << OrganizationsNotInUseException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#DescribeQuery"
        operation.name = "DescribeQuery"
        operation.input = DescribeQueryRequest
        operation.output = DescribeQueryResponse
        operation.errors << EventDataStoreARNInvalidException
        operation.errors << EventDataStoreNotFoundException
        operation.errors << InactiveEventDataStoreException
        operation.errors << InvalidParameterException
        operation.errors << NoManagementAccountSLRExistsException
        operation.errors << OperationNotPermittedException
        operation.errors << QueryIdNotFoundException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_trails, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#DescribeTrails"
        operation.name = "DescribeTrails"
        operation.input = DescribeTrailsRequest
        operation.output = DescribeTrailsResponse
        operation.errors << CloudTrailARNInvalidException
        operation.errors << InvalidTrailNameException
        operation.errors << NoManagementAccountSLRExistsException
        operation.errors << OperationNotPermittedException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}, "smithy.test#smokeTests" => [{"id" => "DescribeTrailsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:disable_federation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#DisableFederation"
        operation.name = "DisableFederation"
        operation.input = DisableFederationRequest
        operation.output = DisableFederationResponse
        operation.errors << AccessDeniedException
        operation.errors << CloudTrailAccessNotEnabledException
        operation.errors << ConcurrentModificationException
        operation.errors << EventDataStoreARNInvalidException
        operation.errors << EventDataStoreNotFoundException
        operation.errors << InactiveEventDataStoreException
        operation.errors << InsufficientDependencyServiceAccessPermissionException
        operation.errors << InvalidParameterException
        operation.errors << NoManagementAccountSLRExistsException
        operation.errors << NotOrganizationMasterAccountException
        operation.errors << OperationNotPermittedException
        operation.errors << OrganizationNotInAllFeaturesModeException
        operation.errors << OrganizationsNotInUseException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:enable_federation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#EnableFederation"
        operation.name = "EnableFederation"
        operation.input = EnableFederationRequest
        operation.output = EnableFederationResponse
        operation.errors << AccessDeniedException
        operation.errors << CloudTrailAccessNotEnabledException
        operation.errors << ConcurrentModificationException
        operation.errors << EventDataStoreARNInvalidException
        operation.errors << EventDataStoreFederationEnabledException
        operation.errors << EventDataStoreNotFoundException
        operation.errors << InactiveEventDataStoreException
        operation.errors << InsufficientDependencyServiceAccessPermissionException
        operation.errors << InvalidParameterException
        operation.errors << NoManagementAccountSLRExistsException
        operation.errors << NotOrganizationMasterAccountException
        operation.errors << OperationNotPermittedException
        operation.errors << OrganizationNotInAllFeaturesModeException
        operation.errors << OrganizationsNotInUseException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:generate_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#GenerateQuery"
        operation.name = "GenerateQuery"
        operation.input = GenerateQueryRequest
        operation.output = GenerateQueryResponse
        operation.errors << EventDataStoreARNInvalidException
        operation.errors << EventDataStoreNotFoundException
        operation.errors << GenerateResponseException
        operation.errors << InactiveEventDataStoreException
        operation.errors << InvalidParameterException
        operation.errors << NoManagementAccountSLRExistsException
        operation.errors << OperationNotPermittedException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#GetChannel"
        operation.name = "GetChannel"
        operation.input = GetChannelRequest
        operation.output = GetChannelResponse
        operation.errors << ChannelARNInvalidException
        operation.errors << ChannelNotFoundException
        operation.errors << OperationNotPermittedException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_dashboard, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#GetDashboard"
        operation.name = "GetDashboard"
        operation.input = GetDashboardRequest
        operation.output = GetDashboardResponse
        operation.errors << ResourceNotFoundException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_event_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#GetEventConfiguration"
        operation.name = "GetEventConfiguration"
        operation.input = GetEventConfigurationRequest
        operation.output = GetEventConfigurationResponse
        operation.errors << CloudTrailARNInvalidException
        operation.errors << EventDataStoreARNInvalidException
        operation.errors << EventDataStoreNotFoundException
        operation.errors << InvalidEventDataStoreCategoryException
        operation.errors << InvalidEventDataStoreStatusException
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterException
        operation.errors << NoManagementAccountSLRExistsException
        operation.errors << OperationNotPermittedException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_event_data_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#GetEventDataStore"
        operation.name = "GetEventDataStore"
        operation.input = GetEventDataStoreRequest
        operation.output = GetEventDataStoreResponse
        operation.errors << EventDataStoreARNInvalidException
        operation.errors << EventDataStoreNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << NoManagementAccountSLRExistsException
        operation.errors << OperationNotPermittedException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_event_selectors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#GetEventSelectors"
        operation.name = "GetEventSelectors"
        operation.input = GetEventSelectorsRequest
        operation.output = GetEventSelectorsResponse
        operation.errors << CloudTrailARNInvalidException
        operation.errors << InvalidTrailNameException
        operation.errors << NoManagementAccountSLRExistsException
        operation.errors << OperationNotPermittedException
        operation.errors << TrailNotFoundException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_import, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#GetImport"
        operation.name = "GetImport"
        operation.input = GetImportRequest
        operation.output = GetImportResponse
        operation.errors << ImportNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << OperationNotPermittedException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:get_insight_selectors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#GetInsightSelectors"
        operation.name = "GetInsightSelectors"
        operation.input = GetInsightSelectorsRequest
        operation.output = GetInsightSelectorsResponse
        operation.errors << CloudTrailARNInvalidException
        operation.errors << InsightNotEnabledException
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterException
        operation.errors << InvalidTrailNameException
        operation.errors << NoManagementAccountSLRExistsException
        operation.errors << OperationNotPermittedException
        operation.errors << ThrottlingException
        operation.errors << TrailNotFoundException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_query_results, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#GetQueryResults"
        operation.name = "GetQueryResults"
        operation.input = GetQueryResultsRequest
        operation.output = GetQueryResultsResponse
        operation.errors << EventDataStoreARNInvalidException
        operation.errors << EventDataStoreNotFoundException
        operation.errors << InactiveEventDataStoreException
        operation.errors << InsufficientEncryptionPolicyException
        operation.errors << InvalidMaxResultsException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterException
        operation.errors << NoManagementAccountSLRExistsException
        operation.errors << OperationNotPermittedException
        operation.errors << QueryIdNotFoundException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
        operation[:paginator] = Paginators::GetQueryResults.new
      end)
      service.add_operation(:get_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = GetResourcePolicyRequest
        operation.output = GetResourcePolicyResponse
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceARNNotValidException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourcePolicyNotFoundException
        operation.errors << ResourceTypeNotSupportedException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_trail, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#GetTrail"
        operation.name = "GetTrail"
        operation.input = GetTrailRequest
        operation.output = GetTrailResponse
        operation.errors << CloudTrailARNInvalidException
        operation.errors << InvalidTrailNameException
        operation.errors << OperationNotPermittedException
        operation.errors << TrailNotFoundException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_trail_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#GetTrailStatus"
        operation.name = "GetTrailStatus"
        operation.input = GetTrailStatusRequest
        operation.output = GetTrailStatusResponse
        operation.errors << CloudTrailARNInvalidException
        operation.errors << InvalidTrailNameException
        operation.errors << OperationNotPermittedException
        operation.errors << TrailNotFoundException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:list_channels, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#ListChannels"
        operation.name = "ListChannels"
        operation.input = ListChannelsRequest
        operation.output = ListChannelsResponse
        operation.errors << InvalidNextTokenException
        operation.errors << OperationNotPermittedException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListChannels.new
      end)
      service.add_operation(:list_dashboards, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#ListDashboards"
        operation.name = "ListDashboards"
        operation.input = ListDashboardsRequest
        operation.output = ListDashboardsResponse
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:list_event_data_stores, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#ListEventDataStores"
        operation.name = "ListEventDataStores"
        operation.input = ListEventDataStoresRequest
        operation.output = ListEventDataStoresResponse
        operation.errors << InvalidMaxResultsException
        operation.errors << InvalidNextTokenException
        operation.errors << NoManagementAccountSLRExistsException
        operation.errors << OperationNotPermittedException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListEventDataStores.new
      end)
      service.add_operation(:list_import_failures, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#ListImportFailures"
        operation.name = "ListImportFailures"
        operation.input = ListImportFailuresRequest
        operation.output = ListImportFailuresResponse
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterException
        operation.errors << OperationNotPermittedException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListImportFailures.new
      end)
      service.add_operation(:list_imports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#ListImports"
        operation.name = "ListImports"
        operation.input = ListImportsRequest
        operation.output = ListImportsResponse
        operation.errors << EventDataStoreARNInvalidException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterException
        operation.errors << OperationNotPermittedException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListImports.new
      end)
      service.add_operation(:list_insights_metric_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#ListInsightsMetricData"
        operation.name = "ListInsightsMetricData"
        operation.input = ListInsightsMetricDataRequest
        operation.output = ListInsightsMetricDataResponse
        operation.errors << InvalidParameterException
        operation.errors << OperationNotPermittedException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListInsightsMetricData.new
      end)
      service.add_operation(:list_public_keys, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#ListPublicKeys"
        operation.name = "ListPublicKeys"
        operation.input = ListPublicKeysRequest
        operation.output = ListPublicKeysResponse
        operation.errors << InvalidTimeRangeException
        operation.errors << InvalidTokenException
        operation.errors << OperationNotPermittedException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListPublicKeys.new
      end)
      service.add_operation(:list_queries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#ListQueries"
        operation.name = "ListQueries"
        operation.input = ListQueriesRequest
        operation.output = ListQueriesResponse
        operation.errors << EventDataStoreARNInvalidException
        operation.errors << EventDataStoreNotFoundException
        operation.errors << InactiveEventDataStoreException
        operation.errors << InvalidDateRangeException
        operation.errors << InvalidMaxResultsException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterException
        operation.errors << InvalidQueryStatusException
        operation.errors << NoManagementAccountSLRExistsException
        operation.errors << OperationNotPermittedException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListQueries.new
      end)
      service.add_operation(:list_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#ListTags"
        operation.name = "ListTags"
        operation.input = ListTagsRequest
        operation.output = ListTagsResponse
        operation.errors << ChannelARNInvalidException
        operation.errors << CloudTrailARNInvalidException
        operation.errors << EventDataStoreARNInvalidException
        operation.errors << EventDataStoreNotFoundException
        operation.errors << InactiveEventDataStoreException
        operation.errors << InvalidTokenException
        operation.errors << InvalidTrailNameException
        operation.errors << NoManagementAccountSLRExistsException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceTypeNotSupportedException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListTags.new
      end)
      service.add_operation(:list_trails, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#ListTrails"
        operation.name = "ListTrails"
        operation.input = ListTrailsRequest
        operation.output = ListTrailsResponse
        operation.errors << OperationNotPermittedException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListTrails.new
      end)
      service.add_operation(:lookup_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#LookupEvents"
        operation.name = "LookupEvents"
        operation.input = LookupEventsRequest
        operation.output = LookupEventsResponse
        operation.errors << InvalidEventCategoryException
        operation.errors << InvalidLookupAttributesException
        operation.errors << InvalidMaxResultsException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidTimeRangeException
        operation.errors << OperationNotPermittedException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::LookupEvents.new
      end)
      service.add_operation(:put_event_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#PutEventConfiguration"
        operation.name = "PutEventConfiguration"
        operation.input = PutEventConfigurationRequest
        operation.output = PutEventConfigurationResponse
        operation.errors << CloudTrailARNInvalidException
        operation.errors << ConflictException
        operation.errors << EventDataStoreARNInvalidException
        operation.errors << EventDataStoreNotFoundException
        operation.errors << InactiveEventDataStoreException
        operation.errors << InsufficientDependencyServiceAccessPermissionException
        operation.errors << InsufficientIAMAccessPermissionException
        operation.errors << InvalidEventDataStoreCategoryException
        operation.errors << InvalidEventDataStoreStatusException
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterException
        operation.errors << NoManagementAccountSLRExistsException
        operation.errors << NotOrganizationMasterAccountException
        operation.errors << OperationNotPermittedException
        operation.errors << ThrottlingException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_event_selectors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#PutEventSelectors"
        operation.name = "PutEventSelectors"
        operation.input = PutEventSelectorsRequest
        operation.output = PutEventSelectorsResponse
        operation.errors << CloudTrailARNInvalidException
        operation.errors << ConflictException
        operation.errors << InsufficientDependencyServiceAccessPermissionException
        operation.errors << InvalidEventSelectorsException
        operation.errors << InvalidHomeRegionException
        operation.errors << InvalidTrailNameException
        operation.errors << NoManagementAccountSLRExistsException
        operation.errors << NotOrganizationMasterAccountException
        operation.errors << OperationNotPermittedException
        operation.errors << ThrottlingException
        operation.errors << TrailNotFoundException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_insight_selectors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#PutInsightSelectors"
        operation.name = "PutInsightSelectors"
        operation.input = PutInsightSelectorsRequest
        operation.output = PutInsightSelectorsResponse
        operation.errors << CloudTrailARNInvalidException
        operation.errors << InsufficientEncryptionPolicyException
        operation.errors << InsufficientS3BucketPolicyException
        operation.errors << InvalidHomeRegionException
        operation.errors << InvalidInsightSelectorsException
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterException
        operation.errors << InvalidTrailNameException
        operation.errors << KmsException
        operation.errors << NoManagementAccountSLRExistsException
        operation.errors << NotOrganizationMasterAccountException
        operation.errors << OperationNotPermittedException
        operation.errors << S3BucketDoesNotExistException
        operation.errors << ThrottlingException
        operation.errors << TrailNotFoundException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = PutResourcePolicyRequest
        operation.output = PutResourcePolicyResponse
        operation.errors << ConflictException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceARNNotValidException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourcePolicyNotValidException
        operation.errors << ResourceTypeNotSupportedException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:register_organization_delegated_admin, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#RegisterOrganizationDelegatedAdmin"
        operation.name = "RegisterOrganizationDelegatedAdmin"
        operation.input = RegisterOrganizationDelegatedAdminRequest
        operation.output = RegisterOrganizationDelegatedAdminResponse
        operation.errors << AccountNotFoundException
        operation.errors << AccountRegisteredException
        operation.errors << CannotDelegateManagementAccountException
        operation.errors << CloudTrailAccessNotEnabledException
        operation.errors << ConflictException
        operation.errors << DelegatedAdminAccountLimitExceededException
        operation.errors << InsufficientDependencyServiceAccessPermissionException
        operation.errors << InsufficientIAMAccessPermissionException
        operation.errors << InvalidParameterException
        operation.errors << NotOrganizationManagementAccountException
        operation.errors << OperationNotPermittedException
        operation.errors << OrganizationNotInAllFeaturesModeException
        operation.errors << OrganizationsNotInUseException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:remove_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#RemoveTags"
        operation.name = "RemoveTags"
        operation.input = RemoveTagsRequest
        operation.output = RemoveTagsResponse
        operation.errors << ChannelARNInvalidException
        operation.errors << ChannelNotFoundException
        operation.errors << CloudTrailARNInvalidException
        operation.errors << ConflictException
        operation.errors << EventDataStoreARNInvalidException
        operation.errors << EventDataStoreNotFoundException
        operation.errors << InactiveEventDataStoreException
        operation.errors << InvalidTagParameterException
        operation.errors << InvalidTrailNameException
        operation.errors << NoManagementAccountSLRExistsException
        operation.errors << NotOrganizationMasterAccountException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceTypeNotSupportedException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:restore_event_data_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#RestoreEventDataStore"
        operation.name = "RestoreEventDataStore"
        operation.input = RestoreEventDataStoreRequest
        operation.output = RestoreEventDataStoreResponse
        operation.errors << CloudTrailAccessNotEnabledException
        operation.errors << EventDataStoreARNInvalidException
        operation.errors << EventDataStoreMaxLimitExceededException
        operation.errors << EventDataStoreNotFoundException
        operation.errors << InsufficientDependencyServiceAccessPermissionException
        operation.errors << InvalidEventDataStoreStatusException
        operation.errors << InvalidParameterException
        operation.errors << NoManagementAccountSLRExistsException
        operation.errors << NotOrganizationMasterAccountException
        operation.errors << OperationNotPermittedException
        operation.errors << OrganizationNotInAllFeaturesModeException
        operation.errors << OrganizationsNotInUseException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:search_sample_queries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#SearchSampleQueries"
        operation.name = "SearchSampleQueries"
        operation.input = SearchSampleQueriesRequest
        operation.output = SearchSampleQueriesResponse
        operation.errors << InvalidParameterException
        operation.errors << OperationNotPermittedException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_dashboard_refresh, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#StartDashboardRefresh"
        operation.name = "StartDashboardRefresh"
        operation.input = StartDashboardRefreshRequest
        operation.output = StartDashboardRefreshResponse
        operation.errors << EventDataStoreNotFoundException
        operation.errors << InactiveEventDataStoreException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_event_data_store_ingestion, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#StartEventDataStoreIngestion"
        operation.name = "StartEventDataStoreIngestion"
        operation.input = StartEventDataStoreIngestionRequest
        operation.output = StartEventDataStoreIngestionResponse
        operation.errors << ConflictException
        operation.errors << EventDataStoreARNInvalidException
        operation.errors << EventDataStoreNotFoundException
        operation.errors << InsufficientDependencyServiceAccessPermissionException
        operation.errors << InvalidEventDataStoreCategoryException
        operation.errors << InvalidEventDataStoreStatusException
        operation.errors << InvalidParameterException
        operation.errors << NoManagementAccountSLRExistsException
        operation.errors << NotOrganizationMasterAccountException
        operation.errors << OperationNotPermittedException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:start_import, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#StartImport"
        operation.name = "StartImport"
        operation.input = StartImportRequest
        operation.output = StartImportResponse
        operation.errors << AccountHasOngoingImportException
        operation.errors << EventDataStoreARNInvalidException
        operation.errors << EventDataStoreNotFoundException
        operation.errors << ImportNotFoundException
        operation.errors << InactiveEventDataStoreException
        operation.errors << InsufficientEncryptionPolicyException
        operation.errors << InvalidEventDataStoreCategoryException
        operation.errors << InvalidEventDataStoreStatusException
        operation.errors << InvalidImportSourceException
        operation.errors << InvalidParameterException
        operation.errors << OperationNotPermittedException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:start_logging, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#StartLogging"
        operation.name = "StartLogging"
        operation.input = StartLoggingRequest
        operation.output = StartLoggingResponse
        operation.errors << CloudTrailARNInvalidException
        operation.errors << ConflictException
        operation.errors << InsufficientDependencyServiceAccessPermissionException
        operation.errors << InvalidHomeRegionException
        operation.errors << InvalidTrailNameException
        operation.errors << NoManagementAccountSLRExistsException
        operation.errors << NotOrganizationMasterAccountException
        operation.errors << OperationNotPermittedException
        operation.errors << ThrottlingException
        operation.errors << TrailNotFoundException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#StartQuery"
        operation.name = "StartQuery"
        operation.input = StartQueryRequest
        operation.output = StartQueryResponse
        operation.errors << EventDataStoreARNInvalidException
        operation.errors << EventDataStoreNotFoundException
        operation.errors << InactiveEventDataStoreException
        operation.errors << InsufficientEncryptionPolicyException
        operation.errors << InsufficientS3BucketPolicyException
        operation.errors << InvalidParameterException
        operation.errors << InvalidQueryStatementException
        operation.errors << InvalidS3BucketNameException
        operation.errors << InvalidS3PrefixException
        operation.errors << MaxConcurrentQueriesException
        operation.errors << NoManagementAccountSLRExistsException
        operation.errors << OperationNotPermittedException
        operation.errors << S3BucketDoesNotExistException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:stop_event_data_store_ingestion, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#StopEventDataStoreIngestion"
        operation.name = "StopEventDataStoreIngestion"
        operation.input = StopEventDataStoreIngestionRequest
        operation.output = StopEventDataStoreIngestionResponse
        operation.errors << ConflictException
        operation.errors << EventDataStoreARNInvalidException
        operation.errors << EventDataStoreNotFoundException
        operation.errors << InsufficientDependencyServiceAccessPermissionException
        operation.errors << InvalidEventDataStoreCategoryException
        operation.errors << InvalidEventDataStoreStatusException
        operation.errors << InvalidParameterException
        operation.errors << NoManagementAccountSLRExistsException
        operation.errors << NotOrganizationMasterAccountException
        operation.errors << OperationNotPermittedException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:stop_import, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#StopImport"
        operation.name = "StopImport"
        operation.input = StopImportRequest
        operation.output = StopImportResponse
        operation.errors << ImportNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << OperationNotPermittedException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:stop_logging, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#StopLogging"
        operation.name = "StopLogging"
        operation.input = StopLoggingRequest
        operation.output = StopLoggingResponse
        operation.errors << CloudTrailARNInvalidException
        operation.errors << ConflictException
        operation.errors << InsufficientDependencyServiceAccessPermissionException
        operation.errors << InvalidHomeRegionException
        operation.errors << InvalidTrailNameException
        operation.errors << NoManagementAccountSLRExistsException
        operation.errors << NotOrganizationMasterAccountException
        operation.errors << OperationNotPermittedException
        operation.errors << ThrottlingException
        operation.errors << TrailNotFoundException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#UpdateChannel"
        operation.name = "UpdateChannel"
        operation.input = UpdateChannelRequest
        operation.output = UpdateChannelResponse
        operation.errors << ChannelAlreadyExistsException
        operation.errors << ChannelARNInvalidException
        operation.errors << ChannelNotFoundException
        operation.errors << EventDataStoreARNInvalidException
        operation.errors << EventDataStoreNotFoundException
        operation.errors << InactiveEventDataStoreException
        operation.errors << InvalidEventDataStoreCategoryException
        operation.errors << InvalidParameterException
        operation.errors << OperationNotPermittedException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_dashboard, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#UpdateDashboard"
        operation.name = "UpdateDashboard"
        operation.input = UpdateDashboardRequest
        operation.output = UpdateDashboardResponse
        operation.errors << ConflictException
        operation.errors << EventDataStoreNotFoundException
        operation.errors << InactiveEventDataStoreException
        operation.errors << InsufficientEncryptionPolicyException
        operation.errors << InvalidQueryStatementException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_event_data_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#UpdateEventDataStore"
        operation.name = "UpdateEventDataStore"
        operation.input = UpdateEventDataStoreRequest
        operation.output = UpdateEventDataStoreResponse
        operation.errors << CloudTrailAccessNotEnabledException
        operation.errors << EventDataStoreAlreadyExistsException
        operation.errors << EventDataStoreARNInvalidException
        operation.errors << EventDataStoreHasOngoingImportException
        operation.errors << EventDataStoreNotFoundException
        operation.errors << InactiveEventDataStoreException
        operation.errors << InsufficientDependencyServiceAccessPermissionException
        operation.errors << InsufficientEncryptionPolicyException
        operation.errors << InvalidEventSelectorsException
        operation.errors << InvalidInsightSelectorsException
        operation.errors << InvalidKmsKeyIdException
        operation.errors << InvalidParameterException
        operation.errors << KmsException
        operation.errors << KmsKeyNotFoundException
        operation.errors << NoManagementAccountSLRExistsException
        operation.errors << NotOrganizationMasterAccountException
        operation.errors << OperationNotPermittedException
        operation.errors << OrganizationNotInAllFeaturesModeException
        operation.errors << OrganizationsNotInUseException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_trail, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#UpdateTrail"
        operation.name = "UpdateTrail"
        operation.input = UpdateTrailRequest
        operation.output = UpdateTrailResponse
        operation.errors << CloudTrailAccessNotEnabledException
        operation.errors << CloudTrailARNInvalidException
        operation.errors << CloudTrailInvalidClientTokenIdException
        operation.errors << CloudWatchLogsDeliveryUnavailableException
        operation.errors << ConflictException
        operation.errors << InsufficientDependencyServiceAccessPermissionException
        operation.errors << InsufficientEncryptionPolicyException
        operation.errors << InsufficientS3BucketPolicyException
        operation.errors << InsufficientSnsTopicPolicyException
        operation.errors << InvalidCloudWatchLogsLogGroupArnException
        operation.errors << InvalidCloudWatchLogsRoleArnException
        operation.errors << InvalidEventSelectorsException
        operation.errors << InvalidHomeRegionException
        operation.errors << InvalidKmsKeyIdException
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterException
        operation.errors << InvalidS3BucketNameException
        operation.errors << InvalidS3PrefixException
        operation.errors << InvalidSnsTopicNameException
        operation.errors << InvalidTrailNameException
        operation.errors << KmsException
        operation.errors << KmsKeyDisabledException
        operation.errors << KmsKeyNotFoundException
        operation.errors << NoManagementAccountSLRExistsException
        operation.errors << NotOrganizationMasterAccountException
        operation.errors << OperationNotPermittedException
        operation.errors << OrganizationNotInAllFeaturesModeException
        operation.errors << OrganizationsNotInUseException
        operation.errors << S3BucketDoesNotExistException
        operation.errors << ThrottlingException
        operation.errors << TrailNotFoundException
        operation.errors << TrailNotProvidedException
        operation.errors << UnsupportedOperationException
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
