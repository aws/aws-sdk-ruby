# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ChimeSDKVoice
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Address = Shapes::StructureShape.new(name: 'Address')
    AlexaSkillId = Shapes::StringShape.new(name: 'AlexaSkillId')
    AlexaSkillIdList = Shapes::ListShape.new(name: 'AlexaSkillIdList')
    AlexaSkillStatus = Shapes::StringShape.new(name: 'AlexaSkillStatus')
    Alpha2CountryCode = Shapes::StringShape.new(name: 'Alpha2CountryCode')
    AreaCode = Shapes::StringShape.new(name: 'AreaCode')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AssociatePhoneNumbersWithVoiceConnectorGroupRequest = Shapes::StructureShape.new(name: 'AssociatePhoneNumbersWithVoiceConnectorGroupRequest')
    AssociatePhoneNumbersWithVoiceConnectorGroupResponse = Shapes::StructureShape.new(name: 'AssociatePhoneNumbersWithVoiceConnectorGroupResponse')
    AssociatePhoneNumbersWithVoiceConnectorRequest = Shapes::StructureShape.new(name: 'AssociatePhoneNumbersWithVoiceConnectorRequest')
    AssociatePhoneNumbersWithVoiceConnectorResponse = Shapes::StructureShape.new(name: 'AssociatePhoneNumbersWithVoiceConnectorResponse')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    BatchDeletePhoneNumberRequest = Shapes::StructureShape.new(name: 'BatchDeletePhoneNumberRequest')
    BatchDeletePhoneNumberResponse = Shapes::StructureShape.new(name: 'BatchDeletePhoneNumberResponse')
    BatchUpdatePhoneNumberRequest = Shapes::StructureShape.new(name: 'BatchUpdatePhoneNumberRequest')
    BatchUpdatePhoneNumberResponse = Shapes::StructureShape.new(name: 'BatchUpdatePhoneNumberResponse')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CallDetails = Shapes::StructureShape.new(name: 'CallDetails')
    CallLegType = Shapes::StringShape.new(name: 'CallLegType')
    CallingName = Shapes::StringShape.new(name: 'CallingName')
    CallingNameStatus = Shapes::StringShape.new(name: 'CallingNameStatus')
    CallingRegion = Shapes::StringShape.new(name: 'CallingRegion')
    CallingRegionList = Shapes::ListShape.new(name: 'CallingRegionList')
    CandidateAddress = Shapes::StructureShape.new(name: 'CandidateAddress')
    CandidateAddressList = Shapes::ListShape.new(name: 'CandidateAddressList')
    Capability = Shapes::StringShape.new(name: 'Capability')
    CapabilityList = Shapes::ListShape.new(name: 'CapabilityList')
    ClientRequestId = Shapes::StringShape.new(name: 'ClientRequestId')
    ConfidenceScore = Shapes::FloatShape.new(name: 'ConfidenceScore')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    Country = Shapes::StringShape.new(name: 'Country')
    CountryList = Shapes::ListShape.new(name: 'CountryList')
    CpsLimit = Shapes::IntegerShape.new(name: 'CpsLimit')
    CreatePhoneNumberOrderRequest = Shapes::StructureShape.new(name: 'CreatePhoneNumberOrderRequest')
    CreatePhoneNumberOrderResponse = Shapes::StructureShape.new(name: 'CreatePhoneNumberOrderResponse')
    CreateProxySessionRequest = Shapes::StructureShape.new(name: 'CreateProxySessionRequest')
    CreateProxySessionResponse = Shapes::StructureShape.new(name: 'CreateProxySessionResponse')
    CreateSipMediaApplicationCallRequest = Shapes::StructureShape.new(name: 'CreateSipMediaApplicationCallRequest')
    CreateSipMediaApplicationCallResponse = Shapes::StructureShape.new(name: 'CreateSipMediaApplicationCallResponse')
    CreateSipMediaApplicationRequest = Shapes::StructureShape.new(name: 'CreateSipMediaApplicationRequest')
    CreateSipMediaApplicationResponse = Shapes::StructureShape.new(name: 'CreateSipMediaApplicationResponse')
    CreateSipRuleRequest = Shapes::StructureShape.new(name: 'CreateSipRuleRequest')
    CreateSipRuleResponse = Shapes::StructureShape.new(name: 'CreateSipRuleResponse')
    CreateVoiceConnectorGroupRequest = Shapes::StructureShape.new(name: 'CreateVoiceConnectorGroupRequest')
    CreateVoiceConnectorGroupResponse = Shapes::StructureShape.new(name: 'CreateVoiceConnectorGroupResponse')
    CreateVoiceConnectorRequest = Shapes::StructureShape.new(name: 'CreateVoiceConnectorRequest')
    CreateVoiceConnectorResponse = Shapes::StructureShape.new(name: 'CreateVoiceConnectorResponse')
    CreateVoiceProfileDomainRequest = Shapes::StructureShape.new(name: 'CreateVoiceProfileDomainRequest')
    CreateVoiceProfileDomainResponse = Shapes::StructureShape.new(name: 'CreateVoiceProfileDomainResponse')
    CreateVoiceProfileRequest = Shapes::StructureShape.new(name: 'CreateVoiceProfileRequest')
    CreateVoiceProfileResponse = Shapes::StructureShape.new(name: 'CreateVoiceProfileResponse')
    Credential = Shapes::StructureShape.new(name: 'Credential')
    CredentialList = Shapes::ListShape.new(name: 'CredentialList')
    DNISEmergencyCallingConfiguration = Shapes::StructureShape.new(name: 'DNISEmergencyCallingConfiguration')
    DNISEmergencyCallingConfigurationList = Shapes::ListShape.new(name: 'DNISEmergencyCallingConfigurationList')
    DataRetentionInHours = Shapes::IntegerShape.new(name: 'DataRetentionInHours')
    DeletePhoneNumberRequest = Shapes::StructureShape.new(name: 'DeletePhoneNumberRequest')
    DeleteProxySessionRequest = Shapes::StructureShape.new(name: 'DeleteProxySessionRequest')
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
    DeleteVoiceProfileDomainRequest = Shapes::StructureShape.new(name: 'DeleteVoiceProfileDomainRequest')
    DeleteVoiceProfileRequest = Shapes::StructureShape.new(name: 'DeleteVoiceProfileRequest')
    DisassociatePhoneNumbersFromVoiceConnectorGroupRequest = Shapes::StructureShape.new(name: 'DisassociatePhoneNumbersFromVoiceConnectorGroupRequest')
    DisassociatePhoneNumbersFromVoiceConnectorGroupResponse = Shapes::StructureShape.new(name: 'DisassociatePhoneNumbersFromVoiceConnectorGroupResponse')
    DisassociatePhoneNumbersFromVoiceConnectorRequest = Shapes::StructureShape.new(name: 'DisassociatePhoneNumbersFromVoiceConnectorRequest')
    DisassociatePhoneNumbersFromVoiceConnectorResponse = Shapes::StructureShape.new(name: 'DisassociatePhoneNumbersFromVoiceConnectorResponse')
    E164PhoneNumber = Shapes::StringShape.new(name: 'E164PhoneNumber')
    E164PhoneNumberList = Shapes::ListShape.new(name: 'E164PhoneNumberList')
    EmergencyCallingConfiguration = Shapes::StructureShape.new(name: 'EmergencyCallingConfiguration')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    FunctionArn = Shapes::StringShape.new(name: 'FunctionArn')
    GeoMatchLevel = Shapes::StringShape.new(name: 'GeoMatchLevel')
    GeoMatchParams = Shapes::StructureShape.new(name: 'GeoMatchParams')
    GetGlobalSettingsResponse = Shapes::StructureShape.new(name: 'GetGlobalSettingsResponse')
    GetPhoneNumberOrderRequest = Shapes::StructureShape.new(name: 'GetPhoneNumberOrderRequest')
    GetPhoneNumberOrderResponse = Shapes::StructureShape.new(name: 'GetPhoneNumberOrderResponse')
    GetPhoneNumberRequest = Shapes::StructureShape.new(name: 'GetPhoneNumberRequest')
    GetPhoneNumberResponse = Shapes::StructureShape.new(name: 'GetPhoneNumberResponse')
    GetPhoneNumberSettingsResponse = Shapes::StructureShape.new(name: 'GetPhoneNumberSettingsResponse')
    GetProxySessionRequest = Shapes::StructureShape.new(name: 'GetProxySessionRequest')
    GetProxySessionResponse = Shapes::StructureShape.new(name: 'GetProxySessionResponse')
    GetSipMediaApplicationAlexaSkillConfigurationRequest = Shapes::StructureShape.new(name: 'GetSipMediaApplicationAlexaSkillConfigurationRequest')
    GetSipMediaApplicationAlexaSkillConfigurationResponse = Shapes::StructureShape.new(name: 'GetSipMediaApplicationAlexaSkillConfigurationResponse')
    GetSipMediaApplicationLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'GetSipMediaApplicationLoggingConfigurationRequest')
    GetSipMediaApplicationLoggingConfigurationResponse = Shapes::StructureShape.new(name: 'GetSipMediaApplicationLoggingConfigurationResponse')
    GetSipMediaApplicationRequest = Shapes::StructureShape.new(name: 'GetSipMediaApplicationRequest')
    GetSipMediaApplicationResponse = Shapes::StructureShape.new(name: 'GetSipMediaApplicationResponse')
    GetSipRuleRequest = Shapes::StructureShape.new(name: 'GetSipRuleRequest')
    GetSipRuleResponse = Shapes::StructureShape.new(name: 'GetSipRuleResponse')
    GetSpeakerSearchTaskRequest = Shapes::StructureShape.new(name: 'GetSpeakerSearchTaskRequest')
    GetSpeakerSearchTaskResponse = Shapes::StructureShape.new(name: 'GetSpeakerSearchTaskResponse')
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
    GetVoiceProfileDomainRequest = Shapes::StructureShape.new(name: 'GetVoiceProfileDomainRequest')
    GetVoiceProfileDomainResponse = Shapes::StructureShape.new(name: 'GetVoiceProfileDomainResponse')
    GetVoiceProfileRequest = Shapes::StructureShape.new(name: 'GetVoiceProfileRequest')
    GetVoiceProfileResponse = Shapes::StructureShape.new(name: 'GetVoiceProfileResponse')
    GetVoiceToneAnalysisTaskRequest = Shapes::StructureShape.new(name: 'GetVoiceToneAnalysisTaskRequest')
    GetVoiceToneAnalysisTaskResponse = Shapes::StructureShape.new(name: 'GetVoiceToneAnalysisTaskResponse')
    GoneException = Shapes::StructureShape.new(name: 'GoneException')
    GuidString = Shapes::StringShape.new(name: 'GuidString')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    Iso8601Timestamp = Shapes::TimestampShape.new(name: 'Iso8601Timestamp', timestampFormat: "iso8601")
    LanguageCode = Shapes::StringShape.new(name: 'LanguageCode')
    ListAvailableVoiceConnectorRegionsResponse = Shapes::StructureShape.new(name: 'ListAvailableVoiceConnectorRegionsResponse')
    ListPhoneNumberOrdersRequest = Shapes::StructureShape.new(name: 'ListPhoneNumberOrdersRequest')
    ListPhoneNumberOrdersResponse = Shapes::StructureShape.new(name: 'ListPhoneNumberOrdersResponse')
    ListPhoneNumbersRequest = Shapes::StructureShape.new(name: 'ListPhoneNumbersRequest')
    ListPhoneNumbersResponse = Shapes::StructureShape.new(name: 'ListPhoneNumbersResponse')
    ListProxySessionsRequest = Shapes::StructureShape.new(name: 'ListProxySessionsRequest')
    ListProxySessionsResponse = Shapes::StructureShape.new(name: 'ListProxySessionsResponse')
    ListSipMediaApplicationsRequest = Shapes::StructureShape.new(name: 'ListSipMediaApplicationsRequest')
    ListSipMediaApplicationsResponse = Shapes::StructureShape.new(name: 'ListSipMediaApplicationsResponse')
    ListSipRulesRequest = Shapes::StructureShape.new(name: 'ListSipRulesRequest')
    ListSipRulesResponse = Shapes::StructureShape.new(name: 'ListSipRulesResponse')
    ListSupportedPhoneNumberCountriesRequest = Shapes::StructureShape.new(name: 'ListSupportedPhoneNumberCountriesRequest')
    ListSupportedPhoneNumberCountriesResponse = Shapes::StructureShape.new(name: 'ListSupportedPhoneNumberCountriesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListVoiceConnectorGroupsRequest = Shapes::StructureShape.new(name: 'ListVoiceConnectorGroupsRequest')
    ListVoiceConnectorGroupsResponse = Shapes::StructureShape.new(name: 'ListVoiceConnectorGroupsResponse')
    ListVoiceConnectorTerminationCredentialsRequest = Shapes::StructureShape.new(name: 'ListVoiceConnectorTerminationCredentialsRequest')
    ListVoiceConnectorTerminationCredentialsResponse = Shapes::StructureShape.new(name: 'ListVoiceConnectorTerminationCredentialsResponse')
    ListVoiceConnectorsRequest = Shapes::StructureShape.new(name: 'ListVoiceConnectorsRequest')
    ListVoiceConnectorsResponse = Shapes::StructureShape.new(name: 'ListVoiceConnectorsResponse')
    ListVoiceProfileDomainsRequest = Shapes::StructureShape.new(name: 'ListVoiceProfileDomainsRequest')
    ListVoiceProfileDomainsResponse = Shapes::StructureShape.new(name: 'ListVoiceProfileDomainsResponse')
    ListVoiceProfilesRequest = Shapes::StructureShape.new(name: 'ListVoiceProfilesRequest')
    ListVoiceProfilesResponse = Shapes::StructureShape.new(name: 'ListVoiceProfilesResponse')
    LoggingConfiguration = Shapes::StructureShape.new(name: 'LoggingConfiguration')
    MediaInsightsConfiguration = Shapes::StructureShape.new(name: 'MediaInsightsConfiguration')
    NextTokenString = Shapes::StringShape.new(name: 'NextTokenString')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    NonEmptyString128 = Shapes::StringShape.new(name: 'NonEmptyString128')
    NonEmptyString256 = Shapes::StringShape.new(name: 'NonEmptyString256')
    NonEmptyStringList = Shapes::ListShape.new(name: 'NonEmptyStringList')
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
    PhoneNumberOrderType = Shapes::StringShape.new(name: 'PhoneNumberOrderType')
    PhoneNumberProductType = Shapes::StringShape.new(name: 'PhoneNumberProductType')
    PhoneNumberStatus = Shapes::StringShape.new(name: 'PhoneNumberStatus')
    PhoneNumberType = Shapes::StringShape.new(name: 'PhoneNumberType')
    PhoneNumberTypeList = Shapes::ListShape.new(name: 'PhoneNumberTypeList')
    Port = Shapes::IntegerShape.new(name: 'Port')
    PositiveInteger = Shapes::IntegerShape.new(name: 'PositiveInteger')
    Proxy = Shapes::StructureShape.new(name: 'Proxy')
    ProxySession = Shapes::StructureShape.new(name: 'ProxySession')
    ProxySessionNameString = Shapes::StringShape.new(name: 'ProxySessionNameString')
    ProxySessionStatus = Shapes::StringShape.new(name: 'ProxySessionStatus')
    ProxySessions = Shapes::ListShape.new(name: 'ProxySessions')
    PutSipMediaApplicationAlexaSkillConfigurationRequest = Shapes::StructureShape.new(name: 'PutSipMediaApplicationAlexaSkillConfigurationRequest')
    PutSipMediaApplicationAlexaSkillConfigurationResponse = Shapes::StructureShape.new(name: 'PutSipMediaApplicationAlexaSkillConfigurationResponse')
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
    ResourceLimitExceededException = Shapes::StructureShape.new(name: 'ResourceLimitExceededException')
    RestorePhoneNumberRequest = Shapes::StructureShape.new(name: 'RestorePhoneNumberRequest')
    RestorePhoneNumberResponse = Shapes::StructureShape.new(name: 'RestorePhoneNumberResponse')
    ResultMax = Shapes::IntegerShape.new(name: 'ResultMax')
    SMACreateCallArgumentsMap = Shapes::MapShape.new(name: 'SMACreateCallArgumentsMap')
    SMAUpdateCallArgumentsMap = Shapes::MapShape.new(name: 'SMAUpdateCallArgumentsMap')
    SearchAvailablePhoneNumbersRequest = Shapes::StructureShape.new(name: 'SearchAvailablePhoneNumbersRequest')
    SearchAvailablePhoneNumbersResponse = Shapes::StructureShape.new(name: 'SearchAvailablePhoneNumbersResponse')
    SensitiveNonEmptyString = Shapes::StringShape.new(name: 'SensitiveNonEmptyString')
    SensitiveString = Shapes::StringShape.new(name: 'SensitiveString')
    SensitiveStringList = Shapes::ListShape.new(name: 'SensitiveStringList')
    ServerSideEncryptionConfiguration = Shapes::StructureShape.new(name: 'ServerSideEncryptionConfiguration')
    ServiceFailureException = Shapes::StructureShape.new(name: 'ServiceFailureException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SipApplicationPriority = Shapes::IntegerShape.new(name: 'SipApplicationPriority')
    SipHeadersMap = Shapes::MapShape.new(name: 'SipHeadersMap')
    SipMediaApplication = Shapes::StructureShape.new(name: 'SipMediaApplication')
    SipMediaApplicationAlexaSkillConfiguration = Shapes::StructureShape.new(name: 'SipMediaApplicationAlexaSkillConfiguration')
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
    SpeakerSearchDetails = Shapes::StructureShape.new(name: 'SpeakerSearchDetails')
    SpeakerSearchResult = Shapes::StructureShape.new(name: 'SpeakerSearchResult')
    SpeakerSearchResultList = Shapes::ListShape.new(name: 'SpeakerSearchResultList')
    SpeakerSearchTask = Shapes::StructureShape.new(name: 'SpeakerSearchTask')
    StartSpeakerSearchTaskRequest = Shapes::StructureShape.new(name: 'StartSpeakerSearchTaskRequest')
    StartSpeakerSearchTaskResponse = Shapes::StructureShape.new(name: 'StartSpeakerSearchTaskResponse')
    StartVoiceToneAnalysisTaskRequest = Shapes::StructureShape.new(name: 'StartVoiceToneAnalysisTaskRequest')
    StartVoiceToneAnalysisTaskResponse = Shapes::StructureShape.new(name: 'StartVoiceToneAnalysisTaskResponse')
    StopSpeakerSearchTaskRequest = Shapes::StructureShape.new(name: 'StopSpeakerSearchTaskRequest')
    StopVoiceToneAnalysisTaskRequest = Shapes::StructureShape.new(name: 'StopVoiceToneAnalysisTaskRequest')
    StreamingConfiguration = Shapes::StructureShape.new(name: 'StreamingConfiguration')
    StreamingNotificationTarget = Shapes::StructureShape.new(name: 'StreamingNotificationTarget')
    StreamingNotificationTargetList = Shapes::ListShape.new(name: 'StreamingNotificationTargetList')
    String = Shapes::StringShape.new(name: 'String')
    String128 = Shapes::StringShape.new(name: 'String128')
    StringList = Shapes::ListShape.new(name: 'StringList')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Termination = Shapes::StructureShape.new(name: 'Termination')
    TerminationHealth = Shapes::StructureShape.new(name: 'TerminationHealth')
    ThrottledClientException = Shapes::StructureShape.new(name: 'ThrottledClientException')
    TollFreePrefix = Shapes::StringShape.new(name: 'TollFreePrefix')
    UnauthorizedClientException = Shapes::StructureShape.new(name: 'UnauthorizedClientException')
    UnprocessableEntityException = Shapes::StructureShape.new(name: 'UnprocessableEntityException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateGlobalSettingsRequest = Shapes::StructureShape.new(name: 'UpdateGlobalSettingsRequest')
    UpdatePhoneNumberRequest = Shapes::StructureShape.new(name: 'UpdatePhoneNumberRequest')
    UpdatePhoneNumberRequestItem = Shapes::StructureShape.new(name: 'UpdatePhoneNumberRequestItem')
    UpdatePhoneNumberRequestItemList = Shapes::ListShape.new(name: 'UpdatePhoneNumberRequestItemList')
    UpdatePhoneNumberResponse = Shapes::StructureShape.new(name: 'UpdatePhoneNumberResponse')
    UpdatePhoneNumberSettingsRequest = Shapes::StructureShape.new(name: 'UpdatePhoneNumberSettingsRequest')
    UpdateProxySessionRequest = Shapes::StructureShape.new(name: 'UpdateProxySessionRequest')
    UpdateProxySessionResponse = Shapes::StructureShape.new(name: 'UpdateProxySessionResponse')
    UpdateSipMediaApplicationCallRequest = Shapes::StructureShape.new(name: 'UpdateSipMediaApplicationCallRequest')
    UpdateSipMediaApplicationCallResponse = Shapes::StructureShape.new(name: 'UpdateSipMediaApplicationCallResponse')
    UpdateSipMediaApplicationRequest = Shapes::StructureShape.new(name: 'UpdateSipMediaApplicationRequest')
    UpdateSipMediaApplicationResponse = Shapes::StructureShape.new(name: 'UpdateSipMediaApplicationResponse')
    UpdateSipRuleRequest = Shapes::StructureShape.new(name: 'UpdateSipRuleRequest')
    UpdateSipRuleResponse = Shapes::StructureShape.new(name: 'UpdateSipRuleResponse')
    UpdateVoiceConnectorGroupRequest = Shapes::StructureShape.new(name: 'UpdateVoiceConnectorGroupRequest')
    UpdateVoiceConnectorGroupResponse = Shapes::StructureShape.new(name: 'UpdateVoiceConnectorGroupResponse')
    UpdateVoiceConnectorRequest = Shapes::StructureShape.new(name: 'UpdateVoiceConnectorRequest')
    UpdateVoiceConnectorResponse = Shapes::StructureShape.new(name: 'UpdateVoiceConnectorResponse')
    UpdateVoiceProfileDomainRequest = Shapes::StructureShape.new(name: 'UpdateVoiceProfileDomainRequest')
    UpdateVoiceProfileDomainResponse = Shapes::StructureShape.new(name: 'UpdateVoiceProfileDomainResponse')
    UpdateVoiceProfileRequest = Shapes::StructureShape.new(name: 'UpdateVoiceProfileRequest')
    UpdateVoiceProfileResponse = Shapes::StructureShape.new(name: 'UpdateVoiceProfileResponse')
    ValidateE911AddressRequest = Shapes::StructureShape.new(name: 'ValidateE911AddressRequest')
    ValidateE911AddressResponse = Shapes::StructureShape.new(name: 'ValidateE911AddressResponse')
    ValidationResult = Shapes::IntegerShape.new(name: 'ValidationResult')
    VoiceConnector = Shapes::StructureShape.new(name: 'VoiceConnector')
    VoiceConnectorAwsRegion = Shapes::StringShape.new(name: 'VoiceConnectorAwsRegion')
    VoiceConnectorAwsRegionList = Shapes::ListShape.new(name: 'VoiceConnectorAwsRegionList')
    VoiceConnectorGroup = Shapes::StructureShape.new(name: 'VoiceConnectorGroup')
    VoiceConnectorGroupList = Shapes::ListShape.new(name: 'VoiceConnectorGroupList')
    VoiceConnectorGroupName = Shapes::StringShape.new(name: 'VoiceConnectorGroupName')
    VoiceConnectorItem = Shapes::StructureShape.new(name: 'VoiceConnectorItem')
    VoiceConnectorItemList = Shapes::ListShape.new(name: 'VoiceConnectorItemList')
    VoiceConnectorItemPriority = Shapes::IntegerShape.new(name: 'VoiceConnectorItemPriority')
    VoiceConnectorList = Shapes::ListShape.new(name: 'VoiceConnectorList')
    VoiceConnectorName = Shapes::StringShape.new(name: 'VoiceConnectorName')
    VoiceConnectorSettings = Shapes::StructureShape.new(name: 'VoiceConnectorSettings')
    VoiceProfile = Shapes::StructureShape.new(name: 'VoiceProfile')
    VoiceProfileDomain = Shapes::StructureShape.new(name: 'VoiceProfileDomain')
    VoiceProfileDomainDescription = Shapes::StringShape.new(name: 'VoiceProfileDomainDescription')
    VoiceProfileDomainName = Shapes::StringShape.new(name: 'VoiceProfileDomainName')
    VoiceProfileDomainSummary = Shapes::StructureShape.new(name: 'VoiceProfileDomainSummary')
    VoiceProfileDomainSummaryList = Shapes::ListShape.new(name: 'VoiceProfileDomainSummaryList')
    VoiceProfileSummary = Shapes::StructureShape.new(name: 'VoiceProfileSummary')
    VoiceProfileSummaryList = Shapes::ListShape.new(name: 'VoiceProfileSummaryList')
    VoiceToneAnalysisTask = Shapes::StructureShape.new(name: 'VoiceToneAnalysisTask')

    AccessDeniedException.struct_class = Types::AccessDeniedException

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

    AlexaSkillIdList.member = Shapes::ShapeRef.new(shape: AlexaSkillId)

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

    BadRequestException.struct_class = Types::BadRequestException

    BatchDeletePhoneNumberRequest.add_member(:phone_number_ids, Shapes::ShapeRef.new(shape: NonEmptyStringList, required: true, location_name: "PhoneNumberIds"))
    BatchDeletePhoneNumberRequest.struct_class = Types::BatchDeletePhoneNumberRequest

    BatchDeletePhoneNumberResponse.add_member(:phone_number_errors, Shapes::ShapeRef.new(shape: PhoneNumberErrorList, location_name: "PhoneNumberErrors"))
    BatchDeletePhoneNumberResponse.struct_class = Types::BatchDeletePhoneNumberResponse

    BatchUpdatePhoneNumberRequest.add_member(:update_phone_number_request_items, Shapes::ShapeRef.new(shape: UpdatePhoneNumberRequestItemList, required: true, location_name: "UpdatePhoneNumberRequestItems"))
    BatchUpdatePhoneNumberRequest.struct_class = Types::BatchUpdatePhoneNumberRequest

    BatchUpdatePhoneNumberResponse.add_member(:phone_number_errors, Shapes::ShapeRef.new(shape: PhoneNumberErrorList, location_name: "PhoneNumberErrors"))
    BatchUpdatePhoneNumberResponse.struct_class = Types::BatchUpdatePhoneNumberResponse

    CallDetails.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString128, location_name: "VoiceConnectorId"))
    CallDetails.add_member(:transaction_id, Shapes::ShapeRef.new(shape: NonEmptyString256, location_name: "TransactionId"))
    CallDetails.add_member(:is_caller, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsCaller"))
    CallDetails.struct_class = Types::CallDetails

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

    ConflictException.struct_class = Types::ConflictException

    CountryList.member = Shapes::ShapeRef.new(shape: Country)

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

    CreateSipMediaApplicationCallRequest.add_member(:from_phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, required: true, location_name: "FromPhoneNumber"))
    CreateSipMediaApplicationCallRequest.add_member(:to_phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, required: true, location_name: "ToPhoneNumber"))
    CreateSipMediaApplicationCallRequest.add_member(:sip_media_application_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "sipMediaApplicationId"))
    CreateSipMediaApplicationCallRequest.add_member(:sip_headers, Shapes::ShapeRef.new(shape: SipHeadersMap, location_name: "SipHeaders"))
    CreateSipMediaApplicationCallRequest.add_member(:arguments_map, Shapes::ShapeRef.new(shape: SMACreateCallArgumentsMap, location_name: "ArgumentsMap"))
    CreateSipMediaApplicationCallRequest.struct_class = Types::CreateSipMediaApplicationCallRequest

    CreateSipMediaApplicationCallResponse.add_member(:sip_media_application_call, Shapes::ShapeRef.new(shape: SipMediaApplicationCall, location_name: "SipMediaApplicationCall"))
    CreateSipMediaApplicationCallResponse.struct_class = Types::CreateSipMediaApplicationCallResponse

    CreateSipMediaApplicationRequest.add_member(:aws_region, Shapes::ShapeRef.new(shape: String, required: true, location_name: "AwsRegion"))
    CreateSipMediaApplicationRequest.add_member(:name, Shapes::ShapeRef.new(shape: SipMediaApplicationName, required: true, location_name: "Name"))
    CreateSipMediaApplicationRequest.add_member(:endpoints, Shapes::ShapeRef.new(shape: SipMediaApplicationEndpointList, required: true, location_name: "Endpoints"))
    CreateSipMediaApplicationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateSipMediaApplicationRequest.struct_class = Types::CreateSipMediaApplicationRequest

    CreateSipMediaApplicationResponse.add_member(:sip_media_application, Shapes::ShapeRef.new(shape: SipMediaApplication, location_name: "SipMediaApplication"))
    CreateSipMediaApplicationResponse.struct_class = Types::CreateSipMediaApplicationResponse

    CreateSipRuleRequest.add_member(:name, Shapes::ShapeRef.new(shape: SipRuleName, required: true, location_name: "Name"))
    CreateSipRuleRequest.add_member(:trigger_type, Shapes::ShapeRef.new(shape: SipRuleTriggerType, required: true, location_name: "TriggerType"))
    CreateSipRuleRequest.add_member(:trigger_value, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "TriggerValue"))
    CreateSipRuleRequest.add_member(:disabled, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "Disabled"))
    CreateSipRuleRequest.add_member(:target_applications, Shapes::ShapeRef.new(shape: SipRuleTargetApplicationList, location_name: "TargetApplications"))
    CreateSipRuleRequest.struct_class = Types::CreateSipRuleRequest

    CreateSipRuleResponse.add_member(:sip_rule, Shapes::ShapeRef.new(shape: SipRule, location_name: "SipRule"))
    CreateSipRuleResponse.struct_class = Types::CreateSipRuleResponse

    CreateVoiceConnectorGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: VoiceConnectorGroupName, required: true, location_name: "Name"))
    CreateVoiceConnectorGroupRequest.add_member(:voice_connector_items, Shapes::ShapeRef.new(shape: VoiceConnectorItemList, location_name: "VoiceConnectorItems"))
    CreateVoiceConnectorGroupRequest.struct_class = Types::CreateVoiceConnectorGroupRequest

    CreateVoiceConnectorGroupResponse.add_member(:voice_connector_group, Shapes::ShapeRef.new(shape: VoiceConnectorGroup, location_name: "VoiceConnectorGroup"))
    CreateVoiceConnectorGroupResponse.struct_class = Types::CreateVoiceConnectorGroupResponse

    CreateVoiceConnectorRequest.add_member(:name, Shapes::ShapeRef.new(shape: VoiceConnectorName, required: true, location_name: "Name"))
    CreateVoiceConnectorRequest.add_member(:aws_region, Shapes::ShapeRef.new(shape: VoiceConnectorAwsRegion, location_name: "AwsRegion"))
    CreateVoiceConnectorRequest.add_member(:require_encryption, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "RequireEncryption"))
    CreateVoiceConnectorRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateVoiceConnectorRequest.struct_class = Types::CreateVoiceConnectorRequest

    CreateVoiceConnectorResponse.add_member(:voice_connector, Shapes::ShapeRef.new(shape: VoiceConnector, location_name: "VoiceConnector"))
    CreateVoiceConnectorResponse.struct_class = Types::CreateVoiceConnectorResponse

    CreateVoiceProfileDomainRequest.add_member(:name, Shapes::ShapeRef.new(shape: VoiceProfileDomainName, required: true, location_name: "Name"))
    CreateVoiceProfileDomainRequest.add_member(:description, Shapes::ShapeRef.new(shape: VoiceProfileDomainDescription, location_name: "Description"))
    CreateVoiceProfileDomainRequest.add_member(:server_side_encryption_configuration, Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, required: true, location_name: "ServerSideEncryptionConfiguration"))
    CreateVoiceProfileDomainRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestId, location_name: "ClientRequestToken"))
    CreateVoiceProfileDomainRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateVoiceProfileDomainRequest.struct_class = Types::CreateVoiceProfileDomainRequest

    CreateVoiceProfileDomainResponse.add_member(:voice_profile_domain, Shapes::ShapeRef.new(shape: VoiceProfileDomain, location_name: "VoiceProfileDomain"))
    CreateVoiceProfileDomainResponse.struct_class = Types::CreateVoiceProfileDomainResponse

    CreateVoiceProfileRequest.add_member(:speaker_search_task_id, Shapes::ShapeRef.new(shape: NonEmptyString256, required: true, location_name: "SpeakerSearchTaskId"))
    CreateVoiceProfileRequest.struct_class = Types::CreateVoiceProfileRequest

    CreateVoiceProfileResponse.add_member(:voice_profile, Shapes::ShapeRef.new(shape: VoiceProfile, location_name: "VoiceProfile"))
    CreateVoiceProfileResponse.struct_class = Types::CreateVoiceProfileResponse

    Credential.add_member(:username, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "Username"))
    Credential.add_member(:password, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "Password"))
    Credential.struct_class = Types::Credential

    CredentialList.member = Shapes::ShapeRef.new(shape: Credential)

    DNISEmergencyCallingConfiguration.add_member(:emergency_phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, required: true, location_name: "EmergencyPhoneNumber"))
    DNISEmergencyCallingConfiguration.add_member(:test_phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: "TestPhoneNumber"))
    DNISEmergencyCallingConfiguration.add_member(:calling_country, Shapes::ShapeRef.new(shape: Alpha2CountryCode, required: true, location_name: "CallingCountry"))
    DNISEmergencyCallingConfiguration.struct_class = Types::DNISEmergencyCallingConfiguration

    DNISEmergencyCallingConfigurationList.member = Shapes::ShapeRef.new(shape: DNISEmergencyCallingConfiguration)

    DeletePhoneNumberRequest.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, required: true, location: "uri", location_name: "phoneNumberId"))
    DeletePhoneNumberRequest.struct_class = Types::DeletePhoneNumberRequest

    DeleteProxySessionRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString128, required: true, location: "uri", location_name: "voiceConnectorId"))
    DeleteProxySessionRequest.add_member(:proxy_session_id, Shapes::ShapeRef.new(shape: NonEmptyString128, required: true, location: "uri", location_name: "proxySessionId"))
    DeleteProxySessionRequest.struct_class = Types::DeleteProxySessionRequest

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

    DeleteVoiceProfileDomainRequest.add_member(:voice_profile_domain_id, Shapes::ShapeRef.new(shape: NonEmptyString256, required: true, location: "uri", location_name: "VoiceProfileDomainId"))
    DeleteVoiceProfileDomainRequest.struct_class = Types::DeleteVoiceProfileDomainRequest

    DeleteVoiceProfileRequest.add_member(:voice_profile_id, Shapes::ShapeRef.new(shape: NonEmptyString256, required: true, location: "uri", location_name: "VoiceProfileId"))
    DeleteVoiceProfileRequest.struct_class = Types::DeleteVoiceProfileRequest

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

    E164PhoneNumberList.member = Shapes::ShapeRef.new(shape: E164PhoneNumber)

    EmergencyCallingConfiguration.add_member(:dnis, Shapes::ShapeRef.new(shape: DNISEmergencyCallingConfigurationList, location_name: "DNIS"))
    EmergencyCallingConfiguration.struct_class = Types::EmergencyCallingConfiguration

    ForbiddenException.struct_class = Types::ForbiddenException

    GeoMatchParams.add_member(:country, Shapes::ShapeRef.new(shape: Country, required: true, location_name: "Country"))
    GeoMatchParams.add_member(:area_code, Shapes::ShapeRef.new(shape: AreaCode, required: true, location_name: "AreaCode"))
    GeoMatchParams.struct_class = Types::GeoMatchParams

    GetGlobalSettingsResponse.add_member(:voice_connector, Shapes::ShapeRef.new(shape: VoiceConnectorSettings, location_name: "VoiceConnector"))
    GetGlobalSettingsResponse.struct_class = Types::GetGlobalSettingsResponse

    GetPhoneNumberOrderRequest.add_member(:phone_number_order_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "phoneNumberOrderId"))
    GetPhoneNumberOrderRequest.struct_class = Types::GetPhoneNumberOrderRequest

    GetPhoneNumberOrderResponse.add_member(:phone_number_order, Shapes::ShapeRef.new(shape: PhoneNumberOrder, location_name: "PhoneNumberOrder"))
    GetPhoneNumberOrderResponse.struct_class = Types::GetPhoneNumberOrderResponse

    GetPhoneNumberRequest.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, required: true, location: "uri", location_name: "phoneNumberId"))
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

    GetSipMediaApplicationAlexaSkillConfigurationRequest.add_member(:sip_media_application_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "sipMediaApplicationId"))
    GetSipMediaApplicationAlexaSkillConfigurationRequest.struct_class = Types::GetSipMediaApplicationAlexaSkillConfigurationRequest

    GetSipMediaApplicationAlexaSkillConfigurationResponse.add_member(:sip_media_application_alexa_skill_configuration, Shapes::ShapeRef.new(shape: SipMediaApplicationAlexaSkillConfiguration, location_name: "SipMediaApplicationAlexaSkillConfiguration"))
    GetSipMediaApplicationAlexaSkillConfigurationResponse.struct_class = Types::GetSipMediaApplicationAlexaSkillConfigurationResponse

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

    GetSpeakerSearchTaskRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString128, required: true, location: "uri", location_name: "VoiceConnectorId"))
    GetSpeakerSearchTaskRequest.add_member(:speaker_search_task_id, Shapes::ShapeRef.new(shape: NonEmptyString256, required: true, location: "uri", location_name: "SpeakerSearchTaskId"))
    GetSpeakerSearchTaskRequest.struct_class = Types::GetSpeakerSearchTaskRequest

    GetSpeakerSearchTaskResponse.add_member(:speaker_search_task, Shapes::ShapeRef.new(shape: SpeakerSearchTask, location_name: "SpeakerSearchTask"))
    GetSpeakerSearchTaskResponse.struct_class = Types::GetSpeakerSearchTaskResponse

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

    GetVoiceProfileDomainRequest.add_member(:voice_profile_domain_id, Shapes::ShapeRef.new(shape: NonEmptyString256, required: true, location: "uri", location_name: "VoiceProfileDomainId"))
    GetVoiceProfileDomainRequest.struct_class = Types::GetVoiceProfileDomainRequest

    GetVoiceProfileDomainResponse.add_member(:voice_profile_domain, Shapes::ShapeRef.new(shape: VoiceProfileDomain, location_name: "VoiceProfileDomain"))
    GetVoiceProfileDomainResponse.struct_class = Types::GetVoiceProfileDomainResponse

    GetVoiceProfileRequest.add_member(:voice_profile_id, Shapes::ShapeRef.new(shape: NonEmptyString256, required: true, location: "uri", location_name: "VoiceProfileId"))
    GetVoiceProfileRequest.struct_class = Types::GetVoiceProfileRequest

    GetVoiceProfileResponse.add_member(:voice_profile, Shapes::ShapeRef.new(shape: VoiceProfile, location_name: "VoiceProfile"))
    GetVoiceProfileResponse.struct_class = Types::GetVoiceProfileResponse

    GetVoiceToneAnalysisTaskRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString128, required: true, location: "uri", location_name: "VoiceConnectorId"))
    GetVoiceToneAnalysisTaskRequest.add_member(:voice_tone_analysis_task_id, Shapes::ShapeRef.new(shape: NonEmptyString256, required: true, location: "uri", location_name: "VoiceToneAnalysisTaskId"))
    GetVoiceToneAnalysisTaskRequest.add_member(:is_caller, Shapes::ShapeRef.new(shape: Boolean, required: true, location: "querystring", location_name: "isCaller"))
    GetVoiceToneAnalysisTaskRequest.struct_class = Types::GetVoiceToneAnalysisTaskRequest

    GetVoiceToneAnalysisTaskResponse.add_member(:voice_tone_analysis_task, Shapes::ShapeRef.new(shape: VoiceToneAnalysisTask, location_name: "VoiceToneAnalysisTask"))
    GetVoiceToneAnalysisTaskResponse.struct_class = Types::GetVoiceToneAnalysisTaskResponse

    GoneException.struct_class = Types::GoneException

    ListAvailableVoiceConnectorRegionsResponse.add_member(:voice_connector_regions, Shapes::ShapeRef.new(shape: VoiceConnectorAwsRegionList, location_name: "VoiceConnectorRegions"))
    ListAvailableVoiceConnectorRegionsResponse.struct_class = Types::ListAvailableVoiceConnectorRegionsResponse

    ListPhoneNumberOrdersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListPhoneNumberOrdersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultMax, location: "querystring", location_name: "max-results"))
    ListPhoneNumberOrdersRequest.struct_class = Types::ListPhoneNumberOrdersRequest

    ListPhoneNumberOrdersResponse.add_member(:phone_number_orders, Shapes::ShapeRef.new(shape: PhoneNumberOrderList, location_name: "PhoneNumberOrders"))
    ListPhoneNumberOrdersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListPhoneNumberOrdersResponse.struct_class = Types::ListPhoneNumberOrdersResponse

    ListPhoneNumbersRequest.add_member(:status, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "status"))
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

    ListVoiceProfileDomainsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListVoiceProfileDomainsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultMax, location: "querystring", location_name: "max-results"))
    ListVoiceProfileDomainsRequest.struct_class = Types::ListVoiceProfileDomainsRequest

    ListVoiceProfileDomainsResponse.add_member(:voice_profile_domains, Shapes::ShapeRef.new(shape: VoiceProfileDomainSummaryList, location_name: "VoiceProfileDomains"))
    ListVoiceProfileDomainsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListVoiceProfileDomainsResponse.struct_class = Types::ListVoiceProfileDomainsResponse

    ListVoiceProfilesRequest.add_member(:voice_profile_domain_id, Shapes::ShapeRef.new(shape: NonEmptyString256, required: true, location: "querystring", location_name: "voice-profile-domain-id"))
    ListVoiceProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListVoiceProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultMax, location: "querystring", location_name: "max-results"))
    ListVoiceProfilesRequest.struct_class = Types::ListVoiceProfilesRequest

    ListVoiceProfilesResponse.add_member(:voice_profiles, Shapes::ShapeRef.new(shape: VoiceProfileSummaryList, location_name: "VoiceProfiles"))
    ListVoiceProfilesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListVoiceProfilesResponse.struct_class = Types::ListVoiceProfilesResponse

    LoggingConfiguration.add_member(:enable_sip_logs, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableSIPLogs"))
    LoggingConfiguration.add_member(:enable_media_metric_logs, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableMediaMetricLogs"))
    LoggingConfiguration.struct_class = Types::LoggingConfiguration

    MediaInsightsConfiguration.add_member(:disabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Disabled"))
    MediaInsightsConfiguration.add_member(:configuration_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ConfigurationArn"))
    MediaInsightsConfiguration.struct_class = Types::MediaInsightsConfiguration

    NonEmptyStringList.member = Shapes::ShapeRef.new(shape: String)

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

    PhoneNumber.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: "PhoneNumberId"))
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
    PhoneNumber.add_member(:order_id, Shapes::ShapeRef.new(shape: GuidString, location_name: "OrderId"))
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

    PhoneNumberError.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: "PhoneNumberId"))
    PhoneNumberError.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    PhoneNumberError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    PhoneNumberError.struct_class = Types::PhoneNumberError

    PhoneNumberErrorList.member = Shapes::ShapeRef.new(shape: PhoneNumberError)

    PhoneNumberList.member = Shapes::ShapeRef.new(shape: PhoneNumber)

    PhoneNumberOrder.add_member(:phone_number_order_id, Shapes::ShapeRef.new(shape: GuidString, location_name: "PhoneNumberOrderId"))
    PhoneNumberOrder.add_member(:product_type, Shapes::ShapeRef.new(shape: PhoneNumberProductType, location_name: "ProductType"))
    PhoneNumberOrder.add_member(:status, Shapes::ShapeRef.new(shape: PhoneNumberOrderStatus, location_name: "Status"))
    PhoneNumberOrder.add_member(:order_type, Shapes::ShapeRef.new(shape: PhoneNumberOrderType, location_name: "OrderType"))
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

    PutSipMediaApplicationAlexaSkillConfigurationRequest.add_member(:sip_media_application_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "sipMediaApplicationId"))
    PutSipMediaApplicationAlexaSkillConfigurationRequest.add_member(:sip_media_application_alexa_skill_configuration, Shapes::ShapeRef.new(shape: SipMediaApplicationAlexaSkillConfiguration, location_name: "SipMediaApplicationAlexaSkillConfiguration"))
    PutSipMediaApplicationAlexaSkillConfigurationRequest.struct_class = Types::PutSipMediaApplicationAlexaSkillConfigurationRequest

    PutSipMediaApplicationAlexaSkillConfigurationResponse.add_member(:sip_media_application_alexa_skill_configuration, Shapes::ShapeRef.new(shape: SipMediaApplicationAlexaSkillConfiguration, location_name: "SipMediaApplicationAlexaSkillConfiguration"))
    PutSipMediaApplicationAlexaSkillConfigurationResponse.struct_class = Types::PutSipMediaApplicationAlexaSkillConfigurationResponse

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

    ResourceLimitExceededException.struct_class = Types::ResourceLimitExceededException

    RestorePhoneNumberRequest.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, required: true, location: "uri", location_name: "phoneNumberId"))
    RestorePhoneNumberRequest.struct_class = Types::RestorePhoneNumberRequest

    RestorePhoneNumberResponse.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "PhoneNumber"))
    RestorePhoneNumberResponse.struct_class = Types::RestorePhoneNumberResponse

    SMACreateCallArgumentsMap.key = Shapes::ShapeRef.new(shape: SensitiveString)
    SMACreateCallArgumentsMap.value = Shapes::ShapeRef.new(shape: SensitiveString)

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

    SensitiveStringList.member = Shapes::ShapeRef.new(shape: SensitiveString)

    ServerSideEncryptionConfiguration.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "KmsKeyArn"))
    ServerSideEncryptionConfiguration.struct_class = Types::ServerSideEncryptionConfiguration

    ServiceFailureException.struct_class = Types::ServiceFailureException

    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    SipHeadersMap.key = Shapes::ShapeRef.new(shape: SensitiveString)
    SipHeadersMap.value = Shapes::ShapeRef.new(shape: SensitiveString)

    SipMediaApplication.add_member(:sip_media_application_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SipMediaApplicationId"))
    SipMediaApplication.add_member(:aws_region, Shapes::ShapeRef.new(shape: String, location_name: "AwsRegion"))
    SipMediaApplication.add_member(:name, Shapes::ShapeRef.new(shape: SipMediaApplicationName, location_name: "Name"))
    SipMediaApplication.add_member(:endpoints, Shapes::ShapeRef.new(shape: SipMediaApplicationEndpointList, location_name: "Endpoints"))
    SipMediaApplication.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    SipMediaApplication.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "UpdatedTimestamp"))
    SipMediaApplication.add_member(:sip_media_application_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SipMediaApplicationArn"))
    SipMediaApplication.struct_class = Types::SipMediaApplication

    SipMediaApplicationAlexaSkillConfiguration.add_member(:alexa_skill_status, Shapes::ShapeRef.new(shape: AlexaSkillStatus, required: true, location_name: "AlexaSkillStatus"))
    SipMediaApplicationAlexaSkillConfiguration.add_member(:alexa_skill_ids, Shapes::ShapeRef.new(shape: AlexaSkillIdList, required: true, location_name: "AlexaSkillIds"))
    SipMediaApplicationAlexaSkillConfiguration.struct_class = Types::SipMediaApplicationAlexaSkillConfiguration

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

    SpeakerSearchDetails.add_member(:results, Shapes::ShapeRef.new(shape: SpeakerSearchResultList, location_name: "Results"))
    SpeakerSearchDetails.add_member(:voiceprint_generation_status, Shapes::ShapeRef.new(shape: NonEmptyString256, location_name: "VoiceprintGenerationStatus"))
    SpeakerSearchDetails.struct_class = Types::SpeakerSearchDetails

    SpeakerSearchResult.add_member(:confidence_score, Shapes::ShapeRef.new(shape: ConfidenceScore, location_name: "ConfidenceScore"))
    SpeakerSearchResult.add_member(:voice_profile_id, Shapes::ShapeRef.new(shape: NonEmptyString256, location_name: "VoiceProfileId"))
    SpeakerSearchResult.struct_class = Types::SpeakerSearchResult

    SpeakerSearchResultList.member = Shapes::ShapeRef.new(shape: SpeakerSearchResult)

    SpeakerSearchTask.add_member(:speaker_search_task_id, Shapes::ShapeRef.new(shape: NonEmptyString256, location_name: "SpeakerSearchTaskId"))
    SpeakerSearchTask.add_member(:speaker_search_task_status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SpeakerSearchTaskStatus"))
    SpeakerSearchTask.add_member(:call_details, Shapes::ShapeRef.new(shape: CallDetails, location_name: "CallDetails"))
    SpeakerSearchTask.add_member(:speaker_search_details, Shapes::ShapeRef.new(shape: SpeakerSearchDetails, location_name: "SpeakerSearchDetails"))
    SpeakerSearchTask.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    SpeakerSearchTask.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "UpdatedTimestamp"))
    SpeakerSearchTask.add_member(:started_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "StartedTimestamp"))
    SpeakerSearchTask.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "StatusMessage"))
    SpeakerSearchTask.struct_class = Types::SpeakerSearchTask

    StartSpeakerSearchTaskRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString128, required: true, location: "uri", location_name: "VoiceConnectorId"))
    StartSpeakerSearchTaskRequest.add_member(:transaction_id, Shapes::ShapeRef.new(shape: NonEmptyString256, required: true, location_name: "TransactionId"))
    StartSpeakerSearchTaskRequest.add_member(:voice_profile_domain_id, Shapes::ShapeRef.new(shape: NonEmptyString256, required: true, location_name: "VoiceProfileDomainId"))
    StartSpeakerSearchTaskRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestId, location_name: "ClientRequestToken"))
    StartSpeakerSearchTaskRequest.add_member(:call_leg, Shapes::ShapeRef.new(shape: CallLegType, location_name: "CallLeg"))
    StartSpeakerSearchTaskRequest.struct_class = Types::StartSpeakerSearchTaskRequest

    StartSpeakerSearchTaskResponse.add_member(:speaker_search_task, Shapes::ShapeRef.new(shape: SpeakerSearchTask, location_name: "SpeakerSearchTask"))
    StartSpeakerSearchTaskResponse.struct_class = Types::StartSpeakerSearchTaskResponse

    StartVoiceToneAnalysisTaskRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString128, required: true, location: "uri", location_name: "VoiceConnectorId"))
    StartVoiceToneAnalysisTaskRequest.add_member(:transaction_id, Shapes::ShapeRef.new(shape: NonEmptyString256, required: true, location_name: "TransactionId"))
    StartVoiceToneAnalysisTaskRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, required: true, location_name: "LanguageCode"))
    StartVoiceToneAnalysisTaskRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestId, location_name: "ClientRequestToken"))
    StartVoiceToneAnalysisTaskRequest.struct_class = Types::StartVoiceToneAnalysisTaskRequest

    StartVoiceToneAnalysisTaskResponse.add_member(:voice_tone_analysis_task, Shapes::ShapeRef.new(shape: VoiceToneAnalysisTask, location_name: "VoiceToneAnalysisTask"))
    StartVoiceToneAnalysisTaskResponse.struct_class = Types::StartVoiceToneAnalysisTaskResponse

    StopSpeakerSearchTaskRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString128, required: true, location: "uri", location_name: "VoiceConnectorId"))
    StopSpeakerSearchTaskRequest.add_member(:speaker_search_task_id, Shapes::ShapeRef.new(shape: NonEmptyString256, required: true, location: "uri", location_name: "SpeakerSearchTaskId"))
    StopSpeakerSearchTaskRequest.struct_class = Types::StopSpeakerSearchTaskRequest

    StopVoiceToneAnalysisTaskRequest.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString128, required: true, location: "uri", location_name: "VoiceConnectorId"))
    StopVoiceToneAnalysisTaskRequest.add_member(:voice_tone_analysis_task_id, Shapes::ShapeRef.new(shape: NonEmptyString256, required: true, location: "uri", location_name: "VoiceToneAnalysisTaskId"))
    StopVoiceToneAnalysisTaskRequest.struct_class = Types::StopVoiceToneAnalysisTaskRequest

    StreamingConfiguration.add_member(:data_retention_in_hours, Shapes::ShapeRef.new(shape: DataRetentionInHours, required: true, location_name: "DataRetentionInHours"))
    StreamingConfiguration.add_member(:disabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "Disabled"))
    StreamingConfiguration.add_member(:streaming_notification_targets, Shapes::ShapeRef.new(shape: StreamingNotificationTargetList, location_name: "StreamingNotificationTargets"))
    StreamingConfiguration.add_member(:media_insights_configuration, Shapes::ShapeRef.new(shape: MediaInsightsConfiguration, location_name: "MediaInsightsConfiguration"))
    StreamingConfiguration.struct_class = Types::StreamingConfiguration

    StreamingNotificationTarget.add_member(:notification_target, Shapes::ShapeRef.new(shape: NotificationTarget, location_name: "NotificationTarget"))
    StreamingNotificationTarget.struct_class = Types::StreamingNotificationTarget

    StreamingNotificationTargetList.member = Shapes::ShapeRef.new(shape: StreamingNotificationTarget)

    StringList.member = Shapes::ShapeRef.new(shape: String)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceARN"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    Termination.add_member(:cps_limit, Shapes::ShapeRef.new(shape: CpsLimit, location_name: "CpsLimit"))
    Termination.add_member(:default_phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: "DefaultPhoneNumber"))
    Termination.add_member(:calling_regions, Shapes::ShapeRef.new(shape: CallingRegionList, location_name: "CallingRegions"))
    Termination.add_member(:cidr_allowed_list, Shapes::ShapeRef.new(shape: StringList, location_name: "CidrAllowedList"))
    Termination.add_member(:disabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Disabled"))
    Termination.struct_class = Types::Termination

    TerminationHealth.add_member(:timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "Timestamp"))
    TerminationHealth.add_member(:source, Shapes::ShapeRef.new(shape: String, location_name: "Source"))
    TerminationHealth.struct_class = Types::TerminationHealth

    ThrottledClientException.struct_class = Types::ThrottledClientException

    UnauthorizedClientException.struct_class = Types::UnauthorizedClientException

    UnprocessableEntityException.struct_class = Types::UnprocessableEntityException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceARN"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateGlobalSettingsRequest.add_member(:voice_connector, Shapes::ShapeRef.new(shape: VoiceConnectorSettings, location_name: "VoiceConnector"))
    UpdateGlobalSettingsRequest.struct_class = Types::UpdateGlobalSettingsRequest

    UpdatePhoneNumberRequest.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, required: true, location: "uri", location_name: "phoneNumberId"))
    UpdatePhoneNumberRequest.add_member(:product_type, Shapes::ShapeRef.new(shape: PhoneNumberProductType, location_name: "ProductType"))
    UpdatePhoneNumberRequest.add_member(:calling_name, Shapes::ShapeRef.new(shape: CallingName, location_name: "CallingName"))
    UpdatePhoneNumberRequest.struct_class = Types::UpdatePhoneNumberRequest

    UpdatePhoneNumberRequestItem.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, required: true, location_name: "PhoneNumberId"))
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

    UpdateVoiceProfileDomainRequest.add_member(:voice_profile_domain_id, Shapes::ShapeRef.new(shape: NonEmptyString256, required: true, location: "uri", location_name: "VoiceProfileDomainId"))
    UpdateVoiceProfileDomainRequest.add_member(:name, Shapes::ShapeRef.new(shape: VoiceProfileDomainName, location_name: "Name"))
    UpdateVoiceProfileDomainRequest.add_member(:description, Shapes::ShapeRef.new(shape: VoiceProfileDomainDescription, location_name: "Description"))
    UpdateVoiceProfileDomainRequest.struct_class = Types::UpdateVoiceProfileDomainRequest

    UpdateVoiceProfileDomainResponse.add_member(:voice_profile_domain, Shapes::ShapeRef.new(shape: VoiceProfileDomain, location_name: "VoiceProfileDomain"))
    UpdateVoiceProfileDomainResponse.struct_class = Types::UpdateVoiceProfileDomainResponse

    UpdateVoiceProfileRequest.add_member(:voice_profile_id, Shapes::ShapeRef.new(shape: NonEmptyString256, required: true, location: "uri", location_name: "VoiceProfileId"))
    UpdateVoiceProfileRequest.add_member(:speaker_search_task_id, Shapes::ShapeRef.new(shape: NonEmptyString256, required: true, location_name: "SpeakerSearchTaskId"))
    UpdateVoiceProfileRequest.struct_class = Types::UpdateVoiceProfileRequest

    UpdateVoiceProfileResponse.add_member(:voice_profile, Shapes::ShapeRef.new(shape: VoiceProfile, location_name: "VoiceProfile"))
    UpdateVoiceProfileResponse.struct_class = Types::UpdateVoiceProfileResponse

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

    VoiceConnector.add_member(:voice_connector_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VoiceConnectorId"))
    VoiceConnector.add_member(:aws_region, Shapes::ShapeRef.new(shape: VoiceConnectorAwsRegion, location_name: "AwsRegion"))
    VoiceConnector.add_member(:name, Shapes::ShapeRef.new(shape: VoiceConnectorName, location_name: "Name"))
    VoiceConnector.add_member(:outbound_host_name, Shapes::ShapeRef.new(shape: String, location_name: "OutboundHostName"))
    VoiceConnector.add_member(:require_encryption, Shapes::ShapeRef.new(shape: Boolean, location_name: "RequireEncryption"))
    VoiceConnector.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    VoiceConnector.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "UpdatedTimestamp"))
    VoiceConnector.add_member(:voice_connector_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VoiceConnectorArn"))
    VoiceConnector.struct_class = Types::VoiceConnector

    VoiceConnectorAwsRegionList.member = Shapes::ShapeRef.new(shape: VoiceConnectorAwsRegion)

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

    VoiceConnectorSettings.add_member(:cdr_bucket, Shapes::ShapeRef.new(shape: String, location_name: "CdrBucket"))
    VoiceConnectorSettings.struct_class = Types::VoiceConnectorSettings

    VoiceProfile.add_member(:voice_profile_id, Shapes::ShapeRef.new(shape: NonEmptyString256, location_name: "VoiceProfileId"))
    VoiceProfile.add_member(:voice_profile_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "VoiceProfileArn"))
    VoiceProfile.add_member(:voice_profile_domain_id, Shapes::ShapeRef.new(shape: NonEmptyString256, location_name: "VoiceProfileDomainId"))
    VoiceProfile.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    VoiceProfile.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "UpdatedTimestamp"))
    VoiceProfile.add_member(:expiration_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "ExpirationTimestamp"))
    VoiceProfile.struct_class = Types::VoiceProfile

    VoiceProfileDomain.add_member(:voice_profile_domain_id, Shapes::ShapeRef.new(shape: NonEmptyString256, location_name: "VoiceProfileDomainId"))
    VoiceProfileDomain.add_member(:voice_profile_domain_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "VoiceProfileDomainArn"))
    VoiceProfileDomain.add_member(:name, Shapes::ShapeRef.new(shape: VoiceProfileDomainName, location_name: "Name"))
    VoiceProfileDomain.add_member(:description, Shapes::ShapeRef.new(shape: VoiceProfileDomainDescription, location_name: "Description"))
    VoiceProfileDomain.add_member(:server_side_encryption_configuration, Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: "ServerSideEncryptionConfiguration"))
    VoiceProfileDomain.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    VoiceProfileDomain.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "UpdatedTimestamp"))
    VoiceProfileDomain.struct_class = Types::VoiceProfileDomain

    VoiceProfileDomainSummary.add_member(:voice_profile_domain_id, Shapes::ShapeRef.new(shape: NonEmptyString256, location_name: "VoiceProfileDomainId"))
    VoiceProfileDomainSummary.add_member(:voice_profile_domain_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "VoiceProfileDomainArn"))
    VoiceProfileDomainSummary.add_member(:name, Shapes::ShapeRef.new(shape: VoiceProfileDomainName, location_name: "Name"))
    VoiceProfileDomainSummary.add_member(:description, Shapes::ShapeRef.new(shape: VoiceProfileDomainDescription, location_name: "Description"))
    VoiceProfileDomainSummary.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    VoiceProfileDomainSummary.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "UpdatedTimestamp"))
    VoiceProfileDomainSummary.struct_class = Types::VoiceProfileDomainSummary

    VoiceProfileDomainSummaryList.member = Shapes::ShapeRef.new(shape: VoiceProfileDomainSummary)

    VoiceProfileSummary.add_member(:voice_profile_id, Shapes::ShapeRef.new(shape: NonEmptyString256, location_name: "VoiceProfileId"))
    VoiceProfileSummary.add_member(:voice_profile_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "VoiceProfileArn"))
    VoiceProfileSummary.add_member(:voice_profile_domain_id, Shapes::ShapeRef.new(shape: NonEmptyString256, location_name: "VoiceProfileDomainId"))
    VoiceProfileSummary.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    VoiceProfileSummary.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "UpdatedTimestamp"))
    VoiceProfileSummary.add_member(:expiration_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "ExpirationTimestamp"))
    VoiceProfileSummary.struct_class = Types::VoiceProfileSummary

    VoiceProfileSummaryList.member = Shapes::ShapeRef.new(shape: VoiceProfileSummary)

    VoiceToneAnalysisTask.add_member(:voice_tone_analysis_task_id, Shapes::ShapeRef.new(shape: NonEmptyString256, location_name: "VoiceToneAnalysisTaskId"))
    VoiceToneAnalysisTask.add_member(:voice_tone_analysis_task_status, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "VoiceToneAnalysisTaskStatus"))
    VoiceToneAnalysisTask.add_member(:call_details, Shapes::ShapeRef.new(shape: CallDetails, location_name: "CallDetails"))
    VoiceToneAnalysisTask.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    VoiceToneAnalysisTask.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "UpdatedTimestamp"))
    VoiceToneAnalysisTask.add_member(:started_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "StartedTimestamp"))
    VoiceToneAnalysisTask.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "StatusMessage"))
    VoiceToneAnalysisTask.struct_class = Types::VoiceToneAnalysisTask


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-08-03"

      api.metadata = {
        "apiVersion" => "2022-08-03",
        "endpointPrefix" => "voice-chime",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon Chime SDK Voice",
        "serviceId" => "Chime SDK Voice",
        "signatureVersion" => "v4",
        "signingName" => "chime",
        "uid" => "chime-sdk-voice-2022-08-03",
      }

      api.add_operation(:associate_phone_numbers_with_voice_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociatePhoneNumbersWithVoiceConnector"
        o.http_method = "POST"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}?operation=associate-phone-numbers"
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

      api.add_operation(:create_sip_media_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSipMediaApplication"
        o.http_method = "POST"
        o.http_request_uri = "/sip-media-applications"
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

      api.add_operation(:create_voice_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVoiceConnector"
        o.http_method = "POST"
        o.http_request_uri = "/voice-connectors"
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

      api.add_operation(:create_voice_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVoiceProfile"
        o.http_method = "POST"
        o.http_request_uri = "/voice-profiles"
        o.input = Shapes::ShapeRef.new(shape: CreateVoiceProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateVoiceProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: GoneException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_voice_profile_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVoiceProfileDomain"
        o.http_method = "POST"
        o.http_request_uri = "/voice-profile-domains"
        o.input = Shapes::ShapeRef.new(shape: CreateVoiceProfileDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateVoiceProfileDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
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

      api.add_operation(:delete_sip_media_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSipMediaApplication"
        o.http_method = "DELETE"
        o.http_request_uri = "/sip-media-applications/{sipMediaApplicationId}"
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

      api.add_operation(:delete_voice_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVoiceProfile"
        o.http_method = "DELETE"
        o.http_request_uri = "/voice-profiles/{VoiceProfileId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteVoiceProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_voice_profile_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVoiceProfileDomain"
        o.http_method = "DELETE"
        o.http_request_uri = "/voice-profile-domains/{VoiceProfileDomainId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteVoiceProfileDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:disassociate_phone_numbers_from_voice_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociatePhoneNumbersFromVoiceConnector"
        o.http_method = "POST"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}?operation=disassociate-phone-numbers"
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

      api.add_operation(:get_sip_media_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSipMediaApplication"
        o.http_method = "GET"
        o.http_request_uri = "/sip-media-applications/{sipMediaApplicationId}"
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

      api.add_operation(:get_sip_media_application_alexa_skill_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSipMediaApplicationAlexaSkillConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/sip-media-applications/{sipMediaApplicationId}/alexa-skill-configuration"
        o.input = Shapes::ShapeRef.new(shape: GetSipMediaApplicationAlexaSkillConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSipMediaApplicationAlexaSkillConfigurationResponse)
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

      api.add_operation(:get_speaker_search_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSpeakerSearchTask"
        o.http_method = "GET"
        o.http_request_uri = "/voice-connectors/{VoiceConnectorId}/speaker-search-tasks/{SpeakerSearchTaskId}"
        o.input = Shapes::ShapeRef.new(shape: GetSpeakerSearchTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSpeakerSearchTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:get_voice_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVoiceConnector"
        o.http_method = "GET"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}"
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

      api.add_operation(:get_voice_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVoiceProfile"
        o.http_method = "GET"
        o.http_request_uri = "/voice-profiles/{VoiceProfileId}"
        o.input = Shapes::ShapeRef.new(shape: GetVoiceProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: GetVoiceProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_voice_profile_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVoiceProfileDomain"
        o.http_method = "GET"
        o.http_request_uri = "/voice-profile-domains/{VoiceProfileDomainId}"
        o.input = Shapes::ShapeRef.new(shape: GetVoiceProfileDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: GetVoiceProfileDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_voice_tone_analysis_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVoiceToneAnalysisTask"
        o.http_method = "GET"
        o.http_request_uri = "/voice-connectors/{VoiceConnectorId}/voice-tone-analysis-tasks/{VoiceToneAnalysisTaskId}"
        o.input = Shapes::ShapeRef.new(shape: GetVoiceToneAnalysisTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: GetVoiceToneAnalysisTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:list_available_voice_connector_regions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAvailableVoiceConnectorRegions"
        o.http_method = "GET"
        o.http_request_uri = "/voice-connector-regions"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: ListAvailableVoiceConnectorRegionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
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

      api.add_operation(:list_sip_media_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSipMediaApplications"
        o.http_method = "GET"
        o.http_request_uri = "/sip-media-applications"
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
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:list_voice_connector_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVoiceConnectorGroups"
        o.http_method = "GET"
        o.http_request_uri = "/voice-connector-groups"
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

      api.add_operation(:list_voice_profile_domains, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVoiceProfileDomains"
        o.http_method = "GET"
        o.http_request_uri = "/voice-profile-domains"
        o.input = Shapes::ShapeRef.new(shape: ListVoiceProfileDomainsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListVoiceProfileDomainsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
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

      api.add_operation(:list_voice_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVoiceProfiles"
        o.http_method = "GET"
        o.http_request_uri = "/voice-profiles"
        o.input = Shapes::ShapeRef.new(shape: ListVoiceProfilesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListVoiceProfilesResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
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

      api.add_operation(:put_sip_media_application_alexa_skill_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutSipMediaApplicationAlexaSkillConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/sip-media-applications/{sipMediaApplicationId}/alexa-skill-configuration"
        o.input = Shapes::ShapeRef.new(shape: PutSipMediaApplicationAlexaSkillConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutSipMediaApplicationAlexaSkillConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:put_sip_media_application_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutSipMediaApplicationLoggingConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/sip-media-applications/{sipMediaApplicationId}/logging-configuration"
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

      api.add_operation(:start_speaker_search_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartSpeakerSearchTask"
        o.http_method = "POST"
        o.http_request_uri = "/voice-connectors/{VoiceConnectorId}/speaker-search-tasks"
        o.input = Shapes::ShapeRef.new(shape: StartSpeakerSearchTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: StartSpeakerSearchTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: GoneException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:start_voice_tone_analysis_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartVoiceToneAnalysisTask"
        o.http_method = "POST"
        o.http_request_uri = "/voice-connectors/{VoiceConnectorId}/voice-tone-analysis-tasks"
        o.input = Shapes::ShapeRef.new(shape: StartVoiceToneAnalysisTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: StartVoiceToneAnalysisTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: GoneException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:stop_speaker_search_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopSpeakerSearchTask"
        o.http_method = "POST"
        o.http_request_uri = "/voice-connectors/{VoiceConnectorId}/speaker-search-tasks/{SpeakerSearchTaskId}?operation=stop"
        o.input = Shapes::ShapeRef.new(shape: StopSpeakerSearchTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:stop_voice_tone_analysis_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopVoiceToneAnalysisTask"
        o.http_method = "POST"
        o.http_request_uri = "/voice-connectors/{VoiceConnectorId}/voice-tone-analysis-tasks/{VoiceToneAnalysisTaskId}?operation=stop"
        o.input = Shapes::ShapeRef.new(shape: StopVoiceToneAnalysisTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags?operation=tag-resource"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags?operation=untag-resource"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
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

      api.add_operation(:update_sip_media_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSipMediaApplication"
        o.http_method = "PUT"
        o.http_request_uri = "/sip-media-applications/{sipMediaApplicationId}"
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

      api.add_operation(:update_voice_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateVoiceConnector"
        o.http_method = "PUT"
        o.http_request_uri = "/voice-connectors/{voiceConnectorId}"
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

      api.add_operation(:update_voice_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateVoiceProfile"
        o.http_method = "PUT"
        o.http_request_uri = "/voice-profiles/{VoiceProfileId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateVoiceProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateVoiceProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: GoneException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_voice_profile_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateVoiceProfileDomain"
        o.http_method = "PUT"
        o.http_request_uri = "/voice-profile-domains/{VoiceProfileDomainId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateVoiceProfileDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateVoiceProfileDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:validate_e911_address, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ValidateE911Address"
        o.http_method = "POST"
        o.http_request_uri = "/emergency-calling/address"
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
