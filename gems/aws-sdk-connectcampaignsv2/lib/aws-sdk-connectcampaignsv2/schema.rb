# frozen_string_literal: true

# This is generated code!

module Aws::ConnectCampaignsV2
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AgentlessConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#AgentlessConfig', name: 'AgentlessConfig')
    AnswerMachineDetectionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#AnswerMachineDetectionConfig', name: 'AnswerMachineDetectionConfig')
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 20, "max" => 500}, "smithy.api#pattern" => "^arn:[a-zA-Z0-9-]+:[a-zA-Z0-9-]+:[a-z]{2}-[a-z]+-\\d{1,2}:[a-zA-Z0-9-]+:[^:]+(?:/[^:]+)*(?:/[^:]+)?(?:\\:[^:]+)?$"})
    AttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#AttributeName', name: 'AttributeName', traits: {"smithy.api#length" => {"min" => 0, "max" => 32767}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-_]+$"})
    AttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#AttributeValue', name: 'AttributeValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 32767}, "smithy.api#pattern" => "^.*$"})
    Attributes = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.connectcampaignsv2#Attributes', name: 'Attributes', traits: {"smithy.api#sensitive" => {}})
    BandwidthAllocation = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.connectcampaignsv2#BandwidthAllocation', name: 'BandwidthAllocation', traits: {"smithy.api#range" => {"min" => 0, "max" => 1}})
    Campaign = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#Campaign', name: 'Campaign')
    CampaignArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#CampaignArn', name: 'CampaignArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 500}})
    CampaignDeletionPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#CampaignDeletionPolicy', name: 'CampaignDeletionPolicy', traits: {"smithy.api#enum" => [{"value" => "RETAIN_ALL", "name" => "RETAIN_ALL"}, {"value" => "DELETE_ALL", "name" => "DELETE_ALL"}]})
    CampaignFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#CampaignFilters', name: 'CampaignFilters')
    CampaignId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#CampaignId', name: 'CampaignId', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-:/]*$"})
    CampaignIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcampaignsv2#CampaignIdList', name: 'CampaignIdList')
    CampaignName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#CampaignName', name: 'CampaignName', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}})
    CampaignState = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#CampaignState', name: 'CampaignState', traits: {"smithy.api#enum" => [{"value" => "Initialized", "name" => "INITIALIZED", "documentation" => "Campaign is in initialized state"}, {"value" => "Running", "name" => "RUNNING", "documentation" => "Campaign is in running state"}, {"value" => "Paused", "name" => "PAUSED", "documentation" => "Campaign is in paused state"}, {"value" => "Stopped", "name" => "STOPPED", "documentation" => "Campaign is in stopped state"}, {"value" => "Failed", "name" => "FAILED", "documentation" => "Campaign is in failed state"}, {"value" => "Completed", "name" => "COMPLETED", "documentation" => "Campaign is in completed state"}]})
    CampaignSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#CampaignSummary', name: 'CampaignSummary')
    CampaignSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcampaignsv2#CampaignSummaryList', name: 'CampaignSummaryList')
    Capacity = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.connectcampaignsv2#Capacity', name: 'Capacity', traits: {"smithy.api#range" => {"min" => 0.01, "max" => 1}})
    ChannelSubtype = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#ChannelSubtype', name: 'ChannelSubtype', traits: {"smithy.api#enum" => [{"value" => "TELEPHONY", "name" => "TELEPHONY"}, {"value" => "SMS", "name" => "SMS"}, {"value" => "EMAIL", "name" => "EMAIL"}]})
    ChannelSubtypeConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#ChannelSubtypeConfig', name: 'ChannelSubtypeConfig')
    ChannelSubtypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcampaignsv2#ChannelSubtypeList', name: 'ChannelSubtypeList', traits: {"smithy.api#uniqueItems" => {}})
    ChannelSubtypeParameters = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.connectcampaignsv2#ChannelSubtypeParameters', name: 'ChannelSubtypeParameters')
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-.]*$"})
    CommunicationLimit = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#CommunicationLimit', name: 'CommunicationLimit')
    CommunicationLimitList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcampaignsv2#CommunicationLimitList', name: 'CommunicationLimitList', traits: {"smithy.api#length" => {"max" => 2}})
    CommunicationLimitTimeUnit = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#CommunicationLimitTimeUnit', name: 'CommunicationLimitTimeUnit', traits: {"smithy.api#enum" => [{"value" => "DAY", "name" => "DAY"}]})
    CommunicationLimits = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.connectcampaignsv2#CommunicationLimits', name: 'CommunicationLimits')
    CommunicationLimitsConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#CommunicationLimitsConfig', name: 'CommunicationLimitsConfig')
    CommunicationLimitsConfigType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#CommunicationLimitsConfigType', name: 'CommunicationLimitsConfigType', traits: {"smithy.api#enum" => [{"value" => "ALL_CHANNEL_SUBTYPES", "name" => "ALL_CHANNEL_SUBTYPES"}]})
    CommunicationTimeConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#CommunicationTimeConfig', name: 'CommunicationTimeConfig')
    CommunicationTimeConfigType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#CommunicationTimeConfigType', name: 'CommunicationTimeConfigType', traits: {"smithy.api#enum" => [{"value" => "TELEPHONY", "name" => "TELEPHONY"}, {"value" => "SMS", "name" => "SMS"}, {"value" => "EMAIL", "name" => "EMAIL"}]})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContactFlowId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#ContactFlowId', name: 'ContactFlowId', traits: {"smithy.api#length" => {"max" => 500}})
    CreateCampaignRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#CreateCampaignRequest', name: 'CreateCampaignRequest')
    CreateCampaignResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#CreateCampaignResponse', name: 'CreateCampaignResponse')
    CustomerProfilesIntegrationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#CustomerProfilesIntegrationConfig', name: 'CustomerProfilesIntegrationConfig')
    CustomerProfilesIntegrationIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#CustomerProfilesIntegrationIdentifier', name: 'CustomerProfilesIntegrationIdentifier')
    CustomerProfilesIntegrationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#CustomerProfilesIntegrationSummary', name: 'CustomerProfilesIntegrationSummary')
    DailyHours = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.connectcampaignsv2#DailyHours', name: 'DailyHours')
    DayOfWeek = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#DayOfWeek', name: 'DayOfWeek', traits: {"smithy.api#enum" => [{"value" => "MONDAY", "name" => "MONDAY"}, {"value" => "TUESDAY", "name" => "TUESDAY"}, {"value" => "WEDNESDAY", "name" => "WEDNESDAY"}, {"value" => "THURSDAY", "name" => "THURSDAY"}, {"value" => "FRIDAY", "name" => "FRIDAY"}, {"value" => "SATURDAY", "name" => "SATURDAY"}, {"value" => "SUNDAY", "name" => "SUNDAY"}]})
    DeleteCampaignChannelSubtypeConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#DeleteCampaignChannelSubtypeConfigRequest', name: 'DeleteCampaignChannelSubtypeConfigRequest')
    DeleteCampaignCommunicationLimitsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#DeleteCampaignCommunicationLimitsRequest', name: 'DeleteCampaignCommunicationLimitsRequest')
    DeleteCampaignCommunicationTimeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#DeleteCampaignCommunicationTimeRequest', name: 'DeleteCampaignCommunicationTimeRequest')
    DeleteCampaignRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#DeleteCampaignRequest', name: 'DeleteCampaignRequest')
    DeleteConnectInstanceConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#DeleteConnectInstanceConfigRequest', name: 'DeleteConnectInstanceConfigRequest')
    DeleteConnectInstanceIntegrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#DeleteConnectInstanceIntegrationRequest', name: 'DeleteConnectInstanceIntegrationRequest')
    DeleteInstanceOnboardingJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#DeleteInstanceOnboardingJobRequest', name: 'DeleteInstanceOnboardingJobRequest')
    DescribeCampaignRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#DescribeCampaignRequest', name: 'DescribeCampaignRequest')
    DescribeCampaignResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#DescribeCampaignResponse', name: 'DescribeCampaignResponse')
    DestinationPhoneNumber = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#DestinationPhoneNumber', name: 'DestinationPhoneNumber', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}, "smithy.api#pattern" => "^[\\d\\-+]*$", "smithy.api#sensitive" => {}})
    DialRequestId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#DialRequestId', name: 'DialRequestId', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-.]*$"})
    EmailAddress = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#EmailAddress', name: 'EmailAddress', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "[^\\s@]+@[^\\s@]+\\.[^\\s@]+", "smithy.api#sensitive" => {}})
    EmailChannelSubtypeConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#EmailChannelSubtypeConfig', name: 'EmailChannelSubtypeConfig')
    EmailChannelSubtypeParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#EmailChannelSubtypeParameters', name: 'EmailChannelSubtypeParameters')
    EmailDisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#EmailDisplayName', name: 'EmailDisplayName', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#sensitive" => {}})
    EmailOutboundConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#EmailOutboundConfig', name: 'EmailOutboundConfig')
    EmailOutboundMode = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.connectcampaignsv2#EmailOutboundMode', name: 'EmailOutboundMode')
    Enabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.connectcampaignsv2#Enabled', name: 'Enabled', traits: {"smithy.api#default" => false})
    EncryptionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#EncryptionConfig', name: 'EncryptionConfig')
    EncryptionKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#EncryptionKey', name: 'EncryptionKey', traits: {"smithy.api#length" => {"max" => 500}})
    EncryptionType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#EncryptionType', name: 'EncryptionType', traits: {"smithy.api#enum" => [{"name" => "KMS", "value" => "KMS"}]})
    EventTrigger = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#EventTrigger', name: 'EventTrigger')
    EventType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#EventType', name: 'EventType', traits: {"smithy.api#enum" => [{"value" => "Campaign-Email", "name" => "CAMPAIGN_EMAIL"}, {"value" => "Campaign-SMS", "name" => "CAMPAIGN_SMS"}, {"value" => "Campaign-Telephony", "name" => "CAMPAIGN_TELEPHONY"}, {"value" => "Campaign-Orchestration", "name" => "CAMPAIGN_ORCHESTRATION"}]})
    FailedCampaignStateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#FailedCampaignStateResponse', name: 'FailedCampaignStateResponse')
    FailedCampaignStateResponseList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcampaignsv2#FailedCampaignStateResponseList', name: 'FailedCampaignStateResponseList', traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    FailedProfileOutboundRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#FailedProfileOutboundRequest', name: 'FailedProfileOutboundRequest')
    FailedProfileOutboundRequestList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcampaignsv2#FailedProfileOutboundRequestList', name: 'FailedProfileOutboundRequestList', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    FailedRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#FailedRequest', name: 'FailedRequest')
    FailedRequestList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcampaignsv2#FailedRequestList', name: 'FailedRequestList', traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    FailureCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#FailureCode', name: 'FailureCode', traits: {"smithy.api#enum" => [{"value" => "InvalidInput", "name" => "INVALID_INPUT", "documentation" => "The request failed to satisfy the constraints specified by the service"}, {"value" => "RequestThrottled", "name" => "REQUEST_THROTTLED", "documentation" => "The request was throttled due to excessive usage"}, {"value" => "UnknownError", "name" => "UNKNOWN_ERROR", "documentation" => "Unexpected error during processing of request"}, {"value" => "BufferLimitExceeded", "name" => "BUFFER_LIMIT_EXCEEDED", "documentation" => "Request throttled due to large number of pending dial requests"}]})
    GetCampaignStateBatchFailureCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#GetCampaignStateBatchFailureCode', name: 'GetCampaignStateBatchFailureCode', traits: {"smithy.api#enum" => [{"value" => "ResourceNotFound", "name" => "RESOURCE_NOT_FOUND", "documentation" => "The specified resource was not found"}, {"value" => "UnknownError", "name" => "UNKNOWN_ERROR", "documentation" => "Unexpected error during processing of request"}]})
    GetCampaignStateBatchRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#GetCampaignStateBatchRequest', name: 'GetCampaignStateBatchRequest')
    GetCampaignStateBatchResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#GetCampaignStateBatchResponse', name: 'GetCampaignStateBatchResponse')
    GetCampaignStateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#GetCampaignStateRequest', name: 'GetCampaignStateRequest')
    GetCampaignStateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#GetCampaignStateResponse', name: 'GetCampaignStateResponse')
    GetConnectInstanceConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#GetConnectInstanceConfigRequest', name: 'GetConnectInstanceConfigRequest')
    GetConnectInstanceConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#GetConnectInstanceConfigResponse', name: 'GetConnectInstanceConfigResponse')
    GetInstanceCommunicationLimitsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#GetInstanceCommunicationLimitsRequest', name: 'GetInstanceCommunicationLimitsRequest')
    GetInstanceCommunicationLimitsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#GetInstanceCommunicationLimitsResponse', name: 'GetInstanceCommunicationLimitsResponse')
    GetInstanceOnboardingJobStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#GetInstanceOnboardingJobStatusRequest', name: 'GetInstanceOnboardingJobStatusRequest')
    GetInstanceOnboardingJobStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#GetInstanceOnboardingJobStatusResponse', name: 'GetInstanceOnboardingJobStatusResponse')
    InstanceCommunicationLimitsConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#InstanceCommunicationLimitsConfig', name: 'InstanceCommunicationLimitsConfig')
    InstanceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#InstanceConfig', name: 'InstanceConfig')
    InstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#InstanceId', name: 'InstanceId', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-.]*$"})
    InstanceIdFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#InstanceIdFilter', name: 'InstanceIdFilter')
    InstanceIdFilterOperator = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#InstanceIdFilterOperator', name: 'InstanceIdFilterOperator', traits: {"smithy.api#enum" => [{"name" => "EQ", "value" => "Eq", "documentation" => "Equals operator"}]})
    InstanceLimitsHandling = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#InstanceLimitsHandling', name: 'InstanceLimitsHandling', traits: {"smithy.api#enum" => [{"value" => "OPT_IN", "name" => "OPT_IN"}, {"value" => "OPT_OUT", "name" => "OPT_OUT"}]})
    InstanceOnboardingJobFailureCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#InstanceOnboardingJobFailureCode', name: 'InstanceOnboardingJobFailureCode', traits: {"smithy.api#enum" => [{"value" => "EVENT_BRIDGE_ACCESS_DENIED", "name" => "EVENT_BRIDGE_ACCESS_DENIED"}, {"value" => "EVENT_BRIDGE_MANAGED_RULE_LIMIT_EXCEEDED", "name" => "EVENT_BRIDGE_MANAGED_RULE_LIMIT_EXCEEDED"}, {"value" => "IAM_ACCESS_DENIED", "name" => "IAM_ACCESS_DENIED"}, {"value" => "KMS_ACCESS_DENIED", "name" => "KMS_ACCESS_DENIED"}, {"value" => "KMS_KEY_NOT_FOUND", "name" => "KMS_KEY_NOT_FOUND"}, {"value" => "INTERNAL_FAILURE", "name" => "INTERNAL_FAILURE"}]})
    InstanceOnboardingJobStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#InstanceOnboardingJobStatus', name: 'InstanceOnboardingJobStatus')
    InstanceOnboardingJobStatusCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#InstanceOnboardingJobStatusCode', name: 'InstanceOnboardingJobStatusCode', traits: {"smithy.api#enum" => [{"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "SUCCEEDED", "name" => "SUCCEEDED"}, {"value" => "FAILED", "name" => "FAILED"}]})
    IntegrationConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.connectcampaignsv2#IntegrationConfig', name: 'IntegrationConfig')
    IntegrationIdentifier = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.connectcampaignsv2#IntegrationIdentifier', name: 'IntegrationIdentifier')
    IntegrationSummary = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.connectcampaignsv2#IntegrationSummary', name: 'IntegrationSummary')
    IntegrationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcampaignsv2#IntegrationSummaryList', name: 'IntegrationSummaryList')
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    InvalidCampaignStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#InvalidCampaignStateException', name: 'InvalidCampaignStateException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    InvalidStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#InvalidStateException', name: 'InvalidStateException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    Iso8601Date = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#Iso8601Date', name: 'Iso8601Date', traits: {"smithy.api#pattern" => "^\\d{4}-\\d{2}-\\d{2}$"})
    Iso8601Duration = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#Iso8601Duration', name: 'Iso8601Duration', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^P(?:([-+]?[0-9]+)D)?(T(?:([-+]?[0-9]+)H)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)(?:[.,]([0-9]{0,9}))?S)?)?$"})
    Iso8601Time = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#Iso8601Time', name: 'Iso8601Time', traits: {"smithy.api#pattern" => "^T\\d{2}:\\d{2}$"})
    ListCampaignsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#ListCampaignsRequest', name: 'ListCampaignsRequest')
    ListCampaignsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#ListCampaignsResponse', name: 'ListCampaignsResponse')
    ListConnectInstanceIntegrationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#ListConnectInstanceIntegrationsRequest', name: 'ListConnectInstanceIntegrationsRequest')
    ListConnectInstanceIntegrationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#ListConnectInstanceIntegrationsResponse', name: 'ListConnectInstanceIntegrationsResponse')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    LocalTimeZoneConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#LocalTimeZoneConfig', name: 'LocalTimeZoneConfig')
    LocalTimeZoneDetection = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcampaignsv2#LocalTimeZoneDetection', name: 'LocalTimeZoneDetection', traits: {"smithy.api#uniqueItems" => {}})
    LocalTimeZoneDetectionType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#LocalTimeZoneDetectionType', name: 'LocalTimeZoneDetectionType', traits: {"smithy.api#enum" => [{"value" => "ZIP_CODE", "name" => "ZIP_CODE"}, {"value" => "AREA_CODE", "name" => "AREA_CODE"}]})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.connectcampaignsv2#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"max" => 1000}})
    ObjectTypeName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#ObjectTypeName', name: 'ObjectTypeName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ObjectTypeNamesMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.connectcampaignsv2#ObjectTypeNamesMap', name: 'ObjectTypeNamesMap')
    OpenHours = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.connectcampaignsv2#OpenHours', name: 'OpenHours')
    OutboundRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#OutboundRequest', name: 'OutboundRequest')
    OutboundRequestList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcampaignsv2#OutboundRequestList', name: 'OutboundRequestList', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    PauseCampaignRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#PauseCampaignRequest', name: 'PauseCampaignRequest')
    PredictiveConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#PredictiveConfig', name: 'PredictiveConfig')
    ProfileId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#ProfileId', name: 'ProfileId', traits: {"smithy.api#pattern" => "^[a-f0-9]{32}$"})
    ProfileOutboundRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#ProfileOutboundRequest', name: 'ProfileOutboundRequest')
    ProfileOutboundRequestFailureCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#ProfileOutboundRequestFailureCode', name: 'ProfileOutboundRequestFailureCode', traits: {"smithy.api#enum" => [{"value" => "UnknownError", "name" => "UNKNOWN_ERROR", "documentation" => "Unexpected error during processing of request"}, {"value" => "ResourceNotFound", "name" => "RESOURCE_NOT_FOUND", "documentation" => "The specified resource was not found"}, {"value" => "Conflict", "name" => "CONFLICT", "documentation" => "The specified resource conflicts with another resource"}, {"value" => "RequestThrottled", "name" => "REQUEST_THROTTLED", "documentation" => "Request throttled due to large number of requests"}, {"value" => "InvalidInput", "name" => "INVALID_INPUT", "documentation" => "The request failed to satisfy the constraints specified by the service"}]})
    ProfileOutboundRequestId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#ProfileOutboundRequestId', name: 'ProfileOutboundRequestId', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-.]*$"})
    ProfileOutboundRequestList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcampaignsv2#ProfileOutboundRequestList', name: 'ProfileOutboundRequestList', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    ProgressiveConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#ProgressiveConfig', name: 'ProgressiveConfig')
    PutConnectInstanceIntegrationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#PutConnectInstanceIntegrationRequest', name: 'PutConnectInstanceIntegrationRequest')
    PutInstanceCommunicationLimitsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#PutInstanceCommunicationLimitsRequest', name: 'PutInstanceCommunicationLimitsRequest')
    PutOutboundRequestBatchRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#PutOutboundRequestBatchRequest', name: 'PutOutboundRequestBatchRequest')
    PutOutboundRequestBatchResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#PutOutboundRequestBatchResponse', name: 'PutOutboundRequestBatchResponse')
    PutProfileOutboundRequestBatchRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#PutProfileOutboundRequestBatchRequest', name: 'PutProfileOutboundRequestBatchRequest')
    PutProfileOutboundRequestBatchResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#PutProfileOutboundRequestBatchResponse', name: 'PutProfileOutboundRequestBatchResponse')
    QConnectIntegrationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#QConnectIntegrationConfig', name: 'QConnectIntegrationConfig')
    QConnectIntegrationIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#QConnectIntegrationIdentifier', name: 'QConnectIntegrationIdentifier')
    QConnectIntegrationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#QConnectIntegrationSummary', name: 'QConnectIntegrationSummary')
    QueueId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#QueueId', name: 'QueueId', traits: {"smithy.api#length" => {"max" => 500}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RestrictedPeriod = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#RestrictedPeriod', name: 'RestrictedPeriod')
    RestrictedPeriodList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcampaignsv2#RestrictedPeriodList', name: 'RestrictedPeriodList')
    RestrictedPeriodName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#RestrictedPeriodName', name: 'RestrictedPeriodName', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}})
    RestrictedPeriods = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.connectcampaignsv2#RestrictedPeriods', name: 'RestrictedPeriods')
    ResumeCampaignRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#ResumeCampaignRequest', name: 'ResumeCampaignRequest')
    Schedule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#Schedule', name: 'Schedule')
    ServiceLinkedRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#ServiceLinkedRoleArn', name: 'ServiceLinkedRoleArn', traits: {"smithy.api#length" => {"max" => 256}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SmsChannelSubtypeConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#SmsChannelSubtypeConfig', name: 'SmsChannelSubtypeConfig')
    SmsChannelSubtypeParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#SmsChannelSubtypeParameters', name: 'SmsChannelSubtypeParameters')
    SmsOutboundConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#SmsOutboundConfig', name: 'SmsOutboundConfig')
    SmsOutboundMode = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.connectcampaignsv2#SmsOutboundMode', name: 'SmsOutboundMode')
    Source = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.connectcampaignsv2#Source', name: 'Source')
    SourcePhoneNumber = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#SourcePhoneNumber', name: 'SourcePhoneNumber', traits: {"smithy.api#length" => {"max" => 100}})
    StartCampaignRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#StartCampaignRequest', name: 'StartCampaignRequest')
    StartInstanceOnboardingJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#StartInstanceOnboardingJobRequest', name: 'StartInstanceOnboardingJobRequest')
    StartInstanceOnboardingJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#StartInstanceOnboardingJobResponse', name: 'StartInstanceOnboardingJobResponse')
    StopCampaignRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#StopCampaignRequest', name: 'StopCampaignRequest')
    SuccessfulCampaignStateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#SuccessfulCampaignStateResponse', name: 'SuccessfulCampaignStateResponse')
    SuccessfulCampaignStateResponseList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcampaignsv2#SuccessfulCampaignStateResponseList', name: 'SuccessfulCampaignStateResponseList', traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    SuccessfulProfileOutboundRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#SuccessfulProfileOutboundRequest', name: 'SuccessfulProfileOutboundRequest')
    SuccessfulProfileOutboundRequestList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcampaignsv2#SuccessfulProfileOutboundRequestList', name: 'SuccessfulProfileOutboundRequestList', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    SuccessfulRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#SuccessfulRequest', name: 'SuccessfulRequest')
    SuccessfulRequestList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcampaignsv2#SuccessfulRequestList', name: 'SuccessfulRequestList', traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcampaignsv2#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.connectcampaignsv2#TagMap', name: 'TagMap')
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#TagResourceRequest', name: 'TagResourceRequest')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TelephonyChannelSubtypeConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#TelephonyChannelSubtypeConfig', name: 'TelephonyChannelSubtypeConfig')
    TelephonyChannelSubtypeParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#TelephonyChannelSubtypeParameters', name: 'TelephonyChannelSubtypeParameters')
    TelephonyOutboundConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#TelephonyOutboundConfig', name: 'TelephonyOutboundConfig')
    TelephonyOutboundMode = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.connectcampaignsv2#TelephonyOutboundMode', name: 'TelephonyOutboundMode')
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    TimeRange = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#TimeRange', name: 'TimeRange')
    TimeRangeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcampaignsv2#TimeRangeList', name: 'TimeRangeList')
    TimeStamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.connectcampaignsv2#TimeStamp', name: 'TimeStamp', traits: {"smithy.api#timestampFormat" => "date-time"})
    TimeWindow = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#TimeWindow', name: 'TimeWindow')
    TimeZone = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#TimeZone', name: 'TimeZone', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-/]*$"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#UntagResourceRequest', name: 'UntagResourceRequest')
    UpdateCampaignChannelSubtypeConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#UpdateCampaignChannelSubtypeConfigRequest', name: 'UpdateCampaignChannelSubtypeConfigRequest')
    UpdateCampaignCommunicationLimitsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#UpdateCampaignCommunicationLimitsRequest', name: 'UpdateCampaignCommunicationLimitsRequest')
    UpdateCampaignCommunicationTimeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#UpdateCampaignCommunicationTimeRequest', name: 'UpdateCampaignCommunicationTimeRequest')
    UpdateCampaignFlowAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#UpdateCampaignFlowAssociationRequest', name: 'UpdateCampaignFlowAssociationRequest')
    UpdateCampaignNameRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#UpdateCampaignNameRequest', name: 'UpdateCampaignNameRequest')
    UpdateCampaignScheduleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#UpdateCampaignScheduleRequest', name: 'UpdateCampaignScheduleRequest')
    UpdateCampaignSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#UpdateCampaignSourceRequest', name: 'UpdateCampaignSourceRequest')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaignsv2#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    XAmazonErrorType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaignsv2#XAmazonErrorType', name: 'XAmazonErrorType')

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.add_member(:x_amz_error_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XAmazonErrorType, location_name: 'xAmzErrorType', traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    AccessDeniedException.type = Types::AccessDeniedException
    AgentlessConfig.type = Types::AgentlessConfig
    AnswerMachineDetectionConfig.add_member(:enable_answer_machine_detection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'enableAnswerMachineDetection', traits: {"smithy.api#required" => {}}))
    AnswerMachineDetectionConfig.add_member(:await_answer_machine_prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'awaitAnswerMachinePrompt', traits: {"smithy.api#default" => nil}))
    AnswerMachineDetectionConfig.type = Types::AnswerMachineDetectionConfig
    Attributes.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName)
    Attributes.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue)
    Campaign.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    Campaign.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    Campaign.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    Campaign.add_member(:connect_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'connectInstanceId', traits: {"smithy.api#required" => {}}))
    Campaign.add_member(:channel_subtype_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelSubtypeConfig, location_name: 'channelSubtypeConfig', traits: {"smithy.api#required" => {}}))
    Campaign.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source'))
    Campaign.add_member(:connect_campaign_flow_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'connectCampaignFlowArn'))
    Campaign.add_member(:schedule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Schedule, location_name: 'schedule'))
    Campaign.add_member(:communication_time_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommunicationTimeConfig, location_name: 'communicationTimeConfig'))
    Campaign.add_member(:communication_limits_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommunicationLimitsConfig, location_name: 'communicationLimitsOverride'))
    Campaign.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    Campaign.type = Types::Campaign
    CampaignFilters.add_member(:instance_id_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceIdFilter, location_name: 'instanceIdFilter'))
    CampaignFilters.type = Types::CampaignFilters
    CampaignIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId)
    CampaignSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    CampaignSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    CampaignSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CampaignSummary.add_member(:connect_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'connectInstanceId', traits: {"smithy.api#required" => {}}))
    CampaignSummary.add_member(:channel_subtypes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelSubtypeList, location_name: 'channelSubtypes', traits: {"smithy.api#required" => {}}))
    CampaignSummary.add_member(:schedule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Schedule, location_name: 'schedule'))
    CampaignSummary.add_member(:connect_campaign_flow_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'connectCampaignFlowArn'))
    CampaignSummary.type = Types::CampaignSummary
    CampaignSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignSummary)
    ChannelSubtypeConfig.add_member(:telephony, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TelephonyChannelSubtypeConfig, location_name: 'telephony'))
    ChannelSubtypeConfig.add_member(:sms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmsChannelSubtypeConfig, location_name: 'sms'))
    ChannelSubtypeConfig.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailChannelSubtypeConfig, location_name: 'email'))
    ChannelSubtypeConfig.type = Types::ChannelSubtypeConfig
    ChannelSubtypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelSubtype)
    ChannelSubtypeParameters.add_member(:telephony, Types::ChannelSubtypeParameters::Telephony, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TelephonyChannelSubtypeParameters, location_name: 'telephony'))
    ChannelSubtypeParameters.add_member(:sms, Types::ChannelSubtypeParameters::Sms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmsChannelSubtypeParameters, location_name: 'sms'))
    ChannelSubtypeParameters.add_member(:email, Types::ChannelSubtypeParameters::Email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailChannelSubtypeParameters, location_name: 'email'))
    ChannelSubtypeParameters.add_member(:unknown, Types::ChannelSubtypeParameters::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ChannelSubtypeParameters.type = Types::ChannelSubtypeParameters
    CommunicationLimit.add_member(:max_count_per_recipient, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxCountPerRecipient', traits: {"smithy.api#range" => {"min" => 1}, "smithy.api#required" => {}}))
    CommunicationLimit.add_member(:frequency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'frequency', traits: {"smithy.api#range" => {"min" => 1, "max" => 30}, "smithy.api#required" => {}}))
    CommunicationLimit.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommunicationLimitTimeUnit, location_name: 'unit', traits: {"smithy.api#required" => {}}))
    CommunicationLimit.type = Types::CommunicationLimit
    CommunicationLimitList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommunicationLimit)
    CommunicationLimits.add_member(:communication_limits_list, Types::CommunicationLimits::CommunicationLimitsList, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommunicationLimitList, location_name: 'communicationLimitsList'))
    CommunicationLimits.add_member(:unknown, Types::CommunicationLimits::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    CommunicationLimits.type = Types::CommunicationLimits
    CommunicationLimitsConfig.add_member(:all_channel_subtypes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommunicationLimits, location_name: 'allChannelSubtypes'))
    CommunicationLimitsConfig.add_member(:instance_limits_handling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceLimitsHandling, location_name: 'instanceLimitsHandling'))
    CommunicationLimitsConfig.type = Types::CommunicationLimitsConfig
    CommunicationTimeConfig.add_member(:local_time_zone_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocalTimeZoneConfig, location_name: 'localTimeZoneConfig', traits: {"smithy.api#required" => {}}))
    CommunicationTimeConfig.add_member(:telephony, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeWindow, location_name: 'telephony'))
    CommunicationTimeConfig.add_member(:sms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeWindow, location_name: 'sms'))
    CommunicationTimeConfig.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeWindow, location_name: 'email'))
    CommunicationTimeConfig.type = Types::CommunicationTimeConfig
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:x_amz_error_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XAmazonErrorType, location_name: 'xAmzErrorType', traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    ConflictException.type = Types::ConflictException
    CreateCampaignRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateCampaignRequest.add_member(:connect_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'connectInstanceId', traits: {"smithy.api#required" => {}}))
    CreateCampaignRequest.add_member(:channel_subtype_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelSubtypeConfig, location_name: 'channelSubtypeConfig', traits: {"smithy.api#required" => {}}))
    CreateCampaignRequest.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source'))
    CreateCampaignRequest.add_member(:connect_campaign_flow_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'connectCampaignFlowArn'))
    CreateCampaignRequest.add_member(:schedule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Schedule, location_name: 'schedule'))
    CreateCampaignRequest.add_member(:communication_time_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommunicationTimeConfig, location_name: 'communicationTimeConfig'))
    CreateCampaignRequest.add_member(:communication_limits_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommunicationLimitsConfig, location_name: 'communicationLimitsOverride'))
    CreateCampaignRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateCampaignRequest.type = Types::CreateCampaignRequest
    CreateCampaignResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'id'))
    CreateCampaignResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignArn, location_name: 'arn'))
    CreateCampaignResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateCampaignResponse.type = Types::CreateCampaignResponse
    CustomerProfilesIntegrationConfig.add_member(:domain_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'domainArn', traits: {"smithy.api#required" => {}}))
    CustomerProfilesIntegrationConfig.add_member(:object_type_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectTypeNamesMap, location_name: 'objectTypeNames', traits: {"smithy.api#required" => {}}))
    CustomerProfilesIntegrationConfig.type = Types::CustomerProfilesIntegrationConfig
    CustomerProfilesIntegrationIdentifier.add_member(:domain_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'domainArn', traits: {"smithy.api#required" => {}}))
    CustomerProfilesIntegrationIdentifier.type = Types::CustomerProfilesIntegrationIdentifier
    CustomerProfilesIntegrationSummary.add_member(:domain_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'domainArn', traits: {"smithy.api#required" => {}}))
    CustomerProfilesIntegrationSummary.add_member(:object_type_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectTypeNamesMap, location_name: 'objectTypeNames', traits: {"smithy.api#required" => {}}))
    CustomerProfilesIntegrationSummary.type = Types::CustomerProfilesIntegrationSummary
    DailyHours.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DayOfWeek)
    DailyHours.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeRangeList)
    DeleteCampaignChannelSubtypeConfigRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCampaignChannelSubtypeConfigRequest.add_member(:channel_subtype, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelSubtype, location_name: 'channelSubtype', traits: {"smithy.api#httpQuery" => "channelSubtype", "smithy.api#required" => {}}))
    DeleteCampaignChannelSubtypeConfigRequest.type = Types::DeleteCampaignChannelSubtypeConfigRequest
    DeleteCampaignCommunicationLimitsRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCampaignCommunicationLimitsRequest.add_member(:config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommunicationLimitsConfigType, location_name: 'config', traits: {"smithy.api#httpQuery" => "config", "smithy.api#required" => {}}))
    DeleteCampaignCommunicationLimitsRequest.type = Types::DeleteCampaignCommunicationLimitsRequest
    DeleteCampaignCommunicationTimeRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCampaignCommunicationTimeRequest.add_member(:config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommunicationTimeConfigType, location_name: 'config', traits: {"smithy.api#httpQuery" => "config", "smithy.api#required" => {}}))
    DeleteCampaignCommunicationTimeRequest.type = Types::DeleteCampaignCommunicationTimeRequest
    DeleteCampaignRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCampaignRequest.type = Types::DeleteCampaignRequest
    DeleteConnectInstanceConfigRequest.add_member(:connect_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'connectInstanceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConnectInstanceConfigRequest.add_member(:campaign_deletion_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignDeletionPolicy, location_name: 'campaignDeletionPolicy', traits: {"smithy.api#httpQuery" => "campaignDeletionPolicy"}))
    DeleteConnectInstanceConfigRequest.type = Types::DeleteConnectInstanceConfigRequest
    DeleteConnectInstanceIntegrationRequest.add_member(:connect_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'connectInstanceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConnectInstanceIntegrationRequest.add_member(:integration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationIdentifier, location_name: 'integrationIdentifier', traits: {"smithy.api#required" => {}}))
    DeleteConnectInstanceIntegrationRequest.type = Types::DeleteConnectInstanceIntegrationRequest
    DeleteInstanceOnboardingJobRequest.add_member(:connect_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'connectInstanceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteInstanceOnboardingJobRequest.type = Types::DeleteInstanceOnboardingJobRequest
    DescribeCampaignRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeCampaignRequest.type = Types::DescribeCampaignRequest
    DescribeCampaignResponse.add_member(:campaign, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Campaign, location_name: 'campaign'))
    DescribeCampaignResponse.type = Types::DescribeCampaignResponse
    EmailChannelSubtypeConfig.add_member(:capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Capacity, location_name: 'capacity'))
    EmailChannelSubtypeConfig.add_member(:outbound_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailOutboundMode, location_name: 'outboundMode', traits: {"smithy.api#required" => {}}))
    EmailChannelSubtypeConfig.add_member(:default_outbound_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailOutboundConfig, location_name: 'defaultOutboundConfig', traits: {"smithy.api#required" => {}}))
    EmailChannelSubtypeConfig.type = Types::EmailChannelSubtypeConfig
    EmailChannelSubtypeParameters.add_member(:destination_email_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'destinationEmailAddress', traits: {"smithy.api#required" => {}}))
    EmailChannelSubtypeParameters.add_member(:connect_source_email_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'connectSourceEmailAddress'))
    EmailChannelSubtypeParameters.add_member(:template_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'templateArn'))
    EmailChannelSubtypeParameters.add_member(:template_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Attributes, location_name: 'templateParameters', traits: {"smithy.api#required" => {}}))
    EmailChannelSubtypeParameters.type = Types::EmailChannelSubtypeParameters
    EmailOutboundConfig.add_member(:connect_source_email_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'connectSourceEmailAddress', traits: {"smithy.api#required" => {}}))
    EmailOutboundConfig.add_member(:source_email_address_display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailDisplayName, location_name: 'sourceEmailAddressDisplayName'))
    EmailOutboundConfig.add_member(:wisdom_template_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'wisdomTemplateArn', traits: {"smithy.api#required" => {}}))
    EmailOutboundConfig.type = Types::EmailOutboundConfig
    EmailOutboundMode.add_member(:agentless, Types::EmailOutboundMode::Agentless, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentlessConfig, location_name: 'agentless'))
    EmailOutboundMode.add_member(:unknown, Types::EmailOutboundMode::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    EmailOutboundMode.type = Types::EmailOutboundMode
    EncryptionConfig.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'enabled', traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    EncryptionConfig.add_member(:encryption_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionType, location_name: 'encryptionType'))
    EncryptionConfig.add_member(:key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKey, location_name: 'keyArn'))
    EncryptionConfig.type = Types::EncryptionConfig
    EventTrigger.add_member(:customer_profiles_domain_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'customerProfilesDomainArn'))
    EventTrigger.type = Types::EventTrigger
    FailedCampaignStateResponse.add_member(:campaign_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'campaignId'))
    FailedCampaignStateResponse.add_member(:failure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCampaignStateBatchFailureCode, location_name: 'failureCode'))
    FailedCampaignStateResponse.type = Types::FailedCampaignStateResponse
    FailedCampaignStateResponseList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedCampaignStateResponse)
    FailedProfileOutboundRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken'))
    FailedProfileOutboundRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileOutboundRequestId, location_name: 'id'))
    FailedProfileOutboundRequest.add_member(:failure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileOutboundRequestFailureCode, location_name: 'failureCode'))
    FailedProfileOutboundRequest.type = Types::FailedProfileOutboundRequest
    FailedProfileOutboundRequestList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedProfileOutboundRequest)
    FailedRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken'))
    FailedRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DialRequestId, location_name: 'id'))
    FailedRequest.add_member(:failure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureCode, location_name: 'failureCode'))
    FailedRequest.type = Types::FailedRequest
    FailedRequestList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedRequest)
    GetCampaignStateBatchRequest.add_member(:campaign_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignIdList, location_name: 'campaignIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}, "smithy.api#required" => {}}))
    GetCampaignStateBatchRequest.type = Types::GetCampaignStateBatchRequest
    GetCampaignStateBatchResponse.add_member(:successful_requests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SuccessfulCampaignStateResponseList, location_name: 'successfulRequests'))
    GetCampaignStateBatchResponse.add_member(:failed_requests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedCampaignStateResponseList, location_name: 'failedRequests'))
    GetCampaignStateBatchResponse.type = Types::GetCampaignStateBatchResponse
    GetCampaignStateRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCampaignStateRequest.type = Types::GetCampaignStateRequest
    GetCampaignStateResponse.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignState, location_name: 'state'))
    GetCampaignStateResponse.type = Types::GetCampaignStateResponse
    GetConnectInstanceConfigRequest.add_member(:connect_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'connectInstanceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConnectInstanceConfigRequest.type = Types::GetConnectInstanceConfigRequest
    GetConnectInstanceConfigResponse.add_member(:connect_instance_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceConfig, location_name: 'connectInstanceConfig'))
    GetConnectInstanceConfigResponse.type = Types::GetConnectInstanceConfigResponse
    GetInstanceCommunicationLimitsRequest.add_member(:connect_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'connectInstanceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetInstanceCommunicationLimitsRequest.type = Types::GetInstanceCommunicationLimitsRequest
    GetInstanceCommunicationLimitsResponse.add_member(:communication_limits_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceCommunicationLimitsConfig, location_name: 'communicationLimitsConfig'))
    GetInstanceCommunicationLimitsResponse.type = Types::GetInstanceCommunicationLimitsResponse
    GetInstanceOnboardingJobStatusRequest.add_member(:connect_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'connectInstanceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetInstanceOnboardingJobStatusRequest.type = Types::GetInstanceOnboardingJobStatusRequest
    GetInstanceOnboardingJobStatusResponse.add_member(:connect_instance_onboarding_job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceOnboardingJobStatus, location_name: 'connectInstanceOnboardingJobStatus'))
    GetInstanceOnboardingJobStatusResponse.type = Types::GetInstanceOnboardingJobStatusResponse
    InstanceCommunicationLimitsConfig.add_member(:all_channel_subtypes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommunicationLimits, location_name: 'allChannelSubtypes'))
    InstanceCommunicationLimitsConfig.type = Types::InstanceCommunicationLimitsConfig
    InstanceConfig.add_member(:connect_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'connectInstanceId', traits: {"smithy.api#required" => {}}))
    InstanceConfig.add_member(:service_linked_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleArn, location_name: 'serviceLinkedRoleArn', traits: {"smithy.api#required" => {}}))
    InstanceConfig.add_member(:encryption_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfig, location_name: 'encryptionConfig', traits: {"smithy.api#required" => {}}))
    InstanceConfig.type = Types::InstanceConfig
    InstanceIdFilter.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'value', traits: {"smithy.api#required" => {}}))
    InstanceIdFilter.add_member(:operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceIdFilterOperator, location_name: 'operator', traits: {"smithy.api#required" => {}}))
    InstanceIdFilter.type = Types::InstanceIdFilter
    InstanceOnboardingJobStatus.add_member(:connect_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'connectInstanceId', traits: {"smithy.api#required" => {}}))
    InstanceOnboardingJobStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceOnboardingJobStatusCode, location_name: 'status', traits: {"smithy.api#required" => {}}))
    InstanceOnboardingJobStatus.add_member(:failure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceOnboardingJobFailureCode, location_name: 'failureCode'))
    InstanceOnboardingJobStatus.type = Types::InstanceOnboardingJobStatus
    IntegrationConfig.add_member(:customer_profiles, Types::IntegrationConfig::CustomerProfiles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerProfilesIntegrationConfig, location_name: 'customerProfiles'))
    IntegrationConfig.add_member(:q_connect, Types::IntegrationConfig::QConnect, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QConnectIntegrationConfig, location_name: 'qConnect'))
    IntegrationConfig.add_member(:unknown, Types::IntegrationConfig::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    IntegrationConfig.type = Types::IntegrationConfig
    IntegrationIdentifier.add_member(:customer_profiles, Types::IntegrationIdentifier::CustomerProfiles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerProfilesIntegrationIdentifier, location_name: 'customerProfiles'))
    IntegrationIdentifier.add_member(:q_connect, Types::IntegrationIdentifier::QConnect, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QConnectIntegrationIdentifier, location_name: 'qConnect'))
    IntegrationIdentifier.add_member(:unknown, Types::IntegrationIdentifier::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    IntegrationIdentifier.type = Types::IntegrationIdentifier
    IntegrationSummary.add_member(:customer_profiles, Types::IntegrationSummary::CustomerProfiles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerProfilesIntegrationSummary, location_name: 'customerProfiles'))
    IntegrationSummary.add_member(:q_connect, Types::IntegrationSummary::QConnect, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QConnectIntegrationSummary, location_name: 'qConnect'))
    IntegrationSummary.add_member(:unknown, Types::IntegrationSummary::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    IntegrationSummary.type = Types::IntegrationSummary
    IntegrationSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationSummary)
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:x_amz_error_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XAmazonErrorType, location_name: 'xAmzErrorType', traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    InternalServerException.type = Types::InternalServerException
    InvalidCampaignStateException.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignState, location_name: 'state', traits: {"smithy.api#required" => {}}))
    InvalidCampaignStateException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InvalidCampaignStateException.add_member(:x_amz_error_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XAmazonErrorType, location_name: 'xAmzErrorType', traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    InvalidCampaignStateException.type = Types::InvalidCampaignStateException
    InvalidStateException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InvalidStateException.add_member(:x_amz_error_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XAmazonErrorType, location_name: 'xAmzErrorType', traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    InvalidStateException.type = Types::InvalidStateException
    ListCampaignsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    ListCampaignsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListCampaignsRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignFilters, location_name: 'filters'))
    ListCampaignsRequest.type = Types::ListCampaignsRequest
    ListCampaignsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListCampaignsResponse.add_member(:campaign_summary_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignSummaryList, location_name: 'campaignSummaryList'))
    ListCampaignsResponse.type = Types::ListCampaignsResponse
    ListConnectInstanceIntegrationsRequest.add_member(:connect_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'connectInstanceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListConnectInstanceIntegrationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListConnectInstanceIntegrationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListConnectInstanceIntegrationsRequest.type = Types::ListConnectInstanceIntegrationsRequest
    ListConnectInstanceIntegrationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListConnectInstanceIntegrationsResponse.add_member(:integration_summary_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationSummaryList, location_name: 'integrationSummaryList'))
    ListConnectInstanceIntegrationsResponse.type = Types::ListConnectInstanceIntegrationsResponse
    ListTagsForResourceRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LocalTimeZoneConfig.add_member(:default_time_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeZone, location_name: 'defaultTimeZone'))
    LocalTimeZoneConfig.add_member(:local_time_zone_detection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocalTimeZoneDetection, location_name: 'localTimeZoneDetection'))
    LocalTimeZoneConfig.type = Types::LocalTimeZoneConfig
    LocalTimeZoneDetection.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocalTimeZoneDetectionType)
    ObjectTypeNamesMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventType)
    ObjectTypeNamesMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectTypeName)
    OpenHours.add_member(:daily_hours, Types::OpenHours::DailyHours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DailyHours, location_name: 'dailyHours'))
    OpenHours.add_member(:unknown, Types::OpenHours::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    OpenHours.type = Types::OpenHours
    OutboundRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#required" => {}}))
    OutboundRequest.add_member(:expiration_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'expirationTime', traits: {"smithy.api#required" => {}}))
    OutboundRequest.add_member(:channel_subtype_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelSubtypeParameters, location_name: 'channelSubtypeParameters', traits: {"smithy.api#required" => {}}))
    OutboundRequest.type = Types::OutboundRequest
    OutboundRequestList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutboundRequest)
    PauseCampaignRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PauseCampaignRequest.type = Types::PauseCampaignRequest
    PredictiveConfig.add_member(:bandwidth_allocation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BandwidthAllocation, location_name: 'bandwidthAllocation', traits: {"smithy.api#required" => {}}))
    PredictiveConfig.type = Types::PredictiveConfig
    ProfileOutboundRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#required" => {}}))
    ProfileOutboundRequest.add_member(:profile_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileId, location_name: 'profileId', traits: {"smithy.api#required" => {}}))
    ProfileOutboundRequest.add_member(:expiration_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'expirationTime'))
    ProfileOutboundRequest.type = Types::ProfileOutboundRequest
    ProfileOutboundRequestList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileOutboundRequest)
    ProgressiveConfig.add_member(:bandwidth_allocation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BandwidthAllocation, location_name: 'bandwidthAllocation', traits: {"smithy.api#required" => {}}))
    ProgressiveConfig.type = Types::ProgressiveConfig
    PutConnectInstanceIntegrationRequest.add_member(:connect_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'connectInstanceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutConnectInstanceIntegrationRequest.add_member(:integration_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationConfig, location_name: 'integrationConfig', traits: {"smithy.api#required" => {}}))
    PutConnectInstanceIntegrationRequest.type = Types::PutConnectInstanceIntegrationRequest
    PutInstanceCommunicationLimitsRequest.add_member(:connect_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'connectInstanceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutInstanceCommunicationLimitsRequest.add_member(:communication_limits_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceCommunicationLimitsConfig, location_name: 'communicationLimitsConfig', traits: {"smithy.api#required" => {}}))
    PutInstanceCommunicationLimitsRequest.type = Types::PutInstanceCommunicationLimitsRequest
    PutOutboundRequestBatchRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutOutboundRequestBatchRequest.add_member(:outbound_requests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutboundRequestList, location_name: 'outboundRequests', traits: {"smithy.api#required" => {}}))
    PutOutboundRequestBatchRequest.type = Types::PutOutboundRequestBatchRequest
    PutOutboundRequestBatchResponse.add_member(:successful_requests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SuccessfulRequestList, location_name: 'successfulRequests'))
    PutOutboundRequestBatchResponse.add_member(:failed_requests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedRequestList, location_name: 'failedRequests'))
    PutOutboundRequestBatchResponse.type = Types::PutOutboundRequestBatchResponse
    PutProfileOutboundRequestBatchRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutProfileOutboundRequestBatchRequest.add_member(:profile_outbound_requests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileOutboundRequestList, location_name: 'profileOutboundRequests', traits: {"smithy.api#required" => {}}))
    PutProfileOutboundRequestBatchRequest.type = Types::PutProfileOutboundRequestBatchRequest
    PutProfileOutboundRequestBatchResponse.add_member(:successful_requests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SuccessfulProfileOutboundRequestList, location_name: 'successfulRequests'))
    PutProfileOutboundRequestBatchResponse.add_member(:failed_requests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedProfileOutboundRequestList, location_name: 'failedRequests'))
    PutProfileOutboundRequestBatchResponse.type = Types::PutProfileOutboundRequestBatchResponse
    QConnectIntegrationConfig.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#required" => {}}))
    QConnectIntegrationConfig.type = Types::QConnectIntegrationConfig
    QConnectIntegrationIdentifier.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#required" => {}}))
    QConnectIntegrationIdentifier.type = Types::QConnectIntegrationIdentifier
    QConnectIntegrationSummary.add_member(:knowledge_base_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'knowledgeBaseArn', traits: {"smithy.api#required" => {}}))
    QConnectIntegrationSummary.type = Types::QConnectIntegrationSummary
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:x_amz_error_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XAmazonErrorType, location_name: 'xAmzErrorType', traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RestrictedPeriod.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestrictedPeriodName, location_name: 'name'))
    RestrictedPeriod.add_member(:start_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Date, location_name: 'startDate', traits: {"smithy.api#required" => {}}))
    RestrictedPeriod.add_member(:end_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Date, location_name: 'endDate', traits: {"smithy.api#required" => {}}))
    RestrictedPeriod.type = Types::RestrictedPeriod
    RestrictedPeriodList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestrictedPeriod)
    RestrictedPeriods.add_member(:restricted_period_list, Types::RestrictedPeriods::RestrictedPeriodList, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestrictedPeriodList, location_name: 'restrictedPeriodList'))
    RestrictedPeriods.add_member(:unknown, Types::RestrictedPeriods::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    RestrictedPeriods.type = Types::RestrictedPeriods
    ResumeCampaignRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ResumeCampaignRequest.type = Types::ResumeCampaignRequest
    Schedule.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'startTime', traits: {"smithy.api#required" => {}}))
    Schedule.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'endTime', traits: {"smithy.api#required" => {}}))
    Schedule.add_member(:refresh_frequency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Duration, location_name: 'refreshFrequency'))
    Schedule.type = Types::Schedule
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:x_amz_error_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XAmazonErrorType, location_name: 'xAmzErrorType', traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SmsChannelSubtypeConfig.add_member(:capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Capacity, location_name: 'capacity'))
    SmsChannelSubtypeConfig.add_member(:outbound_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmsOutboundMode, location_name: 'outboundMode', traits: {"smithy.api#required" => {}}))
    SmsChannelSubtypeConfig.add_member(:default_outbound_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmsOutboundConfig, location_name: 'defaultOutboundConfig', traits: {"smithy.api#required" => {}}))
    SmsChannelSubtypeConfig.type = Types::SmsChannelSubtypeConfig
    SmsChannelSubtypeParameters.add_member(:destination_phone_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationPhoneNumber, location_name: 'destinationPhoneNumber', traits: {"smithy.api#required" => {}}))
    SmsChannelSubtypeParameters.add_member(:connect_source_phone_number_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'connectSourcePhoneNumberArn'))
    SmsChannelSubtypeParameters.add_member(:template_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'templateArn'))
    SmsChannelSubtypeParameters.add_member(:template_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Attributes, location_name: 'templateParameters', traits: {"smithy.api#required" => {}}))
    SmsChannelSubtypeParameters.type = Types::SmsChannelSubtypeParameters
    SmsOutboundConfig.add_member(:connect_source_phone_number_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'connectSourcePhoneNumberArn', traits: {"smithy.api#required" => {}}))
    SmsOutboundConfig.add_member(:wisdom_template_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'wisdomTemplateArn', traits: {"smithy.api#required" => {}}))
    SmsOutboundConfig.type = Types::SmsOutboundConfig
    SmsOutboundMode.add_member(:agentless, Types::SmsOutboundMode::Agentless, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentlessConfig, location_name: 'agentless'))
    SmsOutboundMode.add_member(:unknown, Types::SmsOutboundMode::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    SmsOutboundMode.type = Types::SmsOutboundMode
    Source.add_member(:customer_profiles_segment_arn, Types::Source::CustomerProfilesSegmentArn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'customerProfilesSegmentArn'))
    Source.add_member(:event_trigger, Types::Source::EventTrigger, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventTrigger, location_name: 'eventTrigger'))
    Source.add_member(:unknown, Types::Source::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    Source.type = Types::Source
    StartCampaignRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartCampaignRequest.type = Types::StartCampaignRequest
    StartInstanceOnboardingJobRequest.add_member(:connect_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'connectInstanceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartInstanceOnboardingJobRequest.add_member(:encryption_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfig, location_name: 'encryptionConfig', traits: {"smithy.api#required" => {}}))
    StartInstanceOnboardingJobRequest.type = Types::StartInstanceOnboardingJobRequest
    StartInstanceOnboardingJobResponse.add_member(:connect_instance_onboarding_job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceOnboardingJobStatus, location_name: 'connectInstanceOnboardingJobStatus'))
    StartInstanceOnboardingJobResponse.type = Types::StartInstanceOnboardingJobResponse
    StopCampaignRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopCampaignRequest.type = Types::StopCampaignRequest
    SuccessfulCampaignStateResponse.add_member(:campaign_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'campaignId'))
    SuccessfulCampaignStateResponse.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignState, location_name: 'state'))
    SuccessfulCampaignStateResponse.type = Types::SuccessfulCampaignStateResponse
    SuccessfulCampaignStateResponseList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SuccessfulCampaignStateResponse)
    SuccessfulProfileOutboundRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken'))
    SuccessfulProfileOutboundRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileOutboundRequestId, location_name: 'id'))
    SuccessfulProfileOutboundRequest.type = Types::SuccessfulProfileOutboundRequest
    SuccessfulProfileOutboundRequestList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SuccessfulProfileOutboundRequest)
    SuccessfulRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken'))
    SuccessfulRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DialRequestId, location_name: 'id'))
    SuccessfulRequest.type = Types::SuccessfulRequest
    SuccessfulRequestList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SuccessfulRequest)
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TelephonyChannelSubtypeConfig.add_member(:capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Capacity, location_name: 'capacity'))
    TelephonyChannelSubtypeConfig.add_member(:connect_queue_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'connectQueueId'))
    TelephonyChannelSubtypeConfig.add_member(:outbound_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TelephonyOutboundMode, location_name: 'outboundMode', traits: {"smithy.api#required" => {}}))
    TelephonyChannelSubtypeConfig.add_member(:default_outbound_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TelephonyOutboundConfig, location_name: 'defaultOutboundConfig', traits: {"smithy.api#required" => {}}))
    TelephonyChannelSubtypeConfig.type = Types::TelephonyChannelSubtypeConfig
    TelephonyChannelSubtypeParameters.add_member(:destination_phone_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationPhoneNumber, location_name: 'destinationPhoneNumber', traits: {"smithy.api#required" => {}}))
    TelephonyChannelSubtypeParameters.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Attributes, location_name: 'attributes', traits: {"smithy.api#required" => {}}))
    TelephonyChannelSubtypeParameters.add_member(:connect_source_phone_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourcePhoneNumber, location_name: 'connectSourcePhoneNumber'))
    TelephonyChannelSubtypeParameters.add_member(:answer_machine_detection_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnswerMachineDetectionConfig, location_name: 'answerMachineDetectionConfig'))
    TelephonyChannelSubtypeParameters.type = Types::TelephonyChannelSubtypeParameters
    TelephonyOutboundConfig.add_member(:connect_contact_flow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContactFlowId, location_name: 'connectContactFlowId', traits: {"smithy.api#required" => {}}))
    TelephonyOutboundConfig.add_member(:connect_source_phone_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourcePhoneNumber, location_name: 'connectSourcePhoneNumber'))
    TelephonyOutboundConfig.add_member(:answer_machine_detection_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnswerMachineDetectionConfig, location_name: 'answerMachineDetectionConfig'))
    TelephonyOutboundConfig.type = Types::TelephonyOutboundConfig
    TelephonyOutboundMode.add_member(:progressive, Types::TelephonyOutboundMode::Progressive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProgressiveConfig, location_name: 'progressive'))
    TelephonyOutboundMode.add_member(:predictive, Types::TelephonyOutboundMode::Predictive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PredictiveConfig, location_name: 'predictive'))
    TelephonyOutboundMode.add_member(:agentless, Types::TelephonyOutboundMode::Agentless, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentlessConfig, location_name: 'agentless'))
    TelephonyOutboundMode.add_member(:unknown, Types::TelephonyOutboundMode::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    TelephonyOutboundMode.type = Types::TelephonyOutboundMode
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:x_amz_error_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XAmazonErrorType, location_name: 'xAmzErrorType', traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    ThrottlingException.type = Types::ThrottlingException
    TimeRange.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Time, location_name: 'startTime', traits: {"smithy.api#required" => {}}))
    TimeRange.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Time, location_name: 'endTime', traits: {"smithy.api#required" => {}}))
    TimeRange.type = Types::TimeRange
    TimeRangeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeRange)
    TimeWindow.add_member(:open_hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpenHours, location_name: 'openHours', traits: {"smithy.api#required" => {}}))
    TimeWindow.add_member(:restricted_periods, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestrictedPeriods, location_name: 'restrictedPeriods'))
    TimeWindow.type = Types::TimeWindow
    UntagResourceRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateCampaignChannelSubtypeConfigRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCampaignChannelSubtypeConfigRequest.add_member(:channel_subtype_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelSubtypeConfig, location_name: 'channelSubtypeConfig', traits: {"smithy.api#required" => {}}))
    UpdateCampaignChannelSubtypeConfigRequest.type = Types::UpdateCampaignChannelSubtypeConfigRequest
    UpdateCampaignCommunicationLimitsRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCampaignCommunicationLimitsRequest.add_member(:communication_limits_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommunicationLimitsConfig, location_name: 'communicationLimitsOverride', traits: {"smithy.api#required" => {}}))
    UpdateCampaignCommunicationLimitsRequest.type = Types::UpdateCampaignCommunicationLimitsRequest
    UpdateCampaignCommunicationTimeRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCampaignCommunicationTimeRequest.add_member(:communication_time_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommunicationTimeConfig, location_name: 'communicationTimeConfig', traits: {"smithy.api#required" => {}}))
    UpdateCampaignCommunicationTimeRequest.type = Types::UpdateCampaignCommunicationTimeRequest
    UpdateCampaignFlowAssociationRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCampaignFlowAssociationRequest.add_member(:connect_campaign_flow_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'connectCampaignFlowArn', traits: {"smithy.api#required" => {}}))
    UpdateCampaignFlowAssociationRequest.type = Types::UpdateCampaignFlowAssociationRequest
    UpdateCampaignNameRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCampaignNameRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    UpdateCampaignNameRequest.type = Types::UpdateCampaignNameRequest
    UpdateCampaignScheduleRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCampaignScheduleRequest.add_member(:schedule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Schedule, location_name: 'schedule', traits: {"smithy.api#required" => {}}))
    UpdateCampaignScheduleRequest.type = Types::UpdateCampaignScheduleRequest
    UpdateCampaignSourceRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCampaignSourceRequest.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#required" => {}}))
    UpdateCampaignSourceRequest.type = Types::UpdateCampaignSourceRequest
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:x_amz_error_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XAmazonErrorType, location_name: 'xAmzErrorType', traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    ValidationException.type = Types::ValidationException

    AmazonConnectCampaignServiceV2 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.connectcampaignsv2#AmazonConnectCampaignServiceV2"
      service.name = "AmazonConnectCampaignServiceV2"
      service.version = "2024-04-23"
      service.traits = {"aws.api#service" => {"sdkId" => "ConnectCampaignsV2", "arnNamespace" => "connect-campaigns", "cloudTrailEventSource" => "connect-campaigns.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "connect-campaigns"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"origin" => "*", "additionalAllowedHeaders" => ["*", "Authorization", "Date", "X-Amz-Date", "X-Amz-Security-Token", "X-Amz-Target", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-errormessage", "x-amzn-trace-id", "x-amz-apigw-id", "date"], "maxAge" => 86400}, "smithy.api#title" => "AmazonConnectCampaignServiceV2"}
      service.add_operation(:create_campaign, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaignsv2#CreateCampaign"
        operation.name = "CreateCampaign"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCampaignRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCampaignResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/campaigns", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_campaign, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaignsv2#DeleteCampaign"
        operation.name = "DeleteCampaign"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCampaignRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/campaigns/{id}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_campaign_channel_subtype_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaignsv2#DeleteCampaignChannelSubtypeConfig"
        operation.name = "DeleteCampaignChannelSubtypeConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCampaignChannelSubtypeConfigRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/campaigns/{id}/channel-subtype-config", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_campaign_communication_limits, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaignsv2#DeleteCampaignCommunicationLimits"
        operation.name = "DeleteCampaignCommunicationLimits"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCampaignCommunicationLimitsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCampaignStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/campaigns/{id}/communication-limits", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_campaign_communication_time, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaignsv2#DeleteCampaignCommunicationTime"
        operation.name = "DeleteCampaignCommunicationTime"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCampaignCommunicationTimeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCampaignStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/campaigns/{id}/communication-time", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_connect_instance_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaignsv2#DeleteConnectInstanceConfig"
        operation.name = "DeleteConnectInstanceConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConnectInstanceConfigRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/connect-instance/{connectInstanceId}/config", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_connect_instance_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaignsv2#DeleteConnectInstanceIntegration"
        operation.name = "DeleteConnectInstanceIntegration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConnectInstanceIntegrationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/connect-instance/{connectInstanceId}/integrations/delete", "method" => "POST"}}
      end)
      service.add_operation(:delete_instance_onboarding_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaignsv2#DeleteInstanceOnboardingJob"
        operation.name = "DeleteInstanceOnboardingJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInstanceOnboardingJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/connect-instance/{connectInstanceId}/onboarding", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_campaign, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaignsv2#DescribeCampaign"
        operation.name = "DescribeCampaign"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCampaignRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCampaignResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/campaigns/{id}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_campaign_state, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaignsv2#GetCampaignState"
        operation.name = "GetCampaignState"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCampaignStateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCampaignStateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/campaigns/{id}/state", "method" => "GET"}}
      end)
      service.add_operation(:get_campaign_state_batch, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaignsv2#GetCampaignStateBatch"
        operation.name = "GetCampaignStateBatch"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCampaignStateBatchRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCampaignStateBatchResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/campaigns-state", "method" => "POST"}}
      end)
      service.add_operation(:get_connect_instance_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaignsv2#GetConnectInstanceConfig"
        operation.name = "GetConnectInstanceConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectInstanceConfigRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectInstanceConfigResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/connect-instance/{connectInstanceId}/config", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_instance_communication_limits, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaignsv2#GetInstanceCommunicationLimits"
        operation.name = "GetInstanceCommunicationLimits"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInstanceCommunicationLimitsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInstanceCommunicationLimitsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/connect-instance/{connectInstanceId}/communication-limits", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_instance_onboarding_job_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaignsv2#GetInstanceOnboardingJobStatus"
        operation.name = "GetInstanceOnboardingJobStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInstanceOnboardingJobStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInstanceOnboardingJobStatusResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/connect-instance/{connectInstanceId}/onboarding", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_campaigns, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaignsv2#ListCampaigns"
        operation.name = "ListCampaigns"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCampaignsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCampaignsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/campaigns-summary", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCampaigns.new
      end)
      service.add_operation(:list_connect_instance_integrations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaignsv2#ListConnectInstanceIntegrations"
        operation.name = "ListConnectInstanceIntegrations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListConnectInstanceIntegrationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListConnectInstanceIntegrationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/connect-instance/{connectInstanceId}/integrations", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListConnectInstanceIntegrations.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaignsv2#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/tags/{arn}", "method" => "GET"}}
      end)
      service.add_operation(:pause_campaign, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaignsv2#PauseCampaign"
        operation.name = "PauseCampaign"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PauseCampaignRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCampaignStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/campaigns/{id}/pause", "method" => "POST"}}
      end)
      service.add_operation(:put_connect_instance_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaignsv2#PutConnectInstanceIntegration"
        operation.name = "PutConnectInstanceIntegration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutConnectInstanceIntegrationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/connect-instance/{connectInstanceId}/integrations", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_instance_communication_limits, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaignsv2#PutInstanceCommunicationLimits"
        operation.name = "PutInstanceCommunicationLimits"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutInstanceCommunicationLimitsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/connect-instance/{connectInstanceId}/communication-limits", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_outbound_request_batch, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaignsv2#PutOutboundRequestBatch"
        operation.name = "PutOutboundRequestBatch"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutOutboundRequestBatchRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutOutboundRequestBatchResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCampaignStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/campaigns/{id}/outbound-requests", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_profile_outbound_request_batch, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaignsv2#PutProfileOutboundRequestBatch"
        operation.name = "PutProfileOutboundRequestBatch"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutProfileOutboundRequestBatchRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutProfileOutboundRequestBatchResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCampaignStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/campaigns/{id}/profile-outbound-requests", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:resume_campaign, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaignsv2#ResumeCampaign"
        operation.name = "ResumeCampaign"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResumeCampaignRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCampaignStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/campaigns/{id}/resume", "method" => "POST"}}
      end)
      service.add_operation(:start_campaign, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaignsv2#StartCampaign"
        operation.name = "StartCampaign"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartCampaignRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCampaignStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/campaigns/{id}/start", "method" => "POST"}}
      end)
      service.add_operation(:start_instance_onboarding_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaignsv2#StartInstanceOnboardingJob"
        operation.name = "StartInstanceOnboardingJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartInstanceOnboardingJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartInstanceOnboardingJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/connect-instance/{connectInstanceId}/onboarding", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:stop_campaign, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaignsv2#StopCampaign"
        operation.name = "StopCampaign"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopCampaignRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCampaignStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/campaigns/{id}/stop", "method" => "POST"}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaignsv2#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/tags/{arn}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaignsv2#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/tags/{arn}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_campaign_channel_subtype_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaignsv2#UpdateCampaignChannelSubtypeConfig"
        operation.name = "UpdateCampaignChannelSubtypeConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCampaignChannelSubtypeConfigRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/campaigns/{id}/channel-subtype-config", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_campaign_communication_limits, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaignsv2#UpdateCampaignCommunicationLimits"
        operation.name = "UpdateCampaignCommunicationLimits"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCampaignCommunicationLimitsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCampaignStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/campaigns/{id}/communication-limits", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_campaign_communication_time, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaignsv2#UpdateCampaignCommunicationTime"
        operation.name = "UpdateCampaignCommunicationTime"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCampaignCommunicationTimeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCampaignStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/campaigns/{id}/communication-time", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_campaign_flow_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaignsv2#UpdateCampaignFlowAssociation"
        operation.name = "UpdateCampaignFlowAssociation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCampaignFlowAssociationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCampaignStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/campaigns/{id}/flow", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_campaign_name, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaignsv2#UpdateCampaignName"
        operation.name = "UpdateCampaignName"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCampaignNameRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/campaigns/{id}/name", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_campaign_schedule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaignsv2#UpdateCampaignSchedule"
        operation.name = "UpdateCampaignSchedule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCampaignScheduleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCampaignStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/campaigns/{id}/schedule", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_campaign_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaignsv2#UpdateCampaignSource"
        operation.name = "UpdateCampaignSource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCampaignSourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCampaignStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v2/campaigns/{id}/source", "method" => "POST"}, "smithy.api#idempotent" => {}}
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
