# frozen_string_literal: true

# This is generated code!

module Aws::ConnectCampaigns
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AgentlessDialerConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#AgentlessDialerConfig', name: 'AgentlessDialerConfig')
    AnswerMachineDetectionConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#AnswerMachineDetectionConfig', name: 'AnswerMachineDetectionConfig')
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaigns#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 20, "max" => 500}, "smithy.api#pattern" => "^arn:.*$"})
    AttributeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaigns#AttributeName', name: 'AttributeName', traits: {"smithy.api#length" => {"min" => 0, "max" => 32767}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-_]+$"})
    AttributeValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaigns#AttributeValue', name: 'AttributeValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 32767}, "smithy.api#pattern" => "^.*$"})
    Attributes = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.connectcampaigns#Attributes', name: 'Attributes', traits: {"smithy.api#sensitive" => {}})
    BandwidthAllocation = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.connectcampaigns#BandwidthAllocation', name: 'BandwidthAllocation', traits: {"smithy.api#range" => {"min" => 0, "max" => 1}})
    Campaign = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#Campaign', name: 'Campaign')
    CampaignArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaigns#CampaignArn', name: 'CampaignArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 500}})
    CampaignFilters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#CampaignFilters', name: 'CampaignFilters')
    CampaignId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaigns#CampaignId', name: 'CampaignId', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\S]*$"})
    CampaignIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcampaigns#CampaignIdList', name: 'CampaignIdList')
    CampaignName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaigns#CampaignName', name: 'CampaignName', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}})
    CampaignState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaigns#CampaignState', name: 'CampaignState', traits: {"smithy.api#enum" => [{"value" => "Initialized", "name" => "INITIALIZED", "documentation" => "Campaign is in initialized state"}, {"value" => "Running", "name" => "RUNNING", "documentation" => "Campaign is in running state"}, {"value" => "Paused", "name" => "PAUSED", "documentation" => "Campaign is in paused state"}, {"value" => "Stopped", "name" => "STOPPED", "documentation" => "Campaign is in stopped state"}, {"value" => "Failed", "name" => "FAILED", "documentation" => "Campaign is in failed state"}]})
    CampaignSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#CampaignSummary', name: 'CampaignSummary')
    CampaignSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcampaigns#CampaignSummaryList', name: 'CampaignSummaryList')
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaigns#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-.]*$"})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContactFlowId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaigns#ContactFlowId', name: 'ContactFlowId', traits: {"smithy.api#length" => {"max" => 500}})
    CreateCampaignInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#CreateCampaignInput', name: 'CreateCampaignInput')
    CreateCampaignOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#CreateCampaignOutput', name: 'CreateCampaignOutput')
    DeleteCampaignInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#DeleteCampaignInput', name: 'DeleteCampaignInput')
    DeleteConnectInstanceConfigInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#DeleteConnectInstanceConfigInput', name: 'DeleteConnectInstanceConfigInput')
    DeleteInstanceOnboardingJobInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#DeleteInstanceOnboardingJobInput', name: 'DeleteInstanceOnboardingJobInput')
    DescribeCampaignInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#DescribeCampaignInput', name: 'DescribeCampaignInput')
    DescribeCampaignOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#DescribeCampaignOutput', name: 'DescribeCampaignOutput')
    DestinationPhoneNumber = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaigns#DestinationPhoneNumber', name: 'DestinationPhoneNumber', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}, "smithy.api#pattern" => "^[\\d\\-+]*$", "smithy.api#sensitive" => {}})
    DialRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#DialRequest', name: 'DialRequest')
    DialRequestId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaigns#DialRequestId', name: 'DialRequestId', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-.]*$"})
    DialRequestList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcampaigns#DialRequestList', name: 'DialRequestList', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    DialerConfig = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.connectcampaigns#DialerConfig', name: 'DialerConfig')
    DialingCapacity = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.connectcampaigns#DialingCapacity', name: 'DialingCapacity', traits: {"smithy.api#range" => {"min" => 0.01, "max" => 1}})
    Enabled = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.connectcampaigns#Enabled', name: 'Enabled', traits: {"smithy.api#default" => false})
    EncryptionConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#EncryptionConfig', name: 'EncryptionConfig')
    EncryptionKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaigns#EncryptionKey', name: 'EncryptionKey', traits: {"smithy.api#length" => {"max" => 500}})
    EncryptionType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaigns#EncryptionType', name: 'EncryptionType', traits: {"smithy.api#enum" => [{"name" => "KMS", "value" => "KMS"}]})
    FailedCampaignStateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#FailedCampaignStateResponse', name: 'FailedCampaignStateResponse')
    FailedCampaignStateResponseList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcampaigns#FailedCampaignStateResponseList', name: 'FailedCampaignStateResponseList', traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    FailedRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#FailedRequest', name: 'FailedRequest')
    FailedRequestList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcampaigns#FailedRequestList', name: 'FailedRequestList', traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    FailureCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaigns#FailureCode', name: 'FailureCode', traits: {"smithy.api#enum" => [{"value" => "InvalidInput", "name" => "INVALID_INPUT", "documentation" => "The request failed to satisfy the constraints specified by the service"}, {"value" => "RequestThrottled", "name" => "REQUEST_THROTTLED", "documentation" => "Request throttled due to large number of pending dial requests"}, {"value" => "UnknownError", "name" => "UNKNOWN_ERROR", "documentation" => "Unexpected error during processing of request"}]})
    GetCampaignStateBatchFailureCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaigns#GetCampaignStateBatchFailureCode', name: 'GetCampaignStateBatchFailureCode', traits: {"smithy.api#enum" => [{"value" => "ResourceNotFound", "name" => "RESOURCE_NOT_FOUND", "documentation" => "The specified resource was not found"}, {"value" => "UnknownError", "name" => "UNKNOWN_ERROR", "documentation" => "Unexpected error during processing of request"}]})
    GetCampaignStateBatchInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#GetCampaignStateBatchInput', name: 'GetCampaignStateBatchInput')
    GetCampaignStateBatchOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#GetCampaignStateBatchOutput', name: 'GetCampaignStateBatchOutput')
    GetCampaignStateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#GetCampaignStateInput', name: 'GetCampaignStateInput')
    GetCampaignStateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#GetCampaignStateOutput', name: 'GetCampaignStateOutput')
    GetConnectInstanceConfigInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#GetConnectInstanceConfigInput', name: 'GetConnectInstanceConfigInput')
    GetConnectInstanceConfigOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#GetConnectInstanceConfigOutput', name: 'GetConnectInstanceConfigOutput')
    GetInstanceOnboardingJobStatusInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#GetInstanceOnboardingJobStatusInput', name: 'GetInstanceOnboardingJobStatusInput')
    GetInstanceOnboardingJobStatusOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#GetInstanceOnboardingJobStatusOutput', name: 'GetInstanceOnboardingJobStatusOutput')
    InstanceConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#InstanceConfig', name: 'InstanceConfig')
    InstanceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaigns#InstanceId', name: 'InstanceId', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-.]*$"})
    InstanceIdFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#InstanceIdFilter', name: 'InstanceIdFilter')
    InstanceIdFilterOperator = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaigns#InstanceIdFilterOperator', name: 'InstanceIdFilterOperator', traits: {"smithy.api#enum" => [{"name" => "EQ", "value" => "Eq", "documentation" => "Equals operator"}]})
    InstanceOnboardingJobFailureCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaigns#InstanceOnboardingJobFailureCode', name: 'InstanceOnboardingJobFailureCode', traits: {"smithy.api#enum" => [{"value" => "EVENT_BRIDGE_ACCESS_DENIED", "name" => "EVENT_BRIDGE_ACCESS_DENIED"}, {"value" => "EVENT_BRIDGE_MANAGED_RULE_LIMIT_EXCEEDED", "name" => "EVENT_BRIDGE_MANAGED_RULE_LIMIT_EXCEEDED"}, {"value" => "IAM_ACCESS_DENIED", "name" => "IAM_ACCESS_DENIED"}, {"value" => "KMS_ACCESS_DENIED", "name" => "KMS_ACCESS_DENIED"}, {"value" => "KMS_KEY_NOT_FOUND", "name" => "KMS_KEY_NOT_FOUND"}, {"value" => "INTERNAL_FAILURE", "name" => "INTERNAL_FAILURE"}]})
    InstanceOnboardingJobStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#InstanceOnboardingJobStatus', name: 'InstanceOnboardingJobStatus')
    InstanceOnboardingJobStatusCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaigns#InstanceOnboardingJobStatusCode', name: 'InstanceOnboardingJobStatusCode', traits: {"smithy.api#enum" => [{"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "SUCCEEDED", "name" => "SUCCEEDED"}, {"value" => "FAILED", "name" => "FAILED"}]})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    InvalidCampaignStateException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#InvalidCampaignStateException', name: 'InvalidCampaignStateException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    InvalidStateException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#InvalidStateException', name: 'InvalidStateException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ListCampaignsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#ListCampaignsInput', name: 'ListCampaignsInput')
    ListCampaignsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#ListCampaignsOutput', name: 'ListCampaignsOutput')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.connectcampaigns#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaigns#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"max" => 1000}})
    OutboundCallConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#OutboundCallConfig', name: 'OutboundCallConfig')
    PauseCampaignInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#PauseCampaignInput', name: 'PauseCampaignInput')
    PredictiveDialerConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#PredictiveDialerConfig', name: 'PredictiveDialerConfig')
    ProgressiveDialerConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#ProgressiveDialerConfig', name: 'ProgressiveDialerConfig')
    PutDialRequestBatchInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#PutDialRequestBatchInput', name: 'PutDialRequestBatchInput')
    PutDialRequestBatchOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#PutDialRequestBatchOutput', name: 'PutDialRequestBatchOutput')
    QueueId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaigns#QueueId', name: 'QueueId', traits: {"smithy.api#length" => {"max" => 500}})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResumeCampaignInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#ResumeCampaignInput', name: 'ResumeCampaignInput')
    ServiceLinkedRoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaigns#ServiceLinkedRoleArn', name: 'ServiceLinkedRoleArn', traits: {"smithy.api#length" => {"max" => 256}})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SourcePhoneNumber = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaigns#SourcePhoneNumber', name: 'SourcePhoneNumber', traits: {"smithy.api#length" => {"max" => 100}})
    StartCampaignInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#StartCampaignInput', name: 'StartCampaignInput')
    StartInstanceOnboardingJobInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#StartInstanceOnboardingJobInput', name: 'StartInstanceOnboardingJobInput')
    StartInstanceOnboardingJobOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#StartInstanceOnboardingJobOutput', name: 'StartInstanceOnboardingJobOutput')
    StopCampaignInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#StopCampaignInput', name: 'StopCampaignInput')
    SuccessfulCampaignStateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#SuccessfulCampaignStateResponse', name: 'SuccessfulCampaignStateResponse')
    SuccessfulCampaignStateResponseList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcampaigns#SuccessfulCampaignStateResponseList', name: 'SuccessfulCampaignStateResponseList', traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    SuccessfulRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#SuccessfulRequest', name: 'SuccessfulRequest')
    SuccessfulRequestList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcampaigns#SuccessfulRequestList', name: 'SuccessfulRequestList', traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaigns#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcampaigns#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.connectcampaigns#TagMap', name: 'TagMap')
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#TagResourceInput', name: 'TagResourceInput')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaigns#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    TimeStamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.connectcampaigns#TimeStamp', name: 'TimeStamp', traits: {"smithy.api#timestampFormat" => "date-time"})
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#UntagResourceInput', name: 'UntagResourceInput')
    UpdateCampaignDialerConfigInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#UpdateCampaignDialerConfigInput', name: 'UpdateCampaignDialerConfigInput')
    UpdateCampaignNameInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#UpdateCampaignNameInput', name: 'UpdateCampaignNameInput')
    UpdateCampaignOutboundCallConfigInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#UpdateCampaignOutboundCallConfigInput', name: 'UpdateCampaignOutboundCallConfigInput')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcampaigns#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    XAmazonErrorType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcampaigns#XAmazonErrorType', name: 'XAmazonErrorType')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.add_member(:x_amz_error_type, Smithy::Schema::Shapes::ShapeRef.new(shape: XAmazonErrorType, location_name: 'xAmzErrorType', traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    AccessDeniedException.type = Types::AccessDeniedException
    AgentlessDialerConfig.add_member(:dialing_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: DialingCapacity, location_name: 'dialingCapacity'))
    AgentlessDialerConfig.type = Types::AgentlessDialerConfig
    AnswerMachineDetectionConfig.add_member(:enable_answer_machine_detection, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'enableAnswerMachineDetection', traits: {"smithy.api#documentation" => "Enable or disable answering machine detection", "smithy.api#required" => {}}))
    AnswerMachineDetectionConfig.add_member(:await_answer_machine_prompt, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'awaitAnswerMachinePrompt', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "Enable or disable await answer machine prompt"}))
    AnswerMachineDetectionConfig.type = Types::AnswerMachineDetectionConfig
    Attributes.key = Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName)
    Attributes.value = Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue)
    Campaign.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    Campaign.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    Campaign.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    Campaign.add_member(:connect_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'connectInstanceId', traits: {"smithy.api#required" => {}}))
    Campaign.add_member(:dialer_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DialerConfig, location_name: 'dialerConfig', traits: {"smithy.api#required" => {}}))
    Campaign.add_member(:outbound_call_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutboundCallConfig, location_name: 'outboundCallConfig', traits: {"smithy.api#required" => {}}))
    Campaign.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    Campaign.type = Types::Campaign
    CampaignFilters.add_member(:instance_id_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceIdFilter, location_name: 'instanceIdFilter'))
    CampaignFilters.type = Types::CampaignFilters
    CampaignIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId)
    CampaignSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    CampaignSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    CampaignSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CampaignSummary.add_member(:connect_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'connectInstanceId', traits: {"smithy.api#required" => {}}))
    CampaignSummary.type = Types::CampaignSummary
    CampaignSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignSummary)
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:x_amz_error_type, Smithy::Schema::Shapes::ShapeRef.new(shape: XAmazonErrorType, location_name: 'xAmzErrorType', traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    ConflictException.type = Types::ConflictException
    CreateCampaignInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateCampaignInput.add_member(:connect_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'connectInstanceId', traits: {"smithy.api#required" => {}}))
    CreateCampaignInput.add_member(:dialer_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DialerConfig, location_name: 'dialerConfig', traits: {"smithy.api#required" => {}}))
    CreateCampaignInput.add_member(:outbound_call_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutboundCallConfig, location_name: 'outboundCallConfig', traits: {"smithy.api#required" => {}}))
    CreateCampaignInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateCampaignInput.type = Types::CreateCampaignInput
    CreateCampaignOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'id'))
    CreateCampaignOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignArn, location_name: 'arn'))
    CreateCampaignOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateCampaignOutput.type = Types::CreateCampaignOutput
    DeleteCampaignInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCampaignInput.type = Types::DeleteCampaignInput
    DeleteConnectInstanceConfigInput.add_member(:connect_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'connectInstanceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConnectInstanceConfigInput.type = Types::DeleteConnectInstanceConfigInput
    DeleteInstanceOnboardingJobInput.add_member(:connect_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'connectInstanceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteInstanceOnboardingJobInput.type = Types::DeleteInstanceOnboardingJobInput
    DescribeCampaignInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeCampaignInput.type = Types::DescribeCampaignInput
    DescribeCampaignOutput.add_member(:campaign, Smithy::Schema::Shapes::ShapeRef.new(shape: Campaign, location_name: 'campaign'))
    DescribeCampaignOutput.type = Types::DescribeCampaignOutput
    DialRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#required" => {}}))
    DialRequest.add_member(:phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationPhoneNumber, location_name: 'phoneNumber', traits: {"smithy.api#required" => {}}))
    DialRequest.add_member(:expiration_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'expirationTime', traits: {"smithy.api#required" => {}}))
    DialRequest.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: Attributes, location_name: 'attributes', traits: {"smithy.api#required" => {}}))
    DialRequest.type = Types::DialRequest
    DialRequestList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DialRequest)
    DialerConfig.add_member(:progressive_dialer_config, Types::DialerConfig::ProgressiveDialerConfig, Smithy::Schema::Shapes::ShapeRef.new(shape: ProgressiveDialerConfig, location_name: 'progressiveDialerConfig'))
    DialerConfig.add_member(:predictive_dialer_config, Types::DialerConfig::PredictiveDialerConfig, Smithy::Schema::Shapes::ShapeRef.new(shape: PredictiveDialerConfig, location_name: 'predictiveDialerConfig'))
    DialerConfig.add_member(:agentless_dialer_config, Types::DialerConfig::AgentlessDialerConfig, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentlessDialerConfig, location_name: 'agentlessDialerConfig'))
    DialerConfig.add_member(:unknown, Types::DialerConfig::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    DialerConfig.type = Types::DialerConfig
    EncryptionConfig.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'enabled', traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    EncryptionConfig.add_member(:encryption_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionType, location_name: 'encryptionType'))
    EncryptionConfig.add_member(:key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKey, location_name: 'keyArn'))
    EncryptionConfig.type = Types::EncryptionConfig
    FailedCampaignStateResponse.add_member(:campaign_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'campaignId'))
    FailedCampaignStateResponse.add_member(:failure_code, Smithy::Schema::Shapes::ShapeRef.new(shape: GetCampaignStateBatchFailureCode, location_name: 'failureCode'))
    FailedCampaignStateResponse.type = Types::FailedCampaignStateResponse
    FailedCampaignStateResponseList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FailedCampaignStateResponse)
    FailedRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken'))
    FailedRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: DialRequestId, location_name: 'id'))
    FailedRequest.add_member(:failure_code, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureCode, location_name: 'failureCode'))
    FailedRequest.type = Types::FailedRequest
    FailedRequestList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FailedRequest)
    GetCampaignStateBatchInput.add_member(:campaign_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignIdList, location_name: 'campaignIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}, "smithy.api#required" => {}}))
    GetCampaignStateBatchInput.type = Types::GetCampaignStateBatchInput
    GetCampaignStateBatchOutput.add_member(:successful_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: SuccessfulCampaignStateResponseList, location_name: 'successfulRequests'))
    GetCampaignStateBatchOutput.add_member(:failed_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedCampaignStateResponseList, location_name: 'failedRequests'))
    GetCampaignStateBatchOutput.type = Types::GetCampaignStateBatchOutput
    GetCampaignStateInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCampaignStateInput.type = Types::GetCampaignStateInput
    GetCampaignStateOutput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignState, location_name: 'state'))
    GetCampaignStateOutput.type = Types::GetCampaignStateOutput
    GetConnectInstanceConfigInput.add_member(:connect_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'connectInstanceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConnectInstanceConfigInput.type = Types::GetConnectInstanceConfigInput
    GetConnectInstanceConfigOutput.add_member(:connect_instance_config, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceConfig, location_name: 'connectInstanceConfig'))
    GetConnectInstanceConfigOutput.type = Types::GetConnectInstanceConfigOutput
    GetInstanceOnboardingJobStatusInput.add_member(:connect_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'connectInstanceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetInstanceOnboardingJobStatusInput.type = Types::GetInstanceOnboardingJobStatusInput
    GetInstanceOnboardingJobStatusOutput.add_member(:connect_instance_onboarding_job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceOnboardingJobStatus, location_name: 'connectInstanceOnboardingJobStatus'))
    GetInstanceOnboardingJobStatusOutput.type = Types::GetInstanceOnboardingJobStatusOutput
    InstanceConfig.add_member(:connect_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'connectInstanceId', traits: {"smithy.api#required" => {}}))
    InstanceConfig.add_member(:service_linked_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleArn, location_name: 'serviceLinkedRoleArn', traits: {"smithy.api#required" => {}}))
    InstanceConfig.add_member(:encryption_config, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfig, location_name: 'encryptionConfig', traits: {"smithy.api#required" => {}}))
    InstanceConfig.type = Types::InstanceConfig
    InstanceIdFilter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'value', traits: {"smithy.api#required" => {}}))
    InstanceIdFilter.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceIdFilterOperator, location_name: 'operator', traits: {"smithy.api#required" => {}}))
    InstanceIdFilter.type = Types::InstanceIdFilter
    InstanceOnboardingJobStatus.add_member(:connect_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'connectInstanceId', traits: {"smithy.api#required" => {}}))
    InstanceOnboardingJobStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceOnboardingJobStatusCode, location_name: 'status', traits: {"smithy.api#required" => {}}))
    InstanceOnboardingJobStatus.add_member(:failure_code, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceOnboardingJobFailureCode, location_name: 'failureCode'))
    InstanceOnboardingJobStatus.type = Types::InstanceOnboardingJobStatus
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:x_amz_error_type, Smithy::Schema::Shapes::ShapeRef.new(shape: XAmazonErrorType, location_name: 'xAmzErrorType', traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    InternalServerException.type = Types::InternalServerException
    InvalidCampaignStateException.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignState, location_name: 'state', traits: {"smithy.api#required" => {}}))
    InvalidCampaignStateException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InvalidCampaignStateException.add_member(:x_amz_error_type, Smithy::Schema::Shapes::ShapeRef.new(shape: XAmazonErrorType, location_name: 'xAmzErrorType', traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    InvalidCampaignStateException.type = Types::InvalidCampaignStateException
    InvalidStateException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InvalidStateException.add_member(:x_amz_error_type, Smithy::Schema::Shapes::ShapeRef.new(shape: XAmazonErrorType, location_name: 'xAmzErrorType', traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    InvalidStateException.type = Types::InvalidStateException
    ListCampaignsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    ListCampaignsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListCampaignsInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignFilters, location_name: 'filters'))
    ListCampaignsInput.type = Types::ListCampaignsInput
    ListCampaignsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListCampaignsOutput.add_member(:campaign_summary_list, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignSummaryList, location_name: 'campaignSummaryList'))
    ListCampaignsOutput.type = Types::ListCampaignsOutput
    ListTagsForResourceInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    OutboundCallConfig.add_member(:connect_contact_flow_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactFlowId, location_name: 'connectContactFlowId', traits: {"smithy.api#required" => {}}))
    OutboundCallConfig.add_member(:connect_source_phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: SourcePhoneNumber, location_name: 'connectSourcePhoneNumber'))
    OutboundCallConfig.add_member(:connect_queue_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueId, location_name: 'connectQueueId'))
    OutboundCallConfig.add_member(:answer_machine_detection_config, Smithy::Schema::Shapes::ShapeRef.new(shape: AnswerMachineDetectionConfig, location_name: 'answerMachineDetectionConfig'))
    OutboundCallConfig.type = Types::OutboundCallConfig
    PauseCampaignInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PauseCampaignInput.type = Types::PauseCampaignInput
    PredictiveDialerConfig.add_member(:bandwidth_allocation, Smithy::Schema::Shapes::ShapeRef.new(shape: BandwidthAllocation, location_name: 'bandwidthAllocation', traits: {"smithy.api#required" => {}}))
    PredictiveDialerConfig.add_member(:dialing_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: DialingCapacity, location_name: 'dialingCapacity'))
    PredictiveDialerConfig.type = Types::PredictiveDialerConfig
    ProgressiveDialerConfig.add_member(:bandwidth_allocation, Smithy::Schema::Shapes::ShapeRef.new(shape: BandwidthAllocation, location_name: 'bandwidthAllocation', traits: {"smithy.api#required" => {}}))
    ProgressiveDialerConfig.add_member(:dialing_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: DialingCapacity, location_name: 'dialingCapacity'))
    ProgressiveDialerConfig.type = Types::ProgressiveDialerConfig
    PutDialRequestBatchInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutDialRequestBatchInput.add_member(:dial_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: DialRequestList, location_name: 'dialRequests', traits: {"smithy.api#required" => {}}))
    PutDialRequestBatchInput.type = Types::PutDialRequestBatchInput
    PutDialRequestBatchOutput.add_member(:successful_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: SuccessfulRequestList, location_name: 'successfulRequests'))
    PutDialRequestBatchOutput.add_member(:failed_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedRequestList, location_name: 'failedRequests'))
    PutDialRequestBatchOutput.type = Types::PutDialRequestBatchOutput
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:x_amz_error_type, Smithy::Schema::Shapes::ShapeRef.new(shape: XAmazonErrorType, location_name: 'xAmzErrorType', traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResumeCampaignInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ResumeCampaignInput.type = Types::ResumeCampaignInput
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:x_amz_error_type, Smithy::Schema::Shapes::ShapeRef.new(shape: XAmazonErrorType, location_name: 'xAmzErrorType', traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    StartCampaignInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartCampaignInput.type = Types::StartCampaignInput
    StartInstanceOnboardingJobInput.add_member(:connect_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'connectInstanceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartInstanceOnboardingJobInput.add_member(:encryption_config, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfig, location_name: 'encryptionConfig', traits: {"smithy.api#required" => {}}))
    StartInstanceOnboardingJobInput.type = Types::StartInstanceOnboardingJobInput
    StartInstanceOnboardingJobOutput.add_member(:connect_instance_onboarding_job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceOnboardingJobStatus, location_name: 'connectInstanceOnboardingJobStatus'))
    StartInstanceOnboardingJobOutput.type = Types::StartInstanceOnboardingJobOutput
    StopCampaignInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopCampaignInput.type = Types::StopCampaignInput
    SuccessfulCampaignStateResponse.add_member(:campaign_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'campaignId'))
    SuccessfulCampaignStateResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignState, location_name: 'state'))
    SuccessfulCampaignStateResponse.type = Types::SuccessfulCampaignStateResponse
    SuccessfulCampaignStateResponseList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SuccessfulCampaignStateResponse)
    SuccessfulRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken'))
    SuccessfulRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: DialRequestId, location_name: 'id'))
    SuccessfulRequest.type = Types::SuccessfulRequest
    SuccessfulRequestList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SuccessfulRequest)
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:x_amz_error_type, Smithy::Schema::Shapes::ShapeRef.new(shape: XAmazonErrorType, location_name: 'xAmzErrorType', traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UpdateCampaignDialerConfigInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCampaignDialerConfigInput.add_member(:dialer_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DialerConfig, location_name: 'dialerConfig', traits: {"smithy.api#required" => {}}))
    UpdateCampaignDialerConfigInput.type = Types::UpdateCampaignDialerConfigInput
    UpdateCampaignNameInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCampaignNameInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    UpdateCampaignNameInput.type = Types::UpdateCampaignNameInput
    UpdateCampaignOutboundCallConfigInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCampaignOutboundCallConfigInput.add_member(:connect_contact_flow_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactFlowId, location_name: 'connectContactFlowId'))
    UpdateCampaignOutboundCallConfigInput.add_member(:connect_source_phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: SourcePhoneNumber, location_name: 'connectSourcePhoneNumber'))
    UpdateCampaignOutboundCallConfigInput.add_member(:answer_machine_detection_config, Smithy::Schema::Shapes::ShapeRef.new(shape: AnswerMachineDetectionConfig, location_name: 'answerMachineDetectionConfig'))
    UpdateCampaignOutboundCallConfigInput.type = Types::UpdateCampaignOutboundCallConfigInput
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:x_amz_error_type, Smithy::Schema::Shapes::ShapeRef.new(shape: XAmazonErrorType, location_name: 'xAmzErrorType', traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    ValidationException.type = Types::ValidationException

    AmazonConnectCampaignService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.connectcampaigns#AmazonConnectCampaignService"
      service.name = "AmazonConnectCampaignService"
      service.version = "2021-01-30"
      service.traits = {"aws.api#service" => {"sdkId" => "ConnectCampaigns", "arnNamespace" => "connect-campaigns", "cloudTrailEventSource" => "connect-campaigns.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "connect-campaigns"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"origin" => "*", "additionalAllowedHeaders" => ["*", "Authorization", "Date", "X-Amz-Date", "X-Amz-Security-Token", "X-Amz-Target", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-errormessage", "x-amzn-trace-id", "x-amz-apigw-id", "date"], "maxAge" => 86400}, "smithy.api#title" => "AmazonConnectCampaignService"}
      service.add_operation(:create_campaign, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaigns#CreateCampaign"
        operation.name = "CreateCampaign"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCampaignInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCampaignOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/campaigns", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_campaign, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaigns#DeleteCampaign"
        operation.name = "DeleteCampaign"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCampaignInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/campaigns/{id}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_connect_instance_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaigns#DeleteConnectInstanceConfig"
        operation.name = "DeleteConnectInstanceConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConnectInstanceConfigInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/connect-instance/{connectInstanceId}/config", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_instance_onboarding_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaigns#DeleteInstanceOnboardingJob"
        operation.name = "DeleteInstanceOnboardingJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInstanceOnboardingJobInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/connect-instance/{connectInstanceId}/onboarding", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_campaign, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaigns#DescribeCampaign"
        operation.name = "DescribeCampaign"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCampaignInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCampaignOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/campaigns/{id}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_campaign_state, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaigns#GetCampaignState"
        operation.name = "GetCampaignState"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCampaignStateInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCampaignStateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/campaigns/{id}/state", "method" => "GET"}}
      end)
      service.add_operation(:get_campaign_state_batch, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaigns#GetCampaignStateBatch"
        operation.name = "GetCampaignStateBatch"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCampaignStateBatchInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCampaignStateBatchOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/campaigns-state", "method" => "POST"}}
      end)
      service.add_operation(:get_connect_instance_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaigns#GetConnectInstanceConfig"
        operation.name = "GetConnectInstanceConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectInstanceConfigInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectInstanceConfigOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/connect-instance/{connectInstanceId}/config", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_instance_onboarding_job_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaigns#GetInstanceOnboardingJobStatus"
        operation.name = "GetInstanceOnboardingJobStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInstanceOnboardingJobStatusInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInstanceOnboardingJobStatusOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/connect-instance/{connectInstanceId}/onboarding", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_campaigns, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaigns#ListCampaigns"
        operation.name = "ListCampaigns"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCampaignsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCampaignsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/campaigns-summary", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCampaigns.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaigns#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{arn}", "method" => "GET"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:pause_campaign, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaigns#PauseCampaign"
        operation.name = "PauseCampaign"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PauseCampaignInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCampaignStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/campaigns/{id}/pause", "method" => "POST"}}
      end)
      service.add_operation(:put_dial_request_batch, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaigns#PutDialRequestBatch"
        operation.name = "PutDialRequestBatch"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutDialRequestBatchInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutDialRequestBatchOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCampaignStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/campaigns/{id}/dial-requests", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:resume_campaign, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaigns#ResumeCampaign"
        operation.name = "ResumeCampaign"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ResumeCampaignInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCampaignStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/campaigns/{id}/resume", "method" => "POST"}}
      end)
      service.add_operation(:start_campaign, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaigns#StartCampaign"
        operation.name = "StartCampaign"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartCampaignInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCampaignStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/campaigns/{id}/start", "method" => "POST"}}
      end)
      service.add_operation(:start_instance_onboarding_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaigns#StartInstanceOnboardingJob"
        operation.name = "StartInstanceOnboardingJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartInstanceOnboardingJobInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartInstanceOnboardingJobOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/connect-instance/{connectInstanceId}/onboarding", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:stop_campaign, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaigns#StopCampaign"
        operation.name = "StopCampaign"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopCampaignInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCampaignStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/campaigns/{id}/stop", "method" => "POST"}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaigns#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{arn}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaigns#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{arn}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_campaign_dialer_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaigns#UpdateCampaignDialerConfig"
        operation.name = "UpdateCampaignDialerConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCampaignDialerConfigInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/campaigns/{id}/dialer-config", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_campaign_name, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaigns#UpdateCampaignName"
        operation.name = "UpdateCampaignName"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCampaignNameInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/campaigns/{id}/name", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_campaign_outbound_call_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcampaigns#UpdateCampaignOutboundCallConfig"
        operation.name = "UpdateCampaignOutboundCallConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCampaignOutboundCallConfigInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/campaigns/{id}/outbound-call-config", "method" => "POST"}, "smithy.api#idempotent" => {}}
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
