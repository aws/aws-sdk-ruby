# frozen_string_literal: true

# This is generated code!

module Aws::CloudTrail
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#AccessDeniedException', name: 'AccessDeniedException', traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceAccessDenied", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountHasOngoingImportException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#AccountHasOngoingImportException', name: 'AccountHasOngoingImportException', traits: {"aws.protocols#awsQueryError" => {"code" => "AccountHasOngoingImport", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#AccountId', name: 'AccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 16}, "smithy.api#pattern" => "^\\d+$"})
    AccountNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#AccountNotFoundException', name: 'AccountNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "AccountNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    AccountNotRegisteredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#AccountNotRegisteredException', name: 'AccountNotRegisteredException', traits: {"aws.protocols#awsQueryError" => {"code" => "AccountNotRegistered", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AccountRegisteredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#AccountRegisteredException', name: 'AccountRegisteredException', traits: {"aws.protocols#awsQueryError" => {"code" => "AccountRegistered", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AddTagsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#AddTagsRequest', name: 'AddTagsRequest')
    AddTagsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#AddTagsResponse', name: 'AddTagsResponse')
    AdvancedEventSelector = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#AdvancedEventSelector', name: 'AdvancedEventSelector')
    AdvancedEventSelectors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudtrail#AdvancedEventSelectors', name: 'AdvancedEventSelectors')
    AdvancedFieldSelector = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#AdvancedFieldSelector', name: 'AdvancedFieldSelector')
    AdvancedFieldSelectors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudtrail#AdvancedFieldSelectors', name: 'AdvancedFieldSelectors', traits: {"smithy.api#length" => {"min" => 1}})
    BillingMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudtrail#BillingMode', name: 'BillingMode')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.cloudtrail#Boolean', name: 'Boolean')
    ByteBuffer = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.cloudtrail#ByteBuffer', name: 'ByteBuffer')
    CancelQueryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#CancelQueryRequest', name: 'CancelQueryRequest')
    CancelQueryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#CancelQueryResponse', name: 'CancelQueryResponse')
    CannotDelegateManagementAccountException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#CannotDelegateManagementAccountException', name: 'CannotDelegateManagementAccountException', traits: {"aws.protocols#awsQueryError" => {"code" => "CannotDelegateManagementAccount", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Channel = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#Channel', name: 'Channel')
    ChannelARNInvalidException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ChannelARNInvalidException', name: 'ChannelARNInvalidException', traits: {"aws.protocols#awsQueryError" => {"code" => "ChannelARNInvalid", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ChannelAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ChannelAlreadyExistsException', name: 'ChannelAlreadyExistsException', traits: {"aws.protocols#awsQueryError" => {"code" => "ChannelAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ChannelArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#ChannelArn', name: 'ChannelArn', traits: {"smithy.api#length" => {"min" => 3, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9._/\\-:]+$"})
    ChannelExistsForEDSException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ChannelExistsForEDSException', name: 'ChannelExistsForEDSException', traits: {"aws.protocols#awsQueryError" => {"code" => "ChannelExistsForEDS", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ChannelMaxLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ChannelMaxLimitExceededException', name: 'ChannelMaxLimitExceededException', traits: {"aws.protocols#awsQueryError" => {"code" => "ChannelMaxLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ChannelName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#ChannelName', name: 'ChannelName', traits: {"smithy.api#length" => {"min" => 3, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9._\\-]+$"})
    ChannelNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ChannelNotFoundException', name: 'ChannelNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "ChannelNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Channels = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudtrail#Channels', name: 'Channels')
    CloudTrailARNInvalidException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#CloudTrailARNInvalidException', name: 'CloudTrailARNInvalidException', traits: {"aws.protocols#awsQueryError" => {"code" => "CloudTrailARNInvalid", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CloudTrailAccessNotEnabledException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#CloudTrailAccessNotEnabledException', name: 'CloudTrailAccessNotEnabledException', traits: {"aws.protocols#awsQueryError" => {"code" => "CloudTrailAccessNotEnabled", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CloudTrailInvalidClientTokenIdException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#CloudTrailInvalidClientTokenIdException', name: 'CloudTrailInvalidClientTokenIdException', traits: {"aws.protocols#awsQueryError" => {"code" => "CloudTrailInvalidClientTokenId", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CloudWatchLogsDeliveryUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#CloudWatchLogsDeliveryUnavailableException', name: 'CloudWatchLogsDeliveryUnavailableException', traits: {"aws.protocols#awsQueryError" => {"code" => "CloudWatchLogsDeliveryUnavailable", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ConcurrentModificationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ConcurrentModificationException', name: 'ConcurrentModificationException', traits: {"aws.protocols#awsQueryError" => {"code" => "ConcurrentModification", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ConflictException', name: 'ConflictException', traits: {"aws.protocols#awsQueryError" => {"code" => "ConflictException", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContextKeySelector = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ContextKeySelector', name: 'ContextKeySelector')
    ContextKeySelectors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudtrail#ContextKeySelectors', name: 'ContextKeySelectors', traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    CreateChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#CreateChannelRequest', name: 'CreateChannelRequest')
    CreateChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#CreateChannelResponse', name: 'CreateChannelResponse')
    CreateDashboardRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#CreateDashboardRequest', name: 'CreateDashboardRequest')
    CreateDashboardResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#CreateDashboardResponse', name: 'CreateDashboardResponse')
    CreateEventDataStoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#CreateEventDataStoreRequest', name: 'CreateEventDataStoreRequest')
    CreateEventDataStoreResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#CreateEventDataStoreResponse', name: 'CreateEventDataStoreResponse')
    CreateTrailRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#CreateTrailRequest', name: 'CreateTrailRequest')
    CreateTrailResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#CreateTrailResponse', name: 'CreateTrailResponse')
    DashboardArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#DashboardArn', name: 'DashboardArn', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9._/\\-:]+$"})
    DashboardDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#DashboardDetail', name: 'DashboardDetail')
    DashboardName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#DashboardName', name: 'DashboardName', traits: {"smithy.api#length" => {"min" => 3, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-]+$"})
    DashboardStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudtrail#DashboardStatus', name: 'DashboardStatus')
    DashboardType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudtrail#DashboardType', name: 'DashboardType')
    Dashboards = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudtrail#Dashboards', name: 'Dashboards')
    DataResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#DataResource', name: 'DataResource')
    DataResourceValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudtrail#DataResourceValues', name: 'DataResourceValues')
    DataResources = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudtrail#DataResources', name: 'DataResources')
    Date = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.cloudtrail#Date', name: 'Date')
    DelegatedAdminAccountLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#DelegatedAdminAccountLimitExceededException', name: 'DelegatedAdminAccountLimitExceededException', traits: {"aws.protocols#awsQueryError" => {"code" => "DelegatedAdminAccountLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DeleteChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#DeleteChannelRequest', name: 'DeleteChannelRequest')
    DeleteChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#DeleteChannelResponse', name: 'DeleteChannelResponse')
    DeleteDashboardRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#DeleteDashboardRequest', name: 'DeleteDashboardRequest')
    DeleteDashboardResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#DeleteDashboardResponse', name: 'DeleteDashboardResponse')
    DeleteEventDataStoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#DeleteEventDataStoreRequest', name: 'DeleteEventDataStoreRequest')
    DeleteEventDataStoreResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#DeleteEventDataStoreResponse', name: 'DeleteEventDataStoreResponse')
    DeleteResourcePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#DeleteResourcePolicyRequest', name: 'DeleteResourcePolicyRequest')
    DeleteResourcePolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#DeleteResourcePolicyResponse', name: 'DeleteResourcePolicyResponse')
    DeleteTrailRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#DeleteTrailRequest', name: 'DeleteTrailRequest')
    DeleteTrailResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#DeleteTrailResponse', name: 'DeleteTrailResponse')
    DeliveryS3Uri = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#DeliveryS3Uri', name: 'DeliveryS3Uri', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?$"})
    DeliveryStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudtrail#DeliveryStatus', name: 'DeliveryStatus')
    DeregisterOrganizationDelegatedAdminRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#DeregisterOrganizationDelegatedAdminRequest', name: 'DeregisterOrganizationDelegatedAdminRequest')
    DeregisterOrganizationDelegatedAdminResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#DeregisterOrganizationDelegatedAdminResponse', name: 'DeregisterOrganizationDelegatedAdminResponse')
    DescribeQueryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#DescribeQueryRequest', name: 'DescribeQueryRequest')
    DescribeQueryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#DescribeQueryResponse', name: 'DescribeQueryResponse')
    DescribeTrailsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#DescribeTrailsRequest', name: 'DescribeTrailsRequest')
    DescribeTrailsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#DescribeTrailsResponse', name: 'DescribeTrailsResponse')
    Destination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#Destination', name: 'Destination')
    DestinationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudtrail#DestinationType', name: 'DestinationType')
    Destinations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudtrail#Destinations', name: 'Destinations', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    DisableFederationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#DisableFederationRequest', name: 'DisableFederationRequest')
    DisableFederationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#DisableFederationResponse', name: 'DisableFederationResponse')
    Double = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.cloudtrail#Double', name: 'Double')
    EnableFederationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#EnableFederationRequest', name: 'EnableFederationRequest')
    EnableFederationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#EnableFederationResponse', name: 'EnableFederationResponse')
    ErrorCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#ErrorCode', name: 'ErrorCode', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[\\w\\d\\s_.,\\-:\\[\\]]+$"})
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#ErrorMessage', name: 'ErrorMessage', traits: {"smithy.api#length" => {"min" => 4, "max" => 1000}, "smithy.api#pattern" => ".*"})
    Event = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#Event', name: 'Event')
    EventCategory = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudtrail#EventCategory', name: 'EventCategory')
    EventDataStore = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#EventDataStore', name: 'EventDataStore')
    EventDataStoreARNInvalidException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#EventDataStoreARNInvalidException', name: 'EventDataStoreARNInvalidException', traits: {"aws.protocols#awsQueryError" => {"code" => "EventDataStoreARNInvalid", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EventDataStoreAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#EventDataStoreAlreadyExistsException', name: 'EventDataStoreAlreadyExistsException', traits: {"aws.protocols#awsQueryError" => {"code" => "EventDataStoreAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EventDataStoreArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#EventDataStoreArn', name: 'EventDataStoreArn', traits: {"smithy.api#length" => {"min" => 3, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9._/\\-:]+$"})
    EventDataStoreFederationEnabledException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#EventDataStoreFederationEnabledException', name: 'EventDataStoreFederationEnabledException', traits: {"aws.protocols#awsQueryError" => {"code" => "EventDataStoreFederationEnabled", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EventDataStoreHasOngoingImportException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#EventDataStoreHasOngoingImportException', name: 'EventDataStoreHasOngoingImportException', traits: {"aws.protocols#awsQueryError" => {"code" => "EventDataStoreHasOngoingImport", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EventDataStoreKmsKeyId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#EventDataStoreKmsKeyId', name: 'EventDataStoreKmsKeyId', traits: {"smithy.api#length" => {"min" => 1, "max" => 350}, "smithy.api#pattern" => "^[a-zA-Z0-9._/\\-:]+$"})
    EventDataStoreList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudtrail#EventDataStoreList', name: 'EventDataStoreList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    EventDataStoreMaxLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#EventDataStoreMaxLimitExceededException', name: 'EventDataStoreMaxLimitExceededException', traits: {"aws.protocols#awsQueryError" => {"code" => "EventDataStoreMaxLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EventDataStoreName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#EventDataStoreName', name: 'EventDataStoreName', traits: {"smithy.api#length" => {"min" => 3, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9._\\-]+$"})
    EventDataStoreNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#EventDataStoreNotFoundException', name: 'EventDataStoreNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "EventDataStoreNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    EventDataStoreStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudtrail#EventDataStoreStatus', name: 'EventDataStoreStatus')
    EventDataStoreTerminationProtectedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#EventDataStoreTerminationProtectedException', name: 'EventDataStoreTerminationProtectedException', traits: {"aws.protocols#awsQueryError" => {"code" => "EventDataStoreTerminationProtectedException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EventDataStores = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudtrail#EventDataStores', name: 'EventDataStores')
    EventName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#EventName', name: 'EventName', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9_]+$"})
    EventSelector = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#EventSelector', name: 'EventSelector')
    EventSelectors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudtrail#EventSelectors', name: 'EventSelectors')
    EventSource = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#EventSource', name: 'EventSource', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-z0-9_-]+\\.amazonaws\\.com$"})
    EventsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudtrail#EventsList', name: 'EventsList')
    ExcludeManagementEventSources = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudtrail#ExcludeManagementEventSources', name: 'ExcludeManagementEventSources')
    FederationRoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#FederationRoleArn', name: 'FederationRoleArn', traits: {"smithy.api#length" => {"min" => 3, "max" => 125}, "smithy.api#pattern" => "^[a-zA-Z0-9._/\\-:@=\\+,\\.]+$"})
    FederationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudtrail#FederationStatus', name: 'FederationStatus')
    GenerateQueryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#GenerateQueryRequest', name: 'GenerateQueryRequest')
    GenerateQueryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#GenerateQueryResponse', name: 'GenerateQueryResponse')
    GenerateResponseException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#GenerateResponseException', name: 'GenerateResponseException', traits: {"aws.protocols#awsQueryError" => {"code" => "GenerateResponse", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    GetChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#GetChannelRequest', name: 'GetChannelRequest')
    GetChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#GetChannelResponse', name: 'GetChannelResponse')
    GetDashboardRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#GetDashboardRequest', name: 'GetDashboardRequest')
    GetDashboardResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#GetDashboardResponse', name: 'GetDashboardResponse')
    GetEventConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#GetEventConfigurationRequest', name: 'GetEventConfigurationRequest')
    GetEventConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#GetEventConfigurationResponse', name: 'GetEventConfigurationResponse')
    GetEventDataStoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#GetEventDataStoreRequest', name: 'GetEventDataStoreRequest')
    GetEventDataStoreResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#GetEventDataStoreResponse', name: 'GetEventDataStoreResponse')
    GetEventSelectorsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#GetEventSelectorsRequest', name: 'GetEventSelectorsRequest')
    GetEventSelectorsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#GetEventSelectorsResponse', name: 'GetEventSelectorsResponse')
    GetImportRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#GetImportRequest', name: 'GetImportRequest')
    GetImportResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#GetImportResponse', name: 'GetImportResponse')
    GetInsightSelectorsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#GetInsightSelectorsRequest', name: 'GetInsightSelectorsRequest')
    GetInsightSelectorsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#GetInsightSelectorsResponse', name: 'GetInsightSelectorsResponse')
    GetQueryResultsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#GetQueryResultsRequest', name: 'GetQueryResultsRequest')
    GetQueryResultsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#GetQueryResultsResponse', name: 'GetQueryResultsResponse')
    GetResourcePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#GetResourcePolicyRequest', name: 'GetResourcePolicyRequest')
    GetResourcePolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#GetResourcePolicyResponse', name: 'GetResourcePolicyResponse')
    GetTrailRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#GetTrailRequest', name: 'GetTrailRequest')
    GetTrailResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#GetTrailResponse', name: 'GetTrailResponse')
    GetTrailStatusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#GetTrailStatusRequest', name: 'GetTrailStatusRequest')
    GetTrailStatusResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#GetTrailStatusResponse', name: 'GetTrailStatusResponse')
    ImportDestinations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudtrail#ImportDestinations', name: 'ImportDestinations', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ImportFailureList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudtrail#ImportFailureList', name: 'ImportFailureList')
    ImportFailureListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ImportFailureListItem', name: 'ImportFailureListItem')
    ImportFailureStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudtrail#ImportFailureStatus', name: 'ImportFailureStatus')
    ImportNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ImportNotFoundException', name: 'ImportNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "ImportNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ImportSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ImportSource', name: 'ImportSource')
    ImportStatistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ImportStatistics', name: 'ImportStatistics')
    ImportStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudtrail#ImportStatus', name: 'ImportStatus')
    ImportsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudtrail#ImportsList', name: 'ImportsList')
    ImportsListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ImportsListItem', name: 'ImportsListItem')
    InactiveEventDataStoreException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#InactiveEventDataStoreException', name: 'InactiveEventDataStoreException', traits: {"aws.protocols#awsQueryError" => {"code" => "InactiveEventDataStore", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InactiveQueryException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#InactiveQueryException', name: 'InactiveQueryException', traits: {"aws.protocols#awsQueryError" => {"code" => "InactiveQuery", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IngestionStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#IngestionStatus', name: 'IngestionStatus')
    InsightNotEnabledException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#InsightNotEnabledException', name: 'InsightNotEnabledException', traits: {"aws.protocols#awsQueryError" => {"code" => "InsightNotEnabled", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InsightSelector = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#InsightSelector', name: 'InsightSelector')
    InsightSelectors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudtrail#InsightSelectors', name: 'InsightSelectors')
    InsightType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudtrail#InsightType', name: 'InsightType')
    InsightsMetricDataType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudtrail#InsightsMetricDataType', name: 'InsightsMetricDataType')
    InsightsMetricMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudtrail#InsightsMetricMaxResults', name: 'InsightsMetricMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 21600}})
    InsightsMetricNextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#InsightsMetricNextToken', name: 'InsightsMetricNextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 5000}})
    InsightsMetricPeriod = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudtrail#InsightsMetricPeriod', name: 'InsightsMetricPeriod', traits: {"smithy.api#range" => {"min" => 60, "max" => 3600}})
    InsightsMetricValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudtrail#InsightsMetricValues', name: 'InsightsMetricValues')
    InsufficientDependencyServiceAccessPermissionException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#InsufficientDependencyServiceAccessPermissionException', name: 'InsufficientDependencyServiceAccessPermissionException', traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientDependencyServiceAccessPermission", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InsufficientEncryptionPolicyException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#InsufficientEncryptionPolicyException', name: 'InsufficientEncryptionPolicyException', traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientEncryptionPolicy", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InsufficientIAMAccessPermissionException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#InsufficientIAMAccessPermissionException', name: 'InsufficientIAMAccessPermissionException', traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientIAMAccessPermission", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InsufficientS3BucketPolicyException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#InsufficientS3BucketPolicyException', name: 'InsufficientS3BucketPolicyException', traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientS3BucketPolicy", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    InsufficientSnsTopicPolicyException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#InsufficientSnsTopicPolicyException', name: 'InsufficientSnsTopicPolicyException', traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientSnsTopicPolicy", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudtrail#Integer', name: 'Integer')
    InvalidCloudWatchLogsLogGroupArnException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#InvalidCloudWatchLogsLogGroupArnException', name: 'InvalidCloudWatchLogsLogGroupArnException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidCloudWatchLogsLogGroupArn", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidCloudWatchLogsRoleArnException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#InvalidCloudWatchLogsRoleArnException', name: 'InvalidCloudWatchLogsRoleArnException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidCloudWatchLogsRoleArn", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDateRangeException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#InvalidDateRangeException', name: 'InvalidDateRangeException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDateRange", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidEventCategoryException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#InvalidEventCategoryException', name: 'InvalidEventCategoryException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidEventCategory", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidEventDataStoreCategoryException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#InvalidEventDataStoreCategoryException', name: 'InvalidEventDataStoreCategoryException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidEventDataStoreCategory", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidEventDataStoreStatusException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#InvalidEventDataStoreStatusException', name: 'InvalidEventDataStoreStatusException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidEventDataStoreStatus", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidEventSelectorsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#InvalidEventSelectorsException', name: 'InvalidEventSelectorsException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidEventSelectors", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidHomeRegionException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#InvalidHomeRegionException', name: 'InvalidHomeRegionException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidHomeRegion", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidImportSourceException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#InvalidImportSourceException', name: 'InvalidImportSourceException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidImportSource", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidInsightSelectorsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#InvalidInsightSelectorsException', name: 'InvalidInsightSelectorsException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidInsightSelectors", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidKmsKeyIdException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#InvalidKmsKeyIdException', name: 'InvalidKmsKeyIdException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidKmsKeyId", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidLookupAttributesException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#InvalidLookupAttributesException', name: 'InvalidLookupAttributesException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidLookupAttributes", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidMaxResultsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#InvalidMaxResultsException', name: 'InvalidMaxResultsException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidMaxResults", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidNextTokenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#InvalidNextTokenException', name: 'InvalidNextTokenException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidNextToken", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterCombinationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#InvalidParameterCombinationException', name: 'InvalidParameterCombinationException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidParameterCombinationError", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#InvalidParameterException', name: 'InvalidParameterException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidParameter", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidQueryStatementException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#InvalidQueryStatementException', name: 'InvalidQueryStatementException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidQueryStatement", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidQueryStatusException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#InvalidQueryStatusException', name: 'InvalidQueryStatusException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidQueryStatus", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidS3BucketNameException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#InvalidS3BucketNameException', name: 'InvalidS3BucketNameException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidS3BucketName", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidS3PrefixException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#InvalidS3PrefixException', name: 'InvalidS3PrefixException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidS3Prefix", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSnsTopicNameException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#InvalidSnsTopicNameException', name: 'InvalidSnsTopicNameException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSnsTopicName", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSourceException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#InvalidSourceException', name: 'InvalidSourceException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSource", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidTagParameterException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#InvalidTagParameterException', name: 'InvalidTagParameterException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidTagParameter", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidTimeRangeException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#InvalidTimeRangeException', name: 'InvalidTimeRangeException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidTimeRange", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidTokenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#InvalidTokenException', name: 'InvalidTokenException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidToken", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidTrailNameException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#InvalidTrailNameException', name: 'InvalidTrailNameException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidTrailName", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KmsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#KmsException', name: 'KmsException', traits: {"aws.protocols#awsQueryError" => {"code" => "KmsException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KmsKeyDisabledException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#KmsKeyDisabledException', name: 'KmsKeyDisabledException', traits: {"aws.protocols#awsQueryError" => {"code" => "KmsKeyDisabled", "httpResponseCode" => 400}, "smithy.api#deprecated" => {}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KmsKeyNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#KmsKeyNotFoundException', name: 'KmsKeyNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "KmsKeyNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListChannelsMaxResultsCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudtrail#ListChannelsMaxResultsCount', name: 'ListChannelsMaxResultsCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListChannelsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ListChannelsRequest', name: 'ListChannelsRequest')
    ListChannelsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ListChannelsResponse', name: 'ListChannelsResponse')
    ListDashboardsMaxResultsCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudtrail#ListDashboardsMaxResultsCount', name: 'ListDashboardsMaxResultsCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListDashboardsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ListDashboardsRequest', name: 'ListDashboardsRequest')
    ListDashboardsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ListDashboardsResponse', name: 'ListDashboardsResponse')
    ListEventDataStoresMaxResultsCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudtrail#ListEventDataStoresMaxResultsCount', name: 'ListEventDataStoresMaxResultsCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListEventDataStoresRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ListEventDataStoresRequest', name: 'ListEventDataStoresRequest')
    ListEventDataStoresResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ListEventDataStoresResponse', name: 'ListEventDataStoresResponse')
    ListImportFailuresMaxResultsCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudtrail#ListImportFailuresMaxResultsCount', name: 'ListImportFailuresMaxResultsCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListImportFailuresRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ListImportFailuresRequest', name: 'ListImportFailuresRequest')
    ListImportFailuresResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ListImportFailuresResponse', name: 'ListImportFailuresResponse')
    ListImportsMaxResultsCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudtrail#ListImportsMaxResultsCount', name: 'ListImportsMaxResultsCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListImportsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ListImportsRequest', name: 'ListImportsRequest')
    ListImportsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ListImportsResponse', name: 'ListImportsResponse')
    ListInsightsMetricDataRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ListInsightsMetricDataRequest', name: 'ListInsightsMetricDataRequest')
    ListInsightsMetricDataResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ListInsightsMetricDataResponse', name: 'ListInsightsMetricDataResponse')
    ListPublicKeysRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ListPublicKeysRequest', name: 'ListPublicKeysRequest')
    ListPublicKeysResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ListPublicKeysResponse', name: 'ListPublicKeysResponse')
    ListQueriesMaxResultsCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudtrail#ListQueriesMaxResultsCount', name: 'ListQueriesMaxResultsCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListQueriesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ListQueriesRequest', name: 'ListQueriesRequest')
    ListQueriesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ListQueriesResponse', name: 'ListQueriesResponse')
    ListTagsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ListTagsRequest', name: 'ListTagsRequest')
    ListTagsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ListTagsResponse', name: 'ListTagsResponse')
    ListTrailsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ListTrailsRequest', name: 'ListTrailsRequest')
    ListTrailsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ListTrailsResponse', name: 'ListTrailsResponse')
    Location = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#Location', name: 'Location', traits: {"smithy.api#length" => {"min" => 3, "max" => 1024}, "smithy.api#pattern" => "^[a-zA-Z0-9._/\\-:*]+$"})
    Long = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudtrail#Long', name: 'Long')
    LookupAttribute = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#LookupAttribute', name: 'LookupAttribute')
    LookupAttributeKey = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudtrail#LookupAttributeKey', name: 'LookupAttributeKey')
    LookupAttributeValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#LookupAttributeValue', name: 'LookupAttributeValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    LookupAttributesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudtrail#LookupAttributesList', name: 'LookupAttributesList')
    LookupEventsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#LookupEventsRequest', name: 'LookupEventsRequest')
    LookupEventsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#LookupEventsResponse', name: 'LookupEventsResponse')
    MaxConcurrentQueriesException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#MaxConcurrentQueriesException', name: 'MaxConcurrentQueriesException', traits: {"aws.protocols#awsQueryError" => {"code" => "MaxConcurrentQueries", "httpResponseCode" => 429}, "smithy.api#error" => "client", "smithy.api#httpError" => 429})
    MaxEventSize = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudtrail#MaxEventSize', name: 'MaxEventSize')
    MaxQueryResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudtrail#MaxQueryResults', name: 'MaxQueryResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudtrail#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaximumNumberOfTrailsExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#MaximumNumberOfTrailsExceededException', name: 'MaximumNumberOfTrailsExceededException', traits: {"aws.protocols#awsQueryError" => {"code" => "MaximumNumberOfTrailsExceeded", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#NextToken', name: 'NextToken')
    NoManagementAccountSLRExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#NoManagementAccountSLRExistsException', name: 'NoManagementAccountSLRExistsException', traits: {"aws.protocols#awsQueryError" => {"code" => "NoManagementAccountSLRExists", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    NotOrganizationManagementAccountException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#NotOrganizationManagementAccountException', name: 'NotOrganizationManagementAccountException', traits: {"aws.protocols#awsQueryError" => {"code" => "NotOrganizationManagementAccount", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    NotOrganizationMasterAccountException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#NotOrganizationMasterAccountException', name: 'NotOrganizationMasterAccountException', traits: {"aws.protocols#awsQueryError" => {"code" => "NotOrganizationMasterAccount", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    OperationNotPermittedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#OperationNotPermittedException', name: 'OperationNotPermittedException', traits: {"aws.protocols#awsQueryError" => {"code" => "OperationNotPermitted", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Operator = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudtrail#Operator', name: 'Operator', traits: {"smithy.api#length" => {"min" => 1}})
    OperatorTargetList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudtrail#OperatorTargetList', name: 'OperatorTargetList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    OperatorTargetListMember = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#OperatorTargetListMember', name: 'OperatorTargetListMember', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    OperatorValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#OperatorValue', name: 'OperatorValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^.+$"})
    OrganizationNotInAllFeaturesModeException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#OrganizationNotInAllFeaturesModeException', name: 'OrganizationNotInAllFeaturesModeException', traits: {"aws.protocols#awsQueryError" => {"code" => "OrganizationNotInAllFeaturesMode", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    OrganizationsNotInUseException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#OrganizationsNotInUseException', name: 'OrganizationsNotInUseException', traits: {"aws.protocols#awsQueryError" => {"code" => "OrganizationsNotInUse", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    PaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 4, "max" => 1000}, "smithy.api#pattern" => ".*"})
    PartitionKey = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#PartitionKey', name: 'PartitionKey')
    PartitionKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudtrail#PartitionKeyList', name: 'PartitionKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    PartitionKeyName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#PartitionKeyName', name: 'PartitionKeyName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    PartitionKeyType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#PartitionKeyType', name: 'PartitionKeyType', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    Prompt = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#Prompt', name: 'Prompt', traits: {"smithy.api#length" => {"min" => 3, "max" => 500}, "smithy.api#pattern" => "^[ -~\\n]*$"})
    PublicKey = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#PublicKey', name: 'PublicKey')
    PublicKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudtrail#PublicKeyList', name: 'PublicKeyList')
    PutEventConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#PutEventConfigurationRequest', name: 'PutEventConfigurationRequest')
    PutEventConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#PutEventConfigurationResponse', name: 'PutEventConfigurationResponse')
    PutEventSelectorsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#PutEventSelectorsRequest', name: 'PutEventSelectorsRequest')
    PutEventSelectorsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#PutEventSelectorsResponse', name: 'PutEventSelectorsResponse')
    PutInsightSelectorsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#PutInsightSelectorsRequest', name: 'PutInsightSelectorsRequest')
    PutInsightSelectorsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#PutInsightSelectorsResponse', name: 'PutInsightSelectorsResponse')
    PutResourcePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#PutResourcePolicyRequest', name: 'PutResourcePolicyRequest')
    PutResourcePolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#PutResourcePolicyResponse', name: 'PutResourcePolicyResponse')
    Queries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudtrail#Queries', name: 'Queries')
    Query = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#Query', name: 'Query')
    QueryAlias = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#QueryAlias', name: 'QueryAlias', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9._\\-]*$"})
    QueryIdNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#QueryIdNotFoundException', name: 'QueryIdNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "QueryIdNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    QueryParameter = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#QueryParameter', name: 'QueryParameter', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => ".*"})
    QueryParameterKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#QueryParameterKey', name: 'QueryParameterKey', traits: {"smithy.api#length" => {"min" => 3, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9._/\\-:$]+$"})
    QueryParameterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#QueryParameterValue', name: 'QueryParameterValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9._/\\-:]+$"})
    QueryParameterValues = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cloudtrail#QueryParameterValues', name: 'QueryParameterValues')
    QueryParameters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudtrail#QueryParameters', name: 'QueryParameters', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    QueryResultColumn = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cloudtrail#QueryResultColumn', name: 'QueryResultColumn')
    QueryResultKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#QueryResultKey', name: 'QueryResultKey')
    QueryResultRow = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudtrail#QueryResultRow', name: 'QueryResultRow')
    QueryResultRows = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudtrail#QueryResultRows', name: 'QueryResultRows')
    QueryResultValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#QueryResultValue', name: 'QueryResultValue')
    QueryStatement = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#QueryStatement', name: 'QueryStatement', traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}, "smithy.api#pattern" => "^(?s)"})
    QueryStatistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#QueryStatistics', name: 'QueryStatistics')
    QueryStatisticsForDescribeQuery = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#QueryStatisticsForDescribeQuery', name: 'QueryStatisticsForDescribeQuery')
    QueryStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudtrail#QueryStatus', name: 'QueryStatus')
    ReadWriteType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudtrail#ReadWriteType', name: 'ReadWriteType')
    RefreshId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#RefreshId', name: 'RefreshId', traits: {"smithy.api#length" => {"min" => 10, "max" => 20}, "smithy.api#pattern" => "^\\d+$"})
    RefreshSchedule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#RefreshSchedule', name: 'RefreshSchedule')
    RefreshScheduleFrequency = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#RefreshScheduleFrequency', name: 'RefreshScheduleFrequency')
    RefreshScheduleFrequencyUnit = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudtrail#RefreshScheduleFrequencyUnit', name: 'RefreshScheduleFrequencyUnit')
    RefreshScheduleFrequencyValue = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudtrail#RefreshScheduleFrequencyValue', name: 'RefreshScheduleFrequencyValue')
    RefreshScheduleStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudtrail#RefreshScheduleStatus', name: 'RefreshScheduleStatus')
    RegisterOrganizationDelegatedAdminRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#RegisterOrganizationDelegatedAdminRequest', name: 'RegisterOrganizationDelegatedAdminRequest')
    RegisterOrganizationDelegatedAdminResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#RegisterOrganizationDelegatedAdminResponse', name: 'RegisterOrganizationDelegatedAdminResponse')
    RemoveTagsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#RemoveTagsRequest', name: 'RemoveTagsRequest')
    RemoveTagsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#RemoveTagsResponse', name: 'RemoveTagsResponse')
    RequestWidget = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#RequestWidget', name: 'RequestWidget')
    RequestWidgetList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudtrail#RequestWidgetList', name: 'RequestWidgetList')
    Resource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#Resource', name: 'Resource')
    ResourceARNNotValidException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ResourceARNNotValidException', name: 'ResourceARNNotValidException', traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceARNNotValid", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#ResourceArn', name: 'ResourceArn', traits: {"smithy.api#length" => {"min" => 3, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9._/\\-:]+$"})
    ResourceIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudtrail#ResourceIdList', name: 'ResourceIdList')
    ResourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudtrail#ResourceList', name: 'ResourceList')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourcePolicy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#ResourcePolicy', name: 'ResourcePolicy', traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}})
    ResourcePolicyNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ResourcePolicyNotFoundException', name: 'ResourcePolicyNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "ResourcePolicyNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePolicyNotValidException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ResourcePolicyNotValidException', name: 'ResourcePolicyNotValidException', traits: {"aws.protocols#awsQueryError" => {"code" => "ResourcePolicyNotValid", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceTag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ResourceTag', name: 'ResourceTag')
    ResourceTagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudtrail#ResourceTagList', name: 'ResourceTagList')
    ResourceTypeNotSupportedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ResourceTypeNotSupportedException', name: 'ResourceTypeNotSupportedException', traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceTypeNotSupported", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RestoreEventDataStoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#RestoreEventDataStoreRequest', name: 'RestoreEventDataStoreRequest')
    RestoreEventDataStoreResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#RestoreEventDataStoreResponse', name: 'RestoreEventDataStoreResponse')
    RetentionPeriod = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudtrail#RetentionPeriod', name: 'RetentionPeriod', traits: {"smithy.api#range" => {"min" => 7, "max" => 3653}})
    S3BucketDoesNotExistException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#S3BucketDoesNotExistException', name: 'S3BucketDoesNotExistException', traits: {"aws.protocols#awsQueryError" => {"code" => "S3BucketDoesNotExist", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    S3ImportSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#S3ImportSource', name: 'S3ImportSource')
    SampleQueryDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#SampleQueryDescription', name: 'SampleQueryDescription')
    SampleQueryName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#SampleQueryName', name: 'SampleQueryName')
    SampleQueryRelevance = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.cloudtrail#SampleQueryRelevance', name: 'SampleQueryRelevance', traits: {"smithy.api#default" => 0})
    SampleQuerySQL = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#SampleQuerySQL', name: 'SampleQuerySQL')
    SearchSampleQueriesMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudtrail#SearchSampleQueriesMaxResults', name: 'SearchSampleQueriesMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    SearchSampleQueriesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#SearchSampleQueriesRequest', name: 'SearchSampleQueriesRequest')
    SearchSampleQueriesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#SearchSampleQueriesResponse', name: 'SearchSampleQueriesResponse')
    SearchSampleQueriesSearchPhrase = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#SearchSampleQueriesSearchPhrase', name: 'SearchSampleQueriesSearchPhrase', traits: {"smithy.api#length" => {"min" => 2, "max" => 1000}, "smithy.api#pattern" => "^[ -~\\n]*$"})
    SearchSampleQueriesSearchResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#SearchSampleQueriesSearchResult', name: 'SearchSampleQueriesSearchResult')
    SearchSampleQueriesSearchResults = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudtrail#SearchSampleQueriesSearchResults', name: 'SearchSampleQueriesSearchResults')
    SelectorField = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#SelectorField', name: 'SelectorField', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[\\w|\\d|\\.|_]+$"})
    SelectorName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#SelectorName', name: 'SelectorName', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => ".*"})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"aws.protocols#awsQueryError" => {"code" => "ServiceQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Source = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#Source', name: 'Source', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => ".*"})
    SourceConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#SourceConfig', name: 'SourceConfig')
    StartDashboardRefreshRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#StartDashboardRefreshRequest', name: 'StartDashboardRefreshRequest')
    StartDashboardRefreshResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#StartDashboardRefreshResponse', name: 'StartDashboardRefreshResponse')
    StartEventDataStoreIngestionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#StartEventDataStoreIngestionRequest', name: 'StartEventDataStoreIngestionRequest')
    StartEventDataStoreIngestionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#StartEventDataStoreIngestionResponse', name: 'StartEventDataStoreIngestionResponse')
    StartImportRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#StartImportRequest', name: 'StartImportRequest')
    StartImportResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#StartImportResponse', name: 'StartImportResponse')
    StartLoggingRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#StartLoggingRequest', name: 'StartLoggingRequest')
    StartLoggingResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#StartLoggingResponse', name: 'StartLoggingResponse')
    StartQueryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#StartQueryRequest', name: 'StartQueryRequest')
    StartQueryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#StartQueryResponse', name: 'StartQueryResponse')
    StopEventDataStoreIngestionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#StopEventDataStoreIngestionRequest', name: 'StopEventDataStoreIngestionRequest')
    StopEventDataStoreIngestionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#StopEventDataStoreIngestionResponse', name: 'StopEventDataStoreIngestionResponse')
    StopImportRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#StopImportRequest', name: 'StopImportRequest')
    StopImportResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#StopImportResponse', name: 'StopImportResponse')
    StopLoggingRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#StopLoggingRequest', name: 'StopLoggingRequest')
    StopLoggingResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#StopLoggingResponse', name: 'StopLoggingResponse')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#String', name: 'String')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    TagsLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#TagsLimitExceededException', name: 'TagsLimitExceededException', traits: {"aws.protocols#awsQueryError" => {"code" => "TagsLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TagsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudtrail#TagsList', name: 'TagsList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TerminationProtectionEnabled = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.cloudtrail#TerminationProtectionEnabled', name: 'TerminationProtectionEnabled')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#ThrottlingException', name: 'ThrottlingException', traits: {"aws.protocols#awsQueryError" => {"code" => "ThrottlingException", "httpResponseCode" => 429}, "smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TimeOfDay = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#TimeOfDay', name: 'TimeOfDay', traits: {"smithy.api#pattern" => "^[0-9]{2}:[0-9]{2}$"})
    Timestamps = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudtrail#Timestamps', name: 'Timestamps')
    Trail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#Trail', name: 'Trail')
    TrailAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#TrailAlreadyExistsException', name: 'TrailAlreadyExistsException', traits: {"aws.protocols#awsQueryError" => {"code" => "TrailAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TrailInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#TrailInfo', name: 'TrailInfo')
    TrailList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudtrail#TrailList', name: 'TrailList')
    TrailNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudtrail#TrailNameList', name: 'TrailNameList')
    TrailNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#TrailNotFoundException', name: 'TrailNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "TrailNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    TrailNotProvidedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#TrailNotProvidedException', name: 'TrailNotProvidedException', traits: {"aws.protocols#awsQueryError" => {"code" => "TrailNotProvided", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Trails = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudtrail#Trails', name: 'Trails')
    Type = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudtrail#Type', name: 'Type')
    UUID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#UUID', name: 'UUID', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-f0-9\\-]+$"})
    UnsupportedOperationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#UnsupportedOperationException', name: 'UnsupportedOperationException', traits: {"aws.protocols#awsQueryError" => {"code" => "UnsupportedOperation", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UpdateChannelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#UpdateChannelRequest', name: 'UpdateChannelRequest')
    UpdateChannelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#UpdateChannelResponse', name: 'UpdateChannelResponse')
    UpdateDashboardRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#UpdateDashboardRequest', name: 'UpdateDashboardRequest')
    UpdateDashboardResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#UpdateDashboardResponse', name: 'UpdateDashboardResponse')
    UpdateEventDataStoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#UpdateEventDataStoreRequest', name: 'UpdateEventDataStoreRequest')
    UpdateEventDataStoreResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#UpdateEventDataStoreResponse', name: 'UpdateEventDataStoreResponse')
    UpdateTrailRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#UpdateTrailRequest', name: 'UpdateTrailRequest')
    UpdateTrailResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#UpdateTrailResponse', name: 'UpdateTrailResponse')
    ViewPropertiesKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#ViewPropertiesKey', name: 'ViewPropertiesKey', traits: {"smithy.api#length" => {"min" => 3, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9._\\-]+$"})
    ViewPropertiesMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cloudtrail#ViewPropertiesMap', name: 'ViewPropertiesMap')
    ViewPropertiesValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudtrail#ViewPropertiesValue', name: 'ViewPropertiesValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9._\\- ]+$"})
    Widget = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudtrail#Widget', name: 'Widget')
    WidgetList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudtrail#WidgetList', name: 'WidgetList')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountHasOngoingImportException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    AccountHasOngoingImportException.type = Types::AccountHasOngoingImportException
    AccountNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    AccountNotFoundException.type = Types::AccountNotFoundException
    AccountNotRegisteredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    AccountNotRegisteredException.type = Types::AccountNotRegisteredException
    AccountRegisteredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    AccountRegisteredException.type = Types::AccountRegisteredException
    AddTagsRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the trail, event data store, dashboard, or channel to which one or more tags will be\n         added.</p>\n         <p>The format of a trail ARN is:\n         <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>\n         </p>\n         <p>The format of an event data store ARN is:\n         <code>arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE</code>\n         </p>\n         <p>The format of a dashboard ARN is: <code>arn:aws:cloudtrail:us-east-1:123456789012:dashboard/exampleDash</code>\n         </p>\n         <p>The format of a channel ARN is:\n         <code>arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890</code>\n         </p>", "smithy.api#required" => {}}))
    AddTagsRequest.add_member(:tags_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsList, location_name: 'TagsList', traits: {"smithy.api#documentation" => "<p>Contains a list of tags, up to a limit of 50</p>", "smithy.api#required" => {}}))
    AddTagsRequest.type = Types::AddTagsRequest
    AddTagsResponse.type = Types::AddTagsResponse
    AdvancedEventSelector.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectorName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>An optional, descriptive name for an advanced event selector, such as \"Log data events\n         for only two S3 buckets\".</p>"}))
    AdvancedEventSelector.add_member(:field_selectors, Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedFieldSelectors, location_name: 'FieldSelectors', traits: {"smithy.api#documentation" => "<p>Contains all selector statements in an advanced event selector.</p>", "smithy.api#required" => {}}))
    AdvancedEventSelector.type = Types::AdvancedEventSelector
    AdvancedEventSelectors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedEventSelector)
    AdvancedFieldSelector.add_member(:field, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectorField, location_name: 'Field', traits: {"smithy.api#documentation" => "<p> A field in a CloudTrail event record on which to filter events to be logged. For\n         event data stores for CloudTrail Insights events, Config configuration items, Audit Manager evidence, or events outside of Amazon Web Services, the field is used only for\n         selecting events as filtering is not supported.</p>\n         <p>For more information, see \n         <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_AdvancedFieldSelector.html\">AdvancedFieldSelector</a> \n         in the <i>CloudTrail API Reference</i>.</p>\n         <note>\n            <p>Selectors don't support the use of wildcards like <code>*</code> . To match multiple values with a single condition, \n            you may use <code>StartsWith</code>, <code>EndsWith</code>, <code>NotStartsWith</code>, or <code>NotEndsWith</code> to explicitly match the beginning or end of the event field.</p>\n         </note>", "smithy.api#required" => {}}))
    AdvancedFieldSelector.add_member(:equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Operator, location_name: 'Equals', traits: {"smithy.api#documentation" => "<p> An operator that includes events that match the exact value of the event record field\n         specified as the value of <code>Field</code>. This is the only valid operator that you can\n         use with the <code>readOnly</code>, <code>eventCategory</code>, and\n            <code>resources.type</code> fields.</p>"}))
    AdvancedFieldSelector.add_member(:starts_with, Smithy::Schema::Shapes::ShapeRef.new(shape: Operator, location_name: 'StartsWith', traits: {"smithy.api#documentation" => "<p>An operator that includes events that match the first few characters of the event record\n         field specified as the value of <code>Field</code>.</p>"}))
    AdvancedFieldSelector.add_member(:ends_with, Smithy::Schema::Shapes::ShapeRef.new(shape: Operator, location_name: 'EndsWith', traits: {"smithy.api#documentation" => "<p>An operator that includes events that match the last few characters of the event record\n         field specified as the value of <code>Field</code>.</p>"}))
    AdvancedFieldSelector.add_member(:not_equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Operator, location_name: 'NotEquals', traits: {"smithy.api#documentation" => "<p> An operator that excludes events that match the exact value of the event record field\n         specified as the value of <code>Field</code>. </p>"}))
    AdvancedFieldSelector.add_member(:not_starts_with, Smithy::Schema::Shapes::ShapeRef.new(shape: Operator, location_name: 'NotStartsWith', traits: {"smithy.api#documentation" => "<p> An operator that excludes events that match the first few characters of the event\n         record field specified as the value of <code>Field</code>. </p>"}))
    AdvancedFieldSelector.add_member(:not_ends_with, Smithy::Schema::Shapes::ShapeRef.new(shape: Operator, location_name: 'NotEndsWith', traits: {"smithy.api#documentation" => "<p> An operator that excludes events that match the last few characters of the event record\n         field specified as the value of <code>Field</code>. </p>"}))
    AdvancedFieldSelector.type = Types::AdvancedFieldSelector
    AdvancedFieldSelectors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedFieldSelector)
    BillingMode.add_member(:extendable_retention_pricing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXTENDABLE_RETENTION_PRICING', traits: {"smithy.api#enumValue" => "EXTENDABLE_RETENTION_PRICING"}))
    BillingMode.add_member(:fixed_retention_pricing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIXED_RETENTION_PRICING', traits: {"smithy.api#enumValue" => "FIXED_RETENTION_PRICING"}))
    CancelQueryRequest.add_member(:event_data_store, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreArn, location_name: 'EventDataStore', traits: {"smithy.api#deprecated" => {"message" => "EventDataStore is no longer required by CancelQueryRequest"}, "smithy.api#documentation" => "<p>The ARN (or the ID suffix of the ARN) of an event data store on which the specified\n         query is running.</p>"}))
    CancelQueryRequest.add_member(:query_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'QueryId', traits: {"smithy.api#documentation" => "<p>The ID of the query that you want to cancel. The <code>QueryId</code> comes from the\n         response of a <code>StartQuery</code> operation.</p>", "smithy.api#required" => {}}))
    CancelQueryRequest.add_member(:event_data_store_owner_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'EventDataStoreOwnerAccountId', traits: {"smithy.api#documentation" => "<p>\nThe account ID of the event data store owner.\n</p>"}))
    CancelQueryRequest.type = Types::CancelQueryRequest
    CancelQueryResponse.add_member(:query_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'QueryId', traits: {"smithy.api#documentation" => "<p>The ID of the canceled query.</p>", "smithy.api#required" => {}}))
    CancelQueryResponse.add_member(:query_status, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStatus, location_name: 'QueryStatus', traits: {"smithy.api#documentation" => "<p>Shows the status of a query after a <code>CancelQuery</code> request. Typically, the\n         values shown are either <code>RUNNING</code> or <code>CANCELLED</code>.</p>", "smithy.api#required" => {}}))
    CancelQueryResponse.add_member(:event_data_store_owner_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'EventDataStoreOwnerAccountId', traits: {"smithy.api#documentation" => "<p>\n   The account ID of the event data store owner.\n</p>"}))
    CancelQueryResponse.type = Types::CancelQueryResponse
    CannotDelegateManagementAccountException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    CannotDelegateManagementAccountException.type = Types::CannotDelegateManagementAccountException
    Channel.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a channel.</p>"}))
    Channel.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p> The name of the CloudTrail channel. For service-linked channels, the name is\n            <code>aws-service-channel/service-name/custom-suffix</code> where\n            <code>service-name</code> represents the name of the Amazon Web Services service that\n         created the channel and <code>custom-suffix</code> represents the suffix created by the\n            Amazon Web Services service. </p>"}))
    Channel.type = Types::Channel
    ChannelARNInvalidException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    ChannelARNInvalidException.type = Types::ChannelARNInvalidException
    ChannelAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    ChannelAlreadyExistsException.type = Types::ChannelAlreadyExistsException
    ChannelExistsForEDSException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    ChannelExistsForEDSException.type = Types::ChannelExistsForEDSException
    ChannelMaxLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    ChannelMaxLimitExceededException.type = Types::ChannelMaxLimitExceededException
    ChannelNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    ChannelNotFoundException.type = Types::ChannelNotFoundException
    Channels.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Channel)
    CloudTrailARNInvalidException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    CloudTrailARNInvalidException.type = Types::CloudTrailARNInvalidException
    CloudTrailAccessNotEnabledException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    CloudTrailAccessNotEnabledException.type = Types::CloudTrailAccessNotEnabledException
    CloudTrailInvalidClientTokenIdException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    CloudTrailInvalidClientTokenIdException.type = Types::CloudTrailInvalidClientTokenIdException
    CloudWatchLogsDeliveryUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    CloudWatchLogsDeliveryUnavailableException.type = Types::CloudWatchLogsDeliveryUnavailableException
    ConcurrentModificationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    ConflictException.type = Types::ConflictException
    ContextKeySelector.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Specifies the type of the event record field in ContextKeySelector. Valid values include RequestContext, TagContext.</p>", "smithy.api#required" => {}}))
    ContextKeySelector.add_member(:equals, Smithy::Schema::Shapes::ShapeRef.new(shape: OperatorTargetList, location_name: 'Equals', traits: {"smithy.api#documentation" => "<p>A list of keys defined by Type to be included in CloudTrail enriched events. </p>", "smithy.api#required" => {}}))
    ContextKeySelector.type = Types::ContextKeySelector
    ContextKeySelectors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ContextKeySelector)
    CreateChannelRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the channel.</p>", "smithy.api#required" => {}}))
    CreateChannelRequest.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'Source', traits: {"smithy.api#documentation" => "<p>The name of the partner or external event source. You cannot change this name after you create the \n         channel. A maximum of one channel is allowed per source.</p>\n         <p>\n         A source can be either <code>Custom</code> for all valid non-Amazon Web Services\n         events, or the name of a partner event source. For information about the source names for available partners, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-event-data-store-integration.html#cloudtrail-lake-partner-information\">Additional information about integration partners</a> in the CloudTrail User Guide.\n      </p>", "smithy.api#required" => {}}))
    CreateChannelRequest.add_member(:destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: Destinations, location_name: 'Destinations', traits: {"smithy.api#documentation" => "<p>One or more event data stores to which events arriving through a channel will be logged.</p>", "smithy.api#required" => {}}))
    CreateChannelRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsList, location_name: 'Tags'))
    CreateChannelRequest.type = Types::CreateChannelRequest
    CreateChannelResponse.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the new channel.</p>"}))
    CreateChannelResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the new channel.</p>"}))
    CreateChannelResponse.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'Source', traits: {"smithy.api#documentation" => "<p>The partner or external event source name.</p>"}))
    CreateChannelResponse.add_member(:destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: Destinations, location_name: 'Destinations', traits: {"smithy.api#documentation" => "<p>The event data stores that log the events arriving through the channel.</p>"}))
    CreateChannelResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsList, location_name: 'Tags'))
    CreateChannelResponse.type = Types::CreateChannelResponse
    CreateDashboardRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>\n   The name of the dashboard. The name must be unique to your account.\n</p>\n         <p>To create the Highlights dashboard, the name must be <code>AWSCloudTrail-Highlights</code>.</p>", "smithy.api#required" => {}}))
    CreateDashboardRequest.add_member(:refresh_schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshSchedule, location_name: 'RefreshSchedule', traits: {"smithy.api#documentation" => "<p>\n   The refresh schedule configuration for the dashboard.\n</p>\n         <p>To create the Highlights dashboard, you must set a refresh schedule and set the <code>Status</code> to <code>ENABLED</code>. The <code>Unit</code> for the refresh schedule must be <code>HOURS</code> \n   and the <code>Value</code> must be <code>6</code>.</p>"}))
    CreateDashboardRequest.add_member(:tags_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsList, location_name: 'TagsList'))
    CreateDashboardRequest.add_member(:termination_protection_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: TerminationProtectionEnabled, location_name: 'TerminationProtectionEnabled', traits: {"smithy.api#documentation" => "<p>\n   Specifies whether termination protection is enabled for the dashboard. If termination protection is enabled, you cannot delete the dashboard until termination protection is disabled.\n</p>"}))
    CreateDashboardRequest.add_member(:widgets, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestWidgetList, location_name: 'Widgets', traits: {"smithy.api#documentation" => "<p>\nAn array of widgets for a custom dashboard. A custom dashboard can have a maximum of ten widgets.\n</p>\n         <p>You do not need to specify widgets for the Highlights dashboard.</p>"}))
    CreateDashboardRequest.type = Types::CreateDashboardRequest
    CreateDashboardResponse.add_member(:dashboard_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardArn, location_name: 'DashboardArn', traits: {"smithy.api#documentation" => "<p>\nThe ARN for the dashboard.\n</p>"}))
    CreateDashboardResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>\nThe name of the dashboard.\n</p>"}))
    CreateDashboardResponse.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>\nThe dashboard type.\n</p>"}))
    CreateDashboardResponse.add_member(:widgets, Smithy::Schema::Shapes::ShapeRef.new(shape: WidgetList, location_name: 'Widgets', traits: {"smithy.api#documentation" => "<p>\nAn array of widgets for the dashboard.\n</p>"}))
    CreateDashboardResponse.add_member(:tags_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsList, location_name: 'TagsList'))
    CreateDashboardResponse.add_member(:refresh_schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshSchedule, location_name: 'RefreshSchedule', traits: {"smithy.api#documentation" => "<p>\nThe refresh schedule for the dashboard, if configured.\n</p>"}))
    CreateDashboardResponse.add_member(:termination_protection_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: TerminationProtectionEnabled, location_name: 'TerminationProtectionEnabled', traits: {"smithy.api#documentation" => "<p>\n   Indicates whether termination protection is enabled for the dashboard.\n</p>"}))
    CreateDashboardResponse.type = Types::CreateDashboardResponse
    CreateEventDataStoreRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the event data store.</p>", "smithy.api#required" => {}}))
    CreateEventDataStoreRequest.add_member(:advanced_event_selectors, Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedEventSelectors, location_name: 'AdvancedEventSelectors', traits: {"smithy.api#documentation" => "<p>The advanced event selectors to use to select the events for the data store. You can\n         configure up to five advanced event selectors for each event data store.</p>\n         <p> For more information about how to use advanced event selectors to log CloudTrail\n         events, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html#creating-data-event-selectors-advanced\">Log events by using advanced event selectors</a> in the CloudTrail User Guide.</p>\n         <p>For more information about how to use advanced event selectors to include Config configuration items in your event data store, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/lake-eds-cli.html#lake-cli-create-eds-config\">Create an event data store for Config configuration\n            items</a> in the CloudTrail User Guide.</p>\n         <p>For more information about how to use advanced event selectors to include events outside of Amazon Web Services events in your event data store, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/lake-integrations-cli.html#lake-cli-create-integration\">Create an integration to log events from outside Amazon Web Services</a> in the CloudTrail User Guide.</p>"}))
    CreateEventDataStoreRequest.add_member(:multi_region_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'MultiRegionEnabled', traits: {"smithy.api#documentation" => "<p>Specifies whether the event data store includes events from all Regions, or only from\n         the Region in which the event data store is created.</p>"}))
    CreateEventDataStoreRequest.add_member(:organization_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'OrganizationEnabled', traits: {"smithy.api#documentation" => "<p>Specifies whether an event data store collects events logged for an organization in\n            Organizations.</p>"}))
    CreateEventDataStoreRequest.add_member(:retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'RetentionPeriod', traits: {"smithy.api#documentation" => "<p>The retention period of the event data store, in days. If <code>BillingMode</code> is set to <code>EXTENDABLE_RETENTION_PRICING</code>, you can set a retention period of\n         up to 3653 days, the equivalent of 10 years. If <code>BillingMode</code> is set to <code>FIXED_RETENTION_PRICING</code>, you can set a retention period of\n         up to 2557 days, the equivalent of seven years.</p>\n         <p>CloudTrail  Lake determines whether to retain an event by checking if the <code>eventTime</code> \n         of the event is within the specified retention period. For example, if you set a retention period of 90 days, CloudTrail will remove events \n      when the <code>eventTime</code> is older than 90 days.</p>\n         <note>\n            <p>If you plan to copy trail events to this event data store, we recommend \n            that you consider both the age of the events that you\n            want to copy as well as how long you want to keep the copied events\n            in your event data store. For example, if you copy trail events that are 5 years old \n            and specify a retention period of 7 years, the event data store \n            will retain those events for two years.</p>\n         </note>"}))
    CreateEventDataStoreRequest.add_member(:termination_protection_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: TerminationProtectionEnabled, location_name: 'TerminationProtectionEnabled', traits: {"smithy.api#documentation" => "<p>Specifies whether termination protection is enabled for the event data store. If\n         termination protection is enabled, you cannot delete the event data store until termination\n         protection is disabled.</p>"}))
    CreateEventDataStoreRequest.add_member(:tags_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsList, location_name: 'TagsList'))
    CreateEventDataStoreRequest.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreKmsKeyId, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>Specifies the KMS key ID to use to encrypt the events delivered by\n            CloudTrail. The value can be an alias name prefixed by <code>alias/</code>, a\n         fully specified ARN to an alias, a fully specified ARN to a key, or a globally unique\n         identifier.</p>\n         <important>\n            <p>Disabling or deleting the KMS key, or removing CloudTrail\n            permissions on the key, prevents CloudTrail from logging events to the event data\n            store, and prevents users from querying the data in the event data store that was\n            encrypted with the key. After you associate an event data store with a KMS key, the KMS key cannot be removed or changed. Before you\n            disable or delete a KMS key that you are using with an event data store,\n            delete or back up your event data store.</p>\n         </important>\n         <p>CloudTrail also supports KMS multi-Region keys. For more\n         information about multi-Region keys, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html\">Using multi-Region\n            keys</a> in the <i>Key Management Service Developer Guide</i>.</p>\n         <p>Examples:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>alias/MyAliasName</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>arn:aws:kms:us-east-2:123456789012:alias/MyAliasName</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>12345678-1234-1234-1234-123456789012</code>\n               </p>\n            </li>\n         </ul>"}))
    CreateEventDataStoreRequest.add_member(:start_ingestion, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'StartIngestion', traits: {"smithy.api#documentation" => "<p>Specifies whether the event data store should start ingesting live events. The default is true.</p>"}))
    CreateEventDataStoreRequest.add_member(:billing_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingMode, location_name: 'BillingMode', traits: {"smithy.api#documentation" => "<p>The billing mode for the event data store determines the cost for ingesting events and the default and maximum retention period for the event data store.</p>\n         <p>The following are the possible values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>EXTENDABLE_RETENTION_PRICING</code> - This billing mode is generally recommended if you want a flexible retention period of up to 3653 days (about 10 years). \n                The default retention period for this billing mode is 366 days.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FIXED_RETENTION_PRICING</code> - This billing mode is recommended if you expect to ingest more than 25 TB of event data per month and need a retention period of up to 2557 days (about 7 years). \n                The default retention period for this billing mode is 2557 days.</p>\n            </li>\n         </ul>\n         <p>The default value is <code>EXTENDABLE_RETENTION_PRICING</code>.</p>\n         <p>For more information about CloudTrail pricing, \n         see <a href=\"http://aws.amazon.com/cloudtrail/pricing/\">CloudTrail Pricing</a> and \n         <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-lake-manage-costs.html\">Managing CloudTrail Lake costs</a>.</p>"}))
    CreateEventDataStoreRequest.type = Types::CreateEventDataStoreRequest
    CreateEventDataStoreResponse.add_member(:event_data_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreArn, location_name: 'EventDataStoreArn', traits: {"smithy.api#documentation" => "<p>The ARN of the event data store.</p>"}))
    CreateEventDataStoreResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the event data store.</p>"}))
    CreateEventDataStoreResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of event data store creation.</p>"}))
    CreateEventDataStoreResponse.add_member(:advanced_event_selectors, Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedEventSelectors, location_name: 'AdvancedEventSelectors', traits: {"smithy.api#documentation" => "<p>The advanced event selectors that were used to select the events for the data\n         store.</p>"}))
    CreateEventDataStoreResponse.add_member(:multi_region_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'MultiRegionEnabled', traits: {"smithy.api#documentation" => "<p>Indicates whether the event data store collects events from all Regions, or only from\n         the Region in which it was created.</p>"}))
    CreateEventDataStoreResponse.add_member(:organization_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'OrganizationEnabled', traits: {"smithy.api#documentation" => "<p>Indicates whether an event data store is collecting logged events for an organization in\n            Organizations.</p>"}))
    CreateEventDataStoreResponse.add_member(:retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'RetentionPeriod', traits: {"smithy.api#documentation" => "<p>The retention period of an event data store, in days.</p>"}))
    CreateEventDataStoreResponse.add_member(:termination_protection_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: TerminationProtectionEnabled, location_name: 'TerminationProtectionEnabled', traits: {"smithy.api#documentation" => "<p>Indicates whether termination protection is enabled for the event data store.</p>"}))
    CreateEventDataStoreResponse.add_member(:tags_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsList, location_name: 'TagsList'))
    CreateEventDataStoreResponse.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp that shows when the event data store was created.</p>"}))
    CreateEventDataStoreResponse.add_member(:updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'UpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp that shows when an event data store was updated, if applicable.\n            <code>UpdatedTimestamp</code> is always either the same or newer than the time shown in\n            <code>CreatedTimestamp</code>.</p>"}))
    CreateEventDataStoreResponse.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreKmsKeyId, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>Specifies the KMS key ID that encrypts the events delivered by CloudTrail. The value is a fully specified ARN to a KMS key in the\n         following format.</p>\n         <p>\n            <code>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</code>\n         </p>"}))
    CreateEventDataStoreResponse.add_member(:billing_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingMode, location_name: 'BillingMode', traits: {"smithy.api#documentation" => "<p>The billing mode for the event data store.</p>"}))
    CreateEventDataStoreResponse.type = Types::CreateEventDataStoreResponse
    CreateTrailRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Specifies the name of the trail. The name must meet the following requirements:</p>\n         <ul>\n            <li>\n               <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores\n               (_), or dashes (-)</p>\n            </li>\n            <li>\n               <p>Start with a letter or number, and end with a letter or number</p>\n            </li>\n            <li>\n               <p>Be between 3 and 128 characters</p>\n            </li>\n            <li>\n               <p>Have no adjacent periods, underscores or dashes. Names like\n                  <code>my-_namespace</code> and <code>my--namespace</code> are not valid.</p>\n            </li>\n            <li>\n               <p>Not be in IP address format (for example, 192.168.5.4)</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateTrailRequest.add_member(:s3_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3BucketName', traits: {"smithy.api#documentation" => "<p>Specifies the name of the Amazon S3 bucket designated for publishing log files. \n         For information about bucket naming rules, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html\">Bucket naming rules</a> \n         in the <i>Amazon Simple Storage Service User Guide</i>.\n        </p>", "smithy.api#required" => {}}))
    CreateTrailRequest.add_member(:s3_key_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3KeyPrefix', traits: {"smithy.api#documentation" => "<p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you\n         have designated for log file delivery. For more information, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/get-and-view-cloudtrail-log-files.html#cloudtrail-find-log-files\">Finding Your CloudTrail Log Files</a>. The maximum length is 200\n         characters.</p>"}))
    CreateTrailRequest.add_member(:sns_topic_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnsTopicName', traits: {"smithy.api#documentation" => "<p>Specifies the name or ARN of the Amazon SNS topic defined for notification of log file\n         delivery. The maximum length is 256 characters.</p>"}))
    CreateTrailRequest.add_member(:include_global_service_events, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IncludeGlobalServiceEvents', traits: {"smithy.api#documentation" => "<p>Specifies whether the trail is publishing events from global services such as IAM to the\n         log files.</p>"}))
    CreateTrailRequest.add_member(:is_multi_region_trail, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsMultiRegionTrail', traits: {"smithy.api#documentation" => "<p>Specifies whether the trail is created in the current Region or in all Regions. The\n         default is false, which creates a trail only in the Region where you are signed in. As a\n         best practice, consider creating trails that log events in all Regions.</p>"}))
    CreateTrailRequest.add_member(:enable_log_file_validation, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnableLogFileValidation', traits: {"smithy.api#documentation" => "<p>Specifies whether log file integrity validation is enabled. The default is false.</p>\n         <note>\n            <p>When you disable log file integrity validation, the chain of digest files is broken\n            after one hour. CloudTrail does not create digest files for log files that were\n            delivered during a period in which log file integrity validation was disabled. For\n            example, if you enable log file integrity validation at noon on January 1, disable it at\n            noon on January 2, and re-enable it at noon on January 10, digest files will not be\n            created for the log files delivered from noon on January 2 to noon on January 10. The\n            same applies whenever you stop CloudTrail logging or delete a trail.</p>\n         </note>"}))
    CreateTrailRequest.add_member(:cloud_watch_logs_log_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CloudWatchLogsLogGroupArn', traits: {"smithy.api#documentation" => "<p>Specifies a log group name using an Amazon Resource Name (ARN), a unique identifier that\n         represents the log group to which CloudTrail logs will be delivered. You must use a\n         log group that exists in your account.</p>\n         <p>Not required unless you specify <code>CloudWatchLogsRoleArn</code>.</p>"}))
    CreateTrailRequest.add_member(:cloud_watch_logs_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CloudWatchLogsRoleArn', traits: {"smithy.api#documentation" => "<p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's\n         log group. You must use a role that exists in your account.</p>"}))
    CreateTrailRequest.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>Specifies the KMS key ID to use to encrypt the logs delivered by CloudTrail. The value can be an alias name prefixed by <code>alias/</code>, a fully\n         specified ARN to an alias, a fully specified ARN to a key, or a globally unique\n         identifier.</p>\n         <p>CloudTrail also supports KMS multi-Region keys. For more\n         information about multi-Region keys, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html\">Using multi-Region\n            keys</a> in the <i>Key Management Service Developer Guide</i>.</p>\n         <p>Examples:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>alias/MyAliasName</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>arn:aws:kms:us-east-2:123456789012:alias/MyAliasName</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>12345678-1234-1234-1234-123456789012</code>\n               </p>\n            </li>\n         </ul>"}))
    CreateTrailRequest.add_member(:is_organization_trail, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsOrganizationTrail', traits: {"smithy.api#documentation" => "<p>Specifies whether the trail is created for all accounts in an organization in Organizations, or only for the current Amazon Web Services account. The default is false,\n         and cannot be true unless the call is made on behalf of an Amazon Web Services account that\n         is the management account or delegated administrator account for an organization in Organizations.</p>"}))
    CreateTrailRequest.add_member(:tags_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsList, location_name: 'TagsList'))
    CreateTrailRequest.type = Types::CreateTrailRequest
    CreateTrailResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Specifies the name of the trail.</p>"}))
    CreateTrailResponse.add_member(:s3_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3BucketName', traits: {"smithy.api#documentation" => "<p>Specifies the name of the Amazon S3 bucket designated for publishing log\n         files.</p>"}))
    CreateTrailResponse.add_member(:s3_key_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3KeyPrefix', traits: {"smithy.api#documentation" => "<p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you\n         have designated for log file delivery. For more information, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/get-and-view-cloudtrail-log-files.html#cloudtrail-find-log-files\">Finding Your CloudTrail Log Files</a>.</p>"}))
    CreateTrailResponse.add_member(:sns_topic_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnsTopicName', traits: {"smithy.api#deprecated" => {}, "smithy.api#documentation" => "<p>This field is no longer in use. Use <code>SnsTopicARN</code>.</p>"}))
    CreateTrailResponse.add_member(:sns_topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnsTopicARN', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the Amazon SNS topic that CloudTrail uses to send\n         notifications when log files are delivered. The format of a topic ARN is:</p>\n         <p>\n            <code>arn:aws:sns:us-east-2:123456789012:MyTopic</code>\n         </p>"}))
    CreateTrailResponse.add_member(:include_global_service_events, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IncludeGlobalServiceEvents', traits: {"smithy.api#documentation" => "<p>Specifies whether the trail is publishing events from global services such as IAM to the\n         log files.</p>"}))
    CreateTrailResponse.add_member(:is_multi_region_trail, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsMultiRegionTrail', traits: {"smithy.api#documentation" => "<p>Specifies whether the trail exists in one Region or in all Regions.</p>"}))
    CreateTrailResponse.add_member(:trail_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TrailARN', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the trail that was created. The format of a trail ARN is:</p>\n         <p>\n            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>\n         </p>"}))
    CreateTrailResponse.add_member(:log_file_validation_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'LogFileValidationEnabled', traits: {"smithy.api#documentation" => "<p>Specifies whether log file integrity validation is enabled.</p>"}))
    CreateTrailResponse.add_member(:cloud_watch_logs_log_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CloudWatchLogsLogGroupArn', traits: {"smithy.api#documentation" => "<p>Specifies the Amazon Resource Name (ARN) of the log group to which CloudTrail\n         logs will be delivered.</p>"}))
    CreateTrailResponse.add_member(:cloud_watch_logs_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CloudWatchLogsRoleArn', traits: {"smithy.api#documentation" => "<p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's\n         log group.</p>"}))
    CreateTrailResponse.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>Specifies the KMS key ID that encrypts the events delivered by CloudTrail. The value is a fully specified ARN to a KMS key in the\n         following format.</p>\n         <p>\n            <code>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</code>\n         </p>"}))
    CreateTrailResponse.add_member(:is_organization_trail, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsOrganizationTrail', traits: {"smithy.api#documentation" => "<p>Specifies whether the trail is an organization trail.</p>"}))
    CreateTrailResponse.type = Types::CreateTrailResponse
    DashboardDetail.add_member(:dashboard_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardArn, location_name: 'DashboardArn', traits: {"smithy.api#documentation" => "<p>\nThe ARN for the dashboard.\n</p>"}))
    DashboardDetail.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>\nThe type of dashboard.\n</p>"}))
    DashboardDetail.type = Types::DashboardDetail
    DashboardStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    DashboardStatus.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    DashboardStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    DashboardStatus.add_member(:updated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATED', traits: {"smithy.api#enumValue" => "UPDATED"}))
    DashboardStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    DashboardType.add_member(:managed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANAGED', traits: {"smithy.api#enumValue" => "MANAGED"}))
    DashboardType.add_member(:custom, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM', traits: {"smithy.api#enumValue" => "CUSTOM"}))
    Dashboards.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardDetail)
    DataResource.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The resource type in which you want to log data events. You can specify the following\n            <i>basic</i> event selector resource types:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>AWS::DynamoDB::Table</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS::Lambda::Function</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS::S3::Object</code>\n               </p>\n            </li>\n         </ul>\n         <p>Additional resource types are available through <i>advanced</i>\n         event selectors. For more\n         information, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_AdvancedEventSelector.html\">AdvancedEventSelector</a>.</p>"}))
    DataResource.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: DataResourceValues, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>An array of Amazon Resource Name (ARN) strings or partial ARN strings for the specified\n         resource type.</p>\n         <ul>\n            <li>\n               <p>To log data events for all objects in all S3 buckets in your Amazon Web Services account, specify the prefix as <code>arn:aws:s3</code>.</p>\n               <note>\n                  <p>This also enables logging of data event activity performed by any user or role\n                  in your Amazon Web Services account, even if that activity is performed on a bucket\n                  that belongs to another Amazon Web Services account.</p>\n               </note>\n            </li>\n            <li>\n               <p>To log data events for all objects in an S3 bucket, specify the bucket and an\n               empty object prefix such as <code>arn:aws:s3:::amzn-s3-demo-bucket1/</code>. The trail logs data\n               events for all objects in this S3 bucket.</p>\n            </li>\n            <li>\n               <p>To log data events for specific objects, specify the S3 bucket and object prefix\n               such as <code>arn:aws:s3:::amzn-s3-demo-bucket1/example-images</code>. The trail logs data events\n               for objects in this S3 bucket that match the prefix.</p>\n            </li>\n            <li>\n               <p>To log data events for all Lambda functions in your Amazon Web Services account, specify the prefix as <code>arn:aws:lambda</code>.</p>\n               <note>\n                  <p>This also enables logging of <code>Invoke</code> activity performed by any user\n                  or role in your Amazon Web Services account, even if that activity is performed on\n                  a function that belongs to another Amazon Web Services account. </p>\n               </note>\n            </li>\n            <li>\n               <p>To log data events for a specific Lambda function, specify the\n               function ARN.</p>\n               <note>\n                  <p>Lambda function ARNs are exact. For example, if you specify a\n                  function ARN\n                     <i>arn:aws:lambda:us-west-2:111111111111:function:helloworld</i>,\n                  data events will only be logged for\n                     <i>arn:aws:lambda:us-west-2:111111111111:function:helloworld</i>.\n                  They will not be logged for\n                     <i>arn:aws:lambda:us-west-2:111111111111:function:helloworld2</i>.</p>\n               </note>\n            </li>\n            <li>\n               <p>To log data events for all DynamoDB tables in your Amazon Web Services account, specify the prefix as <code>arn:aws:dynamodb</code>.</p>\n            </li>\n         </ul>"}))
    DataResource.type = Types::DataResource
    DataResourceValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    DataResources.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataResource)
    DelegatedAdminAccountLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    DelegatedAdminAccountLimitExceededException.type = Types::DelegatedAdminAccountLimitExceededException
    DeleteChannelRequest.add_member(:channel, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: 'Channel', traits: {"smithy.api#documentation" => "<p>The ARN or the <code>UUID</code> value of the channel that you want to delete.</p>", "smithy.api#required" => {}}))
    DeleteChannelRequest.type = Types::DeleteChannelRequest
    DeleteChannelResponse.type = Types::DeleteChannelResponse
    DeleteDashboardRequest.add_member(:dashboard_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardArn, location_name: 'DashboardId', traits: {"smithy.api#documentation" => "<p>\nThe name or ARN for the dashboard.\n</p>", "smithy.api#required" => {}}))
    DeleteDashboardRequest.type = Types::DeleteDashboardRequest
    DeleteDashboardResponse.type = Types::DeleteDashboardResponse
    DeleteEventDataStoreRequest.add_member(:event_data_store, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreArn, location_name: 'EventDataStore', traits: {"smithy.api#documentation" => "<p>The ARN (or the ID suffix of the ARN) of the event data store to delete.</p>", "smithy.api#required" => {}}))
    DeleteEventDataStoreRequest.type = Types::DeleteEventDataStoreRequest
    DeleteEventDataStoreResponse.type = Types::DeleteEventDataStoreResponse
    DeleteResourcePolicyRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>\n         The Amazon Resource Name (ARN) of the CloudTrail event data store, dashboard, or channel you're deleting the resource-based policy from.</p>\n         <p>Example event data store ARN format:\n         <code>arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE</code>\n         </p>\n         <p>Example dashboard ARN format: <code>arn:aws:cloudtrail:us-east-1:123456789012:dashboard/exampleDash</code>\n         </p>\n         <p>Example channel ARN format:\n         <code>arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890</code>\n         </p>", "smithy.api#required" => {}}))
    DeleteResourcePolicyRequest.type = Types::DeleteResourcePolicyRequest
    DeleteResourcePolicyResponse.type = Types::DeleteResourcePolicyResponse
    DeleteTrailRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Specifies the name or the CloudTrail ARN of the trail to be deleted. The\n         following is the format of a trail ARN.\n            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>\n         </p>", "smithy.api#required" => {}}))
    DeleteTrailRequest.type = Types::DeleteTrailRequest
    DeleteTrailResponse.type = Types::DeleteTrailResponse
    DeliveryStatus.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    DeliveryStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    DeliveryStatus.add_member(:failed_signing_file, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED_SIGNING_FILE', traits: {"smithy.api#enumValue" => "FAILED_SIGNING_FILE"}))
    DeliveryStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    DeliveryStatus.add_member(:resource_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_NOT_FOUND', traits: {"smithy.api#enumValue" => "RESOURCE_NOT_FOUND"}))
    DeliveryStatus.add_member(:access_denied, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED', traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    DeliveryStatus.add_member(:access_denied_signing_file, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED_SIGNING_FILE', traits: {"smithy.api#enumValue" => "ACCESS_DENIED_SIGNING_FILE"}))
    DeliveryStatus.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    DeliveryStatus.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    DeregisterOrganizationDelegatedAdminRequest.add_member(:delegated_admin_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'DelegatedAdminAccountId', traits: {"smithy.api#documentation" => "<p>A delegated administrator account ID. This is a member account in an organization that\n         is currently designated as a delegated administrator.</p>", "smithy.api#required" => {}}))
    DeregisterOrganizationDelegatedAdminRequest.type = Types::DeregisterOrganizationDelegatedAdminRequest
    DeregisterOrganizationDelegatedAdminResponse.type = Types::DeregisterOrganizationDelegatedAdminResponse
    DescribeQueryRequest.add_member(:event_data_store, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreArn, location_name: 'EventDataStore', traits: {"smithy.api#deprecated" => {"message" => "EventDataStore is no longer required by DescribeQueryRequest"}, "smithy.api#documentation" => "<p>The ARN (or the ID suffix of the ARN) of an event data store on which the specified\n         query was run.</p>"}))
    DescribeQueryRequest.add_member(:query_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'QueryId', traits: {"smithy.api#documentation" => "<p>The query ID.</p>"}))
    DescribeQueryRequest.add_member(:query_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryAlias, location_name: 'QueryAlias', traits: {"smithy.api#documentation" => "<p>\n         The alias that identifies a query template.\n      </p>"}))
    DescribeQueryRequest.add_member(:refresh_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshId, location_name: 'RefreshId', traits: {"smithy.api#documentation" => "<p>\nThe ID of the dashboard refresh.\n</p>"}))
    DescribeQueryRequest.add_member(:event_data_store_owner_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'EventDataStoreOwnerAccountId', traits: {"smithy.api#documentation" => "<p>\nThe account ID of the event data store owner.\n</p>"}))
    DescribeQueryRequest.type = Types::DescribeQueryRequest
    DescribeQueryResponse.add_member(:query_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'QueryId', traits: {"smithy.api#documentation" => "<p>The ID of the query.</p>"}))
    DescribeQueryResponse.add_member(:query_string, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStatement, location_name: 'QueryString', traits: {"smithy.api#documentation" => "<p>The SQL code of a query.</p>"}))
    DescribeQueryResponse.add_member(:query_status, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStatus, location_name: 'QueryStatus', traits: {"smithy.api#documentation" => "<p>The status of a query. Values for <code>QueryStatus</code> include <code>QUEUED</code>,\n            <code>RUNNING</code>, <code>FINISHED</code>, <code>FAILED</code>,\n         <code>TIMED_OUT</code>, or <code>CANCELLED</code>\n         </p>"}))
    DescribeQueryResponse.add_member(:query_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStatisticsForDescribeQuery, location_name: 'QueryStatistics', traits: {"smithy.api#documentation" => "<p>Metadata about a query, including the number of events that were matched, the total\n         number of events scanned, the query run time in milliseconds, and the query's creation\n         time.</p>"}))
    DescribeQueryResponse.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The error message returned if a query failed.</p>"}))
    DescribeQueryResponse.add_member(:delivery_s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryS3Uri, location_name: 'DeliveryS3Uri', traits: {"smithy.api#documentation" => "<p>The URI for the S3 bucket where CloudTrail delivered query results, if\n         applicable.</p>"}))
    DescribeQueryResponse.add_member(:delivery_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryStatus, location_name: 'DeliveryStatus', traits: {"smithy.api#documentation" => "<p>The delivery status.</p>"}))
    DescribeQueryResponse.add_member(:prompt, Smithy::Schema::Shapes::ShapeRef.new(shape: Prompt, location_name: 'Prompt', traits: {"smithy.api#documentation" => "<p>\n         The prompt used for a generated query. For information about generated queries, see \n         <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/lake-query-generator.html\">Create CloudTrail Lake queries from natural language prompts</a> \n         in the <i>CloudTrail </i> user guide.\n      </p>"}))
    DescribeQueryResponse.add_member(:event_data_store_owner_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'EventDataStoreOwnerAccountId', traits: {"smithy.api#documentation" => "<p>\n   The account ID of the event data store owner.\n</p>"}))
    DescribeQueryResponse.type = Types::DescribeQueryResponse
    DescribeTrailsRequest.add_member(:trail_name_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TrailNameList, location_name: 'trailNameList', traits: {"smithy.api#documentation" => "<p>Specifies a list of trail names, trail ARNs, or both, of the trails to describe. The\n         format of a trail ARN is:</p>\n         <p>\n            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>\n         </p>\n         <p>If an empty list is specified, information for the trail in the current Region is\n         returned.</p>\n         <ul>\n            <li>\n               <p>If an empty list is specified and <code>IncludeShadowTrails</code> is false, then\n               information for all trails in the current Region is returned.</p>\n            </li>\n            <li>\n               <p>If an empty list is specified and IncludeShadowTrails is null or true, then\n               information for all trails in the current Region and any associated shadow trails in\n               other Regions is returned.</p>\n            </li>\n         </ul>\n         <note>\n            <p>If one or more trail names are specified, information is returned only if the names\n            match the names of trails belonging only to the current Region and current account. To\n            return information about a trail in another Region, you must specify its trail\n            ARN.</p>\n         </note>"}))
    DescribeTrailsRequest.add_member(:include_shadow_trails, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'includeShadowTrails', traits: {"smithy.api#documentation" => "<p>Specifies whether to include shadow trails in the response. A shadow trail is the\n         replication in a Region of a trail that was created in a different Region, or in the case\n         of an organization trail, the replication of an organization trail in member accounts. If\n         you do not include shadow trails, organization trails in a member account and Region\n         replication trails will not be returned. The default is true.</p>"}))
    DescribeTrailsRequest.type = Types::DescribeTrailsRequest
    DescribeTrailsResponse.add_member(:trail_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TrailList, location_name: 'trailList', traits: {"smithy.api#documentation" => "<p>The list of trail objects. Trail objects with string values are only returned if values\n         for the objects exist in a trail's configuration. For example, <code>SNSTopicName</code>\n         and <code>SNSTopicARN</code> are only returned in results if a trail is configured to send\n         SNS notifications. Similarly, <code>KMSKeyId</code> only appears in results if a trail's\n         log files are encrypted with KMS\n         customer managed keys.</p>"}))
    DescribeTrailsResponse.type = Types::DescribeTrailsResponse
    Destination.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of destination for events arriving from a channel. For channels used for a CloudTrail Lake integration, the value is <code>EVENT_DATA_STORE</code>. For service-linked channels, \n         the value is <code>AWS_SERVICE</code>. </p>", "smithy.api#required" => {}}))
    Destination.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: Location, location_name: 'Location', traits: {"smithy.api#documentation" => "<p> For channels used for a CloudTrail Lake integration, the location is the ARN of an event data store that receives events from a channel. \n         For service-linked channels, the location is the name of the Amazon Web Services service.</p>", "smithy.api#required" => {}}))
    Destination.type = Types::Destination
    DestinationType.add_member(:event_data_store, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EVENT_DATA_STORE', traits: {"smithy.api#enumValue" => "EVENT_DATA_STORE"}))
    DestinationType.add_member(:aws_service, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_SERVICE', traits: {"smithy.api#enumValue" => "AWS_SERVICE"}))
    Destinations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Destination)
    DisableFederationRequest.add_member(:event_data_store, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreArn, location_name: 'EventDataStore', traits: {"smithy.api#documentation" => "<p>\n         The ARN (or ID suffix of the ARN) of the event data store for which you want to disable Lake query federation.\n      </p>", "smithy.api#required" => {}}))
    DisableFederationRequest.type = Types::DisableFederationRequest
    DisableFederationResponse.add_member(:event_data_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreArn, location_name: 'EventDataStoreArn', traits: {"smithy.api#documentation" => "<p>\n         The ARN of the event data store for which you disabled Lake query federation.\n      </p>"}))
    DisableFederationResponse.add_member(:federation_status, Smithy::Schema::Shapes::ShapeRef.new(shape: FederationStatus, location_name: 'FederationStatus', traits: {"smithy.api#documentation" => "<p>\n         The federation status.\n      </p>"}))
    DisableFederationResponse.type = Types::DisableFederationResponse
    EnableFederationRequest.add_member(:event_data_store, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreArn, location_name: 'EventDataStore', traits: {"smithy.api#documentation" => "<p>The ARN (or ID suffix of the ARN) of the event data store for which you want to enable Lake query federation.</p>", "smithy.api#required" => {}}))
    EnableFederationRequest.add_member(:federation_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FederationRoleArn, location_name: 'FederationRoleArn', traits: {"smithy.api#documentation" => "<p>\n         The ARN of the federation role to use for the event data store. Amazon Web Services services like Lake Formation use this federation role to access data for the federated event \n         data store. The federation role must exist in your account and provide the <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-federation.html#query-federation-permissions-role\">required minimum permissions</a>.\n      </p>", "smithy.api#required" => {}}))
    EnableFederationRequest.type = Types::EnableFederationRequest
    EnableFederationResponse.add_member(:event_data_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreArn, location_name: 'EventDataStoreArn', traits: {"smithy.api#documentation" => "<p>\n         The ARN of the event data store for which you enabled Lake query federation.\n      </p>"}))
    EnableFederationResponse.add_member(:federation_status, Smithy::Schema::Shapes::ShapeRef.new(shape: FederationStatus, location_name: 'FederationStatus', traits: {"smithy.api#documentation" => "<p>\n         The federation status.\n      </p>"}))
    EnableFederationResponse.add_member(:federation_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FederationRoleArn, location_name: 'FederationRoleArn', traits: {"smithy.api#documentation" => "<p>\n         The ARN of the federation role.\n      </p>"}))
    EnableFederationResponse.type = Types::EnableFederationResponse
    Event.add_member(:event_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EventId', traits: {"smithy.api#documentation" => "<p>The CloudTrail ID of the event returned.</p>"}))
    Event.add_member(:event_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EventName', traits: {"smithy.api#documentation" => "<p>The name of the event returned.</p>"}))
    Event.add_member(:read_only, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReadOnly', traits: {"smithy.api#documentation" => "<p>Information about whether the event is a write event or a read event. </p>"}))
    Event.add_member(:access_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AccessKeyId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services access key ID that was used to sign the request. If the request\n         was made with temporary security credentials, this is the access key ID of the temporary\n         credentials.</p>"}))
    Event.add_member(:event_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'EventTime', traits: {"smithy.api#documentation" => "<p>The date and time of the event returned.</p>"}))
    Event.add_member(:event_source, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EventSource', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services service to which the request was made.</p>"}))
    Event.add_member(:username, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Username', traits: {"smithy.api#documentation" => "<p>A user name or role name of the requester that called the API in the event\n         returned.</p>"}))
    Event.add_member(:resources, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceList, location_name: 'Resources', traits: {"smithy.api#documentation" => "<p>A list of resources referenced by the event returned.</p>"}))
    Event.add_member(:cloud_trail_event, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CloudTrailEvent', traits: {"smithy.api#documentation" => "<p>A JSON string that contains a representation of the event returned.</p>"}))
    Event.type = Types::Event
    EventCategory.add_member(:insight, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Insight', traits: {"smithy.api#enumValue" => "insight"}))
    EventDataStore.add_member(:event_data_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreArn, location_name: 'EventDataStoreArn', traits: {"smithy.api#documentation" => "<p>The ARN of the event data store.</p>"}))
    EventDataStore.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the event data store.</p>"}))
    EventDataStore.add_member(:termination_protection_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: TerminationProtectionEnabled, location_name: 'TerminationProtectionEnabled', traits: {"smithy.api#deprecated" => {"message" => "TerminationProtectionEnabled is no longer returned by ListEventDataStores"}, "smithy.api#documentation" => "<p>Indicates whether the event data store is protected from\n         termination.</p>"}))
    EventDataStore.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreStatus, location_name: 'Status', traits: {"smithy.api#deprecated" => {"message" => "Status is no longer returned by ListEventDataStores"}, "smithy.api#documentation" => "<p>The status of an event data store.</p>"}))
    EventDataStore.add_member(:advanced_event_selectors, Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedEventSelectors, location_name: 'AdvancedEventSelectors', traits: {"smithy.api#deprecated" => {"message" => "AdvancedEventSelectors is no longer returned by ListEventDataStores"}, "smithy.api#documentation" => "<p>The advanced event selectors that were used to select\n         events for the data store.</p>"}))
    EventDataStore.add_member(:multi_region_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'MultiRegionEnabled', traits: {"smithy.api#deprecated" => {"message" => "MultiRegionEnabled is no longer returned by ListEventDataStores"}, "smithy.api#documentation" => "<p>Indicates whether the event data store includes events\n         from all Regions, or only from the Region in which it was created.</p>"}))
    EventDataStore.add_member(:organization_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'OrganizationEnabled', traits: {"smithy.api#deprecated" => {"message" => "OrganizationEnabled is no longer returned by ListEventDataStores"}, "smithy.api#documentation" => "<p>Indicates that an event data store is collecting logged\n         events for an organization.</p>"}))
    EventDataStore.add_member(:retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'RetentionPeriod', traits: {"smithy.api#deprecated" => {"message" => "RetentionPeriod is no longer returned by ListEventDataStores"}, "smithy.api#documentation" => "<p>The retention period, in days.</p>"}))
    EventDataStore.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreatedTimestamp', traits: {"smithy.api#deprecated" => {"message" => "CreatedTimestamp is no longer returned by ListEventDataStores"}, "smithy.api#documentation" => "<p>The timestamp of the event data store's creation.</p>"}))
    EventDataStore.add_member(:updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'UpdatedTimestamp', traits: {"smithy.api#deprecated" => {"message" => "UpdatedTimestamp is no longer returned by ListEventDataStores"}, "smithy.api#documentation" => "<p>The timestamp showing when an event data store was\n         updated, if applicable. <code>UpdatedTimestamp</code> is always either the same or newer\n         than the time shown in <code>CreatedTimestamp</code>.</p>"}))
    EventDataStore.type = Types::EventDataStore
    EventDataStoreARNInvalidException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    EventDataStoreARNInvalidException.type = Types::EventDataStoreARNInvalidException
    EventDataStoreAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    EventDataStoreAlreadyExistsException.type = Types::EventDataStoreAlreadyExistsException
    EventDataStoreFederationEnabledException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    EventDataStoreFederationEnabledException.type = Types::EventDataStoreFederationEnabledException
    EventDataStoreHasOngoingImportException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    EventDataStoreHasOngoingImportException.type = Types::EventDataStoreHasOngoingImportException
    EventDataStoreList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreArn)
    EventDataStoreMaxLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    EventDataStoreMaxLimitExceededException.type = Types::EventDataStoreMaxLimitExceededException
    EventDataStoreNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    EventDataStoreNotFoundException.type = Types::EventDataStoreNotFoundException
    EventDataStoreStatus.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    EventDataStoreStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    EventDataStoreStatus.add_member(:pending_deletion, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_DELETION', traits: {"smithy.api#enumValue" => "PENDING_DELETION"}))
    EventDataStoreStatus.add_member(:starting_ingestion, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTING_INGESTION', traits: {"smithy.api#enumValue" => "STARTING_INGESTION"}))
    EventDataStoreStatus.add_member(:stopping_ingestion, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING_INGESTION', traits: {"smithy.api#enumValue" => "STOPPING_INGESTION"}))
    EventDataStoreStatus.add_member(:stopped_ingestion, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED_INGESTION', traits: {"smithy.api#enumValue" => "STOPPED_INGESTION"}))
    EventDataStoreTerminationProtectedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    EventDataStoreTerminationProtectedException.type = Types::EventDataStoreTerminationProtectedException
    EventDataStores.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStore)
    EventSelector.add_member(:read_write_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadWriteType, location_name: 'ReadWriteType', traits: {"smithy.api#documentation" => "<p>Specify if you want your trail to log read-only events, write-only events, or all. For\n         example, the EC2 <code>GetConsoleOutput</code> is a read-only API operation and\n            <code>RunInstances</code> is a write-only API operation.</p>\n         <p> By default, the value is <code>All</code>.</p>"}))
    EventSelector.add_member(:include_management_events, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IncludeManagementEvents', traits: {"smithy.api#documentation" => "<p>Specify if you want your event selector to include management events for your\n         trail.</p>\n         <p> For more information, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-events-with-cloudtrail.html\">Management Events</a> in the <i>CloudTrail User\n         Guide</i>.</p>\n         <p>By default, the value is <code>true</code>.</p>\n         <p>The first copy of management events is free. You are charged for additional copies of\n         management events that you are logging on any subsequent trail in the same Region. For more\n         information about CloudTrail pricing, see <a href=\"http://aws.amazon.com/cloudtrail/pricing/\">CloudTrail Pricing</a>.</p>"}))
    EventSelector.add_member(:data_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: DataResources, location_name: 'DataResources', traits: {"smithy.api#documentation" => "<p>CloudTrail supports data event logging for Amazon S3 objects in standard S3 buckets, Lambda functions, and Amazon DynamoDB tables with basic event selectors.\n         You can specify up to 250 resources for an individual event selector, but the total number\n         of data resources cannot exceed 250 across all event selectors in a trail. This limit does\n         not apply if you configure resource logging for all data events.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html\">Data\n            Events</a> and <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/WhatIsCloudTrail-Limits.html\">Limits in CloudTrail</a> in the <i>CloudTrail User\n         Guide</i>.</p>\n         <note>\n            <p>To log data events for all other resource types including objects stored in \n            <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-buckets-overview.html\">directory buckets</a>, you must use <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_AdvancedEventSelector.html\">AdvancedEventSelectors</a>. You must also \n            use <code>AdvancedEventSelectors</code> if you want to filter on the <code>eventName</code> field.</p>\n         </note>"}))
    EventSelector.add_member(:exclude_management_event_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: ExcludeManagementEventSources, location_name: 'ExcludeManagementEventSources', traits: {"smithy.api#documentation" => "<p>An optional list of service event sources from which you do not want management events\n         to be logged on your trail. In this release, the list can be empty (disables the filter),\n         or it can filter out Key Management Service or Amazon RDS Data API events by\n         containing <code>kms.amazonaws.com</code> or <code>rdsdata.amazonaws.com</code>. By\n         default, <code>ExcludeManagementEventSources</code> is empty, and KMS and\n            Amazon RDS Data API events are logged to your trail. You can exclude management\n         event sources only in Regions that support the event source.</p>"}))
    EventSelector.type = Types::EventSelector
    EventSelectors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EventSelector)
    EventsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Event)
    ExcludeManagementEventSources.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    FederationStatus.add_member(:enabling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLING', traits: {"smithy.api#enumValue" => "ENABLING"}))
    FederationStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    FederationStatus.add_member(:disabling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLING', traits: {"smithy.api#enumValue" => "DISABLING"}))
    FederationStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    GenerateQueryRequest.add_member(:event_data_stores, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreList, location_name: 'EventDataStores', traits: {"smithy.api#documentation" => "<p>\n         The ARN (or ID suffix of the ARN) of the event data store\n         that you want to query. You can only specify one event data store.\n      </p>", "smithy.api#required" => {}}))
    GenerateQueryRequest.add_member(:prompt, Smithy::Schema::Shapes::ShapeRef.new(shape: Prompt, location_name: 'Prompt', traits: {"smithy.api#documentation" => "<p>\n         The prompt that you want to use to generate the query. The prompt must be in English. For example prompts, see \n         <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/lake-query-generator.html#lake-query-generator-examples\">Example prompts</a> \n         in the <i>CloudTrail </i> user guide.\n      </p>", "smithy.api#required" => {}}))
    GenerateQueryRequest.type = Types::GenerateQueryRequest
    GenerateQueryResponse.add_member(:query_statement, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStatement, location_name: 'QueryStatement', traits: {"smithy.api#documentation" => "<p>\n         The SQL query statement generated from the prompt.\n      </p>"}))
    GenerateQueryResponse.add_member(:query_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryAlias, location_name: 'QueryAlias', traits: {"smithy.api#documentation" => "<p>\n         An alias that identifies the prompt. When you run the <code>StartQuery</code> operation, you can pass in either the <code>QueryAlias</code> or \n         <code>QueryStatement</code> parameter.\n      </p>"}))
    GenerateQueryResponse.add_member(:event_data_store_owner_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'EventDataStoreOwnerAccountId', traits: {"smithy.api#documentation" => "<p>\n   The account ID of the event data store owner.\n</p>"}))
    GenerateQueryResponse.type = Types::GenerateQueryResponse
    GenerateResponseException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    GenerateResponseException.type = Types::GenerateResponseException
    GetChannelRequest.add_member(:channel, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: 'Channel', traits: {"smithy.api#documentation" => "<p>The ARN or <code>UUID</code> of a channel.</p>", "smithy.api#required" => {}}))
    GetChannelRequest.type = Types::GetChannelRequest
    GetChannelResponse.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of an channel returned by a <code>GetChannel</code> request.</p>"}))
    GetChannelResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p> The name of the CloudTrail channel. For service-linked channels, the name is\n            <code>aws-service-channel/service-name/custom-suffix</code> where\n            <code>service-name</code> represents the name of the Amazon Web Services service that\n         created the channel and <code>custom-suffix</code> represents the suffix generated by the\n            Amazon Web Services service. </p>"}))
    GetChannelResponse.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'Source', traits: {"smithy.api#documentation" => "<p>The source for the CloudTrail channel.</p>"}))
    GetChannelResponse.add_member(:source_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceConfig, location_name: 'SourceConfig', traits: {"smithy.api#documentation" => "<p> Provides information about the advanced event selectors configured for the channel, and\n         whether the channel applies to all Regions or a single Region. </p>"}))
    GetChannelResponse.add_member(:destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: Destinations, location_name: 'Destinations', traits: {"smithy.api#documentation" => "<p>The destinations for the channel. For channels created for integrations, \n         the destinations are the event data stores that log events arriving through the channel. \n         For service-linked channels, the destination is the Amazon Web Services service that created the service-linked channel to receive events.</p>"}))
    GetChannelResponse.add_member(:ingestion_status, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionStatus, location_name: 'IngestionStatus', traits: {"smithy.api#documentation" => "<p>A table showing information about the most recent successful and failed attempts \n      to ingest events.</p>"}))
    GetChannelResponse.type = Types::GetChannelResponse
    GetDashboardRequest.add_member(:dashboard_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardArn, location_name: 'DashboardId', traits: {"smithy.api#documentation" => "<p>\nThe name or ARN for the dashboard.\n</p>", "smithy.api#required" => {}}))
    GetDashboardRequest.type = Types::GetDashboardRequest
    GetDashboardResponse.add_member(:dashboard_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardArn, location_name: 'DashboardArn', traits: {"smithy.api#documentation" => "<p>\n   The ARN for the dashboard.\n</p>"}))
    GetDashboardResponse.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>\nThe type of dashboard.\n</p>"}))
    GetDashboardResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>\nThe status of the dashboard.\n</p>"}))
    GetDashboardResponse.add_member(:widgets, Smithy::Schema::Shapes::ShapeRef.new(shape: WidgetList, location_name: 'Widgets', traits: {"smithy.api#documentation" => "<p>\nAn array of widgets for the dashboard.\n</p>"}))
    GetDashboardResponse.add_member(:refresh_schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshSchedule, location_name: 'RefreshSchedule', traits: {"smithy.api#documentation" => "<p>\nThe refresh schedule for the dashboard, if configured.\n</p>"}))
    GetDashboardResponse.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>\n   The timestamp that shows when the dashboard was created.\n</p>"}))
    GetDashboardResponse.add_member(:updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'UpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>\n   The timestamp that shows when the dashboard was last updated.\n</p>"}))
    GetDashboardResponse.add_member(:last_refresh_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshId, location_name: 'LastRefreshId', traits: {"smithy.api#documentation" => "<p>\nThe ID of the last dashboard refresh.\n</p>"}))
    GetDashboardResponse.add_member(:last_refresh_failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'LastRefreshFailureReason', traits: {"smithy.api#documentation" => "<p>\nProvides information about failures for the last scheduled refresh.\n</p>"}))
    GetDashboardResponse.add_member(:termination_protection_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: TerminationProtectionEnabled, location_name: 'TerminationProtectionEnabled', traits: {"smithy.api#documentation" => "<p>\nIndicates whether termination protection is enabled for the dashboard.\n</p>"}))
    GetDashboardResponse.type = Types::GetDashboardResponse
    GetEventConfigurationRequest.add_member(:event_data_store, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EventDataStore', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) or ID suffix of the ARN of the event data store for which you want to retrieve event configuration settings.</p>"}))
    GetEventConfigurationRequest.type = Types::GetEventConfigurationRequest
    GetEventConfigurationResponse.add_member(:event_data_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreArn, location_name: 'EventDataStoreArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) or ID suffix of the ARN of the event data store for which the event configuration settings are returned.</p>"}))
    GetEventConfigurationResponse.add_member(:max_event_size, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxEventSize, location_name: 'MaxEventSize', traits: {"smithy.api#documentation" => "<p>The maximum allowed size for events stored in the specified event data store.</p>"}))
    GetEventConfigurationResponse.add_member(:context_key_selectors, Smithy::Schema::Shapes::ShapeRef.new(shape: ContextKeySelectors, location_name: 'ContextKeySelectors', traits: {"smithy.api#documentation" => "<p>The list of context key selectors that are configured for the event data store.</p>"}))
    GetEventConfigurationResponse.type = Types::GetEventConfigurationResponse
    GetEventDataStoreRequest.add_member(:event_data_store, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreArn, location_name: 'EventDataStore', traits: {"smithy.api#documentation" => "<p>The ARN (or ID suffix of the ARN) of the event data store about which you want\n         information.</p>", "smithy.api#required" => {}}))
    GetEventDataStoreRequest.type = Types::GetEventDataStoreRequest
    GetEventDataStoreResponse.add_member(:event_data_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreArn, location_name: 'EventDataStoreArn', traits: {"smithy.api#documentation" => "<p>The event data store Amazon Resource Number (ARN).</p>"}))
    GetEventDataStoreResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the event data store.</p>"}))
    GetEventDataStoreResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of an event data store.</p>"}))
    GetEventDataStoreResponse.add_member(:advanced_event_selectors, Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedEventSelectors, location_name: 'AdvancedEventSelectors', traits: {"smithy.api#documentation" => "<p>The advanced event selectors used to select events for the data store.</p>"}))
    GetEventDataStoreResponse.add_member(:multi_region_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'MultiRegionEnabled', traits: {"smithy.api#documentation" => "<p>Indicates whether the event data store includes events from all Regions, or only from\n         the Region in which it was created.</p>"}))
    GetEventDataStoreResponse.add_member(:organization_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'OrganizationEnabled', traits: {"smithy.api#documentation" => "<p>Indicates whether an event data store is collecting logged events for an organization in\n            Organizations.</p>"}))
    GetEventDataStoreResponse.add_member(:retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'RetentionPeriod', traits: {"smithy.api#documentation" => "<p>The retention period of the event data store, in days.</p>"}))
    GetEventDataStoreResponse.add_member(:termination_protection_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: TerminationProtectionEnabled, location_name: 'TerminationProtectionEnabled', traits: {"smithy.api#documentation" => "<p>Indicates that termination protection is enabled.</p>"}))
    GetEventDataStoreResponse.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of the event data store's creation.</p>"}))
    GetEventDataStoreResponse.add_member(:updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'UpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>Shows the time that an event data store was updated, if applicable.\n            <code>UpdatedTimestamp</code> is always either the same or newer than the time shown in\n            <code>CreatedTimestamp</code>.</p>"}))
    GetEventDataStoreResponse.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreKmsKeyId, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>Specifies the KMS key ID that encrypts the events delivered by CloudTrail. The value is a fully specified ARN to a KMS key in the\n         following format.</p>\n         <p>\n            <code>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</code>\n         </p>"}))
    GetEventDataStoreResponse.add_member(:billing_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingMode, location_name: 'BillingMode', traits: {"smithy.api#documentation" => "<p>The billing mode for the event data store.</p>"}))
    GetEventDataStoreResponse.add_member(:federation_status, Smithy::Schema::Shapes::ShapeRef.new(shape: FederationStatus, location_name: 'FederationStatus', traits: {"smithy.api#documentation" => "<p>\n         Indicates the <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-federation.html\">Lake query federation</a> status. The status is \n         <code>ENABLED</code> if Lake query federation is enabled, or <code>DISABLED</code> if Lake query federation is disabled. You cannot delete an event data store if the <code>FederationStatus</code> is <code>ENABLED</code>.\n      </p>"}))
    GetEventDataStoreResponse.add_member(:federation_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FederationRoleArn, location_name: 'FederationRoleArn', traits: {"smithy.api#documentation" => "<p>\n         If Lake query federation is enabled, provides the ARN of the federation role used to access the resources for the federated event data store.\n      </p>"}))
    GetEventDataStoreResponse.add_member(:partition_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: PartitionKeyList, location_name: 'PartitionKeys', traits: {"smithy.api#documentation" => "<p>The partition keys for the event data store. To improve query performance and efficiency, CloudTrail Lake organizes \n         event data into partitions based on values derived from partition keys.</p>"}))
    GetEventDataStoreResponse.type = Types::GetEventDataStoreResponse
    GetEventSelectorsRequest.add_member(:trail_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TrailName', traits: {"smithy.api#documentation" => "<p>Specifies the name of the trail or trail ARN. If you specify a trail name, the string\n         must meet the following requirements:</p>\n         <ul>\n            <li>\n               <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores\n               (_), or dashes (-)</p>\n            </li>\n            <li>\n               <p>Start with a letter or number, and end with a letter or number</p>\n            </li>\n            <li>\n               <p>Be between 3 and 128 characters</p>\n            </li>\n            <li>\n               <p>Have no adjacent periods, underscores or dashes. Names like\n                  <code>my-_namespace</code> and <code>my--namespace</code> are not valid.</p>\n            </li>\n            <li>\n               <p>Not be in IP address format (for example, 192.168.5.4)</p>\n            </li>\n         </ul>\n         <p>If you specify a trail ARN, it must be in the format:</p>\n         <p>\n            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>\n         </p>", "smithy.api#required" => {}}))
    GetEventSelectorsRequest.type = Types::GetEventSelectorsRequest
    GetEventSelectorsResponse.add_member(:trail_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TrailARN', traits: {"smithy.api#documentation" => "<p>The specified trail ARN that has the event selectors.</p>"}))
    GetEventSelectorsResponse.add_member(:event_selectors, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSelectors, location_name: 'EventSelectors', traits: {"smithy.api#documentation" => "<p>The event selectors that are configured for the trail.</p>"}))
    GetEventSelectorsResponse.add_member(:advanced_event_selectors, Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedEventSelectors, location_name: 'AdvancedEventSelectors', traits: {"smithy.api#documentation" => "<p> The advanced event selectors that are configured for the trail. </p>"}))
    GetEventSelectorsResponse.type = Types::GetEventSelectorsResponse
    GetImportRequest.add_member(:import_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'ImportId', traits: {"smithy.api#documentation" => "<p> The ID for the import. </p>", "smithy.api#required" => {}}))
    GetImportRequest.type = Types::GetImportRequest
    GetImportResponse.add_member(:import_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'ImportId', traits: {"smithy.api#documentation" => "<p> The ID of the import. </p>"}))
    GetImportResponse.add_member(:destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportDestinations, location_name: 'Destinations', traits: {"smithy.api#documentation" => "<p> The ARN of the destination event data store. </p>"}))
    GetImportResponse.add_member(:import_source, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportSource, location_name: 'ImportSource', traits: {"smithy.api#documentation" => "<p> The source S3 bucket. </p>"}))
    GetImportResponse.add_member(:start_event_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'StartEventTime', traits: {"smithy.api#documentation" => "<p> Used with <code>EndEventTime</code> to bound a <code>StartImport</code> request, and\n         limit imported trail events to only those events logged within a specified time period.\n      </p>"}))
    GetImportResponse.add_member(:end_event_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'EndEventTime', traits: {"smithy.api#documentation" => "<p> Used with <code>StartEventTime</code> to bound a <code>StartImport</code> request, and\n         limit imported trail events to only those events logged within a specified time period.\n      </p>"}))
    GetImportResponse.add_member(:import_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportStatus, location_name: 'ImportStatus', traits: {"smithy.api#documentation" => "<p> The status of the import. </p>"}))
    GetImportResponse.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p> The timestamp of the import's creation. </p>"}))
    GetImportResponse.add_member(:updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'UpdatedTimestamp', traits: {"smithy.api#documentation" => "<p> The timestamp of when the import was updated. </p>"}))
    GetImportResponse.add_member(:import_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportStatistics, location_name: 'ImportStatistics', traits: {"smithy.api#documentation" => "<p> Provides statistics for the import. CloudTrail does not update import statistics\n         in real-time. Returned values for parameters such as <code>EventsCompleted</code> may be\n         lower than the actual value, because CloudTrail updates statistics incrementally\n         over the course of the import. </p>"}))
    GetImportResponse.type = Types::GetImportResponse
    GetInsightSelectorsRequest.add_member(:trail_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TrailName', traits: {"smithy.api#documentation" => "<p>Specifies the name of the trail or trail ARN. If you specify a trail name, the string\n         must meet the following requirements:</p>\n         <ul>\n            <li>\n               <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores\n               (_), or dashes (-)</p>\n            </li>\n            <li>\n               <p>Start with a letter or number, and end with a letter or number</p>\n            </li>\n            <li>\n               <p>Be between 3 and 128 characters</p>\n            </li>\n            <li>\n               <p>Have no adjacent periods, underscores or dashes. Names like\n                  <code>my-_namespace</code> and <code>my--namespace</code> are not valid.</p>\n            </li>\n            <li>\n               <p>Not be in IP address format (for example, 192.168.5.4)</p>\n            </li>\n         </ul>\n         <p>If you specify a trail ARN, it must be in the format:</p>\n         <p>\n            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>\n         </p>\n         <p>You cannot use this parameter with the <code>EventDataStore</code> parameter.</p>"}))
    GetInsightSelectorsRequest.add_member(:event_data_store, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreArn, location_name: 'EventDataStore', traits: {"smithy.api#documentation" => "<p>\n         Specifies the ARN (or ID suffix of the ARN) of the event data store for which you want to get Insights\n         selectors.\n      </p>\n         <p>You cannot use this parameter with the <code>TrailName</code> parameter.</p>"}))
    GetInsightSelectorsRequest.type = Types::GetInsightSelectorsRequest
    GetInsightSelectorsResponse.add_member(:trail_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TrailARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a trail for which you want to get Insights\n         selectors.</p>"}))
    GetInsightSelectorsResponse.add_member(:insight_selectors, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightSelectors, location_name: 'InsightSelectors', traits: {"smithy.api#documentation" => "<p>A JSON string that contains the Insight types you want to log on a trail or event data store. <code>ApiErrorRateInsight</code> and <code>ApiCallRateInsight</code> are supported\n         as Insights types.</p>"}))
    GetInsightSelectorsResponse.add_member(:event_data_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreArn, location_name: 'EventDataStoreArn', traits: {"smithy.api#documentation" => "<p>\n         The ARN of the source event data store that enabled Insights events.\n      </p>"}))
    GetInsightSelectorsResponse.add_member(:insights_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreArn, location_name: 'InsightsDestination', traits: {"smithy.api#documentation" => "<p>\n         The ARN of the destination event data store that logs Insights events.\n      </p>"}))
    GetInsightSelectorsResponse.type = Types::GetInsightSelectorsResponse
    GetQueryResultsRequest.add_member(:event_data_store, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreArn, location_name: 'EventDataStore', traits: {"smithy.api#deprecated" => {"message" => "EventDataStore is no longer required by GetQueryResultsRequest"}, "smithy.api#documentation" => "<p>The ARN (or ID suffix of the ARN) of the event data store against which the query was\n         run.</p>"}))
    GetQueryResultsRequest.add_member(:query_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'QueryId', traits: {"smithy.api#documentation" => "<p>The ID of the query for which you want to get results.</p>", "smithy.api#required" => {}}))
    GetQueryResultsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token you can use to get the next page of query results.</p>"}))
    GetQueryResultsRequest.add_member(:max_query_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxQueryResults, location_name: 'MaxQueryResults', traits: {"smithy.api#documentation" => "<p>The maximum number of query results to display on a single page.</p>"}))
    GetQueryResultsRequest.add_member(:event_data_store_owner_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'EventDataStoreOwnerAccountId', traits: {"smithy.api#documentation" => "<p>\nThe account ID of the event data store owner.\n</p>"}))
    GetQueryResultsRequest.type = Types::GetQueryResultsRequest
    GetQueryResultsResponse.add_member(:query_status, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStatus, location_name: 'QueryStatus', traits: {"smithy.api#documentation" => "<p>The status of the query. Values include <code>QUEUED</code>, <code>RUNNING</code>,\n            <code>FINISHED</code>, <code>FAILED</code>, <code>TIMED_OUT</code>, or\n            <code>CANCELLED</code>.</p>"}))
    GetQueryResultsResponse.add_member(:query_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStatistics, location_name: 'QueryStatistics', traits: {"smithy.api#documentation" => "<p>Shows the count of query results.</p>"}))
    GetQueryResultsResponse.add_member(:query_result_rows, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryResultRows, location_name: 'QueryResultRows', traits: {"smithy.api#documentation" => "<p>Contains the individual event results of the query.</p>"}))
    GetQueryResultsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token you can use to get the next page of query results.</p>"}))
    GetQueryResultsResponse.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The error message returned if a query failed.</p>"}))
    GetQueryResultsResponse.type = Types::GetQueryResultsResponse
    GetResourcePolicyRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>\n         The Amazon Resource Name (ARN) of the CloudTrail event data store, dashboard, or channel attached to the resource-based policy.</p>\n         <p>Example event data store ARN format:\n         <code>arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE</code>\n         </p>\n         <p>Example dashboard ARN format: <code>arn:aws:cloudtrail:us-east-1:123456789012:dashboard/exampleDash</code>\n         </p>\n         <p>Example channel ARN format:\n         <code>arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890</code>\n         </p>", "smithy.api#required" => {}}))
    GetResourcePolicyRequest.type = Types::GetResourcePolicyRequest
    GetResourcePolicyResponse.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>\n         The Amazon Resource Name (ARN) of the CloudTrail event data store, dashboard, or channel attached to resource-based policy. \n      </p>\n         <p>Example event data store ARN format:\n         <code>arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE</code>\n         </p>\n         <p>Example dashboard ARN format: <code>arn:aws:cloudtrail:us-east-1:123456789012:dashboard/exampleDash</code>\n         </p>\n         <p>Example channel ARN format:\n         <code>arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890</code>\n         </p>"}))
    GetResourcePolicyResponse.add_member(:resource_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: 'ResourcePolicy', traits: {"smithy.api#documentation" => "<p>\n         A JSON-formatted string that contains the resource-based policy attached to the CloudTrail event data store, dashboard, or channel.\n      </p>"}))
    GetResourcePolicyResponse.add_member(:delegated_admin_resource_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: 'DelegatedAdminResourcePolicy', traits: {"smithy.api#documentation" => "<p>\n         The default resource-based policy that is automatically generated for the delegated administrator of an Organizations organization. \n         This policy will be evaluated in tandem with any policy you submit for the resource. For more information about this policy, \n         see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-lake-organizations.html#cloudtrail-lake-organizations-eds-rbp\">Default resource policy for delegated administrators</a>.\n      </p>"}))
    GetResourcePolicyResponse.type = Types::GetResourcePolicyResponse
    GetTrailRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name or the Amazon Resource Name (ARN) of the trail for which you want to retrieve\n         settings information.</p>", "smithy.api#required" => {}}))
    GetTrailRequest.type = Types::GetTrailRequest
    GetTrailResponse.add_member(:trail, Smithy::Schema::Shapes::ShapeRef.new(shape: Trail, location_name: 'Trail'))
    GetTrailResponse.type = Types::GetTrailResponse
    GetTrailStatusRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Specifies the name or the CloudTrail ARN of the trail for which you are\n         requesting status. To get the status of a shadow trail (a replication of the trail in\n         another Region), you must specify its ARN.</p>\n         <p>\n         The following is the format of a trail\n         ARN: <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>\n         </p>\n         <note>\n            <p>If the trail is an organization trail and you are a member account in the organization in Organizations, you must provide the full ARN of that trail, and not just the name.</p>\n         </note>", "smithy.api#required" => {}}))
    GetTrailStatusRequest.type = Types::GetTrailStatusRequest
    GetTrailStatusResponse.add_member(:is_logging, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsLogging', traits: {"smithy.api#documentation" => "<p>Whether the CloudTrail trail is currently logging Amazon Web Services API\n         calls.</p>"}))
    GetTrailStatusResponse.add_member(:latest_delivery_error, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestDeliveryError', traits: {"smithy.api#documentation" => "<p>Displays any Amazon S3 error that CloudTrail encountered when attempting\n         to deliver log files to the designated bucket. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html\">Error\n            Responses</a> in the Amazon S3 API Reference. </p>\n         <note>\n            <p>This error occurs only when there is a problem with the destination S3 bucket, and\n            does not occur for requests that time out. To resolve the issue, \n            fix the <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/create-s3-bucket-policy-for-cloudtrail.html\">bucket policy</a> so that CloudTrail \n            can write to the bucket; or create a new bucket and call <code>UpdateTrail</code> to specify the new bucket.</p>\n         </note>"}))
    GetTrailStatusResponse.add_member(:latest_notification_error, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestNotificationError', traits: {"smithy.api#documentation" => "<p>Displays any Amazon SNS error that CloudTrail encountered when attempting\n         to send a notification. For more information about Amazon SNS errors, see the\n            <a href=\"https://docs.aws.amazon.com/sns/latest/dg/welcome.html\">Amazon SNS\n            Developer Guide</a>. </p>"}))
    GetTrailStatusResponse.add_member(:latest_delivery_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'LatestDeliveryTime', traits: {"smithy.api#documentation" => "<p>Specifies the date and time that CloudTrail last delivered log files to an\n         account's Amazon S3 bucket.</p>"}))
    GetTrailStatusResponse.add_member(:latest_notification_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'LatestNotificationTime', traits: {"smithy.api#documentation" => "<p>Specifies the date and time of the most recent Amazon SNS notification that\n            CloudTrail has written a new log file to an account's Amazon S3\n         bucket.</p>"}))
    GetTrailStatusResponse.add_member(:start_logging_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'StartLoggingTime', traits: {"smithy.api#documentation" => "<p>Specifies the most recent date and time when CloudTrail started recording API\n         calls for an Amazon Web Services account.</p>"}))
    GetTrailStatusResponse.add_member(:stop_logging_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'StopLoggingTime', traits: {"smithy.api#documentation" => "<p>Specifies the most recent date and time when CloudTrail stopped recording API\n         calls for an Amazon Web Services account.</p>"}))
    GetTrailStatusResponse.add_member(:latest_cloud_watch_logs_delivery_error, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestCloudWatchLogsDeliveryError', traits: {"smithy.api#documentation" => "<p>Displays any CloudWatch Logs error that CloudTrail encountered when attempting\n         to deliver logs to CloudWatch Logs.</p>"}))
    GetTrailStatusResponse.add_member(:latest_cloud_watch_logs_delivery_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'LatestCloudWatchLogsDeliveryTime', traits: {"smithy.api#documentation" => "<p>Displays the most recent date and time when CloudTrail delivered logs to CloudWatch Logs.</p>"}))
    GetTrailStatusResponse.add_member(:latest_digest_delivery_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'LatestDigestDeliveryTime', traits: {"smithy.api#documentation" => "<p>Specifies the date and time that CloudTrail last delivered a digest file to an\n         account's Amazon S3 bucket.</p>"}))
    GetTrailStatusResponse.add_member(:latest_digest_delivery_error, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestDigestDeliveryError', traits: {"smithy.api#documentation" => "<p>Displays any Amazon S3 error that CloudTrail encountered when attempting\n         to deliver a digest file to the designated bucket. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html\">Error\n            Responses</a> in the Amazon S3 API Reference. </p>\n         <note>\n            <p>This error occurs only when there is a problem with the destination S3 bucket, and\n            does not occur for requests that time out. To resolve the issue, \n            fix the <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/create-s3-bucket-policy-for-cloudtrail.html\">bucket policy</a> so that CloudTrail \n            can write to the bucket; or create a new bucket and call <code>UpdateTrail</code> to specify the new bucket.</p>\n         </note>"}))
    GetTrailStatusResponse.add_member(:latest_delivery_attempt_time, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestDeliveryAttemptTime', traits: {"smithy.api#documentation" => "<p>This field is no longer in use.</p>"}))
    GetTrailStatusResponse.add_member(:latest_notification_attempt_time, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestNotificationAttemptTime', traits: {"smithy.api#documentation" => "<p>This field is no longer in use.</p>"}))
    GetTrailStatusResponse.add_member(:latest_notification_attempt_succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestNotificationAttemptSucceeded', traits: {"smithy.api#documentation" => "<p>This field is no longer in use.</p>"}))
    GetTrailStatusResponse.add_member(:latest_delivery_attempt_succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestDeliveryAttemptSucceeded', traits: {"smithy.api#documentation" => "<p>This field is no longer in use.</p>"}))
    GetTrailStatusResponse.add_member(:time_logging_started, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TimeLoggingStarted', traits: {"smithy.api#documentation" => "<p>This field is no longer in use.</p>"}))
    GetTrailStatusResponse.add_member(:time_logging_stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TimeLoggingStopped', traits: {"smithy.api#documentation" => "<p>This field is no longer in use.</p>"}))
    GetTrailStatusResponse.type = Types::GetTrailStatusResponse
    ImportDestinations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreArn)
    ImportFailureList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportFailureListItem)
    ImportFailureListItem.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Location', traits: {"smithy.api#documentation" => "<p> The location of the failure in the S3 bucket. </p>"}))
    ImportFailureListItem.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportFailureStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p> The status of the import. </p>"}))
    ImportFailureListItem.add_member(:error_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorType', traits: {"smithy.api#documentation" => "<p> The type of import error. </p>"}))
    ImportFailureListItem.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p> Provides the reason the import failed. </p>"}))
    ImportFailureListItem.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p> When the import was last updated. </p>"}))
    ImportFailureListItem.type = Types::ImportFailureListItem
    ImportFailureStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ImportFailureStatus.add_member(:retry, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RETRY', traits: {"smithy.api#enumValue" => "RETRY"}))
    ImportFailureStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ImportNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    ImportNotFoundException.type = Types::ImportNotFoundException
    ImportSource.add_member(:s3, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ImportSource, location_name: 'S3', traits: {"smithy.api#documentation" => "<p> The source S3 bucket. </p>", "smithy.api#required" => {}}))
    ImportSource.type = Types::ImportSource
    ImportStatistics.add_member(:prefixes_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'PrefixesFound', traits: {"smithy.api#documentation" => "<p> The number of S3 prefixes found for the import. </p>"}))
    ImportStatistics.add_member(:prefixes_completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'PrefixesCompleted', traits: {"smithy.api#documentation" => "<p> The number of S3 prefixes that completed import. </p>"}))
    ImportStatistics.add_member(:files_completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'FilesCompleted', traits: {"smithy.api#documentation" => "<p>The number of log files that completed import.</p>"}))
    ImportStatistics.add_member(:events_completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'EventsCompleted', traits: {"smithy.api#documentation" => "<p> The number of trail events imported into the event data store. </p>"}))
    ImportStatistics.add_member(:failed_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'FailedEntries', traits: {"smithy.api#documentation" => "<p> The number of failed entries. </p>"}))
    ImportStatistics.type = Types::ImportStatistics
    ImportStatus.add_member(:initializing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INITIALIZING', traits: {"smithy.api#enumValue" => "INITIALIZING"}))
    ImportStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ImportStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ImportStatus.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    ImportStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ImportsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportsListItem)
    ImportsListItem.add_member(:import_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'ImportId', traits: {"smithy.api#documentation" => "<p> The ID of the import. </p>"}))
    ImportsListItem.add_member(:import_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportStatus, location_name: 'ImportStatus', traits: {"smithy.api#documentation" => "<p> The status of the import. </p>"}))
    ImportsListItem.add_member(:destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportDestinations, location_name: 'Destinations', traits: {"smithy.api#documentation" => "<p> The ARN of the destination event data store. </p>"}))
    ImportsListItem.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p> The timestamp of the import's creation. </p>"}))
    ImportsListItem.add_member(:updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'UpdatedTimestamp', traits: {"smithy.api#documentation" => "<p> The timestamp of the import's last update. </p>"}))
    ImportsListItem.type = Types::ImportsListItem
    InactiveEventDataStoreException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    InactiveEventDataStoreException.type = Types::InactiveEventDataStoreException
    InactiveQueryException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    InactiveQueryException.type = Types::InactiveQueryException
    IngestionStatus.add_member(:latest_ingestion_success_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'LatestIngestionSuccessTime', traits: {"smithy.api#documentation" => "<p>The time stamp of the most recent successful ingestion of events for the channel.</p>"}))
    IngestionStatus.add_member(:latest_ingestion_success_event_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'LatestIngestionSuccessEventID', traits: {"smithy.api#documentation" => "<p>The event ID of the most recent successful ingestion of events.</p>"}))
    IngestionStatus.add_member(:latest_ingestion_error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'LatestIngestionErrorCode', traits: {"smithy.api#documentation" => "<p>The error code for the most recent failure to ingest events.</p>"}))
    IngestionStatus.add_member(:latest_ingestion_attempt_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'LatestIngestionAttemptTime', traits: {"smithy.api#documentation" => "<p>The time stamp of the most recent attempt to ingest events on the channel.</p>"}))
    IngestionStatus.add_member(:latest_ingestion_attempt_event_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'LatestIngestionAttemptEventID', traits: {"smithy.api#documentation" => "<p>The event ID of the most recent attempt to ingest events.</p>"}))
    IngestionStatus.type = Types::IngestionStatus
    InsightNotEnabledException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    InsightNotEnabledException.type = Types::InsightNotEnabledException
    InsightSelector.add_member(:insight_type, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightType, location_name: 'InsightType', traits: {"smithy.api#documentation" => "<p>The type of Insights events to log on a trail or event data store. <code>ApiCallRateInsight</code> and\n            <code>ApiErrorRateInsight</code> are valid Insight types.</p>\n         <p>The <code>ApiCallRateInsight</code> Insights type analyzes write-only\n         management API calls that are aggregated per minute against a baseline API call volume.</p>\n         <p>The <code>ApiErrorRateInsight</code> Insights type analyzes management\n         API calls that result in error codes. The error is shown if the API call is\n         unsuccessful.</p>"}))
    InsightSelector.type = Types::InsightSelector
    InsightSelectors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InsightSelector)
    InsightType.add_member(:api_call_rate_insight, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ApiCallRateInsight', traits: {"smithy.api#enumValue" => "ApiCallRateInsight"}))
    InsightType.add_member(:api_error_rate_insight, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ApiErrorRateInsight', traits: {"smithy.api#enumValue" => "ApiErrorRateInsight"}))
    InsightsMetricDataType.add_member(:fill_with_zeros, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FILL_WITH_ZEROS', traits: {"smithy.api#enumValue" => "FillWithZeros"}))
    InsightsMetricDataType.add_member(:non_zero_data, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NON_ZERO_DATA', traits: {"smithy.api#enumValue" => "NonZeroData"}))
    InsightsMetricValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Double)
    InsufficientDependencyServiceAccessPermissionException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    InsufficientDependencyServiceAccessPermissionException.type = Types::InsufficientDependencyServiceAccessPermissionException
    InsufficientEncryptionPolicyException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    InsufficientEncryptionPolicyException.type = Types::InsufficientEncryptionPolicyException
    InsufficientIAMAccessPermissionException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    InsufficientIAMAccessPermissionException.type = Types::InsufficientIAMAccessPermissionException
    InsufficientS3BucketPolicyException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    InsufficientS3BucketPolicyException.type = Types::InsufficientS3BucketPolicyException
    InsufficientSnsTopicPolicyException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    InsufficientSnsTopicPolicyException.type = Types::InsufficientSnsTopicPolicyException
    InvalidCloudWatchLogsLogGroupArnException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    InvalidCloudWatchLogsLogGroupArnException.type = Types::InvalidCloudWatchLogsLogGroupArnException
    InvalidCloudWatchLogsRoleArnException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    InvalidCloudWatchLogsRoleArnException.type = Types::InvalidCloudWatchLogsRoleArnException
    InvalidDateRangeException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    InvalidDateRangeException.type = Types::InvalidDateRangeException
    InvalidEventCategoryException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    InvalidEventCategoryException.type = Types::InvalidEventCategoryException
    InvalidEventDataStoreCategoryException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    InvalidEventDataStoreCategoryException.type = Types::InvalidEventDataStoreCategoryException
    InvalidEventDataStoreStatusException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    InvalidEventDataStoreStatusException.type = Types::InvalidEventDataStoreStatusException
    InvalidEventSelectorsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    InvalidEventSelectorsException.type = Types::InvalidEventSelectorsException
    InvalidHomeRegionException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    InvalidHomeRegionException.type = Types::InvalidHomeRegionException
    InvalidImportSourceException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    InvalidImportSourceException.type = Types::InvalidImportSourceException
    InvalidInsightSelectorsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    InvalidInsightSelectorsException.type = Types::InvalidInsightSelectorsException
    InvalidKmsKeyIdException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    InvalidKmsKeyIdException.type = Types::InvalidKmsKeyIdException
    InvalidLookupAttributesException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    InvalidLookupAttributesException.type = Types::InvalidLookupAttributesException
    InvalidMaxResultsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    InvalidMaxResultsException.type = Types::InvalidMaxResultsException
    InvalidNextTokenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    InvalidParameterCombinationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    InvalidParameterCombinationException.type = Types::InvalidParameterCombinationException
    InvalidParameterException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    InvalidParameterException.type = Types::InvalidParameterException
    InvalidQueryStatementException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    InvalidQueryStatementException.type = Types::InvalidQueryStatementException
    InvalidQueryStatusException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    InvalidQueryStatusException.type = Types::InvalidQueryStatusException
    InvalidS3BucketNameException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    InvalidS3BucketNameException.type = Types::InvalidS3BucketNameException
    InvalidS3PrefixException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    InvalidS3PrefixException.type = Types::InvalidS3PrefixException
    InvalidSnsTopicNameException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    InvalidSnsTopicNameException.type = Types::InvalidSnsTopicNameException
    InvalidSourceException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    InvalidSourceException.type = Types::InvalidSourceException
    InvalidTagParameterException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    InvalidTagParameterException.type = Types::InvalidTagParameterException
    InvalidTimeRangeException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    InvalidTimeRangeException.type = Types::InvalidTimeRangeException
    InvalidTokenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    InvalidTokenException.type = Types::InvalidTokenException
    InvalidTrailNameException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    InvalidTrailNameException.type = Types::InvalidTrailNameException
    KmsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    KmsException.type = Types::KmsException
    KmsKeyDisabledException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    KmsKeyDisabledException.type = Types::KmsKeyDisabledException
    KmsKeyNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    KmsKeyNotFoundException.type = Types::KmsKeyNotFoundException
    ListChannelsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelsMaxResultsCount, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p> The maximum number of CloudTrail channels to display on a single page. </p>"}))
    ListChannelsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to get the next page of results after a previous API call. This token\n         must be passed in with the same parameters that were specified in the original call. For\n         example, if the original call specified an AttributeKey of 'Username' with a value of\n         'root', the call with NextToken should include those same parameters.</p>"}))
    ListChannelsRequest.type = Types::ListChannelsRequest
    ListChannelsResponse.add_member(:channels, Smithy::Schema::Shapes::ShapeRef.new(shape: Channels, location_name: 'Channels', traits: {"smithy.api#documentation" => "<p> The list of channels in the account. </p>"}))
    ListChannelsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to get the next page of results after a previous API call.</p>"}))
    ListChannelsResponse.type = Types::ListChannelsResponse
    ListDashboardsRequest.add_member(:name_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardName, location_name: 'NamePrefix', traits: {"smithy.api#documentation" => "<p>\nSpecify a name prefix to filter on.\n</p>"}))
    ListDashboardsRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>\nSpecify a dashboard type to filter on: <code>CUSTOM</code> or <code>MANAGED</code>.\n</p>"}))
    ListDashboardsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\n   A token you can use to get the next page of dashboard results.\n</p>"}))
    ListDashboardsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListDashboardsMaxResultsCount, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>\n   The maximum number of dashboards to display on a single page.\n</p>"}))
    ListDashboardsRequest.type = Types::ListDashboardsRequest
    ListDashboardsResponse.add_member(:dashboards, Smithy::Schema::Shapes::ShapeRef.new(shape: Dashboards, location_name: 'Dashboards', traits: {"smithy.api#documentation" => "<p>\n   Contains information about dashboards in the account, in the current Region that match the applied filters.\n</p>"}))
    ListDashboardsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\n   A token you can use to get the next page of dashboard results.\n</p>"}))
    ListDashboardsResponse.type = Types::ListDashboardsResponse
    ListEventDataStoresRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token you can use to get the next page of event data store results.</p>"}))
    ListEventDataStoresRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventDataStoresMaxResultsCount, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of event data stores to display on a single page.</p>"}))
    ListEventDataStoresRequest.type = Types::ListEventDataStoresRequest
    ListEventDataStoresResponse.add_member(:event_data_stores, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStores, location_name: 'EventDataStores', traits: {"smithy.api#documentation" => "<p>Contains information about event data stores in the account, in the current\n         Region.</p>"}))
    ListEventDataStoresResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token you can use to get the next page of results.</p>"}))
    ListEventDataStoresResponse.type = Types::ListEventDataStoresResponse
    ListImportFailuresRequest.add_member(:import_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'ImportId', traits: {"smithy.api#documentation" => "<p> The ID of the import. </p>", "smithy.api#required" => {}}))
    ListImportFailuresRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListImportFailuresMaxResultsCount, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p> The maximum number of failures to display on a single page. </p>"}))
    ListImportFailuresRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> A token you can use to get the next page of import failures. </p>"}))
    ListImportFailuresRequest.type = Types::ListImportFailuresRequest
    ListImportFailuresResponse.add_member(:failures, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportFailureList, location_name: 'Failures', traits: {"smithy.api#documentation" => "<p> Contains information about the import failures. </p>"}))
    ListImportFailuresResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> A token you can use to get the next page of results. </p>"}))
    ListImportFailuresResponse.type = Types::ListImportFailuresResponse
    ListImportsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListImportsMaxResultsCount, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p> The maximum number of imports to display on a single page. </p>"}))
    ListImportsRequest.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreArn, location_name: 'Destination', traits: {"smithy.api#documentation" => "<p> The ARN of the destination event data store. </p>"}))
    ListImportsRequest.add_member(:import_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportStatus, location_name: 'ImportStatus', traits: {"smithy.api#documentation" => "<p> The status of the import. </p>"}))
    ListImportsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> A token you can use to get the next page of import results. </p>"}))
    ListImportsRequest.type = Types::ListImportsRequest
    ListImportsResponse.add_member(:imports, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportsList, location_name: 'Imports', traits: {"smithy.api#documentation" => "<p> The list of returned imports. </p>"}))
    ListImportsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> A token you can use to get the next page of import results. </p>"}))
    ListImportsResponse.type = Types::ListImportsResponse
    ListInsightsMetricDataRequest.add_member(:event_source, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSource, location_name: 'EventSource', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services service to which the request was made, such as <code>iam.amazonaws.com</code> or <code>s3.amazonaws.com</code>.</p>", "smithy.api#required" => {}}))
    ListInsightsMetricDataRequest.add_member(:event_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventName, location_name: 'EventName', traits: {"smithy.api#documentation" => "<p>The name of the event, typically the Amazon Web Services API on which unusual levels of activity were recorded.</p>", "smithy.api#required" => {}}))
    ListInsightsMetricDataRequest.add_member(:insight_type, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightType, location_name: 'InsightType', traits: {"smithy.api#documentation" => "<p>The type of CloudTrail Insights event, which is either <code>ApiCallRateInsight</code> or <code>ApiErrorRateInsight</code>. \n         The <code>ApiCallRateInsight</code> Insights type analyzes write-only management API calls that are aggregated per minute against a baseline API call volume. \n         The <code>ApiErrorRateInsight</code> Insights type analyzes management API calls that result in error codes.</p>", "smithy.api#required" => {}}))
    ListInsightsMetricDataRequest.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>Conditionally required if the <code>InsightType</code> parameter is set to <code>ApiErrorRateInsight</code>.</p>\n         <p>If returning metrics for the <code>ApiErrorRateInsight</code> Insights type, this is the error to retrieve data for. For example, <code>AccessDenied</code>.</p>"}))
    ListInsightsMetricDataRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>Specifies, in UTC, the start time for time-series data. The value specified is inclusive; results include data points with the specified time stamp.</p>\n         <p>The default is 90 days before the time of request.</p>"}))
    ListInsightsMetricDataRequest.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>Specifies, in UTC, the end time for time-series data. The value specified is exclusive; \n         results include data points up to the specified time stamp.</p>\n         <p>The default is the time of request.</p>"}))
    ListInsightsMetricDataRequest.add_member(:period, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightsMetricPeriod, location_name: 'Period', traits: {"smithy.api#documentation" => "<p>Granularity of data to retrieve, in seconds. Valid values are <code>60</code>, <code>300</code>, and <code>3600</code>. \n         If you specify any other value, you will get an error. The default is 3600 seconds.</p>"}))
    ListInsightsMetricDataRequest.add_member(:data_type, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightsMetricDataType, location_name: 'DataType', traits: {"smithy.api#documentation" => "<p>Type of data points to return. Valid values are <code>NonZeroData</code> and \n         <code>FillWithZeros</code>. The default is <code>NonZeroData</code>.</p>"}))
    ListInsightsMetricDataRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightsMetricMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of data points to return. Valid values are integers from 1 to 21600. \n         The default value is 21600.</p>"}))
    ListInsightsMetricDataRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightsMetricNextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Returned if all datapoints can't be returned in a single call. For example, due to reaching <code>MaxResults</code>.</p>\n         <p>Add this parameter to the request to continue retrieving results starting from the last evaluated point.</p>"}))
    ListInsightsMetricDataRequest.type = Types::ListInsightsMetricDataRequest
    ListInsightsMetricDataResponse.add_member(:event_source, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSource, location_name: 'EventSource', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services service to which the request was made, such as <code>iam.amazonaws.com</code> or <code>s3.amazonaws.com</code>.</p>"}))
    ListInsightsMetricDataResponse.add_member(:event_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventName, location_name: 'EventName', traits: {"smithy.api#documentation" => "<p>The name of the event, typically the Amazon Web Services API on which unusual levels of activity were recorded.</p>"}))
    ListInsightsMetricDataResponse.add_member(:insight_type, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightType, location_name: 'InsightType', traits: {"smithy.api#documentation" => "<p>The type of CloudTrail Insights event, which is either <code>ApiCallRateInsight</code> or <code>ApiErrorRateInsight</code>. \n         The <code>ApiCallRateInsight</code> Insights type analyzes write-only management API calls that are aggregated per minute against a baseline API call volume. \n         The <code>ApiErrorRateInsight</code> Insights type analyzes management API calls that result in error codes.</p>"}))
    ListInsightsMetricDataResponse.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>Only returned if <code>InsightType</code> parameter was set to <code>ApiErrorRateInsight</code>.</p>\n         <p>If returning metrics for the <code>ApiErrorRateInsight</code> Insights type, this is the error to retrieve data for. For example, <code>AccessDenied</code>.</p>"}))
    ListInsightsMetricDataResponse.add_member(:timestamps, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamps, location_name: 'Timestamps', traits: {"smithy.api#documentation" => "<p>List of timestamps at intervals corresponding to the specified time period.</p>"}))
    ListInsightsMetricDataResponse.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightsMetricValues, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>List of values representing the API call rate or error rate at each timestamp. The number of values is equal to the number of timestamps.</p>"}))
    ListInsightsMetricDataResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightsMetricNextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Only returned if the full results could not be returned in a single query. You can set the <code>NextToken</code> parameter \n         in the next request to this value to continue retrieval.</p>"}))
    ListInsightsMetricDataResponse.type = Types::ListInsightsMetricDataResponse
    ListPublicKeysRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>Optionally specifies, in UTC, the start of the time range to look up public keys for\n            CloudTrail digest files. If not specified, the current time is used, and the\n         current public key is returned.</p>"}))
    ListPublicKeysRequest.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>Optionally specifies, in UTC, the end of the time range to look up public keys for\n            CloudTrail digest files. If not specified, the current time is used.</p>"}))
    ListPublicKeysRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Reserved for future use.</p>"}))
    ListPublicKeysRequest.type = Types::ListPublicKeysRequest
    ListPublicKeysResponse.add_member(:public_key_list, Smithy::Schema::Shapes::ShapeRef.new(shape: PublicKeyList, location_name: 'PublicKeyList', traits: {"smithy.api#documentation" => "<p>Contains an array of PublicKey objects.</p>\n         <note>\n            <p>The returned public keys may have validity time ranges that overlap.</p>\n         </note>"}))
    ListPublicKeysResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Reserved for future use.</p>"}))
    ListPublicKeysResponse.type = Types::ListPublicKeysResponse
    ListQueriesRequest.add_member(:event_data_store, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreArn, location_name: 'EventDataStore', traits: {"smithy.api#documentation" => "<p>The ARN (or the ID suffix of the ARN) of an event data store on which queries were\n         run.</p>", "smithy.api#required" => {}}))
    ListQueriesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token you can use to get the next page of results.</p>"}))
    ListQueriesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListQueriesMaxResultsCount, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of queries to show on a page.</p>"}))
    ListQueriesRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>Use with <code>EndTime</code> to bound a <code>ListQueries</code> request, and limit its\n         results to only those queries run within a specified time period.</p>"}))
    ListQueriesRequest.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>Use with <code>StartTime</code> to bound a <code>ListQueries</code> request, and limit\n         its results to only those queries run within a specified time period.</p>"}))
    ListQueriesRequest.add_member(:query_status, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStatus, location_name: 'QueryStatus', traits: {"smithy.api#documentation" => "<p>The status of queries that you want to return in results. Valid values for\n            <code>QueryStatus</code> include <code>QUEUED</code>, <code>RUNNING</code>,\n            <code>FINISHED</code>, <code>FAILED</code>, <code>TIMED_OUT</code>, or\n            <code>CANCELLED</code>.</p>"}))
    ListQueriesRequest.type = Types::ListQueriesRequest
    ListQueriesResponse.add_member(:queries, Smithy::Schema::Shapes::ShapeRef.new(shape: Queries, location_name: 'Queries', traits: {"smithy.api#documentation" => "<p>Lists matching query results, and shows query ID, status, and creation time of each\n         query.</p>"}))
    ListQueriesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token you can use to get the next page of results.</p>"}))
    ListQueriesResponse.type = Types::ListQueriesResponse
    ListTagsRequest.add_member(:resource_id_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdList, location_name: 'ResourceIdList', traits: {"smithy.api#documentation" => "<p>Specifies a list of trail, event data store, dashboard, or channel ARNs whose tags will be listed. The list\n         has a limit of 20 ARNs.</p>\n         <p> Example trail ARN format:\n         <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>\n         </p>\n         <p>Example event data store ARN format:\n         <code>arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE</code>\n         </p>\n         <p>Example dashboard ARN format: <code>arn:aws:cloudtrail:us-east-1:123456789012:dashboard/exampleDash</code>\n         </p>\n         <p>Example channel ARN format:\n         <code>arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890</code>\n         </p>", "smithy.api#required" => {}}))
    ListTagsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Reserved for future use.</p>"}))
    ListTagsRequest.type = Types::ListTagsRequest
    ListTagsResponse.add_member(:resource_tag_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagList, location_name: 'ResourceTagList', traits: {"smithy.api#documentation" => "<p>A list of resource tags.</p>"}))
    ListTagsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Reserved for future use.</p>"}))
    ListTagsResponse.type = Types::ListTagsResponse
    ListTrailsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to get the next page of results after a previous API call. This token\n         must be passed in with the same parameters that were specified in the original call. For\n         example, if the original call specified an AttributeKey of 'Username' with a value of\n         'root', the call with NextToken should include those same parameters.</p>"}))
    ListTrailsRequest.type = Types::ListTrailsRequest
    ListTrailsResponse.add_member(:trails, Smithy::Schema::Shapes::ShapeRef.new(shape: Trails, location_name: 'Trails', traits: {"smithy.api#documentation" => "<p>Returns the name, ARN, and home Region of trails in the current account.</p>"}))
    ListTrailsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to get the next page of results after a previous API call. If the token\n         does not appear, there are no more results to return. The token must be passed in with the\n         same parameters as the previous call. For example, if the original call specified an\n         AttributeKey of 'Username' with a value of 'root', the call with NextToken should include\n         those same parameters.</p>"}))
    ListTrailsResponse.type = Types::ListTrailsResponse
    LookupAttribute.add_member(:attribute_key, Smithy::Schema::Shapes::ShapeRef.new(shape: LookupAttributeKey, location_name: 'AttributeKey', traits: {"smithy.api#documentation" => "<p>Specifies an attribute on which to filter the events returned.</p>", "smithy.api#required" => {}}))
    LookupAttribute.add_member(:attribute_value, Smithy::Schema::Shapes::ShapeRef.new(shape: LookupAttributeValue, location_name: 'AttributeValue', traits: {"smithy.api#documentation" => "<p>Specifies a value for the specified <code>AttributeKey</code>.</p>\n         <p>The maximum length for the <code>AttributeValue</code> is 2000 characters. The\n         following characters ('<code>_</code>', '<code> </code>', '<code>,</code>',\n         '<code>\\\\n</code>') count as two characters towards the 2000 character limit.</p>", "smithy.api#required" => {}}))
    LookupAttribute.type = Types::LookupAttribute
    LookupAttributeKey.add_member(:event_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EVENT_ID', traits: {"smithy.api#enumValue" => "EventId"}))
    LookupAttributeKey.add_member(:event_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EVENT_NAME', traits: {"smithy.api#enumValue" => "EventName"}))
    LookupAttributeKey.add_member(:read_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READ_ONLY', traits: {"smithy.api#enumValue" => "ReadOnly"}))
    LookupAttributeKey.add_member(:username, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USERNAME', traits: {"smithy.api#enumValue" => "Username"}))
    LookupAttributeKey.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_TYPE', traits: {"smithy.api#enumValue" => "ResourceType"}))
    LookupAttributeKey.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_NAME', traits: {"smithy.api#enumValue" => "ResourceName"}))
    LookupAttributeKey.add_member(:event_source, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EVENT_SOURCE', traits: {"smithy.api#enumValue" => "EventSource"}))
    LookupAttributeKey.add_member(:access_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_KEY_ID', traits: {"smithy.api#enumValue" => "AccessKeyId"}))
    LookupAttributesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LookupAttribute)
    LookupEventsRequest.add_member(:lookup_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: LookupAttributesList, location_name: 'LookupAttributes', traits: {"smithy.api#documentation" => "<p>Contains a list of lookup attributes. Currently the list can contain only one\n         item.</p>"}))
    LookupEventsRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>Specifies that only events that occur after or at the specified time are returned. If\n         the specified start time is after the specified end time, an error is returned.</p>"}))
    LookupEventsRequest.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>Specifies that only events that occur before or at the specified time are returned. If\n         the specified end time is before the specified start time, an error is returned.</p>"}))
    LookupEventsRequest.add_member(:event_category, Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategory, location_name: 'EventCategory', traits: {"smithy.api#documentation" => "<p>Specifies the event category. If you do not specify an event category, events of the\n         category are not returned in the response. For example, if you do not specify\n            <code>insight</code> as the value of <code>EventCategory</code>, no Insights events are\n         returned.</p>"}))
    LookupEventsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The number of events to return. Possible values are 1 through 50. The default is\n         50.</p>"}))
    LookupEventsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to get the next page of results after a previous API call. This token\n         must be passed in with the same parameters that were specified in the original call. For\n         example, if the original call specified an AttributeKey of 'Username' with a value of\n         'root', the call with NextToken should include those same parameters.</p>"}))
    LookupEventsRequest.type = Types::LookupEventsRequest
    LookupEventsResponse.add_member(:events, Smithy::Schema::Shapes::ShapeRef.new(shape: EventsList, location_name: 'Events', traits: {"smithy.api#documentation" => "<p>A list of events returned based on the lookup attributes specified and the CloudTrail event. The events list is sorted by time. The most recent event is listed\n         first.</p>"}))
    LookupEventsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to get the next page of results after a previous API call. If the token\n         does not appear, there are no more results to return. The token must be passed in with the\n         same parameters as the previous call. For example, if the original call specified an\n         AttributeKey of 'Username' with a value of 'root', the call with NextToken should include\n         those same parameters.</p>"}))
    LookupEventsResponse.type = Types::LookupEventsResponse
    MaxConcurrentQueriesException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    MaxConcurrentQueriesException.type = Types::MaxConcurrentQueriesException
    MaxEventSize.add_member(:standard, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Standard', traits: {"smithy.api#enumValue" => "Standard"}))
    MaxEventSize.add_member(:large, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Large', traits: {"smithy.api#enumValue" => "Large"}))
    MaximumNumberOfTrailsExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    MaximumNumberOfTrailsExceededException.type = Types::MaximumNumberOfTrailsExceededException
    NoManagementAccountSLRExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    NoManagementAccountSLRExistsException.type = Types::NoManagementAccountSLRExistsException
    NotOrganizationManagementAccountException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    NotOrganizationManagementAccountException.type = Types::NotOrganizationManagementAccountException
    NotOrganizationMasterAccountException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    NotOrganizationMasterAccountException.type = Types::NotOrganizationMasterAccountException
    OperationNotPermittedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    OperationNotPermittedException.type = Types::OperationNotPermittedException
    Operator.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OperatorValue)
    OperatorTargetList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OperatorTargetListMember)
    OrganizationNotInAllFeaturesModeException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    OrganizationNotInAllFeaturesModeException.type = Types::OrganizationNotInAllFeaturesModeException
    OrganizationsNotInUseException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    OrganizationsNotInUseException.type = Types::OrganizationsNotInUseException
    PartitionKey.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PartitionKeyName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the partition key.</p>", "smithy.api#required" => {}}))
    PartitionKey.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: PartitionKeyType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The data type of the partition key. For example, <code>bigint</code> or <code>string</code>.</p>", "smithy.api#required" => {}}))
    PartitionKey.type = Types::PartitionKey
    PartitionKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PartitionKey)
    PublicKey.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: ByteBuffer, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The DER encoded public key value in PKCS#1 format.</p>"}))
    PublicKey.add_member(:validity_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'ValidityStartTime', traits: {"smithy.api#documentation" => "<p>The starting time of validity of the public key.</p>"}))
    PublicKey.add_member(:validity_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'ValidityEndTime', traits: {"smithy.api#documentation" => "<p>The ending time of validity of the public key.</p>"}))
    PublicKey.add_member(:fingerprint, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Fingerprint', traits: {"smithy.api#documentation" => "<p>The fingerprint of the public key.</p>"}))
    PublicKey.type = Types::PublicKey
    PublicKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PublicKey)
    PutEventConfigurationRequest.add_member(:event_data_store, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EventDataStore', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) or ID suffix of the ARN of the event data store for which you want to update event configuration settings.</p>"}))
    PutEventConfigurationRequest.add_member(:max_event_size, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxEventSize, location_name: 'MaxEventSize', traits: {"smithy.api#documentation" => "<p>The maximum allowed size for events to be stored in the specified event data store. If you are using context key selectors, MaxEventSize must be set to Large.</p>", "smithy.api#required" => {}}))
    PutEventConfigurationRequest.add_member(:context_key_selectors, Smithy::Schema::Shapes::ShapeRef.new(shape: ContextKeySelectors, location_name: 'ContextKeySelectors', traits: {"smithy.api#documentation" => "<p>A list of context key selectors that will be included to provide enriched event data.</p>", "smithy.api#required" => {}}))
    PutEventConfigurationRequest.type = Types::PutEventConfigurationRequest
    PutEventConfigurationResponse.add_member(:event_data_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreArn, location_name: 'EventDataStoreArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) or ID suffix of the ARN of the event data store for which the event configuration settings were updated.</p>"}))
    PutEventConfigurationResponse.add_member(:max_event_size, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxEventSize, location_name: 'MaxEventSize', traits: {"smithy.api#documentation" => "<p>The maximum allowed size for events stored in the specified event data store.</p>"}))
    PutEventConfigurationResponse.add_member(:context_key_selectors, Smithy::Schema::Shapes::ShapeRef.new(shape: ContextKeySelectors, location_name: 'ContextKeySelectors', traits: {"smithy.api#documentation" => "<p>The list of context key selectors that are configured for the event data store.</p>"}))
    PutEventConfigurationResponse.type = Types::PutEventConfigurationResponse
    PutEventSelectorsRequest.add_member(:trail_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TrailName', traits: {"smithy.api#documentation" => "<p>Specifies the name of the trail or trail ARN. If you specify a trail name, the string\n         must meet the following requirements:</p>\n         <ul>\n            <li>\n               <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores\n               (_), or dashes (-)</p>\n            </li>\n            <li>\n               <p>Start with a letter or number, and end with a letter or number</p>\n            </li>\n            <li>\n               <p>Be between 3 and 128 characters</p>\n            </li>\n            <li>\n               <p>Have no adjacent periods, underscores or dashes. Names like\n                  <code>my-_namespace</code> and <code>my--namespace</code> are not valid.</p>\n            </li>\n            <li>\n               <p>Not be in IP address format (for example, 192.168.5.4)</p>\n            </li>\n         </ul>\n         <p>If you specify a trail ARN, it must be in the following format.</p>\n         <p>\n            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>\n         </p>", "smithy.api#required" => {}}))
    PutEventSelectorsRequest.add_member(:event_selectors, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSelectors, location_name: 'EventSelectors', traits: {"smithy.api#documentation" => "<p>Specifies the settings for your event selectors. You can use event selectors to log management events and data events for the following resource types:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>AWS::DynamoDB::Table</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS::Lambda::Function</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS::S3::Object</code>\n               </p>\n            </li>\n         </ul>\n         <p>You can't use event selectors to log network activity events.</p>\n         <p>You can configure up to five event\n         selectors for a trail. You can use either <code>EventSelectors</code> or\n            <code>AdvancedEventSelectors</code> in a <code>PutEventSelectors</code> request, but not\n         both. If you apply <code>EventSelectors</code> to a trail, any existing\n            <code>AdvancedEventSelectors</code> are overwritten.</p>"}))
    PutEventSelectorsRequest.add_member(:advanced_event_selectors, Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedEventSelectors, location_name: 'AdvancedEventSelectors', traits: {"smithy.api#documentation" => "<p> Specifies the settings for advanced event selectors. You can use advanced event selectors to \n         log management events, data events for all resource types, and network activity events.</p>\n         <p>You can add advanced event\n         selectors, and conditions for your advanced event selectors, up to a maximum of 500 values\n         for all conditions and selectors on a trail. You can use either\n            <code>AdvancedEventSelectors</code> or <code>EventSelectors</code>, but not both. If you\n         apply <code>AdvancedEventSelectors</code> to a trail, any existing\n            <code>EventSelectors</code> are overwritten. For more information about advanced event\n         selectors, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html\">Logging data events</a> and \n         <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-network-events-with-cloudtrail.html\">Logging network activity events</a>\n         in the <i>CloudTrail User Guide</i>. </p>"}))
    PutEventSelectorsRequest.type = Types::PutEventSelectorsRequest
    PutEventSelectorsResponse.add_member(:trail_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TrailARN', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the trail that was updated with event selectors. The following is\n         the format of a trail ARN.</p>\n         <p>\n            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>\n         </p>"}))
    PutEventSelectorsResponse.add_member(:event_selectors, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSelectors, location_name: 'EventSelectors', traits: {"smithy.api#documentation" => "<p>Specifies the event selectors configured for your trail.</p>"}))
    PutEventSelectorsResponse.add_member(:advanced_event_selectors, Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedEventSelectors, location_name: 'AdvancedEventSelectors', traits: {"smithy.api#documentation" => "<p>Specifies the advanced event selectors configured for your trail.</p>"}))
    PutEventSelectorsResponse.type = Types::PutEventSelectorsResponse
    PutInsightSelectorsRequest.add_member(:trail_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TrailName', traits: {"smithy.api#documentation" => "<p>The name of the CloudTrail trail for which you want to change or add Insights\n         selectors.</p>\n         <p>You cannot use this parameter with the <code>EventDataStore</code> and <code>InsightsDestination</code> parameters.</p>"}))
    PutInsightSelectorsRequest.add_member(:insight_selectors, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightSelectors, location_name: 'InsightSelectors', traits: {"smithy.api#documentation" => "<p>A JSON string that contains the Insights types you want to log on a trail or event data store.\n            <code>ApiCallRateInsight</code> and <code>ApiErrorRateInsight</code> are valid Insight\n         types.</p>\n         <p>The <code>ApiCallRateInsight</code> Insights type analyzes write-only\n         management API calls that are aggregated per minute against a baseline API call volume.</p>\n         <p>The <code>ApiErrorRateInsight</code> Insights type analyzes management\n         API calls that result in error codes. The error is shown if the API call is\n         unsuccessful.</p>", "smithy.api#required" => {}}))
    PutInsightSelectorsRequest.add_member(:event_data_store, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreArn, location_name: 'EventDataStore', traits: {"smithy.api#documentation" => "<p>The ARN (or ID suffix of the ARN) of the source event data store for which you want to change or add Insights\n         selectors. To enable Insights on an event data store, you must provide both the \n         <code>EventDataStore</code> and <code>InsightsDestination</code> parameters.</p>\n         <p>You cannot use this parameter with the <code>TrailName</code> parameter.</p>"}))
    PutInsightSelectorsRequest.add_member(:insights_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreArn, location_name: 'InsightsDestination', traits: {"smithy.api#documentation" => "<p>\n         The ARN (or ID suffix of the ARN) of the destination event data store that logs Insights events. To enable Insights on an event data store, you must provide both the \n         <code>EventDataStore</code> and <code>InsightsDestination</code> parameters.\n      </p>\n         <p>You cannot use this parameter with the <code>TrailName</code> parameter.</p>"}))
    PutInsightSelectorsRequest.type = Types::PutInsightSelectorsRequest
    PutInsightSelectorsResponse.add_member(:trail_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TrailARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a trail for which you want to change or add Insights\n         selectors.</p>"}))
    PutInsightSelectorsResponse.add_member(:insight_selectors, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightSelectors, location_name: 'InsightSelectors', traits: {"smithy.api#documentation" => "<p>A JSON string that contains the Insights event types that you want to log on a trail or event data store.\n         The valid Insights types are <code>ApiErrorRateInsight</code> and\n            <code>ApiCallRateInsight</code>.</p>"}))
    PutInsightSelectorsResponse.add_member(:event_data_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreArn, location_name: 'EventDataStoreArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the source event data store for which you want to change or add Insights\n         selectors.</p>"}))
    PutInsightSelectorsResponse.add_member(:insights_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreArn, location_name: 'InsightsDestination', traits: {"smithy.api#documentation" => "<p>\n            The ARN of the destination event data store that logs Insights events.\n      </p>"}))
    PutInsightSelectorsResponse.type = Types::PutInsightSelectorsResponse
    PutResourcePolicyRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>\n         The Amazon Resource Name (ARN) of the CloudTrail event data store, dashboard, or channel attached to the resource-based policy.</p>\n         <p>Example event data store ARN format:\n         <code>arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE</code>\n         </p>\n         <p>Example dashboard ARN format: <code>arn:aws:cloudtrail:us-east-1:123456789012:dashboard/exampleDash</code>\n         </p>\n         <p>Example channel ARN format:\n         <code>arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890</code>\n         </p>", "smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:resource_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: 'ResourcePolicy', traits: {"smithy.api#documentation" => "<p>\n         A JSON-formatted string for an Amazon Web Services resource-based policy.\n      </p>\n         <p> For example resource-based policies, see \n         <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/security_iam_resource-based-policy-examples.html\">CloudTrail resource-based policy examples</a> \n         in the <i>CloudTrail User Guide</i>.</p>", "smithy.api#required" => {}}))
    PutResourcePolicyRequest.type = Types::PutResourcePolicyRequest
    PutResourcePolicyResponse.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>\n         The Amazon Resource Name (ARN) of the CloudTrail event data store, dashboard, or channel attached to the resource-based policy.\n      </p>\n         <p>Example event data store ARN format:\n         <code>arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE</code>\n         </p>\n         <p>Example dashboard ARN format: <code>arn:aws:cloudtrail:us-east-1:123456789012:dashboard/exampleDash</code>\n         </p>\n         <p>Example channel ARN format:\n         <code>arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890</code>\n         </p>"}))
    PutResourcePolicyResponse.add_member(:resource_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: 'ResourcePolicy', traits: {"smithy.api#documentation" => "<p>\n         The JSON-formatted string of the Amazon Web Services resource-based policy attached to the CloudTrail event data store, dashboard, or channel.\n      </p>"}))
    PutResourcePolicyResponse.add_member(:delegated_admin_resource_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: 'DelegatedAdminResourcePolicy', traits: {"smithy.api#documentation" => "<p>\n         The default resource-based policy that is automatically generated for the delegated administrator of an Organizations organization. \n         This policy will be evaluated in tandem with any policy you submit for the resource. For more information about this policy, \n         see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-lake-organizations.html#cloudtrail-lake-organizations-eds-rbp\">Default resource policy for delegated administrators</a>.\n      </p>"}))
    PutResourcePolicyResponse.type = Types::PutResourcePolicyResponse
    Queries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Query)
    Query.add_member(:query_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'QueryId', traits: {"smithy.api#documentation" => "<p>The ID of a query.</p>"}))
    Query.add_member(:query_status, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStatus, location_name: 'QueryStatus', traits: {"smithy.api#documentation" => "<p>The status of the query. This can be <code>QUEUED</code>, <code>RUNNING</code>,\n            <code>FINISHED</code>, <code>FAILED</code>, <code>TIMED_OUT</code>, or\n            <code>CANCELLED</code>.</p>"}))
    Query.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The creation time of a query.</p>"}))
    Query.type = Types::Query
    QueryIdNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    QueryIdNotFoundException.type = Types::QueryIdNotFoundException
    QueryParameterValues.key = Smithy::Schema::Shapes::ShapeRef.new(shape: QueryParameterKey)
    QueryParameterValues.value = Smithy::Schema::Shapes::ShapeRef.new(shape: QueryParameterValue)
    QueryParameters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QueryParameter)
    QueryResultColumn.key = Smithy::Schema::Shapes::ShapeRef.new(shape: QueryResultKey)
    QueryResultColumn.value = Smithy::Schema::Shapes::ShapeRef.new(shape: QueryResultValue)
    QueryResultRow.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QueryResultColumn)
    QueryResultRows.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QueryResultRow)
    QueryStatistics.add_member(:results_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ResultsCount', traits: {"smithy.api#documentation" => "<p>The number of results returned.</p>"}))
    QueryStatistics.add_member(:total_results_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TotalResultsCount', traits: {"smithy.api#documentation" => "<p>The total number of results returned by a query.</p>"}))
    QueryStatistics.add_member(:bytes_scanned, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'BytesScanned', traits: {"smithy.api#documentation" => "<p>The total bytes that the query scanned in the event data store. This value matches the\n         number of bytes for which your account is billed for the query, unless the query is still\n         running.</p>"}))
    QueryStatistics.type = Types::QueryStatistics
    QueryStatisticsForDescribeQuery.add_member(:events_matched, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'EventsMatched', traits: {"smithy.api#documentation" => "<p>The number of events that matched a query.</p>"}))
    QueryStatisticsForDescribeQuery.add_member(:events_scanned, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'EventsScanned', traits: {"smithy.api#documentation" => "<p>The number of events that the query scanned in the event data store.</p>"}))
    QueryStatisticsForDescribeQuery.add_member(:bytes_scanned, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'BytesScanned', traits: {"smithy.api#documentation" => "<p>The total bytes that the query scanned in the event data store. This value matches the\n         number of bytes for which your account is billed for the query, unless the query is still\n         running.</p>"}))
    QueryStatisticsForDescribeQuery.add_member(:execution_time_in_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ExecutionTimeInMillis', traits: {"smithy.api#documentation" => "<p>The query's run time, in milliseconds.</p>"}))
    QueryStatisticsForDescribeQuery.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The creation time of the query.</p>"}))
    QueryStatisticsForDescribeQuery.type = Types::QueryStatisticsForDescribeQuery
    QueryStatus.add_member(:queued, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUEUED', traits: {"smithy.api#enumValue" => "QUEUED"}))
    QueryStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    QueryStatus.add_member(:finished, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FINISHED', traits: {"smithy.api#enumValue" => "FINISHED"}))
    QueryStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    QueryStatus.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    QueryStatus.add_member(:timed_out, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMED_OUT', traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    ReadWriteType.add_member(:read_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReadOnly', traits: {"smithy.api#enumValue" => "ReadOnly"}))
    ReadWriteType.add_member(:write_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WriteOnly', traits: {"smithy.api#enumValue" => "WriteOnly"}))
    ReadWriteType.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'All', traits: {"smithy.api#enumValue" => "All"}))
    RefreshSchedule.add_member(:frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshScheduleFrequency, location_name: 'Frequency', traits: {"smithy.api#documentation" => "<p>\nThe frequency at which you want the dashboard refreshed.\n</p>"}))
    RefreshSchedule.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshScheduleStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>\nSpecifies whether the refresh schedule is enabled. Set the value to <code>ENABLED</code> to enable the refresh schedule, or to <code>DISABLED</code> to turn off the refresh schedule.\n</p>"}))
    RefreshSchedule.add_member(:time_of_day, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeOfDay, location_name: 'TimeOfDay', traits: {"smithy.api#documentation" => "<p>\n   The time of day in UTC to run the schedule; for hourly only refer to minutes; default is 00:00.\n</p>"}))
    RefreshSchedule.type = Types::RefreshSchedule
    RefreshScheduleFrequency.add_member(:unit, Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshScheduleFrequencyUnit, location_name: 'Unit', traits: {"smithy.api#documentation" => "<p>\n   The unit to use for the refresh.\n</p>\n         <p>For custom dashboards, the unit can be <code>HOURS</code> or <code>DAYS</code>.</p>\n         <p>For the Highlights dashboard, the <code>Unit</code> must be <code>HOURS</code>.</p>"}))
    RefreshScheduleFrequency.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshScheduleFrequencyValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>\nThe value for the refresh schedule.\n</p>\n         <p>\n   For custom dashboards, the following values are valid when the unit is <code>HOURS</code>: <code>1</code>, <code>6</code>, <code>12</code>, <code>24</code>\n         </p>\n         <p>For custom dashboards, the only valid value when the unit is <code>DAYS</code> is <code>1</code>.</p>\n         <p>For the Highlights dashboard, the <code>Value</code> must be <code>6</code>.</p>"}))
    RefreshScheduleFrequency.type = Types::RefreshScheduleFrequency
    RefreshScheduleFrequencyUnit.add_member(:hours, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HOURS', traits: {"smithy.api#enumValue" => "HOURS"}))
    RefreshScheduleFrequencyUnit.add_member(:days, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DAYS', traits: {"smithy.api#enumValue" => "DAYS"}))
    RefreshScheduleStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    RefreshScheduleStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    RegisterOrganizationDelegatedAdminRequest.add_member(:member_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'MemberAccountId', traits: {"smithy.api#documentation" => "<p>An organization member account ID that you want to designate as a delegated\n         administrator.</p>", "smithy.api#required" => {}}))
    RegisterOrganizationDelegatedAdminRequest.type = Types::RegisterOrganizationDelegatedAdminRequest
    RegisterOrganizationDelegatedAdminResponse.type = Types::RegisterOrganizationDelegatedAdminResponse
    RemoveTagsRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the trail, event data store, dashboard, or channel from which tags should be\n         removed.</p>\n         <p> Example trail ARN format:\n            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>\n         </p>\n         <p>Example event data store ARN format:\n         <code>arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE</code>\n         </p>\n         <p>Example dashboard ARN format: <code>arn:aws:cloudtrail:us-east-1:123456789012:dashboard/exampleDash</code>\n         </p>\n         <p>Example channel ARN format:\n         <code>arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890</code>\n         </p>", "smithy.api#required" => {}}))
    RemoveTagsRequest.add_member(:tags_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsList, location_name: 'TagsList', traits: {"smithy.api#documentation" => "<p>Specifies a list of tags to be removed.</p>", "smithy.api#required" => {}}))
    RemoveTagsRequest.type = Types::RemoveTagsRequest
    RemoveTagsResponse.type = Types::RemoveTagsResponse
    RequestWidget.add_member(:query_statement, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStatement, location_name: 'QueryStatement', traits: {"smithy.api#documentation" => "<p>\nThe query statement for the widget. For custom dashboard widgets, you can query across multiple event data stores as long as all event data stores exist in your account.\n</p>\n         <note>\n            <p>When a query uses <code>?</code> with <code>eventTime</code>, <code>?</code> must be surrounded by single quotes as follows: <code>'?'</code>.</p>\n         </note>", "smithy.api#required" => {}}))
    RequestWidget.add_member(:query_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryParameters, location_name: 'QueryParameters', traits: {"smithy.api#documentation" => "<p>\n   The optional query parameters. The following query parameters are valid: <code>$StartTime$</code>, <code>$EndTime$</code>, and <code>$Period$</code>.\n</p>"}))
    RequestWidget.add_member(:view_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ViewPropertiesMap, location_name: 'ViewProperties', traits: {"smithy.api#documentation" => "<p>\n   The view properties for the widget. For more information about view properties, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/lake-widget-properties.html\">\n      View properties for widgets\n   </a> in the <i>CloudTrail User Guide</i>.\n</p>", "smithy.api#required" => {}}))
    RequestWidget.type = Types::RequestWidget
    RequestWidgetList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RequestWidget)
    Resource.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The type of a resource referenced by the event returned. When the resource type cannot\n         be determined, null is returned. Some examples of resource types are: <b>Instance</b> for EC2, <b>Trail</b> for CloudTrail, <b>DBInstance</b> for Amazon RDS, and <b>AccessKey</b> for IAM. To learn more about how to look up and filter\n         events by the resource types supported for a service, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/view-cloudtrail-events-console.html#filtering-cloudtrail-events\">Filtering CloudTrail Events</a>.</p>"}))
    Resource.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#documentation" => "<p>The name of the resource referenced by the event returned. These are user-created names\n         whose values will depend on the environment. For example, the resource name might be\n         \"auto-scaling-test-group\" for an Auto Scaling Group or \"i-1234567\" for an EC2\n         Instance.</p>"}))
    Resource.type = Types::Resource
    ResourceARNNotValidException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    ResourceARNNotValidException.type = Types::ResourceARNNotValidException
    ResourceIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ResourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Resource)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourcePolicyNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    ResourcePolicyNotFoundException.type = Types::ResourcePolicyNotFoundException
    ResourcePolicyNotValidException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    ResourcePolicyNotValidException.type = Types::ResourcePolicyNotValidException
    ResourceTag.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the resource.</p>"}))
    ResourceTag.add_member(:tags_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsList, location_name: 'TagsList', traits: {"smithy.api#documentation" => "<p>A list of tags.</p>"}))
    ResourceTag.type = Types::ResourceTag
    ResourceTagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTag)
    ResourceTypeNotSupportedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    ResourceTypeNotSupportedException.type = Types::ResourceTypeNotSupportedException
    RestoreEventDataStoreRequest.add_member(:event_data_store, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreArn, location_name: 'EventDataStore', traits: {"smithy.api#documentation" => "<p>The ARN (or the ID suffix of the ARN) of the event data store that you want to\n         restore.</p>", "smithy.api#required" => {}}))
    RestoreEventDataStoreRequest.type = Types::RestoreEventDataStoreRequest
    RestoreEventDataStoreResponse.add_member(:event_data_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreArn, location_name: 'EventDataStoreArn', traits: {"smithy.api#documentation" => "<p>The event data store ARN.</p>"}))
    RestoreEventDataStoreResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the event data store.</p>"}))
    RestoreEventDataStoreResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the event data store.</p>"}))
    RestoreEventDataStoreResponse.add_member(:advanced_event_selectors, Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedEventSelectors, location_name: 'AdvancedEventSelectors', traits: {"smithy.api#documentation" => "<p>The advanced event selectors that were used to select events.</p>"}))
    RestoreEventDataStoreResponse.add_member(:multi_region_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'MultiRegionEnabled', traits: {"smithy.api#documentation" => "<p>Indicates whether the event data store is collecting events from all Regions, or only\n         from the Region in which the event data store was created.</p>"}))
    RestoreEventDataStoreResponse.add_member(:organization_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'OrganizationEnabled', traits: {"smithy.api#documentation" => "<p>Indicates whether an event data store is collecting logged events for an organization in\n            Organizations.</p>"}))
    RestoreEventDataStoreResponse.add_member(:retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'RetentionPeriod', traits: {"smithy.api#documentation" => "<p>The retention period, in days.</p>"}))
    RestoreEventDataStoreResponse.add_member(:termination_protection_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: TerminationProtectionEnabled, location_name: 'TerminationProtectionEnabled', traits: {"smithy.api#documentation" => "<p>Indicates that termination protection is enabled and the event data store cannot be\n         automatically deleted.</p>"}))
    RestoreEventDataStoreResponse.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of an event data store's creation.</p>"}))
    RestoreEventDataStoreResponse.add_member(:updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'UpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp that shows when an event data store was updated, if applicable.\n            <code>UpdatedTimestamp</code> is always either the same or newer than the time shown in\n            <code>CreatedTimestamp</code>.</p>"}))
    RestoreEventDataStoreResponse.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreKmsKeyId, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>Specifies the KMS key ID that encrypts the events delivered by CloudTrail. The value is a fully specified ARN to a KMS key in the\n         following format.</p>\n         <p>\n            <code>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</code>\n         </p>"}))
    RestoreEventDataStoreResponse.add_member(:billing_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingMode, location_name: 'BillingMode', traits: {"smithy.api#documentation" => "<p>The billing mode for the event data store.</p>"}))
    RestoreEventDataStoreResponse.type = Types::RestoreEventDataStoreResponse
    S3BucketDoesNotExistException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    S3BucketDoesNotExistException.type = Types::S3BucketDoesNotExistException
    S3ImportSource.add_member(:s3_location_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3LocationUri', traits: {"smithy.api#documentation" => "<p> The URI for the source S3 bucket. </p>", "smithy.api#required" => {}}))
    S3ImportSource.add_member(:s3_bucket_region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3BucketRegion', traits: {"smithy.api#documentation" => "<p> The Region associated with the source S3 bucket. </p>", "smithy.api#required" => {}}))
    S3ImportSource.add_member(:s3_bucket_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3BucketAccessRoleArn', traits: {"smithy.api#documentation" => "<p> The IAM ARN role used to access the source S3 bucket. </p>", "smithy.api#required" => {}}))
    S3ImportSource.type = Types::S3ImportSource
    SearchSampleQueriesRequest.add_member(:search_phrase, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchSampleQueriesSearchPhrase, location_name: 'SearchPhrase', traits: {"smithy.api#documentation" => "<p>\n         The natural language phrase to use for the semantic search. The phrase must be in English. The length constraint is in characters, not words.</p>", "smithy.api#required" => {}}))
    SearchSampleQueriesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchSampleQueriesMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>\n         The maximum number of results to return on a single page. The default value is 10.\n      </p>"}))
    SearchSampleQueriesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\n         A token you can use to get the next page of results. The length constraint is in characters, not words.\n      </p>"}))
    SearchSampleQueriesRequest.type = Types::SearchSampleQueriesRequest
    SearchSampleQueriesResponse.add_member(:search_results, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchSampleQueriesSearchResults, location_name: 'SearchResults', traits: {"smithy.api#documentation" => "<p>\n         A list of objects containing the search results ordered from most relevant to least relevant.\n      </p>"}))
    SearchSampleQueriesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\n         A token you can use to get the next page of results.</p>"}))
    SearchSampleQueriesResponse.type = Types::SearchSampleQueriesResponse
    SearchSampleQueriesSearchResult.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SampleQueryName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>\n         The name of a sample query.\n      </p>"}))
    SearchSampleQueriesSearchResult.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: SampleQueryDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>\n         A longer description of a sample query.\n      </p>"}))
    SearchSampleQueriesSearchResult.add_member(:sql, Smithy::Schema::Shapes::ShapeRef.new(shape: SampleQuerySQL, location_name: 'SQL', traits: {"smithy.api#documentation" => "<p>\n         The SQL code of the sample query.\n      </p>"}))
    SearchSampleQueriesSearchResult.add_member(:relevance, Smithy::Schema::Shapes::ShapeRef.new(shape: SampleQueryRelevance, location_name: 'Relevance', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>\n         A value between 0 and 1 indicating the similarity between the search phrase and result.\n      </p>"}))
    SearchSampleQueriesSearchResult.type = Types::SearchSampleQueriesSearchResult
    SearchSampleQueriesSearchResults.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchSampleQueriesSearchResult)
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SourceConfig.add_member(:apply_to_all_regions, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ApplyToAllRegions', traits: {"smithy.api#documentation" => "<p> Specifies whether the channel applies to a single Region or to all Regions.</p>"}))
    SourceConfig.add_member(:advanced_event_selectors, Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedEventSelectors, location_name: 'AdvancedEventSelectors', traits: {"smithy.api#documentation" => "<p> The advanced event selectors that are configured for the channel.</p>"}))
    SourceConfig.type = Types::SourceConfig
    StartDashboardRefreshRequest.add_member(:dashboard_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardArn, location_name: 'DashboardId', traits: {"smithy.api#documentation" => "<p>\nThe name or ARN of the dashboard.\n</p>", "smithy.api#required" => {}}))
    StartDashboardRefreshRequest.add_member(:query_parameter_values, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryParameterValues, location_name: 'QueryParameterValues', traits: {"smithy.api#documentation" => "<p>\n   The query parameter values for the dashboard\n</p>\n         <p>For custom dashboards, the following query parameters are valid: <code>$StartTime$</code>, <code>$EndTime$</code>, and <code>$Period$</code>.</p>\n         <p>For managed dashboards, the following query parameters are valid: <code>$StartTime$</code>,\n            <code>$EndTime$</code>, <code>$Period$</code>, and <code>$EventDataStoreId$</code>. The\n            <code>$EventDataStoreId$</code> query parameter is required.</p>"}))
    StartDashboardRefreshRequest.type = Types::StartDashboardRefreshRequest
    StartDashboardRefreshResponse.add_member(:refresh_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshId, location_name: 'RefreshId', traits: {"smithy.api#documentation" => "<p>\nThe refresh ID for the dashboard.\n</p>"}))
    StartDashboardRefreshResponse.type = Types::StartDashboardRefreshResponse
    StartEventDataStoreIngestionRequest.add_member(:event_data_store, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreArn, location_name: 'EventDataStore', traits: {"smithy.api#documentation" => "<p>The ARN (or ID suffix of the ARN) of the event data store for which you want to start ingestion.</p>", "smithy.api#required" => {}}))
    StartEventDataStoreIngestionRequest.type = Types::StartEventDataStoreIngestionRequest
    StartEventDataStoreIngestionResponse.type = Types::StartEventDataStoreIngestionResponse
    StartImportRequest.add_member(:destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportDestinations, location_name: 'Destinations', traits: {"smithy.api#documentation" => "<p> The ARN of the destination event data store. Use this parameter for a new import.\n      </p>"}))
    StartImportRequest.add_member(:import_source, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportSource, location_name: 'ImportSource', traits: {"smithy.api#documentation" => "<p> The source S3 bucket for the import. Use this parameter for a new import. </p>"}))
    StartImportRequest.add_member(:start_event_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'StartEventTime', traits: {"smithy.api#documentation" => "<p> Use with <code>EndEventTime</code> to bound a <code>StartImport</code> request, and\n         limit imported trail events to only those events logged within a specified time period.\n         When you specify a time range, CloudTrail checks the prefix and log file names to\n         verify the names contain a date between the specified <code>StartEventTime</code> and\n            <code>EndEventTime</code> before attempting to import events. </p>"}))
    StartImportRequest.add_member(:end_event_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'EndEventTime', traits: {"smithy.api#documentation" => "<p> Use with <code>StartEventTime</code> to bound a <code>StartImport</code> request, and\n         limit imported trail events to only those events logged within a specified time period.\n         When you specify a time range, CloudTrail checks the prefix and log file names to\n         verify the names contain a date between the specified <code>StartEventTime</code> and\n            <code>EndEventTime</code> before attempting to import events. </p>"}))
    StartImportRequest.add_member(:import_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'ImportId', traits: {"smithy.api#documentation" => "<p> The ID of the import. Use this parameter when you are retrying an import. </p>"}))
    StartImportRequest.type = Types::StartImportRequest
    StartImportResponse.add_member(:import_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'ImportId', traits: {"smithy.api#documentation" => "<p> The ID of the import. </p>"}))
    StartImportResponse.add_member(:destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportDestinations, location_name: 'Destinations', traits: {"smithy.api#documentation" => "<p> The ARN of the destination event data store. </p>"}))
    StartImportResponse.add_member(:import_source, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportSource, location_name: 'ImportSource', traits: {"smithy.api#documentation" => "<p> The source S3 bucket for the import. </p>"}))
    StartImportResponse.add_member(:start_event_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'StartEventTime', traits: {"smithy.api#documentation" => "<p> Used with <code>EndEventTime</code> to bound a <code>StartImport</code> request, and\n         limit imported trail events to only those events logged within a specified time period.\n      </p>"}))
    StartImportResponse.add_member(:end_event_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'EndEventTime', traits: {"smithy.api#documentation" => "<p> Used with <code>StartEventTime</code> to bound a <code>StartImport</code> request, and\n         limit imported trail events to only those events logged within a specified time period.\n      </p>"}))
    StartImportResponse.add_member(:import_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportStatus, location_name: 'ImportStatus', traits: {"smithy.api#documentation" => "<p> Shows the status of the import after a <code>StartImport</code> request. An import\n         finishes with a status of <code>COMPLETED</code> if there were no failures, or\n            <code>FAILED</code> if there were failures. </p>"}))
    StartImportResponse.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p> The timestamp for the import's creation. </p>"}))
    StartImportResponse.add_member(:updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'UpdatedTimestamp', traits: {"smithy.api#documentation" => "<p> The timestamp of the import's last update, if applicable. </p>"}))
    StartImportResponse.type = Types::StartImportResponse
    StartLoggingRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Specifies the name or the CloudTrail ARN of the trail for which CloudTrail\n         logs Amazon Web Services API calls. The following is the format of a trail ARN.</p>\n         <p>\n            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>\n         </p>", "smithy.api#required" => {}}))
    StartLoggingRequest.type = Types::StartLoggingRequest
    StartLoggingResponse.type = Types::StartLoggingResponse
    StartQueryRequest.add_member(:query_statement, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStatement, location_name: 'QueryStatement', traits: {"smithy.api#documentation" => "<p>The SQL code of your query.</p>"}))
    StartQueryRequest.add_member(:delivery_s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryS3Uri, location_name: 'DeliveryS3Uri', traits: {"smithy.api#documentation" => "<p> The URI for the S3 bucket where CloudTrail delivers the query results. </p>"}))
    StartQueryRequest.add_member(:query_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryAlias, location_name: 'QueryAlias', traits: {"smithy.api#documentation" => "<p>\n         The alias that identifies a query template.\n      </p>"}))
    StartQueryRequest.add_member(:query_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryParameters, location_name: 'QueryParameters', traits: {"smithy.api#documentation" => "<p>\n         The query parameters for the specified <code>QueryAlias</code>.\n      </p>"}))
    StartQueryRequest.add_member(:event_data_store_owner_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'EventDataStoreOwnerAccountId', traits: {"smithy.api#documentation" => "<p>\nThe account ID of the event data store owner.\n</p>"}))
    StartQueryRequest.type = Types::StartQueryRequest
    StartQueryResponse.add_member(:query_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'QueryId', traits: {"smithy.api#documentation" => "<p>The ID of the started query.</p>"}))
    StartQueryResponse.add_member(:event_data_store_owner_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'EventDataStoreOwnerAccountId', traits: {"smithy.api#documentation" => "<p>\n   The account ID of the event data store owner.\n</p>"}))
    StartQueryResponse.type = Types::StartQueryResponse
    StopEventDataStoreIngestionRequest.add_member(:event_data_store, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreArn, location_name: 'EventDataStore', traits: {"smithy.api#documentation" => "<p>The ARN (or ID suffix of the ARN) of the event data store for which you want to stop ingestion.</p>", "smithy.api#required" => {}}))
    StopEventDataStoreIngestionRequest.type = Types::StopEventDataStoreIngestionRequest
    StopEventDataStoreIngestionResponse.type = Types::StopEventDataStoreIngestionResponse
    StopImportRequest.add_member(:import_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'ImportId', traits: {"smithy.api#documentation" => "<p> The ID of the import. </p>", "smithy.api#required" => {}}))
    StopImportRequest.type = Types::StopImportRequest
    StopImportResponse.add_member(:import_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'ImportId', traits: {"smithy.api#documentation" => "<p> The ID for the import. </p>"}))
    StopImportResponse.add_member(:import_source, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportSource, location_name: 'ImportSource', traits: {"smithy.api#documentation" => "<p> The source S3 bucket for the import. </p>"}))
    StopImportResponse.add_member(:destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportDestinations, location_name: 'Destinations', traits: {"smithy.api#documentation" => "<p> The ARN of the destination event data store. </p>"}))
    StopImportResponse.add_member(:import_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportStatus, location_name: 'ImportStatus', traits: {"smithy.api#documentation" => "<p> The status of the import. </p>"}))
    StopImportResponse.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p> The timestamp of the import's creation. </p>"}))
    StopImportResponse.add_member(:updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'UpdatedTimestamp', traits: {"smithy.api#documentation" => "<p> The timestamp of the import's last update. </p>"}))
    StopImportResponse.add_member(:start_event_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'StartEventTime', traits: {"smithy.api#documentation" => "<p> Used with <code>EndEventTime</code> to bound a <code>StartImport</code> request, and\n         limit imported trail events to only those events logged within a specified time period.\n      </p>"}))
    StopImportResponse.add_member(:end_event_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'EndEventTime', traits: {"smithy.api#documentation" => "<p> Used with <code>StartEventTime</code> to bound a <code>StartImport</code> request, and\n         limit imported trail events to only those events logged within a specified time period.\n      </p>"}))
    StopImportResponse.add_member(:import_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportStatistics, location_name: 'ImportStatistics', traits: {"smithy.api#documentation" => "<p> Returns information on the stopped import. </p>"}))
    StopImportResponse.type = Types::StopImportResponse
    StopLoggingRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Specifies the name or the CloudTrail ARN of the trail for which CloudTrail\n         will stop logging Amazon Web Services API calls. The following is the format of a trail\n         ARN.</p>\n         <p>\n            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>\n         </p>", "smithy.api#required" => {}}))
    StopLoggingRequest.type = Types::StopLoggingRequest
    StopLoggingResponse.type = Types::StopLoggingResponse
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The key in a key-value pair. The key must be must be no longer than 128 Unicode\n         characters. The key must be unique for the resource to which it applies.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value in a key-value pair of a tag. The value must be no longer than 256 Unicode\n         characters.</p>"}))
    Tag.type = Types::Tag
    TagsLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    TagsLimitExceededException.type = Types::TagsLimitExceededException
    TagsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    ThrottlingException.type = Types::ThrottlingException
    Timestamps.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Date)
    Trail.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Name of the trail set by calling <a>CreateTrail</a>. The maximum length is\n         128 characters.</p>"}))
    Trail.add_member(:s3_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3BucketName', traits: {"smithy.api#documentation" => "<p>Name of the Amazon S3 bucket into which CloudTrail delivers your trail\n         files. See <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html\">Amazon S3\n            Bucket naming rules</a>.</p>"}))
    Trail.add_member(:s3_key_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3KeyPrefix', traits: {"smithy.api#documentation" => "<p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you\n         have designated for log file delivery. For more information, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/get-and-view-cloudtrail-log-files.html#cloudtrail-find-log-files\">Finding Your CloudTrail Log Files</a>. The maximum length is 200\n         characters.</p>"}))
    Trail.add_member(:sns_topic_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnsTopicName', traits: {"smithy.api#deprecated" => {}, "smithy.api#documentation" => "<p>This field is no longer in use. Use <code>SnsTopicARN</code>.</p>"}))
    Trail.add_member(:sns_topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnsTopicARN', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the Amazon SNS topic that CloudTrail uses to send\n         notifications when log files are delivered. The following is the format of a topic\n         ARN.</p>\n         <p>\n            <code>arn:aws:sns:us-east-2:123456789012:MyTopic</code>\n         </p>"}))
    Trail.add_member(:include_global_service_events, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IncludeGlobalServiceEvents', traits: {"smithy.api#documentation" => "<p>Set to <b>True</b> to include Amazon Web Services API calls\n         from Amazon Web Services global services such as IAM. Otherwise, <b>False</b>.</p>"}))
    Trail.add_member(:is_multi_region_trail, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsMultiRegionTrail', traits: {"smithy.api#documentation" => "<p>Specifies whether the trail exists only in one Region or exists in all Regions.</p>"}))
    Trail.add_member(:home_region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HomeRegion', traits: {"smithy.api#documentation" => "<p>The Region in which the trail was created.</p>"}))
    Trail.add_member(:trail_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TrailARN', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the trail. The following is the format of a trail ARN.</p>\n         <p>\n            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>\n         </p>"}))
    Trail.add_member(:log_file_validation_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'LogFileValidationEnabled', traits: {"smithy.api#documentation" => "<p>Specifies whether log file validation is enabled.</p>"}))
    Trail.add_member(:cloud_watch_logs_log_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CloudWatchLogsLogGroupArn', traits: {"smithy.api#documentation" => "<p>Specifies an Amazon Resource Name (ARN), a unique identifier that represents the log\n         group to which CloudTrail logs will be delivered.</p>"}))
    Trail.add_member(:cloud_watch_logs_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CloudWatchLogsRoleArn', traits: {"smithy.api#documentation" => "<p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's\n         log group.</p>"}))
    Trail.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>Specifies the KMS key ID that encrypts the logs delivered by CloudTrail. The value is a fully specified ARN to a KMS key in the\n         following format.</p>\n         <p>\n            <code>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</code>\n         </p>"}))
    Trail.add_member(:has_custom_event_selectors, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HasCustomEventSelectors', traits: {"smithy.api#documentation" => "<p>Specifies if the trail has custom event selectors.</p>"}))
    Trail.add_member(:has_insight_selectors, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HasInsightSelectors', traits: {"smithy.api#documentation" => "<p>Specifies whether a trail has insight types specified in an <code>InsightSelector</code>\n         list.</p>"}))
    Trail.add_member(:is_organization_trail, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsOrganizationTrail', traits: {"smithy.api#documentation" => "<p>Specifies whether the trail is an organization trail.</p>"}))
    Trail.type = Types::Trail
    TrailAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    TrailAlreadyExistsException.type = Types::TrailAlreadyExistsException
    TrailInfo.add_member(:trail_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TrailARN', traits: {"smithy.api#documentation" => "<p>The ARN of a trail.</p>"}))
    TrailInfo.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of a trail.</p>"}))
    TrailInfo.add_member(:home_region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HomeRegion', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region in which a trail was created.</p>"}))
    TrailInfo.type = Types::TrailInfo
    TrailList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Trail)
    TrailNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    TrailNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    TrailNotFoundException.type = Types::TrailNotFoundException
    TrailNotProvidedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    TrailNotProvidedException.type = Types::TrailNotProvidedException
    Trails.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TrailInfo)
    Type.add_member(:tag_context, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TagContext', traits: {"smithy.api#enumValue" => "TagContext"}))
    Type.add_member(:request_context, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RequestContext', traits: {"smithy.api#enumValue" => "RequestContext"}))
    UnsupportedOperationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Brief description of the exception returned by the request.</p>"}))
    UnsupportedOperationException.type = Types::UnsupportedOperationException
    UpdateChannelRequest.add_member(:channel, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: 'Channel', traits: {"smithy.api#documentation" => "<p>The ARN or ID (the ARN suffix) of the channel that you want to update.</p>", "smithy.api#required" => {}}))
    UpdateChannelRequest.add_member(:destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: Destinations, location_name: 'Destinations', traits: {"smithy.api#documentation" => "<p>The ARNs of event data stores that you want to log events arriving through the channel.</p>"}))
    UpdateChannelRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>\n         Changes the name of the channel.\n      </p>"}))
    UpdateChannelRequest.type = Types::UpdateChannelRequest
    UpdateChannelResponse.add_member(:channel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelArn, location_name: 'ChannelArn', traits: {"smithy.api#documentation" => "<p>The ARN of the channel that was updated.</p>"}))
    UpdateChannelResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the channel that was updated.</p>"}))
    UpdateChannelResponse.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'Source', traits: {"smithy.api#documentation" => "<p>The event source of the channel that was updated.</p>"}))
    UpdateChannelResponse.add_member(:destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: Destinations, location_name: 'Destinations', traits: {"smithy.api#documentation" => "<p>The event data stores that log events arriving through the channel.</p>"}))
    UpdateChannelResponse.type = Types::UpdateChannelResponse
    UpdateDashboardRequest.add_member(:dashboard_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardArn, location_name: 'DashboardId', traits: {"smithy.api#documentation" => "<p>\n   The name or ARN of the dashboard.\n</p>", "smithy.api#required" => {}}))
    UpdateDashboardRequest.add_member(:widgets, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestWidgetList, location_name: 'Widgets', traits: {"smithy.api#documentation" => "<p>\nAn array of widgets for the dashboard. A custom dashboard can have a maximum of 10 widgets.\n</p>\n         <p>To add new widgets, pass in an array that includes the existing widgets along with any new widgets. Run the <code>GetDashboard</code> operation to get the list of widgets for the dashboard.</p>\n         <p>To remove widgets, pass in an array that includes the existing widgets minus the widgets you want removed.</p>"}))
    UpdateDashboardRequest.add_member(:refresh_schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshSchedule, location_name: 'RefreshSchedule', traits: {"smithy.api#documentation" => "<p>\nThe refresh schedule configuration for the dashboard.\n</p>"}))
    UpdateDashboardRequest.add_member(:termination_protection_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: TerminationProtectionEnabled, location_name: 'TerminationProtectionEnabled', traits: {"smithy.api#documentation" => "<p>\n   Specifies whether termination protection is enabled for the dashboard. If termination protection is enabled, you cannot delete the dashboard until termination protection is disabled.\n</p>"}))
    UpdateDashboardRequest.type = Types::UpdateDashboardRequest
    UpdateDashboardResponse.add_member(:dashboard_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardArn, location_name: 'DashboardArn', traits: {"smithy.api#documentation" => "<p>\nThe ARN for the dashboard.\n</p>"}))
    UpdateDashboardResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>\nThe name for the dashboard.\n</p>"}))
    UpdateDashboardResponse.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>\nThe type of dashboard.\n</p>"}))
    UpdateDashboardResponse.add_member(:widgets, Smithy::Schema::Shapes::ShapeRef.new(shape: WidgetList, location_name: 'Widgets', traits: {"smithy.api#documentation" => "<p>\nAn array of widgets for the dashboard.\n</p>"}))
    UpdateDashboardResponse.add_member(:refresh_schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshSchedule, location_name: 'RefreshSchedule', traits: {"smithy.api#documentation" => "<p>\nThe refresh schedule for the dashboard, if configured.\n</p>"}))
    UpdateDashboardResponse.add_member(:termination_protection_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: TerminationProtectionEnabled, location_name: 'TerminationProtectionEnabled', traits: {"smithy.api#documentation" => "<p>\n   Indicates whether termination protection is enabled for the dashboard.\n</p>"}))
    UpdateDashboardResponse.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>\n   The timestamp that shows when the dashboard was created.\n</p>"}))
    UpdateDashboardResponse.add_member(:updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'UpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>\n   The timestamp that shows when the dashboard was updated.\n</p>"}))
    UpdateDashboardResponse.type = Types::UpdateDashboardResponse
    UpdateEventDataStoreRequest.add_member(:event_data_store, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreArn, location_name: 'EventDataStore', traits: {"smithy.api#documentation" => "<p>The ARN (or the ID suffix of the ARN) of the event data store that you want to\n         update.</p>", "smithy.api#required" => {}}))
    UpdateEventDataStoreRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The event data store name.</p>"}))
    UpdateEventDataStoreRequest.add_member(:advanced_event_selectors, Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedEventSelectors, location_name: 'AdvancedEventSelectors', traits: {"smithy.api#documentation" => "<p>The advanced event selectors used to select events for the event data store. You can\n         configure up to five advanced event selectors for each event data store.</p>"}))
    UpdateEventDataStoreRequest.add_member(:multi_region_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'MultiRegionEnabled', traits: {"smithy.api#documentation" => "<p>Specifies whether an event data store collects events from all Regions, or only from the\n         Region in which it was created.</p>"}))
    UpdateEventDataStoreRequest.add_member(:organization_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'OrganizationEnabled', traits: {"smithy.api#documentation" => "<p>Specifies whether an event data store collects events logged for an organization in\n            Organizations.</p>\n         <note>\n            <p>Only the management account for the organization can convert an organization event data store to a non-organization event data store, or convert a non-organization event data store to \n         an organization event data store.</p>\n         </note>"}))
    UpdateEventDataStoreRequest.add_member(:retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'RetentionPeriod', traits: {"smithy.api#documentation" => "<p>The retention period of the event data store, in days. If <code>BillingMode</code> is set to <code>EXTENDABLE_RETENTION_PRICING</code>, you can set a retention period of\n         up to 3653 days, the equivalent of 10 years. If <code>BillingMode</code> is set to <code>FIXED_RETENTION_PRICING</code>, you can set a retention period of\n         up to 2557 days, the equivalent of seven years.</p>\n         <p>CloudTrail  Lake determines whether to retain an event by checking if the <code>eventTime</code> \n         of the event is within the specified retention period. For example, if you set a retention period of 90 days, CloudTrail will remove events \n         when the <code>eventTime</code> is older than 90 days.</p>\n         <note>\n            <p>If you decrease the retention period of an event data store, CloudTrail will remove any events with an <code>eventTime</code> older than the new retention period. For example, if the previous \n            retention period was 365 days and you decrease it to 100 days, CloudTrail  will remove events with an <code>eventTime</code> older than 100 days.</p>\n         </note>"}))
    UpdateEventDataStoreRequest.add_member(:termination_protection_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: TerminationProtectionEnabled, location_name: 'TerminationProtectionEnabled', traits: {"smithy.api#documentation" => "<p>Indicates that termination protection is enabled and the event data store cannot be\n         automatically deleted.</p>"}))
    UpdateEventDataStoreRequest.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreKmsKeyId, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>Specifies the KMS key ID to use to encrypt the events delivered by\n            CloudTrail. The value can be an alias name prefixed by <code>alias/</code>, a\n         fully specified ARN to an alias, a fully specified ARN to a key, or a globally unique\n         identifier.</p>\n         <important>\n            <p>Disabling or deleting the KMS key, or removing CloudTrail\n            permissions on the key, prevents CloudTrail from logging events to the event data\n            store, and prevents users from querying the data in the event data store that was\n            encrypted with the key. After you associate an event data store with a KMS key, the KMS key cannot be removed or changed. Before you\n            disable or delete a KMS key that you are using with an event data store,\n            delete or back up your event data store.</p>\n         </important>\n         <p>CloudTrail also supports KMS multi-Region keys. For more\n         information about multi-Region keys, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html\">Using multi-Region\n            keys</a> in the <i>Key Management Service Developer Guide</i>.</p>\n         <p>Examples:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>alias/MyAliasName</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>arn:aws:kms:us-east-2:123456789012:alias/MyAliasName</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>12345678-1234-1234-1234-123456789012</code>\n               </p>\n            </li>\n         </ul>"}))
    UpdateEventDataStoreRequest.add_member(:billing_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingMode, location_name: 'BillingMode', traits: {"smithy.api#documentation" => "<note>\n            <p>You can't change the billing mode from <code>EXTENDABLE_RETENTION_PRICING</code> to <code>FIXED_RETENTION_PRICING</code>. If <code>BillingMode</code> is set to \n            <code>EXTENDABLE_RETENTION_PRICING</code> and you want to use <code>FIXED_RETENTION_PRICING</code> instead, you'll need to stop ingestion on the event data store and create a new event data store that uses <code>FIXED_RETENTION_PRICING</code>.</p>\n         </note>\n         <p>The billing mode for the event data store determines the cost \n         for ingesting events and the default and maximum retention period for the event data store.</p>\n         <p>The following are the possible values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>EXTENDABLE_RETENTION_PRICING</code> - This billing mode is generally recommended if you want a flexible retention period of up to 3653 days (about 10 years). The default retention period for this billing mode is \n               366 days.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FIXED_RETENTION_PRICING</code> - This billing mode is recommended if you expect to ingest more than 25 TB of event data per month and need a retention period of up to 2557 days (about 7 years). \n               The default retention period for this billing mode is 2557 days.</p>\n            </li>\n         </ul>\n         <p>For more information about CloudTrail pricing, \n         see <a href=\"http://aws.amazon.com/cloudtrail/pricing/\">CloudTrail Pricing</a> and \n         <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-lake-manage-costs.html\">Managing CloudTrail Lake costs</a>.</p>"}))
    UpdateEventDataStoreRequest.type = Types::UpdateEventDataStoreRequest
    UpdateEventDataStoreResponse.add_member(:event_data_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreArn, location_name: 'EventDataStoreArn', traits: {"smithy.api#documentation" => "<p>The ARN of the event data store.</p>"}))
    UpdateEventDataStoreResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the event data store.</p>"}))
    UpdateEventDataStoreResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of an event data store.</p>"}))
    UpdateEventDataStoreResponse.add_member(:advanced_event_selectors, Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedEventSelectors, location_name: 'AdvancedEventSelectors', traits: {"smithy.api#documentation" => "<p>The advanced event selectors that are applied to the event data store.</p>"}))
    UpdateEventDataStoreResponse.add_member(:multi_region_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'MultiRegionEnabled', traits: {"smithy.api#documentation" => "<p>Indicates whether the event data store includes events from all Regions, or only from\n         the Region in which it was created.</p>"}))
    UpdateEventDataStoreResponse.add_member(:organization_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'OrganizationEnabled', traits: {"smithy.api#documentation" => "<p>Indicates whether an event data store is collecting logged events for an organization in\n            Organizations.</p>"}))
    UpdateEventDataStoreResponse.add_member(:retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'RetentionPeriod', traits: {"smithy.api#documentation" => "<p>The retention period, in days.</p>"}))
    UpdateEventDataStoreResponse.add_member(:termination_protection_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: TerminationProtectionEnabled, location_name: 'TerminationProtectionEnabled', traits: {"smithy.api#documentation" => "<p>Indicates whether termination protection is enabled for the event data store.</p>"}))
    UpdateEventDataStoreResponse.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp that shows when an event data store was first created.</p>"}))
    UpdateEventDataStoreResponse.add_member(:updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'UpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp that shows when the event data store was last updated.\n            <code>UpdatedTimestamp</code> is always either the same or newer than the time shown in\n            <code>CreatedTimestamp</code>.</p>"}))
    UpdateEventDataStoreResponse.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreKmsKeyId, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>Specifies the KMS key ID that encrypts the events delivered by CloudTrail. The value is a fully specified ARN to a KMS key in the\n         following format.</p>\n         <p>\n            <code>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</code>\n         </p>"}))
    UpdateEventDataStoreResponse.add_member(:billing_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingMode, location_name: 'BillingMode', traits: {"smithy.api#documentation" => "<p>The billing mode for the event data store.</p>"}))
    UpdateEventDataStoreResponse.add_member(:federation_status, Smithy::Schema::Shapes::ShapeRef.new(shape: FederationStatus, location_name: 'FederationStatus', traits: {"smithy.api#documentation" => "<p>\n         Indicates the <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-federation.html\">Lake query federation</a> status. The status is \n         <code>ENABLED</code> if Lake query federation is enabled, or <code>DISABLED</code> if Lake query federation is disabled. You cannot delete an event data store if the <code>FederationStatus</code> is <code>ENABLED</code>.\n      </p>"}))
    UpdateEventDataStoreResponse.add_member(:federation_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FederationRoleArn, location_name: 'FederationRoleArn', traits: {"smithy.api#documentation" => "<p>\n         If Lake query federation is enabled, provides the ARN of the federation role used to access the resources for the federated event data store.\n      </p>"}))
    UpdateEventDataStoreResponse.type = Types::UpdateEventDataStoreResponse
    UpdateTrailRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Specifies the name of the trail or trail ARN. If <code>Name</code> is a trail name, the\n         string must meet the following requirements:</p>\n         <ul>\n            <li>\n               <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores\n               (_), or dashes (-)</p>\n            </li>\n            <li>\n               <p>Start with a letter or number, and end with a letter or number</p>\n            </li>\n            <li>\n               <p>Be between 3 and 128 characters</p>\n            </li>\n            <li>\n               <p>Have no adjacent periods, underscores or dashes. Names like\n                  <code>my-_namespace</code> and <code>my--namespace</code> are not valid.</p>\n            </li>\n            <li>\n               <p>Not be in IP address format (for example, 192.168.5.4)</p>\n            </li>\n         </ul>\n         <p>If <code>Name</code> is a trail ARN, it must be in the following format.</p>\n         <p>\n            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>\n         </p>", "smithy.api#required" => {}}))
    UpdateTrailRequest.add_member(:s3_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3BucketName', traits: {"smithy.api#documentation" => "<p>Specifies the name of the Amazon S3 bucket designated for publishing log files.\n         See <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html\">Amazon S3\n            Bucket naming rules</a>.</p>"}))
    UpdateTrailRequest.add_member(:s3_key_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3KeyPrefix', traits: {"smithy.api#documentation" => "<p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you\n         have designated for log file delivery. For more information, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/get-and-view-cloudtrail-log-files.html#cloudtrail-find-log-files\">Finding Your CloudTrail Log Files</a>. The maximum length is 200\n         characters.</p>"}))
    UpdateTrailRequest.add_member(:sns_topic_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnsTopicName', traits: {"smithy.api#documentation" => "<p>Specifies the name or ARN of the Amazon SNS topic defined for notification of log file\n         delivery. The maximum length is 256 characters.</p>"}))
    UpdateTrailRequest.add_member(:include_global_service_events, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IncludeGlobalServiceEvents', traits: {"smithy.api#documentation" => "<p>Specifies whether the trail is publishing events from global services such as IAM to the log files.</p>"}))
    UpdateTrailRequest.add_member(:is_multi_region_trail, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsMultiRegionTrail', traits: {"smithy.api#documentation" => "<p>Specifies whether the trail applies only to the current Region or to all Regions. The\n         default is false. If the trail exists only in the current Region and this value is set to\n         true, shadow trails (replications of the trail) will be created in the other Regions. If\n         the trail exists in all Regions and this value is set to false, the trail will remain in\n         the Region where it was created, and its shadow trails in other Regions will be deleted. As\n         a best practice, consider using trails that log events in all Regions.</p>"}))
    UpdateTrailRequest.add_member(:enable_log_file_validation, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnableLogFileValidation', traits: {"smithy.api#documentation" => "<p>Specifies whether log file validation is enabled. The default is false.</p>\n         <note>\n            <p>When you disable log file integrity validation, the chain of digest files is broken\n            after one hour. CloudTrail does not create digest files for log files that were\n            delivered during a period in which log file integrity validation was disabled. For\n            example, if you enable log file integrity validation at noon on January 1, disable it at\n            noon on January 2, and re-enable it at noon on January 10, digest files will not be\n            created for the log files delivered from noon on January 2 to noon on January 10. The\n            same applies whenever you stop CloudTrail logging or delete a trail.</p>\n         </note>"}))
    UpdateTrailRequest.add_member(:cloud_watch_logs_log_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CloudWatchLogsLogGroupArn', traits: {"smithy.api#documentation" => "<p>Specifies a log group name using an Amazon Resource Name (ARN), a unique identifier that\n         represents the log group to which CloudTrail logs are delivered. You must use a log\n         group that exists in your account.</p>\n         <p>Not required unless you specify <code>CloudWatchLogsRoleArn</code>.</p>"}))
    UpdateTrailRequest.add_member(:cloud_watch_logs_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CloudWatchLogsRoleArn', traits: {"smithy.api#documentation" => "<p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's\n         log group. You must use a role that exists in your account.</p>"}))
    UpdateTrailRequest.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>Specifies the KMS key ID to use to encrypt the logs delivered by CloudTrail. The value can be an alias name prefixed by \"alias/\", a fully specified ARN to\n         an alias, a fully specified ARN to a key, or a globally unique identifier.</p>\n         <p>CloudTrail also supports KMS multi-Region keys. For more\n         information about multi-Region keys, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html\">Using multi-Region\n            keys</a> in the <i>Key Management Service Developer Guide</i>.</p>\n         <p>Examples:</p>\n         <ul>\n            <li>\n               <p>alias/MyAliasName</p>\n            </li>\n            <li>\n               <p>arn:aws:kms:us-east-2:123456789012:alias/MyAliasName</p>\n            </li>\n            <li>\n               <p>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</p>\n            </li>\n            <li>\n               <p>12345678-1234-1234-1234-123456789012</p>\n            </li>\n         </ul>"}))
    UpdateTrailRequest.add_member(:is_organization_trail, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsOrganizationTrail', traits: {"smithy.api#documentation" => "<p>Specifies whether the trail is applied to all accounts in an organization in Organizations, or only for the current Amazon Web Services account. The default is false,\n         and cannot be true unless the call is made on behalf of an Amazon Web Services account that\n         is the management account for an organization in Organizations. If the trail is not an organization trail and this is set to\n            <code>true</code>, the trail will be created in all Amazon Web Services accounts that\n         belong to the organization. If the trail is an organization trail and this is set to\n            <code>false</code>, the trail will remain in the current Amazon Web Services account but\n         be deleted from all member accounts in the organization.</p>\n         <note>\n            <p>Only the management account for the organization can convert an organization trail to a non-organization trail, or convert a non-organization trail to \n            an organization trail.</p>\n         </note>"}))
    UpdateTrailRequest.type = Types::UpdateTrailRequest
    UpdateTrailResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Specifies the name of the trail.</p>"}))
    UpdateTrailResponse.add_member(:s3_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3BucketName', traits: {"smithy.api#documentation" => "<p>Specifies the name of the Amazon S3 bucket designated for publishing log\n         files.</p>"}))
    UpdateTrailResponse.add_member(:s3_key_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3KeyPrefix', traits: {"smithy.api#documentation" => "<p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you\n         have designated for log file delivery. For more information, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/get-and-view-cloudtrail-log-files.html#cloudtrail-find-log-files\">Finding Your IAM Log Files</a>.</p>"}))
    UpdateTrailResponse.add_member(:sns_topic_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnsTopicName', traits: {"smithy.api#deprecated" => {}, "smithy.api#documentation" => "<p>This field is no longer in use. Use <code>SnsTopicARN</code>.</p>"}))
    UpdateTrailResponse.add_member(:sns_topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnsTopicARN', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the Amazon SNS topic that CloudTrail uses to send\n         notifications when log files are delivered. The following is the format of a topic\n         ARN.</p>\n         <p>\n            <code>arn:aws:sns:us-east-2:123456789012:MyTopic</code>\n         </p>"}))
    UpdateTrailResponse.add_member(:include_global_service_events, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IncludeGlobalServiceEvents', traits: {"smithy.api#documentation" => "<p>Specifies whether the trail is publishing events from global services such as IAM to the log files.</p>"}))
    UpdateTrailResponse.add_member(:is_multi_region_trail, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsMultiRegionTrail', traits: {"smithy.api#documentation" => "<p>Specifies whether the trail exists in one Region or in all Regions.</p>"}))
    UpdateTrailResponse.add_member(:trail_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TrailARN', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the trail that was updated. The following is the format of a trail\n         ARN.</p>\n         <p>\n            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>\n         </p>"}))
    UpdateTrailResponse.add_member(:log_file_validation_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'LogFileValidationEnabled', traits: {"smithy.api#documentation" => "<p>Specifies whether log file integrity validation is enabled.</p>"}))
    UpdateTrailResponse.add_member(:cloud_watch_logs_log_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CloudWatchLogsLogGroupArn', traits: {"smithy.api#documentation" => "<p>Specifies the Amazon Resource Name (ARN) of the log group to which CloudTrail\n         logs are delivered.</p>"}))
    UpdateTrailResponse.add_member(:cloud_watch_logs_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CloudWatchLogsRoleArn', traits: {"smithy.api#documentation" => "<p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's\n         log group.</p>"}))
    UpdateTrailResponse.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>Specifies the KMS key ID that encrypts the logs delivered by CloudTrail. The value is a fully specified ARN to a KMS key in the\n         following format.</p>\n         <p>\n            <code>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</code>\n         </p>"}))
    UpdateTrailResponse.add_member(:is_organization_trail, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsOrganizationTrail', traits: {"smithy.api#documentation" => "<p>Specifies whether the trail is an organization trail.</p>"}))
    UpdateTrailResponse.type = Types::UpdateTrailResponse
    ViewPropertiesMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ViewPropertiesKey)
    ViewPropertiesMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ViewPropertiesValue)
    Widget.add_member(:query_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryAlias, location_name: 'QueryAlias', traits: {"smithy.api#documentation" => "<p>The query alias used to identify the query for the widget.\n</p>"}))
    Widget.add_member(:query_statement, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStatement, location_name: 'QueryStatement', traits: {"smithy.api#documentation" => "<p>\nThe SQL query statement for the widget.\n</p>"}))
    Widget.add_member(:query_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryParameters, location_name: 'QueryParameters', traits: {"smithy.api#documentation" => "<p>\n   The query parameters for the widget.\n</p>"}))
    Widget.add_member(:view_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ViewPropertiesMap, location_name: 'ViewProperties', traits: {"smithy.api#documentation" => "<p>\n   The view properties for the widget. For more information about view properties, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/lake-widget-properties.html\">\n      View properties for widgets\n</a> in the <i>CloudTrail User Guide</i>..\n</p>"}))
    Widget.type = Types::Widget
    WidgetList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Widget)

    CloudTrail20131101 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.cloudtrail#CloudTrail_20131101"
      service.name = "CloudTrail20131101"
      service.version = "2013-11-01"
      service.traits = {"aws.api#service" => {"sdkId" => "CloudTrail", "arnNamespace" => "cloudtrail", "cloudFormationName" => "CloudTrail", "cloudTrailEventSource" => "cloudtrail.amazonaws.com", "endpointPrefix" => "cloudtrail"}, "aws.auth#sigv4" => {"name" => "cloudtrail"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS CloudTrail", "smithy.api#xmlNamespace" => {"uri" => "http://cloudtrail.amazonaws.com/doc/2013-11-01/"}}
      service.add_operation(:add_tags, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#AddTags"
        operation.name = "AddTags"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddTagsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AddTagsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudTrailARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InactiveEventDataStoreException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTrailNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypeNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagsLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:cancel_query, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#CancelQuery"
        operation.name = "CancelQuery"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelQueryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelQueryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InactiveEventDataStoreException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InactiveQueryException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: QueryIdNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#CreateChannel"
        operation.name = "CreateChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelMaxLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InactiveEventDataStoreException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEventDataStoreCategoryException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagsLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:create_dashboard, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#CreateDashboard"
        operation.name = "CreateDashboard"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDashboardRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDashboardResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InactiveEventDataStoreException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientEncryptionPolicyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidQueryStatementException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_event_data_store, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#CreateEventDataStore"
        operation.name = "CreateEventDataStore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEventDataStoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEventDataStoreResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudTrailAccessNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreMaxLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientDependencyServiceAccessPermissionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientEncryptionPolicyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEventSelectorsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKmsKeyIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotInAllFeaturesModeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:create_trail, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#CreateTrail"
        operation.name = "CreateTrail"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTrailRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTrailResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudTrailAccessNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudTrailInvalidClientTokenIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsDeliveryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientDependencyServiceAccessPermissionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientEncryptionPolicyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientS3BucketPolicyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientSnsTopicPolicyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCloudWatchLogsLogGroupArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCloudWatchLogsRoleArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKmsKeyIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3BucketNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3PrefixException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSnsTopicNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTrailNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumNumberOfTrailsExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotInAllFeaturesModeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagsLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrailAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrailNotProvidedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#DeleteChannel"
        operation.name = "DeleteChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_dashboard, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#DeleteDashboard"
        operation.name = "DeleteDashboard"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDashboardRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDashboardResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_event_data_store, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#DeleteEventDataStore"
        operation.name = "DeleteEventDataStore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEventDataStoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEventDataStoreResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelExistsForEDSException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreFederationEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreHasOngoingImportException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreTerminationProtectedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InactiveEventDataStoreException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientDependencyServiceAccessPermissionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARNNotValidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypeNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_trail, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#DeleteTrail"
        operation.name = "DeleteTrail"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTrailRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTrailResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudTrailARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientDependencyServiceAccessPermissionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidHomeRegionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTrailNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrailNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:deregister_organization_delegated_admin, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#DeregisterOrganizationDelegatedAdmin"
        operation.name = "DeregisterOrganizationDelegatedAdmin"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterOrganizationDelegatedAdminRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterOrganizationDelegatedAdminResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccountNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccountNotRegisteredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudTrailAccessNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientDependencyServiceAccessPermissionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotOrganizationManagementAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotInAllFeaturesModeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_query, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#DescribeQuery"
        operation.name = "DescribeQuery"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeQueryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeQueryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InactiveEventDataStoreException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: QueryIdNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_trails, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#DescribeTrails"
        operation.name = "DescribeTrails"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTrailsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTrailsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudTrailARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTrailNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}, "smithy.test#smokeTests" => [{"id" => "DescribeTrailsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:disable_federation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#DisableFederation"
        operation.name = "DisableFederation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableFederationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableFederationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudTrailAccessNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InactiveEventDataStoreException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientDependencyServiceAccessPermissionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotInAllFeaturesModeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:enable_federation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#EnableFederation"
        operation.name = "EnableFederation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableFederationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableFederationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudTrailAccessNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreFederationEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InactiveEventDataStoreException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientDependencyServiceAccessPermissionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotInAllFeaturesModeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:generate_query, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#GenerateQuery"
        operation.name = "GenerateQuery"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GenerateQueryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GenerateQueryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GenerateResponseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InactiveEventDataStoreException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#GetChannel"
        operation.name = "GetChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_dashboard, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#GetDashboard"
        operation.name = "GetDashboard"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDashboardRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDashboardResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_event_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#GetEventConfiguration"
        operation.name = "GetEventConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEventConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEventConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudTrailARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEventDataStoreCategoryException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEventDataStoreStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_event_data_store, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#GetEventDataStore"
        operation.name = "GetEventDataStore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEventDataStoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEventDataStoreResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_event_selectors, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#GetEventSelectors"
        operation.name = "GetEventSelectors"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEventSelectorsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEventSelectorsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudTrailARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTrailNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrailNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_import, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#GetImport"
        operation.name = "GetImport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetImportRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetImportResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ImportNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:get_insight_selectors, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#GetInsightSelectors"
        operation.name = "GetInsightSelectors"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInsightSelectorsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInsightSelectorsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudTrailARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsightNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTrailNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrailNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_query_results, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#GetQueryResults"
        operation.name = "GetQueryResults"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueryResultsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueryResultsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InactiveEventDataStoreException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientEncryptionPolicyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMaxResultsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: QueryIdNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetQueryResults.new
      end)
      service.add_operation(:get_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARNNotValidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypeNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_trail, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#GetTrail"
        operation.name = "GetTrail"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTrailRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTrailResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudTrailARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTrailNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrailNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_trail_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#GetTrailStatus"
        operation.name = "GetTrailStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTrailStatusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTrailStatusResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudTrailARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTrailNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrailNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:list_channels, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#ListChannels"
        operation.name = "ListChannels"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListChannels.new
      end)
      service.add_operation(:list_dashboards, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#ListDashboards"
        operation.name = "ListDashboards"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDashboardsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDashboardsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:list_event_data_stores, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#ListEventDataStores"
        operation.name = "ListEventDataStores"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventDataStoresRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventDataStoresResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMaxResultsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListEventDataStores.new
      end)
      service.add_operation(:list_import_failures, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#ListImportFailures"
        operation.name = "ListImportFailures"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListImportFailuresRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListImportFailuresResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListImportFailures.new
      end)
      service.add_operation(:list_imports, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#ListImports"
        operation.name = "ListImports"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListImportsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListImportsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListImports.new
      end)
      service.add_operation(:list_insights_metric_data, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#ListInsightsMetricData"
        operation.name = "ListInsightsMetricData"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInsightsMetricDataRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInsightsMetricDataResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListInsightsMetricData.new
      end)
      service.add_operation(:list_public_keys, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#ListPublicKeys"
        operation.name = "ListPublicKeys"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPublicKeysRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPublicKeysResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTimeRangeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListPublicKeys.new
      end)
      service.add_operation(:list_queries, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#ListQueries"
        operation.name = "ListQueries"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListQueriesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListQueriesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InactiveEventDataStoreException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDateRangeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMaxResultsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidQueryStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListQueries.new
      end)
      service.add_operation(:list_tags, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#ListTags"
        operation.name = "ListTags"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudTrailARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InactiveEventDataStoreException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTrailNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypeNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListTags.new
      end)
      service.add_operation(:list_trails, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#ListTrails"
        operation.name = "ListTrails"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTrailsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTrailsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListTrails.new
      end)
      service.add_operation(:lookup_events, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#LookupEvents"
        operation.name = "LookupEvents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: LookupEventsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: LookupEventsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEventCategoryException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLookupAttributesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMaxResultsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTimeRangeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::LookupEvents.new
      end)
      service.add_operation(:put_event_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#PutEventConfiguration"
        operation.name = "PutEventConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEventConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEventConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudTrailARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InactiveEventDataStoreException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientDependencyServiceAccessPermissionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientIAMAccessPermissionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEventDataStoreCategoryException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEventDataStoreStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_event_selectors, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#PutEventSelectors"
        operation.name = "PutEventSelectors"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEventSelectorsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEventSelectorsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudTrailARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientDependencyServiceAccessPermissionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEventSelectorsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidHomeRegionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTrailNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrailNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_insight_selectors, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#PutInsightSelectors"
        operation.name = "PutInsightSelectors"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutInsightSelectorsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutInsightSelectorsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudTrailARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientEncryptionPolicyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientS3BucketPolicyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidHomeRegionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInsightSelectorsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTrailNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrailNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARNNotValidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicyNotValidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypeNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:register_organization_delegated_admin, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#RegisterOrganizationDelegatedAdmin"
        operation.name = "RegisterOrganizationDelegatedAdmin"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterOrganizationDelegatedAdminRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterOrganizationDelegatedAdminResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccountNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccountRegisteredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CannotDelegateManagementAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudTrailAccessNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DelegatedAdminAccountLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientDependencyServiceAccessPermissionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientIAMAccessPermissionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotOrganizationManagementAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotInAllFeaturesModeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:remove_tags, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#RemoveTags"
        operation.name = "RemoveTags"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveTagsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveTagsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudTrailARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InactiveEventDataStoreException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTrailNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypeNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:restore_event_data_store, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#RestoreEventDataStore"
        operation.name = "RestoreEventDataStore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreEventDataStoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreEventDataStoreResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudTrailAccessNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreMaxLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientDependencyServiceAccessPermissionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEventDataStoreStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotInAllFeaturesModeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:search_sample_queries, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#SearchSampleQueries"
        operation.name = "SearchSampleQueries"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchSampleQueriesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchSampleQueriesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_dashboard_refresh, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#StartDashboardRefresh"
        operation.name = "StartDashboardRefresh"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartDashboardRefreshRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartDashboardRefreshResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InactiveEventDataStoreException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_event_data_store_ingestion, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#StartEventDataStoreIngestion"
        operation.name = "StartEventDataStoreIngestion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartEventDataStoreIngestionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartEventDataStoreIngestionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientDependencyServiceAccessPermissionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEventDataStoreCategoryException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEventDataStoreStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:start_import, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#StartImport"
        operation.name = "StartImport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartImportRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartImportResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccountHasOngoingImportException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ImportNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InactiveEventDataStoreException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientEncryptionPolicyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEventDataStoreCategoryException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEventDataStoreStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidImportSourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:start_logging, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#StartLogging"
        operation.name = "StartLogging"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartLoggingRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartLoggingResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudTrailARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientDependencyServiceAccessPermissionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidHomeRegionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTrailNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrailNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_query, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#StartQuery"
        operation.name = "StartQuery"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartQueryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartQueryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InactiveEventDataStoreException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientEncryptionPolicyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientS3BucketPolicyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidQueryStatementException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3BucketNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3PrefixException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MaxConcurrentQueriesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:stop_event_data_store_ingestion, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#StopEventDataStoreIngestion"
        operation.name = "StopEventDataStoreIngestion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopEventDataStoreIngestionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopEventDataStoreIngestionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientDependencyServiceAccessPermissionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEventDataStoreCategoryException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEventDataStoreStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:stop_import, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#StopImport"
        operation.name = "StopImport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopImportRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopImportResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ImportNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:stop_logging, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#StopLogging"
        operation.name = "StopLogging"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopLoggingRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopLoggingResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudTrailARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientDependencyServiceAccessPermissionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidHomeRegionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTrailNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrailNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_channel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#UpdateChannel"
        operation.name = "UpdateChannel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateChannelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateChannelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InactiveEventDataStoreException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEventDataStoreCategoryException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_dashboard, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#UpdateDashboard"
        operation.name = "UpdateDashboard"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDashboardRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDashboardResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InactiveEventDataStoreException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientEncryptionPolicyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidQueryStatementException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_event_data_store, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#UpdateEventDataStore"
        operation.name = "UpdateEventDataStore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEventDataStoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEventDataStoreResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudTrailAccessNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreHasOngoingImportException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InactiveEventDataStoreException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientDependencyServiceAccessPermissionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientEncryptionPolicyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEventSelectorsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInsightSelectorsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKmsKeyIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotInAllFeaturesModeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_trail, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudtrail#UpdateTrail"
        operation.name = "UpdateTrail"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTrailRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTrailResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudTrailAccessNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudTrailARNInvalidException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudTrailInvalidClientTokenIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsDeliveryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientDependencyServiceAccessPermissionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientEncryptionPolicyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientS3BucketPolicyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientSnsTopicPolicyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCloudWatchLogsLogGroupArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCloudWatchLogsRoleArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEventSelectorsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidHomeRegionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKmsKeyIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3BucketNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3PrefixException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSnsTopicNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTrailNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotInAllFeaturesModeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationsNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrailNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrailNotProvidedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
