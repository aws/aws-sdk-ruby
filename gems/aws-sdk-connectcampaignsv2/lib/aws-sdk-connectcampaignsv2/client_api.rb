# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ConnectCampaignsV2
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AgentAction = Shapes::StringShape.new(name: 'AgentAction')
    AgentActions = Shapes::ListShape.new(name: 'AgentActions')
    AgentlessConfig = Shapes::StructureShape.new(name: 'AgentlessConfig')
    AnswerMachineDetectionConfig = Shapes::StructureShape.new(name: 'AnswerMachineDetectionConfig')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AttributeName = Shapes::StringShape.new(name: 'AttributeName')
    AttributeValue = Shapes::StringShape.new(name: 'AttributeValue')
    Attributes = Shapes::MapShape.new(name: 'Attributes')
    BandwidthAllocation = Shapes::FloatShape.new(name: 'BandwidthAllocation')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    Campaign = Shapes::StructureShape.new(name: 'Campaign')
    CampaignArn = Shapes::StringShape.new(name: 'CampaignArn')
    CampaignDeletionPolicy = Shapes::StringShape.new(name: 'CampaignDeletionPolicy')
    CampaignFilters = Shapes::StructureShape.new(name: 'CampaignFilters')
    CampaignId = Shapes::StringShape.new(name: 'CampaignId')
    CampaignName = Shapes::StringShape.new(name: 'CampaignName')
    CampaignState = Shapes::StringShape.new(name: 'CampaignState')
    CampaignSummary = Shapes::StructureShape.new(name: 'CampaignSummary')
    CampaignSummaryList = Shapes::ListShape.new(name: 'CampaignSummaryList')
    Capacity = Shapes::FloatShape.new(name: 'Capacity')
    ChannelSubtype = Shapes::StringShape.new(name: 'ChannelSubtype')
    ChannelSubtypeConfig = Shapes::StructureShape.new(name: 'ChannelSubtypeConfig')
    ChannelSubtypeList = Shapes::ListShape.new(name: 'ChannelSubtypeList')
    ChannelSubtypeParameters = Shapes::UnionShape.new(name: 'ChannelSubtypeParameters')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CommunicationLimit = Shapes::StructureShape.new(name: 'CommunicationLimit')
    CommunicationLimitFrequencyInteger = Shapes::IntegerShape.new(name: 'CommunicationLimitFrequencyInteger')
    CommunicationLimitList = Shapes::ListShape.new(name: 'CommunicationLimitList')
    CommunicationLimitMaxCountPerRecipientInteger = Shapes::IntegerShape.new(name: 'CommunicationLimitMaxCountPerRecipientInteger')
    CommunicationLimitTimeUnit = Shapes::StringShape.new(name: 'CommunicationLimitTimeUnit')
    CommunicationLimits = Shapes::UnionShape.new(name: 'CommunicationLimits')
    CommunicationLimitsConfig = Shapes::StructureShape.new(name: 'CommunicationLimitsConfig')
    CommunicationLimitsConfigType = Shapes::StringShape.new(name: 'CommunicationLimitsConfigType')
    CommunicationTimeConfig = Shapes::StructureShape.new(name: 'CommunicationTimeConfig')
    CommunicationTimeConfigType = Shapes::StringShape.new(name: 'CommunicationTimeConfigType')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContactFlowId = Shapes::StringShape.new(name: 'ContactFlowId')
    CreateCampaignRequest = Shapes::StructureShape.new(name: 'CreateCampaignRequest')
    CreateCampaignResponse = Shapes::StructureShape.new(name: 'CreateCampaignResponse')
    CustomerProfilesIntegrationConfig = Shapes::StructureShape.new(name: 'CustomerProfilesIntegrationConfig')
    CustomerProfilesIntegrationIdentifier = Shapes::StructureShape.new(name: 'CustomerProfilesIntegrationIdentifier')
    CustomerProfilesIntegrationSummary = Shapes::StructureShape.new(name: 'CustomerProfilesIntegrationSummary')
    DailyHours = Shapes::MapShape.new(name: 'DailyHours')
    DayOfWeek = Shapes::StringShape.new(name: 'DayOfWeek')
    DeleteCampaignChannelSubtypeConfigRequest = Shapes::StructureShape.new(name: 'DeleteCampaignChannelSubtypeConfigRequest')
    DeleteCampaignCommunicationLimitsRequest = Shapes::StructureShape.new(name: 'DeleteCampaignCommunicationLimitsRequest')
    DeleteCampaignCommunicationTimeRequest = Shapes::StructureShape.new(name: 'DeleteCampaignCommunicationTimeRequest')
    DeleteCampaignRequest = Shapes::StructureShape.new(name: 'DeleteCampaignRequest')
    DeleteConnectInstanceConfigRequest = Shapes::StructureShape.new(name: 'DeleteConnectInstanceConfigRequest')
    DeleteConnectInstanceIntegrationRequest = Shapes::StructureShape.new(name: 'DeleteConnectInstanceIntegrationRequest')
    DeleteInstanceOnboardingJobRequest = Shapes::StructureShape.new(name: 'DeleteInstanceOnboardingJobRequest')
    DescribeCampaignRequest = Shapes::StructureShape.new(name: 'DescribeCampaignRequest')
    DescribeCampaignResponse = Shapes::StructureShape.new(name: 'DescribeCampaignResponse')
    DestinationPhoneNumber = Shapes::StringShape.new(name: 'DestinationPhoneNumber')
    DialRequestId = Shapes::StringShape.new(name: 'DialRequestId')
    EmailAddress = Shapes::StringShape.new(name: 'EmailAddress')
    EmailChannelSubtypeConfig = Shapes::StructureShape.new(name: 'EmailChannelSubtypeConfig')
    EmailChannelSubtypeParameters = Shapes::StructureShape.new(name: 'EmailChannelSubtypeParameters')
    EmailDisplayName = Shapes::StringShape.new(name: 'EmailDisplayName')
    EmailOutboundConfig = Shapes::StructureShape.new(name: 'EmailOutboundConfig')
    EmailOutboundMode = Shapes::UnionShape.new(name: 'EmailOutboundMode')
    Enabled = Shapes::BooleanShape.new(name: 'Enabled')
    EncryptionConfig = Shapes::StructureShape.new(name: 'EncryptionConfig')
    EncryptionKey = Shapes::StringShape.new(name: 'EncryptionKey')
    EncryptionType = Shapes::StringShape.new(name: 'EncryptionType')
    EventTrigger = Shapes::StructureShape.new(name: 'EventTrigger')
    EventType = Shapes::StringShape.new(name: 'EventType')
    ExternalCampaignType = Shapes::StringShape.new(name: 'ExternalCampaignType')
    FailedCampaignStateResponse = Shapes::StructureShape.new(name: 'FailedCampaignStateResponse')
    FailedCampaignStateResponseList = Shapes::ListShape.new(name: 'FailedCampaignStateResponseList')
    FailedProfileOutboundRequest = Shapes::StructureShape.new(name: 'FailedProfileOutboundRequest')
    FailedProfileOutboundRequestList = Shapes::ListShape.new(name: 'FailedProfileOutboundRequestList')
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
    GetInstanceCommunicationLimitsRequest = Shapes::StructureShape.new(name: 'GetInstanceCommunicationLimitsRequest')
    GetInstanceCommunicationLimitsResponse = Shapes::StructureShape.new(name: 'GetInstanceCommunicationLimitsResponse')
    GetInstanceOnboardingJobStatusRequest = Shapes::StructureShape.new(name: 'GetInstanceOnboardingJobStatusRequest')
    GetInstanceOnboardingJobStatusResponse = Shapes::StructureShape.new(name: 'GetInstanceOnboardingJobStatusResponse')
    InstanceCommunicationLimitsConfig = Shapes::StructureShape.new(name: 'InstanceCommunicationLimitsConfig')
    InstanceConfig = Shapes::StructureShape.new(name: 'InstanceConfig')
    InstanceId = Shapes::StringShape.new(name: 'InstanceId')
    InstanceIdFilter = Shapes::StructureShape.new(name: 'InstanceIdFilter')
    InstanceIdFilterOperator = Shapes::StringShape.new(name: 'InstanceIdFilterOperator')
    InstanceLimitsHandling = Shapes::StringShape.new(name: 'InstanceLimitsHandling')
    InstanceOnboardingJobFailureCode = Shapes::StringShape.new(name: 'InstanceOnboardingJobFailureCode')
    InstanceOnboardingJobStatus = Shapes::StructureShape.new(name: 'InstanceOnboardingJobStatus')
    InstanceOnboardingJobStatusCode = Shapes::StringShape.new(name: 'InstanceOnboardingJobStatusCode')
    IntegrationConfig = Shapes::UnionShape.new(name: 'IntegrationConfig')
    IntegrationIdentifier = Shapes::UnionShape.new(name: 'IntegrationIdentifier')
    IntegrationSummary = Shapes::UnionShape.new(name: 'IntegrationSummary')
    IntegrationSummaryList = Shapes::ListShape.new(name: 'IntegrationSummaryList')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidCampaignStateException = Shapes::StructureShape.new(name: 'InvalidCampaignStateException')
    InvalidStateException = Shapes::StructureShape.new(name: 'InvalidStateException')
    Iso8601Date = Shapes::StringShape.new(name: 'Iso8601Date')
    Iso8601Duration = Shapes::StringShape.new(name: 'Iso8601Duration')
    Iso8601Time = Shapes::StringShape.new(name: 'Iso8601Time')
    LambdaArn = Shapes::StringShape.new(name: 'LambdaArn')
    LambdaIntegrationConfig = Shapes::StructureShape.new(name: 'LambdaIntegrationConfig')
    LambdaIntegrationIdentifier = Shapes::StructureShape.new(name: 'LambdaIntegrationIdentifier')
    LambdaIntegrationSummary = Shapes::StructureShape.new(name: 'LambdaIntegrationSummary')
    ListCampaignsRequest = Shapes::StructureShape.new(name: 'ListCampaignsRequest')
    ListCampaignsResponse = Shapes::StructureShape.new(name: 'ListCampaignsResponse')
    ListConnectInstanceIntegrationsRequest = Shapes::StructureShape.new(name: 'ListConnectInstanceIntegrationsRequest')
    ListConnectInstanceIntegrationsResponse = Shapes::StructureShape.new(name: 'ListConnectInstanceIntegrationsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LocalTimeZoneConfig = Shapes::StructureShape.new(name: 'LocalTimeZoneConfig')
    LocalTimeZoneDetection = Shapes::ListShape.new(name: 'LocalTimeZoneDetection')
    LocalTimeZoneDetectionType = Shapes::StringShape.new(name: 'LocalTimeZoneDetectionType')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    ObjectTypeName = Shapes::StringShape.new(name: 'ObjectTypeName')
    ObjectTypeNamesMap = Shapes::MapShape.new(name: 'ObjectTypeNamesMap')
    OpenHours = Shapes::UnionShape.new(name: 'OpenHours')
    OutboundRequest = Shapes::StructureShape.new(name: 'OutboundRequest')
    OutboundRequestList = Shapes::ListShape.new(name: 'OutboundRequestList')
    PauseCampaignRequest = Shapes::StructureShape.new(name: 'PauseCampaignRequest')
    PredictiveConfig = Shapes::StructureShape.new(name: 'PredictiveConfig')
    PreviewConfig = Shapes::StructureShape.new(name: 'PreviewConfig')
    ProfileId = Shapes::StringShape.new(name: 'ProfileId')
    ProfileOutboundRequest = Shapes::StructureShape.new(name: 'ProfileOutboundRequest')
    ProfileOutboundRequestFailureCode = Shapes::StringShape.new(name: 'ProfileOutboundRequestFailureCode')
    ProfileOutboundRequestId = Shapes::StringShape.new(name: 'ProfileOutboundRequestId')
    ProfileOutboundRequestList = Shapes::ListShape.new(name: 'ProfileOutboundRequestList')
    ProgressiveConfig = Shapes::StructureShape.new(name: 'ProgressiveConfig')
    PutConnectInstanceIntegrationRequest = Shapes::StructureShape.new(name: 'PutConnectInstanceIntegrationRequest')
    PutInstanceCommunicationLimitsRequest = Shapes::StructureShape.new(name: 'PutInstanceCommunicationLimitsRequest')
    PutOutboundRequestBatchRequest = Shapes::StructureShape.new(name: 'PutOutboundRequestBatchRequest')
    PutOutboundRequestBatchResponse = Shapes::StructureShape.new(name: 'PutOutboundRequestBatchResponse')
    PutProfileOutboundRequestBatchRequest = Shapes::StructureShape.new(name: 'PutProfileOutboundRequestBatchRequest')
    PutProfileOutboundRequestBatchResponse = Shapes::StructureShape.new(name: 'PutProfileOutboundRequestBatchResponse')
    QConnectIntegrationConfig = Shapes::StructureShape.new(name: 'QConnectIntegrationConfig')
    QConnectIntegrationIdentifier = Shapes::StructureShape.new(name: 'QConnectIntegrationIdentifier')
    QConnectIntegrationSummary = Shapes::StructureShape.new(name: 'QConnectIntegrationSummary')
    QueueId = Shapes::StringShape.new(name: 'QueueId')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RestrictedPeriod = Shapes::StructureShape.new(name: 'RestrictedPeriod')
    RestrictedPeriodList = Shapes::ListShape.new(name: 'RestrictedPeriodList')
    RestrictedPeriodName = Shapes::StringShape.new(name: 'RestrictedPeriodName')
    RestrictedPeriods = Shapes::UnionShape.new(name: 'RestrictedPeriods')
    ResumeCampaignRequest = Shapes::StructureShape.new(name: 'ResumeCampaignRequest')
    RingTimeout = Shapes::IntegerShape.new(name: 'RingTimeout')
    Schedule = Shapes::StructureShape.new(name: 'Schedule')
    ServiceLinkedRoleArn = Shapes::StringShape.new(name: 'ServiceLinkedRoleArn')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SmsChannelSubtypeConfig = Shapes::StructureShape.new(name: 'SmsChannelSubtypeConfig')
    SmsChannelSubtypeParameters = Shapes::StructureShape.new(name: 'SmsChannelSubtypeParameters')
    SmsOutboundConfig = Shapes::StructureShape.new(name: 'SmsOutboundConfig')
    SmsOutboundMode = Shapes::UnionShape.new(name: 'SmsOutboundMode')
    Source = Shapes::UnionShape.new(name: 'Source')
    SourcePhoneNumber = Shapes::StringShape.new(name: 'SourcePhoneNumber')
    StartCampaignRequest = Shapes::StructureShape.new(name: 'StartCampaignRequest')
    StartInstanceOnboardingJobRequest = Shapes::StructureShape.new(name: 'StartInstanceOnboardingJobRequest')
    StartInstanceOnboardingJobResponse = Shapes::StructureShape.new(name: 'StartInstanceOnboardingJobResponse')
    StopCampaignRequest = Shapes::StructureShape.new(name: 'StopCampaignRequest')
    String = Shapes::StringShape.new(name: 'String')
    SuccessfulCampaignStateResponse = Shapes::StructureShape.new(name: 'SuccessfulCampaignStateResponse')
    SuccessfulCampaignStateResponseList = Shapes::ListShape.new(name: 'SuccessfulCampaignStateResponseList')
    SuccessfulProfileOutboundRequest = Shapes::StructureShape.new(name: 'SuccessfulProfileOutboundRequest')
    SuccessfulProfileOutboundRequestList = Shapes::ListShape.new(name: 'SuccessfulProfileOutboundRequestList')
    SuccessfulRequest = Shapes::StructureShape.new(name: 'SuccessfulRequest')
    SuccessfulRequestList = Shapes::ListShape.new(name: 'SuccessfulRequestList')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TelephonyChannelSubtypeConfig = Shapes::StructureShape.new(name: 'TelephonyChannelSubtypeConfig')
    TelephonyChannelSubtypeParameters = Shapes::StructureShape.new(name: 'TelephonyChannelSubtypeParameters')
    TelephonyOutboundConfig = Shapes::StructureShape.new(name: 'TelephonyOutboundConfig')
    TelephonyOutboundMode = Shapes::UnionShape.new(name: 'TelephonyOutboundMode')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimeRange = Shapes::StructureShape.new(name: 'TimeRange')
    TimeRangeList = Shapes::ListShape.new(name: 'TimeRangeList')
    TimeStamp = Shapes::TimestampShape.new(name: 'TimeStamp', timestampFormat: "iso8601")
    TimeWindow = Shapes::StructureShape.new(name: 'TimeWindow')
    TimeZone = Shapes::StringShape.new(name: 'TimeZone')
    TimeoutConfig = Shapes::StructureShape.new(name: 'TimeoutConfig')
    TimeoutDuration = Shapes::IntegerShape.new(name: 'TimeoutDuration')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateCampaignChannelSubtypeConfigRequest = Shapes::StructureShape.new(name: 'UpdateCampaignChannelSubtypeConfigRequest')
    UpdateCampaignCommunicationLimitsRequest = Shapes::StructureShape.new(name: 'UpdateCampaignCommunicationLimitsRequest')
    UpdateCampaignCommunicationTimeRequest = Shapes::StructureShape.new(name: 'UpdateCampaignCommunicationTimeRequest')
    UpdateCampaignFlowAssociationRequest = Shapes::StructureShape.new(name: 'UpdateCampaignFlowAssociationRequest')
    UpdateCampaignNameRequest = Shapes::StructureShape.new(name: 'UpdateCampaignNameRequest')
    UpdateCampaignScheduleRequest = Shapes::StructureShape.new(name: 'UpdateCampaignScheduleRequest')
    UpdateCampaignSourceRequest = Shapes::StructureShape.new(name: 'UpdateCampaignSourceRequest')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    WhatsAppChannelSubtypeConfig = Shapes::StructureShape.new(name: 'WhatsAppChannelSubtypeConfig')
    WhatsAppChannelSubtypeParameters = Shapes::StructureShape.new(name: 'WhatsAppChannelSubtypeParameters')
    WhatsAppOutboundConfig = Shapes::StructureShape.new(name: 'WhatsAppOutboundConfig')
    WhatsAppOutboundMode = Shapes::UnionShape.new(name: 'WhatsAppOutboundMode')
    XAmazonErrorType = Shapes::StringShape.new(name: 'XAmazonErrorType')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.add_member(:x_amz_error_type, Shapes::ShapeRef.new(shape: XAmazonErrorType, location: "header", location_name: "x-amzn-ErrorType"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AgentActions.member = Shapes::ShapeRef.new(shape: AgentAction)

    AgentlessConfig.struct_class = Types::AgentlessConfig

    AnswerMachineDetectionConfig.add_member(:enable_answer_machine_detection, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "enableAnswerMachineDetection"))
    AnswerMachineDetectionConfig.add_member(:await_answer_machine_prompt, Shapes::ShapeRef.new(shape: Boolean, location_name: "awaitAnswerMachinePrompt"))
    AnswerMachineDetectionConfig.struct_class = Types::AnswerMachineDetectionConfig

    Attributes.key = Shapes::ShapeRef.new(shape: AttributeName)
    Attributes.value = Shapes::ShapeRef.new(shape: AttributeValue)

    Campaign.add_member(:id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location_name: "id"))
    Campaign.add_member(:arn, Shapes::ShapeRef.new(shape: CampaignArn, required: true, location_name: "arn"))
    Campaign.add_member(:name, Shapes::ShapeRef.new(shape: CampaignName, required: true, location_name: "name"))
    Campaign.add_member(:connect_instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "connectInstanceId"))
    Campaign.add_member(:channel_subtype_config, Shapes::ShapeRef.new(shape: ChannelSubtypeConfig, location_name: "channelSubtypeConfig"))
    Campaign.add_member(:type, Shapes::ShapeRef.new(shape: ExternalCampaignType, location_name: "type"))
    Campaign.add_member(:source, Shapes::ShapeRef.new(shape: Source, location_name: "source"))
    Campaign.add_member(:connect_campaign_flow_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "connectCampaignFlowArn"))
    Campaign.add_member(:schedule, Shapes::ShapeRef.new(shape: Schedule, location_name: "schedule"))
    Campaign.add_member(:communication_time_config, Shapes::ShapeRef.new(shape: CommunicationTimeConfig, location_name: "communicationTimeConfig"))
    Campaign.add_member(:communication_limits_override, Shapes::ShapeRef.new(shape: CommunicationLimitsConfig, location_name: "communicationLimitsOverride"))
    Campaign.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    Campaign.struct_class = Types::Campaign

    CampaignFilters.add_member(:instance_id_filter, Shapes::ShapeRef.new(shape: InstanceIdFilter, location_name: "instanceIdFilter"))
    CampaignFilters.struct_class = Types::CampaignFilters

    CampaignSummary.add_member(:id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location_name: "id"))
    CampaignSummary.add_member(:arn, Shapes::ShapeRef.new(shape: CampaignArn, required: true, location_name: "arn"))
    CampaignSummary.add_member(:name, Shapes::ShapeRef.new(shape: CampaignName, required: true, location_name: "name"))
    CampaignSummary.add_member(:connect_instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "connectInstanceId"))
    CampaignSummary.add_member(:channel_subtypes, Shapes::ShapeRef.new(shape: ChannelSubtypeList, required: true, location_name: "channelSubtypes"))
    CampaignSummary.add_member(:type, Shapes::ShapeRef.new(shape: ExternalCampaignType, location_name: "type"))
    CampaignSummary.add_member(:schedule, Shapes::ShapeRef.new(shape: Schedule, location_name: "schedule"))
    CampaignSummary.add_member(:connect_campaign_flow_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "connectCampaignFlowArn"))
    CampaignSummary.struct_class = Types::CampaignSummary

    CampaignSummaryList.member = Shapes::ShapeRef.new(shape: CampaignSummary)

    ChannelSubtypeConfig.add_member(:telephony, Shapes::ShapeRef.new(shape: TelephonyChannelSubtypeConfig, location_name: "telephony"))
    ChannelSubtypeConfig.add_member(:sms, Shapes::ShapeRef.new(shape: SmsChannelSubtypeConfig, location_name: "sms"))
    ChannelSubtypeConfig.add_member(:email, Shapes::ShapeRef.new(shape: EmailChannelSubtypeConfig, location_name: "email"))
    ChannelSubtypeConfig.add_member(:whats_app, Shapes::ShapeRef.new(shape: WhatsAppChannelSubtypeConfig, location_name: "whatsApp"))
    ChannelSubtypeConfig.struct_class = Types::ChannelSubtypeConfig

    ChannelSubtypeList.member = Shapes::ShapeRef.new(shape: ChannelSubtype)

    ChannelSubtypeParameters.add_member(:telephony, Shapes::ShapeRef.new(shape: TelephonyChannelSubtypeParameters, location_name: "telephony"))
    ChannelSubtypeParameters.add_member(:sms, Shapes::ShapeRef.new(shape: SmsChannelSubtypeParameters, location_name: "sms"))
    ChannelSubtypeParameters.add_member(:email, Shapes::ShapeRef.new(shape: EmailChannelSubtypeParameters, location_name: "email"))
    ChannelSubtypeParameters.add_member(:whats_app, Shapes::ShapeRef.new(shape: WhatsAppChannelSubtypeParameters, location_name: "whatsApp"))
    ChannelSubtypeParameters.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ChannelSubtypeParameters.add_member_subclass(:telephony, Types::ChannelSubtypeParameters::Telephony)
    ChannelSubtypeParameters.add_member_subclass(:sms, Types::ChannelSubtypeParameters::Sms)
    ChannelSubtypeParameters.add_member_subclass(:email, Types::ChannelSubtypeParameters::Email)
    ChannelSubtypeParameters.add_member_subclass(:whats_app, Types::ChannelSubtypeParameters::WhatsApp)
    ChannelSubtypeParameters.add_member_subclass(:unknown, Types::ChannelSubtypeParameters::Unknown)
    ChannelSubtypeParameters.struct_class = Types::ChannelSubtypeParameters

    CommunicationLimit.add_member(:max_count_per_recipient, Shapes::ShapeRef.new(shape: CommunicationLimitMaxCountPerRecipientInteger, required: true, location_name: "maxCountPerRecipient"))
    CommunicationLimit.add_member(:frequency, Shapes::ShapeRef.new(shape: CommunicationLimitFrequencyInteger, required: true, location_name: "frequency"))
    CommunicationLimit.add_member(:unit, Shapes::ShapeRef.new(shape: CommunicationLimitTimeUnit, required: true, location_name: "unit"))
    CommunicationLimit.struct_class = Types::CommunicationLimit

    CommunicationLimitList.member = Shapes::ShapeRef.new(shape: CommunicationLimit)

    CommunicationLimits.add_member(:communication_limits_list, Shapes::ShapeRef.new(shape: CommunicationLimitList, location_name: "communicationLimitsList"))
    CommunicationLimits.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CommunicationLimits.add_member_subclass(:communication_limits_list, Types::CommunicationLimits::CommunicationLimitsList)
    CommunicationLimits.add_member_subclass(:unknown, Types::CommunicationLimits::Unknown)
    CommunicationLimits.struct_class = Types::CommunicationLimits

    CommunicationLimitsConfig.add_member(:all_channel_subtypes, Shapes::ShapeRef.new(shape: CommunicationLimits, location_name: "allChannelSubtypes"))
    CommunicationLimitsConfig.add_member(:instance_limits_handling, Shapes::ShapeRef.new(shape: InstanceLimitsHandling, location_name: "instanceLimitsHandling"))
    CommunicationLimitsConfig.struct_class = Types::CommunicationLimitsConfig

    CommunicationTimeConfig.add_member(:local_time_zone_config, Shapes::ShapeRef.new(shape: LocalTimeZoneConfig, required: true, location_name: "localTimeZoneConfig"))
    CommunicationTimeConfig.add_member(:telephony, Shapes::ShapeRef.new(shape: TimeWindow, location_name: "telephony"))
    CommunicationTimeConfig.add_member(:sms, Shapes::ShapeRef.new(shape: TimeWindow, location_name: "sms"))
    CommunicationTimeConfig.add_member(:email, Shapes::ShapeRef.new(shape: TimeWindow, location_name: "email"))
    CommunicationTimeConfig.add_member(:whats_app, Shapes::ShapeRef.new(shape: TimeWindow, location_name: "whatsApp"))
    CommunicationTimeConfig.struct_class = Types::CommunicationTimeConfig

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:x_amz_error_type, Shapes::ShapeRef.new(shape: XAmazonErrorType, location: "header", location_name: "x-amzn-ErrorType"))
    ConflictException.struct_class = Types::ConflictException

    CreateCampaignRequest.add_member(:name, Shapes::ShapeRef.new(shape: CampaignName, required: true, location_name: "name"))
    CreateCampaignRequest.add_member(:connect_instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "connectInstanceId"))
    CreateCampaignRequest.add_member(:channel_subtype_config, Shapes::ShapeRef.new(shape: ChannelSubtypeConfig, location_name: "channelSubtypeConfig"))
    CreateCampaignRequest.add_member(:type, Shapes::ShapeRef.new(shape: ExternalCampaignType, location_name: "type"))
    CreateCampaignRequest.add_member(:source, Shapes::ShapeRef.new(shape: Source, location_name: "source"))
    CreateCampaignRequest.add_member(:connect_campaign_flow_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "connectCampaignFlowArn"))
    CreateCampaignRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: Schedule, location_name: "schedule"))
    CreateCampaignRequest.add_member(:communication_time_config, Shapes::ShapeRef.new(shape: CommunicationTimeConfig, location_name: "communicationTimeConfig"))
    CreateCampaignRequest.add_member(:communication_limits_override, Shapes::ShapeRef.new(shape: CommunicationLimitsConfig, location_name: "communicationLimitsOverride"))
    CreateCampaignRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateCampaignRequest.struct_class = Types::CreateCampaignRequest

    CreateCampaignResponse.add_member(:id, Shapes::ShapeRef.new(shape: CampaignId, location_name: "id"))
    CreateCampaignResponse.add_member(:arn, Shapes::ShapeRef.new(shape: CampaignArn, location_name: "arn"))
    CreateCampaignResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateCampaignResponse.struct_class = Types::CreateCampaignResponse

    CustomerProfilesIntegrationConfig.add_member(:domain_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "domainArn"))
    CustomerProfilesIntegrationConfig.add_member(:object_type_names, Shapes::ShapeRef.new(shape: ObjectTypeNamesMap, required: true, location_name: "objectTypeNames"))
    CustomerProfilesIntegrationConfig.struct_class = Types::CustomerProfilesIntegrationConfig

    CustomerProfilesIntegrationIdentifier.add_member(:domain_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "domainArn"))
    CustomerProfilesIntegrationIdentifier.struct_class = Types::CustomerProfilesIntegrationIdentifier

    CustomerProfilesIntegrationSummary.add_member(:domain_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "domainArn"))
    CustomerProfilesIntegrationSummary.add_member(:object_type_names, Shapes::ShapeRef.new(shape: ObjectTypeNamesMap, required: true, location_name: "objectTypeNames"))
    CustomerProfilesIntegrationSummary.struct_class = Types::CustomerProfilesIntegrationSummary

    DailyHours.key = Shapes::ShapeRef.new(shape: DayOfWeek)
    DailyHours.value = Shapes::ShapeRef.new(shape: TimeRangeList)

    DeleteCampaignChannelSubtypeConfigRequest.add_member(:id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location: "uri", location_name: "id"))
    DeleteCampaignChannelSubtypeConfigRequest.add_member(:channel_subtype, Shapes::ShapeRef.new(shape: ChannelSubtype, required: true, location: "querystring", location_name: "channelSubtype"))
    DeleteCampaignChannelSubtypeConfigRequest.struct_class = Types::DeleteCampaignChannelSubtypeConfigRequest

    DeleteCampaignCommunicationLimitsRequest.add_member(:id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location: "uri", location_name: "id"))
    DeleteCampaignCommunicationLimitsRequest.add_member(:config, Shapes::ShapeRef.new(shape: CommunicationLimitsConfigType, required: true, location: "querystring", location_name: "config"))
    DeleteCampaignCommunicationLimitsRequest.struct_class = Types::DeleteCampaignCommunicationLimitsRequest

    DeleteCampaignCommunicationTimeRequest.add_member(:id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location: "uri", location_name: "id"))
    DeleteCampaignCommunicationTimeRequest.add_member(:config, Shapes::ShapeRef.new(shape: CommunicationTimeConfigType, required: true, location: "querystring", location_name: "config"))
    DeleteCampaignCommunicationTimeRequest.struct_class = Types::DeleteCampaignCommunicationTimeRequest

    DeleteCampaignRequest.add_member(:id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location: "uri", location_name: "id"))
    DeleteCampaignRequest.struct_class = Types::DeleteCampaignRequest

    DeleteConnectInstanceConfigRequest.add_member(:connect_instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "connectInstanceId"))
    DeleteConnectInstanceConfigRequest.add_member(:campaign_deletion_policy, Shapes::ShapeRef.new(shape: CampaignDeletionPolicy, location: "querystring", location_name: "campaignDeletionPolicy"))
    DeleteConnectInstanceConfigRequest.struct_class = Types::DeleteConnectInstanceConfigRequest

    DeleteConnectInstanceIntegrationRequest.add_member(:connect_instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "connectInstanceId"))
    DeleteConnectInstanceIntegrationRequest.add_member(:integration_identifier, Shapes::ShapeRef.new(shape: IntegrationIdentifier, required: true, location_name: "integrationIdentifier"))
    DeleteConnectInstanceIntegrationRequest.struct_class = Types::DeleteConnectInstanceIntegrationRequest

    DeleteInstanceOnboardingJobRequest.add_member(:connect_instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "connectInstanceId"))
    DeleteInstanceOnboardingJobRequest.struct_class = Types::DeleteInstanceOnboardingJobRequest

    DescribeCampaignRequest.add_member(:id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location: "uri", location_name: "id"))
    DescribeCampaignRequest.struct_class = Types::DescribeCampaignRequest

    DescribeCampaignResponse.add_member(:campaign, Shapes::ShapeRef.new(shape: Campaign, location_name: "campaign"))
    DescribeCampaignResponse.struct_class = Types::DescribeCampaignResponse

    EmailChannelSubtypeConfig.add_member(:capacity, Shapes::ShapeRef.new(shape: Capacity, location_name: "capacity"))
    EmailChannelSubtypeConfig.add_member(:outbound_mode, Shapes::ShapeRef.new(shape: EmailOutboundMode, required: true, location_name: "outboundMode"))
    EmailChannelSubtypeConfig.add_member(:default_outbound_config, Shapes::ShapeRef.new(shape: EmailOutboundConfig, required: true, location_name: "defaultOutboundConfig"))
    EmailChannelSubtypeConfig.struct_class = Types::EmailChannelSubtypeConfig

    EmailChannelSubtypeParameters.add_member(:destination_email_address, Shapes::ShapeRef.new(shape: EmailAddress, required: true, location_name: "destinationEmailAddress"))
    EmailChannelSubtypeParameters.add_member(:connect_source_email_address, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "connectSourceEmailAddress"))
    EmailChannelSubtypeParameters.add_member(:template_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "templateArn"))
    EmailChannelSubtypeParameters.add_member(:template_parameters, Shapes::ShapeRef.new(shape: Attributes, required: true, location_name: "templateParameters"))
    EmailChannelSubtypeParameters.struct_class = Types::EmailChannelSubtypeParameters

    EmailOutboundConfig.add_member(:connect_source_email_address, Shapes::ShapeRef.new(shape: EmailAddress, required: true, location_name: "connectSourceEmailAddress"))
    EmailOutboundConfig.add_member(:source_email_address_display_name, Shapes::ShapeRef.new(shape: EmailDisplayName, location_name: "sourceEmailAddressDisplayName"))
    EmailOutboundConfig.add_member(:wisdom_template_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "wisdomTemplateArn"))
    EmailOutboundConfig.struct_class = Types::EmailOutboundConfig

    EmailOutboundMode.add_member(:agentless, Shapes::ShapeRef.new(shape: AgentlessConfig, location_name: "agentless"))
    EmailOutboundMode.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EmailOutboundMode.add_member_subclass(:agentless, Types::EmailOutboundMode::Agentless)
    EmailOutboundMode.add_member_subclass(:unknown, Types::EmailOutboundMode::Unknown)
    EmailOutboundMode.struct_class = Types::EmailOutboundMode

    EncryptionConfig.add_member(:enabled, Shapes::ShapeRef.new(shape: Enabled, required: true, location_name: "enabled"))
    EncryptionConfig.add_member(:encryption_type, Shapes::ShapeRef.new(shape: EncryptionType, location_name: "encryptionType"))
    EncryptionConfig.add_member(:key_arn, Shapes::ShapeRef.new(shape: EncryptionKey, location_name: "keyArn"))
    EncryptionConfig.struct_class = Types::EncryptionConfig

    EventTrigger.add_member(:customer_profiles_domain_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "customerProfilesDomainArn"))
    EventTrigger.struct_class = Types::EventTrigger

    FailedCampaignStateResponse.add_member(:campaign_id, Shapes::ShapeRef.new(shape: CampaignId, location_name: "campaignId"))
    FailedCampaignStateResponse.add_member(:failure_code, Shapes::ShapeRef.new(shape: GetCampaignStateBatchFailureCode, location_name: "failureCode"))
    FailedCampaignStateResponse.struct_class = Types::FailedCampaignStateResponse

    FailedCampaignStateResponseList.member = Shapes::ShapeRef.new(shape: FailedCampaignStateResponse)

    FailedProfileOutboundRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    FailedProfileOutboundRequest.add_member(:id, Shapes::ShapeRef.new(shape: ProfileOutboundRequestId, location_name: "id"))
    FailedProfileOutboundRequest.add_member(:failure_code, Shapes::ShapeRef.new(shape: ProfileOutboundRequestFailureCode, location_name: "failureCode"))
    FailedProfileOutboundRequest.struct_class = Types::FailedProfileOutboundRequest

    FailedProfileOutboundRequestList.member = Shapes::ShapeRef.new(shape: FailedProfileOutboundRequest)

    FailedRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    FailedRequest.add_member(:id, Shapes::ShapeRef.new(shape: DialRequestId, location_name: "id"))
    FailedRequest.add_member(:failure_code, Shapes::ShapeRef.new(shape: FailureCode, location_name: "failureCode"))
    FailedRequest.struct_class = Types::FailedRequest

    FailedRequestList.member = Shapes::ShapeRef.new(shape: FailedRequest)

    GetCampaignStateBatchRequest.add_member(:campaign_ids, Shapes::ShapeRef.new(shape: GetCampaignStateBatchRequestCampaignIdsList, required: true, location_name: "campaignIds"))
    GetCampaignStateBatchRequest.struct_class = Types::GetCampaignStateBatchRequest

    GetCampaignStateBatchRequestCampaignIdsList.member = Shapes::ShapeRef.new(shape: CampaignId)

    GetCampaignStateBatchResponse.add_member(:successful_requests, Shapes::ShapeRef.new(shape: SuccessfulCampaignStateResponseList, location_name: "successfulRequests"))
    GetCampaignStateBatchResponse.add_member(:failed_requests, Shapes::ShapeRef.new(shape: FailedCampaignStateResponseList, location_name: "failedRequests"))
    GetCampaignStateBatchResponse.struct_class = Types::GetCampaignStateBatchResponse

    GetCampaignStateRequest.add_member(:id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location: "uri", location_name: "id"))
    GetCampaignStateRequest.struct_class = Types::GetCampaignStateRequest

    GetCampaignStateResponse.add_member(:state, Shapes::ShapeRef.new(shape: CampaignState, location_name: "state"))
    GetCampaignStateResponse.struct_class = Types::GetCampaignStateResponse

    GetConnectInstanceConfigRequest.add_member(:connect_instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "connectInstanceId"))
    GetConnectInstanceConfigRequest.struct_class = Types::GetConnectInstanceConfigRequest

    GetConnectInstanceConfigResponse.add_member(:connect_instance_config, Shapes::ShapeRef.new(shape: InstanceConfig, location_name: "connectInstanceConfig"))
    GetConnectInstanceConfigResponse.struct_class = Types::GetConnectInstanceConfigResponse

    GetInstanceCommunicationLimitsRequest.add_member(:connect_instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "connectInstanceId"))
    GetInstanceCommunicationLimitsRequest.struct_class = Types::GetInstanceCommunicationLimitsRequest

    GetInstanceCommunicationLimitsResponse.add_member(:communication_limits_config, Shapes::ShapeRef.new(shape: InstanceCommunicationLimitsConfig, location_name: "communicationLimitsConfig"))
    GetInstanceCommunicationLimitsResponse.struct_class = Types::GetInstanceCommunicationLimitsResponse

    GetInstanceOnboardingJobStatusRequest.add_member(:connect_instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "connectInstanceId"))
    GetInstanceOnboardingJobStatusRequest.struct_class = Types::GetInstanceOnboardingJobStatusRequest

    GetInstanceOnboardingJobStatusResponse.add_member(:connect_instance_onboarding_job_status, Shapes::ShapeRef.new(shape: InstanceOnboardingJobStatus, location_name: "connectInstanceOnboardingJobStatus"))
    GetInstanceOnboardingJobStatusResponse.struct_class = Types::GetInstanceOnboardingJobStatusResponse

    InstanceCommunicationLimitsConfig.add_member(:all_channel_subtypes, Shapes::ShapeRef.new(shape: CommunicationLimits, location_name: "allChannelSubtypes"))
    InstanceCommunicationLimitsConfig.struct_class = Types::InstanceCommunicationLimitsConfig

    InstanceConfig.add_member(:connect_instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "connectInstanceId"))
    InstanceConfig.add_member(:service_linked_role_arn, Shapes::ShapeRef.new(shape: ServiceLinkedRoleArn, required: true, location_name: "serviceLinkedRoleArn"))
    InstanceConfig.add_member(:encryption_config, Shapes::ShapeRef.new(shape: EncryptionConfig, required: true, location_name: "encryptionConfig"))
    InstanceConfig.struct_class = Types::InstanceConfig

    InstanceIdFilter.add_member(:value, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "value"))
    InstanceIdFilter.add_member(:operator, Shapes::ShapeRef.new(shape: InstanceIdFilterOperator, required: true, location_name: "operator"))
    InstanceIdFilter.struct_class = Types::InstanceIdFilter

    InstanceOnboardingJobStatus.add_member(:connect_instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "connectInstanceId"))
    InstanceOnboardingJobStatus.add_member(:status, Shapes::ShapeRef.new(shape: InstanceOnboardingJobStatusCode, required: true, location_name: "status"))
    InstanceOnboardingJobStatus.add_member(:failure_code, Shapes::ShapeRef.new(shape: InstanceOnboardingJobFailureCode, location_name: "failureCode"))
    InstanceOnboardingJobStatus.struct_class = Types::InstanceOnboardingJobStatus

    IntegrationConfig.add_member(:customer_profiles, Shapes::ShapeRef.new(shape: CustomerProfilesIntegrationConfig, location_name: "customerProfiles"))
    IntegrationConfig.add_member(:q_connect, Shapes::ShapeRef.new(shape: QConnectIntegrationConfig, location_name: "qConnect"))
    IntegrationConfig.add_member(:lambda, Shapes::ShapeRef.new(shape: LambdaIntegrationConfig, location_name: "lambda"))
    IntegrationConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    IntegrationConfig.add_member_subclass(:customer_profiles, Types::IntegrationConfig::CustomerProfiles)
    IntegrationConfig.add_member_subclass(:q_connect, Types::IntegrationConfig::QConnect)
    IntegrationConfig.add_member_subclass(:lambda, Types::IntegrationConfig::Lambda)
    IntegrationConfig.add_member_subclass(:unknown, Types::IntegrationConfig::Unknown)
    IntegrationConfig.struct_class = Types::IntegrationConfig

    IntegrationIdentifier.add_member(:customer_profiles, Shapes::ShapeRef.new(shape: CustomerProfilesIntegrationIdentifier, location_name: "customerProfiles"))
    IntegrationIdentifier.add_member(:q_connect, Shapes::ShapeRef.new(shape: QConnectIntegrationIdentifier, location_name: "qConnect"))
    IntegrationIdentifier.add_member(:lambda, Shapes::ShapeRef.new(shape: LambdaIntegrationIdentifier, location_name: "lambda"))
    IntegrationIdentifier.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    IntegrationIdentifier.add_member_subclass(:customer_profiles, Types::IntegrationIdentifier::CustomerProfiles)
    IntegrationIdentifier.add_member_subclass(:q_connect, Types::IntegrationIdentifier::QConnect)
    IntegrationIdentifier.add_member_subclass(:lambda, Types::IntegrationIdentifier::Lambda)
    IntegrationIdentifier.add_member_subclass(:unknown, Types::IntegrationIdentifier::Unknown)
    IntegrationIdentifier.struct_class = Types::IntegrationIdentifier

    IntegrationSummary.add_member(:customer_profiles, Shapes::ShapeRef.new(shape: CustomerProfilesIntegrationSummary, location_name: "customerProfiles"))
    IntegrationSummary.add_member(:q_connect, Shapes::ShapeRef.new(shape: QConnectIntegrationSummary, location_name: "qConnect"))
    IntegrationSummary.add_member(:lambda, Shapes::ShapeRef.new(shape: LambdaIntegrationSummary, location_name: "lambda"))
    IntegrationSummary.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    IntegrationSummary.add_member_subclass(:customer_profiles, Types::IntegrationSummary::CustomerProfiles)
    IntegrationSummary.add_member_subclass(:q_connect, Types::IntegrationSummary::QConnect)
    IntegrationSummary.add_member_subclass(:lambda, Types::IntegrationSummary::Lambda)
    IntegrationSummary.add_member_subclass(:unknown, Types::IntegrationSummary::Unknown)
    IntegrationSummary.struct_class = Types::IntegrationSummary

    IntegrationSummaryList.member = Shapes::ShapeRef.new(shape: IntegrationSummary)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.add_member(:x_amz_error_type, Shapes::ShapeRef.new(shape: XAmazonErrorType, location: "header", location_name: "x-amzn-ErrorType"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidCampaignStateException.add_member(:state, Shapes::ShapeRef.new(shape: CampaignState, required: true, location_name: "state"))
    InvalidCampaignStateException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InvalidCampaignStateException.add_member(:x_amz_error_type, Shapes::ShapeRef.new(shape: XAmazonErrorType, location: "header", location_name: "x-amzn-ErrorType"))
    InvalidCampaignStateException.struct_class = Types::InvalidCampaignStateException

    InvalidStateException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InvalidStateException.add_member(:x_amz_error_type, Shapes::ShapeRef.new(shape: XAmazonErrorType, location: "header", location_name: "x-amzn-ErrorType"))
    InvalidStateException.struct_class = Types::InvalidStateException

    LambdaIntegrationConfig.add_member(:function_arn, Shapes::ShapeRef.new(shape: LambdaArn, required: true, location_name: "functionArn"))
    LambdaIntegrationConfig.struct_class = Types::LambdaIntegrationConfig

    LambdaIntegrationIdentifier.add_member(:function_arn, Shapes::ShapeRef.new(shape: LambdaArn, required: true, location_name: "functionArn"))
    LambdaIntegrationIdentifier.struct_class = Types::LambdaIntegrationIdentifier

    LambdaIntegrationSummary.add_member(:function_arn, Shapes::ShapeRef.new(shape: LambdaArn, required: true, location_name: "functionArn"))
    LambdaIntegrationSummary.struct_class = Types::LambdaIntegrationSummary

    ListCampaignsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListCampaignsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCampaignsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: CampaignFilters, location_name: "filters"))
    ListCampaignsRequest.struct_class = Types::ListCampaignsRequest

    ListCampaignsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCampaignsResponse.add_member(:campaign_summary_list, Shapes::ShapeRef.new(shape: CampaignSummaryList, location_name: "campaignSummaryList"))
    ListCampaignsResponse.struct_class = Types::ListCampaignsResponse

    ListConnectInstanceIntegrationsRequest.add_member(:connect_instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "connectInstanceId"))
    ListConnectInstanceIntegrationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListConnectInstanceIntegrationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListConnectInstanceIntegrationsRequest.struct_class = Types::ListConnectInstanceIntegrationsRequest

    ListConnectInstanceIntegrationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListConnectInstanceIntegrationsResponse.add_member(:integration_summary_list, Shapes::ShapeRef.new(shape: IntegrationSummaryList, location_name: "integrationSummaryList"))
    ListConnectInstanceIntegrationsResponse.struct_class = Types::ListConnectInstanceIntegrationsResponse

    ListTagsForResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "arn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    LocalTimeZoneConfig.add_member(:default_time_zone, Shapes::ShapeRef.new(shape: TimeZone, location_name: "defaultTimeZone"))
    LocalTimeZoneConfig.add_member(:local_time_zone_detection, Shapes::ShapeRef.new(shape: LocalTimeZoneDetection, location_name: "localTimeZoneDetection"))
    LocalTimeZoneConfig.struct_class = Types::LocalTimeZoneConfig

    LocalTimeZoneDetection.member = Shapes::ShapeRef.new(shape: LocalTimeZoneDetectionType)

    ObjectTypeNamesMap.key = Shapes::ShapeRef.new(shape: EventType)
    ObjectTypeNamesMap.value = Shapes::ShapeRef.new(shape: ObjectTypeName)

    OpenHours.add_member(:daily_hours, Shapes::ShapeRef.new(shape: DailyHours, location_name: "dailyHours"))
    OpenHours.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    OpenHours.add_member_subclass(:daily_hours, Types::OpenHours::DailyHours)
    OpenHours.add_member_subclass(:unknown, Types::OpenHours::Unknown)
    OpenHours.struct_class = Types::OpenHours

    OutboundRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken"))
    OutboundRequest.add_member(:expiration_time, Shapes::ShapeRef.new(shape: TimeStamp, required: true, location_name: "expirationTime"))
    OutboundRequest.add_member(:channel_subtype_parameters, Shapes::ShapeRef.new(shape: ChannelSubtypeParameters, required: true, location_name: "channelSubtypeParameters"))
    OutboundRequest.struct_class = Types::OutboundRequest

    OutboundRequestList.member = Shapes::ShapeRef.new(shape: OutboundRequest)

    PauseCampaignRequest.add_member(:id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location: "uri", location_name: "id"))
    PauseCampaignRequest.struct_class = Types::PauseCampaignRequest

    PredictiveConfig.add_member(:bandwidth_allocation, Shapes::ShapeRef.new(shape: BandwidthAllocation, required: true, location_name: "bandwidthAllocation"))
    PredictiveConfig.struct_class = Types::PredictiveConfig

    PreviewConfig.add_member(:bandwidth_allocation, Shapes::ShapeRef.new(shape: BandwidthAllocation, required: true, location_name: "bandwidthAllocation"))
    PreviewConfig.add_member(:timeout_config, Shapes::ShapeRef.new(shape: TimeoutConfig, required: true, location_name: "timeoutConfig"))
    PreviewConfig.add_member(:agent_actions, Shapes::ShapeRef.new(shape: AgentActions, location_name: "agentActions"))
    PreviewConfig.struct_class = Types::PreviewConfig

    ProfileOutboundRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken"))
    ProfileOutboundRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileId, required: true, location_name: "profileId"))
    ProfileOutboundRequest.add_member(:expiration_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "expirationTime"))
    ProfileOutboundRequest.struct_class = Types::ProfileOutboundRequest

    ProfileOutboundRequestList.member = Shapes::ShapeRef.new(shape: ProfileOutboundRequest)

    ProgressiveConfig.add_member(:bandwidth_allocation, Shapes::ShapeRef.new(shape: BandwidthAllocation, required: true, location_name: "bandwidthAllocation"))
    ProgressiveConfig.struct_class = Types::ProgressiveConfig

    PutConnectInstanceIntegrationRequest.add_member(:connect_instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "connectInstanceId"))
    PutConnectInstanceIntegrationRequest.add_member(:integration_config, Shapes::ShapeRef.new(shape: IntegrationConfig, required: true, location_name: "integrationConfig"))
    PutConnectInstanceIntegrationRequest.struct_class = Types::PutConnectInstanceIntegrationRequest

    PutInstanceCommunicationLimitsRequest.add_member(:connect_instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location: "uri", location_name: "connectInstanceId"))
    PutInstanceCommunicationLimitsRequest.add_member(:communication_limits_config, Shapes::ShapeRef.new(shape: InstanceCommunicationLimitsConfig, required: true, location_name: "communicationLimitsConfig"))
    PutInstanceCommunicationLimitsRequest.struct_class = Types::PutInstanceCommunicationLimitsRequest

    PutOutboundRequestBatchRequest.add_member(:id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location: "uri", location_name: "id"))
    PutOutboundRequestBatchRequest.add_member(:outbound_requests, Shapes::ShapeRef.new(shape: OutboundRequestList, required: true, location_name: "outboundRequests"))
    PutOutboundRequestBatchRequest.struct_class = Types::PutOutboundRequestBatchRequest

    PutOutboundRequestBatchResponse.add_member(:successful_requests, Shapes::ShapeRef.new(shape: SuccessfulRequestList, location_name: "successfulRequests"))
    PutOutboundRequestBatchResponse.add_member(:failed_requests, Shapes::ShapeRef.new(shape: FailedRequestList, location_name: "failedRequests"))
    PutOutboundRequestBatchResponse.struct_class = Types::PutOutboundRequestBatchResponse

    PutProfileOutboundRequestBatchRequest.add_member(:id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location: "uri", location_name: "id"))
    PutProfileOutboundRequestBatchRequest.add_member(:profile_outbound_requests, Shapes::ShapeRef.new(shape: ProfileOutboundRequestList, required: true, location_name: "profileOutboundRequests"))
    PutProfileOutboundRequestBatchRequest.struct_class = Types::PutProfileOutboundRequestBatchRequest

    PutProfileOutboundRequestBatchResponse.add_member(:successful_requests, Shapes::ShapeRef.new(shape: SuccessfulProfileOutboundRequestList, location_name: "successfulRequests"))
    PutProfileOutboundRequestBatchResponse.add_member(:failed_requests, Shapes::ShapeRef.new(shape: FailedProfileOutboundRequestList, location_name: "failedRequests"))
    PutProfileOutboundRequestBatchResponse.struct_class = Types::PutProfileOutboundRequestBatchResponse

    QConnectIntegrationConfig.add_member(:knowledge_base_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "knowledgeBaseArn"))
    QConnectIntegrationConfig.struct_class = Types::QConnectIntegrationConfig

    QConnectIntegrationIdentifier.add_member(:knowledge_base_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "knowledgeBaseArn"))
    QConnectIntegrationIdentifier.struct_class = Types::QConnectIntegrationIdentifier

    QConnectIntegrationSummary.add_member(:knowledge_base_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "knowledgeBaseArn"))
    QConnectIntegrationSummary.struct_class = Types::QConnectIntegrationSummary

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:x_amz_error_type, Shapes::ShapeRef.new(shape: XAmazonErrorType, location: "header", location_name: "x-amzn-ErrorType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RestrictedPeriod.add_member(:name, Shapes::ShapeRef.new(shape: RestrictedPeriodName, location_name: "name"))
    RestrictedPeriod.add_member(:start_date, Shapes::ShapeRef.new(shape: Iso8601Date, required: true, location_name: "startDate"))
    RestrictedPeriod.add_member(:end_date, Shapes::ShapeRef.new(shape: Iso8601Date, required: true, location_name: "endDate"))
    RestrictedPeriod.struct_class = Types::RestrictedPeriod

    RestrictedPeriodList.member = Shapes::ShapeRef.new(shape: RestrictedPeriod)

    RestrictedPeriods.add_member(:restricted_period_list, Shapes::ShapeRef.new(shape: RestrictedPeriodList, location_name: "restrictedPeriodList"))
    RestrictedPeriods.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RestrictedPeriods.add_member_subclass(:restricted_period_list, Types::RestrictedPeriods::RestrictedPeriodList)
    RestrictedPeriods.add_member_subclass(:unknown, Types::RestrictedPeriods::Unknown)
    RestrictedPeriods.struct_class = Types::RestrictedPeriods

    ResumeCampaignRequest.add_member(:id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location: "uri", location_name: "id"))
    ResumeCampaignRequest.struct_class = Types::ResumeCampaignRequest

    Schedule.add_member(:start_time, Shapes::ShapeRef.new(shape: TimeStamp, required: true, location_name: "startTime"))
    Schedule.add_member(:end_time, Shapes::ShapeRef.new(shape: TimeStamp, required: true, location_name: "endTime"))
    Schedule.add_member(:refresh_frequency, Shapes::ShapeRef.new(shape: Iso8601Duration, location_name: "refreshFrequency"))
    Schedule.struct_class = Types::Schedule

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:x_amz_error_type, Shapes::ShapeRef.new(shape: XAmazonErrorType, location: "header", location_name: "x-amzn-ErrorType"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SmsChannelSubtypeConfig.add_member(:capacity, Shapes::ShapeRef.new(shape: Capacity, location_name: "capacity"))
    SmsChannelSubtypeConfig.add_member(:outbound_mode, Shapes::ShapeRef.new(shape: SmsOutboundMode, required: true, location_name: "outboundMode"))
    SmsChannelSubtypeConfig.add_member(:default_outbound_config, Shapes::ShapeRef.new(shape: SmsOutboundConfig, required: true, location_name: "defaultOutboundConfig"))
    SmsChannelSubtypeConfig.struct_class = Types::SmsChannelSubtypeConfig

    SmsChannelSubtypeParameters.add_member(:destination_phone_number, Shapes::ShapeRef.new(shape: DestinationPhoneNumber, required: true, location_name: "destinationPhoneNumber"))
    SmsChannelSubtypeParameters.add_member(:connect_source_phone_number_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "connectSourcePhoneNumberArn"))
    SmsChannelSubtypeParameters.add_member(:template_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "templateArn"))
    SmsChannelSubtypeParameters.add_member(:template_parameters, Shapes::ShapeRef.new(shape: Attributes, required: true, location_name: "templateParameters"))
    SmsChannelSubtypeParameters.struct_class = Types::SmsChannelSubtypeParameters

    SmsOutboundConfig.add_member(:connect_source_phone_number_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "connectSourcePhoneNumberArn"))
    SmsOutboundConfig.add_member(:wisdom_template_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "wisdomTemplateArn"))
    SmsOutboundConfig.struct_class = Types::SmsOutboundConfig

    SmsOutboundMode.add_member(:agentless, Shapes::ShapeRef.new(shape: AgentlessConfig, location_name: "agentless"))
    SmsOutboundMode.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SmsOutboundMode.add_member_subclass(:agentless, Types::SmsOutboundMode::Agentless)
    SmsOutboundMode.add_member_subclass(:unknown, Types::SmsOutboundMode::Unknown)
    SmsOutboundMode.struct_class = Types::SmsOutboundMode

    Source.add_member(:customer_profiles_segment_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "customerProfilesSegmentArn"))
    Source.add_member(:event_trigger, Shapes::ShapeRef.new(shape: EventTrigger, location_name: "eventTrigger"))
    Source.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Source.add_member_subclass(:customer_profiles_segment_arn, Types::Source::CustomerProfilesSegmentArn)
    Source.add_member_subclass(:event_trigger, Types::Source::EventTrigger)
    Source.add_member_subclass(:unknown, Types::Source::Unknown)
    Source.struct_class = Types::Source

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

    SuccessfulProfileOutboundRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    SuccessfulProfileOutboundRequest.add_member(:id, Shapes::ShapeRef.new(shape: ProfileOutboundRequestId, location_name: "id"))
    SuccessfulProfileOutboundRequest.struct_class = Types::SuccessfulProfileOutboundRequest

    SuccessfulProfileOutboundRequestList.member = Shapes::ShapeRef.new(shape: SuccessfulProfileOutboundRequest)

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

    TelephonyChannelSubtypeConfig.add_member(:capacity, Shapes::ShapeRef.new(shape: Capacity, location_name: "capacity"))
    TelephonyChannelSubtypeConfig.add_member(:connect_queue_id, Shapes::ShapeRef.new(shape: QueueId, location_name: "connectQueueId"))
    TelephonyChannelSubtypeConfig.add_member(:outbound_mode, Shapes::ShapeRef.new(shape: TelephonyOutboundMode, required: true, location_name: "outboundMode"))
    TelephonyChannelSubtypeConfig.add_member(:default_outbound_config, Shapes::ShapeRef.new(shape: TelephonyOutboundConfig, required: true, location_name: "defaultOutboundConfig"))
    TelephonyChannelSubtypeConfig.struct_class = Types::TelephonyChannelSubtypeConfig

    TelephonyChannelSubtypeParameters.add_member(:destination_phone_number, Shapes::ShapeRef.new(shape: DestinationPhoneNumber, required: true, location_name: "destinationPhoneNumber"))
    TelephonyChannelSubtypeParameters.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, required: true, location_name: "attributes"))
    TelephonyChannelSubtypeParameters.add_member(:connect_source_phone_number, Shapes::ShapeRef.new(shape: SourcePhoneNumber, location_name: "connectSourcePhoneNumber"))
    TelephonyChannelSubtypeParameters.add_member(:answer_machine_detection_config, Shapes::ShapeRef.new(shape: AnswerMachineDetectionConfig, location_name: "answerMachineDetectionConfig"))
    TelephonyChannelSubtypeParameters.add_member(:ring_timeout, Shapes::ShapeRef.new(shape: RingTimeout, location_name: "ringTimeout"))
    TelephonyChannelSubtypeParameters.struct_class = Types::TelephonyChannelSubtypeParameters

    TelephonyOutboundConfig.add_member(:connect_contact_flow_id, Shapes::ShapeRef.new(shape: ContactFlowId, required: true, location_name: "connectContactFlowId"))
    TelephonyOutboundConfig.add_member(:connect_source_phone_number, Shapes::ShapeRef.new(shape: SourcePhoneNumber, location_name: "connectSourcePhoneNumber"))
    TelephonyOutboundConfig.add_member(:answer_machine_detection_config, Shapes::ShapeRef.new(shape: AnswerMachineDetectionConfig, location_name: "answerMachineDetectionConfig"))
    TelephonyOutboundConfig.add_member(:ring_timeout, Shapes::ShapeRef.new(shape: RingTimeout, location_name: "ringTimeout"))
    TelephonyOutboundConfig.struct_class = Types::TelephonyOutboundConfig

    TelephonyOutboundMode.add_member(:progressive, Shapes::ShapeRef.new(shape: ProgressiveConfig, location_name: "progressive"))
    TelephonyOutboundMode.add_member(:predictive, Shapes::ShapeRef.new(shape: PredictiveConfig, location_name: "predictive"))
    TelephonyOutboundMode.add_member(:agentless, Shapes::ShapeRef.new(shape: AgentlessConfig, location_name: "agentless"))
    TelephonyOutboundMode.add_member(:preview, Shapes::ShapeRef.new(shape: PreviewConfig, location_name: "preview"))
    TelephonyOutboundMode.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    TelephonyOutboundMode.add_member_subclass(:progressive, Types::TelephonyOutboundMode::Progressive)
    TelephonyOutboundMode.add_member_subclass(:predictive, Types::TelephonyOutboundMode::Predictive)
    TelephonyOutboundMode.add_member_subclass(:agentless, Types::TelephonyOutboundMode::Agentless)
    TelephonyOutboundMode.add_member_subclass(:preview, Types::TelephonyOutboundMode::Preview)
    TelephonyOutboundMode.add_member_subclass(:unknown, Types::TelephonyOutboundMode::Unknown)
    TelephonyOutboundMode.struct_class = Types::TelephonyOutboundMode

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:x_amz_error_type, Shapes::ShapeRef.new(shape: XAmazonErrorType, location: "header", location_name: "x-amzn-ErrorType"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TimeRange.add_member(:start_time, Shapes::ShapeRef.new(shape: Iso8601Time, required: true, location_name: "startTime"))
    TimeRange.add_member(:end_time, Shapes::ShapeRef.new(shape: Iso8601Time, required: true, location_name: "endTime"))
    TimeRange.struct_class = Types::TimeRange

    TimeRangeList.member = Shapes::ShapeRef.new(shape: TimeRange)

    TimeWindow.add_member(:open_hours, Shapes::ShapeRef.new(shape: OpenHours, required: true, location_name: "openHours"))
    TimeWindow.add_member(:restricted_periods, Shapes::ShapeRef.new(shape: RestrictedPeriods, location_name: "restrictedPeriods"))
    TimeWindow.struct_class = Types::TimeWindow

    TimeoutConfig.add_member(:duration_in_seconds, Shapes::ShapeRef.new(shape: TimeoutDuration, required: true, location_name: "durationInSeconds"))
    TimeoutConfig.struct_class = Types::TimeoutConfig

    UntagResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "arn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateCampaignChannelSubtypeConfigRequest.add_member(:id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location: "uri", location_name: "id"))
    UpdateCampaignChannelSubtypeConfigRequest.add_member(:channel_subtype_config, Shapes::ShapeRef.new(shape: ChannelSubtypeConfig, required: true, location_name: "channelSubtypeConfig"))
    UpdateCampaignChannelSubtypeConfigRequest.struct_class = Types::UpdateCampaignChannelSubtypeConfigRequest

    UpdateCampaignCommunicationLimitsRequest.add_member(:id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location: "uri", location_name: "id"))
    UpdateCampaignCommunicationLimitsRequest.add_member(:communication_limits_override, Shapes::ShapeRef.new(shape: CommunicationLimitsConfig, required: true, location_name: "communicationLimitsOverride"))
    UpdateCampaignCommunicationLimitsRequest.struct_class = Types::UpdateCampaignCommunicationLimitsRequest

    UpdateCampaignCommunicationTimeRequest.add_member(:id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location: "uri", location_name: "id"))
    UpdateCampaignCommunicationTimeRequest.add_member(:communication_time_config, Shapes::ShapeRef.new(shape: CommunicationTimeConfig, required: true, location_name: "communicationTimeConfig"))
    UpdateCampaignCommunicationTimeRequest.struct_class = Types::UpdateCampaignCommunicationTimeRequest

    UpdateCampaignFlowAssociationRequest.add_member(:id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location: "uri", location_name: "id"))
    UpdateCampaignFlowAssociationRequest.add_member(:connect_campaign_flow_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "connectCampaignFlowArn"))
    UpdateCampaignFlowAssociationRequest.struct_class = Types::UpdateCampaignFlowAssociationRequest

    UpdateCampaignNameRequest.add_member(:id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location: "uri", location_name: "id"))
    UpdateCampaignNameRequest.add_member(:name, Shapes::ShapeRef.new(shape: CampaignName, required: true, location_name: "name"))
    UpdateCampaignNameRequest.struct_class = Types::UpdateCampaignNameRequest

    UpdateCampaignScheduleRequest.add_member(:id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location: "uri", location_name: "id"))
    UpdateCampaignScheduleRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: Schedule, required: true, location_name: "schedule"))
    UpdateCampaignScheduleRequest.struct_class = Types::UpdateCampaignScheduleRequest

    UpdateCampaignSourceRequest.add_member(:id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location: "uri", location_name: "id"))
    UpdateCampaignSourceRequest.add_member(:source, Shapes::ShapeRef.new(shape: Source, required: true, location_name: "source"))
    UpdateCampaignSourceRequest.struct_class = Types::UpdateCampaignSourceRequest

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:x_amz_error_type, Shapes::ShapeRef.new(shape: XAmazonErrorType, location: "header", location_name: "x-amzn-ErrorType"))
    ValidationException.struct_class = Types::ValidationException

    WhatsAppChannelSubtypeConfig.add_member(:capacity, Shapes::ShapeRef.new(shape: Capacity, location_name: "capacity"))
    WhatsAppChannelSubtypeConfig.add_member(:outbound_mode, Shapes::ShapeRef.new(shape: WhatsAppOutboundMode, required: true, location_name: "outboundMode"))
    WhatsAppChannelSubtypeConfig.add_member(:default_outbound_config, Shapes::ShapeRef.new(shape: WhatsAppOutboundConfig, required: true, location_name: "defaultOutboundConfig"))
    WhatsAppChannelSubtypeConfig.struct_class = Types::WhatsAppChannelSubtypeConfig

    WhatsAppChannelSubtypeParameters.add_member(:destination_phone_number, Shapes::ShapeRef.new(shape: DestinationPhoneNumber, required: true, location_name: "destinationPhoneNumber"))
    WhatsAppChannelSubtypeParameters.add_member(:connect_source_phone_number_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "connectSourcePhoneNumberArn"))
    WhatsAppChannelSubtypeParameters.add_member(:template_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "templateArn"))
    WhatsAppChannelSubtypeParameters.add_member(:template_parameters, Shapes::ShapeRef.new(shape: Attributes, required: true, location_name: "templateParameters"))
    WhatsAppChannelSubtypeParameters.struct_class = Types::WhatsAppChannelSubtypeParameters

    WhatsAppOutboundConfig.add_member(:connect_source_phone_number_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "connectSourcePhoneNumberArn"))
    WhatsAppOutboundConfig.add_member(:wisdom_template_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "wisdomTemplateArn"))
    WhatsAppOutboundConfig.struct_class = Types::WhatsAppOutboundConfig

    WhatsAppOutboundMode.add_member(:agentless, Shapes::ShapeRef.new(shape: AgentlessConfig, location_name: "agentless"))
    WhatsAppOutboundMode.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    WhatsAppOutboundMode.add_member_subclass(:agentless, Types::WhatsAppOutboundMode::Agentless)
    WhatsAppOutboundMode.add_member_subclass(:unknown, Types::WhatsAppOutboundMode::Unknown)
    WhatsAppOutboundMode.struct_class = Types::WhatsAppOutboundMode


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2024-04-23"

      api.metadata = {
        "apiVersion" => "2024-04-23",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "connect-campaigns",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AmazonConnectCampaignServiceV2",
        "serviceId" => "ConnectCampaignsV2",
        "signatureVersion" => "v4",
        "signingName" => "connect-campaigns",
        "uid" => "connectcampaignsv2-2024-04-23",
      }

      api.add_operation(:create_campaign, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCampaign"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/campaigns"
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
        o.http_request_uri = "/v2/campaigns/{id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteCampaignRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_campaign_channel_subtype_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCampaignChannelSubtypeConfig"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/campaigns/{id}/channel-subtype-config"
        o.input = Shapes::ShapeRef.new(shape: DeleteCampaignChannelSubtypeConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_campaign_communication_limits, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCampaignCommunicationLimits"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/campaigns/{id}/communication-limits"
        o.input = Shapes::ShapeRef.new(shape: DeleteCampaignCommunicationLimitsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCampaignStateException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_campaign_communication_time, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCampaignCommunicationTime"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/campaigns/{id}/communication-time"
        o.input = Shapes::ShapeRef.new(shape: DeleteCampaignCommunicationTimeRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCampaignStateException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_connect_instance_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConnectInstanceConfig"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/connect-instance/{connectInstanceId}/config"
        o.input = Shapes::ShapeRef.new(shape: DeleteConnectInstanceConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_connect_instance_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConnectInstanceIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/v2/connect-instance/{connectInstanceId}/integrations/delete"
        o.input = Shapes::ShapeRef.new(shape: DeleteConnectInstanceIntegrationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_instance_onboarding_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInstanceOnboardingJob"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/connect-instance/{connectInstanceId}/onboarding"
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
        o.http_request_uri = "/v2/campaigns/{id}"
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
        o.http_request_uri = "/v2/campaigns/{id}/state"
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
        o.http_request_uri = "/v2/campaigns-state"
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
        o.http_request_uri = "/v2/connect-instance/{connectInstanceId}/config"
        o.input = Shapes::ShapeRef.new(shape: GetConnectInstanceConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConnectInstanceConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_instance_communication_limits, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInstanceCommunicationLimits"
        o.http_method = "GET"
        o.http_request_uri = "/v2/connect-instance/{connectInstanceId}/communication-limits"
        o.input = Shapes::ShapeRef.new(shape: GetInstanceCommunicationLimitsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInstanceCommunicationLimitsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_instance_onboarding_job_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInstanceOnboardingJobStatus"
        o.http_method = "GET"
        o.http_request_uri = "/v2/connect-instance/{connectInstanceId}/onboarding"
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
        o.http_request_uri = "/v2/campaigns-summary"
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

      api.add_operation(:list_connect_instance_integrations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConnectInstanceIntegrations"
        o.http_method = "GET"
        o.http_request_uri = "/v2/connect-instance/{connectInstanceId}/integrations"
        o.input = Shapes::ShapeRef.new(shape: ListConnectInstanceIntegrationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListConnectInstanceIntegrationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.http_request_uri = "/v2/tags/{arn}"
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
        o.http_request_uri = "/v2/campaigns/{id}/pause"
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

      api.add_operation(:put_connect_instance_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutConnectInstanceIntegration"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/connect-instance/{connectInstanceId}/integrations"
        o.input = Shapes::ShapeRef.new(shape: PutConnectInstanceIntegrationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:put_instance_communication_limits, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutInstanceCommunicationLimits"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/connect-instance/{connectInstanceId}/communication-limits"
        o.input = Shapes::ShapeRef.new(shape: PutInstanceCommunicationLimitsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:put_outbound_request_batch, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutOutboundRequestBatch"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/campaigns/{id}/outbound-requests"
        o.input = Shapes::ShapeRef.new(shape: PutOutboundRequestBatchRequest)
        o.output = Shapes::ShapeRef.new(shape: PutOutboundRequestBatchResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCampaignStateException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:put_profile_outbound_request_batch, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutProfileOutboundRequestBatch"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/campaigns/{id}/profile-outbound-requests"
        o.input = Shapes::ShapeRef.new(shape: PutProfileOutboundRequestBatchRequest)
        o.output = Shapes::ShapeRef.new(shape: PutProfileOutboundRequestBatchResponse)
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
        o.http_request_uri = "/v2/campaigns/{id}/resume"
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
        o.http_request_uri = "/v2/campaigns/{id}/start"
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
        o.http_request_uri = "/v2/connect-instance/{connectInstanceId}/onboarding"
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
        o.http_request_uri = "/v2/campaigns/{id}/stop"
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
        o.http_request_uri = "/v2/tags/{arn}"
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
        o.http_request_uri = "/v2/tags/{arn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_campaign_channel_subtype_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCampaignChannelSubtypeConfig"
        o.http_method = "POST"
        o.http_request_uri = "/v2/campaigns/{id}/channel-subtype-config"
        o.input = Shapes::ShapeRef.new(shape: UpdateCampaignChannelSubtypeConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_campaign_communication_limits, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCampaignCommunicationLimits"
        o.http_method = "POST"
        o.http_request_uri = "/v2/campaigns/{id}/communication-limits"
        o.input = Shapes::ShapeRef.new(shape: UpdateCampaignCommunicationLimitsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCampaignStateException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_campaign_communication_time, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCampaignCommunicationTime"
        o.http_method = "POST"
        o.http_request_uri = "/v2/campaigns/{id}/communication-time"
        o.input = Shapes::ShapeRef.new(shape: UpdateCampaignCommunicationTimeRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCampaignStateException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_campaign_flow_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCampaignFlowAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/v2/campaigns/{id}/flow"
        o.input = Shapes::ShapeRef.new(shape: UpdateCampaignFlowAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCampaignStateException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_campaign_name, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCampaignName"
        o.http_method = "POST"
        o.http_request_uri = "/v2/campaigns/{id}/name"
        o.input = Shapes::ShapeRef.new(shape: UpdateCampaignNameRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_campaign_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCampaignSchedule"
        o.http_method = "POST"
        o.http_request_uri = "/v2/campaigns/{id}/schedule"
        o.input = Shapes::ShapeRef.new(shape: UpdateCampaignScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCampaignStateException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_campaign_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCampaignSource"
        o.http_method = "POST"
        o.http_request_uri = "/v2/campaigns/{id}/source"
        o.input = Shapes::ShapeRef.new(shape: UpdateCampaignSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCampaignStateException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
