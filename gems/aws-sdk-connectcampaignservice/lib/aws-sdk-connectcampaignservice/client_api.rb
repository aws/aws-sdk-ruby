# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ConnectCampaignService
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AnswerMachineDetectionConfig = Shapes::StructureShape.new(name: 'AnswerMachineDetectionConfig')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AttributeName = Shapes::StringShape.new(name: 'AttributeName')
    AttributeValue = Shapes::StringShape.new(name: 'AttributeValue')
    Attributes = Shapes::MapShape.new(name: 'Attributes')
    BandwidthAllocation = Shapes::FloatShape.new(name: 'BandwidthAllocation')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    Campaign = Shapes::StructureShape.new(name: 'Campaign')
    CampaignArn = Shapes::StringShape.new(name: 'CampaignArn')
    CampaignFilters = Shapes::StructureShape.new(name: 'CampaignFilters')
    CampaignId = Shapes::StringShape.new(name: 'CampaignId')
    CampaignName = Shapes::StringShape.new(name: 'CampaignName')
    CampaignState = Shapes::StringShape.new(name: 'CampaignState')
    CampaignSummary = Shapes::StructureShape.new(name: 'CampaignSummary')
    CampaignSummaryList = Shapes::ListShape.new(name: 'CampaignSummaryList')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContactFlowId = Shapes::StringShape.new(name: 'ContactFlowId')
    CreateCampaignRequest = Shapes::StructureShape.new(name: 'CreateCampaignRequest')
    CreateCampaignResponse = Shapes::StructureShape.new(name: 'CreateCampaignResponse')
    DeleteCampaignRequest = Shapes::StructureShape.new(name: 'DeleteCampaignRequest')
    DeleteConnectInstanceConfigRequest = Shapes::StructureShape.new(name: 'DeleteConnectInstanceConfigRequest')
    DeleteInstanceOnboardingJobRequest = Shapes::StructureShape.new(name: 'DeleteInstanceOnboardingJobRequest')
    DescribeCampaignRequest = Shapes::StructureShape.new(name: 'DescribeCampaignRequest')
    DescribeCampaignResponse = Shapes::StructureShape.new(name: 'DescribeCampaignResponse')
    DestinationPhoneNumber = Shapes::StringShape.new(name: 'DestinationPhoneNumber')
    DialRequest = Shapes::StructureShape.new(name: 'DialRequest')
    DialRequestId = Shapes::StringShape.new(name: 'DialRequestId')
    DialRequestList = Shapes::ListShape.new(name: 'DialRequestList')
    DialerConfig = Shapes::UnionShape.new(name: 'DialerConfig')
    Enabled = Shapes::BooleanShape.new(name: 'Enabled')
    EncryptionConfig = Shapes::StructureShape.new(name: 'EncryptionConfig')
    EncryptionKey = Shapes::StringShape.new(name: 'EncryptionKey')
    EncryptionType = Shapes::StringShape.new(name: 'EncryptionType')
    FailedCampaignStateResponse = Shapes::StructureShape.new(name: 'FailedCampaignStateResponse')
    FailedCampaignStateResponseList = Shapes::ListShape.new(name: 'FailedCampaignStateResponseList')
    FailedRequest = Shapes::StructureShape.new(name: 'FailedRequest')
    FailedRequestList = Shapes::ListShape.new(name: 'FailedRequestList')
    FailureCode = Shapes::StringShape.new(name: 'FailureCode')
    GetCampaignStateBatchFailureCode = Shapes::StringShape.new(name: 'GetCampaignStateBatchFailureCode')
    GetCampaignStateBatchRequest = Shapes::StructureShape.new(name: 'GetCampaignStateBatchRequest')
    GetCampaignStateBatchRequestCampaignIdsList = Shapes::ListShape.new(name: 'GetCampaignStateBatchRequestCampaignIdsList')
    GetCampaignStateBatchResponse = Shapes::StructureShape.new(name: 'GetCampaignStateBatchResponse')
    GetCampaignStateRequest = Shapes::StructureShape.new(name: 'GetCampaignStateRequest')
    GetCampaignStateResponse = Shapes::StructureShape.new(name: 'GetCampaignStateResponse')
    GetConnectInstanceConfigRequest = Shapes::StructureShape.new(name: 'GetConnectInstanceConfigRequest')
    GetConnectInstanceConfigResponse = Shapes::StructureShape.new(name: 'GetConnectInstanceConfigResponse')
    GetInstanceOnboardingJobStatusRequest = Shapes::StructureShape.new(name: 'GetInstanceOnboardingJobStatusRequest')
    GetInstanceOnboardingJobStatusResponse = Shapes::StructureShape.new(name: 'GetInstanceOnboardingJobStatusResponse')
    InstanceConfig = Shapes::StructureShape.new(name: 'InstanceConfig')
    InstanceId = Shapes::StringShape.new(name: 'InstanceId')
    InstanceIdFilter = Shapes::StructureShape.new(name: 'InstanceIdFilter')
    InstanceIdFilterOperator = Shapes::StringShape.new(name: 'InstanceIdFilterOperator')
    InstanceOnboardingJobFailureCode = Shapes::StringShape.new(name: 'InstanceOnboardingJobFailureCode')
    InstanceOnboardingJobStatus = Shapes::StructureShape.new(name: 'InstanceOnboardingJobStatus')
    InstanceOnboardingJobStatusCode = Shapes::StringShape.new(name: 'InstanceOnboardingJobStatusCode')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidCampaignStateException = Shapes::StructureShape.new(name: 'InvalidCampaignStateException')
    InvalidStateException = Shapes::StructureShape.new(name: 'InvalidStateException')
    ListCampaignsRequest = Shapes::StructureShape.new(name: 'ListCampaignsRequest')
    ListCampaignsResponse = Shapes::StructureShape.new(name: 'ListCampaignsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OutboundCallConfig = Shapes::StructureShape.new(name: 'OutboundCallConfig')
    PauseCampaignRequest = Shapes::StructureShape.new(name: 'PauseCampaignRequest')
    PredictiveDialerConfig = Shapes::StructureShape.new(name: 'PredictiveDialerConfig')
    ProgressiveDialerConfig = Shapes::StructureShape.new(name: 'ProgressiveDialerConfig')
    PutDialRequestBatchRequest = Shapes::StructureShape.new(name: 'PutDialRequestBatchRequest')
    PutDialRequestBatchResponse = Shapes::StructureShape.new(name: 'PutDialRequestBatchResponse')
    QueueId = Shapes::StringShape.new(name: 'QueueId')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResumeCampaignRequest = Shapes::StructureShape.new(name: 'ResumeCampaignRequest')
    ServiceLinkedRoleArn = Shapes::StringShape.new(name: 'ServiceLinkedRoleArn')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SourcePhoneNumber = Shapes::StringShape.new(name: 'SourcePhoneNumber')
    StartCampaignRequest = Shapes::StructureShape.new(name: 'StartCampaignRequest')
    StartInstanceOnboardingJobRequest = Shapes::StructureShape.new(name: 'StartInstanceOnboardingJobRequest')
    StartInstanceOnboardingJobResponse = Shapes::StructureShape.new(name: 'StartInstanceOnboardingJobResponse')
    StopCampaignRequest = Shapes::StructureShape.new(name: 'StopCampaignRequest')
    String = Shapes::StringShape.new(name: 'String')
    SuccessfulCampaignStateResponse = Shapes::StructureShape.new(name: 'SuccessfulCampaignStateResponse')
    SuccessfulCampaignStateResponseList = Shapes::ListShape.new(name: 'SuccessfulCampaignStateResponseList')
    SuccessfulRequest = Shapes::StructureShape.new(name: 'SuccessfulRequest')
    SuccessfulRequestList = Shapes::ListShape.new(name: 'SuccessfulRequestList')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimeStamp = Shapes::TimestampShape.new(name: 'TimeStamp', timestampFormat: "iso8601")
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateCampaignDialerConfigRequest = Shapes::StructureShape.new(name: 'UpdateCampaignDialerConfigRequest')
    UpdateCampaignNameRequest = Shapes::StructureShape.new(name: 'UpdateCampaignNameRequest')
    UpdateCampaignOutboundCallConfigRequest = Shapes::StructureShape.new(name: 'UpdateCampaignOutboundCallConfigRequest')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    XAmazonErrorType = Shapes::StringShape.new(name: 'XAmazonErrorType')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.add_member(:x_amz_error_type, Shapes::ShapeRef.new(shape: XAmazonErrorType, location: "header", location_name: "x-amzn-ErrorType"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AnswerMachineDetectionConfig.add_member(:enable_answer_machine_detection, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "enableAnswerMachineDetection"))
    AnswerMachineDetectionConfig.struct_class = Types::AnswerMachineDetectionConfig

    Attributes.key = Shapes::ShapeRef.new(shape: AttributeName)
    Attributes.value = Shapes::ShapeRef.new(shape: AttributeValue)

    Campaign.add_member(:arn, Shapes::ShapeRef.new(shape: CampaignArn, required: true, location_name: "arn"))
    Campaign.add_member(:connect_instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "connectInstanceId"))
    Campaign.add_member(:dialer_config, Shapes::ShapeRef.new(shape: DialerConfig, required: true, location_name: "dialerConfig"))
    Campaign.add_member(:id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location_name: "id"))
    Campaign.add_member(:name, Shapes::ShapeRef.new(shape: CampaignName, required: true, location_name: "name"))
    Campaign.add_member(:outbound_call_config, Shapes::ShapeRef.new(shape: OutboundCallConfig, required: true, location_name: "outboundCallConfig"))
    Campaign.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    Campaign.struct_class = Types::Campaign

    CampaignFilters.add_member(:instance_id_filter, Shapes::ShapeRef.new(shape: InstanceIdFilter, location_name: "instanceIdFilter"))
    CampaignFilters.struct_class = Types::CampaignFilters

    CampaignSummary.add_member(:arn, Shapes::ShapeRef.new(shape: CampaignArn, required: true, location_name: "arn"))
    CampaignSummary.add_member(:connect_instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "connectInstanceId"))
    CampaignSummary.add_member(:id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location_name: "id"))
    CampaignSummary.add_member(:name, Shapes::ShapeRef.new(shape: CampaignName, required: true, location_name: "name"))
    CampaignSummary.struct_class = Types::CampaignSummary

    CampaignSummaryList.member = Shapes::ShapeRef.new(shape: CampaignSummary)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:x_amz_error_type, Shapes::ShapeRef.new(shape: XAmazonErrorType, location: "header", location_name: "x-amzn-ErrorType"))
    ConflictException.struct_class = Types::ConflictException

    CreateCampaignRequest.add_member(:connect_instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "connectInstanceId"))
    CreateCampaignRequest.add_member(:dialer_config, Shapes::ShapeRef.new(shape: DialerConfig, required: true, location_name: "dialerConfig"))
    CreateCampaignRequest.add_member(:name, Shapes::ShapeRef.new(shape: CampaignName, required: true, location_name: "name"))
    CreateCampaignRequest.add_member(:outbound_call_config, Shapes::ShapeRef.new(shape: OutboundCallConfig, required: true, location_name: "outboundCallConfig"))
    CreateCampaignRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateCampaignRequest.struct_class = Types::CreateCampaignRequest

    CreateCampaignResponse.add_member(:arn, Shapes::ShapeRef.new(shape: CampaignArn, location_name: "arn"))
    CreateCampaignResponse.add_member(:id, Shapes::ShapeRef.new(shape: CampaignId, location_name: "id"))
    CreateCampaignResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateCampaignResponse.struct_class = Types::CreateCampaignResponse

    DeleteCampaignRequest.add_member(:id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location: "uri", location_name: "id"))
    DeleteCampaignRequest.struct_class = Types::DeleteCampaignRequest

    DeleteConnectInstanceConfigRequest.add_member(:connect_instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "connectInstanceId"))
    DeleteConnectInstanceConfigRequest.struct_class = Types::DeleteConnectInstanceConfigRequest

    DeleteInstanceOnboardingJobRequest.add_member(:connect_instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "connectInstanceId"))
    DeleteInstanceOnboardingJobRequest.struct_class = Types::DeleteInstanceOnboardingJobRequest

    DescribeCampaignRequest.add_member(:id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location: "uri", location_name: "id"))
    DescribeCampaignRequest.struct_class = Types::DescribeCampaignRequest

    DescribeCampaignResponse.add_member(:campaign, Shapes::ShapeRef.new(shape: Campaign, location_name: "campaign"))
    DescribeCampaignResponse.struct_class = Types::DescribeCampaignResponse

    DialRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, required: true, location_name: "attributes"))
    DialRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken"))
    DialRequest.add_member(:expiration_time, Shapes::ShapeRef.new(shape: TimeStamp, required: true, location_name: "expirationTime"))
    DialRequest.add_member(:phone_number, Shapes::ShapeRef.new(shape: DestinationPhoneNumber, required: true, location_name: "phoneNumber"))
    DialRequest.struct_class = Types::DialRequest

    DialRequestList.member = Shapes::ShapeRef.new(shape: DialRequest)

    DialerConfig.add_member(:predictive_dialer_config, Shapes::ShapeRef.new(shape: PredictiveDialerConfig, location_name: "predictiveDialerConfig"))
    DialerConfig.add_member(:progressive_dialer_config, Shapes::ShapeRef.new(shape: ProgressiveDialerConfig, location_name: "progressiveDialerConfig"))
    DialerConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    DialerConfig.add_member_subclass(:predictive_dialer_config, Types::DialerConfig::PredictiveDialerConfig)
    DialerConfig.add_member_subclass(:progressive_dialer_config, Types::DialerConfig::ProgressiveDialerConfig)
    DialerConfig.add_member_subclass(:unknown, Types::DialerConfig::Unknown)
    DialerConfig.struct_class = Types::DialerConfig

    EncryptionConfig.add_member(:enabled, Shapes::ShapeRef.new(shape: Enabled, required: true, location_name: "enabled"))
    EncryptionConfig.add_member(:encryption_type, Shapes::ShapeRef.new(shape: EncryptionType, location_name: "encryptionType"))
    EncryptionConfig.add_member(:key_arn, Shapes::ShapeRef.new(shape: EncryptionKey, location_name: "keyArn"))
    EncryptionConfig.struct_class = Types::EncryptionConfig

    FailedCampaignStateResponse.add_member(:campaign_id, Shapes::ShapeRef.new(shape: CampaignId, location_name: "campaignId"))
    FailedCampaignStateResponse.add_member(:failure_code, Shapes::ShapeRef.new(shape: GetCampaignStateBatchFailureCode, location_name: "failureCode"))
    FailedCampaignStateResponse.struct_class = Types::FailedCampaignStateResponse

    FailedCampaignStateResponseList.member = Shapes::ShapeRef.new(shape: FailedCampaignStateResponse)

    FailedRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    FailedRequest.add_member(:failure_code, Shapes::ShapeRef.new(shape: FailureCode, location_name: "failureCode"))
    FailedRequest.add_member(:id, Shapes::ShapeRef.new(shape: DialRequestId, location_name: "id"))
    FailedRequest.struct_class = Types::FailedRequest

    FailedRequestList.member = Shapes::ShapeRef.new(shape: FailedRequest)

    GetCampaignStateBatchRequest.add_member(:campaign_ids, Shapes::ShapeRef.new(shape: GetCampaignStateBatchRequestCampaignIdsList, required: true, location_name: "campaignIds"))
    GetCampaignStateBatchRequest.struct_class = Types::GetCampaignStateBatchRequest

    GetCampaignStateBatchRequestCampaignIdsList.member = Shapes::ShapeRef.new(shape: CampaignId)

    GetCampaignStateBatchResponse.add_member(:failed_requests, Shapes::ShapeRef.new(shape: FailedCampaignStateResponseList, location_name: "failedRequests"))
    GetCampaignStateBatchResponse.add_member(:successful_requests, Shapes::ShapeRef.new(shape: SuccessfulCampaignStateResponseList, location_name: "successfulRequests"))
    GetCampaignStateBatchResponse.struct_class = Types::GetCampaignStateBatchResponse

    GetCampaignStateRequest.add_member(:id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location: "uri", location_name: "id"))
    GetCampaignStateRequest.struct_class = Types::GetCampaignStateRequest

    GetCampaignStateResponse.add_member(:state, Shapes::ShapeRef.new(shape: CampaignState, location_name: "state"))
    GetCampaignStateResponse.struct_class = Types::GetCampaignStateResponse

    GetConnectInstanceConfigRequest.add_member(:connect_instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "connectInstanceId"))
    GetConnectInstanceConfigRequest.struct_class = Types::GetConnectInstanceConfigRequest

    GetConnectInstanceConfigResponse.add_member(:connect_instance_config, Shapes::ShapeRef.new(shape: InstanceConfig, location_name: "connectInstanceConfig"))
    GetConnectInstanceConfigResponse.struct_class = Types::GetConnectInstanceConfigResponse

    GetInstanceOnboardingJobStatusRequest.add_member(:connect_instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "connectInstanceId"))
    GetInstanceOnboardingJobStatusRequest.struct_class = Types::GetInstanceOnboardingJobStatusRequest

    GetInstanceOnboardingJobStatusResponse.add_member(:connect_instance_onboarding_job_status, Shapes::ShapeRef.new(shape: InstanceOnboardingJobStatus, location_name: "connectInstanceOnboardingJobStatus"))
    GetInstanceOnboardingJobStatusResponse.struct_class = Types::GetInstanceOnboardingJobStatusResponse

    InstanceConfig.add_member(:connect_instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "connectInstanceId"))
    InstanceConfig.add_member(:encryption_config, Shapes::ShapeRef.new(shape: EncryptionConfig, required: true, location_name: "encryptionConfig"))
    InstanceConfig.add_member(:service_linked_role_arn, Shapes::ShapeRef.new(shape: ServiceLinkedRoleArn, required: true, location_name: "serviceLinkedRoleArn"))
    InstanceConfig.struct_class = Types::InstanceConfig

    InstanceIdFilter.add_member(:operator, Shapes::ShapeRef.new(shape: InstanceIdFilterOperator, required: true, location_name: "operator"))
    InstanceIdFilter.add_member(:value, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "value"))
    InstanceIdFilter.struct_class = Types::InstanceIdFilter

    InstanceOnboardingJobStatus.add_member(:connect_instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "connectInstanceId"))
    InstanceOnboardingJobStatus.add_member(:failure_code, Shapes::ShapeRef.new(shape: InstanceOnboardingJobFailureCode, location_name: "failureCode"))
    InstanceOnboardingJobStatus.add_member(:status, Shapes::ShapeRef.new(shape: InstanceOnboardingJobStatusCode, required: true, location_name: "status"))
    InstanceOnboardingJobStatus.struct_class = Types::InstanceOnboardingJobStatus

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.add_member(:x_amz_error_type, Shapes::ShapeRef.new(shape: XAmazonErrorType, location: "header", location_name: "x-amzn-ErrorType"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidCampaignStateException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InvalidCampaignStateException.add_member(:state, Shapes::ShapeRef.new(shape: CampaignState, required: true, location_name: "state"))
    InvalidCampaignStateException.add_member(:x_amz_error_type, Shapes::ShapeRef.new(shape: XAmazonErrorType, location: "header", location_name: "x-amzn-ErrorType"))
    InvalidCampaignStateException.struct_class = Types::InvalidCampaignStateException

    InvalidStateException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InvalidStateException.add_member(:x_amz_error_type, Shapes::ShapeRef.new(shape: XAmazonErrorType, location: "header", location_name: "x-amzn-ErrorType"))
    InvalidStateException.struct_class = Types::InvalidStateException

    ListCampaignsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: CampaignFilters, location_name: "filters"))
    ListCampaignsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListCampaignsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCampaignsRequest.struct_class = Types::ListCampaignsRequest

    ListCampaignsResponse.add_member(:campaign_summary_list, Shapes::ShapeRef.new(shape: CampaignSummaryList, location_name: "campaignSummaryList"))
    ListCampaignsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCampaignsResponse.struct_class = Types::ListCampaignsResponse

    ListTagsForResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "arn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    OutboundCallConfig.add_member(:answer_machine_detection_config, Shapes::ShapeRef.new(shape: AnswerMachineDetectionConfig, location_name: "answerMachineDetectionConfig"))
    OutboundCallConfig.add_member(:connect_contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, required: true, location_name: "connectContactFlowId"))
    OutboundCallConfig.add_member(:connect_queue_id, Shapes::ShapeRef.new(shape: QueueId, required: true, location_name: "connectQueueId"))
    OutboundCallConfig.add_member(:connect_source_phone_number, Shapes::ShapeRef.new(shape: SourcePhoneNumber, location_name: "connectSourcePhoneNumber"))
    OutboundCallConfig.struct_class = Types::OutboundCallConfig

    PauseCampaignRequest.add_member(:id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location: "uri", location_name: "id"))
    PauseCampaignRequest.struct_class = Types::PauseCampaignRequest

    PredictiveDialerConfig.add_member(:bandwidth_allocation, Shapes::ShapeRef.new(shape: BandwidthAllocation, required: true, location_name: "bandwidthAllocation"))
    PredictiveDialerConfig.struct_class = Types::PredictiveDialerConfig

    ProgressiveDialerConfig.add_member(:bandwidth_allocation, Shapes::ShapeRef.new(shape: BandwidthAllocation, required: true, location_name: "bandwidthAllocation"))
    ProgressiveDialerConfig.struct_class = Types::ProgressiveDialerConfig

    PutDialRequestBatchRequest.add_member(:dial_requests, Shapes::ShapeRef.new(shape: DialRequestList, required: true, location_name: "dialRequests"))
    PutDialRequestBatchRequest.add_member(:id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location: "uri", location_name: "id"))
    PutDialRequestBatchRequest.struct_class = Types::PutDialRequestBatchRequest

    PutDialRequestBatchResponse.add_member(:failed_requests, Shapes::ShapeRef.new(shape: FailedRequestList, location_name: "failedRequests"))
    PutDialRequestBatchResponse.add_member(:successful_requests, Shapes::ShapeRef.new(shape: SuccessfulRequestList, location_name: "successfulRequests"))
    PutDialRequestBatchResponse.struct_class = Types::PutDialRequestBatchResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:x_amz_error_type, Shapes::ShapeRef.new(shape: XAmazonErrorType, location: "header", location_name: "x-amzn-ErrorType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResumeCampaignRequest.add_member(:id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location: "uri", location_name: "id"))
    ResumeCampaignRequest.struct_class = Types::ResumeCampaignRequest

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:x_amz_error_type, Shapes::ShapeRef.new(shape: XAmazonErrorType, location: "header", location_name: "x-amzn-ErrorType"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StartCampaignRequest.add_member(:id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location: "uri", location_name: "id"))
    StartCampaignRequest.struct_class = Types::StartCampaignRequest

    StartInstanceOnboardingJobRequest.add_member(:connect_instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "connectInstanceId"))
    StartInstanceOnboardingJobRequest.add_member(:encryption_config, Shapes::ShapeRef.new(shape: EncryptionConfig, required: true, location_name: "encryptionConfig"))
    StartInstanceOnboardingJobRequest.struct_class = Types::StartInstanceOnboardingJobRequest

    StartInstanceOnboardingJobResponse.add_member(:connect_instance_onboarding_job_status, Shapes::ShapeRef.new(shape: InstanceOnboardingJobStatus, location_name: "connectInstanceOnboardingJobStatus"))
    StartInstanceOnboardingJobResponse.struct_class = Types::StartInstanceOnboardingJobResponse

    StopCampaignRequest.add_member(:id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location: "uri", location_name: "id"))
    StopCampaignRequest.struct_class = Types::StopCampaignRequest

    SuccessfulCampaignStateResponse.add_member(:campaign_id, Shapes::ShapeRef.new(shape: CampaignId, location_name: "campaignId"))
    SuccessfulCampaignStateResponse.add_member(:state, Shapes::ShapeRef.new(shape: CampaignState, location_name: "state"))
    SuccessfulCampaignStateResponse.struct_class = Types::SuccessfulCampaignStateResponse

    SuccessfulCampaignStateResponseList.member = Shapes::ShapeRef.new(shape: SuccessfulCampaignStateResponse)

    SuccessfulRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    SuccessfulRequest.add_member(:id, Shapes::ShapeRef.new(shape: DialRequestId, location_name: "id"))
    SuccessfulRequest.struct_class = Types::SuccessfulRequest

    SuccessfulRequestList.member = Shapes::ShapeRef.new(shape: SuccessfulRequest)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "arn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:x_amz_error_type, Shapes::ShapeRef.new(shape: XAmazonErrorType, location: "header", location_name: "x-amzn-ErrorType"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "arn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateCampaignDialerConfigRequest.add_member(:dialer_config, Shapes::ShapeRef.new(shape: DialerConfig, required: true, location_name: "dialerConfig"))
    UpdateCampaignDialerConfigRequest.add_member(:id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location: "uri", location_name: "id"))
    UpdateCampaignDialerConfigRequest.struct_class = Types::UpdateCampaignDialerConfigRequest

    UpdateCampaignNameRequest.add_member(:id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location: "uri", location_name: "id"))
    UpdateCampaignNameRequest.add_member(:name, Shapes::ShapeRef.new(shape: CampaignName, required: true, location_name: "name"))
    UpdateCampaignNameRequest.struct_class = Types::UpdateCampaignNameRequest

    UpdateCampaignOutboundCallConfigRequest.add_member(:answer_machine_detection_config, Shapes::ShapeRef.new(shape: AnswerMachineDetectionConfig, location_name: "answerMachineDetectionConfig"))
    UpdateCampaignOutboundCallConfigRequest.add_member(:connect_contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, location_name: "connectContactFlowId"))
    UpdateCampaignOutboundCallConfigRequest.add_member(:connect_source_phone_number, Shapes::ShapeRef.new(shape: SourcePhoneNumber, location_name: "connectSourcePhoneNumber"))
    UpdateCampaignOutboundCallConfigRequest.add_member(:id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location: "uri", location_name: "id"))
    UpdateCampaignOutboundCallConfigRequest.struct_class = Types::UpdateCampaignOutboundCallConfigRequest

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:x_amz_error_type, Shapes::ShapeRef.new(shape: XAmazonErrorType, location: "header", location_name: "x-amzn-ErrorType"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-01-30"

      api.metadata = {
        "apiVersion" => "2021-01-30",
        "endpointPrefix" => "connect-campaigns",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AmazonConnectCampaignService",
        "serviceId" => "ConnectCampaigns",
        "signatureVersion" => "v4",
        "signingName" => "connect-campaigns",
        "uid" => "connectcampaigns-2021-01-30",
      }

      api.add_operation(:create_campaign, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCampaign"
        o.http_method = "PUT"
        o.http_request_uri = "/campaigns"
        o.input = Shapes::ShapeRef.new(shape: CreateCampaignRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCampaignResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_campaign, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCampaign"
        o.http_method = "DELETE"
        o.http_request_uri = "/campaigns/{id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteCampaignRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_connect_instance_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConnectInstanceConfig"
        o.http_method = "DELETE"
        o.http_request_uri = "/connect-instance/{connectInstanceId}/config"
        o.input = Shapes::ShapeRef.new(shape: DeleteConnectInstanceConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_instance_onboarding_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInstanceOnboardingJob"
        o.http_method = "DELETE"
        o.http_request_uri = "/connect-instance/{connectInstanceId}/onboarding"
        o.input = Shapes::ShapeRef.new(shape: DeleteInstanceOnboardingJobRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
      end)

      api.add_operation(:describe_campaign, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCampaign"
        o.http_method = "GET"
        o.http_request_uri = "/campaigns/{id}"
        o.input = Shapes::ShapeRef.new(shape: DescribeCampaignRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeCampaignResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_campaign_state, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCampaignState"
        o.http_method = "GET"
        o.http_request_uri = "/campaigns/{id}/state"
        o.input = Shapes::ShapeRef.new(shape: GetCampaignStateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCampaignStateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_campaign_state_batch, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCampaignStateBatch"
        o.http_method = "POST"
        o.http_request_uri = "/campaigns-state"
        o.input = Shapes::ShapeRef.new(shape: GetCampaignStateBatchRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCampaignStateBatchResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_connect_instance_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConnectInstanceConfig"
        o.http_method = "GET"
        o.http_request_uri = "/connect-instance/{connectInstanceId}/config"
        o.input = Shapes::ShapeRef.new(shape: GetConnectInstanceConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConnectInstanceConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_instance_onboarding_job_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInstanceOnboardingJobStatus"
        o.http_method = "GET"
        o.http_request_uri = "/connect-instance/{connectInstanceId}/onboarding"
        o.input = Shapes::ShapeRef.new(shape: GetInstanceOnboardingJobStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInstanceOnboardingJobStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_campaigns, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCampaigns"
        o.http_method = "POST"
        o.http_request_uri = "/campaigns-summary"
        o.input = Shapes::ShapeRef.new(shape: ListCampaignsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCampaignsResponse)
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
        o.http_request_uri = "/tags/{arn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:pause_campaign, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PauseCampaign"
        o.http_method = "POST"
        o.http_request_uri = "/campaigns/{id}/pause"
        o.input = Shapes::ShapeRef.new(shape: PauseCampaignRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCampaignStateException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:put_dial_request_batch, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutDialRequestBatch"
        o.http_method = "PUT"
        o.http_request_uri = "/campaigns/{id}/dial-requests"
        o.input = Shapes::ShapeRef.new(shape: PutDialRequestBatchRequest)
        o.output = Shapes::ShapeRef.new(shape: PutDialRequestBatchResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCampaignStateException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:resume_campaign, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResumeCampaign"
        o.http_method = "POST"
        o.http_request_uri = "/campaigns/{id}/resume"
        o.input = Shapes::ShapeRef.new(shape: ResumeCampaignRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCampaignStateException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:start_campaign, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartCampaign"
        o.http_method = "POST"
        o.http_request_uri = "/campaigns/{id}/start"
        o.input = Shapes::ShapeRef.new(shape: StartCampaignRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCampaignStateException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:start_instance_onboarding_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartInstanceOnboardingJob"
        o.http_method = "PUT"
        o.http_request_uri = "/connect-instance/{connectInstanceId}/onboarding"
        o.input = Shapes::ShapeRef.new(shape: StartInstanceOnboardingJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartInstanceOnboardingJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:stop_campaign, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopCampaign"
        o.http_method = "POST"
        o.http_request_uri = "/campaigns/{id}/stop"
        o.input = Shapes::ShapeRef.new(shape: StopCampaignRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCampaignStateException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{arn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{arn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_campaign_dialer_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCampaignDialerConfig"
        o.http_method = "POST"
        o.http_request_uri = "/campaigns/{id}/dialer-config"
        o.input = Shapes::ShapeRef.new(shape: UpdateCampaignDialerConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_campaign_name, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCampaignName"
        o.http_method = "POST"
        o.http_request_uri = "/campaigns/{id}/name"
        o.input = Shapes::ShapeRef.new(shape: UpdateCampaignNameRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_campaign_outbound_call_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCampaignOutboundCallConfig"
        o.http_method = "POST"
        o.http_request_uri = "/campaigns/{id}/outbound-call-config"
        o.input = Shapes::ShapeRef.new(shape: UpdateCampaignOutboundCallConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end
