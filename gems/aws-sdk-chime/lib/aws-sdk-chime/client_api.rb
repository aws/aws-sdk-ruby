# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Chime
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Account = Shapes::StructureShape.new(name: 'Account')
    AccountList = Shapes::ListShape.new(name: 'AccountList')
    AccountName = Shapes::StringShape.new(name: 'AccountName')
    AccountSettings = Shapes::StructureShape.new(name: 'AccountSettings')
    AccountStatus = Shapes::StringShape.new(name: 'AccountStatus')
    AccountType = Shapes::StringShape.new(name: 'AccountType')
    Address = Shapes::StructureShape.new(name: 'Address')
    AlexaForBusinessMetadata = Shapes::StructureShape.new(name: 'AlexaForBusinessMetadata')
    Alpha2CountryCode = Shapes::StringShape.new(name: 'Alpha2CountryCode')
    AppInstance = Shapes::StructureShape.new(name: 'AppInstance')
    AppInstanceAdmin = Shapes::StructureShape.new(name: 'AppInstanceAdmin')
    AppInstanceAdminList = Shapes::ListShape.new(name: 'AppInstanceAdminList')
    AppInstanceAdminSummary = Shapes::StructureShape.new(name: 'AppInstanceAdminSummary')
    AppInstanceDataType = Shapes::StringShape.new(name: 'AppInstanceDataType')
    AppInstanceList = Shapes::ListShape.new(name: 'AppInstanceList')
    AppInstanceRetentionSettings = Shapes::StructureShape.new(name: 'AppInstanceRetentionSettings')
    AppInstanceStreamingConfiguration = Shapes::StructureShape.new(name: 'AppInstanceStreamingConfiguration')
    AppInstanceStreamingConfigurationList = Shapes::ListShape.new(name: 'AppInstanceStreamingConfigurationList')
    AppInstanceSummary = Shapes::StructureShape.new(name: 'AppInstanceSummary')
    AppInstanceUser = Shapes::StructureShape.new(name: 'AppInstanceUser')
    AppInstanceUserList = Shapes::ListShape.new(name: 'AppInstanceUserList')
    AppInstanceUserMembershipSummary = Shapes::StructureShape.new(name: 'AppInstanceUserMembershipSummary')
    AppInstanceUserSummary = Shapes::StructureShape.new(name: 'AppInstanceUserSummary')
    AreaCode = Shapes::StringShape.new(name: 'AreaCode')
    Arn = Shapes::StringShape.new(name: 'Arn')
    ArtifactsConfiguration = Shapes::StructureShape.new(name: 'ArtifactsConfiguration')
    ArtifactsState = Shapes::StringShape.new(name: 'ArtifactsState')
    AssociatePhoneNumberWithUserRequest = Shapes::StructureShape.new(name: 'AssociatePhoneNumberWithUserRequest')
    AssociatePhoneNumberWithUserResponse = Shapes::StructureShape.new(name: 'AssociatePhoneNumberWithUserResponse')
    AssociatePhoneNumbersWithVoiceConnectorGroupRequest = Shapes::StructureShape.new(name: 'AssociatePhoneNumbersWithVoiceConnectorGroupRequest')
    AssociatePhoneNumbersWithVoiceConnectorGroupResponse = Shapes::StructureShape.new(name: 'AssociatePhoneNumbersWithVoiceConnectorGroupResponse')
    AssociatePhoneNumbersWithVoiceConnectorRequest = Shapes::StructureShape.new(name: 'AssociatePhoneNumbersWithVoiceConnectorRequest')
    AssociatePhoneNumbersWithVoiceConnectorResponse = Shapes::StructureShape.new(name: 'AssociatePhoneNumbersWithVoiceConnectorResponse')
    AssociateSigninDelegateGroupsWithAccountRequest = Shapes::StructureShape.new(name: 'AssociateSigninDelegateGroupsWithAccountRequest')
    AssociateSigninDelegateGroupsWithAccountResponse = Shapes::StructureShape.new(name: 'AssociateSigninDelegateGroupsWithAccountResponse')
    Attendee = Shapes::StructureShape.new(name: 'Attendee')
    AttendeeIdList = Shapes::ListShape.new(name: 'AttendeeIdList')
    AttendeeList = Shapes::ListShape.new(name: 'AttendeeList')
    AttendeeTagKeyList = Shapes::ListShape.new(name: 'AttendeeTagKeyList')
    AttendeeTagList = Shapes::ListShape.new(name: 'AttendeeTagList')
    AudioArtifactsConfiguration = Shapes::StructureShape.new(name: 'AudioArtifactsConfiguration')
    AudioMuxType = Shapes::StringShape.new(name: 'AudioMuxType')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    BatchChannelMemberships = Shapes::StructureShape.new(name: 'BatchChannelMemberships')
    BatchCreateAttendeeErrorList = Shapes::ListShape.new(name: 'BatchCreateAttendeeErrorList')
    BatchCreateAttendeeRequest = Shapes::StructureShape.new(name: 'BatchCreateAttendeeRequest')
    BatchCreateAttendeeResponse = Shapes::StructureShape.new(name: 'BatchCreateAttendeeResponse')
    BatchCreateChannelMembershipError = Shapes::StructureShape.new(name: 'BatchCreateChannelMembershipError')
    BatchCreateChannelMembershipErrors = Shapes::ListShape.new(name: 'BatchCreateChannelMembershipErrors')
    BatchCreateChannelMembershipRequest = Shapes::StructureShape.new(name: 'BatchCreateChannelMembershipRequest')
    BatchCreateChannelMembershipResponse = Shapes::StructureShape.new(name: 'BatchCreateChannelMembershipResponse')
    BatchCreateRoomMembershipRequest = Shapes::StructureShape.new(name: 'BatchCreateRoomMembershipRequest')
    BatchCreateRoomMembershipResponse = Shapes::StructureShape.new(name: 'BatchCreateRoomMembershipResponse')
    BatchDeletePhoneNumberRequest = Shapes::StructureShape.new(name: 'BatchDeletePhoneNumberRequest')
    BatchDeletePhoneNumberResponse = Shapes::StructureShape.new(name: 'BatchDeletePhoneNumberResponse')
    BatchSuspendUserRequest = Shapes::StructureShape.new(name: 'BatchSuspendUserRequest')
    BatchSuspendUserResponse = Shapes::StructureShape.new(name: 'BatchSuspendUserResponse')
    BatchUnsuspendUserRequest = Shapes::StructureShape.new(name: 'BatchUnsuspendUserRequest')
    BatchUnsuspendUserResponse = Shapes::StructureShape.new(name: 'BatchUnsuspendUserResponse')
    BatchUpdatePhoneNumberRequest = Shapes::StructureShape.new(name: 'BatchUpdatePhoneNumberRequest')
    BatchUpdatePhoneNumberResponse = Shapes::StructureShape.new(name: 'BatchUpdatePhoneNumberResponse')
    BatchUpdateUserRequest = Shapes::StructureShape.new(name: 'BatchUpdateUserRequest')
    BatchUpdateUserResponse = Shapes::StructureShape.new(name: 'BatchUpdateUserResponse')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    Bot = Shapes::StructureShape.new(name: 'Bot')
    BotList = Shapes::ListShape.new(name: 'BotList')
    BotType = Shapes::StringShape.new(name: 'BotType')
    BusinessCallingSettings = Shapes::StructureShape.new(name: 'BusinessCallingSettings')
    CallingName = Shapes::StringShape.new(name: 'CallingName')
    CallingNameStatus = Shapes::StringShape.new(name: 'CallingNameStatus')
    CallingRegion = Shapes::StringShape.new(name: 'CallingRegion')
    CallingRegionList = Shapes::ListShape.new(name: 'CallingRegionList')
    CandidateAddress = Shapes::StructureShape.new(name: 'CandidateAddress')
    CandidateAddressList = Shapes::ListShape.new(name: 'CandidateAddressList')
    Capability = Shapes::StringShape.new(name: 'Capability')
    CapabilityList = Shapes::ListShape.new(name: 'CapabilityList')
    Channel = Shapes::StructureShape.new(name: 'Channel')
    ChannelBan = Shapes::StructureShape.new(name: 'ChannelBan')
    ChannelBanSummary = Shapes::StructureShape.new(name: 'ChannelBanSummary')
    ChannelBanSummaryList = Shapes::ListShape.new(name: 'ChannelBanSummaryList')
    ChannelMembership = Shapes::StructureShape.new(name: 'ChannelMembership')
    ChannelMembershipForAppInstanceUserSummary = Shapes::StructureShape.new(name: 'ChannelMembershipForAppInstanceUserSummary')
    ChannelMembershipForAppInstanceUserSummaryList = Shapes::ListShape.new(name: 'ChannelMembershipForAppInstanceUserSummaryList')
    ChannelMembershipSummary = Shapes::StructureShape.new(name: 'ChannelMembershipSummary')
    ChannelMembershipSummaryList = Shapes::ListShape.new(name: 'ChannelMembershipSummaryList')
    ChannelMembershipType = Shapes::StringShape.new(name: 'ChannelMembershipType')
    ChannelMessage = Shapes::StructureShape.new(name: 'ChannelMessage')
    ChannelMessagePersistenceType = Shapes::StringShape.new(name: 'ChannelMessagePersistenceType')
    ChannelMessageSummary = Shapes::StructureShape.new(name: 'ChannelMessageSummary')
    ChannelMessageSummaryList = Shapes::ListShape.new(name: 'ChannelMessageSummaryList')
    ChannelMessageType = Shapes::StringShape.new(name: 'ChannelMessageType')
    ChannelMode = Shapes::StringShape.new(name: 'ChannelMode')
    ChannelModeratedByAppInstanceUserSummary = Shapes::StructureShape.new(name: 'ChannelModeratedByAppInstanceUserSummary')
    ChannelModeratedByAppInstanceUserSummaryList = Shapes::ListShape.new(name: 'ChannelModeratedByAppInstanceUserSummaryList')
    ChannelModerator = Shapes::StructureShape.new(name: 'ChannelModerator')
    ChannelModeratorSummary = Shapes::StructureShape.new(name: 'ChannelModeratorSummary')
    ChannelModeratorSummaryList = Shapes::ListShape.new(name: 'ChannelModeratorSummaryList')
    ChannelPrivacy = Shapes::StringShape.new(name: 'ChannelPrivacy')
    ChannelRetentionSettings = Shapes::StructureShape.new(name: 'ChannelRetentionSettings')
    ChannelSummary = Shapes::StructureShape.new(name: 'ChannelSummary')
    ChannelSummaryList = Shapes::ListShape.new(name: 'ChannelSummaryList')
    ChimeArn = Shapes::StringShape.new(name: 'ChimeArn')
    ChimeSdkMeetingConfiguration = Shapes::StructureShape.new(name: 'ChimeSdkMeetingConfiguration')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    Content = Shapes::StringShape.new(name: 'Content')
    ContentArtifactsConfiguration = Shapes::StructureShape.new(name: 'ContentArtifactsConfiguration')
    ContentMuxType = Shapes::StringShape.new(name: 'ContentMuxType')
    ConversationRetentionSettings = Shapes::StructureShape.new(name: 'ConversationRetentionSettings')
    Country = Shapes::StringShape.new(name: 'Country')
    CountryList = Shapes::ListShape.new(name: 'CountryList')
    CpsLimit = Shapes::IntegerShape.new(name: 'CpsLimit')
    CreateAccountRequest = Shapes::StructureShape.new(name: 'CreateAccountRequest')
    CreateAccountResponse = Shapes::StructureShape.new(name: 'CreateAccountResponse')
    CreateAppInstanceAdminRequest = Shapes::StructureShape.new(name: 'CreateAppInstanceAdminRequest')
    CreateAppInstanceAdminResponse = Shapes::StructureShape.new(name: 'CreateAppInstanceAdminResponse')
    CreateAppInstanceRequest = Shapes::StructureShape.new(name: 'CreateAppInstanceRequest')
    CreateAppInstanceResponse = Shapes::StructureShape.new(name: 'CreateAppInstanceResponse')
    CreateAppInstanceUserRequest = Shapes::StructureShape.new(name: 'CreateAppInstanceUserRequest')
    CreateAppInstanceUserResponse = Shapes::StructureShape.new(name: 'CreateAppInstanceUserResponse')
    CreateAttendeeError = Shapes::StructureShape.new(name: 'CreateAttendeeError')
    CreateAttendeeRequest = Shapes::StructureShape.new(name: 'CreateAttendeeRequest')
    CreateAttendeeRequestItem = Shapes::StructureShape.new(name: 'CreateAttendeeRequestItem')
    CreateAttendeeRequestItemList = Shapes::ListShape.new(name: 'CreateAttendeeRequestItemList')
    CreateAttendeeResponse = Shapes::StructureShape.new(name: 'CreateAttendeeResponse')
    CreateBotRequest = Shapes::StructureShape.new(name: 'CreateBotRequest')
    CreateBotResponse = Shapes::StructureShape.new(name: 'CreateBotResponse')
    CreateChannelBanRequest = Shapes::StructureShape.new(name: 'CreateChannelBanRequest')
    CreateChannelBanResponse = Shapes::StructureShape.new(name: 'CreateChannelBanResponse')
    CreateChannelMembershipRequest = Shapes::StructureShape.new(name: 'CreateChannelMembershipRequest')
    CreateChannelMembershipResponse = Shapes::StructureShape.new(name: 'CreateChannelMembershipResponse')
    CreateChannelModeratorRequest = Shapes::StructureShape.new(name: 'CreateChannelModeratorRequest')
    CreateChannelModeratorResponse = Shapes::StructureShape.new(name: 'CreateChannelModeratorResponse')
    CreateChannelRequest = Shapes::StructureShape.new(name: 'CreateChannelRequest')
    CreateChannelResponse = Shapes::StructureShape.new(name: 'CreateChannelResponse')
    CreateMediaCapturePipelineRequest = Shapes::StructureShape.new(name: 'CreateMediaCapturePipelineRequest')
    CreateMediaCapturePipelineResponse = Shapes::StructureShape.new(name: 'CreateMediaCapturePipelineResponse')
    CreateMeetingDialOutRequest = Shapes::StructureShape.new(name: 'CreateMeetingDialOutRequest')
    CreateMeetingDialOutResponse = Shapes::StructureShape.new(name: 'CreateMeetingDialOutResponse')
    CreateMeetingRequest = Shapes::StructureShape.new(name: 'CreateMeetingRequest')
    CreateMeetingResponse = Shapes::StructureShape.new(name: 'CreateMeetingResponse')
    CreateMeetingWithAttendeesRequest = Shapes::StructureShape.new(name: 'CreateMeetingWithAttendeesRequest')
    CreateMeetingWithAttendeesRequestItemList = Shapes::ListShape.new(name: 'CreateMeetingWithAttendeesRequestItemList')
    CreateMeetingWithAttendeesResponse = Shapes::StructureShape.new(name: 'CreateMeetingWithAttendeesResponse')
    CreatePhoneNumberOrderRequest = Shapes::StructureShape.new(name: 'CreatePhoneNumberOrderRequest')
    CreatePhoneNumberOrderResponse = Shapes::StructureShape.new(name: 'CreatePhoneNumberOrderResponse')
    CreateProxySessionRequest = Shapes::StructureShape.new(name: 'CreateProxySessionRequest')
    CreateProxySessionResponse = Shapes::StructureShape.new(name: 'CreateProxySessionResponse')
    CreateRoomMembershipRequest = Shapes::StructureShape.new(name: 'CreateRoomMembershipRequest')
    CreateRoomMembershipResponse = Shapes::StructureShape.new(name: 'CreateRoomMembershipResponse')
    CreateRoomRequest = Shapes::StructureShape.new(name: 'CreateRoomRequest')
    CreateRoomResponse = Shapes::StructureShape.new(name: 'CreateRoomResponse')
    CreateSipMediaApplicationCallRequest = Shapes::StructureShape.new(name: 'CreateSipMediaApplicationCallRequest')
    CreateSipMediaApplicationCallResponse = Shapes::StructureShape.new(name: 'CreateSipMediaApplicationCallResponse')
    CreateSipMediaApplicationRequest = Shapes::StructureShape.new(name: 'CreateSipMediaApplicationRequest')
    CreateSipMediaApplicationResponse = Shapes::StructureShape.new(name: 'CreateSipMediaApplicationResponse')
    CreateSipRuleRequest = Shapes::StructureShape.new(name: 'CreateSipRuleRequest')
    CreateSipRuleResponse = Shapes::StructureShape.new(name: 'CreateSipRuleResponse')
    CreateUserRequest = Shapes::StructureShape.new(name: 'CreateUserRequest')
    CreateUserResponse = Shapes::StructureShape.new(name: 'CreateUserResponse')
    CreateVoiceConnectorGroupRequest = Shapes::StructureShape.new(name: 'CreateVoiceConnectorGroupRequest')
    CreateVoiceConnectorGroupResponse = Shapes::StructureShape.new(name: 'CreateVoiceConnectorGroupResponse')
    CreateVoiceConnectorRequest = Shapes::StructureShape.new(name: 'CreateVoiceConnectorRequest')
    CreateVoiceConnectorResponse = Shapes::StructureShape.new(name: 'CreateVoiceConnectorResponse')
    Credential = Shapes::StructureShape.new(name: 'Credential')
    CredentialList = Shapes::ListShape.new(name: 'CredentialList')
    DNISEmergencyCallingConfiguration = Shapes::StructureShape.new(name: 'DNISEmergencyCallingConfiguration')
    DNISEmergencyCallingConfigurationList = Shapes::ListShape.new(name: 'DNISEmergencyCallingConfigurationList')
    DataRetentionInHours = Shapes::IntegerShape.new(name: 'DataRetentionInHours')
    DeleteAccountRequest = Shapes::StructureShape.new(name: 'DeleteAccountRequest')
    DeleteAccountResponse = Shapes::StructureShape.new(name: 'DeleteAccountResponse')
    DeleteAppInstanceAdminRequest = Shapes::StructureShape.new(name: 'DeleteAppInstanceAdminRequest')
    DeleteAppInstanceRequest = Shapes::StructureShape.new(name: 'DeleteAppInstanceRequest')
    DeleteAppInstanceStreamingConfigurationsRequest = Shapes::StructureShape.new(name: 'DeleteAppInstanceStreamingConfigurationsRequest')
    DeleteAppInstanceUserRequest = Shapes::StructureShape.new(name: 'DeleteAppInstanceUserRequest')
    DeleteAttendeeRequest = Shapes::StructureShape.new(name: 'DeleteAttendeeRequest')
    DeleteChannelBanRequest = Shapes::StructureShape.new(name: 'DeleteChannelBanRequest')
    DeleteChannelMembershipRequest = Shapes::StructureShape.new(name: 'DeleteChannelMembershipRequest')
    DeleteChannelMessageRequest = Shapes::StructureShape.new(name: 'DeleteChannelMessageRequest')
    DeleteChannelModeratorRequest = Shapes::StructureShape.new(name: 'DeleteChannelModeratorRequest')
    DeleteChannelRequest = Shapes::StructureShape.new(name: 'DeleteChannelRequest')
    DeleteEventsConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteEventsConfigurationRequest')
    DeleteMediaCapturePipelineRequest = Shapes::StructureShape.new(name: 'DeleteMediaCapturePipelineRequest')
    DeleteMeetingRequest = Shapes::StructureShape.new(name: 'DeleteMeetingRequest')
    DeletePhoneNumberRequest = Shapes::StructureShape.new(name: 'DeletePhoneNumberRequest')
    DeleteProxySessionRequest = Shapes::StructureShape.new(name: 'DeleteProxySessionRequest')
    DeleteRoomMembershipRequest = Shapes::StructureShape.new(name: 'DeleteRoomMembershipRequest')
    DeleteRoomRequest = Shapes::StructureShape.new(name: 'DeleteRoomRequest')
    DeleteSipMediaApplicationRequest = Shapes::StructureShape.new(name: 'DeleteSipMediaApplicationRequest')
    DeleteSipRuleRequest = Shapes::StructureShape.new(name: 'DeleteSipRuleRequest')
    DeleteVoiceConnectorEmergencyCallingConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteVoiceConnectorEmergencyCallingConfigurationRequest')
    DeleteVoiceConnectorGroupRequest = Shapes::StructureShape.new(name: 'DeleteVoiceConnectorGroupRequest')
    DeleteVoiceConnectorOriginationRequest = Shapes::StructureShape.new(name: 'DeleteVoiceConnectorOriginationRequest')
    DeleteVoiceConnectorProxyRequest = Shapes::StructureShape.new(name: 'DeleteVoiceConnectorProxyRequest')
    DeleteVoiceConnectorRequest = Shapes::StructureShape.new(name: 'DeleteVoiceConnectorRequest')
    DeleteVoiceConnectorStreamingConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteVoiceConnectorStreamingConfigurationRequest')
    DeleteVoiceConnectorTerminationCredentialsRequest = Shapes::StructureShape.new(name: 'DeleteVoiceConnectorTerminationCredentialsRequest')
    DeleteVoiceConnectorTerminationRequest = Shapes::StructureShape.new(name: 'DeleteVoiceConnectorTerminationRequest')
    DescribeAppInstanceAdminRequest = Shapes::StructureShape.new(name: 'DescribeAppInstanceAdminRequest')
    DescribeAppInstanceAdminResponse = Shapes::StructureShape.new(name: 'DescribeAppInstanceAdminResponse')
    DescribeAppInstanceRequest = Shapes::StructureShape.new(name: 'DescribeAppInstanceRequest')
    DescribeAppInstanceResponse = Shapes::StructureShape.new(name: 'DescribeAppInstanceResponse')
    DescribeAppInstanceUserRequest = Shapes::StructureShape.new(name: 'DescribeAppInstanceUserRequest')
    DescribeAppInstanceUserResponse = Shapes::StructureShape.new(name: 'DescribeAppInstanceUserResponse')
    DescribeChannelBanRequest = Shapes::StructureShape.new(name: 'DescribeChannelBanRequest')
    DescribeChannelBanResponse = Shapes::StructureShape.new(name: 'DescribeChannelBanResponse')
    DescribeChannelMembershipForAppInstanceUserRequest = Shapes::StructureShape.new(name: 'DescribeChannelMembershipForAppInstanceUserRequest')
    DescribeChannelMembershipForAppInstanceUserResponse = Shapes::StructureShape.new(name: 'DescribeChannelMembershipForAppInstanceUserResponse')
    DescribeChannelMembershipRequest = Shapes::StructureShape.new(name: 'DescribeChannelMembershipRequest')
    DescribeChannelMembershipResponse = Shapes::StructureShape.new(name: 'DescribeChannelMembershipResponse')
    DescribeChannelModeratedByAppInstanceUserRequest = Shapes::StructureShape.new(name: 'DescribeChannelModeratedByAppInstanceUserRequest')
    DescribeChannelModeratedByAppInstanceUserResponse = Shapes::StructureShape.new(name: 'DescribeChannelModeratedByAppInstanceUserResponse')
    DescribeChannelModeratorRequest = Shapes::StructureShape.new(name: 'DescribeChannelModeratorRequest')
    DescribeChannelModeratorResponse = Shapes::StructureShape.new(name: 'DescribeChannelModeratorResponse')
    DescribeChannelRequest = Shapes::StructureShape.new(name: 'DescribeChannelRequest')
    DescribeChannelResponse = Shapes::StructureShape.new(name: 'DescribeChannelResponse')
    DisassociatePhoneNumberFromUserRequest = Shapes::StructureShape.new(name: 'DisassociatePhoneNumberFromUserRequest')
    DisassociatePhoneNumberFromUserResponse = Shapes::StructureShape.new(name: 'DisassociatePhoneNumberFromUserResponse')
    DisassociatePhoneNumbersFromVoiceConnectorGroupRequest = Shapes::StructureShape.new(name: 'DisassociatePhoneNumbersFromVoiceConnectorGroupRequest')
    DisassociatePhoneNumbersFromVoiceConnectorGroupResponse = Shapes::StructureShape.new(name: 'DisassociatePhoneNumbersFromVoiceConnectorGroupResponse')
    DisassociatePhoneNumbersFromVoiceConnectorRequest = Shapes::StructureShape.new(name: 'DisassociatePhoneNumbersFromVoiceConnectorRequest')
    DisassociatePhoneNumbersFromVoiceConnectorResponse = Shapes::StructureShape.new(name: 'DisassociatePhoneNumbersFromVoiceConnectorResponse')
    DisassociateSigninDelegateGroupsFromAccountRequest = Shapes::StructureShape.new(name: 'DisassociateSigninDelegateGroupsFromAccountRequest')
    DisassociateSigninDelegateGroupsFromAccountResponse = Shapes::StructureShape.new(name: 'DisassociateSigninDelegateGroupsFromAccountResponse')
    E164PhoneNumber = Shapes::StringShape.new(name: 'E164PhoneNumber')
    E164PhoneNumberList = Shapes::ListShape.new(name: 'E164PhoneNumberList')
    EmailAddress = Shapes::StringShape.new(name: 'EmailAddress')
    EmailStatus = Shapes::StringShape.new(name: 'EmailStatus')
    EmergencyCallingConfiguration = Shapes::StructureShape.new(name: 'EmergencyCallingConfiguration')
    EngineTranscribeMedicalSettings = Shapes::StructureShape.new(name: 'EngineTranscribeMedicalSettings')
    EngineTranscribeSettings = Shapes::StructureShape.new(name: 'EngineTranscribeSettings')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    EventsConfiguration = Shapes::StructureShape.new(name: 'EventsConfiguration')
    ExternalMeetingIdType = Shapes::StringShape.new(name: 'ExternalMeetingIdType')
    ExternalUserIdList = Shapes::ListShape.new(name: 'ExternalUserIdList')
    ExternalUserIdType = Shapes::StringShape.new(name: 'ExternalUserIdType')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    FunctionArn = Shapes::StringShape.new(name: 'FunctionArn')
    GeoMatchLevel = Shapes::StringShape.new(name: 'GeoMatchLevel')
    GeoMatchParams = Shapes::StructureShape.new(name: 'GeoMatchParams')
    GetAccountRequest = Shapes::StructureShape.new(name: 'GetAccountRequest')
    GetAccountResponse = Shapes::StructureShape.new(name: 'GetAccountResponse')
    GetAccountSettingsRequest = Shapes::StructureShape.new(name: 'GetAccountSettingsRequest')
    GetAccountSettingsResponse = Shapes::StructureShape.new(name: 'GetAccountSettingsResponse')
    GetAppInstanceRetentionSettingsRequest = Shapes::StructureShape.new(name: 'GetAppInstanceRetentionSettingsRequest')
    GetAppInstanceRetentionSettingsResponse = Shapes::StructureShape.new(name: 'GetAppInstanceRetentionSettingsResponse')
    GetAppInstanceStreamingConfigurationsRequest = Shapes::StructureShape.new(name: 'GetAppInstanceStreamingConfigurationsRequest')
    GetAppInstanceStreamingConfigurationsResponse = Shapes::StructureShape.new(name: 'GetAppInstanceStreamingConfigurationsResponse')
    GetAttendeeRequest = Shapes::StructureShape.new(name: 'GetAttendeeRequest')
    GetAttendeeResponse = Shapes::StructureShape.new(name: 'GetAttendeeResponse')
    GetBotRequest = Shapes::StructureShape.new(name: 'GetBotRequest')
    GetBotResponse = Shapes::StructureShape.new(name: 'GetBotResponse')
    GetChannelMessageRequest = Shapes::StructureShape.new(name: 'GetChannelMessageRequest')
    GetChannelMessageResponse = Shapes::StructureShape.new(name: 'GetChannelMessageResponse')
    GetEventsConfigurationRequest = Shapes::StructureShape.new(name: 'GetEventsConfigurationRequest')
    GetEventsConfigurationResponse = Shapes::StructureShape.new(name: 'GetEventsConfigurationResponse')
    GetGlobalSettingsResponse = Shapes::StructureShape.new(name: 'GetGlobalSettingsResponse')
    GetMediaCapturePipelineRequest = Shapes::StructureShape.new(name: 'GetMediaCapturePipelineRequest')
    GetMediaCapturePipelineResponse = Shapes::StructureShape.new(name: 'GetMediaCapturePipelineResponse')
    GetMeetingRequest = Shapes::StructureShape.new(name: 'GetMeetingRequest')
    GetMeetingResponse = Shapes::StructureShape.new(name: 'GetMeetingResponse')
    GetMessagingSessionEndpointRequest = Shapes::StructureShape.new(name: 'GetMessagingSessionEndpointRequest')
    GetMessagingSessionEndpointResponse = Shapes::StructureShape.new(name: 'GetMessagingSessionEndpointResponse')
    GetPhoneNumberOrderRequest = Shapes::StructureShape.new(name: 'GetPhoneNumberOrderRequest')
    GetPhoneNumberOrderResponse = Shapes::StructureShape.new(name: 'GetPhoneNumberOrderResponse')
    GetPhoneNumberRequest = Shapes::StructureShape.new(name: 'GetPhoneNumberRequest')
    GetPhoneNumberResponse = Shapes::StructureShape.new(name: 'GetPhoneNumberResponse')
    GetPhoneNumberSettingsResponse = Shapes::StructureShape.new(name: 'GetPhoneNumberSettingsResponse')
    GetProxySessionRequest = Shapes::StructureShape.new(name: 'GetProxySessionRequest')
    GetProxySessionResponse = Shapes::StructureShape.new(name: 'GetProxySessionResponse')
    GetRetentionSettingsRequest = Shapes::StructureShape.new(name: 'GetRetentionSettingsRequest')
    GetRetentionSettingsResponse = Shapes::StructureShape.new(name: 'GetRetentionSettingsResponse')
    GetRoomRequest = Shapes::StructureShape.new(name: 'GetRoomRequest')
    GetRoomResponse = Shapes::StructureShape.new(name: 'GetRoomResponse')
    GetSipMediaApplicationLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'GetSipMediaApplicationLoggingConfigurationRequest')
    GetSipMediaApplicationLoggingConfigurationResponse = Shapes::StructureShape.new(name: 'GetSipMediaApplicationLoggingConfigurationResponse')
    GetSipMediaApplicationRequest = Shapes::StructureShape.new(name: 'GetSipMediaApplicationRequest')
    GetSipMediaApplicationResponse = Shapes::StructureShape.new(name: 'GetSipMediaApplicationResponse')
    GetSipRuleRequest = Shapes::StructureShape.new(name: 'GetSipRuleRequest')
    GetSipRuleResponse = Shapes::StructureShape.new(name: 'GetSipRuleResponse')
    GetUserRequest = Shapes::StructureShape.new(name: 'GetUserRequest')
    GetUserResponse = Shapes::StructureShape.new(name: 'GetUserResponse')
    GetUserSettingsRequest = Shapes::StructureShape.new(name: 'GetUserSettingsRequest')
    GetUserSettingsResponse = Shapes::StructureShape.new(name: 'GetUserSettingsResponse')
    GetVoiceConnectorEmergencyCallingConfigurationRequest = Shapes::StructureShape.new(name: 'GetVoiceConnectorEmergencyCallingConfigurationRequest')
    GetVoiceConnectorEmergencyCallingConfigurationResponse = Shapes::StructureShape.new(name: 'GetVoiceConnectorEmergencyCallingConfigurationResponse')
    GetVoiceConnectorGroupRequest = Shapes::StructureShape.new(name: 'GetVoiceConnectorGroupRequest')
    GetVoiceConnectorGroupResponse = Shapes::StructureShape.new(name: 'GetVoiceConnectorGroupResponse')
    GetVoiceConnectorLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'GetVoiceConnectorLoggingConfigurationRequest')
    GetVoiceConnectorLoggingConfigurationResponse = Shapes::StructureShape.new(name: 'GetVoiceConnectorLoggingConfigurationResponse')
    GetVoiceConnectorOriginationRequest = Shapes::StructureShape.new(name: 'GetVoiceConnectorOriginationRequest')
    GetVoiceConnectorOriginationResponse = Shapes::StructureShape.new(name: 'GetVoiceConnectorOriginationResponse')
    GetVoiceConnectorProxyRequest = Shapes::StructureShape.new(name: 'GetVoiceConnectorProxyRequest')
    GetVoiceConnectorProxyResponse = Shapes::StructureShape.new(name: 'GetVoiceConnectorProxyResponse')
    GetVoiceConnectorRequest = Shapes::StructureShape.new(name: 'GetVoiceConnectorRequest')
    GetVoiceConnectorResponse = Shapes::StructureShape.new(name: 'GetVoiceConnectorResponse')
    GetVoiceConnectorStreamingConfigurationRequest = Shapes::StructureShape.new(name: 'GetVoiceConnectorStreamingConfigurationRequest')
    GetVoiceConnectorStreamingConfigurationResponse = Shapes::StructureShape.new(name: 'GetVoiceConnectorStreamingConfigurationResponse')
    GetVoiceConnectorTerminationHealthRequest = Shapes::StructureShape.new(name: 'GetVoiceConnectorTerminationHealthRequest')
    GetVoiceConnectorTerminationHealthResponse = Shapes::StructureShape.new(name: 'GetVoiceConnectorTerminationHealthResponse')
    GetVoiceConnectorTerminationRequest = Shapes::StructureShape.new(name: 'GetVoiceConnectorTerminationRequest')
    GetVoiceConnectorTerminationResponse = Shapes::StructureShape.new(name: 'GetVoiceConnectorTerminationResponse')
    GuidString = Shapes::StringShape.new(name: 'GuidString')
    Identity = Shapes::StructureShape.new(name: 'Identity')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    Invite = Shapes::StructureShape.new(name: 'Invite')
    InviteList = Shapes::ListShape.new(name: 'InviteList')
    InviteStatus = Shapes::StringShape.new(name: 'InviteStatus')
    InviteUsersRequest = Shapes::StructureShape.new(name: 'InviteUsersRequest')
    InviteUsersResponse = Shapes::StructureShape.new(name: 'InviteUsersResponse')
    Iso8601Timestamp = Shapes::TimestampShape.new(name: 'Iso8601Timestamp', timestampFormat: "iso8601")
    JoinTokenString = Shapes::StringShape.new(name: 'JoinTokenString')
    License = Shapes::StringShape.new(name: 'License')
    LicenseList = Shapes::ListShape.new(name: 'LicenseList')
    ListAccountsRequest = Shapes::StructureShape.new(name: 'ListAccountsRequest')
    ListAccountsResponse = Shapes::StructureShape.new(name: 'ListAccountsResponse')
    ListAppInstanceAdminsRequest = Shapes::StructureShape.new(name: 'ListAppInstanceAdminsRequest')
    ListAppInstanceAdminsResponse = Shapes::StructureShape.new(name: 'ListAppInstanceAdminsResponse')
    ListAppInstanceUsersRequest = Shapes::StructureShape.new(name: 'ListAppInstanceUsersRequest')
    ListAppInstanceUsersResponse = Shapes::StructureShape.new(name: 'ListAppInstanceUsersResponse')
    ListAppInstancesRequest = Shapes::StructureShape.new(name: 'ListAppInstancesRequest')
    ListAppInstancesResponse = Shapes::StructureShape.new(name: 'ListAppInstancesResponse')
    ListAttendeeTagsRequest = Shapes::StructureShape.new(name: 'ListAttendeeTagsRequest')
    ListAttendeeTagsResponse = Shapes::StructureShape.new(name: 'ListAttendeeTagsResponse')
    ListAttendeesRequest = Shapes::StructureShape.new(name: 'ListAttendeesRequest')
    ListAttendeesResponse = Shapes::StructureShape.new(name: 'ListAttendeesResponse')
    ListBotsRequest = Shapes::StructureShape.new(name: 'ListBotsRequest')
    ListBotsResponse = Shapes::StructureShape.new(name: 'ListBotsResponse')
    ListChannelBansRequest = Shapes::StructureShape.new(name: 'ListChannelBansRequest')
    ListChannelBansResponse = Shapes::StructureShape.new(name: 'ListChannelBansResponse')
    ListChannelMembershipsForAppInstanceUserRequest = Shapes::StructureShape.new(name: 'ListChannelMembershipsForAppInstanceUserRequest')
    ListChannelMembershipsForAppInstanceUserResponse = Shapes::StructureShape.new(name: 'ListChannelMembershipsForAppInstanceUserResponse')
    ListChannelMembershipsRequest = Shapes::StructureShape.new(name: 'ListChannelMembershipsRequest')
    ListChannelMembershipsResponse = Shapes::StructureShape.new(name: 'ListChannelMembershipsResponse')
    ListChannelMessagesRequest = Shapes::StructureShape.new(name: 'ListChannelMessagesRequest')
    ListChannelMessagesResponse = Shapes::StructureShape.new(name: 'ListChannelMessagesResponse')
    ListChannelModeratorsRequest = Shapes::StructureShape.new(name: 'ListChannelModeratorsRequest')
    ListChannelModeratorsResponse = Shapes::StructureShape.new(name: 'ListChannelModeratorsResponse')
    ListChannelsModeratedByAppInstanceUserRequest = Shapes::StructureShape.new(name: 'ListChannelsModeratedByAppInstanceUserRequest')
    ListChannelsModeratedByAppInstanceUserResponse = Shapes::StructureShape.new(name: 'ListChannelsModeratedByAppInstanceUserResponse')
    ListChannelsRequest = Shapes::StructureShape.new(name: 'ListChannelsRequest')
    ListChannelsResponse = Shapes::StructureShape.new(name: 'ListChannelsResponse')
    ListMediaCapturePipelinesRequest = Shapes::StructureShape.new(name: 'ListMediaCapturePipelinesRequest')
    ListMediaCapturePipelinesResponse = Shapes::StructureShape.new(name: 'ListMediaCapturePipelinesResponse')
    ListMeetingTagsRequest = Shapes::StructureShape.new(name: 'ListMeetingTagsRequest')
    ListMeetingTagsResponse = Shapes::StructureShape.new(name: 'ListMeetingTagsResponse')
    ListMeetingsRequest = Shapes::StructureShape.new(name: 'ListMeetingsRequest')
    ListMeetingsResponse = Shapes::StructureShape.new(name: 'ListMeetingsResponse')
    ListPhoneNumberOrdersRequest = Shapes::StructureShape.new(name: 'ListPhoneNumberOrdersRequest')
    ListPhoneNumberOrdersResponse = Shapes::StructureShape.new(name: 'ListPhoneNumberOrdersResponse')
    ListPhoneNumbersRequest = Shapes::StructureShape.new(name: 'ListPhoneNumbersRequest')
    ListPhoneNumbersResponse = Shapes::StructureShape.new(name: 'ListPhoneNumbersResponse')
    ListProxySessionsRequest = Shapes::StructureShape.new(name: 'ListProxySessionsRequest')
    ListProxySessionsResponse = Shapes::StructureShape.new(name: 'ListProxySessionsResponse')
    ListRoomMembershipsRequest = Shapes::StructureShape.new(name: 'ListRoomMembershipsRequest')
    ListRoomMembershipsResponse = Shapes::StructureShape.new(name: 'ListRoomMembershipsResponse')
    ListRoomsRequest = Shapes::StructureShape.new(name: 'ListRoomsRequest')
    ListRoomsResponse = Shapes::StructureShape.new(name: 'ListRoomsResponse')
    ListSipMediaApplicationsRequest = Shapes::StructureShape.new(name: 'ListSipMediaApplicationsRequest')
    ListSipMediaApplicationsResponse = Shapes::StructureShape.new(name: 'ListSipMediaApplicationsResponse')
    ListSipRulesRequest = Shapes::StructureShape.new(name: 'ListSipRulesRequest')
    ListSipRulesResponse = Shapes::StructureShape.new(name: 'ListSipRulesResponse')
    ListSupportedPhoneNumberCountriesRequest = Shapes::StructureShape.new(name: 'ListSupportedPhoneNumberCountriesRequest')
    ListSupportedPhoneNumberCountriesResponse = Shapes::StructureShape.new(name: 'ListSupportedPhoneNumberCountriesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListUsersRequest = Shapes::StructureShape.new(name: 'ListUsersRequest')
    ListUsersResponse = Shapes::StructureShape.new(name: 'ListUsersResponse')
    ListVoiceConnectorGroupsRequest = Shapes::StructureShape.new(name: 'ListVoiceConnectorGroupsRequest')
    ListVoiceConnectorGroupsResponse = Shapes::StructureShape.new(name: 'ListVoiceConnectorGroupsResponse')
    ListVoiceConnectorTerminationCredentialsRequest = Shapes::StructureShape.new(name: 'ListVoiceConnectorTerminationCredentialsRequest')
    ListVoiceConnectorTerminationCredentialsResponse = Shapes::StructureShape.new(name: 'ListVoiceConnectorTerminationCredentialsResponse')
    ListVoiceConnectorsRequest = Shapes::StructureShape.new(name: 'ListVoiceConnectorsRequest')
    ListVoiceConnectorsResponse = Shapes::StructureShape.new(name: 'ListVoiceConnectorsResponse')
    LoggingConfiguration = Shapes::StructureShape.new(name: 'LoggingConfiguration')
    LogoutUserRequest = Shapes::StructureShape.new(name: 'LogoutUserRequest')
    LogoutUserResponse = Shapes::StructureShape.new(name: 'LogoutUserResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MediaCapturePipeline = Shapes::StructureShape.new(name: 'MediaCapturePipeline')
    MediaCapturePipelineList = Shapes::ListShape.new(name: 'MediaCapturePipelineList')
    MediaPipelineSinkType = Shapes::StringShape.new(name: 'MediaPipelineSinkType')
    MediaPipelineSourceType = Shapes::StringShape.new(name: 'MediaPipelineSourceType')
    MediaPipelineStatus = Shapes::StringShape.new(name: 'MediaPipelineStatus')
    MediaPlacement = Shapes::StructureShape.new(name: 'MediaPlacement')
    Meeting = Shapes::StructureShape.new(name: 'Meeting')
    MeetingList = Shapes::ListShape.new(name: 'MeetingList')
    MeetingNotificationConfiguration = Shapes::StructureShape.new(name: 'MeetingNotificationConfiguration')
    MeetingTagKeyList = Shapes::ListShape.new(name: 'MeetingTagKeyList')
    MeetingTagList = Shapes::ListShape.new(name: 'MeetingTagList')
    Member = Shapes::StructureShape.new(name: 'Member')
    MemberArns = Shapes::ListShape.new(name: 'MemberArns')
    MemberError = Shapes::StructureShape.new(name: 'MemberError')
    MemberErrorList = Shapes::ListShape.new(name: 'MemberErrorList')
    MemberType = Shapes::StringShape.new(name: 'MemberType')
    Members = Shapes::ListShape.new(name: 'Members')
    MembershipItem = Shapes::StructureShape.new(name: 'MembershipItem')
    MembershipItemList = Shapes::ListShape.new(name: 'MembershipItemList')
    MessageId = Shapes::StringShape.new(name: 'MessageId')
    MessagingSessionEndpoint = Shapes::StructureShape.new(name: 'MessagingSessionEndpoint')
    Metadata = Shapes::StringShape.new(name: 'Metadata')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NextTokenString = Shapes::StringShape.new(name: 'NextTokenString')
    NonEmptyContent = Shapes::StringShape.new(name: 'NonEmptyContent')
    NonEmptyResourceName = Shapes::StringShape.new(name: 'NonEmptyResourceName')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    NonEmptyString128 = Shapes::StringShape.new(name: 'NonEmptyString128')
    NonEmptyStringList = Shapes::ListShape.new(name: 'NonEmptyStringList')
    NonNullableBoolean = Shapes::BooleanShape.new(name: 'NonNullableBoolean')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    NotificationTarget = Shapes::StringShape.new(name: 'NotificationTarget')
    NullableBoolean = Shapes::BooleanShape.new(name: 'NullableBoolean')
    NumberSelectionBehavior = Shapes::StringShape.new(name: 'NumberSelectionBehavior')
    OrderedPhoneNumber = Shapes::StructureShape.new(name: 'OrderedPhoneNumber')
    OrderedPhoneNumberList = Shapes::ListShape.new(name: 'OrderedPhoneNumberList')
    OrderedPhoneNumberStatus = Shapes::StringShape.new(name: 'OrderedPhoneNumberStatus')
    Origination = Shapes::StructureShape.new(name: 'Origination')
    OriginationRoute = Shapes::StructureShape.new(name: 'OriginationRoute')
    OriginationRouteList = Shapes::ListShape.new(name: 'OriginationRouteList')
    OriginationRoutePriority = Shapes::IntegerShape.new(name: 'OriginationRoutePriority')
    OriginationRouteProtocol = Shapes::StringShape.new(name: 'OriginationRouteProtocol')
    OriginationRouteWeight = Shapes::IntegerShape.new(name: 'OriginationRouteWeight')
    Participant = Shapes::StructureShape.new(name: 'Participant')
    ParticipantPhoneNumberList = Shapes::ListShape.new(name: 'ParticipantPhoneNumberList')
    Participants = Shapes::ListShape.new(name: 'Participants')
    PhoneNumber = Shapes::StructureShape.new(name: 'PhoneNumber')
    PhoneNumberAssociation = Shapes::StructureShape.new(name: 'PhoneNumberAssociation')
    PhoneNumberAssociationList = Shapes::ListShape.new(name: 'PhoneNumberAssociationList')
    PhoneNumberAssociationName = Shapes::StringShape.new(name: 'PhoneNumberAssociationName')
    PhoneNumberCapabilities = Shapes::StructureShape.new(name: 'PhoneNumberCapabilities')
    PhoneNumberCountriesList = Shapes::ListShape.new(name: 'PhoneNumberCountriesList')
    PhoneNumberCountry = Shapes::StructureShape.new(name: 'PhoneNumberCountry')
    PhoneNumberError = Shapes::StructureShape.new(name: 'PhoneNumberError')
    PhoneNumberErrorList = Shapes::ListShape.new(name: 'PhoneNumberErrorList')
    PhoneNumberList = Shapes::ListShape.new(name: 'PhoneNumberList')
    PhoneNumberMaxResults = Shapes::IntegerShape.new(name: 'PhoneNumberMaxResults')
    PhoneNumberOrder = Shapes::StructureShape.new(name: 'PhoneNumberOrder')
    PhoneNumberOrderList = Shapes::ListShape.new(name: 'PhoneNumberOrderList')
    PhoneNumberOrderStatus = Shapes::StringShape.new(name: 'PhoneNumberOrderStatus')
    PhoneNumberProductType = Shapes::StringShape.new(name: 'PhoneNumberProductType')
    PhoneNumberStatus = Shapes::StringShape.new(name: 'PhoneNumberStatus')
    PhoneNumberType = Shapes::StringShape.new(name: 'PhoneNumberType')
    PhoneNumberTypeList = Shapes::ListShape.new(name: 'PhoneNumberTypeList')
    Port = Shapes::IntegerShape.new(name: 'Port')
    PositiveInteger = Shapes::IntegerShape.new(name: 'PositiveInteger')
    ProfileServiceMaxResults = Shapes::IntegerShape.new(name: 'ProfileServiceMaxResults')
    Proxy = Shapes::StructureShape.new(name: 'Proxy')
    ProxySession = Shapes::StructureShape.new(name: 'ProxySession')
    ProxySessionNameString = Shapes::StringShape.new(name: 'ProxySessionNameString')
    ProxySessionStatus = Shapes::StringShape.new(name: 'ProxySessionStatus')
    ProxySessions = Shapes::ListShape.new(name: 'ProxySessions')
    PutAppInstanceRetentionSettingsRequest = Shapes::StructureShape.new(name: 'PutAppInstanceRetentionSettingsRequest')
    PutAppInstanceRetentionSettingsResponse = Shapes::StructureShape.new(name: 'PutAppInstanceRetentionSettingsResponse')
    PutAppInstanceStreamingConfigurationsRequest = Shapes::StructureShape.new(name: 'PutAppInstanceStreamingConfigurationsRequest')
    PutAppInstanceStreamingConfigurationsResponse = Shapes::StructureShape.new(name: 'PutAppInstanceStreamingConfigurationsResponse')
    PutEventsConfigurationRequest = Shapes::StructureShape.new(name: 'PutEventsConfigurationRequest')
    PutEventsConfigurationResponse = Shapes::StructureShape.new(name: 'PutEventsConfigurationResponse')
    PutRetentionSettingsRequest = Shapes::StructureShape.new(name: 'PutRetentionSettingsRequest')
    PutRetentionSettingsResponse = Shapes::StructureShape.new(name: 'PutRetentionSettingsResponse')
    PutSipMediaApplicationLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'PutSipMediaApplicationLoggingConfigurationRequest')
    PutSipMediaApplicationLoggingConfigurationResponse = Shapes::StructureShape.new(name: 'PutSipMediaApplicationLoggingConfigurationResponse')
    PutVoiceConnectorEmergencyCallingConfigurationRequest = Shapes::StructureShape.new(name: 'PutVoiceConnectorEmergencyCallingConfigurationRequest')
    PutVoiceConnectorEmergencyCallingConfigurationResponse = Shapes::StructureShape.new(name: 'PutVoiceConnectorEmergencyCallingConfigurationResponse')
    PutVoiceConnectorLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'PutVoiceConnectorLoggingConfigurationRequest')
    PutVoiceConnectorLoggingConfigurationResponse = Shapes::StructureShape.new(name: 'PutVoiceConnectorLoggingConfigurationResponse')
    PutVoiceConnectorOriginationRequest = Shapes::StructureShape.new(name: 'PutVoiceConnectorOriginationRequest')
    PutVoiceConnectorOriginationResponse = Shapes::StructureShape.new(name: 'PutVoiceConnectorOriginationResponse')
    PutVoiceConnectorProxyRequest = Shapes::StructureShape.new(name: 'PutVoiceConnectorProxyRequest')
    PutVoiceConnectorProxyResponse = Shapes::StructureShape.new(name: 'PutVoiceConnectorProxyResponse')
    PutVoiceConnectorStreamingConfigurationRequest = Shapes::StructureShape.new(name: 'PutVoiceConnectorStreamingConfigurationRequest')
    PutVoiceConnectorStreamingConfigurationResponse = Shapes::StructureShape.new(name: 'PutVoiceConnectorStreamingConfigurationResponse')
    PutVoiceConnectorTerminationCredentialsRequest = Shapes::StructureShape.new(name: 'PutVoiceConnectorTerminationCredentialsRequest')
    PutVoiceConnectorTerminationRequest = Shapes::StructureShape.new(name: 'PutVoiceConnectorTerminationRequest')
    PutVoiceConnectorTerminationResponse = Shapes::StructureShape.new(name: 'PutVoiceConnectorTerminationResponse')
    RedactChannelMessageRequest = Shapes::StructureShape.new(name: 'RedactChannelMessageRequest')
    RedactChannelMessageResponse = Shapes::StructureShape.new(name: 'RedactChannelMessageResponse')
    RedactConversationMessageRequest = Shapes::StructureShape.new(name: 'RedactConversationMessageRequest')
    RedactConversationMessageResponse = Shapes::StructureShape.new(name: 'RedactConversationMessageResponse')
    RedactRoomMessageRequest = Shapes::StructureShape.new(name: 'RedactRoomMessageRequest')
    RedactRoomMessageResponse = Shapes::StructureShape.new(name: 'RedactRoomMessageResponse')
    RegenerateSecurityTokenRequest = Shapes::StructureShape.new(name: 'RegenerateSecurityTokenRequest')
    RegenerateSecurityTokenResponse = Shapes::StructureShape.new(name: 'RegenerateSecurityTokenResponse')
    RegistrationStatus = Shapes::StringShape.new(name: 'RegistrationStatus')
    ResetPersonalPINRequest = Shapes::StructureShape.new(name: 'ResetPersonalPINRequest')
    ResetPersonalPINResponse = Shapes::StructureShape.new(name: 'ResetPersonalPINResponse')
    ResourceLimitExceededException = Shapes::StructureShape.new(name: 'ResourceLimitExceededException')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    RestorePhoneNumberRequest = Shapes::StructureShape.new(name: 'RestorePhoneNumberRequest')
    RestorePhoneNumberResponse = Shapes::StructureShape.new(name: 'RestorePhoneNumberResponse')
    ResultMax = Shapes::IntegerShape.new(name: 'ResultMax')
    RetentionDays = Shapes::IntegerShape.new(name: 'RetentionDays')
    RetentionSettings = Shapes::StructureShape.new(name: 'RetentionSettings')
    Room = Shapes::StructureShape.new(name: 'Room')
    RoomList = Shapes::ListShape.new(name: 'RoomList')
    RoomMembership = Shapes::StructureShape.new(name: 'RoomMembership')
    RoomMembershipList = Shapes::ListShape.new(name: 'RoomMembershipList')
    RoomMembershipRole = Shapes::StringShape.new(name: 'RoomMembershipRole')
    RoomRetentionSettings = Shapes::StructureShape.new(name: 'RoomRetentionSettings')
    SMAUpdateCallArgumentsMap = Shapes::MapShape.new(name: 'SMAUpdateCallArgumentsMap')
    SearchAvailablePhoneNumbersRequest = Shapes::StructureShape.new(name: 'SearchAvailablePhoneNumbersRequest')
    SearchAvailablePhoneNumbersResponse = Shapes::StructureShape.new(name: 'SearchAvailablePhoneNumbersResponse')
    SelectedVideoStreams = Shapes::StructureShape.new(name: 'SelectedVideoStreams')
    SendChannelMessageRequest = Shapes::StructureShape.new(name: 'SendChannelMessageRequest')
    SendChannelMessageResponse = Shapes::StructureShape.new(name: 'SendChannelMessageResponse')
    SensitiveNonEmptyString = Shapes::StringShape.new(name: 'SensitiveNonEmptyString')
    SensitiveString = Shapes::StringShape.new(name: 'SensitiveString')
    SensitiveStringList = Shapes::ListShape.new(name: 'SensitiveStringList')
    ServiceFailureException = Shapes::StructureShape.new(name: 'ServiceFailureException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SigninDelegateGroup = Shapes::StructureShape.new(name: 'SigninDelegateGroup')
    SigninDelegateGroupList = Shapes::ListShape.new(name: 'SigninDelegateGroupList')
    SipApplicationPriority = Shapes::IntegerShape.new(name: 'SipApplicationPriority')
    SipHeadersMap = Shapes::MapShape.new(name: 'SipHeadersMap')
    SipMediaApplication = Shapes::StructureShape.new(name: 'SipMediaApplication')
    SipMediaApplicationCall = Shapes::StructureShape.new(name: 'SipMediaApplicationCall')
    SipMediaApplicationEndpoint = Shapes::StructureShape.new(name: 'SipMediaApplicationEndpoint')
    SipMediaApplicationEndpointList = Shapes::ListShape.new(name: 'SipMediaApplicationEndpointList')
    SipMediaApplicationList = Shapes::ListShape.new(name: 'SipMediaApplicationList')
    SipMediaApplicationLoggingConfiguration = Shapes::StructureShape.new(name: 'SipMediaApplicationLoggingConfiguration')
    SipMediaApplicationName = Shapes::StringShape.new(name: 'SipMediaApplicationName')
    SipRule = Shapes::StructureShape.new(name: 'SipRule')
    SipRuleList = Shapes::ListShape.new(name: 'SipRuleList')
    SipRuleName = Shapes::StringShape.new(name: 'SipRuleName')
    SipRuleTargetApplication = Shapes::StructureShape.new(name: 'SipRuleTargetApplication')
    SipRuleTargetApplicationList = Shapes::ListShape.new(name: 'SipRuleTargetApplicationList')
    SipRuleTriggerType = Shapes::StringShape.new(name: 'SipRuleTriggerType')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    SourceConfiguration = Shapes::StructureShape.new(name: 'SourceConfiguration')
    StartMeetingTranscriptionRequest = Shapes::StructureShape.new(name: 'StartMeetingTranscriptionRequest')
    StartMeetingTranscriptionResponse = Shapes::StructureShape.new(name: 'StartMeetingTranscriptionResponse')
    StopMeetingTranscriptionRequest = Shapes::StructureShape.new(name: 'StopMeetingTranscriptionRequest')
    StopMeetingTranscriptionResponse = Shapes::StructureShape.new(name: 'StopMeetingTranscriptionResponse')
    StreamingConfiguration = Shapes::StructureShape.new(name: 'StreamingConfiguration')
    StreamingNotificationTarget = Shapes::StructureShape.new(name: 'StreamingNotificationTarget')
    StreamingNotificationTargetList = Shapes::ListShape.new(name: 'StreamingNotificationTargetList')
    String = Shapes::StringShape.new(name: 'String')
    String128 = Shapes::StringShape.new(name: 'String128')
    StringList = Shapes::ListShape.new(name: 'StringList')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagAttendeeRequest = Shapes::StructureShape.new(name: 'TagAttendeeRequest')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagMeetingRequest = Shapes::StructureShape.new(name: 'TagMeetingRequest')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TelephonySettings = Shapes::StructureShape.new(name: 'TelephonySettings')
    Termination = Shapes::StructureShape.new(name: 'Termination')
    TerminationHealth = Shapes::StructureShape.new(name: 'TerminationHealth')
    ThrottledClientException = Shapes::StructureShape.new(name: 'ThrottledClientException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TollFreePrefix = Shapes::StringShape.new(name: 'TollFreePrefix')
    TranscribeContentIdentificationType = Shapes::StringShape.new(name: 'TranscribeContentIdentificationType')
    TranscribeContentRedactionType = Shapes::StringShape.new(name: 'TranscribeContentRedactionType')
    TranscribeLanguageCode = Shapes::StringShape.new(name: 'TranscribeLanguageCode')
    TranscribeLanguageModelName = Shapes::StringShape.new(name: 'TranscribeLanguageModelName')
    TranscribeLanguageOptions = Shapes::StringShape.new(name: 'TranscribeLanguageOptions')
    TranscribeMedicalContentIdentificationType = Shapes::StringShape.new(name: 'TranscribeMedicalContentIdentificationType')
    TranscribeMedicalLanguageCode = Shapes::StringShape.new(name: 'TranscribeMedicalLanguageCode')
    TranscribeMedicalRegion = Shapes::StringShape.new(name: 'TranscribeMedicalRegion')
    TranscribeMedicalSpecialty = Shapes::StringShape.new(name: 'TranscribeMedicalSpecialty')
    TranscribeMedicalType = Shapes::StringShape.new(name: 'TranscribeMedicalType')
    TranscribePartialResultsStability = Shapes::StringShape.new(name: 'TranscribePartialResultsStability')
    TranscribePiiEntityTypes = Shapes::StringShape.new(name: 'TranscribePiiEntityTypes')
    TranscribeRegion = Shapes::StringShape.new(name: 'TranscribeRegion')
    TranscribeVocabularyFilterMethod = Shapes::StringShape.new(name: 'TranscribeVocabularyFilterMethod')
    TranscribeVocabularyNamesOrFilterNamesString = Shapes::StringShape.new(name: 'TranscribeVocabularyNamesOrFilterNamesString')
    TranscriptionConfiguration = Shapes::StructureShape.new(name: 'TranscriptionConfiguration')
    UnauthorizedClientException = Shapes::StructureShape.new(name: 'UnauthorizedClientException')
    UnprocessableEntityException = Shapes::StructureShape.new(name: 'UnprocessableEntityException')
    UntagAttendeeRequest = Shapes::StructureShape.new(name: 'UntagAttendeeRequest')
    UntagMeetingRequest = Shapes::StructureShape.new(name: 'UntagMeetingRequest')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateAccountRequest = Shapes::StructureShape.new(name: 'UpdateAccountRequest')
    UpdateAccountResponse = Shapes::StructureShape.new(name: 'UpdateAccountResponse')
    UpdateAccountSettingsRequest = Shapes::StructureShape.new(name: 'UpdateAccountSettingsRequest')
    UpdateAccountSettingsResponse = Shapes::StructureShape.new(name: 'UpdateAccountSettingsResponse')
    UpdateAppInstanceRequest = Shapes::StructureShape.new(name: 'UpdateAppInstanceRequest')
    UpdateAppInstanceResponse = Shapes::StructureShape.new(name: 'UpdateAppInstanceResponse')
    UpdateAppInstanceUserRequest = Shapes::StructureShape.new(name: 'UpdateAppInstanceUserRequest')
    UpdateAppInstanceUserResponse = Shapes::StructureShape.new(name: 'UpdateAppInstanceUserResponse')
    UpdateBotRequest = Shapes::StructureShape.new(name: 'UpdateBotRequest')
    UpdateBotResponse = Shapes::StructureShape.new(name: 'UpdateBotResponse')
    UpdateChannelMessageRequest = Shapes::StructureShape.new(name: 'UpdateChannelMessageRequest')
    UpdateChannelMessageResponse = Shapes::StructureShape.new(name: 'UpdateChannelMessageResponse')
    UpdateChannelReadMarkerRequest = Shapes::StructureShape.new(name: 'UpdateChannelReadMarkerRequest')
    UpdateChannelReadMarkerResponse = Shapes::StructureShape.new(name: 'UpdateChannelReadMarkerResponse')
    UpdateChannelRequest = Shapes::StructureShape.new(name: 'UpdateChannelRequest')
    UpdateChannelResponse = Shapes::StructureShape.new(name: 'UpdateChannelResponse')
    UpdateGlobalSettingsRequest = Shapes::StructureShape.new(name: 'UpdateGlobalSettingsRequest')
    UpdatePhoneNumberRequest = Shapes::StructureShape.new(name: 'UpdatePhoneNumberRequest')
    UpdatePhoneNumberRequestItem = Shapes::StructureShape.new(name: 'UpdatePhoneNumberRequestItem')
    UpdatePhoneNumberRequestItemList = Shapes::ListShape.new(name: 'UpdatePhoneNumberRequestItemList')
    UpdatePhoneNumberResponse = Shapes::StructureShape.new(name: 'UpdatePhoneNumberResponse')
    UpdatePhoneNumberSettingsRequest = Shapes::StructureShape.new(name: 'UpdatePhoneNumberSettingsRequest')
    UpdateProxySessionRequest = Shapes::StructureShape.new(name: 'UpdateProxySessionRequest')
    UpdateProxySessionResponse = Shapes::StructureShape.new(name: 'UpdateProxySessionResponse')
    UpdateRoomMembershipRequest = Shapes::StructureShape.new(name: 'UpdateRoomMembershipRequest')
    UpdateRoomMembershipResponse = Shapes::StructureShape.new(name: 'UpdateRoomMembershipResponse')
    UpdateRoomRequest = Shapes::StructureShape.new(name: 'UpdateRoomRequest')
    UpdateRoomResponse = Shapes::StructureShape.new(name: 'UpdateRoomResponse')
    UpdateSipMediaApplicationCallRequest = Shapes::StructureShape.new(name: 'UpdateSipMediaApplicationCallRequest')
    UpdateSipMediaApplicationCallResponse = Shapes::StructureShape.new(name: 'UpdateSipMediaApplicationCallResponse')
    UpdateSipMediaApplicationRequest = Shapes::StructureShape.new(name: 'UpdateSipMediaApplicationRequest')
    UpdateSipMediaApplicationResponse = Shapes::StructureShape.new(name: 'UpdateSipMediaApplicationResponse')
    UpdateSipRuleRequest = Shapes::StructureShape.new(name: 'UpdateSipRuleRequest')
    UpdateSipRuleResponse = Shapes::StructureShape.new(name: 'UpdateSipRuleResponse')
    UpdateUserRequest = Shapes::StructureShape.new(name: 'UpdateUserRequest')
    UpdateUserRequestItem = Shapes::StructureShape.new(name: 'UpdateUserRequestItem')
    UpdateUserRequestItemList = Shapes::ListShape.new(name: 'UpdateUserRequestItemList')
    UpdateUserResponse = Shapes::StructureShape.new(name: 'UpdateUserResponse')
    UpdateUserSettingsRequest = Shapes::StructureShape.new(name: 'UpdateUserSettingsRequest')
    UpdateVoiceConnectorGroupRequest = Shapes::StructureShape.new(name: 'UpdateVoiceConnectorGroupRequest')
    UpdateVoiceConnectorGroupResponse = Shapes::StructureShape.new(name: 'UpdateVoiceConnectorGroupResponse')
    UpdateVoiceConnectorRequest = Shapes::StructureShape.new(name: 'UpdateVoiceConnectorRequest')
    UpdateVoiceConnectorResponse = Shapes::StructureShape.new(name: 'UpdateVoiceConnectorResponse')
    UriType = Shapes::StringShape.new(name: 'UriType')
    UrlType = Shapes::StringShape.new(name: 'UrlType')
    User = Shapes::StructureShape.new(name: 'User')
    UserEmailList = Shapes::ListShape.new(name: 'UserEmailList')
    UserError = Shapes::StructureShape.new(name: 'UserError')
    UserErrorList = Shapes::ListShape.new(name: 'UserErrorList')
    UserId = Shapes::StringShape.new(name: 'UserId')
    UserIdList = Shapes::ListShape.new(name: 'UserIdList')
    UserList = Shapes::ListShape.new(name: 'UserList')
    UserName = Shapes::StringShape.new(name: 'UserName')
    UserSettings = Shapes::StructureShape.new(name: 'UserSettings')
    UserType = Shapes::StringShape.new(name: 'UserType')
    ValidateE911AddressRequest = Shapes::StructureShape.new(name: 'ValidateE911AddressRequest')
    ValidateE911AddressResponse = Shapes::StructureShape.new(name: 'ValidateE911AddressResponse')
    ValidationResult = Shapes::IntegerShape.new(name: 'ValidationResult')
    VideoArtifactsConfiguration = Shapes::StructureShape.new(name: 'VideoArtifactsConfiguration')
    VideoMuxType = Shapes::StringShape.new(name: 'VideoMuxType')
    VoiceConnector = Shapes::StructureShape.new(name: 'VoiceConnector')
    VoiceConnectorAwsRegion = Shapes::StringShape.new(name: 'VoiceConnectorAwsRegion')
    VoiceConnectorGroup = Shapes::StructureShape.new(name: 'VoiceConnectorGroup')
    VoiceConnectorGroupList = Shapes::ListShape.new(name: 'VoiceConnectorGroupList')
    VoiceConnectorGroupName = Shapes::StringShape.new(name: 'VoiceConnectorGroupName')
    VoiceConnectorItem = Shapes::StructureShape.new(name: 'VoiceConnectorItem')
    VoiceConnectorItemList = Shapes::ListShape.new(name: 'VoiceConnectorItemList')
    VoiceConnectorItemPriority = Shapes::IntegerShape.new(name: 'VoiceConnectorItemPriority')
    VoiceConnectorList = Shapes::ListShape.new(name: 'VoiceConnectorList')
    VoiceConnectorName = Shapes::StringShape.new(name: 'VoiceConnectorName')
    VoiceConnectorSettings = Shapes::StructureShape.new(name: 'VoiceConnectorSettings')

    AccessDeniedException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    Account.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "AwsAccountId"))
    Account.add_member(:account_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "AccountId"))
    Account.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    Account.add_member(:account_type, Shapes::ShapeRef.new(shape: AccountType, location_name: "AccountType"))
    Account.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    Account.add_member(:default_license, Shapes::ShapeRef.new(shape: License, location_name: "DefaultLicense"))
    Account.add_member(:supported_licenses, Shapes::ShapeRef.new(shape: LicenseList, location_name: "SupportedLicenses"))
    Account.add_member(:account_status, Shapes::ShapeRef.new(shape: AccountStatus, location_name: "AccountStatus"))
    Account.add_member(:signin_delegate_groups, Shapes::ShapeRef.new(shape: SigninDelegateGroupList, location_name: "SigninDelegateGroups"))
    Account.struct_class = Types::Account

    AccountList.member = Shapes::ShapeRef.new(shape: Account)

    AccountSettings.add_member(:disable_remote_control, Shapes::ShapeRef.new(shape: Boolean, location_name: "DisableRemoteControl"))
    AccountSettings.add_member(:enable_dial_out, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableDialOut"))
    AccountSettings.struct_class = Types::AccountSettings

    Address.add_member(:street_name, Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: "streetName"))
    Address.add_member(:street_suffix, Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: "streetSuffix"))
    Address.add_member(:post_directional, Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: "postDirectional"))
    Address.add_member(:pre_directional, Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: "preDirectional"))
    Address.add_member(:street_number, Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: "streetNumber"))
    Address.add_member(:city, Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: "city"))
    Address.add_member(:state, Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: "state"))
    Address.add_member(:postal_code, Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: "postalCode"))
    Address.add_member(:postal_code_plus_4, Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: "postalCodePlus4"))
    Address.add_member(:country, Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: "country"))
    Address.struct_class = Types::Address

    AlexaForBusinessMetadata.add_member(:is_alexa_for_business_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsAlexaForBusinessEnabled"))
    AlexaForBusinessMetadata.add_member(:alexa_for_business_room_arn, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "AlexaForBusinessRoomArn"))
    AlexaForBusinessMetadata.struct_class = Types::AlexaForBusinessMetadata

    AppInstance.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "AppInstanceArn"))
    AppInstance.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyResourceName, location_name: "Name"))
    AppInstance.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    AppInstance.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    AppInstance.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTimestamp"))
    AppInstance.struct_class = Types::AppInstance

    AppInstanceAdmin.add_member(:admin, Shapes::ShapeRef.new(shape: Identity, location_name: "Admin"))
    AppInstanceAdmin.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "AppInstanceArn"))
    AppInstanceAdmin.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    AppInstanceAdmin.struct_class = Types::AppInstanceAdmin

    AppInstanceAdminList.member = Shapes::ShapeRef.new(shape: AppInstanceAdminSummary)

    AppInstanceAdminSummary.add_member(:admin, Shapes::ShapeRef.new(shape: Identity, location_name: "Admin"))
    AppInstanceAdminSummary.struct_class = Types::AppInstanceAdminSummary

    AppInstanceList.member = Shapes::ShapeRef.new(shape: AppInstanceSummary)

    AppInstanceRetentionSettings.add_member(:channel_retention_settings, Shapes::ShapeRef.new(shape: ChannelRetentionSettings, location_name: "ChannelRetentionSettings"))
    AppInstanceRetentionSettings.struct_class = Types::AppInstanceRetentionSettings

    AppInstanceStreamingConfiguration.add_member(:app_instance_data_type, Shapes::ShapeRef.new(shape: AppInstanceDataType, required: true, location_name: "AppInstanceDataType"))
    AppInstanceStreamingConfiguration.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceArn"))
    AppInstanceStreamingConfiguration.struct_class = Types::AppInstanceStreamingConfiguration

    AppInstanceStreamingConfigurationList.member = Shapes::ShapeRef.new(shape: AppInstanceStreamingConfiguration)

    AppInstanceSummary.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "AppInstanceArn"))
    AppInstanceSummary.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyResourceName, location_name: "Name"))
    AppInstanceSummary.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    AppInstanceSummary.struct_class = Types::AppInstanceSummary

    AppInstanceUser.add_member(:app_instance_user_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "AppInstanceUserArn"))
    AppInstanceUser.add_member(:name, Shapes::ShapeRef.new(shape: UserName, location_name: "Name"))
    AppInstanceUser.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    AppInstanceUser.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    AppInstanceUser.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTimestamp"))
    AppInstanceUser.struct_class = Types::AppInstanceUser

    AppInstanceUserList.member = Shapes::ShapeRef.new(shape: AppInstanceUserSummary)

    AppInstanceUserMembershipSummary.add_member(:type, Shapes::ShapeRef.new(shape: ChannelMembershipType, location_name: "Type"))
    AppInstanceUserMembershipSummary.add_member(:read_marker_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ReadMarkerTimestamp"))
    AppInstanceUserMembershipSummary.struct_class = Types::AppInstanceUserMembershipSummary

    AppInstanceUserSummary.add_member(:app_instance_user_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "AppInstanceUserArn"))
    AppInstanceUserSummary.add_member(:name, Shapes::ShapeRef.new(shape: UserName, location_name: "Name"))
    AppInstanceUserSummary.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    AppInstanceUserSummary.struct_class = Types::AppInstanceUserSummary

    ArtifactsConfiguration.add_member(:audio, Shapes::ShapeRef.new(shape: AudioArtifactsConfiguration, required: true, location_name: "Audio"))
    ArtifactsConfiguration.add_member(:video, Shapes::ShapeRef.new(shape: VideoArtifactsConfiguration, required: true, location_name: "Video"))
    ArtifactsConfiguration.add_member(:content, Shapes::ShapeRef.new(shape: ContentArtifactsConfiguration, required: true, location_name: "Content"))
    ArtifactsConfiguration.struct_class = Types::ArtifactsConfiguration

    AssociatePhoneNumberWithUserRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "accountId"))
    AssociatePhoneNumberWithUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "userId"))
    AssociatePhoneNumberWithUserRequest.add_member(:e164_phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, required: true, location_name: "E164PhoneNumber"))
    AssociatePhoneNumberWithUserRequest.struct_class = Types::AssociatePhoneNumberWithUserRequest

    AssociatePhoneNumberWithUserResponse.struct_class = Types::AssociatePhoneNumberWithUserResponse

    AssociatePhoneNumbersWithVoiceConnectorGroupRequest.add_member(:voice_connector_group_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorGroupId"))
    AssociatePhoneNumbersWithVoiceConnectorGroupRequest.add_member(:e164_phone_numbers, Shapes::ShapeRef.new(shape: E164PhoneNumberList, required: true, location_name: "E164PhoneNumbers"))
    AssociatePhoneNumbersWithVoiceConnectorGroupRequest.add_member(:force_associate, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "ForceAssociate"))
    AssociatePhoneNumbersWithVoiceConnectorGroupRequest.struct_class = Types::AssociatePhoneNumbersWithVoiceConnectorGroupRequest

    AssociatePhoneNumbersWithVoiceConnectorGroupResponse.add_member(:phone_number_errors, Shapes::ShapeRef.new(shape: PhoneNumberErrorList, location_name: "PhoneNumberErrors"))
    AssociatePhoneNumbersWithVoiceConnectorGroupResponse.struct_class = Types::AssociatePhoneNumbersWithVoiceConnectorGroupResponse

    AssociatePhoneNumbersWithVoiceConnectorRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    AssociatePhoneNumbersWithVoiceConnectorRequest.add_member(:e164_phone_numbers, Shapes::ShapeRef.new(shape: E164PhoneNumberList, required: true, location_name: "E164PhoneNumbers"))
    AssociatePhoneNumbersWithVoiceConnectorRequest.add_member(:force_associate, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "ForceAssociate"))
    AssociatePhoneNumbersWithVoiceConnectorRequest.struct_class = Types::AssociatePhoneNumbersWithVoiceConnectorRequest

    AssociatePhoneNumbersWithVoiceConnectorResponse.add_member(:phone_number_errors, Shapes::ShapeRef.new(shape: PhoneNumberErrorList, location_name: "PhoneNumberErrors"))
    AssociatePhoneNumbersWithVoiceConnectorResponse.struct_class = Types::AssociatePhoneNumbersWithVoiceConnectorResponse

    AssociateSigninDelegateGroupsWithAccountRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    AssociateSigninDelegateGroupsWithAccountRequest.add_member(:signin_delegate_groups, Shapes::ShapeRef.new(shape: SigninDelegateGroupList, required: true, location_name: "SigninDelegateGroups"))
    AssociateSigninDelegateGroupsWithAccountRequest.struct_class = Types::AssociateSigninDelegateGroupsWithAccountRequest

    AssociateSigninDelegateGroupsWithAccountResponse.struct_class = Types::AssociateSigninDelegateGroupsWithAccountResponse

    Attendee.add_member(:external_user_id, Shapes::ShapeRef.new(shape: ExternalUserIdType, location_name: "ExternalUserId"))
    Attendee.add_member(:attendee_id, Shapes::ShapeRef.new(shape: GuidString, location_name: "AttendeeId"))
    Attendee.add_member(:join_token, Shapes::ShapeRef.new(shape: JoinTokenString, location_name: "JoinToken"))
    Attendee.struct_class = Types::Attendee

    AttendeeIdList.member = Shapes::ShapeRef.new(shape: GuidString)

    AttendeeList.member = Shapes::ShapeRef.new(shape: Attendee)

    AttendeeTagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    AttendeeTagList.member = Shapes::ShapeRef.new(shape: Tag)

    AudioArtifactsConfiguration.add_member(:mux_type, Shapes::ShapeRef.new(shape: AudioMuxType, required: true, location_name: "MuxType"))
    AudioArtifactsConfiguration.struct_class = Types::AudioArtifactsConfiguration

    BadRequestException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    BadRequestException.struct_class = Types::BadRequestException

    BatchChannelMemberships.add_member(:invited_by, Shapes::ShapeRef.new(shape: Identity, location_name: "InvitedBy"))
    BatchChannelMemberships.add_member(:type, Shapes::ShapeRef.new(shape: ChannelMembershipType, location_name: "Type"))
    BatchChannelMemberships.add_member(:members, Shapes::ShapeRef.new(shape: Members, location_name: "Members"))
    BatchChannelMemberships.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    BatchChannelMemberships.struct_class = Types::BatchChannelMemberships

    BatchCreateAttendeeErrorList.member = Shapes::ShapeRef.new(shape: CreateAttendeeError)

    BatchCreateAttendeeRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "meetingId"))
    BatchCreateAttendeeRequest.add_member(:attendees, Shapes::ShapeRef.new(shape: CreateAttendeeRequestItemList, required: true, location_name: "Attendees"))
    BatchCreateAttendeeRequest.struct_class = Types::BatchCreateAttendeeRequest

    BatchCreateAttendeeResponse.add_member(:attendees, Shapes::ShapeRef.new(shape: AttendeeList, location_name: "Attendees"))
    BatchCreateAttendeeResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchCreateAttendeeErrorList, location_name: "Errors"))
    BatchCreateAttendeeResponse.struct_class = Types::BatchCreateAttendeeResponse

    BatchCreateChannelMembershipError.add_member(:member_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "MemberArn"))
    BatchCreateChannelMembershipError.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    BatchCreateChannelMembershipError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    BatchCreateChannelMembershipError.struct_class = Types::BatchCreateChannelMembershipError

    BatchCreateChannelMembershipErrors.member = Shapes::ShapeRef.new(shape: BatchCreateChannelMembershipError)

    BatchCreateChannelMembershipRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    BatchCreateChannelMembershipRequest.add_member(:type, Shapes::ShapeRef.new(shape: ChannelMembershipType, location_name: "Type"))
    BatchCreateChannelMembershipRequest.add_member(:member_arns, Shapes::ShapeRef.new(shape: MemberArns, required: true, location_name: "MemberArns"))
    BatchCreateChannelMembershipRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, location: "header", location_name: "x-amz-chime-bearer"))
    BatchCreateChannelMembershipRequest.struct_class = Types::BatchCreateChannelMembershipRequest

    BatchCreateChannelMembershipResponse.add_member(:batch_channel_memberships, Shapes::ShapeRef.new(shape: BatchChannelMemberships, location_name: "BatchChannelMemberships"))
    BatchCreateChannelMembershipResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchCreateChannelMembershipErrors, location_name: "Errors"))
    BatchCreateChannelMembershipResponse.struct_class = Types::BatchCreateChannelMembershipResponse

    BatchCreateRoomMembershipRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    BatchCreateRoomMembershipRequest.add_member(:room_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "roomId"))
    BatchCreateRoomMembershipRequest.add_member(:membership_item_list, Shapes::ShapeRef.new(shape: MembershipItemList, required: true, location_name: "MembershipItemList"))
    BatchCreateRoomMembershipRequest.struct_class = Types::BatchCreateRoomMembershipRequest

    BatchCreateRoomMembershipResponse.add_member(:errors, Shapes::ShapeRef.new(shape: MemberErrorList, location_name: "Errors"))
    BatchCreateRoomMembershipResponse.struct_class = Types::BatchCreateRoomMembershipResponse

    BatchDeletePhoneNumberRequest.add_member(:phone_number_ids, Shapes::ShapeRef.new(shape: NonEmptyStringList, required: true, location_name: "PhoneNumberIds"))
    BatchDeletePhoneNumberRequest.struct_class = Types::BatchDeletePhoneNumberRequest

    BatchDeletePhoneNumberResponse.add_member(:phone_number_errors, Shapes::ShapeRef.new(shape: PhoneNumberErrorList, location_name: "PhoneNumberErrors"))
    BatchDeletePhoneNumberResponse.struct_class = Types::BatchDeletePhoneNumberResponse

    BatchSuspendUserRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    BatchSuspendUserRequest.add_member(:user_id_list, Shapes::ShapeRef.new(shape: UserIdList, required: true, location_name: "UserIdList"))
    BatchSuspendUserRequest.struct_class = Types::BatchSuspendUserRequest

    BatchSuspendUserResponse.add_member(:user_errors, Shapes::ShapeRef.new(shape: UserErrorList, location_name: "UserErrors"))
    BatchSuspendUserResponse.struct_class = Types::BatchSuspendUserResponse

    BatchUnsuspendUserRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    BatchUnsuspendUserRequest.add_member(:user_id_list, Shapes::ShapeRef.new(shape: UserIdList, required: true, location_name: "UserIdList"))
    BatchUnsuspendUserRequest.struct_class = Types::BatchUnsuspendUserRequest

    BatchUnsuspendUserResponse.add_member(:user_errors, Shapes::ShapeRef.new(shape: UserErrorList, location_name: "UserErrors"))
    BatchUnsuspendUserResponse.struct_class = Types::BatchUnsuspendUserResponse

    BatchUpdatePhoneNumberRequest.add_member(:update_phone_number_request_items, Shapes::ShapeRef.new(shape: UpdatePhoneNumberRequestItemList, required: true, location_name: "UpdatePhoneNumberRequestItems"))
    BatchUpdatePhoneNumberRequest.struct_class = Types::BatchUpdatePhoneNumberRequest

    BatchUpdatePhoneNumberResponse.add_member(:phone_number_errors, Shapes::ShapeRef.new(shape: PhoneNumberErrorList, location_name: "PhoneNumberErrors"))
    BatchUpdatePhoneNumberResponse.struct_class = Types::BatchUpdatePhoneNumberResponse

    BatchUpdateUserRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    BatchUpdateUserRequest.add_member(:update_user_request_items, Shapes::ShapeRef.new(shape: UpdateUserRequestItemList, required: true, location_name: "UpdateUserRequestItems"))
    BatchUpdateUserRequest.struct_class = Types::BatchUpdateUserRequest

    BatchUpdateUserResponse.add_member(:user_errors, Shapes::ShapeRef.new(shape: UserErrorList, location_name: "UserErrors"))
    BatchUpdateUserResponse.struct_class = Types::BatchUpdateUserResponse

    Bot.add_member(:bot_id, Shapes::ShapeRef.new(shape: String, location_name: "BotId"))
    Bot.add_member(:user_id, Shapes::ShapeRef.new(shape: String, location_name: "UserId"))
    Bot.add_member(:display_name, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "DisplayName"))
    Bot.add_member(:bot_type, Shapes::ShapeRef.new(shape: BotType, location_name: "BotType"))
    Bot.add_member(:disabled, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "Disabled"))
    Bot.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    Bot.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "UpdatedTimestamp"))
    Bot.add_member(:bot_email, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "BotEmail"))
    Bot.add_member(:security_token, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "SecurityToken"))
    Bot.struct_class = Types::Bot

    BotList.member = Shapes::ShapeRef.new(shape: Bot)

    BusinessCallingSettings.add_member(:cdr_bucket, Shapes::ShapeRef.new(shape: String, location_name: "CdrBucket", metadata: {"box"=>true}))
    BusinessCallingSettings.struct_class = Types::BusinessCallingSettings

    CallingRegionList.member = Shapes::ShapeRef.new(shape: CallingRegion)

    CandidateAddress.add_member(:street_info, Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: "streetInfo"))
    CandidateAddress.add_member(:street_number, Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: "streetNumber"))
    CandidateAddress.add_member(:city, Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: "city"))
    CandidateAddress.add_member(:state, Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: "state"))
    CandidateAddress.add_member(:postal_code, Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: "postalCode"))
    CandidateAddress.add_member(:postal_code_plus_4, Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: "postalCodePlus4"))
    CandidateAddress.add_member(:country, Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: "country"))
    CandidateAddress.struct_class = Types::CandidateAddress

    CandidateAddressList.member = Shapes::ShapeRef.new(shape: CandidateAddress)

    CapabilityList.member = Shapes::ShapeRef.new(shape: Capability)

    Channel.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyResourceName, location_name: "Name"))
    Channel.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    Channel.add_member(:mode, Shapes::ShapeRef.new(shape: ChannelMode, location_name: "Mode"))
    Channel.add_member(:privacy, Shapes::ShapeRef.new(shape: ChannelPrivacy, location_name: "Privacy"))
    Channel.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    Channel.add_member(:created_by, Shapes::ShapeRef.new(shape: Identity, location_name: "CreatedBy"))
    Channel.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    Channel.add_member(:last_message_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastMessageTimestamp"))
    Channel.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTimestamp"))
    Channel.struct_class = Types::Channel

    ChannelBan.add_member(:member, Shapes::ShapeRef.new(shape: Identity, location_name: "Member"))
    ChannelBan.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    ChannelBan.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    ChannelBan.add_member(:created_by, Shapes::ShapeRef.new(shape: Identity, location_name: "CreatedBy"))
    ChannelBan.struct_class = Types::ChannelBan

    ChannelBanSummary.add_member(:member, Shapes::ShapeRef.new(shape: Identity, location_name: "Member"))
    ChannelBanSummary.struct_class = Types::ChannelBanSummary

    ChannelBanSummaryList.member = Shapes::ShapeRef.new(shape: ChannelBanSummary)

    ChannelMembership.add_member(:invited_by, Shapes::ShapeRef.new(shape: Identity, location_name: "InvitedBy"))
    ChannelMembership.add_member(:type, Shapes::ShapeRef.new(shape: ChannelMembershipType, location_name: "Type"))
    ChannelMembership.add_member(:member, Shapes::ShapeRef.new(shape: Identity, location_name: "Member"))
    ChannelMembership.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    ChannelMembership.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    ChannelMembership.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTimestamp"))
    ChannelMembership.struct_class = Types::ChannelMembership

    ChannelMembershipForAppInstanceUserSummary.add_member(:channel_summary, Shapes::ShapeRef.new(shape: ChannelSummary, location_name: "ChannelSummary"))
    ChannelMembershipForAppInstanceUserSummary.add_member(:app_instance_user_membership_summary, Shapes::ShapeRef.new(shape: AppInstanceUserMembershipSummary, location_name: "AppInstanceUserMembershipSummary"))
    ChannelMembershipForAppInstanceUserSummary.struct_class = Types::ChannelMembershipForAppInstanceUserSummary

    ChannelMembershipForAppInstanceUserSummaryList.member = Shapes::ShapeRef.new(shape: ChannelMembershipForAppInstanceUserSummary)

    ChannelMembershipSummary.add_member(:member, Shapes::ShapeRef.new(shape: Identity, location_name: "Member"))
    ChannelMembershipSummary.struct_class = Types::ChannelMembershipSummary

    ChannelMembershipSummaryList.member = Shapes::ShapeRef.new(shape: ChannelMembershipSummary)

    ChannelMessage.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    ChannelMessage.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, location_name: "MessageId"))
    ChannelMessage.add_member(:content, Shapes::ShapeRef.new(shape: Content, location_name: "Content"))
    ChannelMessage.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    ChannelMessage.add_member(:type, Shapes::ShapeRef.new(shape: ChannelMessageType, location_name: "Type"))
    ChannelMessage.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    ChannelMessage.add_member(:last_edited_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastEditedTimestamp"))
    ChannelMessage.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTimestamp"))
    ChannelMessage.add_member(:sender, Shapes::ShapeRef.new(shape: Identity, location_name: "Sender"))
    ChannelMessage.add_member(:redacted, Shapes::ShapeRef.new(shape: NonNullableBoolean, location_name: "Redacted"))
    ChannelMessage.add_member(:persistence, Shapes::ShapeRef.new(shape: ChannelMessagePersistenceType, location_name: "Persistence"))
    ChannelMessage.struct_class = Types::ChannelMessage

    ChannelMessageSummary.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, location_name: "MessageId"))
    ChannelMessageSummary.add_member(:content, Shapes::ShapeRef.new(shape: Content, location_name: "Content"))
    ChannelMessageSummary.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    ChannelMessageSummary.add_member(:type, Shapes::ShapeRef.new(shape: ChannelMessageType, location_name: "Type"))
    ChannelMessageSummary.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    ChannelMessageSummary.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTimestamp"))
    ChannelMessageSummary.add_member(:last_edited_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastEditedTimestamp"))
    ChannelMessageSummary.add_member(:sender, Shapes::ShapeRef.new(shape: Identity, location_name: "Sender"))
    ChannelMessageSummary.add_member(:redacted, Shapes::ShapeRef.new(shape: NonNullableBoolean, location_name: "Redacted"))
    ChannelMessageSummary.struct_class = Types::ChannelMessageSummary

    ChannelMessageSummaryList.member = Shapes::ShapeRef.new(shape: ChannelMessageSummary)

    ChannelModeratedByAppInstanceUserSummary.add_member(:channel_summary, Shapes::ShapeRef.new(shape: ChannelSummary, location_name: "ChannelSummary"))
    ChannelModeratedByAppInstanceUserSummary.struct_class = Types::ChannelModeratedByAppInstanceUserSummary

    ChannelModeratedByAppInstanceUserSummaryList.member = Shapes::ShapeRef.new(shape: ChannelModeratedByAppInstanceUserSummary)

    ChannelModerator.add_member(:moderator, Shapes::ShapeRef.new(shape: Identity, location_name: "Moderator"))
    ChannelModerator.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    ChannelModerator.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    ChannelModerator.add_member(:created_by, Shapes::ShapeRef.new(shape: Identity, location_name: "CreatedBy"))
    ChannelModerator.struct_class = Types::ChannelModerator

    ChannelModeratorSummary.add_member(:moderator, Shapes::ShapeRef.new(shape: Identity, location_name: "Moderator"))
    ChannelModeratorSummary.struct_class = Types::ChannelModeratorSummary

    ChannelModeratorSummaryList.member = Shapes::ShapeRef.new(shape: ChannelModeratorSummary)

    ChannelRetentionSettings.add_member(:retention_days, Shapes::ShapeRef.new(shape: RetentionDays, location_name: "RetentionDays"))
    ChannelRetentionSettings.struct_class = Types::ChannelRetentionSettings

    ChannelSummary.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyResourceName, location_name: "Name"))
    ChannelSummary.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    ChannelSummary.add_member(:mode, Shapes::ShapeRef.new(shape: ChannelMode, location_name: "Mode"))
    ChannelSummary.add_member(:privacy, Shapes::ShapeRef.new(shape: ChannelPrivacy, location_name: "Privacy"))
    ChannelSummary.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    ChannelSummary.add_member(:last_message_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastMessageTimestamp"))
    ChannelSummary.struct_class = Types::ChannelSummary

    ChannelSummaryList.member = Shapes::ShapeRef.new(shape: ChannelSummary)

    ChimeSdkMeetingConfiguration.add_member(:source_configuration, Shapes::ShapeRef.new(shape: SourceConfiguration, location_name: "SourceConfiguration"))
    ChimeSdkMeetingConfiguration.add_member(:artifacts_configuration, Shapes::ShapeRef.new(shape: ArtifactsConfiguration, location_name: "ArtifactsConfiguration"))
    ChimeSdkMeetingConfiguration.struct_class = Types::ChimeSdkMeetingConfiguration

    ConflictException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    ContentArtifactsConfiguration.add_member(:state, Shapes::ShapeRef.new(shape: ArtifactsState, required: true, location_name: "State"))
    ContentArtifactsConfiguration.add_member(:mux_type, Shapes::ShapeRef.new(shape: ContentMuxType, location_name: "MuxType"))
    ContentArtifactsConfiguration.struct_class = Types::ContentArtifactsConfiguration

    ConversationRetentionSettings.add_member(:retention_days, Shapes::ShapeRef.new(shape: RetentionDays, location_name: "RetentionDays"))
    ConversationRetentionSettings.struct_class = Types::ConversationRetentionSettings

    CountryList.member = Shapes::ShapeRef.new(shape: Country)

    CreateAccountRequest.add_member(:name, Shapes::ShapeRef.new(shape: AccountName, required: true, location_name: "Name"))
    CreateAccountRequest.struct_class = Types::CreateAccountRequest

    CreateAccountResponse.add_member(:account, Shapes::ShapeRef.new(shape: Account, location_name: "Account"))
    CreateAccountResponse.struct_class = Types::CreateAccountResponse

    CreateAppInstanceAdminRequest.add_member(:app_instance_admin_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location_name: "AppInstanceAdminArn"))
    CreateAppInstanceAdminRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceArn"))
    CreateAppInstanceAdminRequest.struct_class = Types::CreateAppInstanceAdminRequest

    CreateAppInstanceAdminResponse.add_member(:app_instance_admin, Shapes::ShapeRef.new(shape: Identity, location_name: "AppInstanceAdmin"))
    CreateAppInstanceAdminResponse.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "AppInstanceArn"))
    CreateAppInstanceAdminResponse.struct_class = Types::CreateAppInstanceAdminResponse

    CreateAppInstanceRequest.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyResourceName, required: true, location_name: "Name"))
    CreateAppInstanceRequest.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    CreateAppInstanceRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateAppInstanceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateAppInstanceRequest.struct_class = Types::CreateAppInstanceRequest

    CreateAppInstanceResponse.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "AppInstanceArn"))
    CreateAppInstanceResponse.struct_class = Types::CreateAppInstanceResponse

    CreateAppInstanceUserRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location_name: "AppInstanceArn"))
    CreateAppInstanceUserRequest.add_member(:app_instance_user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location_name: "AppInstanceUserId"))
    CreateAppInstanceUserRequest.add_member(:name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "Name"))
    CreateAppInstanceUserRequest.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    CreateAppInstanceUserRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateAppInstanceUserRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateAppInstanceUserRequest.struct_class = Types::CreateAppInstanceUserRequest

    CreateAppInstanceUserResponse.add_member(:app_instance_user_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "AppInstanceUserArn"))
    CreateAppInstanceUserResponse.struct_class = Types::CreateAppInstanceUserResponse

    CreateAttendeeError.add_member(:external_user_id, Shapes::ShapeRef.new(shape: ExternalUserIdType, location_name: "ExternalUserId"))
    CreateAttendeeError.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "ErrorCode"))
    CreateAttendeeError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    CreateAttendeeError.struct_class = Types::CreateAttendeeError

    CreateAttendeeRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "meetingId"))
    CreateAttendeeRequest.add_member(:external_user_id, Shapes::ShapeRef.new(shape: ExternalUserIdType, required: true, location_name: "ExternalUserId"))
    CreateAttendeeRequest.add_member(:tags, Shapes::ShapeRef.new(shape: AttendeeTagList, location_name: "Tags"))
    CreateAttendeeRequest.struct_class = Types::CreateAttendeeRequest

    CreateAttendeeRequestItem.add_member(:external_user_id, Shapes::ShapeRef.new(shape: ExternalUserIdType, required: true, location_name: "ExternalUserId"))
    CreateAttendeeRequestItem.add_member(:tags, Shapes::ShapeRef.new(shape: AttendeeTagList, location_name: "Tags"))
    CreateAttendeeRequestItem.struct_class = Types::CreateAttendeeRequestItem

    CreateAttendeeRequestItemList.member = Shapes::ShapeRef.new(shape: CreateAttendeeRequestItem)

    CreateAttendeeResponse.add_member(:attendee, Shapes::ShapeRef.new(shape: Attendee, location_name: "Attendee"))
    CreateAttendeeResponse.struct_class = Types::CreateAttendeeResponse

    CreateBotRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    CreateBotRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: SensitiveString, required: true, location_name: "DisplayName"))
    CreateBotRequest.add_member(:domain, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Domain"))
    CreateBotRequest.struct_class = Types::CreateBotRequest

    CreateBotResponse.add_member(:bot, Shapes::ShapeRef.new(shape: Bot, location_name: "Bot"))
    CreateBotResponse.struct_class = Types::CreateBotResponse

    CreateChannelBanRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    CreateChannelBanRequest.add_member(:member_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location_name: "MemberArn"))
    CreateChannelBanRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, location: "header", location_name: "x-amz-chime-bearer"))
    CreateChannelBanRequest.struct_class = Types::CreateChannelBanRequest

    CreateChannelBanResponse.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    CreateChannelBanResponse.add_member(:member, Shapes::ShapeRef.new(shape: Identity, location_name: "Member"))
    CreateChannelBanResponse.struct_class = Types::CreateChannelBanResponse

    CreateChannelMembershipRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    CreateChannelMembershipRequest.add_member(:member_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location_name: "MemberArn"))
    CreateChannelMembershipRequest.add_member(:type, Shapes::ShapeRef.new(shape: ChannelMembershipType, required: true, location_name: "Type"))
    CreateChannelMembershipRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, location: "header", location_name: "x-amz-chime-bearer"))
    CreateChannelMembershipRequest.struct_class = Types::CreateChannelMembershipRequest

    CreateChannelMembershipResponse.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    CreateChannelMembershipResponse.add_member(:member, Shapes::ShapeRef.new(shape: Identity, location_name: "Member"))
    CreateChannelMembershipResponse.struct_class = Types::CreateChannelMembershipResponse

    CreateChannelModeratorRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    CreateChannelModeratorRequest.add_member(:channel_moderator_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location_name: "ChannelModeratorArn"))
    CreateChannelModeratorRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, location: "header", location_name: "x-amz-chime-bearer"))
    CreateChannelModeratorRequest.struct_class = Types::CreateChannelModeratorRequest

    CreateChannelModeratorResponse.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    CreateChannelModeratorResponse.add_member(:channel_moderator, Shapes::ShapeRef.new(shape: Identity, location_name: "ChannelModerator"))
    CreateChannelModeratorResponse.struct_class = Types::CreateChannelModeratorResponse

    CreateChannelRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location_name: "AppInstanceArn"))
    CreateChannelRequest.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyResourceName, required: true, location_name: "Name"))
    CreateChannelRequest.add_member(:mode, Shapes::ShapeRef.new(shape: ChannelMode, location_name: "Mode"))
    CreateChannelRequest.add_member(:privacy, Shapes::ShapeRef.new(shape: ChannelPrivacy, location_name: "Privacy"))
    CreateChannelRequest.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    CreateChannelRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateChannelRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateChannelRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, location: "header", location_name: "x-amz-chime-bearer"))
    CreateChannelRequest.struct_class = Types::CreateChannelRequest

    CreateChannelResponse.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    CreateChannelResponse.struct_class = Types::CreateChannelResponse

    CreateMediaCapturePipelineRequest.add_member(:source_type, Shapes::ShapeRef.new(shape: MediaPipelineSourceType, required: true, location_name: "SourceType"))
    CreateMediaCapturePipelineRequest.add_member(:source_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "SourceArn"))
    CreateMediaCapturePipelineRequest.add_member(:sink_type, Shapes::ShapeRef.new(shape: MediaPipelineSinkType, required: true, location_name: "SinkType"))
    CreateMediaCapturePipelineRequest.add_member(:sink_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "SinkArn"))
    CreateMediaCapturePipelineRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateMediaCapturePipelineRequest.add_member(:chime_sdk_meeting_configuration, Shapes::ShapeRef.new(shape: ChimeSdkMeetingConfiguration, location_name: "ChimeSdkMeetingConfiguration"))
    CreateMediaCapturePipelineRequest.struct_class = Types::CreateMediaCapturePipelineRequest

    CreateMediaCapturePipelineResponse.add_member(:media_capture_pipeline, Shapes::ShapeRef.new(shape: MediaCapturePipeline, location_name: "MediaCapturePipeline"))
    CreateMediaCapturePipelineResponse.struct_class = Types::CreateMediaCapturePipelineResponse

    CreateMeetingDialOutRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "meetingId"))
    CreateMeetingDialOutRequest.add_member(:from_phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, required: true, location_name: "FromPhoneNumber"))
    CreateMeetingDialOutRequest.add_member(:to_phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, required: true, location_name: "ToPhoneNumber"))
    CreateMeetingDialOutRequest.add_member(:join_token, Shapes::ShapeRef.new(shape: JoinTokenString, required: true, location_name: "JoinToken"))
    CreateMeetingDialOutRequest.struct_class = Types::CreateMeetingDialOutRequest

    CreateMeetingDialOutResponse.add_member(:transaction_id, Shapes::ShapeRef.new(shape: GuidString, location_name: "TransactionId"))
    CreateMeetingDialOutResponse.struct_class = Types::CreateMeetingDialOutResponse

    CreateMeetingRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateMeetingRequest.add_member(:external_meeting_id, Shapes::ShapeRef.new(shape: ExternalMeetingIdType, location_name: "ExternalMeetingId"))
    CreateMeetingRequest.add_member(:meeting_host_id, Shapes::ShapeRef.new(shape: ExternalUserIdType, location_name: "MeetingHostId"))
    CreateMeetingRequest.add_member(:media_region, Shapes::ShapeRef.new(shape: String, location_name: "MediaRegion"))
    CreateMeetingRequest.add_member(:tags, Shapes::ShapeRef.new(shape: MeetingTagList, location_name: "Tags"))
    CreateMeetingRequest.add_member(:notifications_configuration, Shapes::ShapeRef.new(shape: MeetingNotificationConfiguration, location_name: "NotificationsConfiguration"))
    CreateMeetingRequest.struct_class = Types::CreateMeetingRequest

    CreateMeetingResponse.add_member(:meeting, Shapes::ShapeRef.new(shape: Meeting, location_name: "Meeting"))
    CreateMeetingResponse.struct_class = Types::CreateMeetingResponse

    CreateMeetingWithAttendeesRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateMeetingWithAttendeesRequest.add_member(:external_meeting_id, Shapes::ShapeRef.new(shape: ExternalMeetingIdType, location_name: "ExternalMeetingId"))
    CreateMeetingWithAttendeesRequest.add_member(:meeting_host_id, Shapes::ShapeRef.new(shape: ExternalUserIdType, location_name: "MeetingHostId"))
    CreateMeetingWithAttendeesRequest.add_member(:media_region, Shapes::ShapeRef.new(shape: String, location_name: "MediaRegion"))
    CreateMeetingWithAttendeesRequest.add_member(:tags, Shapes::ShapeRef.new(shape: MeetingTagList, location_name: "Tags"))
    CreateMeetingWithAttendeesRequest.add_member(:notifications_configuration, Shapes::ShapeRef.new(shape: MeetingNotificationConfiguration, location_name: "NotificationsConfiguration"))
    CreateMeetingWithAttendeesRequest.add_member(:attendees, Shapes::ShapeRef.new(shape: CreateMeetingWithAttendeesRequestItemList, location_name: "Attendees"))
    CreateMeetingWithAttendeesRequest.struct_class = Types::CreateMeetingWithAttendeesRequest

    CreateMeetingWithAttendeesRequestItemList.member = Shapes::ShapeRef.new(shape: CreateAttendeeRequestItem)

    CreateMeetingWithAttendeesResponse.add_member(:meeting, Shapes::ShapeRef.new(shape: Meeting, location_name: "Meeting"))
    CreateMeetingWithAttendeesResponse.add_member(:attendees, Shapes::ShapeRef.new(shape: AttendeeList, location_name: "Attendees"))
    CreateMeetingWithAttendeesResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchCreateAttendeeErrorList, location_name: "Errors"))
    CreateMeetingWithAttendeesResponse.struct_class = Types::CreateMeetingWithAttendeesResponse

    CreatePhoneNumberOrderRequest.add_member(:product_type, Shapes::ShapeRef.new(shape: PhoneNumberProductType, required: true, location_name: "ProductType"))
    CreatePhoneNumberOrderRequest.add_member(:e164_phone_numbers, Shapes::ShapeRef.new(shape: E164PhoneNumberList, required: true, location_name: "E164PhoneNumbers"))
    CreatePhoneNumberOrderRequest.struct_class = Types::CreatePhoneNumberOrderRequest

    CreatePhoneNumberOrderResponse.add_member(:phone_number_order, Shapes::ShapeRef.new(shape: PhoneNumberOrder, location_name: "PhoneNumberOrder"))
    CreatePhoneNumberOrderResponse.struct_class = Types::CreatePhoneNumberOrderResponse

    CreateProxySessionRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString128, required: true, location: "uri", location_name: "voiceConnectorId"))
    CreateProxySessionRequest.add_member(:participant_phone_numbers, Shapes::ShapeRef.new(shape: ParticipantPhoneNumberList, required: true, location_name: "ParticipantPhoneNumbers"))
    CreateProxySessionRequest.add_member(:name, Shapes::ShapeRef.new(shape: ProxySessionNameString, location_name: "Name"))
    CreateProxySessionRequest.add_member(:expiry_minutes, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "ExpiryMinutes"))
    CreateProxySessionRequest.add_member(:capabilities, Shapes::ShapeRef.new(shape: CapabilityList, required: true, location_name: "Capabilities"))
    CreateProxySessionRequest.add_member(:number_selection_behavior, Shapes::ShapeRef.new(shape: NumberSelectionBehavior, location_name: "NumberSelectionBehavior"))
    CreateProxySessionRequest.add_member(:geo_match_level, Shapes::ShapeRef.new(shape: GeoMatchLevel, location_name: "GeoMatchLevel"))
    CreateProxySessionRequest.add_member(:geo_match_params, Shapes::ShapeRef.new(shape: GeoMatchParams, location_name: "GeoMatchParams"))
    CreateProxySessionRequest.struct_class = Types::CreateProxySessionRequest

    CreateProxySessionResponse.add_member(:proxy_session, Shapes::ShapeRef.new(shape: ProxySession, location_name: "ProxySession"))
    CreateProxySessionResponse.struct_class = Types::CreateProxySessionResponse

    CreateRoomMembershipRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    CreateRoomMembershipRequest.add_member(:room_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "roomId"))
    CreateRoomMembershipRequest.add_member(:member_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "MemberId"))
    CreateRoomMembershipRequest.add_member(:role, Shapes::ShapeRef.new(shape: RoomMembershipRole, location_name: "Role"))
    CreateRoomMembershipRequest.struct_class = Types::CreateRoomMembershipRequest

    CreateRoomMembershipResponse.add_member(:room_membership, Shapes::ShapeRef.new(shape: RoomMembership, location_name: "RoomMembership"))
    CreateRoomMembershipResponse.struct_class = Types::CreateRoomMembershipResponse

    CreateRoomRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    CreateRoomRequest.add_member(:name, Shapes::ShapeRef.new(shape: SensitiveString, required: true, location_name: "Name"))
    CreateRoomRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateRoomRequest.struct_class = Types::CreateRoomRequest

    CreateRoomResponse.add_member(:room, Shapes::ShapeRef.new(shape: Room, location_name: "Room"))
    CreateRoomResponse.struct_class = Types::CreateRoomResponse

    CreateSipMediaApplicationCallRequest.add_member(:from_phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, required: true, location_name: "FromPhoneNumber"))
    CreateSipMediaApplicationCallRequest.add_member(:to_phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, required: true, location_name: "ToPhoneNumber"))
    CreateSipMediaApplicationCallRequest.add_member(:sip_media_application_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "sipMediaApplicationId"))
    CreateSipMediaApplicationCallRequest.add_member(:sip_headers, Shapes::ShapeRef.new(shape: SipHeadersMap, location_name: "SipHeaders"))
    CreateSipMediaApplicationCallRequest.struct_class = Types::CreateSipMediaApplicationCallRequest

    CreateSipMediaApplicationCallResponse.add_member(:sip_media_application_call, Shapes::ShapeRef.new(shape: SipMediaApplicationCall, location_name: "SipMediaApplicationCall"))
    CreateSipMediaApplicationCallResponse.struct_class = Types::CreateSipMediaApplicationCallResponse

    CreateSipMediaApplicationRequest.add_member(:aws_region, Shapes::ShapeRef.new(shape: String, required: true, location_name: "AwsRegion"))
    CreateSipMediaApplicationRequest.add_member(:name, Shapes::ShapeRef.new(shape: SipMediaApplicationName, required: true, location_name: "Name"))
    CreateSipMediaApplicationRequest.add_member(:endpoints, Shapes::ShapeRef.new(shape: SipMediaApplicationEndpointList, required: true, location_name: "Endpoints"))
    CreateSipMediaApplicationRequest.struct_class = Types::CreateSipMediaApplicationRequest

    CreateSipMediaApplicationResponse.add_member(:sip_media_application, Shapes::ShapeRef.new(shape: SipMediaApplication, location_name: "SipMediaApplication"))
    CreateSipMediaApplicationResponse.struct_class = Types::CreateSipMediaApplicationResponse

    CreateSipRuleRequest.add_member(:name, Shapes::ShapeRef.new(shape: SipRuleName, required: true, location_name: "Name"))
    CreateSipRuleRequest.add_member(:trigger_type, Shapes::ShapeRef.new(shape: SipRuleTriggerType, required: true, location_name: "TriggerType"))
    CreateSipRuleRequest.add_member(:trigger_value, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "TriggerValue"))
    CreateSipRuleRequest.add_member(:disabled, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "Disabled"))
    CreateSipRuleRequest.add_member(:target_applications, Shapes::ShapeRef.new(shape: SipRuleTargetApplicationList, required: true, location_name: "TargetApplications"))
    CreateSipRuleRequest.struct_class = Types::CreateSipRuleRequest

    CreateSipRuleResponse.add_member(:sip_rule, Shapes::ShapeRef.new(shape: SipRule, location_name: "SipRule"))
    CreateSipRuleResponse.struct_class = Types::CreateSipRuleResponse

    CreateUserRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    CreateUserRequest.add_member(:username, Shapes::ShapeRef.new(shape: String, location_name: "Username"))
    CreateUserRequest.add_member(:email, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "Email"))
    CreateUserRequest.add_member(:user_type, Shapes::ShapeRef.new(shape: UserType, location_name: "UserType"))
    CreateUserRequest.struct_class = Types::CreateUserRequest

    CreateUserResponse.add_member(:user, Shapes::ShapeRef.new(shape: User, location_name: "User"))
    CreateUserResponse.struct_class = Types::CreateUserResponse

    CreateVoiceConnectorGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: VoiceConnectorGroupName, required: true, location_name: "Name"))
    CreateVoiceConnectorGroupRequest.add_member(:voice_connector_items, Shapes::ShapeRef.new(shape: VoiceConnectorItemList, location_name: "VoiceConnectorItems"))
    CreateVoiceConnectorGroupRequest.struct_class = Types::CreateVoiceConnectorGroupRequest

    CreateVoiceConnectorGroupResponse.add_member(:voice_connector_group, Shapes::ShapeRef.new(shape: VoiceConnectorGroup, location_name: "VoiceConnectorGroup"))
    CreateVoiceConnectorGroupResponse.struct_class = Types::CreateVoiceConnectorGroupResponse

    CreateVoiceConnectorRequest.add_member(:name, Shapes::ShapeRef.new(shape: VoiceConnectorName, required: true, location_name: "Name"))
    CreateVoiceConnectorRequest.add_member(:aws_region, Shapes::ShapeRef.new(shape: VoiceConnectorAwsRegion, location_name: "AwsRegion"))
    CreateVoiceConnectorRequest.add_member(:require_encryption, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "RequireEncryption"))
    CreateVoiceConnectorRequest.struct_class = Types::CreateVoiceConnectorRequest

    CreateVoiceConnectorResponse.add_member(:voice_connector, Shapes::ShapeRef.new(shape: VoiceConnector, location_name: "VoiceConnector"))
    CreateVoiceConnectorResponse.struct_class = Types::CreateVoiceConnectorResponse

    Credential.add_member(:username, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "Username"))
    Credential.add_member(:password, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "Password"))
    Credential.struct_class = Types::Credential

    CredentialList.member = Shapes::ShapeRef.new(shape: Credential)

    DNISEmergencyCallingConfiguration.add_member(:emergency_phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, required: true, location_name: "EmergencyPhoneNumber"))
    DNISEmergencyCallingConfiguration.add_member(:test_phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: "TestPhoneNumber"))
    DNISEmergencyCallingConfiguration.add_member(:calling_country, Shapes::ShapeRef.new(shape: Alpha2CountryCode, required: true, location_name: "CallingCountry"))
    DNISEmergencyCallingConfiguration.struct_class = Types::DNISEmergencyCallingConfiguration

    DNISEmergencyCallingConfigurationList.member = Shapes::ShapeRef.new(shape: DNISEmergencyCallingConfiguration)

    DeleteAccountRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    DeleteAccountRequest.struct_class = Types::DeleteAccountRequest

    DeleteAccountResponse.struct_class = Types::DeleteAccountResponse

    DeleteAppInstanceAdminRequest.add_member(:app_instance_admin_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceAdminArn"))
    DeleteAppInstanceAdminRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceArn"))
    DeleteAppInstanceAdminRequest.struct_class = Types::DeleteAppInstanceAdminRequest

    DeleteAppInstanceRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceArn"))
    DeleteAppInstanceRequest.struct_class = Types::DeleteAppInstanceRequest

    DeleteAppInstanceStreamingConfigurationsRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceArn"))
    DeleteAppInstanceStreamingConfigurationsRequest.struct_class = Types::DeleteAppInstanceStreamingConfigurationsRequest

    DeleteAppInstanceUserRequest.add_member(:app_instance_user_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceUserArn"))
    DeleteAppInstanceUserRequest.struct_class = Types::DeleteAppInstanceUserRequest

    DeleteAttendeeRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "meetingId"))
    DeleteAttendeeRequest.add_member(:attendee_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "attendeeId"))
    DeleteAttendeeRequest.struct_class = Types::DeleteAttendeeRequest

    DeleteChannelBanRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    DeleteChannelBanRequest.add_member(:member_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "memberArn"))
    DeleteChannelBanRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, location: "header", location_name: "x-amz-chime-bearer"))
    DeleteChannelBanRequest.struct_class = Types::DeleteChannelBanRequest

    DeleteChannelMembershipRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    DeleteChannelMembershipRequest.add_member(:member_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "memberArn"))
    DeleteChannelMembershipRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, location: "header", location_name: "x-amz-chime-bearer"))
    DeleteChannelMembershipRequest.struct_class = Types::DeleteChannelMembershipRequest

    DeleteChannelMessageRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    DeleteChannelMessageRequest.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, required: true, location: "uri", location_name: "messageId"))
    DeleteChannelMessageRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, location: "header", location_name: "x-amz-chime-bearer"))
    DeleteChannelMessageRequest.struct_class = Types::DeleteChannelMessageRequest

    DeleteChannelModeratorRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    DeleteChannelModeratorRequest.add_member(:channel_moderator_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelModeratorArn"))
    DeleteChannelModeratorRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, location: "header", location_name: "x-amz-chime-bearer"))
    DeleteChannelModeratorRequest.struct_class = Types::DeleteChannelModeratorRequest

    DeleteChannelRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    DeleteChannelRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, location: "header", location_name: "x-amz-chime-bearer"))
    DeleteChannelRequest.struct_class = Types::DeleteChannelRequest

    DeleteEventsConfigurationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    DeleteEventsConfigurationRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "botId"))
    DeleteEventsConfigurationRequest.struct_class = Types::DeleteEventsConfigurationRequest

    DeleteMediaCapturePipelineRequest.add_member(:media_pipeline_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "mediaPipelineId"))
    DeleteMediaCapturePipelineRequest.struct_class = Types::DeleteMediaCapturePipelineRequest

    DeleteMeetingRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "meetingId"))
    DeleteMeetingRequest.struct_class = Types::DeleteMeetingRequest

    DeletePhoneNumberRequest.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "phoneNumberId"))
    DeletePhoneNumberRequest.struct_class = Types::DeletePhoneNumberRequest

    DeleteProxySessionRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString128, required: true, location: "uri", location_name: "voiceConnectorId"))
    DeleteProxySessionRequest.add_member(:proxy_session_id, Shapes::ShapeRef.new(shape: NonEmptyString128, required: true, location: "uri", location_name: "proxySessionId"))
    DeleteProxySessionRequest.struct_class = Types::DeleteProxySessionRequest

    DeleteRoomMembershipRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    DeleteRoomMembershipRequest.add_member(:room_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "roomId"))
    DeleteRoomMembershipRequest.add_member(:member_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "memberId"))
    DeleteRoomMembershipRequest.struct_class = Types::DeleteRoomMembershipRequest

    DeleteRoomRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    DeleteRoomRequest.add_member(:room_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "roomId"))
    DeleteRoomRequest.struct_class = Types::DeleteRoomRequest

    DeleteSipMediaApplicationRequest.add_member(:sip_media_application_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "sipMediaApplicationId"))
    DeleteSipMediaApplicationRequest.struct_class = Types::DeleteSipMediaApplicationRequest

    DeleteSipRuleRequest.add_member(:sip_rule_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "sipRuleId"))
    DeleteSipRuleRequest.struct_class = Types::DeleteSipRuleRequest

    DeleteVoiceConnectorEmergencyCallingConfigurationRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    DeleteVoiceConnectorEmergencyCallingConfigurationRequest.struct_class = Types::DeleteVoiceConnectorEmergencyCallingConfigurationRequest

    DeleteVoiceConnectorGroupRequest.add_member(:voice_connector_group_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorGroupId"))
    DeleteVoiceConnectorGroupRequest.struct_class = Types::DeleteVoiceConnectorGroupRequest

    DeleteVoiceConnectorOriginationRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    DeleteVoiceConnectorOriginationRequest.struct_class = Types::DeleteVoiceConnectorOriginationRequest

    DeleteVoiceConnectorProxyRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString128, required: true, location: "uri", location_name: "voiceConnectorId"))
    DeleteVoiceConnectorProxyRequest.struct_class = Types::DeleteVoiceConnectorProxyRequest

    DeleteVoiceConnectorRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    DeleteVoiceConnectorRequest.struct_class = Types::DeleteVoiceConnectorRequest

    DeleteVoiceConnectorStreamingConfigurationRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    DeleteVoiceConnectorStreamingConfigurationRequest.struct_class = Types::DeleteVoiceConnectorStreamingConfigurationRequest

    DeleteVoiceConnectorTerminationCredentialsRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    DeleteVoiceConnectorTerminationCredentialsRequest.add_member(:usernames, Shapes::ShapeRef.new(shape: SensitiveStringList, required: true, location_name: "Usernames"))
    DeleteVoiceConnectorTerminationCredentialsRequest.struct_class = Types::DeleteVoiceConnectorTerminationCredentialsRequest

    DeleteVoiceConnectorTerminationRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    DeleteVoiceConnectorTerminationRequest.struct_class = Types::DeleteVoiceConnectorTerminationRequest

    DescribeAppInstanceAdminRequest.add_member(:app_instance_admin_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceAdminArn"))
    DescribeAppInstanceAdminRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceArn"))
    DescribeAppInstanceAdminRequest.struct_class = Types::DescribeAppInstanceAdminRequest

    DescribeAppInstanceAdminResponse.add_member(:app_instance_admin, Shapes::ShapeRef.new(shape: AppInstanceAdmin, location_name: "AppInstanceAdmin"))
    DescribeAppInstanceAdminResponse.struct_class = Types::DescribeAppInstanceAdminResponse

    DescribeAppInstanceRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceArn"))
    DescribeAppInstanceRequest.struct_class = Types::DescribeAppInstanceRequest

    DescribeAppInstanceResponse.add_member(:app_instance, Shapes::ShapeRef.new(shape: AppInstance, location_name: "AppInstance"))
    DescribeAppInstanceResponse.struct_class = Types::DescribeAppInstanceResponse

    DescribeAppInstanceUserRequest.add_member(:app_instance_user_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceUserArn"))
    DescribeAppInstanceUserRequest.struct_class = Types::DescribeAppInstanceUserRequest

    DescribeAppInstanceUserResponse.add_member(:app_instance_user, Shapes::ShapeRef.new(shape: AppInstanceUser, location_name: "AppInstanceUser"))
    DescribeAppInstanceUserResponse.struct_class = Types::DescribeAppInstanceUserResponse

    DescribeChannelBanRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    DescribeChannelBanRequest.add_member(:member_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "memberArn"))
    DescribeChannelBanRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, location: "header", location_name: "x-amz-chime-bearer"))
    DescribeChannelBanRequest.struct_class = Types::DescribeChannelBanRequest

    DescribeChannelBanResponse.add_member(:channel_ban, Shapes::ShapeRef.new(shape: ChannelBan, location_name: "ChannelBan"))
    DescribeChannelBanResponse.struct_class = Types::DescribeChannelBanResponse

    DescribeChannelMembershipForAppInstanceUserRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    DescribeChannelMembershipForAppInstanceUserRequest.add_member(:app_instance_user_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "querystring", location_name: "app-instance-user-arn"))
    DescribeChannelMembershipForAppInstanceUserRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, location: "header", location_name: "x-amz-chime-bearer"))
    DescribeChannelMembershipForAppInstanceUserRequest.struct_class = Types::DescribeChannelMembershipForAppInstanceUserRequest

    DescribeChannelMembershipForAppInstanceUserResponse.add_member(:channel_membership, Shapes::ShapeRef.new(shape: ChannelMembershipForAppInstanceUserSummary, location_name: "ChannelMembership"))
    DescribeChannelMembershipForAppInstanceUserResponse.struct_class = Types::DescribeChannelMembershipForAppInstanceUserResponse

    DescribeChannelMembershipRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    DescribeChannelMembershipRequest.add_member(:member_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "memberArn"))
    DescribeChannelMembershipRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, location: "header", location_name: "x-amz-chime-bearer"))
    DescribeChannelMembershipRequest.struct_class = Types::DescribeChannelMembershipRequest

    DescribeChannelMembershipResponse.add_member(:channel_membership, Shapes::ShapeRef.new(shape: ChannelMembership, location_name: "ChannelMembership"))
    DescribeChannelMembershipResponse.struct_class = Types::DescribeChannelMembershipResponse

    DescribeChannelModeratedByAppInstanceUserRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    DescribeChannelModeratedByAppInstanceUserRequest.add_member(:app_instance_user_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "querystring", location_name: "app-instance-user-arn"))
    DescribeChannelModeratedByAppInstanceUserRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, location: "header", location_name: "x-amz-chime-bearer"))
    DescribeChannelModeratedByAppInstanceUserRequest.struct_class = Types::DescribeChannelModeratedByAppInstanceUserRequest

    DescribeChannelModeratedByAppInstanceUserResponse.add_member(:channel, Shapes::ShapeRef.new(shape: ChannelModeratedByAppInstanceUserSummary, location_name: "Channel"))
    DescribeChannelModeratedByAppInstanceUserResponse.struct_class = Types::DescribeChannelModeratedByAppInstanceUserResponse

    DescribeChannelModeratorRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    DescribeChannelModeratorRequest.add_member(:channel_moderator_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelModeratorArn"))
    DescribeChannelModeratorRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, location: "header", location_name: "x-amz-chime-bearer"))
    DescribeChannelModeratorRequest.struct_class = Types::DescribeChannelModeratorRequest

    DescribeChannelModeratorResponse.add_member(:channel_moderator, Shapes::ShapeRef.new(shape: ChannelModerator, location_name: "ChannelModerator"))
    DescribeChannelModeratorResponse.struct_class = Types::DescribeChannelModeratorResponse

    DescribeChannelRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    DescribeChannelRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, location: "header", location_name: "x-amz-chime-bearer"))
    DescribeChannelRequest.struct_class = Types::DescribeChannelRequest

    DescribeChannelResponse.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, location_name: "Channel"))
    DescribeChannelResponse.struct_class = Types::DescribeChannelResponse

    DisassociatePhoneNumberFromUserRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "accountId"))
    DisassociatePhoneNumberFromUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "userId"))
    DisassociatePhoneNumberFromUserRequest.struct_class = Types::DisassociatePhoneNumberFromUserRequest

    DisassociatePhoneNumberFromUserResponse.struct_class = Types::DisassociatePhoneNumberFromUserResponse

    DisassociatePhoneNumbersFromVoiceConnectorGroupRequest.add_member(:voice_connector_group_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorGroupId"))
    DisassociatePhoneNumbersFromVoiceConnectorGroupRequest.add_member(:e164_phone_numbers, Shapes::ShapeRef.new(shape: E164PhoneNumberList, required: true, location_name: "E164PhoneNumbers"))
    DisassociatePhoneNumbersFromVoiceConnectorGroupRequest.struct_class = Types::DisassociatePhoneNumbersFromVoiceConnectorGroupRequest

    DisassociatePhoneNumbersFromVoiceConnectorGroupResponse.add_member(:phone_number_errors, Shapes::ShapeRef.new(shape: PhoneNumberErrorList, location_name: "PhoneNumberErrors"))
    DisassociatePhoneNumbersFromVoiceConnectorGroupResponse.struct_class = Types::DisassociatePhoneNumbersFromVoiceConnectorGroupResponse

    DisassociatePhoneNumbersFromVoiceConnectorRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    DisassociatePhoneNumbersFromVoiceConnectorRequest.add_member(:e164_phone_numbers, Shapes::ShapeRef.new(shape: E164PhoneNumberList, required: true, location_name: "E164PhoneNumbers"))
    DisassociatePhoneNumbersFromVoiceConnectorRequest.struct_class = Types::DisassociatePhoneNumbersFromVoiceConnectorRequest

    DisassociatePhoneNumbersFromVoiceConnectorResponse.add_member(:phone_number_errors, Shapes::ShapeRef.new(shape: PhoneNumberErrorList, location_name: "PhoneNumberErrors"))
    DisassociatePhoneNumbersFromVoiceConnectorResponse.struct_class = Types::DisassociatePhoneNumbersFromVoiceConnectorResponse

    DisassociateSigninDelegateGroupsFromAccountRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    DisassociateSigninDelegateGroupsFromAccountRequest.add_member(:group_names, Shapes::ShapeRef.new(shape: NonEmptyStringList, required: true, location_name: "GroupNames"))
    DisassociateSigninDelegateGroupsFromAccountRequest.struct_class = Types::DisassociateSigninDelegateGroupsFromAccountRequest

    DisassociateSigninDelegateGroupsFromAccountResponse.struct_class = Types::DisassociateSigninDelegateGroupsFromAccountResponse

    E164PhoneNumberList.member = Shapes::ShapeRef.new(shape: E164PhoneNumber)

    EmergencyCallingConfiguration.add_member(:dnis, Shapes::ShapeRef.new(shape: DNISEmergencyCallingConfigurationList, location_name: "DNIS"))
    EmergencyCallingConfiguration.struct_class = Types::EmergencyCallingConfiguration

    EngineTranscribeMedicalSettings.add_member(:language_code, Shapes::ShapeRef.new(shape: TranscribeMedicalLanguageCode, required: true, location_name: "LanguageCode"))
    EngineTranscribeMedicalSettings.add_member(:specialty, Shapes::ShapeRef.new(shape: TranscribeMedicalSpecialty, required: true, location_name: "Specialty"))
    EngineTranscribeMedicalSettings.add_member(:type, Shapes::ShapeRef.new(shape: TranscribeMedicalType, required: true, location_name: "Type"))
    EngineTranscribeMedicalSettings.add_member(:vocabulary_name, Shapes::ShapeRef.new(shape: String, location_name: "VocabularyName"))
    EngineTranscribeMedicalSettings.add_member(:region, Shapes::ShapeRef.new(shape: TranscribeMedicalRegion, location_name: "Region"))
    EngineTranscribeMedicalSettings.add_member(:content_identification_type, Shapes::ShapeRef.new(shape: TranscribeMedicalContentIdentificationType, location_name: "ContentIdentificationType"))
    EngineTranscribeMedicalSettings.struct_class = Types::EngineTranscribeMedicalSettings

    EngineTranscribeSettings.add_member(:language_code, Shapes::ShapeRef.new(shape: TranscribeLanguageCode, location_name: "LanguageCode"))
    EngineTranscribeSettings.add_member(:vocabulary_filter_method, Shapes::ShapeRef.new(shape: TranscribeVocabularyFilterMethod, location_name: "VocabularyFilterMethod"))
    EngineTranscribeSettings.add_member(:vocabulary_filter_name, Shapes::ShapeRef.new(shape: String, location_name: "VocabularyFilterName"))
    EngineTranscribeSettings.add_member(:vocabulary_name, Shapes::ShapeRef.new(shape: String, location_name: "VocabularyName"))
    EngineTranscribeSettings.add_member(:region, Shapes::ShapeRef.new(shape: TranscribeRegion, location_name: "Region"))
    EngineTranscribeSettings.add_member(:enable_partial_results_stabilization, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnablePartialResultsStabilization"))
    EngineTranscribeSettings.add_member(:partial_results_stability, Shapes::ShapeRef.new(shape: TranscribePartialResultsStability, location_name: "PartialResultsStability"))
    EngineTranscribeSettings.add_member(:content_identification_type, Shapes::ShapeRef.new(shape: TranscribeContentIdentificationType, location_name: "ContentIdentificationType"))
    EngineTranscribeSettings.add_member(:content_redaction_type, Shapes::ShapeRef.new(shape: TranscribeContentRedactionType, location_name: "ContentRedactionType"))
    EngineTranscribeSettings.add_member(:pii_entity_types, Shapes::ShapeRef.new(shape: TranscribePiiEntityTypes, location_name: "PiiEntityTypes"))
    EngineTranscribeSettings.add_member(:language_model_name, Shapes::ShapeRef.new(shape: TranscribeLanguageModelName, location_name: "LanguageModelName"))
    EngineTranscribeSettings.add_member(:identify_language, Shapes::ShapeRef.new(shape: Boolean, location_name: "IdentifyLanguage"))
    EngineTranscribeSettings.add_member(:language_options, Shapes::ShapeRef.new(shape: TranscribeLanguageOptions, location_name: "LanguageOptions"))
    EngineTranscribeSettings.add_member(:preferred_language, Shapes::ShapeRef.new(shape: TranscribeLanguageCode, location_name: "PreferredLanguage"))
    EngineTranscribeSettings.add_member(:vocabulary_names, Shapes::ShapeRef.new(shape: TranscribeVocabularyNamesOrFilterNamesString, location_name: "VocabularyNames"))
    EngineTranscribeSettings.add_member(:vocabulary_filter_names, Shapes::ShapeRef.new(shape: TranscribeVocabularyNamesOrFilterNamesString, location_name: "VocabularyFilterNames"))
    EngineTranscribeSettings.struct_class = Types::EngineTranscribeSettings

    EventsConfiguration.add_member(:bot_id, Shapes::ShapeRef.new(shape: String, location_name: "BotId"))
    EventsConfiguration.add_member(:outbound_events_https_endpoint, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "OutboundEventsHTTPSEndpoint"))
    EventsConfiguration.add_member(:lambda_function_arn, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "LambdaFunctionArn"))
    EventsConfiguration.struct_class = Types::EventsConfiguration

    ExternalUserIdList.member = Shapes::ShapeRef.new(shape: ExternalUserIdType)

    ForbiddenException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ForbiddenException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ForbiddenException.struct_class = Types::ForbiddenException

    GeoMatchParams.add_member(:country, Shapes::ShapeRef.new(shape: Country, required: true, location_name: "Country"))
    GeoMatchParams.add_member(:area_code, Shapes::ShapeRef.new(shape: AreaCode, required: true, location_name: "AreaCode"))
    GeoMatchParams.struct_class = Types::GeoMatchParams

    GetAccountRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    GetAccountRequest.struct_class = Types::GetAccountRequest

    GetAccountResponse.add_member(:account, Shapes::ShapeRef.new(shape: Account, location_name: "Account"))
    GetAccountResponse.struct_class = Types::GetAccountResponse

    GetAccountSettingsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    GetAccountSettingsRequest.struct_class = Types::GetAccountSettingsRequest

    GetAccountSettingsResponse.add_member(:account_settings, Shapes::ShapeRef.new(shape: AccountSettings, location_name: "AccountSettings"))
    GetAccountSettingsResponse.struct_class = Types::GetAccountSettingsResponse

    GetAppInstanceRetentionSettingsRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceArn"))
    GetAppInstanceRetentionSettingsRequest.struct_class = Types::GetAppInstanceRetentionSettingsRequest

    GetAppInstanceRetentionSettingsResponse.add_member(:app_instance_retention_settings, Shapes::ShapeRef.new(shape: AppInstanceRetentionSettings, location_name: "AppInstanceRetentionSettings"))
    GetAppInstanceRetentionSettingsResponse.add_member(:initiate_deletion_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "InitiateDeletionTimestamp"))
    GetAppInstanceRetentionSettingsResponse.struct_class = Types::GetAppInstanceRetentionSettingsResponse

    GetAppInstanceStreamingConfigurationsRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceArn"))
    GetAppInstanceStreamingConfigurationsRequest.struct_class = Types::GetAppInstanceStreamingConfigurationsRequest

    GetAppInstanceStreamingConfigurationsResponse.add_member(:app_instance_streaming_configurations, Shapes::ShapeRef.new(shape: AppInstanceStreamingConfigurationList, location_name: "AppInstanceStreamingConfigurations"))
    GetAppInstanceStreamingConfigurationsResponse.struct_class = Types::GetAppInstanceStreamingConfigurationsResponse

    GetAttendeeRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "meetingId"))
    GetAttendeeRequest.add_member(:attendee_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "attendeeId"))
    GetAttendeeRequest.struct_class = Types::GetAttendeeRequest

    GetAttendeeResponse.add_member(:attendee, Shapes::ShapeRef.new(shape: Attendee, location_name: "Attendee"))
    GetAttendeeResponse.struct_class = Types::GetAttendeeResponse

    GetBotRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    GetBotRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "botId"))
    GetBotRequest.struct_class = Types::GetBotRequest

    GetBotResponse.add_member(:bot, Shapes::ShapeRef.new(shape: Bot, location_name: "Bot"))
    GetBotResponse.struct_class = Types::GetBotResponse

    GetChannelMessageRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    GetChannelMessageRequest.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, required: true, location: "uri", location_name: "messageId"))
    GetChannelMessageRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, location: "header", location_name: "x-amz-chime-bearer"))
    GetChannelMessageRequest.struct_class = Types::GetChannelMessageRequest

    GetChannelMessageResponse.add_member(:channel_message, Shapes::ShapeRef.new(shape: ChannelMessage, location_name: "ChannelMessage"))
    GetChannelMessageResponse.struct_class = Types::GetChannelMessageResponse

    GetEventsConfigurationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    GetEventsConfigurationRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "botId"))
    GetEventsConfigurationRequest.struct_class = Types::GetEventsConfigurationRequest

    GetEventsConfigurationResponse.add_member(:events_configuration, Shapes::ShapeRef.new(shape: EventsConfiguration, location_name: "EventsConfiguration"))
    GetEventsConfigurationResponse.struct_class = Types::GetEventsConfigurationResponse

    GetGlobalSettingsResponse.add_member(:business_calling, Shapes::ShapeRef.new(shape: BusinessCallingSettings, location_name: "BusinessCalling"))
    GetGlobalSettingsResponse.add_member(:voice_connector, Shapes::ShapeRef.new(shape: VoiceConnectorSettings, location_name: "VoiceConnector"))
    GetGlobalSettingsResponse.struct_class = Types::GetGlobalSettingsResponse

    GetMediaCapturePipelineRequest.add_member(:media_pipeline_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "mediaPipelineId"))
    GetMediaCapturePipelineRequest.struct_class = Types::GetMediaCapturePipelineRequest

    GetMediaCapturePipelineResponse.add_member(:media_capture_pipeline, Shapes::ShapeRef.new(shape: MediaCapturePipeline, location_name: "MediaCapturePipeline"))
    GetMediaCapturePipelineResponse.struct_class = Types::GetMediaCapturePipelineResponse

    GetMeetingRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "meetingId"))
    GetMeetingRequest.struct_class = Types::GetMeetingRequest

    GetMeetingResponse.add_member(:meeting, Shapes::ShapeRef.new(shape: Meeting, location_name: "Meeting"))
    GetMeetingResponse.struct_class = Types::GetMeetingResponse

    GetMessagingSessionEndpointRequest.struct_class = Types::GetMessagingSessionEndpointRequest

    GetMessagingSessionEndpointResponse.add_member(:endpoint, Shapes::ShapeRef.new(shape: MessagingSessionEndpoint, location_name: "Endpoint"))
    GetMessagingSessionEndpointResponse.struct_class = Types::GetMessagingSessionEndpointResponse

    GetPhoneNumberOrderRequest.add_member(:phone_number_order_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "phoneNumberOrderId"))
    GetPhoneNumberOrderRequest.struct_class = Types::GetPhoneNumberOrderRequest

    GetPhoneNumberOrderResponse.add_member(:phone_number_order, Shapes::ShapeRef.new(shape: PhoneNumberOrder, location_name: "PhoneNumberOrder"))
    GetPhoneNumberOrderResponse.struct_class = Types::GetPhoneNumberOrderResponse

    GetPhoneNumberRequest.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "phoneNumberId"))
    GetPhoneNumberRequest.struct_class = Types::GetPhoneNumberRequest

    GetPhoneNumberResponse.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "PhoneNumber"))
    GetPhoneNumberResponse.struct_class = Types::GetPhoneNumberResponse

    GetPhoneNumberSettingsResponse.add_member(:calling_name, Shapes::ShapeRef.new(shape: CallingName, location_name: "CallingName"))
    GetPhoneNumberSettingsResponse.add_member(:calling_name_updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CallingNameUpdatedTimestamp"))
    GetPhoneNumberSettingsResponse.struct_class = Types::GetPhoneNumberSettingsResponse

    GetProxySessionRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString128, required: true, location: "uri", location_name: "voiceConnectorId"))
    GetProxySessionRequest.add_member(:proxy_session_id, Shapes::ShapeRef.new(shape: NonEmptyString128, required: true, location: "uri", location_name: "proxySessionId"))
    GetProxySessionRequest.struct_class = Types::GetProxySessionRequest

    GetProxySessionResponse.add_member(:proxy_session, Shapes::ShapeRef.new(shape: ProxySession, location_name: "ProxySession"))
    GetProxySessionResponse.struct_class = Types::GetProxySessionResponse

    GetRetentionSettingsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    GetRetentionSettingsRequest.struct_class = Types::GetRetentionSettingsRequest

    GetRetentionSettingsResponse.add_member(:retention_settings, Shapes::ShapeRef.new(shape: RetentionSettings, location_name: "RetentionSettings"))
    GetRetentionSettingsResponse.add_member(:initiate_deletion_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "InitiateDeletionTimestamp"))
    GetRetentionSettingsResponse.struct_class = Types::GetRetentionSettingsResponse

    GetRoomRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    GetRoomRequest.add_member(:room_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "roomId"))
    GetRoomRequest.struct_class = Types::GetRoomRequest

    GetRoomResponse.add_member(:room, Shapes::ShapeRef.new(shape: Room, location_name: "Room"))
    GetRoomResponse.struct_class = Types::GetRoomResponse

    GetSipMediaApplicationLoggingConfigurationRequest.add_member(:sip_media_application_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "sipMediaApplicationId"))
    GetSipMediaApplicationLoggingConfigurationRequest.struct_class = Types::GetSipMediaApplicationLoggingConfigurationRequest

    GetSipMediaApplicationLoggingConfigurationResponse.add_member(:sip_media_application_logging_configuration, Shapes::ShapeRef.new(shape: SipMediaApplicationLoggingConfiguration, location_name: "SipMediaApplicationLoggingConfiguration"))
    GetSipMediaApplicationLoggingConfigurationResponse.struct_class = Types::GetSipMediaApplicationLoggingConfigurationResponse

    GetSipMediaApplicationRequest.add_member(:sip_media_application_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "sipMediaApplicationId"))
    GetSipMediaApplicationRequest.struct_class = Types::GetSipMediaApplicationRequest

    GetSipMediaApplicationResponse.add_member(:sip_media_application, Shapes::ShapeRef.new(shape: SipMediaApplication, location_name: "SipMediaApplication"))
    GetSipMediaApplicationResponse.struct_class = Types::GetSipMediaApplicationResponse

    GetSipRuleRequest.add_member(:sip_rule_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "sipRuleId"))
    GetSipRuleRequest.struct_class = Types::GetSipRuleRequest

    GetSipRuleResponse.add_member(:sip_rule, Shapes::ShapeRef.new(shape: SipRule, location_name: "SipRule"))
    GetSipRuleResponse.struct_class = Types::GetSipRuleResponse

    GetUserRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    GetUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "userId"))
    GetUserRequest.struct_class = Types::GetUserRequest

    GetUserResponse.add_member(:user, Shapes::ShapeRef.new(shape: User, location_name: "User"))
    GetUserResponse.struct_class = Types::GetUserResponse

    GetUserSettingsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "accountId"))
    GetUserSettingsRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "userId"))
    GetUserSettingsRequest.struct_class = Types::GetUserSettingsRequest

    GetUserSettingsResponse.add_member(:user_settings, Shapes::ShapeRef.new(shape: UserSettings, location_name: "UserSettings"))
    GetUserSettingsResponse.struct_class = Types::GetUserSettingsResponse

    GetVoiceConnectorEmergencyCallingConfigurationRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    GetVoiceConnectorEmergencyCallingConfigurationRequest.struct_class = Types::GetVoiceConnectorEmergencyCallingConfigurationRequest

    GetVoiceConnectorEmergencyCallingConfigurationResponse.add_member(:emergency_calling_configuration, Shapes::ShapeRef.new(shape: EmergencyCallingConfiguration, location_name: "EmergencyCallingConfiguration"))
    GetVoiceConnectorEmergencyCallingConfigurationResponse.struct_class = Types::GetVoiceConnectorEmergencyCallingConfigurationResponse

    GetVoiceConnectorGroupRequest.add_member(:voice_connector_group_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorGroupId"))
    GetVoiceConnectorGroupRequest.struct_class = Types::GetVoiceConnectorGroupRequest

    GetVoiceConnectorGroupResponse.add_member(:voice_connector_group, Shapes::ShapeRef.new(shape: VoiceConnectorGroup, location_name: "VoiceConnectorGroup"))
    GetVoiceConnectorGroupResponse.struct_class = Types::GetVoiceConnectorGroupResponse

    GetVoiceConnectorLoggingConfigurationRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    GetVoiceConnectorLoggingConfigurationRequest.struct_class = Types::GetVoiceConnectorLoggingConfigurationRequest

    GetVoiceConnectorLoggingConfigurationResponse.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: "LoggingConfiguration"))
    GetVoiceConnectorLoggingConfigurationResponse.struct_class = Types::GetVoiceConnectorLoggingConfigurationResponse

    GetVoiceConnectorOriginationRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    GetVoiceConnectorOriginationRequest.struct_class = Types::GetVoiceConnectorOriginationRequest

    GetVoiceConnectorOriginationResponse.add_member(:origination, Shapes::ShapeRef.new(shape: Origination, location_name: "Origination"))
    GetVoiceConnectorOriginationResponse.struct_class = Types::GetVoiceConnectorOriginationResponse

    GetVoiceConnectorProxyRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString128, required: true, location: "uri", location_name: "voiceConnectorId"))
    GetVoiceConnectorProxyRequest.struct_class = Types::GetVoiceConnectorProxyRequest

    GetVoiceConnectorProxyResponse.add_member(:proxy, Shapes::ShapeRef.new(shape: Proxy, location_name: "Proxy"))
    GetVoiceConnectorProxyResponse.struct_class = Types::GetVoiceConnectorProxyResponse

    GetVoiceConnectorRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    GetVoiceConnectorRequest.struct_class = Types::GetVoiceConnectorRequest

    GetVoiceConnectorResponse.add_member(:voice_connector, Shapes::ShapeRef.new(shape: VoiceConnector, location_name: "VoiceConnector"))
    GetVoiceConnectorResponse.struct_class = Types::GetVoiceConnectorResponse

    GetVoiceConnectorStreamingConfigurationRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    GetVoiceConnectorStreamingConfigurationRequest.struct_class = Types::GetVoiceConnectorStreamingConfigurationRequest

    GetVoiceConnectorStreamingConfigurationResponse.add_member(:streaming_configuration, Shapes::ShapeRef.new(shape: StreamingConfiguration, location_name: "StreamingConfiguration"))
    GetVoiceConnectorStreamingConfigurationResponse.struct_class = Types::GetVoiceConnectorStreamingConfigurationResponse

    GetVoiceConnectorTerminationHealthRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    GetVoiceConnectorTerminationHealthRequest.struct_class = Types::GetVoiceConnectorTerminationHealthRequest

    GetVoiceConnectorTerminationHealthResponse.add_member(:termination_health, Shapes::ShapeRef.new(shape: TerminationHealth, location_name: "TerminationHealth"))
    GetVoiceConnectorTerminationHealthResponse.struct_class = Types::GetVoiceConnectorTerminationHealthResponse

    GetVoiceConnectorTerminationRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    GetVoiceConnectorTerminationRequest.struct_class = Types::GetVoiceConnectorTerminationRequest

    GetVoiceConnectorTerminationResponse.add_member(:termination, Shapes::ShapeRef.new(shape: Termination, location_name: "Termination"))
    GetVoiceConnectorTerminationResponse.struct_class = Types::GetVoiceConnectorTerminationResponse

    Identity.add_member(:arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "Arn"))
    Identity.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    Identity.struct_class = Types::Identity

    Invite.add_member(:invite_id, Shapes::ShapeRef.new(shape: String, location_name: "InviteId"))
    Invite.add_member(:status, Shapes::ShapeRef.new(shape: InviteStatus, location_name: "Status"))
    Invite.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "EmailAddress"))
    Invite.add_member(:email_status, Shapes::ShapeRef.new(shape: EmailStatus, location_name: "EmailStatus"))
    Invite.struct_class = Types::Invite

    InviteList.member = Shapes::ShapeRef.new(shape: Invite)

    InviteUsersRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    InviteUsersRequest.add_member(:user_email_list, Shapes::ShapeRef.new(shape: UserEmailList, required: true, location_name: "UserEmailList"))
    InviteUsersRequest.add_member(:user_type, Shapes::ShapeRef.new(shape: UserType, location_name: "UserType"))
    InviteUsersRequest.struct_class = Types::InviteUsersRequest

    InviteUsersResponse.add_member(:invites, Shapes::ShapeRef.new(shape: InviteList, location_name: "Invites"))
    InviteUsersResponse.struct_class = Types::InviteUsersResponse

    LicenseList.member = Shapes::ShapeRef.new(shape: License)

    ListAccountsRequest.add_member(:name, Shapes::ShapeRef.new(shape: AccountName, location: "querystring", location_name: "name"))
    ListAccountsRequest.add_member(:user_email, Shapes::ShapeRef.new(shape: EmailAddress, location: "querystring", location_name: "user-email"))
    ListAccountsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListAccountsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ProfileServiceMaxResults, location: "querystring", location_name: "max-results"))
    ListAccountsRequest.struct_class = Types::ListAccountsRequest

    ListAccountsResponse.add_member(:accounts, Shapes::ShapeRef.new(shape: AccountList, location_name: "Accounts"))
    ListAccountsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListAccountsResponse.struct_class = Types::ListAccountsResponse

    ListAppInstanceAdminsRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceArn"))
    ListAppInstanceAdminsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results"))
    ListAppInstanceAdminsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next-token"))
    ListAppInstanceAdminsRequest.struct_class = Types::ListAppInstanceAdminsRequest

    ListAppInstanceAdminsResponse.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "AppInstanceArn"))
    ListAppInstanceAdminsResponse.add_member(:app_instance_admins, Shapes::ShapeRef.new(shape: AppInstanceAdminList, location_name: "AppInstanceAdmins"))
    ListAppInstanceAdminsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAppInstanceAdminsResponse.struct_class = Types::ListAppInstanceAdminsResponse

    ListAppInstanceUsersRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "querystring", location_name: "app-instance-arn"))
    ListAppInstanceUsersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results"))
    ListAppInstanceUsersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next-token"))
    ListAppInstanceUsersRequest.struct_class = Types::ListAppInstanceUsersRequest

    ListAppInstanceUsersResponse.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "AppInstanceArn"))
    ListAppInstanceUsersResponse.add_member(:app_instance_users, Shapes::ShapeRef.new(shape: AppInstanceUserList, location_name: "AppInstanceUsers"))
    ListAppInstanceUsersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAppInstanceUsersResponse.struct_class = Types::ListAppInstanceUsersResponse

    ListAppInstancesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results"))
    ListAppInstancesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next-token"))
    ListAppInstancesRequest.struct_class = Types::ListAppInstancesRequest

    ListAppInstancesResponse.add_member(:app_instances, Shapes::ShapeRef.new(shape: AppInstanceList, location_name: "AppInstances"))
    ListAppInstancesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAppInstancesResponse.struct_class = Types::ListAppInstancesResponse

    ListAttendeeTagsRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "meetingId"))
    ListAttendeeTagsRequest.add_member(:attendee_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "attendeeId"))
    ListAttendeeTagsRequest.struct_class = Types::ListAttendeeTagsRequest

    ListAttendeeTagsResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListAttendeeTagsResponse.struct_class = Types::ListAttendeeTagsResponse

    ListAttendeesRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "meetingId"))
    ListAttendeesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListAttendeesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultMax, location: "querystring", location_name: "max-results"))
    ListAttendeesRequest.struct_class = Types::ListAttendeesRequest

    ListAttendeesResponse.add_member(:attendees, Shapes::ShapeRef.new(shape: AttendeeList, location_name: "Attendees"))
    ListAttendeesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListAttendeesResponse.struct_class = Types::ListAttendeesResponse

    ListBotsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    ListBotsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultMax, location: "querystring", location_name: "max-results"))
    ListBotsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListBotsRequest.struct_class = Types::ListBotsRequest

    ListBotsResponse.add_member(:bots, Shapes::ShapeRef.new(shape: BotList, location_name: "Bots"))
    ListBotsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListBotsResponse.struct_class = Types::ListBotsResponse

    ListChannelBansRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    ListChannelBansRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results"))
    ListChannelBansRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next-token"))
    ListChannelBansRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, location: "header", location_name: "x-amz-chime-bearer"))
    ListChannelBansRequest.struct_class = Types::ListChannelBansRequest

    ListChannelBansResponse.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    ListChannelBansResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListChannelBansResponse.add_member(:channel_bans, Shapes::ShapeRef.new(shape: ChannelBanSummaryList, location_name: "ChannelBans"))
    ListChannelBansResponse.struct_class = Types::ListChannelBansResponse

    ListChannelMembershipsForAppInstanceUserRequest.add_member(:app_instance_user_arn, Shapes::ShapeRef.new(shape: ChimeArn, location: "querystring", location_name: "app-instance-user-arn"))
    ListChannelMembershipsForAppInstanceUserRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results"))
    ListChannelMembershipsForAppInstanceUserRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next-token"))
    ListChannelMembershipsForAppInstanceUserRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, location: "header", location_name: "x-amz-chime-bearer"))
    ListChannelMembershipsForAppInstanceUserRequest.struct_class = Types::ListChannelMembershipsForAppInstanceUserRequest

    ListChannelMembershipsForAppInstanceUserResponse.add_member(:channel_memberships, Shapes::ShapeRef.new(shape: ChannelMembershipForAppInstanceUserSummaryList, location_name: "ChannelMemberships"))
    ListChannelMembershipsForAppInstanceUserResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListChannelMembershipsForAppInstanceUserResponse.struct_class = Types::ListChannelMembershipsForAppInstanceUserResponse

    ListChannelMembershipsRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    ListChannelMembershipsRequest.add_member(:type, Shapes::ShapeRef.new(shape: ChannelMembershipType, location: "querystring", location_name: "type"))
    ListChannelMembershipsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results"))
    ListChannelMembershipsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next-token"))
    ListChannelMembershipsRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, location: "header", location_name: "x-amz-chime-bearer"))
    ListChannelMembershipsRequest.struct_class = Types::ListChannelMembershipsRequest

    ListChannelMembershipsResponse.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    ListChannelMembershipsResponse.add_member(:channel_memberships, Shapes::ShapeRef.new(shape: ChannelMembershipSummaryList, location_name: "ChannelMemberships"))
    ListChannelMembershipsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListChannelMembershipsResponse.struct_class = Types::ListChannelMembershipsResponse

    ListChannelMessagesRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    ListChannelMessagesRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location: "querystring", location_name: "sort-order"))
    ListChannelMessagesRequest.add_member(:not_before, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "not-before"))
    ListChannelMessagesRequest.add_member(:not_after, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "not-after"))
    ListChannelMessagesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results"))
    ListChannelMessagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next-token"))
    ListChannelMessagesRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, location: "header", location_name: "x-amz-chime-bearer"))
    ListChannelMessagesRequest.struct_class = Types::ListChannelMessagesRequest

    ListChannelMessagesResponse.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    ListChannelMessagesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListChannelMessagesResponse.add_member(:channel_messages, Shapes::ShapeRef.new(shape: ChannelMessageSummaryList, location_name: "ChannelMessages"))
    ListChannelMessagesResponse.struct_class = Types::ListChannelMessagesResponse

    ListChannelModeratorsRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    ListChannelModeratorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results"))
    ListChannelModeratorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next-token"))
    ListChannelModeratorsRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, location: "header", location_name: "x-amz-chime-bearer"))
    ListChannelModeratorsRequest.struct_class = Types::ListChannelModeratorsRequest

    ListChannelModeratorsResponse.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    ListChannelModeratorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListChannelModeratorsResponse.add_member(:channel_moderators, Shapes::ShapeRef.new(shape: ChannelModeratorSummaryList, location_name: "ChannelModerators"))
    ListChannelModeratorsResponse.struct_class = Types::ListChannelModeratorsResponse

    ListChannelsModeratedByAppInstanceUserRequest.add_member(:app_instance_user_arn, Shapes::ShapeRef.new(shape: ChimeArn, location: "querystring", location_name: "app-instance-user-arn"))
    ListChannelsModeratedByAppInstanceUserRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results"))
    ListChannelsModeratedByAppInstanceUserRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next-token"))
    ListChannelsModeratedByAppInstanceUserRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, location: "header", location_name: "x-amz-chime-bearer"))
    ListChannelsModeratedByAppInstanceUserRequest.struct_class = Types::ListChannelsModeratedByAppInstanceUserRequest

    ListChannelsModeratedByAppInstanceUserResponse.add_member(:channels, Shapes::ShapeRef.new(shape: ChannelModeratedByAppInstanceUserSummaryList, location_name: "Channels"))
    ListChannelsModeratedByAppInstanceUserResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListChannelsModeratedByAppInstanceUserResponse.struct_class = Types::ListChannelsModeratedByAppInstanceUserResponse

    ListChannelsRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "querystring", location_name: "app-instance-arn"))
    ListChannelsRequest.add_member(:privacy, Shapes::ShapeRef.new(shape: ChannelPrivacy, location: "querystring", location_name: "privacy"))
    ListChannelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results"))
    ListChannelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next-token"))
    ListChannelsRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, location: "header", location_name: "x-amz-chime-bearer"))
    ListChannelsRequest.struct_class = Types::ListChannelsRequest

    ListChannelsResponse.add_member(:channels, Shapes::ShapeRef.new(shape: ChannelSummaryList, location_name: "Channels"))
    ListChannelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListChannelsResponse.struct_class = Types::ListChannelsResponse

    ListMediaCapturePipelinesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListMediaCapturePipelinesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultMax, location: "querystring", location_name: "max-results"))
    ListMediaCapturePipelinesRequest.struct_class = Types::ListMediaCapturePipelinesRequest

    ListMediaCapturePipelinesResponse.add_member(:media_capture_pipelines, Shapes::ShapeRef.new(shape: MediaCapturePipelineList, location_name: "MediaCapturePipelines"))
    ListMediaCapturePipelinesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListMediaCapturePipelinesResponse.struct_class = Types::ListMediaCapturePipelinesResponse

    ListMeetingTagsRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "meetingId"))
    ListMeetingTagsRequest.struct_class = Types::ListMeetingTagsRequest

    ListMeetingTagsResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListMeetingTagsResponse.struct_class = Types::ListMeetingTagsResponse

    ListMeetingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListMeetingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultMax, location: "querystring", location_name: "max-results"))
    ListMeetingsRequest.struct_class = Types::ListMeetingsRequest

    ListMeetingsResponse.add_member(:meetings, Shapes::ShapeRef.new(shape: MeetingList, location_name: "Meetings"))
    ListMeetingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListMeetingsResponse.struct_class = Types::ListMeetingsResponse

    ListPhoneNumberOrdersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListPhoneNumberOrdersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultMax, location: "querystring", location_name: "max-results"))
    ListPhoneNumberOrdersRequest.struct_class = Types::ListPhoneNumberOrdersRequest

    ListPhoneNumberOrdersResponse.add_member(:phone_number_orders, Shapes::ShapeRef.new(shape: PhoneNumberOrderList, location_name: "PhoneNumberOrders"))
    ListPhoneNumberOrdersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListPhoneNumberOrdersResponse.struct_class = Types::ListPhoneNumberOrdersResponse

    ListPhoneNumbersRequest.add_member(:status, Shapes::ShapeRef.new(shape: PhoneNumberStatus, location: "querystring", location_name: "status"))
    ListPhoneNumbersRequest.add_member(:product_type, Shapes::ShapeRef.new(shape: PhoneNumberProductType, location: "querystring", location_name: "product-type"))
    ListPhoneNumbersRequest.add_member(:filter_name, Shapes::ShapeRef.new(shape: PhoneNumberAssociationName, location: "querystring", location_name: "filter-name"))
    ListPhoneNumbersRequest.add_member(:filter_value, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "filter-value"))
    ListPhoneNumbersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultMax, location: "querystring", location_name: "max-results"))
    ListPhoneNumbersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListPhoneNumbersRequest.struct_class = Types::ListPhoneNumbersRequest

    ListPhoneNumbersResponse.add_member(:phone_numbers, Shapes::ShapeRef.new(shape: PhoneNumberList, location_name: "PhoneNumbers"))
    ListPhoneNumbersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListPhoneNumbersResponse.struct_class = Types::ListPhoneNumbersResponse

    ListProxySessionsRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString128, required: true, location: "uri", location_name: "voiceConnectorId"))
    ListProxySessionsRequest.add_member(:status, Shapes::ShapeRef.new(shape: ProxySessionStatus, location: "querystring", location_name: "status"))
    ListProxySessionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenString, location: "querystring", location_name: "next-token"))
    ListProxySessionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultMax, location: "querystring", location_name: "max-results"))
    ListProxySessionsRequest.struct_class = Types::ListProxySessionsRequest

    ListProxySessionsResponse.add_member(:proxy_sessions, Shapes::ShapeRef.new(shape: ProxySessions, location_name: "ProxySessions"))
    ListProxySessionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenString, location_name: "NextToken"))
    ListProxySessionsResponse.struct_class = Types::ListProxySessionsResponse

    ListRoomMembershipsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    ListRoomMembershipsRequest.add_member(:room_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "roomId"))
    ListRoomMembershipsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultMax, location: "querystring", location_name: "max-results"))
    ListRoomMembershipsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListRoomMembershipsRequest.struct_class = Types::ListRoomMembershipsRequest

    ListRoomMembershipsResponse.add_member(:room_memberships, Shapes::ShapeRef.new(shape: RoomMembershipList, location_name: "RoomMemberships"))
    ListRoomMembershipsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListRoomMembershipsResponse.struct_class = Types::ListRoomMembershipsResponse

    ListRoomsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    ListRoomsRequest.add_member(:member_id, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "member-id"))
    ListRoomsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultMax, location: "querystring", location_name: "max-results"))
    ListRoomsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListRoomsRequest.struct_class = Types::ListRoomsRequest

    ListRoomsResponse.add_member(:rooms, Shapes::ShapeRef.new(shape: RoomList, location_name: "Rooms"))
    ListRoomsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListRoomsResponse.struct_class = Types::ListRoomsResponse

    ListSipMediaApplicationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultMax, location: "querystring", location_name: "max-results"))
    ListSipMediaApplicationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenString, location: "querystring", location_name: "next-token"))
    ListSipMediaApplicationsRequest.struct_class = Types::ListSipMediaApplicationsRequest

    ListSipMediaApplicationsResponse.add_member(:sip_media_applications, Shapes::ShapeRef.new(shape: SipMediaApplicationList, location_name: "SipMediaApplications"))
    ListSipMediaApplicationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenString, location_name: "NextToken"))
    ListSipMediaApplicationsResponse.struct_class = Types::ListSipMediaApplicationsResponse

    ListSipRulesRequest.add_member(:sip_media_application_id, Shapes::ShapeRef.new(shape: NonEmptyString, location: "querystring", location_name: "sip-media-application"))
    ListSipRulesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultMax, location: "querystring", location_name: "max-results"))
    ListSipRulesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenString, location: "querystring", location_name: "next-token"))
    ListSipRulesRequest.struct_class = Types::ListSipRulesRequest

    ListSipRulesResponse.add_member(:sip_rules, Shapes::ShapeRef.new(shape: SipRuleList, location_name: "SipRules"))
    ListSipRulesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenString, location_name: "NextToken"))
    ListSipRulesResponse.struct_class = Types::ListSipRulesResponse

    ListSupportedPhoneNumberCountriesRequest.add_member(:product_type, Shapes::ShapeRef.new(shape: PhoneNumberProductType, required: true, location: "querystring", location_name: "product-type"))
    ListSupportedPhoneNumberCountriesRequest.struct_class = Types::ListSupportedPhoneNumberCountriesRequest

    ListSupportedPhoneNumberCountriesResponse.add_member(:phone_number_countries, Shapes::ShapeRef.new(shape: PhoneNumberCountriesList, location_name: "PhoneNumberCountries"))
    ListSupportedPhoneNumberCountriesResponse.struct_class = Types::ListSupportedPhoneNumberCountriesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "arn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListUsersRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    ListUsersRequest.add_member(:user_email, Shapes::ShapeRef.new(shape: EmailAddress, location: "querystring", location_name: "user-email"))
    ListUsersRequest.add_member(:user_type, Shapes::ShapeRef.new(shape: UserType, location: "querystring", location_name: "user-type"))
    ListUsersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ProfileServiceMaxResults, location: "querystring", location_name: "max-results"))
    ListUsersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListUsersRequest.struct_class = Types::ListUsersRequest

    ListUsersResponse.add_member(:users, Shapes::ShapeRef.new(shape: UserList, location_name: "Users"))
    ListUsersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListUsersResponse.struct_class = Types::ListUsersResponse

    ListVoiceConnectorGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListVoiceConnectorGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultMax, location: "querystring", location_name: "max-results"))
    ListVoiceConnectorGroupsRequest.struct_class = Types::ListVoiceConnectorGroupsRequest

    ListVoiceConnectorGroupsResponse.add_member(:voice_connector_groups, Shapes::ShapeRef.new(shape: VoiceConnectorGroupList, location_name: "VoiceConnectorGroups"))
    ListVoiceConnectorGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListVoiceConnectorGroupsResponse.struct_class = Types::ListVoiceConnectorGroupsResponse

    ListVoiceConnectorTerminationCredentialsRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    ListVoiceConnectorTerminationCredentialsRequest.struct_class = Types::ListVoiceConnectorTerminationCredentialsRequest

    ListVoiceConnectorTerminationCredentialsResponse.add_member(:usernames, Shapes::ShapeRef.new(shape: SensitiveStringList, location_name: "Usernames"))
    ListVoiceConnectorTerminationCredentialsResponse.struct_class = Types::ListVoiceConnectorTerminationCredentialsResponse

    ListVoiceConnectorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListVoiceConnectorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultMax, location: "querystring", location_name: "max-results"))
    ListVoiceConnectorsRequest.struct_class = Types::ListVoiceConnectorsRequest

    ListVoiceConnectorsResponse.add_member(:voice_connectors, Shapes::ShapeRef.new(shape: VoiceConnectorList, location_name: "VoiceConnectors"))
    ListVoiceConnectorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListVoiceConnectorsResponse.struct_class = Types::ListVoiceConnectorsResponse

    LoggingConfiguration.add_member(:enable_sip_logs, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableSIPLogs"))
    LoggingConfiguration.add_member(:enable_media_metric_logs, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableMediaMetricLogs"))
    LoggingConfiguration.struct_class = Types::LoggingConfiguration

    LogoutUserRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    LogoutUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "userId"))
    LogoutUserRequest.struct_class = Types::LogoutUserRequest

    LogoutUserResponse.struct_class = Types::LogoutUserResponse

    MediaCapturePipeline.add_member(:media_pipeline_id, Shapes::ShapeRef.new(shape: GuidString, location_name: "MediaPipelineId"))
    MediaCapturePipeline.add_member(:source_type, Shapes::ShapeRef.new(shape: MediaPipelineSourceType, location_name: "SourceType"))
    MediaCapturePipeline.add_member(:source_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SourceArn"))
    MediaCapturePipeline.add_member(:status, Shapes::ShapeRef.new(shape: MediaPipelineStatus, location_name: "Status"))
    MediaCapturePipeline.add_member(:sink_type, Shapes::ShapeRef.new(shape: MediaPipelineSinkType, location_name: "SinkType"))
    MediaCapturePipeline.add_member(:sink_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SinkArn"))
    MediaCapturePipeline.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    MediaCapturePipeline.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "UpdatedTimestamp"))
    MediaCapturePipeline.add_member(:chime_sdk_meeting_configuration, Shapes::ShapeRef.new(shape: ChimeSdkMeetingConfiguration, location_name: "ChimeSdkMeetingConfiguration"))
    MediaCapturePipeline.struct_class = Types::MediaCapturePipeline

    MediaCapturePipelineList.member = Shapes::ShapeRef.new(shape: MediaCapturePipeline)

    MediaPlacement.add_member(:audio_host_url, Shapes::ShapeRef.new(shape: UriType, location_name: "AudioHostUrl"))
    MediaPlacement.add_member(:audio_fallback_url, Shapes::ShapeRef.new(shape: UriType, location_name: "AudioFallbackUrl"))
    MediaPlacement.add_member(:screen_data_url, Shapes::ShapeRef.new(shape: UriType, location_name: "ScreenDataUrl"))
    MediaPlacement.add_member(:screen_sharing_url, Shapes::ShapeRef.new(shape: UriType, location_name: "ScreenSharingUrl"))
    MediaPlacement.add_member(:screen_viewing_url, Shapes::ShapeRef.new(shape: UriType, location_name: "ScreenViewingUrl"))
    MediaPlacement.add_member(:signaling_url, Shapes::ShapeRef.new(shape: UriType, location_name: "SignalingUrl"))
    MediaPlacement.add_member(:turn_control_url, Shapes::ShapeRef.new(shape: UriType, location_name: "TurnControlUrl"))
    MediaPlacement.add_member(:event_ingestion_url, Shapes::ShapeRef.new(shape: UriType, location_name: "EventIngestionUrl"))
    MediaPlacement.struct_class = Types::MediaPlacement

    Meeting.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, location_name: "MeetingId"))
    Meeting.add_member(:external_meeting_id, Shapes::ShapeRef.new(shape: ExternalMeetingIdType, location_name: "ExternalMeetingId"))
    Meeting.add_member(:media_placement, Shapes::ShapeRef.new(shape: MediaPlacement, location_name: "MediaPlacement"))
    Meeting.add_member(:media_region, Shapes::ShapeRef.new(shape: String, location_name: "MediaRegion"))
    Meeting.struct_class = Types::Meeting

    MeetingList.member = Shapes::ShapeRef.new(shape: Meeting)

    MeetingNotificationConfiguration.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SnsTopicArn"))
    MeetingNotificationConfiguration.add_member(:sqs_queue_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SqsQueueArn"))
    MeetingNotificationConfiguration.struct_class = Types::MeetingNotificationConfiguration

    MeetingTagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    MeetingTagList.member = Shapes::ShapeRef.new(shape: Tag)

    Member.add_member(:member_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MemberId"))
    Member.add_member(:member_type, Shapes::ShapeRef.new(shape: MemberType, location_name: "MemberType"))
    Member.add_member(:email, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "Email"))
    Member.add_member(:full_name, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "FullName"))
    Member.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AccountId"))
    Member.struct_class = Types::Member

    MemberArns.member = Shapes::ShapeRef.new(shape: ChimeArn)

    MemberError.add_member(:member_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MemberId"))
    MemberError.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    MemberError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    MemberError.struct_class = Types::MemberError

    MemberErrorList.member = Shapes::ShapeRef.new(shape: MemberError)

    Members.member = Shapes::ShapeRef.new(shape: Identity)

    MembershipItem.add_member(:member_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MemberId"))
    MembershipItem.add_member(:role, Shapes::ShapeRef.new(shape: RoomMembershipRole, location_name: "Role"))
    MembershipItem.struct_class = Types::MembershipItem

    MembershipItemList.member = Shapes::ShapeRef.new(shape: MembershipItem)

    MessagingSessionEndpoint.add_member(:url, Shapes::ShapeRef.new(shape: UrlType, location_name: "Url"))
    MessagingSessionEndpoint.struct_class = Types::MessagingSessionEndpoint

    NonEmptyStringList.member = Shapes::ShapeRef.new(shape: String)

    NotFoundException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    NotFoundException.struct_class = Types::NotFoundException

    OrderedPhoneNumber.add_member(:e164_phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: "E164PhoneNumber"))
    OrderedPhoneNumber.add_member(:status, Shapes::ShapeRef.new(shape: OrderedPhoneNumberStatus, location_name: "Status"))
    OrderedPhoneNumber.struct_class = Types::OrderedPhoneNumber

    OrderedPhoneNumberList.member = Shapes::ShapeRef.new(shape: OrderedPhoneNumber)

    Origination.add_member(:routes, Shapes::ShapeRef.new(shape: OriginationRouteList, location_name: "Routes"))
    Origination.add_member(:disabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Disabled"))
    Origination.struct_class = Types::Origination

    OriginationRoute.add_member(:host, Shapes::ShapeRef.new(shape: String, location_name: "Host"))
    OriginationRoute.add_member(:port, Shapes::ShapeRef.new(shape: Port, location_name: "Port"))
    OriginationRoute.add_member(:protocol, Shapes::ShapeRef.new(shape: OriginationRouteProtocol, location_name: "Protocol"))
    OriginationRoute.add_member(:priority, Shapes::ShapeRef.new(shape: OriginationRoutePriority, location_name: "Priority"))
    OriginationRoute.add_member(:weight, Shapes::ShapeRef.new(shape: OriginationRouteWeight, location_name: "Weight"))
    OriginationRoute.struct_class = Types::OriginationRoute

    OriginationRouteList.member = Shapes::ShapeRef.new(shape: OriginationRoute)

    Participant.add_member(:phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: "PhoneNumber"))
    Participant.add_member(:proxy_phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: "ProxyPhoneNumber"))
    Participant.struct_class = Types::Participant

    ParticipantPhoneNumberList.member = Shapes::ShapeRef.new(shape: E164PhoneNumber)

    Participants.member = Shapes::ShapeRef.new(shape: Participant)

    PhoneNumber.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: String, location_name: "PhoneNumberId"))
    PhoneNumber.add_member(:e164_phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: "E164PhoneNumber"))
    PhoneNumber.add_member(:country, Shapes::ShapeRef.new(shape: Alpha2CountryCode, location_name: "Country"))
    PhoneNumber.add_member(:type, Shapes::ShapeRef.new(shape: PhoneNumberType, location_name: "Type"))
    PhoneNumber.add_member(:product_type, Shapes::ShapeRef.new(shape: PhoneNumberProductType, location_name: "ProductType"))
    PhoneNumber.add_member(:status, Shapes::ShapeRef.new(shape: PhoneNumberStatus, location_name: "Status"))
    PhoneNumber.add_member(:capabilities, Shapes::ShapeRef.new(shape: PhoneNumberCapabilities, location_name: "Capabilities"))
    PhoneNumber.add_member(:associations, Shapes::ShapeRef.new(shape: PhoneNumberAssociationList, location_name: "Associations"))
    PhoneNumber.add_member(:calling_name, Shapes::ShapeRef.new(shape: CallingName, location_name: "CallingName"))
    PhoneNumber.add_member(:calling_name_status, Shapes::ShapeRef.new(shape: CallingNameStatus, location_name: "CallingNameStatus"))
    PhoneNumber.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    PhoneNumber.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "UpdatedTimestamp"))
    PhoneNumber.add_member(:deletion_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "DeletionTimestamp"))
    PhoneNumber.struct_class = Types::PhoneNumber

    PhoneNumberAssociation.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    PhoneNumberAssociation.add_member(:name, Shapes::ShapeRef.new(shape: PhoneNumberAssociationName, location_name: "Name"))
    PhoneNumberAssociation.add_member(:associated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "AssociatedTimestamp"))
    PhoneNumberAssociation.struct_class = Types::PhoneNumberAssociation

    PhoneNumberAssociationList.member = Shapes::ShapeRef.new(shape: PhoneNumberAssociation)

    PhoneNumberCapabilities.add_member(:inbound_call, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "InboundCall"))
    PhoneNumberCapabilities.add_member(:outbound_call, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "OutboundCall"))
    PhoneNumberCapabilities.add_member(:inbound_sms, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "InboundSMS"))
    PhoneNumberCapabilities.add_member(:outbound_sms, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "OutboundSMS"))
    PhoneNumberCapabilities.add_member(:inbound_mms, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "InboundMMS"))
    PhoneNumberCapabilities.add_member(:outbound_mms, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "OutboundMMS"))
    PhoneNumberCapabilities.struct_class = Types::PhoneNumberCapabilities

    PhoneNumberCountriesList.member = Shapes::ShapeRef.new(shape: PhoneNumberCountry)

    PhoneNumberCountry.add_member(:country_code, Shapes::ShapeRef.new(shape: Alpha2CountryCode, location_name: "CountryCode"))
    PhoneNumberCountry.add_member(:supported_phone_number_types, Shapes::ShapeRef.new(shape: PhoneNumberTypeList, location_name: "SupportedPhoneNumberTypes"))
    PhoneNumberCountry.struct_class = Types::PhoneNumberCountry

    PhoneNumberError.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PhoneNumberId"))
    PhoneNumberError.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    PhoneNumberError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    PhoneNumberError.struct_class = Types::PhoneNumberError

    PhoneNumberErrorList.member = Shapes::ShapeRef.new(shape: PhoneNumberError)

    PhoneNumberList.member = Shapes::ShapeRef.new(shape: PhoneNumber)

    PhoneNumberOrder.add_member(:phone_number_order_id, Shapes::ShapeRef.new(shape: GuidString, location_name: "PhoneNumberOrderId"))
    PhoneNumberOrder.add_member(:product_type, Shapes::ShapeRef.new(shape: PhoneNumberProductType, location_name: "ProductType"))
    PhoneNumberOrder.add_member(:status, Shapes::ShapeRef.new(shape: PhoneNumberOrderStatus, location_name: "Status"))
    PhoneNumberOrder.add_member(:ordered_phone_numbers, Shapes::ShapeRef.new(shape: OrderedPhoneNumberList, location_name: "OrderedPhoneNumbers"))
    PhoneNumberOrder.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    PhoneNumberOrder.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "UpdatedTimestamp"))
    PhoneNumberOrder.struct_class = Types::PhoneNumberOrder

    PhoneNumberOrderList.member = Shapes::ShapeRef.new(shape: PhoneNumberOrder)

    PhoneNumberTypeList.member = Shapes::ShapeRef.new(shape: PhoneNumberType)

    Proxy.add_member(:default_session_expiry_minutes, Shapes::ShapeRef.new(shape: Integer, location_name: "DefaultSessionExpiryMinutes"))
    Proxy.add_member(:disabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Disabled"))
    Proxy.add_member(:fall_back_phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: "FallBackPhoneNumber"))
    Proxy.add_member(:phone_number_countries, Shapes::ShapeRef.new(shape: StringList, location_name: "PhoneNumberCountries"))
    Proxy.struct_class = Types::Proxy

    ProxySession.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString128, location_name: "VoiceConnectorId"))
    ProxySession.add_member(:proxy_session_id, Shapes::ShapeRef.new(shape: NonEmptyString128, location_name: "ProxySessionId"))
    ProxySession.add_member(:name, Shapes::ShapeRef.new(shape: String128, location_name: "Name"))
    ProxySession.add_member(:status, Shapes::ShapeRef.new(shape: ProxySessionStatus, location_name: "Status"))
    ProxySession.add_member(:expiry_minutes, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "ExpiryMinutes"))
    ProxySession.add_member(:capabilities, Shapes::ShapeRef.new(shape: CapabilityList, location_name: "Capabilities"))
    ProxySession.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    ProxySession.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "UpdatedTimestamp"))
    ProxySession.add_member(:ended_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "EndedTimestamp"))
    ProxySession.add_member(:participants, Shapes::ShapeRef.new(shape: Participants, location_name: "Participants"))
    ProxySession.add_member(:number_selection_behavior, Shapes::ShapeRef.new(shape: NumberSelectionBehavior, location_name: "NumberSelectionBehavior"))
    ProxySession.add_member(:geo_match_level, Shapes::ShapeRef.new(shape: GeoMatchLevel, location_name: "GeoMatchLevel"))
    ProxySession.add_member(:geo_match_params, Shapes::ShapeRef.new(shape: GeoMatchParams, location_name: "GeoMatchParams"))
    ProxySession.struct_class = Types::ProxySession

    ProxySessions.member = Shapes::ShapeRef.new(shape: ProxySession)

    PutAppInstanceRetentionSettingsRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceArn"))
    PutAppInstanceRetentionSettingsRequest.add_member(:app_instance_retention_settings, Shapes::ShapeRef.new(shape: AppInstanceRetentionSettings, required: true, location_name: "AppInstanceRetentionSettings"))
    PutAppInstanceRetentionSettingsRequest.struct_class = Types::PutAppInstanceRetentionSettingsRequest

    PutAppInstanceRetentionSettingsResponse.add_member(:app_instance_retention_settings, Shapes::ShapeRef.new(shape: AppInstanceRetentionSettings, location_name: "AppInstanceRetentionSettings"))
    PutAppInstanceRetentionSettingsResponse.add_member(:initiate_deletion_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "InitiateDeletionTimestamp"))
    PutAppInstanceRetentionSettingsResponse.struct_class = Types::PutAppInstanceRetentionSettingsResponse

    PutAppInstanceStreamingConfigurationsRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceArn"))
    PutAppInstanceStreamingConfigurationsRequest.add_member(:app_instance_streaming_configurations, Shapes::ShapeRef.new(shape: AppInstanceStreamingConfigurationList, required: true, location_name: "AppInstanceStreamingConfigurations"))
    PutAppInstanceStreamingConfigurationsRequest.struct_class = Types::PutAppInstanceStreamingConfigurationsRequest

    PutAppInstanceStreamingConfigurationsResponse.add_member(:app_instance_streaming_configurations, Shapes::ShapeRef.new(shape: AppInstanceStreamingConfigurationList, location_name: "AppInstanceStreamingConfigurations"))
    PutAppInstanceStreamingConfigurationsResponse.struct_class = Types::PutAppInstanceStreamingConfigurationsResponse

    PutEventsConfigurationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    PutEventsConfigurationRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "botId"))
    PutEventsConfigurationRequest.add_member(:outbound_events_https_endpoint, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "OutboundEventsHTTPSEndpoint"))
    PutEventsConfigurationRequest.add_member(:lambda_function_arn, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "LambdaFunctionArn"))
    PutEventsConfigurationRequest.struct_class = Types::PutEventsConfigurationRequest

    PutEventsConfigurationResponse.add_member(:events_configuration, Shapes::ShapeRef.new(shape: EventsConfiguration, location_name: "EventsConfiguration"))
    PutEventsConfigurationResponse.struct_class = Types::PutEventsConfigurationResponse

    PutRetentionSettingsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    PutRetentionSettingsRequest.add_member(:retention_settings, Shapes::ShapeRef.new(shape: RetentionSettings, required: true, location_name: "RetentionSettings"))
    PutRetentionSettingsRequest.struct_class = Types::PutRetentionSettingsRequest

    PutRetentionSettingsResponse.add_member(:retention_settings, Shapes::ShapeRef.new(shape: RetentionSettings, location_name: "RetentionSettings"))
    PutRetentionSettingsResponse.add_member(:initiate_deletion_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "InitiateDeletionTimestamp"))
    PutRetentionSettingsResponse.struct_class = Types::PutRetentionSettingsResponse

    PutSipMediaApplicationLoggingConfigurationRequest.add_member(:sip_media_application_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "sipMediaApplicationId"))
    PutSipMediaApplicationLoggingConfigurationRequest.add_member(:sip_media_application_logging_configuration, Shapes::ShapeRef.new(shape: SipMediaApplicationLoggingConfiguration, location_name: "SipMediaApplicationLoggingConfiguration"))
    PutSipMediaApplicationLoggingConfigurationRequest.struct_class = Types::PutSipMediaApplicationLoggingConfigurationRequest

    PutSipMediaApplicationLoggingConfigurationResponse.add_member(:sip_media_application_logging_configuration, Shapes::ShapeRef.new(shape: SipMediaApplicationLoggingConfiguration, location_name: "SipMediaApplicationLoggingConfiguration"))
    PutSipMediaApplicationLoggingConfigurationResponse.struct_class = Types::PutSipMediaApplicationLoggingConfigurationResponse

    PutVoiceConnectorEmergencyCallingConfigurationRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    PutVoiceConnectorEmergencyCallingConfigurationRequest.add_member(:emergency_calling_configuration, Shapes::ShapeRef.new(shape: EmergencyCallingConfiguration, required: true, location_name: "EmergencyCallingConfiguration"))
    PutVoiceConnectorEmergencyCallingConfigurationRequest.struct_class = Types::PutVoiceConnectorEmergencyCallingConfigurationRequest

    PutVoiceConnectorEmergencyCallingConfigurationResponse.add_member(:emergency_calling_configuration, Shapes::ShapeRef.new(shape: EmergencyCallingConfiguration, location_name: "EmergencyCallingConfiguration"))
    PutVoiceConnectorEmergencyCallingConfigurationResponse.struct_class = Types::PutVoiceConnectorEmergencyCallingConfigurationResponse

    PutVoiceConnectorLoggingConfigurationRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    PutVoiceConnectorLoggingConfigurationRequest.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: LoggingConfiguration, required: true, location_name: "LoggingConfiguration"))
    PutVoiceConnectorLoggingConfigurationRequest.struct_class = Types::PutVoiceConnectorLoggingConfigurationRequest

    PutVoiceConnectorLoggingConfigurationResponse.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: "LoggingConfiguration"))
    PutVoiceConnectorLoggingConfigurationResponse.struct_class = Types::PutVoiceConnectorLoggingConfigurationResponse

    PutVoiceConnectorOriginationRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    PutVoiceConnectorOriginationRequest.add_member(:origination, Shapes::ShapeRef.new(shape: Origination, required: true, location_name: "Origination"))
    PutVoiceConnectorOriginationRequest.struct_class = Types::PutVoiceConnectorOriginationRequest

    PutVoiceConnectorOriginationResponse.add_member(:origination, Shapes::ShapeRef.new(shape: Origination, location_name: "Origination"))
    PutVoiceConnectorOriginationResponse.struct_class = Types::PutVoiceConnectorOriginationResponse

    PutVoiceConnectorProxyRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString128, required: true, location: "uri", location_name: "voiceConnectorId"))
    PutVoiceConnectorProxyRequest.add_member(:default_session_expiry_minutes, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "DefaultSessionExpiryMinutes"))
    PutVoiceConnectorProxyRequest.add_member(:phone_number_pool_countries, Shapes::ShapeRef.new(shape: CountryList, required: true, location_name: "PhoneNumberPoolCountries"))
    PutVoiceConnectorProxyRequest.add_member(:fall_back_phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: "FallBackPhoneNumber"))
    PutVoiceConnectorProxyRequest.add_member(:disabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Disabled"))
    PutVoiceConnectorProxyRequest.struct_class = Types::PutVoiceConnectorProxyRequest

    PutVoiceConnectorProxyResponse.add_member(:proxy, Shapes::ShapeRef.new(shape: Proxy, location_name: "Proxy"))
    PutVoiceConnectorProxyResponse.struct_class = Types::PutVoiceConnectorProxyResponse

    PutVoiceConnectorStreamingConfigurationRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    PutVoiceConnectorStreamingConfigurationRequest.add_member(:streaming_configuration, Shapes::ShapeRef.new(shape: StreamingConfiguration, required: true, location_name: "StreamingConfiguration"))
    PutVoiceConnectorStreamingConfigurationRequest.struct_class = Types::PutVoiceConnectorStreamingConfigurationRequest

    PutVoiceConnectorStreamingConfigurationResponse.add_member(:streaming_configuration, Shapes::ShapeRef.new(shape: StreamingConfiguration, location_name: "StreamingConfiguration"))
    PutVoiceConnectorStreamingConfigurationResponse.struct_class = Types::PutVoiceConnectorStreamingConfigurationResponse

    PutVoiceConnectorTerminationCredentialsRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    PutVoiceConnectorTerminationCredentialsRequest.add_member(:credentials, Shapes::ShapeRef.new(shape: CredentialList, location_name: "Credentials"))
    PutVoiceConnectorTerminationCredentialsRequest.struct_class = Types::PutVoiceConnectorTerminationCredentialsRequest

    PutVoiceConnectorTerminationRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    PutVoiceConnectorTerminationRequest.add_member(:termination, Shapes::ShapeRef.new(shape: Termination, required: true, location_name: "Termination"))
    PutVoiceConnectorTerminationRequest.struct_class = Types::PutVoiceConnectorTerminationRequest

    PutVoiceConnectorTerminationResponse.add_member(:termination, Shapes::ShapeRef.new(shape: Termination, location_name: "Termination"))
    PutVoiceConnectorTerminationResponse.struct_class = Types::PutVoiceConnectorTerminationResponse

    RedactChannelMessageRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    RedactChannelMessageRequest.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, required: true, location: "uri", location_name: "messageId"))
    RedactChannelMessageRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, location: "header", location_name: "x-amz-chime-bearer"))
    RedactChannelMessageRequest.struct_class = Types::RedactChannelMessageRequest

    RedactChannelMessageResponse.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    RedactChannelMessageResponse.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, location_name: "MessageId"))
    RedactChannelMessageResponse.struct_class = Types::RedactChannelMessageResponse

    RedactConversationMessageRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    RedactConversationMessageRequest.add_member(:conversation_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "conversationId"))
    RedactConversationMessageRequest.add_member(:message_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "messageId"))
    RedactConversationMessageRequest.struct_class = Types::RedactConversationMessageRequest

    RedactConversationMessageResponse.struct_class = Types::RedactConversationMessageResponse

    RedactRoomMessageRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    RedactRoomMessageRequest.add_member(:room_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "roomId"))
    RedactRoomMessageRequest.add_member(:message_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "messageId"))
    RedactRoomMessageRequest.struct_class = Types::RedactRoomMessageRequest

    RedactRoomMessageResponse.struct_class = Types::RedactRoomMessageResponse

    RegenerateSecurityTokenRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    RegenerateSecurityTokenRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "botId"))
    RegenerateSecurityTokenRequest.struct_class = Types::RegenerateSecurityTokenRequest

    RegenerateSecurityTokenResponse.add_member(:bot, Shapes::ShapeRef.new(shape: Bot, location_name: "Bot"))
    RegenerateSecurityTokenResponse.struct_class = Types::RegenerateSecurityTokenResponse

    ResetPersonalPINRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    ResetPersonalPINRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "userId"))
    ResetPersonalPINRequest.struct_class = Types::ResetPersonalPINRequest

    ResetPersonalPINResponse.add_member(:user, Shapes::ShapeRef.new(shape: User, location_name: "User"))
    ResetPersonalPINResponse.struct_class = Types::ResetPersonalPINResponse

    ResourceLimitExceededException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ResourceLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceLimitExceededException.struct_class = Types::ResourceLimitExceededException

    RestorePhoneNumberRequest.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "phoneNumberId"))
    RestorePhoneNumberRequest.struct_class = Types::RestorePhoneNumberRequest

    RestorePhoneNumberResponse.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "PhoneNumber"))
    RestorePhoneNumberResponse.struct_class = Types::RestorePhoneNumberResponse

    RetentionSettings.add_member(:room_retention_settings, Shapes::ShapeRef.new(shape: RoomRetentionSettings, location_name: "RoomRetentionSettings"))
    RetentionSettings.add_member(:conversation_retention_settings, Shapes::ShapeRef.new(shape: ConversationRetentionSettings, location_name: "ConversationRetentionSettings"))
    RetentionSettings.struct_class = Types::RetentionSettings

    Room.add_member(:room_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RoomId"))
    Room.add_member(:name, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "Name"))
    Room.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AccountId"))
    Room.add_member(:created_by, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CreatedBy"))
    Room.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    Room.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "UpdatedTimestamp"))
    Room.struct_class = Types::Room

    RoomList.member = Shapes::ShapeRef.new(shape: Room)

    RoomMembership.add_member(:room_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RoomId"))
    RoomMembership.add_member(:member, Shapes::ShapeRef.new(shape: Member, location_name: "Member"))
    RoomMembership.add_member(:role, Shapes::ShapeRef.new(shape: RoomMembershipRole, location_name: "Role"))
    RoomMembership.add_member(:invited_by, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "InvitedBy"))
    RoomMembership.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "UpdatedTimestamp"))
    RoomMembership.struct_class = Types::RoomMembership

    RoomMembershipList.member = Shapes::ShapeRef.new(shape: RoomMembership)

    RoomRetentionSettings.add_member(:retention_days, Shapes::ShapeRef.new(shape: RetentionDays, location_name: "RetentionDays"))
    RoomRetentionSettings.struct_class = Types::RoomRetentionSettings

    SMAUpdateCallArgumentsMap.key = Shapes::ShapeRef.new(shape: SensitiveString)
    SMAUpdateCallArgumentsMap.value = Shapes::ShapeRef.new(shape: SensitiveString)

    SearchAvailablePhoneNumbersRequest.add_member(:area_code, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "area-code"))
    SearchAvailablePhoneNumbersRequest.add_member(:city, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "city"))
    SearchAvailablePhoneNumbersRequest.add_member(:country, Shapes::ShapeRef.new(shape: Alpha2CountryCode, location: "querystring", location_name: "country"))
    SearchAvailablePhoneNumbersRequest.add_member(:state, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "state"))
    SearchAvailablePhoneNumbersRequest.add_member(:toll_free_prefix, Shapes::ShapeRef.new(shape: TollFreePrefix, location: "querystring", location_name: "toll-free-prefix"))
    SearchAvailablePhoneNumbersRequest.add_member(:phone_number_type, Shapes::ShapeRef.new(shape: PhoneNumberType, location: "querystring", location_name: "phone-number-type"))
    SearchAvailablePhoneNumbersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PhoneNumberMaxResults, location: "querystring", location_name: "max-results"))
    SearchAvailablePhoneNumbersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    SearchAvailablePhoneNumbersRequest.struct_class = Types::SearchAvailablePhoneNumbersRequest

    SearchAvailablePhoneNumbersResponse.add_member(:e164_phone_numbers, Shapes::ShapeRef.new(shape: E164PhoneNumberList, location_name: "E164PhoneNumbers"))
    SearchAvailablePhoneNumbersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    SearchAvailablePhoneNumbersResponse.struct_class = Types::SearchAvailablePhoneNumbersResponse

    SelectedVideoStreams.add_member(:attendee_ids, Shapes::ShapeRef.new(shape: AttendeeIdList, location_name: "AttendeeIds"))
    SelectedVideoStreams.add_member(:external_user_ids, Shapes::ShapeRef.new(shape: ExternalUserIdList, location_name: "ExternalUserIds"))
    SelectedVideoStreams.struct_class = Types::SelectedVideoStreams

    SendChannelMessageRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    SendChannelMessageRequest.add_member(:content, Shapes::ShapeRef.new(shape: NonEmptyContent, required: true, location_name: "Content"))
    SendChannelMessageRequest.add_member(:type, Shapes::ShapeRef.new(shape: ChannelMessageType, required: true, location_name: "Type"))
    SendChannelMessageRequest.add_member(:persistence, Shapes::ShapeRef.new(shape: ChannelMessagePersistenceType, required: true, location_name: "Persistence"))
    SendChannelMessageRequest.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    SendChannelMessageRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    SendChannelMessageRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, location: "header", location_name: "x-amz-chime-bearer"))
    SendChannelMessageRequest.struct_class = Types::SendChannelMessageRequest

    SendChannelMessageResponse.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    SendChannelMessageResponse.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, location_name: "MessageId"))
    SendChannelMessageResponse.struct_class = Types::SendChannelMessageResponse

    SensitiveStringList.member = Shapes::ShapeRef.new(shape: SensitiveString)

    ServiceFailureException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ServiceFailureException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceFailureException.struct_class = Types::ServiceFailureException

    ServiceUnavailableException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    SigninDelegateGroup.add_member(:group_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "GroupName"))
    SigninDelegateGroup.struct_class = Types::SigninDelegateGroup

    SigninDelegateGroupList.member = Shapes::ShapeRef.new(shape: SigninDelegateGroup)

    SipHeadersMap.key = Shapes::ShapeRef.new(shape: SensitiveString)
    SipHeadersMap.value = Shapes::ShapeRef.new(shape: SensitiveString)

    SipMediaApplication.add_member(:sip_media_application_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SipMediaApplicationId"))
    SipMediaApplication.add_member(:aws_region, Shapes::ShapeRef.new(shape: String, location_name: "AwsRegion"))
    SipMediaApplication.add_member(:name, Shapes::ShapeRef.new(shape: SipMediaApplicationName, location_name: "Name"))
    SipMediaApplication.add_member(:endpoints, Shapes::ShapeRef.new(shape: SipMediaApplicationEndpointList, location_name: "Endpoints"))
    SipMediaApplication.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    SipMediaApplication.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "UpdatedTimestamp"))
    SipMediaApplication.struct_class = Types::SipMediaApplication

    SipMediaApplicationCall.add_member(:transaction_id, Shapes::ShapeRef.new(shape: GuidString, location_name: "TransactionId"))
    SipMediaApplicationCall.struct_class = Types::SipMediaApplicationCall

    SipMediaApplicationEndpoint.add_member(:lambda_arn, Shapes::ShapeRef.new(shape: FunctionArn, location_name: "LambdaArn"))
    SipMediaApplicationEndpoint.struct_class = Types::SipMediaApplicationEndpoint

    SipMediaApplicationEndpointList.member = Shapes::ShapeRef.new(shape: SipMediaApplicationEndpoint)

    SipMediaApplicationList.member = Shapes::ShapeRef.new(shape: SipMediaApplication)

    SipMediaApplicationLoggingConfiguration.add_member(:enable_sip_media_application_message_logs, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableSipMediaApplicationMessageLogs"))
    SipMediaApplicationLoggingConfiguration.struct_class = Types::SipMediaApplicationLoggingConfiguration

    SipRule.add_member(:sip_rule_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SipRuleId"))
    SipRule.add_member(:name, Shapes::ShapeRef.new(shape: SipRuleName, location_name: "Name"))
    SipRule.add_member(:disabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Disabled"))
    SipRule.add_member(:trigger_type, Shapes::ShapeRef.new(shape: SipRuleTriggerType, location_name: "TriggerType"))
    SipRule.add_member(:trigger_value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "TriggerValue"))
    SipRule.add_member(:target_applications, Shapes::ShapeRef.new(shape: SipRuleTargetApplicationList, location_name: "TargetApplications"))
    SipRule.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    SipRule.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "UpdatedTimestamp"))
    SipRule.struct_class = Types::SipRule

    SipRuleList.member = Shapes::ShapeRef.new(shape: SipRule)

    SipRuleTargetApplication.add_member(:sip_media_application_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SipMediaApplicationId"))
    SipRuleTargetApplication.add_member(:priority, Shapes::ShapeRef.new(shape: SipApplicationPriority, location_name: "Priority"))
    SipRuleTargetApplication.add_member(:aws_region, Shapes::ShapeRef.new(shape: String, location_name: "AwsRegion"))
    SipRuleTargetApplication.struct_class = Types::SipRuleTargetApplication

    SipRuleTargetApplicationList.member = Shapes::ShapeRef.new(shape: SipRuleTargetApplication)

    SourceConfiguration.add_member(:selected_video_streams, Shapes::ShapeRef.new(shape: SelectedVideoStreams, location_name: "SelectedVideoStreams"))
    SourceConfiguration.struct_class = Types::SourceConfiguration

    StartMeetingTranscriptionRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "meetingId"))
    StartMeetingTranscriptionRequest.add_member(:transcription_configuration, Shapes::ShapeRef.new(shape: TranscriptionConfiguration, required: true, location_name: "TranscriptionConfiguration"))
    StartMeetingTranscriptionRequest.struct_class = Types::StartMeetingTranscriptionRequest

    StartMeetingTranscriptionResponse.struct_class = Types::StartMeetingTranscriptionResponse

    StopMeetingTranscriptionRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "meetingId"))
    StopMeetingTranscriptionRequest.struct_class = Types::StopMeetingTranscriptionRequest

    StopMeetingTranscriptionResponse.struct_class = Types::StopMeetingTranscriptionResponse

    StreamingConfiguration.add_member(:data_retention_in_hours, Shapes::ShapeRef.new(shape: DataRetentionInHours, required: true, location_name: "DataRetentionInHours"))
    StreamingConfiguration.add_member(:disabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Disabled"))
    StreamingConfiguration.add_member(:streaming_notification_targets, Shapes::ShapeRef.new(shape: StreamingNotificationTargetList, location_name: "StreamingNotificationTargets"))
    StreamingConfiguration.struct_class = Types::StreamingConfiguration

    StreamingNotificationTarget.add_member(:notification_target, Shapes::ShapeRef.new(shape: NotificationTarget, required: true, location_name: "NotificationTarget"))
    StreamingNotificationTarget.struct_class = Types::StreamingNotificationTarget

    StreamingNotificationTargetList.member = Shapes::ShapeRef.new(shape: StreamingNotificationTarget)

    StringList.member = Shapes::ShapeRef.new(shape: String)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagAttendeeRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "meetingId"))
    TagAttendeeRequest.add_member(:attendee_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "attendeeId"))
    TagAttendeeRequest.add_member(:tags, Shapes::ShapeRef.new(shape: AttendeeTagList, required: true, location_name: "Tags"))
    TagAttendeeRequest.struct_class = Types::TagAttendeeRequest

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagMeetingRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "meetingId"))
    TagMeetingRequest.add_member(:tags, Shapes::ShapeRef.new(shape: MeetingTagList, required: true, location_name: "Tags"))
    TagMeetingRequest.struct_class = Types::TagMeetingRequest

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceARN"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TelephonySettings.add_member(:inbound_calling, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "InboundCalling"))
    TelephonySettings.add_member(:outbound_calling, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "OutboundCalling"))
    TelephonySettings.add_member(:sms, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "SMS"))
    TelephonySettings.struct_class = Types::TelephonySettings

    Termination.add_member(:cps_limit, Shapes::ShapeRef.new(shape: CpsLimit, location_name: "CpsLimit"))
    Termination.add_member(:default_phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: "DefaultPhoneNumber"))
    Termination.add_member(:calling_regions, Shapes::ShapeRef.new(shape: CallingRegionList, location_name: "CallingRegions"))
    Termination.add_member(:cidr_allowed_list, Shapes::ShapeRef.new(shape: StringList, location_name: "CidrAllowedList"))
    Termination.add_member(:disabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Disabled"))
    Termination.struct_class = Types::Termination

    TerminationHealth.add_member(:timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "Timestamp"))
    TerminationHealth.add_member(:source, Shapes::ShapeRef.new(shape: String, location_name: "Source"))
    TerminationHealth.struct_class = Types::TerminationHealth

    ThrottledClientException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ThrottledClientException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ThrottledClientException.struct_class = Types::ThrottledClientException

    TranscriptionConfiguration.add_member(:engine_transcribe_settings, Shapes::ShapeRef.new(shape: EngineTranscribeSettings, location_name: "EngineTranscribeSettings"))
    TranscriptionConfiguration.add_member(:engine_transcribe_medical_settings, Shapes::ShapeRef.new(shape: EngineTranscribeMedicalSettings, location_name: "EngineTranscribeMedicalSettings"))
    TranscriptionConfiguration.struct_class = Types::TranscriptionConfiguration

    UnauthorizedClientException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    UnauthorizedClientException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    UnauthorizedClientException.struct_class = Types::UnauthorizedClientException

    UnprocessableEntityException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    UnprocessableEntityException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    UnprocessableEntityException.struct_class = Types::UnprocessableEntityException

    UntagAttendeeRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "meetingId"))
    UntagAttendeeRequest.add_member(:attendee_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "attendeeId"))
    UntagAttendeeRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: AttendeeTagKeyList, required: true, location_name: "TagKeys"))
    UntagAttendeeRequest.struct_class = Types::UntagAttendeeRequest

    UntagMeetingRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "meetingId"))
    UntagMeetingRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: MeetingTagKeyList, required: true, location_name: "TagKeys"))
    UntagMeetingRequest.struct_class = Types::UntagMeetingRequest

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceARN"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateAccountRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    UpdateAccountRequest.add_member(:name, Shapes::ShapeRef.new(shape: AccountName, location_name: "Name"))
    UpdateAccountRequest.add_member(:default_license, Shapes::ShapeRef.new(shape: License, location_name: "DefaultLicense"))
    UpdateAccountRequest.struct_class = Types::UpdateAccountRequest

    UpdateAccountResponse.add_member(:account, Shapes::ShapeRef.new(shape: Account, location_name: "Account"))
    UpdateAccountResponse.struct_class = Types::UpdateAccountResponse

    UpdateAccountSettingsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    UpdateAccountSettingsRequest.add_member(:account_settings, Shapes::ShapeRef.new(shape: AccountSettings, required: true, location_name: "AccountSettings"))
    UpdateAccountSettingsRequest.struct_class = Types::UpdateAccountSettingsRequest

    UpdateAccountSettingsResponse.struct_class = Types::UpdateAccountSettingsResponse

    UpdateAppInstanceRequest.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceArn"))
    UpdateAppInstanceRequest.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyResourceName, required: true, location_name: "Name"))
    UpdateAppInstanceRequest.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    UpdateAppInstanceRequest.struct_class = Types::UpdateAppInstanceRequest

    UpdateAppInstanceResponse.add_member(:app_instance_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "AppInstanceArn"))
    UpdateAppInstanceResponse.struct_class = Types::UpdateAppInstanceResponse

    UpdateAppInstanceUserRequest.add_member(:app_instance_user_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "appInstanceUserArn"))
    UpdateAppInstanceUserRequest.add_member(:name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "Name"))
    UpdateAppInstanceUserRequest.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    UpdateAppInstanceUserRequest.struct_class = Types::UpdateAppInstanceUserRequest

    UpdateAppInstanceUserResponse.add_member(:app_instance_user_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "AppInstanceUserArn"))
    UpdateAppInstanceUserResponse.struct_class = Types::UpdateAppInstanceUserResponse

    UpdateBotRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    UpdateBotRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "botId"))
    UpdateBotRequest.add_member(:disabled, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "Disabled"))
    UpdateBotRequest.struct_class = Types::UpdateBotRequest

    UpdateBotResponse.add_member(:bot, Shapes::ShapeRef.new(shape: Bot, location_name: "Bot"))
    UpdateBotResponse.struct_class = Types::UpdateBotResponse

    UpdateChannelMessageRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    UpdateChannelMessageRequest.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, required: true, location: "uri", location_name: "messageId"))
    UpdateChannelMessageRequest.add_member(:content, Shapes::ShapeRef.new(shape: Content, location_name: "Content"))
    UpdateChannelMessageRequest.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    UpdateChannelMessageRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, location: "header", location_name: "x-amz-chime-bearer"))
    UpdateChannelMessageRequest.struct_class = Types::UpdateChannelMessageRequest

    UpdateChannelMessageResponse.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    UpdateChannelMessageResponse.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, location_name: "MessageId"))
    UpdateChannelMessageResponse.struct_class = Types::UpdateChannelMessageResponse

    UpdateChannelReadMarkerRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    UpdateChannelReadMarkerRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, location: "header", location_name: "x-amz-chime-bearer"))
    UpdateChannelReadMarkerRequest.struct_class = Types::UpdateChannelReadMarkerRequest

    UpdateChannelReadMarkerResponse.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    UpdateChannelReadMarkerResponse.struct_class = Types::UpdateChannelReadMarkerResponse

    UpdateChannelRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, required: true, location: "uri", location_name: "channelArn"))
    UpdateChannelRequest.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyResourceName, required: true, location_name: "Name"))
    UpdateChannelRequest.add_member(:mode, Shapes::ShapeRef.new(shape: ChannelMode, required: true, location_name: "Mode"))
    UpdateChannelRequest.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    UpdateChannelRequest.add_member(:chime_bearer, Shapes::ShapeRef.new(shape: ChimeArn, location: "header", location_name: "x-amz-chime-bearer"))
    UpdateChannelRequest.struct_class = Types::UpdateChannelRequest

    UpdateChannelResponse.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChimeArn, location_name: "ChannelArn"))
    UpdateChannelResponse.struct_class = Types::UpdateChannelResponse

    UpdateGlobalSettingsRequest.add_member(:business_calling, Shapes::ShapeRef.new(shape: BusinessCallingSettings, location_name: "BusinessCalling"))
    UpdateGlobalSettingsRequest.add_member(:voice_connector, Shapes::ShapeRef.new(shape: VoiceConnectorSettings, location_name: "VoiceConnector"))
    UpdateGlobalSettingsRequest.struct_class = Types::UpdateGlobalSettingsRequest

    UpdatePhoneNumberRequest.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "phoneNumberId"))
    UpdatePhoneNumberRequest.add_member(:product_type, Shapes::ShapeRef.new(shape: PhoneNumberProductType, location_name: "ProductType"))
    UpdatePhoneNumberRequest.add_member(:calling_name, Shapes::ShapeRef.new(shape: CallingName, location_name: "CallingName"))
    UpdatePhoneNumberRequest.struct_class = Types::UpdatePhoneNumberRequest

    UpdatePhoneNumberRequestItem.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "PhoneNumberId"))
    UpdatePhoneNumberRequestItem.add_member(:product_type, Shapes::ShapeRef.new(shape: PhoneNumberProductType, location_name: "ProductType"))
    UpdatePhoneNumberRequestItem.add_member(:calling_name, Shapes::ShapeRef.new(shape: CallingName, location_name: "CallingName"))
    UpdatePhoneNumberRequestItem.struct_class = Types::UpdatePhoneNumberRequestItem

    UpdatePhoneNumberRequestItemList.member = Shapes::ShapeRef.new(shape: UpdatePhoneNumberRequestItem)

    UpdatePhoneNumberResponse.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "PhoneNumber"))
    UpdatePhoneNumberResponse.struct_class = Types::UpdatePhoneNumberResponse

    UpdatePhoneNumberSettingsRequest.add_member(:calling_name, Shapes::ShapeRef.new(shape: CallingName, required: true, location_name: "CallingName"))
    UpdatePhoneNumberSettingsRequest.struct_class = Types::UpdatePhoneNumberSettingsRequest

    UpdateProxySessionRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString128, required: true, location: "uri", location_name: "voiceConnectorId"))
    UpdateProxySessionRequest.add_member(:proxy_session_id, Shapes::ShapeRef.new(shape: NonEmptyString128, required: true, location: "uri", location_name: "proxySessionId"))
    UpdateProxySessionRequest.add_member(:capabilities, Shapes::ShapeRef.new(shape: CapabilityList, required: true, location_name: "Capabilities"))
    UpdateProxySessionRequest.add_member(:expiry_minutes, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "ExpiryMinutes"))
    UpdateProxySessionRequest.struct_class = Types::UpdateProxySessionRequest

    UpdateProxySessionResponse.add_member(:proxy_session, Shapes::ShapeRef.new(shape: ProxySession, location_name: "ProxySession"))
    UpdateProxySessionResponse.struct_class = Types::UpdateProxySessionResponse

    UpdateRoomMembershipRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    UpdateRoomMembershipRequest.add_member(:room_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "roomId"))
    UpdateRoomMembershipRequest.add_member(:member_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "memberId"))
    UpdateRoomMembershipRequest.add_member(:role, Shapes::ShapeRef.new(shape: RoomMembershipRole, location_name: "Role"))
    UpdateRoomMembershipRequest.struct_class = Types::UpdateRoomMembershipRequest

    UpdateRoomMembershipResponse.add_member(:room_membership, Shapes::ShapeRef.new(shape: RoomMembership, location_name: "RoomMembership"))
    UpdateRoomMembershipResponse.struct_class = Types::UpdateRoomMembershipResponse

    UpdateRoomRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    UpdateRoomRequest.add_member(:room_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "roomId"))
    UpdateRoomRequest.add_member(:name, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "Name"))
    UpdateRoomRequest.struct_class = Types::UpdateRoomRequest

    UpdateRoomResponse.add_member(:room, Shapes::ShapeRef.new(shape: Room, location_name: "Room"))
    UpdateRoomResponse.struct_class = Types::UpdateRoomResponse

    UpdateSipMediaApplicationCallRequest.add_member(:sip_media_application_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "sipMediaApplicationId"))
    UpdateSipMediaApplicationCallRequest.add_member(:transaction_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "transactionId"))
    UpdateSipMediaApplicationCallRequest.add_member(:arguments, Shapes::ShapeRef.new(shape: SMAUpdateCallArgumentsMap, required: true, location_name: "Arguments"))
    UpdateSipMediaApplicationCallRequest.struct_class = Types::UpdateSipMediaApplicationCallRequest

    UpdateSipMediaApplicationCallResponse.add_member(:sip_media_application_call, Shapes::ShapeRef.new(shape: SipMediaApplicationCall, location_name: "SipMediaApplicationCall"))
    UpdateSipMediaApplicationCallResponse.struct_class = Types::UpdateSipMediaApplicationCallResponse

    UpdateSipMediaApplicationRequest.add_member(:sip_media_application_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "sipMediaApplicationId"))
    UpdateSipMediaApplicationRequest.add_member(:name, Shapes::ShapeRef.new(shape: SipMediaApplicationName, location_name: "Name"))
    UpdateSipMediaApplicationRequest.add_member(:endpoints, Shapes::ShapeRef.new(shape: SipMediaApplicationEndpointList, location_name: "Endpoints"))
    UpdateSipMediaApplicationRequest.struct_class = Types::UpdateSipMediaApplicationRequest

    UpdateSipMediaApplicationResponse.add_member(:sip_media_application, Shapes::ShapeRef.new(shape: SipMediaApplication, location_name: "SipMediaApplication"))
    UpdateSipMediaApplicationResponse.struct_class = Types::UpdateSipMediaApplicationResponse

    UpdateSipRuleRequest.add_member(:sip_rule_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "sipRuleId"))
    UpdateSipRuleRequest.add_member(:name, Shapes::ShapeRef.new(shape: SipRuleName, required: true, location_name: "Name"))
    UpdateSipRuleRequest.add_member(:disabled, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "Disabled"))
    UpdateSipRuleRequest.add_member(:target_applications, Shapes::ShapeRef.new(shape: SipRuleTargetApplicationList, location_name: "TargetApplications"))
    UpdateSipRuleRequest.struct_class = Types::UpdateSipRuleRequest

    UpdateSipRuleResponse.add_member(:sip_rule, Shapes::ShapeRef.new(shape: SipRule, location_name: "SipRule"))
    UpdateSipRuleResponse.struct_class = Types::UpdateSipRuleResponse

    UpdateUserRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    UpdateUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "userId"))
    UpdateUserRequest.add_member(:license_type, Shapes::ShapeRef.new(shape: License, location_name: "LicenseType"))
    UpdateUserRequest.add_member(:user_type, Shapes::ShapeRef.new(shape: UserType, location_name: "UserType"))
    UpdateUserRequest.add_member(:alexa_for_business_metadata, Shapes::ShapeRef.new(shape: AlexaForBusinessMetadata, location_name: "AlexaForBusinessMetadata"))
    UpdateUserRequest.struct_class = Types::UpdateUserRequest

    UpdateUserRequestItem.add_member(:user_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "UserId"))
    UpdateUserRequestItem.add_member(:license_type, Shapes::ShapeRef.new(shape: License, location_name: "LicenseType"))
    UpdateUserRequestItem.add_member(:user_type, Shapes::ShapeRef.new(shape: UserType, location_name: "UserType"))
    UpdateUserRequestItem.add_member(:alexa_for_business_metadata, Shapes::ShapeRef.new(shape: AlexaForBusinessMetadata, location_name: "AlexaForBusinessMetadata"))
    UpdateUserRequestItem.struct_class = Types::UpdateUserRequestItem

    UpdateUserRequestItemList.member = Shapes::ShapeRef.new(shape: UpdateUserRequestItem)

    UpdateUserResponse.add_member(:user, Shapes::ShapeRef.new(shape: User, location_name: "User"))
    UpdateUserResponse.struct_class = Types::UpdateUserResponse

    UpdateUserSettingsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "accountId"))
    UpdateUserSettingsRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "userId"))
    UpdateUserSettingsRequest.add_member(:user_settings, Shapes::ShapeRef.new(shape: UserSettings, required: true, location_name: "UserSettings"))
    UpdateUserSettingsRequest.struct_class = Types::UpdateUserSettingsRequest

    UpdateVoiceConnectorGroupRequest.add_member(:voice_connector_group_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorGroupId"))
    UpdateVoiceConnectorGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: VoiceConnectorGroupName, required: true, location_name: "Name"))
    UpdateVoiceConnectorGroupRequest.add_member(:voice_connector_items, Shapes::ShapeRef.new(shape: VoiceConnectorItemList, required: true, location_name: "VoiceConnectorItems"))
    UpdateVoiceConnectorGroupRequest.struct_class = Types::UpdateVoiceConnectorGroupRequest

    UpdateVoiceConnectorGroupResponse.add_member(:voice_connector_group, Shapes::ShapeRef.new(shape: VoiceConnectorGroup, location_name: "VoiceConnectorGroup"))
    UpdateVoiceConnectorGroupResponse.struct_class = Types::UpdateVoiceConnectorGroupResponse

    UpdateVoiceConnectorRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "voiceConnectorId"))
    UpdateVoiceConnectorRequest.add_member(:name, Shapes::ShapeRef.new(shape: VoiceConnectorName, required: true, location_name: "Name"))
    UpdateVoiceConnectorRequest.add_member(:require_encryption, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "RequireEncryption"))
    UpdateVoiceConnectorRequest.struct_class = Types::UpdateVoiceConnectorRequest

    UpdateVoiceConnectorResponse.add_member(:voice_connector, Shapes::ShapeRef.new(shape: VoiceConnector, location_name: "VoiceConnector"))
    UpdateVoiceConnectorResponse.struct_class = Types::UpdateVoiceConnectorResponse

    User.add_member(:user_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "UserId"))
    User.add_member(:account_id, Shapes::ShapeRef.new(shape: String, location_name: "AccountId"))
    User.add_member(:primary_email, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "PrimaryEmail"))
    User.add_member(:primary_provisioned_number, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "PrimaryProvisionedNumber"))
    User.add_member(:display_name, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "DisplayName"))
    User.add_member(:license_type, Shapes::ShapeRef.new(shape: License, location_name: "LicenseType"))
    User.add_member(:user_type, Shapes::ShapeRef.new(shape: UserType, location_name: "UserType"))
    User.add_member(:user_registration_status, Shapes::ShapeRef.new(shape: RegistrationStatus, location_name: "UserRegistrationStatus"))
    User.add_member(:user_invitation_status, Shapes::ShapeRef.new(shape: InviteStatus, location_name: "UserInvitationStatus"))
    User.add_member(:registered_on, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "RegisteredOn"))
    User.add_member(:invited_on, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "InvitedOn"))
    User.add_member(:alexa_for_business_metadata, Shapes::ShapeRef.new(shape: AlexaForBusinessMetadata, location_name: "AlexaForBusinessMetadata"))
    User.add_member(:personal_pin, Shapes::ShapeRef.new(shape: String, location_name: "PersonalPIN"))
    User.struct_class = Types::User

    UserEmailList.member = Shapes::ShapeRef.new(shape: EmailAddress)

    UserError.add_member(:user_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "UserId"))
    UserError.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    UserError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    UserError.struct_class = Types::UserError

    UserErrorList.member = Shapes::ShapeRef.new(shape: UserError)

    UserIdList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    UserList.member = Shapes::ShapeRef.new(shape: User)

    UserSettings.add_member(:telephony, Shapes::ShapeRef.new(shape: TelephonySettings, required: true, location_name: "Telephony"))
    UserSettings.struct_class = Types::UserSettings

    ValidateE911AddressRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "AwsAccountId"))
    ValidateE911AddressRequest.add_member(:street_number, Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, required: true, location_name: "StreetNumber"))
    ValidateE911AddressRequest.add_member(:street_info, Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, required: true, location_name: "StreetInfo"))
    ValidateE911AddressRequest.add_member(:city, Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, required: true, location_name: "City"))
    ValidateE911AddressRequest.add_member(:state, Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, required: true, location_name: "State"))
    ValidateE911AddressRequest.add_member(:country, Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, required: true, location_name: "Country"))
    ValidateE911AddressRequest.add_member(:postal_code, Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, required: true, location_name: "PostalCode"))
    ValidateE911AddressRequest.struct_class = Types::ValidateE911AddressRequest

    ValidateE911AddressResponse.add_member(:validation_result, Shapes::ShapeRef.new(shape: ValidationResult, location_name: "ValidationResult"))
    ValidateE911AddressResponse.add_member(:address_external_id, Shapes::ShapeRef.new(shape: String, location_name: "AddressExternalId"))
    ValidateE911AddressResponse.add_member(:address, Shapes::ShapeRef.new(shape: Address, location_name: "Address"))
    ValidateE911AddressResponse.add_member(:candidate_address_list, Shapes::ShapeRef.new(shape: CandidateAddressList, location_name: "CandidateAddressList"))
    ValidateE911AddressResponse.struct_class = Types::ValidateE911AddressResponse

    VideoArtifactsConfiguration.add_member(:state, Shapes::ShapeRef.new(shape: ArtifactsState, required: true, location_name: "State"))
    VideoArtifactsConfiguration.add_member(:mux_type, Shapes::ShapeRef.new(shape: VideoMuxType, location_name: "MuxType"))
    VideoArtifactsConfiguration.struct_class = Types::VideoArtifactsConfiguration

    VoiceConnector.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VoiceConnectorId"))
    VoiceConnector.add_member(:aws_region, Shapes::ShapeRef.new(shape: VoiceConnectorAwsRegion, location_name: "AwsRegion"))
    VoiceConnector.add_member(:name, Shapes::ShapeRef.new(shape: VoiceConnectorName, location_name: "Name"))
    VoiceConnector.add_member(:outbound_host_name, Shapes::ShapeRef.new(shape: String, location_name: "OutboundHostName"))
    VoiceConnector.add_member(:require_encryption, Shapes::ShapeRef.new(shape: Boolean, location_name: "RequireEncryption"))
    VoiceConnector.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    VoiceConnector.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "UpdatedTimestamp"))
    VoiceConnector.add_member(:voice_connector_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VoiceConnectorArn"))
    VoiceConnector.struct_class = Types::VoiceConnector

    VoiceConnectorGroup.add_member(:voice_connector_group_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VoiceConnectorGroupId"))
    VoiceConnectorGroup.add_member(:name, Shapes::ShapeRef.new(shape: VoiceConnectorGroupName, location_name: "Name"))
    VoiceConnectorGroup.add_member(:voice_connector_items, Shapes::ShapeRef.new(shape: VoiceConnectorItemList, location_name: "VoiceConnectorItems"))
    VoiceConnectorGroup.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    VoiceConnectorGroup.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "UpdatedTimestamp"))
    VoiceConnectorGroup.add_member(:voice_connector_group_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VoiceConnectorGroupArn"))
    VoiceConnectorGroup.struct_class = Types::VoiceConnectorGroup

    VoiceConnectorGroupList.member = Shapes::ShapeRef.new(shape: VoiceConnectorGroup)

    VoiceConnectorItem.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "VoiceConnectorId"))
    VoiceConnectorItem.add_member(:priority, Shapes::ShapeRef.new(shape: VoiceConnectorItemPriority, required: true, location_name: "Priority"))
    VoiceConnectorItem.struct_class = Types::VoiceConnectorItem

    VoiceConnectorItemList.member = Shapes::ShapeRef.new(shape: VoiceConnectorItem)

    VoiceConnectorList.member = Shapes::ShapeRef.new(shape: VoiceConnector)

    VoiceConnectorSettings.add_member(:cdr_bucket, Shapes::ShapeRef.new(shape: String, location_name: "CdrBucket", metadata: {"box"=>true}))
    VoiceConnectorSettings.struct_class = Types::VoiceConnectorSettings


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-01"

      api.metadata = {
        "apiVersion" => "2018-05-01",
        "endpointPrefix" => "chime",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon Chime",
        "serviceId" => "Chime",
        "signatureVersion" => "v4",
        "uid" => "chime-2018-05-01",
      }

      api.add_operation(:associate_phone_number_with_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociatePhoneNumberWithUser"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/users/{userId}?operation=associate-phone-number"
        o.input = Shapes::ShapeRef.new(shape: AssociatePhoneNumberWithUserRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociatePhoneNumberWithUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:associate_phone_numbers_with_voice_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociatePhoneNumbersWithVoiceConnector"
        o.http_method = "POST"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}?operation=associate-phone-numbers"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: AssociatePhoneNumbersWithVoiceConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociatePhoneNumbersWithVoiceConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:associate_phone_numbers_with_voice_connector_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociatePhoneNumbersWithVoiceConnectorGroup"
        o.http_method = "POST"
        o.http_request_uri = "/voice-connector-groups/{voiceConnectorGroupId}?operation=associate-phone-numbers"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: AssociatePhoneNumbersWithVoiceConnectorGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociatePhoneNumbersWithVoiceConnectorGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:associate_signin_delegate_groups_with_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateSigninDelegateGroupsWithAccount"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}?operation=associate-signin-delegate-groups"
        o.input = Shapes::ShapeRef.new(shape: AssociateSigninDelegateGroupsWithAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateSigninDelegateGroupsWithAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:batch_create_attendee, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchCreateAttendee"
        o.http_method = "POST"
        o.http_request_uri = "/meetings/{meetingId}/attendees?operation=batch-create"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: BatchCreateAttendeeRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchCreateAttendeeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:batch_create_channel_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchCreateChannelMembership"
        o.http_method = "POST"
        o.http_request_uri = "/channels/{channelArn}/memberships?operation=batch-create"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "messaging-",
        }
        o.input = Shapes::ShapeRef.new(shape: BatchCreateChannelMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchCreateChannelMembershipResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
      end)

      api.add_operation(:batch_create_room_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchCreateRoomMembership"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/rooms/{roomId}/memberships?operation=batch-create"
        o.input = Shapes::ShapeRef.new(shape: BatchCreateRoomMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchCreateRoomMembershipResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:batch_delete_phone_number, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeletePhoneNumber"
        o.http_method = "POST"
        o.http_request_uri = "/phone-numbers?operation=batch-delete"
        o.input = Shapes::ShapeRef.new(shape: BatchDeletePhoneNumberRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDeletePhoneNumberResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:batch_suspend_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchSuspendUser"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/users?operation=suspend"
        o.input = Shapes::ShapeRef.new(shape: BatchSuspendUserRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchSuspendUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:batch_unsuspend_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchUnsuspendUser"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/users?operation=unsuspend"
        o.input = Shapes::ShapeRef.new(shape: BatchUnsuspendUserRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchUnsuspendUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:batch_update_phone_number, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchUpdatePhoneNumber"
        o.http_method = "POST"
        o.http_request_uri = "/phone-numbers?operation=batch-update"
        o.input = Shapes::ShapeRef.new(shape: BatchUpdatePhoneNumberRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchUpdatePhoneNumberResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:batch_update_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchUpdateUser"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/users"
        o.input = Shapes::ShapeRef.new(shape: BatchUpdateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchUpdateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAccount"
        o.http_method = "POST"
        o.http_request_uri = "/accounts"
        o.input = Shapes::ShapeRef.new(shape: CreateAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_app_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAppInstance"
        o.http_method = "POST"
        o.http_request_uri = "/app-instances"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "identity-",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateAppInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAppInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_app_instance_admin, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAppInstanceAdmin"
        o.http_method = "POST"
        o.http_request_uri = "/app-instances/{appInstanceArn}/admins"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "identity-",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateAppInstanceAdminRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAppInstanceAdminResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_app_instance_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAppInstanceUser"
        o.http_method = "POST"
        o.http_request_uri = "/app-instance-users"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "identity-",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateAppInstanceUserRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAppInstanceUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_attendee, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAttendee"
        o.http_method = "POST"
        o.http_request_uri = "/meetings/{meetingId}/attendees"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: CreateAttendeeRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAttendeeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_bot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBot"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/bots"
        o.input = Shapes::ShapeRef.new(shape: CreateBotRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBotResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
      end)

      api.add_operation(:create_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateChannel"
        o.http_method = "POST"
        o.http_request_uri = "/channels"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "messaging-",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_channel_ban, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateChannelBan"
        o.http_method = "POST"
        o.http_request_uri = "/channels/{channelArn}/bans"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "messaging-",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateChannelBanRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateChannelBanResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_channel_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateChannelMembership"
        o.http_method = "POST"
        o.http_request_uri = "/channels/{channelArn}/memberships"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "messaging-",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateChannelMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateChannelMembershipResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_channel_moderator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateChannelModerator"
        o.http_method = "POST"
        o.http_request_uri = "/channels/{channelArn}/moderators"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "messaging-",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateChannelModeratorRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateChannelModeratorResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_media_capture_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMediaCapturePipeline"
        o.http_method = "POST"
        o.http_request_uri = "/media-capture-pipelines"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: CreateMediaCapturePipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMediaCapturePipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_meeting, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMeeting"
        o.http_method = "POST"
        o.http_request_uri = "/meetings"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: CreateMeetingRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMeetingResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_meeting_dial_out, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMeetingDialOut"
        o.http_method = "POST"
        o.http_request_uri = "/meetings/{meetingId}/dial-outs"
        o.input = Shapes::ShapeRef.new(shape: CreateMeetingDialOutRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMeetingDialOutResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_meeting_with_attendees, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMeetingWithAttendees"
        o.http_method = "POST"
        o.http_request_uri = "/meetings?operation=create-attendees"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: CreateMeetingWithAttendeesRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMeetingWithAttendeesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_phone_number_order, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePhoneNumberOrder"
        o.http_method = "POST"
        o.http_request_uri = "/phone-number-orders"
        o.input = Shapes::ShapeRef.new(shape: CreatePhoneNumberOrderRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePhoneNumberOrderResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_proxy_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProxySession"
        o.http_method = "POST"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/proxy-sessions"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: CreateProxySessionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProxySessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_room, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRoom"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/rooms"
        o.input = Shapes::ShapeRef.new(shape: CreateRoomRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRoomResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_room_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRoomMembership"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/rooms/{roomId}/memberships"
        o.input = Shapes::ShapeRef.new(shape: CreateRoomMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRoomMembershipResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_sip_media_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSipMediaApplication"
        o.http_method = "POST"
        o.http_request_uri = "/sip-media-applications"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: CreateSipMediaApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSipMediaApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_sip_media_application_call, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSipMediaApplicationCall"
        o.http_method = "POST"
        o.http_request_uri = "/sip-media-applications/{sipMediaApplicationId}/calls"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: CreateSipMediaApplicationCallRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSipMediaApplicationCallResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_sip_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSipRule"
        o.http_method = "POST"
        o.http_request_uri = "/sip-rules"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: CreateSipRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSipRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUser"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/users?operation=create"
        o.input = Shapes::ShapeRef.new(shape: CreateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_voice_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVoiceConnector"
        o.http_method = "POST"
        o.http_request_uri = "/voice-connectors"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: CreateVoiceConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateVoiceConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_voice_connector_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVoiceConnectorGroup"
        o.http_method = "POST"
        o.http_request_uri = "/voice-connector-groups"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: CreateVoiceConnectorGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateVoiceConnectorGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccount"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{accountId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_app_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAppInstance"
        o.http_method = "DELETE"
        o.http_request_uri = "/app-instances/{appInstanceArn}"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "identity-",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteAppInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_app_instance_admin, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAppInstanceAdmin"
        o.http_method = "DELETE"
        o.http_request_uri = "/app-instances/{appInstanceArn}/admins/{appInstanceAdminArn}"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "identity-",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteAppInstanceAdminRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_app_instance_streaming_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAppInstanceStreamingConfigurations"
        o.http_method = "DELETE"
        o.http_request_uri = "/app-instances/{appInstanceArn}/streaming-configurations"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: DeleteAppInstanceStreamingConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_app_instance_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAppInstanceUser"
        o.http_method = "DELETE"
        o.http_request_uri = "/app-instance-users/{appInstanceUserArn}"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "identity-",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteAppInstanceUserRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_attendee, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAttendee"
        o.http_method = "DELETE"
        o.http_request_uri = "/meetings/{meetingId}/attendees/{attendeeId}"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: DeleteAttendeeRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteChannel"
        o.http_method = "DELETE"
        o.http_request_uri = "/channels/{channelArn}"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "messaging-",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_channel_ban, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteChannelBan"
        o.http_method = "DELETE"
        o.http_request_uri = "/channels/{channelArn}/bans/{memberArn}"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "messaging-",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteChannelBanRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_channel_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteChannelMembership"
        o.http_method = "DELETE"
        o.http_request_uri = "/channels/{channelArn}/memberships/{memberArn}"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "messaging-",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteChannelMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_channel_message, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteChannelMessage"
        o.http_method = "DELETE"
        o.http_request_uri = "/channels/{channelArn}/messages/{messageId}"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "messaging-",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteChannelMessageRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_channel_moderator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteChannelModerator"
        o.http_method = "DELETE"
        o.http_request_uri = "/channels/{channelArn}/moderators/{channelModeratorArn}"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "messaging-",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteChannelModeratorRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_events_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEventsConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{accountId}/bots/{botId}/events-configuration"
        o.input = Shapes::ShapeRef.new(shape: DeleteEventsConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
      end)

      api.add_operation(:delete_media_capture_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMediaCapturePipeline"
        o.http_method = "DELETE"
        o.http_request_uri = "/media-capture-pipelines/{mediaPipelineId}"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: DeleteMediaCapturePipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_meeting, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMeeting"
        o.http_method = "DELETE"
        o.http_request_uri = "/meetings/{meetingId}"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: DeleteMeetingRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_phone_number, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePhoneNumber"
        o.http_method = "DELETE"
        o.http_request_uri = "/phone-numbers/{phoneNumberId}"
        o.input = Shapes::ShapeRef.new(shape: DeletePhoneNumberRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_proxy_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProxySession"
        o.http_method = "DELETE"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/proxy-sessions/{proxySessionId}"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: DeleteProxySessionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_room, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRoom"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{accountId}/rooms/{roomId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRoomRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_room_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRoomMembership"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{accountId}/rooms/{roomId}/memberships/{memberId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRoomMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_sip_media_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSipMediaApplication"
        o.http_method = "DELETE"
        o.http_request_uri = "/sip-media-applications/{sipMediaApplicationId}"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: DeleteSipMediaApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_sip_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSipRule"
        o.http_method = "DELETE"
        o.http_request_uri = "/sip-rules/{sipRuleId}"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: DeleteSipRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_voice_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVoiceConnector"
        o.http_method = "DELETE"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: DeleteVoiceConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_voice_connector_emergency_calling_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVoiceConnectorEmergencyCallingConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/emergency-calling-configuration"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: DeleteVoiceConnectorEmergencyCallingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_voice_connector_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVoiceConnectorGroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/voice-connector-groups/{voiceConnectorGroupId}"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: DeleteVoiceConnectorGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_voice_connector_origination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVoiceConnectorOrigination"
        o.http_method = "DELETE"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/origination"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: DeleteVoiceConnectorOriginationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_voice_connector_proxy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVoiceConnectorProxy"
        o.http_method = "DELETE"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/programmable-numbers/proxy"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: DeleteVoiceConnectorProxyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_voice_connector_streaming_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVoiceConnectorStreamingConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/streaming-configuration"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: DeleteVoiceConnectorStreamingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_voice_connector_termination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVoiceConnectorTermination"
        o.http_method = "DELETE"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/termination"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: DeleteVoiceConnectorTerminationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_voice_connector_termination_credentials, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVoiceConnectorTerminationCredentials"
        o.http_method = "POST"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/termination/credentials?operation=delete"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: DeleteVoiceConnectorTerminationCredentialsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:describe_app_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAppInstance"
        o.http_method = "GET"
        o.http_request_uri = "/app-instances/{appInstanceArn}"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "identity-",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeAppInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAppInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:describe_app_instance_admin, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAppInstanceAdmin"
        o.http_method = "GET"
        o.http_request_uri = "/app-instances/{appInstanceArn}/admins/{appInstanceAdminArn}"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "identity-",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeAppInstanceAdminRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAppInstanceAdminResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:describe_app_instance_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAppInstanceUser"
        o.http_method = "GET"
        o.http_request_uri = "/app-instance-users/{appInstanceUserArn}"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "identity-",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeAppInstanceUserRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAppInstanceUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:describe_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeChannel"
        o.http_method = "GET"
        o.http_request_uri = "/channels/{channelArn}"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "messaging-",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:describe_channel_ban, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeChannelBan"
        o.http_method = "GET"
        o.http_request_uri = "/channels/{channelArn}/bans/{memberArn}"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "messaging-",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeChannelBanRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeChannelBanResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:describe_channel_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeChannelMembership"
        o.http_method = "GET"
        o.http_request_uri = "/channels/{channelArn}/memberships/{memberArn}"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "messaging-",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeChannelMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeChannelMembershipResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:describe_channel_membership_for_app_instance_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeChannelMembershipForAppInstanceUser"
        o.http_method = "GET"
        o.http_request_uri = "/channels/{channelArn}?scope=app-instance-user-membership"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "messaging-",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeChannelMembershipForAppInstanceUserRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeChannelMembershipForAppInstanceUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:describe_channel_moderated_by_app_instance_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeChannelModeratedByAppInstanceUser"
        o.http_method = "GET"
        o.http_request_uri = "/channels/{channelArn}?scope=app-instance-user-moderated-channel"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "messaging-",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeChannelModeratedByAppInstanceUserRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeChannelModeratedByAppInstanceUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:describe_channel_moderator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeChannelModerator"
        o.http_method = "GET"
        o.http_request_uri = "/channels/{channelArn}/moderators/{channelModeratorArn}"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "messaging-",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeChannelModeratorRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeChannelModeratorResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:disassociate_phone_number_from_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociatePhoneNumberFromUser"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/users/{userId}?operation=disassociate-phone-number"
        o.input = Shapes::ShapeRef.new(shape: DisassociatePhoneNumberFromUserRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociatePhoneNumberFromUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:disassociate_phone_numbers_from_voice_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociatePhoneNumbersFromVoiceConnector"
        o.http_method = "POST"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}?operation=disassociate-phone-numbers"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: DisassociatePhoneNumbersFromVoiceConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociatePhoneNumbersFromVoiceConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:disassociate_phone_numbers_from_voice_connector_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociatePhoneNumbersFromVoiceConnectorGroup"
        o.http_method = "POST"
        o.http_request_uri = "/voice-connector-groups/{voiceConnectorGroupId}?operation=disassociate-phone-numbers"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: DisassociatePhoneNumbersFromVoiceConnectorGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociatePhoneNumbersFromVoiceConnectorGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:disassociate_signin_delegate_groups_from_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateSigninDelegateGroupsFromAccount"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}?operation=disassociate-signin-delegate-groups"
        o.input = Shapes::ShapeRef.new(shape: DisassociateSigninDelegateGroupsFromAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateSigninDelegateGroupsFromAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccount"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{accountId}"
        o.input = Shapes::ShapeRef.new(shape: GetAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_account_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccountSettings"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{accountId}/settings"
        o.input = Shapes::ShapeRef.new(shape: GetAccountSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccountSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_app_instance_retention_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAppInstanceRetentionSettings"
        o.http_method = "GET"
        o.http_request_uri = "/app-instances/{appInstanceArn}/retention-settings"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "identity-",
        }
        o.input = Shapes::ShapeRef.new(shape: GetAppInstanceRetentionSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAppInstanceRetentionSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_app_instance_streaming_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAppInstanceStreamingConfigurations"
        o.http_method = "GET"
        o.http_request_uri = "/app-instances/{appInstanceArn}/streaming-configurations"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: GetAppInstanceStreamingConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAppInstanceStreamingConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_attendee, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAttendee"
        o.http_method = "GET"
        o.http_request_uri = "/meetings/{meetingId}/attendees/{attendeeId}"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: GetAttendeeRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAttendeeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_bot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBot"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{accountId}/bots/{botId}"
        o.input = Shapes::ShapeRef.new(shape: GetBotRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBotResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
      end)

      api.add_operation(:get_channel_message, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetChannelMessage"
        o.http_method = "GET"
        o.http_request_uri = "/channels/{channelArn}/messages/{messageId}"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "messaging-",
        }
        o.input = Shapes::ShapeRef.new(shape: GetChannelMessageRequest)
        o.output = Shapes::ShapeRef.new(shape: GetChannelMessageResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_events_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEventsConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{accountId}/bots/{botId}/events-configuration"
        o.input = Shapes::ShapeRef.new(shape: GetEventsConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEventsConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:get_global_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGlobalSettings"
        o.http_method = "GET"
        o.http_request_uri = "/settings"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: GetGlobalSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_media_capture_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMediaCapturePipeline"
        o.http_method = "GET"
        o.http_request_uri = "/media-capture-pipelines/{mediaPipelineId}"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: GetMediaCapturePipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMediaCapturePipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_meeting, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMeeting"
        o.http_method = "GET"
        o.http_request_uri = "/meetings/{meetingId}"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: GetMeetingRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMeetingResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_messaging_session_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMessagingSessionEndpoint"
        o.http_method = "GET"
        o.http_request_uri = "/endpoints/messaging-session"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "messaging-",
        }
        o.input = Shapes::ShapeRef.new(shape: GetMessagingSessionEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMessagingSessionEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_phone_number, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPhoneNumber"
        o.http_method = "GET"
        o.http_request_uri = "/phone-numbers/{phoneNumberId}"
        o.input = Shapes::ShapeRef.new(shape: GetPhoneNumberRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPhoneNumberResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_phone_number_order, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPhoneNumberOrder"
        o.http_method = "GET"
        o.http_request_uri = "/phone-number-orders/{phoneNumberOrderId}"
        o.input = Shapes::ShapeRef.new(shape: GetPhoneNumberOrderRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPhoneNumberOrderResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_phone_number_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPhoneNumberSettings"
        o.http_method = "GET"
        o.http_request_uri = "/settings/phone-number"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: GetPhoneNumberSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_proxy_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProxySession"
        o.http_method = "GET"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/proxy-sessions/{proxySessionId}"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: GetProxySessionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProxySessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_retention_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRetentionSettings"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{accountId}/retention-settings"
        o.input = Shapes::ShapeRef.new(shape: GetRetentionSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRetentionSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_room, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRoom"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{accountId}/rooms/{roomId}"
        o.input = Shapes::ShapeRef.new(shape: GetRoomRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRoomResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_sip_media_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSipMediaApplication"
        o.http_method = "GET"
        o.http_request_uri = "/sip-media-applications/{sipMediaApplicationId}"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: GetSipMediaApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSipMediaApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_sip_media_application_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSipMediaApplicationLoggingConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/sip-media-applications/{sipMediaApplicationId}/logging-configuration"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: GetSipMediaApplicationLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSipMediaApplicationLoggingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_sip_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSipRule"
        o.http_method = "GET"
        o.http_request_uri = "/sip-rules/{sipRuleId}"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: GetSipRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSipRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUser"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{accountId}/users/{userId}"
        o.input = Shapes::ShapeRef.new(shape: GetUserRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_user_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUserSettings"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{accountId}/users/{userId}/settings"
        o.input = Shapes::ShapeRef.new(shape: GetUserSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUserSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_voice_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVoiceConnector"
        o.http_method = "GET"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: GetVoiceConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: GetVoiceConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_voice_connector_emergency_calling_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVoiceConnectorEmergencyCallingConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/emergency-calling-configuration"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: GetVoiceConnectorEmergencyCallingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetVoiceConnectorEmergencyCallingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_voice_connector_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVoiceConnectorGroup"
        o.http_method = "GET"
        o.http_request_uri = "/voice-connector-groups/{voiceConnectorGroupId}"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: GetVoiceConnectorGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: GetVoiceConnectorGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_voice_connector_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVoiceConnectorLoggingConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/logging-configuration"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: GetVoiceConnectorLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetVoiceConnectorLoggingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_voice_connector_origination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVoiceConnectorOrigination"
        o.http_method = "GET"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/origination"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: GetVoiceConnectorOriginationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetVoiceConnectorOriginationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_voice_connector_proxy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVoiceConnectorProxy"
        o.http_method = "GET"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/programmable-numbers/proxy"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: GetVoiceConnectorProxyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetVoiceConnectorProxyResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_voice_connector_streaming_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVoiceConnectorStreamingConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/streaming-configuration"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: GetVoiceConnectorStreamingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetVoiceConnectorStreamingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_voice_connector_termination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVoiceConnectorTermination"
        o.http_method = "GET"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/termination"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: GetVoiceConnectorTerminationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetVoiceConnectorTerminationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_voice_connector_termination_health, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVoiceConnectorTerminationHealth"
        o.http_method = "GET"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/termination/health"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: GetVoiceConnectorTerminationHealthRequest)
        o.output = Shapes::ShapeRef.new(shape: GetVoiceConnectorTerminationHealthResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:invite_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InviteUsers"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/users?operation=add"
        o.input = Shapes::ShapeRef.new(shape: InviteUsersRequest)
        o.output = Shapes::ShapeRef.new(shape: InviteUsersResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:list_accounts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccounts"
        o.http_method = "GET"
        o.http_request_uri = "/accounts"
        o.input = Shapes::ShapeRef.new(shape: ListAccountsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccountsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_app_instance_admins, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAppInstanceAdmins"
        o.http_method = "GET"
        o.http_request_uri = "/app-instances/{appInstanceArn}/admins"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "identity-",
        }
        o.input = Shapes::ShapeRef.new(shape: ListAppInstanceAdminsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAppInstanceAdminsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_app_instance_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAppInstanceUsers"
        o.http_method = "GET"
        o.http_request_uri = "/app-instance-users"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "identity-",
        }
        o.input = Shapes::ShapeRef.new(shape: ListAppInstanceUsersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAppInstanceUsersResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_app_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAppInstances"
        o.http_method = "GET"
        o.http_request_uri = "/app-instances"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "identity-",
        }
        o.input = Shapes::ShapeRef.new(shape: ListAppInstancesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAppInstancesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_attendee_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAttendeeTags"
        o.http_method = "GET"
        o.http_request_uri = "/meetings/{meetingId}/attendees/{attendeeId}/tags"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: ListAttendeeTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAttendeeTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:list_attendees, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAttendees"
        o.http_method = "GET"
        o.http_request_uri = "/meetings/{meetingId}/attendees"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: ListAttendeesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAttendeesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_bots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBots"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{accountId}/bots"
        o.input = Shapes::ShapeRef.new(shape: ListBotsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBotsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_channel_bans, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChannelBans"
        o.http_method = "GET"
        o.http_request_uri = "/channels/{channelArn}/bans"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "messaging-",
        }
        o.input = Shapes::ShapeRef.new(shape: ListChannelBansRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChannelBansResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_channel_memberships, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChannelMemberships"
        o.http_method = "GET"
        o.http_request_uri = "/channels/{channelArn}/memberships"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "messaging-",
        }
        o.input = Shapes::ShapeRef.new(shape: ListChannelMembershipsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChannelMembershipsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_channel_memberships_for_app_instance_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChannelMembershipsForAppInstanceUser"
        o.http_method = "GET"
        o.http_request_uri = "/channels?scope=app-instance-user-memberships"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "messaging-",
        }
        o.input = Shapes::ShapeRef.new(shape: ListChannelMembershipsForAppInstanceUserRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChannelMembershipsForAppInstanceUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_channel_messages, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChannelMessages"
        o.http_method = "GET"
        o.http_request_uri = "/channels/{channelArn}/messages"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "messaging-",
        }
        o.input = Shapes::ShapeRef.new(shape: ListChannelMessagesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChannelMessagesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_channel_moderators, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChannelModerators"
        o.http_method = "GET"
        o.http_request_uri = "/channels/{channelArn}/moderators"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "messaging-",
        }
        o.input = Shapes::ShapeRef.new(shape: ListChannelModeratorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChannelModeratorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_channels, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChannels"
        o.http_method = "GET"
        o.http_request_uri = "/channels"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "messaging-",
        }
        o.input = Shapes::ShapeRef.new(shape: ListChannelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChannelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_channels_moderated_by_app_instance_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChannelsModeratedByAppInstanceUser"
        o.http_method = "GET"
        o.http_request_uri = "/channels?scope=app-instance-user-moderated-channels"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "messaging-",
        }
        o.input = Shapes::ShapeRef.new(shape: ListChannelsModeratedByAppInstanceUserRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChannelsModeratedByAppInstanceUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_media_capture_pipelines, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMediaCapturePipelines"
        o.http_method = "GET"
        o.http_request_uri = "/media-capture-pipelines"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: ListMediaCapturePipelinesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMediaCapturePipelinesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_meeting_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMeetingTags"
        o.http_method = "GET"
        o.http_request_uri = "/meetings/{meetingId}/tags"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: ListMeetingTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMeetingTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:list_meetings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMeetings"
        o.http_method = "GET"
        o.http_request_uri = "/meetings"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: ListMeetingsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMeetingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_phone_number_orders, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPhoneNumberOrders"
        o.http_method = "GET"
        o.http_request_uri = "/phone-number-orders"
        o.input = Shapes::ShapeRef.new(shape: ListPhoneNumberOrdersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPhoneNumberOrdersResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_phone_numbers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPhoneNumbers"
        o.http_method = "GET"
        o.http_request_uri = "/phone-numbers"
        o.input = Shapes::ShapeRef.new(shape: ListPhoneNumbersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPhoneNumbersResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_proxy_sessions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProxySessions"
        o.http_method = "GET"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/proxy-sessions"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: ListProxySessionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProxySessionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_room_memberships, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRoomMemberships"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{accountId}/rooms/{roomId}/memberships"
        o.input = Shapes::ShapeRef.new(shape: ListRoomMembershipsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRoomMembershipsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_rooms, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRooms"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{accountId}/rooms"
        o.input = Shapes::ShapeRef.new(shape: ListRoomsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRoomsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_sip_media_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSipMediaApplications"
        o.http_method = "GET"
        o.http_request_uri = "/sip-media-applications"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: ListSipMediaApplicationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSipMediaApplicationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_sip_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSipRules"
        o.http_method = "GET"
        o.http_request_uri = "/sip-rules"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: ListSipRulesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSipRulesResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_supported_phone_number_countries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSupportedPhoneNumberCountries"
        o.http_method = "GET"
        o.http_request_uri = "/phone-number-countries"
        o.input = Shapes::ShapeRef.new(shape: ListSupportedPhoneNumberCountriesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSupportedPhoneNumberCountriesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:list_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUsers"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{accountId}/users"
        o.input = Shapes::ShapeRef.new(shape: ListUsersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUsersResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_voice_connector_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVoiceConnectorGroups"
        o.http_method = "GET"
        o.http_request_uri = "/voice-connector-groups"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: ListVoiceConnectorGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListVoiceConnectorGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_voice_connector_termination_credentials, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVoiceConnectorTerminationCredentials"
        o.http_method = "GET"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/termination/credentials"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: ListVoiceConnectorTerminationCredentialsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListVoiceConnectorTerminationCredentialsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:list_voice_connectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVoiceConnectors"
        o.http_method = "GET"
        o.http_request_uri = "/voice-connectors"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: ListVoiceConnectorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListVoiceConnectorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:logout_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "LogoutUser"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/users/{userId}?operation=logout"
        o.input = Shapes::ShapeRef.new(shape: LogoutUserRequest)
        o.output = Shapes::ShapeRef.new(shape: LogoutUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:put_app_instance_retention_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAppInstanceRetentionSettings"
        o.http_method = "PUT"
        o.http_request_uri = "/app-instances/{appInstanceArn}/retention-settings"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "identity-",
        }
        o.input = Shapes::ShapeRef.new(shape: PutAppInstanceRetentionSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutAppInstanceRetentionSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:put_app_instance_streaming_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAppInstanceStreamingConfigurations"
        o.http_method = "PUT"
        o.http_request_uri = "/app-instances/{appInstanceArn}/streaming-configurations"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: PutAppInstanceStreamingConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutAppInstanceStreamingConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:put_events_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutEventsConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{accountId}/bots/{botId}/events-configuration"
        o.input = Shapes::ShapeRef.new(shape: PutEventsConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutEventsConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:put_retention_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutRetentionSettings"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{accountId}/retention-settings"
        o.input = Shapes::ShapeRef.new(shape: PutRetentionSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutRetentionSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:put_sip_media_application_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutSipMediaApplicationLoggingConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/sip-media-applications/{sipMediaApplicationId}/logging-configuration"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: PutSipMediaApplicationLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutSipMediaApplicationLoggingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:put_voice_connector_emergency_calling_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutVoiceConnectorEmergencyCallingConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/emergency-calling-configuration"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: PutVoiceConnectorEmergencyCallingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutVoiceConnectorEmergencyCallingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:put_voice_connector_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutVoiceConnectorLoggingConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/logging-configuration"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: PutVoiceConnectorLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutVoiceConnectorLoggingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:put_voice_connector_origination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutVoiceConnectorOrigination"
        o.http_method = "PUT"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/origination"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: PutVoiceConnectorOriginationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutVoiceConnectorOriginationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:put_voice_connector_proxy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutVoiceConnectorProxy"
        o.http_method = "PUT"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/programmable-numbers/proxy"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: PutVoiceConnectorProxyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutVoiceConnectorProxyResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:put_voice_connector_streaming_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutVoiceConnectorStreamingConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/streaming-configuration"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: PutVoiceConnectorStreamingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutVoiceConnectorStreamingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:put_voice_connector_termination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutVoiceConnectorTermination"
        o.http_method = "PUT"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/termination"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: PutVoiceConnectorTerminationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutVoiceConnectorTerminationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:put_voice_connector_termination_credentials, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutVoiceConnectorTerminationCredentials"
        o.http_method = "POST"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/termination/credentials?operation=put"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: PutVoiceConnectorTerminationCredentialsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:redact_channel_message, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RedactChannelMessage"
        o.http_method = "POST"
        o.http_request_uri = "/channels/{channelArn}/messages/{messageId}?operation=redact"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "messaging-",
        }
        o.input = Shapes::ShapeRef.new(shape: RedactChannelMessageRequest)
        o.output = Shapes::ShapeRef.new(shape: RedactChannelMessageResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:redact_conversation_message, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RedactConversationMessage"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/conversations/{conversationId}/messages/{messageId}?operation=redact"
        o.input = Shapes::ShapeRef.new(shape: RedactConversationMessageRequest)
        o.output = Shapes::ShapeRef.new(shape: RedactConversationMessageResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:redact_room_message, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RedactRoomMessage"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/rooms/{roomId}/messages/{messageId}?operation=redact"
        o.input = Shapes::ShapeRef.new(shape: RedactRoomMessageRequest)
        o.output = Shapes::ShapeRef.new(shape: RedactRoomMessageResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:regenerate_security_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegenerateSecurityToken"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/bots/{botId}?operation=regenerate-security-token"
        o.input = Shapes::ShapeRef.new(shape: RegenerateSecurityTokenRequest)
        o.output = Shapes::ShapeRef.new(shape: RegenerateSecurityTokenResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
      end)

      api.add_operation(:reset_personal_pin, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResetPersonalPIN"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/users/{userId}?operation=reset-personal-pin"
        o.input = Shapes::ShapeRef.new(shape: ResetPersonalPINRequest)
        o.output = Shapes::ShapeRef.new(shape: ResetPersonalPINResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:restore_phone_number, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestorePhoneNumber"
        o.http_method = "POST"
        o.http_request_uri = "/phone-numbers/{phoneNumberId}?operation=restore"
        o.input = Shapes::ShapeRef.new(shape: RestorePhoneNumberRequest)
        o.output = Shapes::ShapeRef.new(shape: RestorePhoneNumberResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:search_available_phone_numbers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchAvailablePhoneNumbers"
        o.http_method = "GET"
        o.http_request_uri = "/search?type=phone-numbers"
        o.input = Shapes::ShapeRef.new(shape: SearchAvailablePhoneNumbersRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchAvailablePhoneNumbersResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:send_channel_message, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendChannelMessage"
        o.http_method = "POST"
        o.http_request_uri = "/channels/{channelArn}/messages"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "messaging-",
        }
        o.input = Shapes::ShapeRef.new(shape: SendChannelMessageRequest)
        o.output = Shapes::ShapeRef.new(shape: SendChannelMessageResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:start_meeting_transcription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartMeetingTranscription"
        o.http_method = "POST"
        o.http_request_uri = "/meetings/{meetingId}/transcription?operation=start"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: StartMeetingTranscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartMeetingTranscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:stop_meeting_transcription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopMeetingTranscription"
        o.http_method = "POST"
        o.http_request_uri = "/meetings/{meetingId}/transcription?operation=stop"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: StopMeetingTranscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: StopMeetingTranscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:tag_attendee, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagAttendee"
        o.http_method = "POST"
        o.http_request_uri = "/meetings/{meetingId}/attendees/{attendeeId}/tags?operation=add"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: TagAttendeeRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:tag_meeting, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagMeeting"
        o.http_method = "POST"
        o.http_request_uri = "/meetings/{meetingId}/tags?operation=add"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: TagMeetingRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags?operation=tag-resource"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:untag_attendee, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagAttendee"
        o.http_method = "POST"
        o.http_request_uri = "/meetings/{meetingId}/attendees/{attendeeId}/tags?operation=delete"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: UntagAttendeeRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:untag_meeting, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagMeeting"
        o.http_method = "POST"
        o.http_request_uri = "/meetings/{meetingId}/tags?operation=delete"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: UntagMeetingRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags?operation=untag-resource"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAccount"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_account_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAccountSettings"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{accountId}/settings"
        o.input = Shapes::ShapeRef.new(shape: UpdateAccountSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAccountSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_app_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAppInstance"
        o.http_method = "PUT"
        o.http_request_uri = "/app-instances/{appInstanceArn}"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "identity-",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateAppInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAppInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_app_instance_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAppInstanceUser"
        o.http_method = "PUT"
        o.http_request_uri = "/app-instance-users/{appInstanceUserArn}"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "identity-",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateAppInstanceUserRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAppInstanceUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_bot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBot"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/bots/{botId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateBotRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBotResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
      end)

      api.add_operation(:update_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateChannel"
        o.http_method = "PUT"
        o.http_request_uri = "/channels/{channelArn}"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "messaging-",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_channel_message, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateChannelMessage"
        o.http_method = "PUT"
        o.http_request_uri = "/channels/{channelArn}/messages/{messageId}"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "messaging-",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateChannelMessageRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateChannelMessageResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_channel_read_marker, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateChannelReadMarker"
        o.http_method = "PUT"
        o.http_request_uri = "/channels/{channelArn}/readMarker"
        o.deprecated = true
        o.endpoint_pattern = {
          "hostPrefix" => "messaging-",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateChannelReadMarkerRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateChannelReadMarkerResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_global_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGlobalSettings"
        o.http_method = "PUT"
        o.http_request_uri = "/settings"
        o.input = Shapes::ShapeRef.new(shape: UpdateGlobalSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_phone_number, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePhoneNumber"
        o.http_method = "POST"
        o.http_request_uri = "/phone-numbers/{phoneNumberId}"
        o.input = Shapes::ShapeRef.new(shape: UpdatePhoneNumberRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePhoneNumberResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_phone_number_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePhoneNumberSettings"
        o.http_method = "PUT"
        o.http_request_uri = "/settings/phone-number"
        o.input = Shapes::ShapeRef.new(shape: UpdatePhoneNumberSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_proxy_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProxySession"
        o.http_method = "POST"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}/proxy-sessions/{proxySessionId}"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: UpdateProxySessionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateProxySessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_room, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRoom"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/rooms/{roomId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRoomRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRoomResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_room_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRoomMembership"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/rooms/{roomId}/memberships/{memberId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRoomMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRoomMembershipResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_sip_media_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSipMediaApplication"
        o.http_method = "PUT"
        o.http_request_uri = "/sip-media-applications/{sipMediaApplicationId}"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: UpdateSipMediaApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSipMediaApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_sip_media_application_call, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSipMediaApplicationCall"
        o.http_method = "POST"
        o.http_request_uri = "/sip-media-applications/{sipMediaApplicationId}/calls/{transactionId}"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: UpdateSipMediaApplicationCallRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSipMediaApplicationCallResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_sip_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSipRule"
        o.http_method = "PUT"
        o.http_request_uri = "/sip-rules/{sipRuleId}"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: UpdateSipRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSipRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUser"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/users/{userId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_user_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUserSettings"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{accountId}/users/{userId}/settings"
        o.input = Shapes::ShapeRef.new(shape: UpdateUserSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_voice_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateVoiceConnector"
        o.http_method = "PUT"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: UpdateVoiceConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateVoiceConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_voice_connector_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateVoiceConnectorGroup"
        o.http_method = "PUT"
        o.http_request_uri = "/voice-connector-groups/{voiceConnectorGroupId}"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: UpdateVoiceConnectorGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateVoiceConnectorGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:validate_e911_address, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ValidateE911Address"
        o.http_method = "POST"
        o.http_request_uri = "/emergency-calling/address"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: ValidateE911AddressRequest)
        o.output = Shapes::ShapeRef.new(shape: ValidateE911AddressResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)
    end

  end
end
