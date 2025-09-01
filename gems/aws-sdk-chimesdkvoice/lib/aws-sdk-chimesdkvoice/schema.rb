# frozen_string_literal: true

# This is generated code!

module Aws::ChimeSDKVoice
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Address = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#Address', name: 'Address')
    AlexaSkillId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkvoice#AlexaSkillId', name: 'AlexaSkillId', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^amzn1\\.application-oa2-client\\.[0-9a-fA-F]{32}$", "smithy.api#sensitive" => {}})
    AlexaSkillIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#AlexaSkillIdList', name: 'AlexaSkillIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    AlexaSkillStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkvoice#AlexaSkillStatus', name: 'AlexaSkillStatus')
    Alpha2CountryCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkvoice#Alpha2CountryCode', name: 'Alpha2CountryCode', traits: {"smithy.api#pattern" => "^[A-Z]{2}$"})
    AreaCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkvoice#AreaCode', name: 'AreaCode', traits: {"smithy.api#pattern" => "^$|^[0-9]{3,3}$"})
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkvoice#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn[\\/\\:\\-\\_\\.a-zA-Z0-9]+$", "smithy.api#sensitive" => {}})
    AssociatePhoneNumbersWithVoiceConnectorGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#AssociatePhoneNumbersWithVoiceConnectorGroupRequest', name: 'AssociatePhoneNumbersWithVoiceConnectorGroupRequest')
    AssociatePhoneNumbersWithVoiceConnectorGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#AssociatePhoneNumbersWithVoiceConnectorGroupResponse', name: 'AssociatePhoneNumbersWithVoiceConnectorGroupResponse')
    AssociatePhoneNumbersWithVoiceConnectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#AssociatePhoneNumbersWithVoiceConnectorRequest', name: 'AssociatePhoneNumbersWithVoiceConnectorRequest')
    AssociatePhoneNumbersWithVoiceConnectorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#AssociatePhoneNumbersWithVoiceConnectorResponse', name: 'AssociatePhoneNumbersWithVoiceConnectorResponse')
    BadRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#BadRequestException', name: 'BadRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BatchDeletePhoneNumberRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#BatchDeletePhoneNumberRequest', name: 'BatchDeletePhoneNumberRequest')
    BatchDeletePhoneNumberResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#BatchDeletePhoneNumberResponse', name: 'BatchDeletePhoneNumberResponse')
    BatchUpdatePhoneNumberRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#BatchUpdatePhoneNumberRequest', name: 'BatchUpdatePhoneNumberRequest')
    BatchUpdatePhoneNumberResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#BatchUpdatePhoneNumberResponse', name: 'BatchUpdatePhoneNumberResponse')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.chimesdkvoice#Boolean', name: 'Boolean')
    CallDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#CallDetails', name: 'CallDetails')
    CallLegType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkvoice#CallLegType', name: 'CallLegType')
    CallingName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkvoice#CallingName', name: 'CallingName', traits: {"smithy.api#pattern" => "^$|^[a-zA-Z0-9 ]{2,15}$", "smithy.api#sensitive" => {}})
    CallingNameStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkvoice#CallingNameStatus', name: 'CallingNameStatus')
    CallingRegion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkvoice#CallingRegion', name: 'CallingRegion')
    CallingRegionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#CallingRegionList', name: 'CallingRegionList')
    CandidateAddress = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#CandidateAddress', name: 'CandidateAddress')
    CandidateAddressList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#CandidateAddressList', name: 'CandidateAddressList')
    Capability = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkvoice#Capability', name: 'Capability')
    CapabilityList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#CapabilityList', name: 'CapabilityList')
    ClientRequestId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkvoice#ClientRequestId', name: 'ClientRequestId', traits: {"smithy.api#pattern" => "^[-_a-zA-Z0-9]*${2,64}$"})
    ConfidenceScore = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.chimesdkvoice#ConfidenceScore', name: 'ConfidenceScore', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1}})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContactCenterSystemType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkvoice#ContactCenterSystemType', name: 'ContactCenterSystemType')
    ContactCenterSystemTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#ContactCenterSystemTypeList', name: 'ContactCenterSystemTypeList')
    Country = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkvoice#Country', name: 'Country', traits: {"smithy.api#pattern" => "^$|^[A-Z]{2,2}$"})
    CountryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#CountryList', name: 'CountryList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    CpsLimit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chimesdkvoice#CpsLimit', name: 'CpsLimit', traits: {"smithy.api#range" => {"min" => 1}})
    CreatePhoneNumberOrderRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#CreatePhoneNumberOrderRequest', name: 'CreatePhoneNumberOrderRequest')
    CreatePhoneNumberOrderResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#CreatePhoneNumberOrderResponse', name: 'CreatePhoneNumberOrderResponse')
    CreateProxySessionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#CreateProxySessionRequest', name: 'CreateProxySessionRequest')
    CreateProxySessionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#CreateProxySessionResponse', name: 'CreateProxySessionResponse')
    CreateSipMediaApplicationCallRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#CreateSipMediaApplicationCallRequest', name: 'CreateSipMediaApplicationCallRequest')
    CreateSipMediaApplicationCallResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#CreateSipMediaApplicationCallResponse', name: 'CreateSipMediaApplicationCallResponse')
    CreateSipMediaApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#CreateSipMediaApplicationRequest', name: 'CreateSipMediaApplicationRequest')
    CreateSipMediaApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#CreateSipMediaApplicationResponse', name: 'CreateSipMediaApplicationResponse')
    CreateSipRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#CreateSipRuleRequest', name: 'CreateSipRuleRequest')
    CreateSipRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#CreateSipRuleResponse', name: 'CreateSipRuleResponse')
    CreateVoiceConnectorGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#CreateVoiceConnectorGroupRequest', name: 'CreateVoiceConnectorGroupRequest')
    CreateVoiceConnectorGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#CreateVoiceConnectorGroupResponse', name: 'CreateVoiceConnectorGroupResponse')
    CreateVoiceConnectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#CreateVoiceConnectorRequest', name: 'CreateVoiceConnectorRequest')
    CreateVoiceConnectorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#CreateVoiceConnectorResponse', name: 'CreateVoiceConnectorResponse')
    CreateVoiceProfileDomainRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#CreateVoiceProfileDomainRequest', name: 'CreateVoiceProfileDomainRequest')
    CreateVoiceProfileDomainResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#CreateVoiceProfileDomainResponse', name: 'CreateVoiceProfileDomainResponse')
    CreateVoiceProfileRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#CreateVoiceProfileRequest', name: 'CreateVoiceProfileRequest')
    CreateVoiceProfileResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#CreateVoiceProfileResponse', name: 'CreateVoiceProfileResponse')
    Credential = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#Credential', name: 'Credential')
    CredentialList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#CredentialList', name: 'CredentialList')
    DNISEmergencyCallingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#DNISEmergencyCallingConfiguration', name: 'DNISEmergencyCallingConfiguration')
    DNISEmergencyCallingConfigurationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#DNISEmergencyCallingConfigurationList', name: 'DNISEmergencyCallingConfigurationList')
    DataRetentionInHours = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chimesdkvoice#DataRetentionInHours', name: 'DataRetentionInHours', traits: {"smithy.api#range" => {"min" => 0}})
    DeletePhoneNumberRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#DeletePhoneNumberRequest', name: 'DeletePhoneNumberRequest')
    DeleteProxySessionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#DeleteProxySessionRequest', name: 'DeleteProxySessionRequest')
    DeleteSipMediaApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#DeleteSipMediaApplicationRequest', name: 'DeleteSipMediaApplicationRequest')
    DeleteSipRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#DeleteSipRuleRequest', name: 'DeleteSipRuleRequest')
    DeleteVoiceConnectorEmergencyCallingConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#DeleteVoiceConnectorEmergencyCallingConfigurationRequest', name: 'DeleteVoiceConnectorEmergencyCallingConfigurationRequest')
    DeleteVoiceConnectorExternalSystemsConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#DeleteVoiceConnectorExternalSystemsConfigurationRequest', name: 'DeleteVoiceConnectorExternalSystemsConfigurationRequest')
    DeleteVoiceConnectorGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#DeleteVoiceConnectorGroupRequest', name: 'DeleteVoiceConnectorGroupRequest')
    DeleteVoiceConnectorOriginationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#DeleteVoiceConnectorOriginationRequest', name: 'DeleteVoiceConnectorOriginationRequest')
    DeleteVoiceConnectorProxyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#DeleteVoiceConnectorProxyRequest', name: 'DeleteVoiceConnectorProxyRequest')
    DeleteVoiceConnectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#DeleteVoiceConnectorRequest', name: 'DeleteVoiceConnectorRequest')
    DeleteVoiceConnectorStreamingConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#DeleteVoiceConnectorStreamingConfigurationRequest', name: 'DeleteVoiceConnectorStreamingConfigurationRequest')
    DeleteVoiceConnectorTerminationCredentialsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#DeleteVoiceConnectorTerminationCredentialsRequest', name: 'DeleteVoiceConnectorTerminationCredentialsRequest')
    DeleteVoiceConnectorTerminationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#DeleteVoiceConnectorTerminationRequest', name: 'DeleteVoiceConnectorTerminationRequest')
    DeleteVoiceProfileDomainRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#DeleteVoiceProfileDomainRequest', name: 'DeleteVoiceProfileDomainRequest')
    DeleteVoiceProfileRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#DeleteVoiceProfileRequest', name: 'DeleteVoiceProfileRequest')
    DisassociatePhoneNumbersFromVoiceConnectorGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#DisassociatePhoneNumbersFromVoiceConnectorGroupRequest', name: 'DisassociatePhoneNumbersFromVoiceConnectorGroupRequest')
    DisassociatePhoneNumbersFromVoiceConnectorGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#DisassociatePhoneNumbersFromVoiceConnectorGroupResponse', name: 'DisassociatePhoneNumbersFromVoiceConnectorGroupResponse')
    DisassociatePhoneNumbersFromVoiceConnectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#DisassociatePhoneNumbersFromVoiceConnectorRequest', name: 'DisassociatePhoneNumbersFromVoiceConnectorRequest')
    DisassociatePhoneNumbersFromVoiceConnectorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#DisassociatePhoneNumbersFromVoiceConnectorResponse', name: 'DisassociatePhoneNumbersFromVoiceConnectorResponse')
    E164PhoneNumber = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkvoice#E164PhoneNumber', name: 'E164PhoneNumber', traits: {"smithy.api#pattern" => "^\\+?[1-9]\\d{1,14}$", "smithy.api#sensitive" => {}})
    E164PhoneNumberList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#E164PhoneNumberList', name: 'E164PhoneNumberList')
    EmergencyCallingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#EmergencyCallingConfiguration', name: 'EmergencyCallingConfiguration')
    ErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkvoice#ErrorCode', name: 'ErrorCode')
    ExternalSystemsConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#ExternalSystemsConfiguration', name: 'ExternalSystemsConfiguration')
    ForbiddenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#ForbiddenException', name: 'ForbiddenException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    FunctionArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkvoice#FunctionArn', name: 'FunctionArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}((-gov)|(-iso(b?)))?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?$", "smithy.api#sensitive" => {}})
    GeoMatchLevel = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkvoice#GeoMatchLevel', name: 'GeoMatchLevel')
    GeoMatchParams = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GeoMatchParams', name: 'GeoMatchParams')
    GetGlobalSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetGlobalSettingsResponse', name: 'GetGlobalSettingsResponse')
    GetPhoneNumberOrderRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetPhoneNumberOrderRequest', name: 'GetPhoneNumberOrderRequest')
    GetPhoneNumberOrderResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetPhoneNumberOrderResponse', name: 'GetPhoneNumberOrderResponse')
    GetPhoneNumberRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetPhoneNumberRequest', name: 'GetPhoneNumberRequest')
    GetPhoneNumberResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetPhoneNumberResponse', name: 'GetPhoneNumberResponse')
    GetPhoneNumberSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetPhoneNumberSettingsResponse', name: 'GetPhoneNumberSettingsResponse')
    GetProxySessionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetProxySessionRequest', name: 'GetProxySessionRequest')
    GetProxySessionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetProxySessionResponse', name: 'GetProxySessionResponse')
    GetSipMediaApplicationAlexaSkillConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetSipMediaApplicationAlexaSkillConfigurationRequest', name: 'GetSipMediaApplicationAlexaSkillConfigurationRequest')
    GetSipMediaApplicationAlexaSkillConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetSipMediaApplicationAlexaSkillConfigurationResponse', name: 'GetSipMediaApplicationAlexaSkillConfigurationResponse')
    GetSipMediaApplicationLoggingConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetSipMediaApplicationLoggingConfigurationRequest', name: 'GetSipMediaApplicationLoggingConfigurationRequest')
    GetSipMediaApplicationLoggingConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetSipMediaApplicationLoggingConfigurationResponse', name: 'GetSipMediaApplicationLoggingConfigurationResponse')
    GetSipMediaApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetSipMediaApplicationRequest', name: 'GetSipMediaApplicationRequest')
    GetSipMediaApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetSipMediaApplicationResponse', name: 'GetSipMediaApplicationResponse')
    GetSipRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetSipRuleRequest', name: 'GetSipRuleRequest')
    GetSipRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetSipRuleResponse', name: 'GetSipRuleResponse')
    GetSpeakerSearchTaskRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetSpeakerSearchTaskRequest', name: 'GetSpeakerSearchTaskRequest')
    GetSpeakerSearchTaskResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetSpeakerSearchTaskResponse', name: 'GetSpeakerSearchTaskResponse')
    GetVoiceConnectorEmergencyCallingConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetVoiceConnectorEmergencyCallingConfigurationRequest', name: 'GetVoiceConnectorEmergencyCallingConfigurationRequest')
    GetVoiceConnectorEmergencyCallingConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetVoiceConnectorEmergencyCallingConfigurationResponse', name: 'GetVoiceConnectorEmergencyCallingConfigurationResponse')
    GetVoiceConnectorExternalSystemsConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetVoiceConnectorExternalSystemsConfigurationRequest', name: 'GetVoiceConnectorExternalSystemsConfigurationRequest')
    GetVoiceConnectorExternalSystemsConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetVoiceConnectorExternalSystemsConfigurationResponse', name: 'GetVoiceConnectorExternalSystemsConfigurationResponse')
    GetVoiceConnectorGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetVoiceConnectorGroupRequest', name: 'GetVoiceConnectorGroupRequest')
    GetVoiceConnectorGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetVoiceConnectorGroupResponse', name: 'GetVoiceConnectorGroupResponse')
    GetVoiceConnectorLoggingConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetVoiceConnectorLoggingConfigurationRequest', name: 'GetVoiceConnectorLoggingConfigurationRequest')
    GetVoiceConnectorLoggingConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetVoiceConnectorLoggingConfigurationResponse', name: 'GetVoiceConnectorLoggingConfigurationResponse')
    GetVoiceConnectorOriginationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetVoiceConnectorOriginationRequest', name: 'GetVoiceConnectorOriginationRequest')
    GetVoiceConnectorOriginationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetVoiceConnectorOriginationResponse', name: 'GetVoiceConnectorOriginationResponse')
    GetVoiceConnectorProxyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetVoiceConnectorProxyRequest', name: 'GetVoiceConnectorProxyRequest')
    GetVoiceConnectorProxyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetVoiceConnectorProxyResponse', name: 'GetVoiceConnectorProxyResponse')
    GetVoiceConnectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetVoiceConnectorRequest', name: 'GetVoiceConnectorRequest')
    GetVoiceConnectorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetVoiceConnectorResponse', name: 'GetVoiceConnectorResponse')
    GetVoiceConnectorStreamingConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetVoiceConnectorStreamingConfigurationRequest', name: 'GetVoiceConnectorStreamingConfigurationRequest')
    GetVoiceConnectorStreamingConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetVoiceConnectorStreamingConfigurationResponse', name: 'GetVoiceConnectorStreamingConfigurationResponse')
    GetVoiceConnectorTerminationHealthRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetVoiceConnectorTerminationHealthRequest', name: 'GetVoiceConnectorTerminationHealthRequest')
    GetVoiceConnectorTerminationHealthResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetVoiceConnectorTerminationHealthResponse', name: 'GetVoiceConnectorTerminationHealthResponse')
    GetVoiceConnectorTerminationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetVoiceConnectorTerminationRequest', name: 'GetVoiceConnectorTerminationRequest')
    GetVoiceConnectorTerminationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetVoiceConnectorTerminationResponse', name: 'GetVoiceConnectorTerminationResponse')
    GetVoiceProfileDomainRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetVoiceProfileDomainRequest', name: 'GetVoiceProfileDomainRequest')
    GetVoiceProfileDomainResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetVoiceProfileDomainResponse', name: 'GetVoiceProfileDomainResponse')
    GetVoiceProfileRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetVoiceProfileRequest', name: 'GetVoiceProfileRequest')
    GetVoiceProfileResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetVoiceProfileResponse', name: 'GetVoiceProfileResponse')
    GetVoiceToneAnalysisTaskRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetVoiceToneAnalysisTaskRequest', name: 'GetVoiceToneAnalysisTaskRequest')
    GetVoiceToneAnalysisTaskResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GetVoiceToneAnalysisTaskResponse', name: 'GetVoiceToneAnalysisTaskResponse')
    GoneException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#GoneException', name: 'GoneException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 410})
    GuidString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkvoice#GuidString', name: 'GuidString', traits: {"smithy.api#pattern" => "^[a-fA-F0-9]{8}(?:-[a-fA-F0-9]{4}){3}-[a-fA-F0-9]{12}$"})
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chimesdkvoice#Integer', name: 'Integer')
    Iso8601Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.chimesdkvoice#Iso8601Timestamp', name: 'Iso8601Timestamp', traits: {"smithy.api#timestampFormat" => "date-time"})
    LanguageCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkvoice#LanguageCode', name: 'LanguageCode')
    ListAvailableVoiceConnectorRegionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#ListAvailableVoiceConnectorRegionsResponse', name: 'ListAvailableVoiceConnectorRegionsResponse')
    ListPhoneNumberOrdersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#ListPhoneNumberOrdersRequest', name: 'ListPhoneNumberOrdersRequest')
    ListPhoneNumberOrdersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#ListPhoneNumberOrdersResponse', name: 'ListPhoneNumberOrdersResponse')
    ListPhoneNumbersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#ListPhoneNumbersRequest', name: 'ListPhoneNumbersRequest')
    ListPhoneNumbersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#ListPhoneNumbersResponse', name: 'ListPhoneNumbersResponse')
    ListProxySessionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#ListProxySessionsRequest', name: 'ListProxySessionsRequest')
    ListProxySessionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#ListProxySessionsResponse', name: 'ListProxySessionsResponse')
    ListSipMediaApplicationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#ListSipMediaApplicationsRequest', name: 'ListSipMediaApplicationsRequest')
    ListSipMediaApplicationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#ListSipMediaApplicationsResponse', name: 'ListSipMediaApplicationsResponse')
    ListSipRulesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#ListSipRulesRequest', name: 'ListSipRulesRequest')
    ListSipRulesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#ListSipRulesResponse', name: 'ListSipRulesResponse')
    ListSupportedPhoneNumberCountriesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#ListSupportedPhoneNumberCountriesRequest', name: 'ListSupportedPhoneNumberCountriesRequest')
    ListSupportedPhoneNumberCountriesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#ListSupportedPhoneNumberCountriesResponse', name: 'ListSupportedPhoneNumberCountriesResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListVoiceConnectorGroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#ListVoiceConnectorGroupsRequest', name: 'ListVoiceConnectorGroupsRequest')
    ListVoiceConnectorGroupsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#ListVoiceConnectorGroupsResponse', name: 'ListVoiceConnectorGroupsResponse')
    ListVoiceConnectorTerminationCredentialsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#ListVoiceConnectorTerminationCredentialsRequest', name: 'ListVoiceConnectorTerminationCredentialsRequest')
    ListVoiceConnectorTerminationCredentialsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#ListVoiceConnectorTerminationCredentialsResponse', name: 'ListVoiceConnectorTerminationCredentialsResponse')
    ListVoiceConnectorsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#ListVoiceConnectorsRequest', name: 'ListVoiceConnectorsRequest')
    ListVoiceConnectorsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#ListVoiceConnectorsResponse', name: 'ListVoiceConnectorsResponse')
    ListVoiceProfileDomainsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#ListVoiceProfileDomainsRequest', name: 'ListVoiceProfileDomainsRequest')
    ListVoiceProfileDomainsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#ListVoiceProfileDomainsResponse', name: 'ListVoiceProfileDomainsResponse')
    ListVoiceProfilesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#ListVoiceProfilesRequest', name: 'ListVoiceProfilesRequest')
    ListVoiceProfilesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#ListVoiceProfilesResponse', name: 'ListVoiceProfilesResponse')
    LoggingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#LoggingConfiguration', name: 'LoggingConfiguration')
    MediaInsightsConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#MediaInsightsConfiguration', name: 'MediaInsightsConfiguration')
    NextTokenString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkvoice#NextTokenString', name: 'NextTokenString', traits: {"smithy.api#length" => {"min" => 0, "max" => 65535}})
    NonEmptyString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkvoice#NonEmptyString', name: 'NonEmptyString', traits: {"smithy.api#pattern" => "\\S"})
    NonEmptyString128 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkvoice#NonEmptyString128', name: 'NonEmptyString128', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "\\S"})
    NonEmptyString256 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkvoice#NonEmptyString256', name: 'NonEmptyString256', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "\\S"})
    NonEmptyStringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#NonEmptyStringList', name: 'NonEmptyStringList', traits: {"smithy.api#length" => {"min" => 1}})
    NotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#NotFoundException', name: 'NotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NotificationTarget = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkvoice#NotificationTarget', name: 'NotificationTarget')
    NullableBoolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.chimesdkvoice#NullableBoolean', name: 'NullableBoolean')
    NumberSelectionBehavior = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkvoice#NumberSelectionBehavior', name: 'NumberSelectionBehavior')
    OrderedPhoneNumber = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#OrderedPhoneNumber', name: 'OrderedPhoneNumber')
    OrderedPhoneNumberList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#OrderedPhoneNumberList', name: 'OrderedPhoneNumberList')
    OrderedPhoneNumberStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkvoice#OrderedPhoneNumberStatus', name: 'OrderedPhoneNumberStatus')
    Origination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#Origination', name: 'Origination')
    OriginationRoute = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#OriginationRoute', name: 'OriginationRoute')
    OriginationRouteList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#OriginationRouteList', name: 'OriginationRouteList')
    OriginationRoutePriority = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chimesdkvoice#OriginationRoutePriority', name: 'OriginationRoutePriority', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    OriginationRouteProtocol = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkvoice#OriginationRouteProtocol', name: 'OriginationRouteProtocol')
    OriginationRouteWeight = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chimesdkvoice#OriginationRouteWeight', name: 'OriginationRouteWeight', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    Participant = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#Participant', name: 'Participant')
    ParticipantPhoneNumberList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#ParticipantPhoneNumberList', name: 'ParticipantPhoneNumberList', traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    Participants = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#Participants', name: 'Participants')
    PhoneNumber = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#PhoneNumber', name: 'PhoneNumber')
    PhoneNumberAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#PhoneNumberAssociation', name: 'PhoneNumberAssociation')
    PhoneNumberAssociationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#PhoneNumberAssociationList', name: 'PhoneNumberAssociationList')
    PhoneNumberAssociationName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkvoice#PhoneNumberAssociationName', name: 'PhoneNumberAssociationName')
    PhoneNumberCapabilities = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#PhoneNumberCapabilities', name: 'PhoneNumberCapabilities')
    PhoneNumberCountriesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#PhoneNumberCountriesList', name: 'PhoneNumberCountriesList')
    PhoneNumberCountry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#PhoneNumberCountry', name: 'PhoneNumberCountry')
    PhoneNumberError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#PhoneNumberError', name: 'PhoneNumberError')
    PhoneNumberErrorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#PhoneNumberErrorList', name: 'PhoneNumberErrorList')
    PhoneNumberList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#PhoneNumberList', name: 'PhoneNumberList')
    PhoneNumberMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chimesdkvoice#PhoneNumberMaxResults', name: 'PhoneNumberMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 500}})
    PhoneNumberName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkvoice#PhoneNumberName', name: 'PhoneNumberName', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^$|^[a-zA-Z0-9\\,\\.\\_\\-]+(\\s+[a-zA-Z0-9\\,\\.\\_\\-]+)*$", "smithy.api#sensitive" => {}})
    PhoneNumberOrder = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#PhoneNumberOrder', name: 'PhoneNumberOrder')
    PhoneNumberOrderList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#PhoneNumberOrderList', name: 'PhoneNumberOrderList')
    PhoneNumberOrderStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkvoice#PhoneNumberOrderStatus', name: 'PhoneNumberOrderStatus')
    PhoneNumberOrderType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkvoice#PhoneNumberOrderType', name: 'PhoneNumberOrderType')
    PhoneNumberProductType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkvoice#PhoneNumberProductType', name: 'PhoneNumberProductType')
    PhoneNumberStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkvoice#PhoneNumberStatus', name: 'PhoneNumberStatus')
    PhoneNumberType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkvoice#PhoneNumberType', name: 'PhoneNumberType')
    PhoneNumberTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#PhoneNumberTypeList', name: 'PhoneNumberTypeList')
    Port = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chimesdkvoice#Port', name: 'Port', traits: {"smithy.api#range" => {"min" => 0, "max" => 65535}})
    PositiveInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chimesdkvoice#PositiveInteger', name: 'PositiveInteger', traits: {"smithy.api#range" => {"min" => 1}})
    Proxy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#Proxy', name: 'Proxy')
    ProxySession = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#ProxySession', name: 'ProxySession')
    ProxySessionNameString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkvoice#ProxySessionNameString', name: 'ProxySessionNameString', traits: {"smithy.api#pattern" => "^$|^[a-zA-Z0-9 ]{0,30}$", "smithy.api#sensitive" => {}})
    ProxySessionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkvoice#ProxySessionStatus', name: 'ProxySessionStatus')
    ProxySessions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#ProxySessions', name: 'ProxySessions')
    PutSipMediaApplicationAlexaSkillConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#PutSipMediaApplicationAlexaSkillConfigurationRequest', name: 'PutSipMediaApplicationAlexaSkillConfigurationRequest')
    PutSipMediaApplicationAlexaSkillConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#PutSipMediaApplicationAlexaSkillConfigurationResponse', name: 'PutSipMediaApplicationAlexaSkillConfigurationResponse')
    PutSipMediaApplicationLoggingConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#PutSipMediaApplicationLoggingConfigurationRequest', name: 'PutSipMediaApplicationLoggingConfigurationRequest')
    PutSipMediaApplicationLoggingConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#PutSipMediaApplicationLoggingConfigurationResponse', name: 'PutSipMediaApplicationLoggingConfigurationResponse')
    PutVoiceConnectorEmergencyCallingConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#PutVoiceConnectorEmergencyCallingConfigurationRequest', name: 'PutVoiceConnectorEmergencyCallingConfigurationRequest')
    PutVoiceConnectorEmergencyCallingConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#PutVoiceConnectorEmergencyCallingConfigurationResponse', name: 'PutVoiceConnectorEmergencyCallingConfigurationResponse')
    PutVoiceConnectorExternalSystemsConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#PutVoiceConnectorExternalSystemsConfigurationRequest', name: 'PutVoiceConnectorExternalSystemsConfigurationRequest')
    PutVoiceConnectorExternalSystemsConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#PutVoiceConnectorExternalSystemsConfigurationResponse', name: 'PutVoiceConnectorExternalSystemsConfigurationResponse')
    PutVoiceConnectorLoggingConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#PutVoiceConnectorLoggingConfigurationRequest', name: 'PutVoiceConnectorLoggingConfigurationRequest')
    PutVoiceConnectorLoggingConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#PutVoiceConnectorLoggingConfigurationResponse', name: 'PutVoiceConnectorLoggingConfigurationResponse')
    PutVoiceConnectorOriginationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#PutVoiceConnectorOriginationRequest', name: 'PutVoiceConnectorOriginationRequest')
    PutVoiceConnectorOriginationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#PutVoiceConnectorOriginationResponse', name: 'PutVoiceConnectorOriginationResponse')
    PutVoiceConnectorProxyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#PutVoiceConnectorProxyRequest', name: 'PutVoiceConnectorProxyRequest')
    PutVoiceConnectorProxyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#PutVoiceConnectorProxyResponse', name: 'PutVoiceConnectorProxyResponse')
    PutVoiceConnectorStreamingConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#PutVoiceConnectorStreamingConfigurationRequest', name: 'PutVoiceConnectorStreamingConfigurationRequest')
    PutVoiceConnectorStreamingConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#PutVoiceConnectorStreamingConfigurationResponse', name: 'PutVoiceConnectorStreamingConfigurationResponse')
    PutVoiceConnectorTerminationCredentialsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#PutVoiceConnectorTerminationCredentialsRequest', name: 'PutVoiceConnectorTerminationCredentialsRequest')
    PutVoiceConnectorTerminationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#PutVoiceConnectorTerminationRequest', name: 'PutVoiceConnectorTerminationRequest')
    PutVoiceConnectorTerminationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#PutVoiceConnectorTerminationResponse', name: 'PutVoiceConnectorTerminationResponse')
    ResourceLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#ResourceLimitExceededException', name: 'ResourceLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RestorePhoneNumberRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#RestorePhoneNumberRequest', name: 'RestorePhoneNumberRequest')
    RestorePhoneNumberResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#RestorePhoneNumberResponse', name: 'RestorePhoneNumberResponse')
    ResultMax = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chimesdkvoice#ResultMax', name: 'ResultMax', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    SMACreateCallArgumentsMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.chimesdkvoice#SMACreateCallArgumentsMap', name: 'SMACreateCallArgumentsMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    SMAUpdateCallArgumentsMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.chimesdkvoice#SMAUpdateCallArgumentsMap', name: 'SMAUpdateCallArgumentsMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    SearchAvailablePhoneNumbersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#SearchAvailablePhoneNumbersRequest', name: 'SearchAvailablePhoneNumbersRequest')
    SearchAvailablePhoneNumbersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#SearchAvailablePhoneNumbersResponse', name: 'SearchAvailablePhoneNumbersResponse')
    SensitiveNonEmptyString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkvoice#SensitiveNonEmptyString', name: 'SensitiveNonEmptyString', traits: {"smithy.api#pattern" => "\\S", "smithy.api#sensitive" => {}})
    SensitiveString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkvoice#SensitiveString', name: 'SensitiveString', traits: {"smithy.api#sensitive" => {}})
    SensitiveStringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#SensitiveStringList', name: 'SensitiveStringList')
    ServerSideEncryptionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#ServerSideEncryptionConfiguration', name: 'ServerSideEncryptionConfiguration')
    ServiceFailureException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#ServiceFailureException', name: 'ServiceFailureException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ServiceUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SessionBorderControllerType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkvoice#SessionBorderControllerType', name: 'SessionBorderControllerType')
    SessionBorderControllerTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#SessionBorderControllerTypeList', name: 'SessionBorderControllerTypeList')
    SipApplicationPriority = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chimesdkvoice#SipApplicationPriority', name: 'SipApplicationPriority', traits: {"smithy.api#range" => {"min" => 1}})
    SipHeadersMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.chimesdkvoice#SipHeadersMap', name: 'SipHeadersMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    SipMediaApplication = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#SipMediaApplication', name: 'SipMediaApplication')
    SipMediaApplicationAlexaSkillConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#SipMediaApplicationAlexaSkillConfiguration', name: 'SipMediaApplicationAlexaSkillConfiguration')
    SipMediaApplicationCall = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#SipMediaApplicationCall', name: 'SipMediaApplicationCall')
    SipMediaApplicationEndpoint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#SipMediaApplicationEndpoint', name: 'SipMediaApplicationEndpoint')
    SipMediaApplicationEndpointList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#SipMediaApplicationEndpointList', name: 'SipMediaApplicationEndpointList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    SipMediaApplicationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#SipMediaApplicationList', name: 'SipMediaApplicationList')
    SipMediaApplicationLoggingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#SipMediaApplicationLoggingConfiguration', name: 'SipMediaApplicationLoggingConfiguration')
    SipMediaApplicationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkvoice#SipMediaApplicationName', name: 'SipMediaApplicationName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9 _.-]+$"})
    SipRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#SipRule', name: 'SipRule')
    SipRuleList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#SipRuleList', name: 'SipRuleList')
    SipRuleName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkvoice#SipRuleName', name: 'SipRuleName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9 _.-]+$"})
    SipRuleTargetApplication = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#SipRuleTargetApplication', name: 'SipRuleTargetApplication')
    SipRuleTargetApplicationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#SipRuleTargetApplicationList', name: 'SipRuleTargetApplicationList', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    SipRuleTriggerType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkvoice#SipRuleTriggerType', name: 'SipRuleTriggerType')
    SpeakerSearchDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#SpeakerSearchDetails', name: 'SpeakerSearchDetails')
    SpeakerSearchResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#SpeakerSearchResult', name: 'SpeakerSearchResult')
    SpeakerSearchResultList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#SpeakerSearchResultList', name: 'SpeakerSearchResultList')
    SpeakerSearchTask = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#SpeakerSearchTask', name: 'SpeakerSearchTask')
    StartSpeakerSearchTaskRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#StartSpeakerSearchTaskRequest', name: 'StartSpeakerSearchTaskRequest')
    StartSpeakerSearchTaskResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#StartSpeakerSearchTaskResponse', name: 'StartSpeakerSearchTaskResponse')
    StartVoiceToneAnalysisTaskRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#StartVoiceToneAnalysisTaskRequest', name: 'StartVoiceToneAnalysisTaskRequest')
    StartVoiceToneAnalysisTaskResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#StartVoiceToneAnalysisTaskResponse', name: 'StartVoiceToneAnalysisTaskResponse')
    StopSpeakerSearchTaskRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#StopSpeakerSearchTaskRequest', name: 'StopSpeakerSearchTaskRequest')
    StopVoiceToneAnalysisTaskRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#StopVoiceToneAnalysisTaskRequest', name: 'StopVoiceToneAnalysisTaskRequest')
    StreamingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#StreamingConfiguration', name: 'StreamingConfiguration')
    StreamingNotificationTarget = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#StreamingNotificationTarget', name: 'StreamingNotificationTarget')
    StreamingNotificationTargetList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#StreamingNotificationTargetList', name: 'StreamingNotificationTargetList', traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkvoice#String', name: 'String')
    String128 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkvoice#String128', name: 'String128', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    StringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#StringList', name: 'StringList')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkvoice#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#sensitive" => {}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#TagResourceRequest', name: 'TagResourceRequest')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkvoice#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#sensitive" => {}})
    Termination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#Termination', name: 'Termination')
    TerminationHealth = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#TerminationHealth', name: 'TerminationHealth')
    ThrottledClientException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#ThrottledClientException', name: 'ThrottledClientException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TollFreePrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkvoice#TollFreePrefix', name: 'TollFreePrefix', traits: {"smithy.api#length" => {"min" => 3, "max" => 3}, "smithy.api#pattern" => "^8(00|33|44|55|66|77|88)$"})
    UnauthorizedClientException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#UnauthorizedClientException', name: 'UnauthorizedClientException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UnprocessableEntityException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#UnprocessableEntityException', name: 'UnprocessableEntityException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 422})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#UntagResourceRequest', name: 'UntagResourceRequest')
    UpdateGlobalSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#UpdateGlobalSettingsRequest', name: 'UpdateGlobalSettingsRequest')
    UpdatePhoneNumberRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#UpdatePhoneNumberRequest', name: 'UpdatePhoneNumberRequest')
    UpdatePhoneNumberRequestItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#UpdatePhoneNumberRequestItem', name: 'UpdatePhoneNumberRequestItem')
    UpdatePhoneNumberRequestItemList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#UpdatePhoneNumberRequestItemList', name: 'UpdatePhoneNumberRequestItemList')
    UpdatePhoneNumberResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#UpdatePhoneNumberResponse', name: 'UpdatePhoneNumberResponse')
    UpdatePhoneNumberSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#UpdatePhoneNumberSettingsRequest', name: 'UpdatePhoneNumberSettingsRequest')
    UpdateProxySessionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#UpdateProxySessionRequest', name: 'UpdateProxySessionRequest')
    UpdateProxySessionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#UpdateProxySessionResponse', name: 'UpdateProxySessionResponse')
    UpdateSipMediaApplicationCallRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#UpdateSipMediaApplicationCallRequest', name: 'UpdateSipMediaApplicationCallRequest')
    UpdateSipMediaApplicationCallResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#UpdateSipMediaApplicationCallResponse', name: 'UpdateSipMediaApplicationCallResponse')
    UpdateSipMediaApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#UpdateSipMediaApplicationRequest', name: 'UpdateSipMediaApplicationRequest')
    UpdateSipMediaApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#UpdateSipMediaApplicationResponse', name: 'UpdateSipMediaApplicationResponse')
    UpdateSipRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#UpdateSipRuleRequest', name: 'UpdateSipRuleRequest')
    UpdateSipRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#UpdateSipRuleResponse', name: 'UpdateSipRuleResponse')
    UpdateVoiceConnectorGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#UpdateVoiceConnectorGroupRequest', name: 'UpdateVoiceConnectorGroupRequest')
    UpdateVoiceConnectorGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#UpdateVoiceConnectorGroupResponse', name: 'UpdateVoiceConnectorGroupResponse')
    UpdateVoiceConnectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#UpdateVoiceConnectorRequest', name: 'UpdateVoiceConnectorRequest')
    UpdateVoiceConnectorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#UpdateVoiceConnectorResponse', name: 'UpdateVoiceConnectorResponse')
    UpdateVoiceProfileDomainRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#UpdateVoiceProfileDomainRequest', name: 'UpdateVoiceProfileDomainRequest')
    UpdateVoiceProfileDomainResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#UpdateVoiceProfileDomainResponse', name: 'UpdateVoiceProfileDomainResponse')
    UpdateVoiceProfileRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#UpdateVoiceProfileRequest', name: 'UpdateVoiceProfileRequest')
    UpdateVoiceProfileResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#UpdateVoiceProfileResponse', name: 'UpdateVoiceProfileResponse')
    ValidateE911AddressRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#ValidateE911AddressRequest', name: 'ValidateE911AddressRequest')
    ValidateE911AddressResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#ValidateE911AddressResponse', name: 'ValidateE911AddressResponse')
    ValidationResult = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chimesdkvoice#ValidationResult', name: 'ValidationResult', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 2}})
    VoiceConnector = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#VoiceConnector', name: 'VoiceConnector')
    VoiceConnectorAwsRegion = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkvoice#VoiceConnectorAwsRegion', name: 'VoiceConnectorAwsRegion')
    VoiceConnectorAwsRegionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#VoiceConnectorAwsRegionList', name: 'VoiceConnectorAwsRegionList')
    VoiceConnectorGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#VoiceConnectorGroup', name: 'VoiceConnectorGroup')
    VoiceConnectorGroupList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#VoiceConnectorGroupList', name: 'VoiceConnectorGroupList')
    VoiceConnectorGroupName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkvoice#VoiceConnectorGroupName', name: 'VoiceConnectorGroupName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9 _.-]+$"})
    VoiceConnectorIntegrationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkvoice#VoiceConnectorIntegrationType', name: 'VoiceConnectorIntegrationType')
    VoiceConnectorItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#VoiceConnectorItem', name: 'VoiceConnectorItem')
    VoiceConnectorItemList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#VoiceConnectorItemList', name: 'VoiceConnectorItemList')
    VoiceConnectorItemPriority = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chimesdkvoice#VoiceConnectorItemPriority', name: 'VoiceConnectorItemPriority', traits: {"smithy.api#range" => {"min" => 1, "max" => 99}})
    VoiceConnectorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#VoiceConnectorList', name: 'VoiceConnectorList')
    VoiceConnectorName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkvoice#VoiceConnectorName', name: 'VoiceConnectorName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9 _.-]+$"})
    VoiceConnectorSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#VoiceConnectorSettings', name: 'VoiceConnectorSettings')
    VoiceProfile = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#VoiceProfile', name: 'VoiceProfile')
    VoiceProfileDomain = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#VoiceProfileDomain', name: 'VoiceProfileDomain')
    VoiceProfileDomainDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkvoice#VoiceProfileDomainDescription', name: 'VoiceProfileDomainDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    VoiceProfileDomainName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkvoice#VoiceProfileDomainName', name: 'VoiceProfileDomainName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9 _.-]+$"})
    VoiceProfileDomainSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#VoiceProfileDomainSummary', name: 'VoiceProfileDomainSummary')
    VoiceProfileDomainSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#VoiceProfileDomainSummaryList', name: 'VoiceProfileDomainSummaryList')
    VoiceProfileSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#VoiceProfileSummary', name: 'VoiceProfileSummary')
    VoiceProfileSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkvoice#VoiceProfileSummaryList', name: 'VoiceProfileSummaryList')
    VoiceToneAnalysisTask = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkvoice#VoiceToneAnalysisTask', name: 'VoiceToneAnalysisTask')

    AccessDeniedException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    Address.add_member(:street_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: 'streetName', traits: {"smithy.api#documentation" => "<p>The address street, such as <code>8th Avenue</code>.</p>"}))
    Address.add_member(:street_suffix, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: 'streetSuffix', traits: {"smithy.api#documentation" => "<p>The address suffix, such as the <code>N</code> in <code>8th Avenue N</code>.</p>"}))
    Address.add_member(:post_directional, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: 'postDirectional', traits: {"smithy.api#documentation" => "<p>An address suffix location, such as the <code>S. Unit A</code> in \n         <code>Central Park S. Unit A</code>.</p>"}))
    Address.add_member(:pre_directional, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: 'preDirectional', traits: {"smithy.api#documentation" => "<p>An address prefix location, such as the <code>N</code> in <code>N. Third St.</code>\n         </p>"}))
    Address.add_member(:street_number, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: 'streetNumber', traits: {"smithy.api#documentation" => "<p>The numeric portion of an address.</p>"}))
    Address.add_member(:city, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: 'city', traits: {"smithy.api#documentation" => "<p>The city of an address.</p>"}))
    Address.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The state of an address.</p>"}))
    Address.add_member(:postal_code, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: 'postalCode', traits: {"smithy.api#documentation" => "<p>The postal code of an address.</p>"}))
    Address.add_member(:postal_code_plus4, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: 'postalCodePlus4', traits: {"smithy.api#documentation" => "<p>The zip + 4 or postal code + 4 of an address.</p>"}))
    Address.add_member(:country, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: 'country', traits: {"smithy.api#documentation" => "<p>The country of an address.</p>"}))
    Address.type = Types::Address
    AlexaSkillIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AlexaSkillId)
    AlexaSkillStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AlexaSkillStatus.add_member(:inactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    AssociatePhoneNumbersWithVoiceConnectorGroupRequest.add_member(:voice_connector_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'VoiceConnectorGroupId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime SDK Voice Connector group ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociatePhoneNumbersWithVoiceConnectorGroupRequest.add_member(:e164_phone_numbers, Smithy::Schema::Shapes::ShapeRef.new(shape: E164PhoneNumberList, location_name: 'E164PhoneNumbers', traits: {"smithy.api#documentation" => "<p>List of phone numbers, in E.164 format.</p>", "smithy.api#required" => {}}))
    AssociatePhoneNumbersWithVoiceConnectorGroupRequest.add_member(:force_associate, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'ForceAssociate', traits: {"smithy.api#documentation" => "<p>If true, associates the provided phone numbers with the provided Amazon Chime SDK Voice Connector Group and removes any previously existing associations. \n         If false, does not associate any phone numbers that have previously existing associations.</p>"}))
    AssociatePhoneNumbersWithVoiceConnectorGroupRequest.type = Types::AssociatePhoneNumbersWithVoiceConnectorGroupRequest
    AssociatePhoneNumbersWithVoiceConnectorGroupResponse.add_member(:phone_number_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberErrorList, location_name: 'PhoneNumberErrors', traits: {"smithy.api#documentation" => "<p>If the action fails for one or more of the phone numbers in the request, a list of the phone numbers is returned, along with error codes and error messages.</p>"}))
    AssociatePhoneNumbersWithVoiceConnectorGroupResponse.type = Types::AssociatePhoneNumbersWithVoiceConnectorGroupResponse
    AssociatePhoneNumbersWithVoiceConnectorRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociatePhoneNumbersWithVoiceConnectorRequest.add_member(:e164_phone_numbers, Smithy::Schema::Shapes::ShapeRef.new(shape: E164PhoneNumberList, location_name: 'E164PhoneNumbers', traits: {"smithy.api#documentation" => "<p>List of phone numbers, in E.164 format.</p>", "smithy.api#required" => {}}))
    AssociatePhoneNumbersWithVoiceConnectorRequest.add_member(:force_associate, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'ForceAssociate', traits: {"smithy.api#documentation" => "<p>If true, associates the provided phone numbers with the provided Amazon Chime SDK Voice Connector and removes any previously existing associations. If false, does not associate any phone numbers that have previously existing associations.</p>"}))
    AssociatePhoneNumbersWithVoiceConnectorRequest.type = Types::AssociatePhoneNumbersWithVoiceConnectorRequest
    AssociatePhoneNumbersWithVoiceConnectorResponse.add_member(:phone_number_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberErrorList, location_name: 'PhoneNumberErrors', traits: {"smithy.api#documentation" => "<p>If the action fails for one or more of the phone numbers in the request, a list of the phone numbers is returned, along with error codes and \n         error messages.</p>"}))
    AssociatePhoneNumbersWithVoiceConnectorResponse.type = Types::AssociatePhoneNumbersWithVoiceConnectorResponse
    BadRequestException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    BadRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    BadRequestException.type = Types::BadRequestException
    BatchDeletePhoneNumberRequest.add_member(:phone_number_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: 'PhoneNumberIds', traits: {"smithy.api#documentation" => "<p>List of phone number IDs.</p>", "smithy.api#required" => {}}))
    BatchDeletePhoneNumberRequest.type = Types::BatchDeletePhoneNumberRequest
    BatchDeletePhoneNumberResponse.add_member(:phone_number_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberErrorList, location_name: 'PhoneNumberErrors', traits: {"smithy.api#documentation" => "<p>If the action fails for one or more of the phone numbers in the request, a list of the phone numbers is returned, along with error codes and error messages.</p>"}))
    BatchDeletePhoneNumberResponse.type = Types::BatchDeletePhoneNumberResponse
    BatchUpdatePhoneNumberRequest.add_member(:update_phone_number_request_items, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePhoneNumberRequestItemList, location_name: 'UpdatePhoneNumberRequestItems', traits: {"smithy.api#documentation" => "<p>Lists the phone numbers in the update request.</p>", "smithy.api#required" => {}}))
    BatchUpdatePhoneNumberRequest.type = Types::BatchUpdatePhoneNumberRequest
    BatchUpdatePhoneNumberResponse.add_member(:phone_number_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberErrorList, location_name: 'PhoneNumberErrors', traits: {"smithy.api#documentation" => "<p>A list of failed phone numbers and their error messages.</p>"}))
    BatchUpdatePhoneNumberResponse.type = Types::BatchUpdatePhoneNumberResponse
    CallDetails.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString128, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>"}))
    CallDetails.add_member(:transaction_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString256, location_name: 'TransactionId', traits: {"smithy.api#documentation" => "<p>The transaction ID of a Voice Connector call.</p>"}))
    CallDetails.add_member(:is_caller, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsCaller', traits: {"smithy.api#documentation" => "<p>Identifies a person as the caller or the callee.</p>"}))
    CallDetails.type = Types::CallDetails
    CallLegType.add_member(:caller, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CALLER', traits: {"smithy.api#enumValue" => "Caller"}))
    CallLegType.add_member(:callee, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CALLEE', traits: {"smithy.api#enumValue" => "Callee"}))
    CallingNameStatus.add_member(:unassigned, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Unassigned', traits: {"smithy.api#enumValue" => "Unassigned"}))
    CallingNameStatus.add_member(:update_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UpdateInProgress', traits: {"smithy.api#enumValue" => "UpdateInProgress"}))
    CallingNameStatus.add_member(:update_succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UpdateSucceeded', traits: {"smithy.api#enumValue" => "UpdateSucceeded"}))
    CallingNameStatus.add_member(:update_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UpdateFailed', traits: {"smithy.api#enumValue" => "UpdateFailed"}))
    CallingRegionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CallingRegion)
    CandidateAddress.add_member(:street_info, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: 'streetInfo', traits: {"smithy.api#documentation" => "<p>The street information of the candidate address.</p>"}))
    CandidateAddress.add_member(:street_number, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: 'streetNumber', traits: {"smithy.api#documentation" => "<p>The numeric portion of the candidate address.</p>"}))
    CandidateAddress.add_member(:city, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: 'city', traits: {"smithy.api#documentation" => "<p>The city of the candidate address.</p>"}))
    CandidateAddress.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The state of the candidate address.</p>"}))
    CandidateAddress.add_member(:postal_code, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: 'postalCode', traits: {"smithy.api#documentation" => "<p>The postal code of the candidate address.</p>"}))
    CandidateAddress.add_member(:postal_code_plus4, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: 'postalCodePlus4', traits: {"smithy.api#documentation" => "<p>The zip + 4 or postal code +4 of the candidate address.</p>"}))
    CandidateAddress.add_member(:country, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: 'country', traits: {"smithy.api#documentation" => "<p>The country of the candidate address.</p>"}))
    CandidateAddress.type = Types::CandidateAddress
    CandidateAddressList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CandidateAddress, traits: {"smithy.api#xmlName" => "CandidateAddress"})
    Capability.add_member(:voice, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Voice', traits: {"smithy.api#enumValue" => "Voice"}))
    Capability.add_member(:sms, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SMS', traits: {"smithy.api#enumValue" => "SMS"}))
    CapabilityList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Capability)
    ConflictException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ConflictException.type = Types::ConflictException
    ContactCenterSystemType.add_member(:genesys_engage_on_premises, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GENESYS_ENGAGE_ON_PREMISES', traits: {"smithy.api#enumValue" => "GENESYS_ENGAGE_ON_PREMISES"}))
    ContactCenterSystemType.add_member(:avaya_aura_call_center_elite, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAYA_AURA_CALL_CENTER_ELITE', traits: {"smithy.api#enumValue" => "AVAYA_AURA_CALL_CENTER_ELITE"}))
    ContactCenterSystemType.add_member(:avaya_aura_contact_center, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAYA_AURA_CONTACT_CENTER', traits: {"smithy.api#enumValue" => "AVAYA_AURA_CONTACT_CENTER"}))
    ContactCenterSystemType.add_member(:cisco_unified_contact_center_enterprise, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CISCO_UNIFIED_CONTACT_CENTER_ENTERPRISE', traits: {"smithy.api#enumValue" => "CISCO_UNIFIED_CONTACT_CENTER_ENTERPRISE"}))
    ContactCenterSystemTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ContactCenterSystemType)
    CountryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Country)
    CreatePhoneNumberOrderRequest.add_member(:product_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberProductType, location_name: 'ProductType', traits: {"smithy.api#documentation" => "<p>The phone number product type.</p>", "smithy.api#required" => {}}))
    CreatePhoneNumberOrderRequest.add_member(:e164_phone_numbers, Smithy::Schema::Shapes::ShapeRef.new(shape: E164PhoneNumberList, location_name: 'E164PhoneNumbers', traits: {"smithy.api#documentation" => "<p>List of phone numbers, in E.164 format.</p>", "smithy.api#required" => {}}))
    CreatePhoneNumberOrderRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Specifies the name assigned to one or more phone numbers.</p>"}))
    CreatePhoneNumberOrderRequest.type = Types::CreatePhoneNumberOrderRequest
    CreatePhoneNumberOrderResponse.add_member(:phone_number_order, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberOrder, location_name: 'PhoneNumberOrder', traits: {"smithy.api#documentation" => "<p>The phone number order details.</p>"}))
    CreatePhoneNumberOrderResponse.type = Types::CreatePhoneNumberOrderResponse
    CreateProxySessionRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString128, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateProxySessionRequest.add_member(:participant_phone_numbers, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantPhoneNumberList, location_name: 'ParticipantPhoneNumbers', traits: {"smithy.api#documentation" => "<p>The participant phone numbers.</p>", "smithy.api#required" => {}}))
    CreateProxySessionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProxySessionNameString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the proxy session.</p>"}))
    CreateProxySessionRequest.add_member(:expiry_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'ExpiryMinutes', traits: {"smithy.api#documentation" => "<p>The number of minutes allowed for the proxy session.</p>"}))
    CreateProxySessionRequest.add_member(:capabilities, Smithy::Schema::Shapes::ShapeRef.new(shape: CapabilityList, location_name: 'Capabilities', traits: {"smithy.api#documentation" => "<p>The proxy session's capabilities.</p>", "smithy.api#required" => {}}))
    CreateProxySessionRequest.add_member(:number_selection_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberSelectionBehavior, location_name: 'NumberSelectionBehavior', traits: {"smithy.api#documentation" => "<p>The preference for proxy phone number reuse, or stickiness, between the same \n            participants across sessions.</p>"}))
    CreateProxySessionRequest.add_member(:geo_match_level, Smithy::Schema::Shapes::ShapeRef.new(shape: GeoMatchLevel, location_name: 'GeoMatchLevel', traits: {"smithy.api#documentation" => "<p>The preference for matching the country or area code of the proxy phone number with that of the first participant.</p>"}))
    CreateProxySessionRequest.add_member(:geo_match_params, Smithy::Schema::Shapes::ShapeRef.new(shape: GeoMatchParams, location_name: 'GeoMatchParams', traits: {"smithy.api#documentation" => "<p>The country and area code for the proxy phone number.</p>"}))
    CreateProxySessionRequest.type = Types::CreateProxySessionRequest
    CreateProxySessionResponse.add_member(:proxy_session, Smithy::Schema::Shapes::ShapeRef.new(shape: ProxySession, location_name: 'ProxySession', traits: {"smithy.api#documentation" => "<p>The proxy session details.</p>"}))
    CreateProxySessionResponse.type = Types::CreateProxySessionResponse
    CreateSipMediaApplicationCallRequest.add_member(:from_phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: 'FromPhoneNumber', traits: {"smithy.api#documentation" => "<p>The phone number that a user calls from. This is a phone number in your \n         Amazon Chime SDK phone number inventory.</p>", "smithy.api#required" => {}}))
    CreateSipMediaApplicationCallRequest.add_member(:to_phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: 'ToPhoneNumber', traits: {"smithy.api#documentation" => "<p>The phone number that the service should call.</p>", "smithy.api#required" => {}}))
    CreateSipMediaApplicationCallRequest.add_member(:sip_media_application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'SipMediaApplicationId', traits: {"smithy.api#documentation" => "<p>The ID of the SIP media application.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSipMediaApplicationCallRequest.add_member(:sip_headers, Smithy::Schema::Shapes::ShapeRef.new(shape: SipHeadersMap, location_name: 'SipHeaders', traits: {"smithy.api#documentation" => "<p>The SIP headers added to an outbound call leg.</p>"}))
    CreateSipMediaApplicationCallRequest.add_member(:arguments_map, Smithy::Schema::Shapes::ShapeRef.new(shape: SMACreateCallArgumentsMap, location_name: 'ArgumentsMap', traits: {"smithy.api#documentation" => "<p>Context passed to a CreateSipMediaApplication API call. For example, you could pass\n            key-value pairs such as: <code>\"FirstName\": \"John\", \"LastName\": \"Doe\"</code>\n         </p>"}))
    CreateSipMediaApplicationCallRequest.type = Types::CreateSipMediaApplicationCallRequest
    CreateSipMediaApplicationCallResponse.add_member(:sip_media_application_call, Smithy::Schema::Shapes::ShapeRef.new(shape: SipMediaApplicationCall, location_name: 'SipMediaApplicationCall', traits: {"smithy.api#documentation" => "<p>The actual call.</p>"}))
    CreateSipMediaApplicationCallResponse.type = Types::CreateSipMediaApplicationCallResponse
    CreateSipMediaApplicationRequest.add_member(:aws_region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AwsRegion', traits: {"smithy.api#documentation" => "<p>The AWS Region assigned to the SIP media application.</p>", "smithy.api#required" => {}}))
    CreateSipMediaApplicationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SipMediaApplicationName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The SIP media application's name.</p>", "smithy.api#required" => {}}))
    CreateSipMediaApplicationRequest.add_member(:endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: SipMediaApplicationEndpointList, location_name: 'Endpoints', traits: {"smithy.api#documentation" => "<p>List of endpoints (Lambda ARNs) specified for the SIP media application.</p>", "smithy.api#required" => {}}))
    CreateSipMediaApplicationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the SIP media application.</p>"}))
    CreateSipMediaApplicationRequest.type = Types::CreateSipMediaApplicationRequest
    CreateSipMediaApplicationResponse.add_member(:sip_media_application, Smithy::Schema::Shapes::ShapeRef.new(shape: SipMediaApplication, location_name: 'SipMediaApplication', traits: {"smithy.api#documentation" => "<p>The SIP media application details.</p>"}))
    CreateSipMediaApplicationResponse.type = Types::CreateSipMediaApplicationResponse
    CreateSipRuleRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SipRuleName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the SIP rule.</p>", "smithy.api#required" => {}}))
    CreateSipRuleRequest.add_member(:trigger_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SipRuleTriggerType, location_name: 'TriggerType', traits: {"smithy.api#documentation" => "<p>The type of trigger assigned to the SIP rule in <code>TriggerValue</code>, \n         currently <code>RequestUriHostname</code> or <code>ToPhoneNumber</code>.</p>", "smithy.api#required" => {}}))
    CreateSipRuleRequest.add_member(:trigger_value, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'TriggerValue', traits: {"smithy.api#documentation" => "<p>If <code>TriggerType</code> is <code>RequestUriHostname</code>, the \n         value can be the outbound host name of a Voice Connector. If \n         <code>TriggerType</code> is <code>ToPhoneNumber</code>, the value can \n         be a customer-owned phone number in the E164 format. The \n         <code>SipMediaApplication</code> specified in the <code>SipRule</code> is triggered \n         if the request URI in an incoming SIP request matches the \n         <code>RequestUriHostname</code>, or if the <code>To</code> header in the \n         incoming SIP request matches the <code>ToPhoneNumber</code> value.</p>", "smithy.api#required" => {}}))
    CreateSipRuleRequest.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'Disabled', traits: {"smithy.api#documentation" => "<p>Disables or enables a SIP rule. You must disable SIP rules \n         before you can delete them.</p>"}))
    CreateSipRuleRequest.add_member(:target_applications, Smithy::Schema::Shapes::ShapeRef.new(shape: SipRuleTargetApplicationList, location_name: 'TargetApplications', traits: {"smithy.api#documentation" => "<p>List of SIP media applications, with priority and AWS Region. Only one SIP \n         application per AWS Region can be used.</p>"}))
    CreateSipRuleRequest.type = Types::CreateSipRuleRequest
    CreateSipRuleResponse.add_member(:sip_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: SipRule, location_name: 'SipRule', traits: {"smithy.api#documentation" => "<p>The SIP rule information, including the rule ID, triggers, and target applications.</p>"}))
    CreateSipRuleResponse.type = Types::CreateSipRuleResponse
    CreateVoiceConnectorGroupRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceConnectorGroupName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the Voice Connector group.</p>", "smithy.api#required" => {}}))
    CreateVoiceConnectorGroupRequest.add_member(:voice_connector_items, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceConnectorItemList, location_name: 'VoiceConnectorItems', traits: {"smithy.api#documentation" => "<p>Lists the Voice Connectors that inbound calls are routed to.</p>"}))
    CreateVoiceConnectorGroupRequest.type = Types::CreateVoiceConnectorGroupRequest
    CreateVoiceConnectorGroupResponse.add_member(:voice_connector_group, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceConnectorGroup, location_name: 'VoiceConnectorGroup', traits: {"smithy.api#documentation" => "<p>The details of the Voice Connector group.</p>"}))
    CreateVoiceConnectorGroupResponse.type = Types::CreateVoiceConnectorGroupResponse
    CreateVoiceConnectorRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceConnectorName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the Voice Connector.</p>", "smithy.api#required" => {}}))
    CreateVoiceConnectorRequest.add_member(:aws_region, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceConnectorAwsRegion, location_name: 'AwsRegion', traits: {"smithy.api#documentation" => "<p>The AWS Region in which the Amazon Chime SDK Voice Connector is created. Default value: \n         <code>us-east-1</code> .</p>"}))
    CreateVoiceConnectorRequest.add_member(:require_encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RequireEncryption', traits: {"smithy.api#documentation" => "<p>Enables or disables encryption for the Voice Connector.</p>", "smithy.api#required" => {}}))
    CreateVoiceConnectorRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the Voice Connector.</p>"}))
    CreateVoiceConnectorRequest.add_member(:integration_type, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceConnectorIntegrationType, location_name: 'IntegrationType', traits: {"smithy.api#documentation" => "<p>The connectors for use with Amazon Connect.</p>\n         <p>The following options are available:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>CONNECT_CALL_TRANSFER_CONNECTOR</code> - Enables enterprises to integrate\n               Amazon Connect with other voice systems to directly transfer voice calls and\n               metadata without using the public telephone network. They can use Amazon Connect\n               telephony and Interactive Voice Response (IVR) with their existing voice systems to\n               modernize the IVR experience of their existing contact center and their enterprise\n               and branch voice systems. Additionally, enterprises migrating their contact center to\n               Amazon Connect can start with Connect telephony and IVR for immediate\n               modernization ahead of agent migration.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CONNECT_ANALYTICS_CONNECTOR</code> - Enables enterprises to integrate\n               Amazon Connect with other voice systems for real-time and post-call analytics.\n               They can use Amazon Connect Contact Lens with their existing voice systems to\n               provides call recordings, conversational analytics (including contact transcript,\n               sensitive data redaction, content categorization, theme detection, sentiment\n               analysis, real-time alerts, and post-contact summary), and agent performance\n               evaluations (including evaluation forms, automated evaluation, supervisor review)\n               with a rich user experience to display, search and filter customer interactions, and\n               programmatic access to data streams and the data lake. Additionally, enterprises\n               migrating their contact center to Amazon Connect can start with Contact Lens\n               analytics and performance insights ahead of agent migration.</p>\n            </li>\n         </ul>"}))
    CreateVoiceConnectorRequest.type = Types::CreateVoiceConnectorRequest
    CreateVoiceConnectorResponse.add_member(:voice_connector, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceConnector, location_name: 'VoiceConnector', traits: {"smithy.api#documentation" => "<p>The details of the Voice Connector.</p>"}))
    CreateVoiceConnectorResponse.type = Types::CreateVoiceConnectorResponse
    CreateVoiceProfileDomainRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceProfileDomainName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the voice profile domain.</p>", "smithy.api#required" => {}}))
    CreateVoiceProfileDomainRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceProfileDomainDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the voice profile domain.</p>"}))
    CreateVoiceProfileDomainRequest.add_member(:server_side_encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: 'ServerSideEncryptionConfiguration', traits: {"smithy.api#documentation" => "<p>The server-side encryption configuration for the request.</p>", "smithy.api#required" => {}}))
    CreateVoiceProfileDomainRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestId, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>The unique identifier for the client request. Use a different token for different domain creation requests.</p>"}))
    CreateVoiceProfileDomainRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the domain.</p>"}))
    CreateVoiceProfileDomainRequest.type = Types::CreateVoiceProfileDomainRequest
    CreateVoiceProfileDomainResponse.add_member(:voice_profile_domain, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceProfileDomain, location_name: 'VoiceProfileDomain', traits: {"smithy.api#documentation" => "<p>The requested voice profile domain.</p>"}))
    CreateVoiceProfileDomainResponse.type = Types::CreateVoiceProfileDomainResponse
    CreateVoiceProfileRequest.add_member(:speaker_search_task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString256, location_name: 'SpeakerSearchTaskId', traits: {"smithy.api#documentation" => "<p>The ID of the speaker search task.</p>", "smithy.api#required" => {}}))
    CreateVoiceProfileRequest.type = Types::CreateVoiceProfileRequest
    CreateVoiceProfileResponse.add_member(:voice_profile, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceProfile, location_name: 'VoiceProfile', traits: {"smithy.api#documentation" => "<p>The requested voice profile.</p>"}))
    CreateVoiceProfileResponse.type = Types::CreateVoiceProfileResponse
    Credential.add_member(:username, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'Username', traits: {"smithy.api#documentation" => "<p>The RFC2617 compliant user name associated with the SIP credentials, in \n         US-ASCII format.</p>"}))
    Credential.add_member(:password, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'Password', traits: {"smithy.api#documentation" => "<p>The RFC2617 compliant password associated with the SIP credentials, in US-ASCII format.</p>"}))
    Credential.type = Types::Credential
    CredentialList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Credential)
    DNISEmergencyCallingConfiguration.add_member(:emergency_phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: 'EmergencyPhoneNumber', traits: {"smithy.api#documentation" => "<p>The DNIS phone number that you route emergency calls to, in E.164 format.</p>", "smithy.api#required" => {}}))
    DNISEmergencyCallingConfiguration.add_member(:test_phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: 'TestPhoneNumber', traits: {"smithy.api#documentation" => "<p>The DNIS phone number for routing test emergency calls to, in E.164 format.</p>"}))
    DNISEmergencyCallingConfiguration.add_member(:calling_country, Smithy::Schema::Shapes::ShapeRef.new(shape: Alpha2CountryCode, location_name: 'CallingCountry', traits: {"smithy.api#documentation" => "<p>The country from which emergency calls are allowed, in ISO 3166-1 alpha-2 format.</p>", "smithy.api#required" => {}}))
    DNISEmergencyCallingConfiguration.type = Types::DNISEmergencyCallingConfiguration
    DNISEmergencyCallingConfigurationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DNISEmergencyCallingConfiguration)
    DeletePhoneNumberRequest.add_member(:phone_number_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: 'PhoneNumberId', traits: {"smithy.api#documentation" => "<p>The phone number ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePhoneNumberRequest.type = Types::DeletePhoneNumberRequest
    DeleteProxySessionRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString128, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteProxySessionRequest.add_member(:proxy_session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString128, location_name: 'ProxySessionId', traits: {"smithy.api#documentation" => "<p>The proxy session ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteProxySessionRequest.type = Types::DeleteProxySessionRequest
    DeleteSipMediaApplicationRequest.add_member(:sip_media_application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'SipMediaApplicationId', traits: {"smithy.api#documentation" => "<p>The SIP media application ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSipMediaApplicationRequest.type = Types::DeleteSipMediaApplicationRequest
    DeleteSipRuleRequest.add_member(:sip_rule_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'SipRuleId', traits: {"smithy.api#documentation" => "<p>The SIP rule ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSipRuleRequest.type = Types::DeleteSipRuleRequest
    DeleteVoiceConnectorEmergencyCallingConfigurationRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVoiceConnectorEmergencyCallingConfigurationRequest.type = Types::DeleteVoiceConnectorEmergencyCallingConfigurationRequest
    DeleteVoiceConnectorExternalSystemsConfigurationRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The ID of the Voice Connector for which to delete the external system\n         configuration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVoiceConnectorExternalSystemsConfigurationRequest.type = Types::DeleteVoiceConnectorExternalSystemsConfigurationRequest
    DeleteVoiceConnectorGroupRequest.add_member(:voice_connector_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'VoiceConnectorGroupId', traits: {"smithy.api#documentation" => "<p>The Voice Connector Group ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVoiceConnectorGroupRequest.type = Types::DeleteVoiceConnectorGroupRequest
    DeleteVoiceConnectorOriginationRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVoiceConnectorOriginationRequest.type = Types::DeleteVoiceConnectorOriginationRequest
    DeleteVoiceConnectorProxyRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString128, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVoiceConnectorProxyRequest.type = Types::DeleteVoiceConnectorProxyRequest
    DeleteVoiceConnectorRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVoiceConnectorRequest.type = Types::DeleteVoiceConnectorRequest
    DeleteVoiceConnectorStreamingConfigurationRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVoiceConnectorStreamingConfigurationRequest.type = Types::DeleteVoiceConnectorStreamingConfigurationRequest
    DeleteVoiceConnectorTerminationCredentialsRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVoiceConnectorTerminationCredentialsRequest.add_member(:usernames, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringList, location_name: 'Usernames', traits: {"smithy.api#documentation" => "<p>The RFC2617 compliant username associated with the SIP credentials, \n         in US-ASCII format.</p>", "smithy.api#required" => {}}))
    DeleteVoiceConnectorTerminationCredentialsRequest.type = Types::DeleteVoiceConnectorTerminationCredentialsRequest
    DeleteVoiceConnectorTerminationRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVoiceConnectorTerminationRequest.type = Types::DeleteVoiceConnectorTerminationRequest
    DeleteVoiceProfileDomainRequest.add_member(:voice_profile_domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString256, location_name: 'VoiceProfileDomainId', traits: {"smithy.api#documentation" => "<p>The voice profile domain ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVoiceProfileDomainRequest.type = Types::DeleteVoiceProfileDomainRequest
    DeleteVoiceProfileRequest.add_member(:voice_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString256, location_name: 'VoiceProfileId', traits: {"smithy.api#documentation" => "<p>The voice profile ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVoiceProfileRequest.type = Types::DeleteVoiceProfileRequest
    DisassociatePhoneNumbersFromVoiceConnectorGroupRequest.add_member(:voice_connector_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'VoiceConnectorGroupId', traits: {"smithy.api#documentation" => "<p>The Voice Connector group ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociatePhoneNumbersFromVoiceConnectorGroupRequest.add_member(:e164_phone_numbers, Smithy::Schema::Shapes::ShapeRef.new(shape: E164PhoneNumberList, location_name: 'E164PhoneNumbers', traits: {"smithy.api#documentation" => "<p>The list of phone numbers, in E.164 format.</p>", "smithy.api#required" => {}}))
    DisassociatePhoneNumbersFromVoiceConnectorGroupRequest.type = Types::DisassociatePhoneNumbersFromVoiceConnectorGroupRequest
    DisassociatePhoneNumbersFromVoiceConnectorGroupResponse.add_member(:phone_number_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberErrorList, location_name: 'PhoneNumberErrors', traits: {"smithy.api#documentation" => "<p>If the action fails for one or more of the phone numbers in the request, \n         a list of the phone numbers is returned, along with error codes and error messages.</p>"}))
    DisassociatePhoneNumbersFromVoiceConnectorGroupResponse.type = Types::DisassociatePhoneNumbersFromVoiceConnectorGroupResponse
    DisassociatePhoneNumbersFromVoiceConnectorRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociatePhoneNumbersFromVoiceConnectorRequest.add_member(:e164_phone_numbers, Smithy::Schema::Shapes::ShapeRef.new(shape: E164PhoneNumberList, location_name: 'E164PhoneNumbers', traits: {"smithy.api#documentation" => "<p>List of phone numbers, in E.164 format.</p>", "smithy.api#required" => {}}))
    DisassociatePhoneNumbersFromVoiceConnectorRequest.type = Types::DisassociatePhoneNumbersFromVoiceConnectorRequest
    DisassociatePhoneNumbersFromVoiceConnectorResponse.add_member(:phone_number_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberErrorList, location_name: 'PhoneNumberErrors', traits: {"smithy.api#documentation" => "<p>If the action fails for one or more of the phone numbers in the request, a \n         list of the phone numbers is returned, along with error codes and error messages.</p>"}))
    DisassociatePhoneNumbersFromVoiceConnectorResponse.type = Types::DisassociatePhoneNumbersFromVoiceConnectorResponse
    E164PhoneNumberList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: E164PhoneNumber)
    EmergencyCallingConfiguration.add_member(:dnis, Smithy::Schema::Shapes::ShapeRef.new(shape: DNISEmergencyCallingConfigurationList, location_name: 'DNIS', traits: {"smithy.api#documentation" => "<p>The Dialed Number Identification Service (DNIS) emergency calling configuration \n         details.</p>"}))
    EmergencyCallingConfiguration.type = Types::EmergencyCallingConfiguration
    ErrorCode.add_member(:bad_request, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BadRequest', traits: {"smithy.api#enumValue" => "BadRequest"}))
    ErrorCode.add_member(:conflict, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Conflict', traits: {"smithy.api#enumValue" => "Conflict"}))
    ErrorCode.add_member(:forbidden, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Forbidden', traits: {"smithy.api#enumValue" => "Forbidden"}))
    ErrorCode.add_member(:not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotFound', traits: {"smithy.api#enumValue" => "NotFound"}))
    ErrorCode.add_member(:precondition_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PreconditionFailed', traits: {"smithy.api#enumValue" => "PreconditionFailed"}))
    ErrorCode.add_member(:resource_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ResourceLimitExceeded', traits: {"smithy.api#enumValue" => "ResourceLimitExceeded"}))
    ErrorCode.add_member(:service_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ServiceFailure', traits: {"smithy.api#enumValue" => "ServiceFailure"}))
    ErrorCode.add_member(:access_denied, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AccessDenied', traits: {"smithy.api#enumValue" => "AccessDenied"}))
    ErrorCode.add_member(:service_unavailable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ServiceUnavailable', traits: {"smithy.api#enumValue" => "ServiceUnavailable"}))
    ErrorCode.add_member(:throttled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Throttled', traits: {"smithy.api#enumValue" => "Throttled"}))
    ErrorCode.add_member(:throttling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Throttling', traits: {"smithy.api#enumValue" => "Throttling"}))
    ErrorCode.add_member(:unauthorized, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Unauthorized', traits: {"smithy.api#enumValue" => "Unauthorized"}))
    ErrorCode.add_member(:unprocessable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Unprocessable', traits: {"smithy.api#enumValue" => "Unprocessable"}))
    ErrorCode.add_member(:voice_connector_group_associations_exist, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VoiceConnectorGroupAssociationsExist', traits: {"smithy.api#enumValue" => "VoiceConnectorGroupAssociationsExist"}))
    ErrorCode.add_member(:phone_number_associations_exist, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PhoneNumberAssociationsExist', traits: {"smithy.api#enumValue" => "PhoneNumberAssociationsExist"}))
    ErrorCode.add_member(:gone, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Gone', traits: {"smithy.api#enumValue" => "Gone"}))
    ExternalSystemsConfiguration.add_member(:session_border_controller_types, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionBorderControllerTypeList, location_name: 'SessionBorderControllerTypes', traits: {"smithy.api#documentation" => "<p>The session border controllers.</p>"}))
    ExternalSystemsConfiguration.add_member(:contact_center_system_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactCenterSystemTypeList, location_name: 'ContactCenterSystemTypes', traits: {"smithy.api#documentation" => "<p>The contact center system.</p>"}))
    ExternalSystemsConfiguration.type = Types::ExternalSystemsConfiguration
    ForbiddenException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    ForbiddenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ForbiddenException.type = Types::ForbiddenException
    GeoMatchLevel.add_member(:country, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Country', traits: {"smithy.api#enumValue" => "Country"}))
    GeoMatchLevel.add_member(:area_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AreaCode', traits: {"smithy.api#enumValue" => "AreaCode"}))
    GeoMatchParams.add_member(:country, Smithy::Schema::Shapes::ShapeRef.new(shape: Country, location_name: 'Country', traits: {"smithy.api#documentation" => "<p>The country.</p>", "smithy.api#required" => {}}))
    GeoMatchParams.add_member(:area_code, Smithy::Schema::Shapes::ShapeRef.new(shape: AreaCode, location_name: 'AreaCode', traits: {"smithy.api#documentation" => "<p>The area code.</p>", "smithy.api#required" => {}}))
    GeoMatchParams.type = Types::GeoMatchParams
    GetGlobalSettingsResponse.add_member(:voice_connector, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceConnectorSettings, location_name: 'VoiceConnector', traits: {"smithy.api#documentation" => "<p>The Voice Connector settings.</p>"}))
    GetGlobalSettingsResponse.type = Types::GetGlobalSettingsResponse
    GetPhoneNumberOrderRequest.add_member(:phone_number_order_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'PhoneNumberOrderId', traits: {"smithy.api#documentation" => "<p>The ID of the phone number order .</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPhoneNumberOrderRequest.type = Types::GetPhoneNumberOrderRequest
    GetPhoneNumberOrderResponse.add_member(:phone_number_order, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberOrder, location_name: 'PhoneNumberOrder', traits: {"smithy.api#documentation" => "<p>The phone number order details.</p>"}))
    GetPhoneNumberOrderResponse.type = Types::GetPhoneNumberOrderResponse
    GetPhoneNumberRequest.add_member(:phone_number_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: 'PhoneNumberId', traits: {"smithy.api#documentation" => "<p>The phone number ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPhoneNumberRequest.type = Types::GetPhoneNumberRequest
    GetPhoneNumberResponse.add_member(:phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'PhoneNumber', traits: {"smithy.api#documentation" => "<p>The phone number details.</p>"}))
    GetPhoneNumberResponse.type = Types::GetPhoneNumberResponse
    GetPhoneNumberSettingsResponse.add_member(:calling_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CallingName, location_name: 'CallingName', traits: {"smithy.api#documentation" => "<p>The default outbound calling name for the account.</p>"}))
    GetPhoneNumberSettingsResponse.add_member(:calling_name_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'CallingNameUpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The updated outbound calling name timestamp, in ISO 8601 format.</p>"}))
    GetPhoneNumberSettingsResponse.type = Types::GetPhoneNumberSettingsResponse
    GetProxySessionRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString128, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetProxySessionRequest.add_member(:proxy_session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString128, location_name: 'ProxySessionId', traits: {"smithy.api#documentation" => "<p>The proxy session ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetProxySessionRequest.type = Types::GetProxySessionRequest
    GetProxySessionResponse.add_member(:proxy_session, Smithy::Schema::Shapes::ShapeRef.new(shape: ProxySession, location_name: 'ProxySession', traits: {"smithy.api#documentation" => "<p>The proxy session details.</p>"}))
    GetProxySessionResponse.type = Types::GetProxySessionResponse
    GetSipMediaApplicationAlexaSkillConfigurationRequest.add_member(:sip_media_application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'SipMediaApplicationId', traits: {"smithy.api#documentation" => "<p>The SIP media application ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSipMediaApplicationAlexaSkillConfigurationRequest.type = Types::GetSipMediaApplicationAlexaSkillConfigurationRequest
    GetSipMediaApplicationAlexaSkillConfigurationResponse.add_member(:sip_media_application_alexa_skill_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SipMediaApplicationAlexaSkillConfiguration, location_name: 'SipMediaApplicationAlexaSkillConfiguration', traits: {"smithy.api#documentation" => "<p>Returns the Alexa Skill configuration.</p>"}))
    GetSipMediaApplicationAlexaSkillConfigurationResponse.type = Types::GetSipMediaApplicationAlexaSkillConfigurationResponse
    GetSipMediaApplicationLoggingConfigurationRequest.add_member(:sip_media_application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'SipMediaApplicationId', traits: {"smithy.api#documentation" => "<p>The SIP media application ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSipMediaApplicationLoggingConfigurationRequest.type = Types::GetSipMediaApplicationLoggingConfigurationRequest
    GetSipMediaApplicationLoggingConfigurationResponse.add_member(:sip_media_application_logging_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SipMediaApplicationLoggingConfiguration, location_name: 'SipMediaApplicationLoggingConfiguration', traits: {"smithy.api#documentation" => "<p>The actual logging configuration.</p>"}))
    GetSipMediaApplicationLoggingConfigurationResponse.type = Types::GetSipMediaApplicationLoggingConfigurationResponse
    GetSipMediaApplicationRequest.add_member(:sip_media_application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'SipMediaApplicationId', traits: {"smithy.api#documentation" => "<p>The SIP media application ID .</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSipMediaApplicationRequest.type = Types::GetSipMediaApplicationRequest
    GetSipMediaApplicationResponse.add_member(:sip_media_application, Smithy::Schema::Shapes::ShapeRef.new(shape: SipMediaApplication, location_name: 'SipMediaApplication', traits: {"smithy.api#documentation" => "<p>The details of the SIP media application.</p>"}))
    GetSipMediaApplicationResponse.type = Types::GetSipMediaApplicationResponse
    GetSipRuleRequest.add_member(:sip_rule_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'SipRuleId', traits: {"smithy.api#documentation" => "<p>The SIP rule ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSipRuleRequest.type = Types::GetSipRuleRequest
    GetSipRuleResponse.add_member(:sip_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: SipRule, location_name: 'SipRule', traits: {"smithy.api#documentation" => "<p>The SIP rule details.</p>"}))
    GetSipRuleResponse.type = Types::GetSipRuleResponse
    GetSpeakerSearchTaskRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString128, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSpeakerSearchTaskRequest.add_member(:speaker_search_task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString256, location_name: 'SpeakerSearchTaskId', traits: {"smithy.api#documentation" => "<p>The ID of the speaker search task.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSpeakerSearchTaskRequest.type = Types::GetSpeakerSearchTaskRequest
    GetSpeakerSearchTaskResponse.add_member(:speaker_search_task, Smithy::Schema::Shapes::ShapeRef.new(shape: SpeakerSearchTask, location_name: 'SpeakerSearchTask', traits: {"smithy.api#documentation" => "<p>The details of the speaker search task.</p>"}))
    GetSpeakerSearchTaskResponse.type = Types::GetSpeakerSearchTaskResponse
    GetVoiceConnectorEmergencyCallingConfigurationRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVoiceConnectorEmergencyCallingConfigurationRequest.type = Types::GetVoiceConnectorEmergencyCallingConfigurationRequest
    GetVoiceConnectorEmergencyCallingConfigurationResponse.add_member(:emergency_calling_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EmergencyCallingConfiguration, location_name: 'EmergencyCallingConfiguration', traits: {"smithy.api#documentation" => "<p>The details of the emergency calling configuration.</p>"}))
    GetVoiceConnectorEmergencyCallingConfigurationResponse.type = Types::GetVoiceConnectorEmergencyCallingConfigurationResponse
    GetVoiceConnectorExternalSystemsConfigurationRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The ID of the Voice Connector for which to return information about the\n         external system configuration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVoiceConnectorExternalSystemsConfigurationRequest.type = Types::GetVoiceConnectorExternalSystemsConfigurationRequest
    GetVoiceConnectorExternalSystemsConfigurationResponse.add_member(:external_systems_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalSystemsConfiguration, location_name: 'ExternalSystemsConfiguration', traits: {"smithy.api#documentation" => "<p>An object that contains information about an external systems configuration for a Voice Connector.</p>"}))
    GetVoiceConnectorExternalSystemsConfigurationResponse.type = Types::GetVoiceConnectorExternalSystemsConfigurationResponse
    GetVoiceConnectorGroupRequest.add_member(:voice_connector_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'VoiceConnectorGroupId', traits: {"smithy.api#documentation" => "<p>The Voice Connector group ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVoiceConnectorGroupRequest.type = Types::GetVoiceConnectorGroupRequest
    GetVoiceConnectorGroupResponse.add_member(:voice_connector_group, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceConnectorGroup, location_name: 'VoiceConnectorGroup', traits: {"smithy.api#documentation" => "<p>The details of the Voice Connector group.</p>"}))
    GetVoiceConnectorGroupResponse.type = Types::GetVoiceConnectorGroupResponse
    GetVoiceConnectorLoggingConfigurationRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVoiceConnectorLoggingConfigurationRequest.type = Types::GetVoiceConnectorLoggingConfigurationRequest
    GetVoiceConnectorLoggingConfigurationResponse.add_member(:logging_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: 'LoggingConfiguration', traits: {"smithy.api#documentation" => "<p>The logging configuration details .</p>"}))
    GetVoiceConnectorLoggingConfigurationResponse.type = Types::GetVoiceConnectorLoggingConfigurationResponse
    GetVoiceConnectorOriginationRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVoiceConnectorOriginationRequest.type = Types::GetVoiceConnectorOriginationRequest
    GetVoiceConnectorOriginationResponse.add_member(:origination, Smithy::Schema::Shapes::ShapeRef.new(shape: Origination, location_name: 'Origination', traits: {"smithy.api#documentation" => "<p>The origination setting details.</p>"}))
    GetVoiceConnectorOriginationResponse.type = Types::GetVoiceConnectorOriginationResponse
    GetVoiceConnectorProxyRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString128, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVoiceConnectorProxyRequest.type = Types::GetVoiceConnectorProxyRequest
    GetVoiceConnectorProxyResponse.add_member(:proxy, Smithy::Schema::Shapes::ShapeRef.new(shape: Proxy, location_name: 'Proxy', traits: {"smithy.api#documentation" => "<p>The proxy configuration details.</p>"}))
    GetVoiceConnectorProxyResponse.type = Types::GetVoiceConnectorProxyResponse
    GetVoiceConnectorRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVoiceConnectorRequest.type = Types::GetVoiceConnectorRequest
    GetVoiceConnectorResponse.add_member(:voice_connector, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceConnector, location_name: 'VoiceConnector', traits: {"smithy.api#documentation" => "<p>The Voice Connector details.</p>"}))
    GetVoiceConnectorResponse.type = Types::GetVoiceConnectorResponse
    GetVoiceConnectorStreamingConfigurationRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVoiceConnectorStreamingConfigurationRequest.type = Types::GetVoiceConnectorStreamingConfigurationRequest
    GetVoiceConnectorStreamingConfigurationResponse.add_member(:streaming_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamingConfiguration, location_name: 'StreamingConfiguration', traits: {"smithy.api#documentation" => "<p>The details of the streaming configuration.</p>"}))
    GetVoiceConnectorStreamingConfigurationResponse.type = Types::GetVoiceConnectorStreamingConfigurationResponse
    GetVoiceConnectorTerminationHealthRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVoiceConnectorTerminationHealthRequest.type = Types::GetVoiceConnectorTerminationHealthRequest
    GetVoiceConnectorTerminationHealthResponse.add_member(:termination_health, Smithy::Schema::Shapes::ShapeRef.new(shape: TerminationHealth, location_name: 'TerminationHealth', traits: {"smithy.api#documentation" => "<p>The termination health details.</p>"}))
    GetVoiceConnectorTerminationHealthResponse.type = Types::GetVoiceConnectorTerminationHealthResponse
    GetVoiceConnectorTerminationRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVoiceConnectorTerminationRequest.type = Types::GetVoiceConnectorTerminationRequest
    GetVoiceConnectorTerminationResponse.add_member(:termination, Smithy::Schema::Shapes::ShapeRef.new(shape: Termination, location_name: 'Termination', traits: {"smithy.api#documentation" => "<p>The termination setting details.</p>"}))
    GetVoiceConnectorTerminationResponse.type = Types::GetVoiceConnectorTerminationResponse
    GetVoiceProfileDomainRequest.add_member(:voice_profile_domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString256, location_name: 'VoiceProfileDomainId', traits: {"smithy.api#documentation" => "<p>The voice profile domain ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVoiceProfileDomainRequest.type = Types::GetVoiceProfileDomainRequest
    GetVoiceProfileDomainResponse.add_member(:voice_profile_domain, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceProfileDomain, location_name: 'VoiceProfileDomain', traits: {"smithy.api#documentation" => "<p>The details of the voice profile domain.</p>"}))
    GetVoiceProfileDomainResponse.type = Types::GetVoiceProfileDomainResponse
    GetVoiceProfileRequest.add_member(:voice_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString256, location_name: 'VoiceProfileId', traits: {"smithy.api#documentation" => "<p>The voice profile ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVoiceProfileRequest.type = Types::GetVoiceProfileRequest
    GetVoiceProfileResponse.add_member(:voice_profile, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceProfile, location_name: 'VoiceProfile', traits: {"smithy.api#documentation" => "<p>The voice profile details.</p>"}))
    GetVoiceProfileResponse.type = Types::GetVoiceProfileResponse
    GetVoiceToneAnalysisTaskRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString128, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVoiceToneAnalysisTaskRequest.add_member(:voice_tone_analysis_task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString256, location_name: 'VoiceToneAnalysisTaskId', traits: {"smithy.api#documentation" => "<p>The ID of the voice tone analysis task.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVoiceToneAnalysisTaskRequest.add_member(:is_caller, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsCaller', traits: {"smithy.api#documentation" => "<p>Specifies whether the voice being analyzed is the caller (originator) or the callee (responder).</p>", "smithy.api#httpQuery" => "isCaller", "smithy.api#required" => {}}))
    GetVoiceToneAnalysisTaskRequest.type = Types::GetVoiceToneAnalysisTaskRequest
    GetVoiceToneAnalysisTaskResponse.add_member(:voice_tone_analysis_task, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceToneAnalysisTask, location_name: 'VoiceToneAnalysisTask', traits: {"smithy.api#documentation" => "<p>The details of the voice tone analysis task.</p>"}))
    GetVoiceToneAnalysisTaskResponse.type = Types::GetVoiceToneAnalysisTaskResponse
    GoneException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    GoneException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    GoneException.type = Types::GoneException
    LanguageCode.add_member(:en_us, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EN_US', traits: {"smithy.api#enumValue" => "en-US"}))
    ListAvailableVoiceConnectorRegionsResponse.add_member(:voice_connector_regions, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceConnectorAwsRegionList, location_name: 'VoiceConnectorRegions', traits: {"smithy.api#documentation" => "<p>The list of AWS Regions.</p>"}))
    ListAvailableVoiceConnectorRegionsResponse.type = Types::ListAvailableVoiceConnectorRegionsResponse
    ListPhoneNumberOrdersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token used to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "next-token"}))
    ListPhoneNumberOrdersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultMax, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call.</p>", "smithy.api#httpQuery" => "max-results"}))
    ListPhoneNumberOrdersRequest.type = Types::ListPhoneNumberOrdersRequest
    ListPhoneNumberOrdersResponse.add_member(:phone_number_orders, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberOrderList, location_name: 'PhoneNumberOrders', traits: {"smithy.api#documentation" => "<p>The phone number order details.</p>"}))
    ListPhoneNumberOrdersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token used to retrieve the next page of results.</p>"}))
    ListPhoneNumberOrdersResponse.type = Types::ListPhoneNumberOrdersResponse
    ListPhoneNumbersRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of your organization's phone numbers.</p>", "smithy.api#httpQuery" => "status"}))
    ListPhoneNumbersRequest.add_member(:product_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberProductType, location_name: 'ProductType', traits: {"smithy.api#documentation" => "<p>The phone number product types.</p>", "smithy.api#httpQuery" => "product-type"}))
    ListPhoneNumbersRequest.add_member(:filter_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberAssociationName, location_name: 'FilterName', traits: {"smithy.api#documentation" => "<p>The filter to limit the number of results.</p>", "smithy.api#httpQuery" => "filter-name"}))
    ListPhoneNumbersRequest.add_member(:filter_value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FilterValue', traits: {"smithy.api#documentation" => "<p>The filter value.</p>", "smithy.api#httpQuery" => "filter-value"}))
    ListPhoneNumbersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultMax, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call.</p>", "smithy.api#httpQuery" => "max-results"}))
    ListPhoneNumbersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token used to return the next page of results.</p>", "smithy.api#httpQuery" => "next-token"}))
    ListPhoneNumbersRequest.type = Types::ListPhoneNumbersRequest
    ListPhoneNumbersResponse.add_member(:phone_numbers, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberList, location_name: 'PhoneNumbers', traits: {"smithy.api#documentation" => "<p>The phone number details.</p>"}))
    ListPhoneNumbersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token used to return the next page of results.</p>"}))
    ListPhoneNumbersResponse.type = Types::ListPhoneNumbersResponse
    ListProxySessionsRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString128, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListProxySessionsRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ProxySessionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The proxy session status.</p>", "smithy.api#httpQuery" => "status"}))
    ListProxySessionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token used to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "next-token"}))
    ListProxySessionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultMax, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call.</p>", "smithy.api#httpQuery" => "max-results"}))
    ListProxySessionsRequest.type = Types::ListProxySessionsRequest
    ListProxySessionsResponse.add_member(:proxy_sessions, Smithy::Schema::Shapes::ShapeRef.new(shape: ProxySessions, location_name: 'ProxySessions', traits: {"smithy.api#documentation" => "<p>The proxy sessions' details.</p>"}))
    ListProxySessionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token used to retrieve the next page of results.</p>"}))
    ListProxySessionsResponse.type = Types::ListProxySessionsResponse
    ListSipMediaApplicationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultMax, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call. Defaults to 100.</p>", "smithy.api#httpQuery" => "max-results"}))
    ListSipMediaApplicationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token used to return the next page of results.</p>", "smithy.api#httpQuery" => "next-token"}))
    ListSipMediaApplicationsRequest.type = Types::ListSipMediaApplicationsRequest
    ListSipMediaApplicationsResponse.add_member(:sip_media_applications, Smithy::Schema::Shapes::ShapeRef.new(shape: SipMediaApplicationList, location_name: 'SipMediaApplications', traits: {"smithy.api#documentation" => "<p>The list of SIP media applications and application details.</p>"}))
    ListSipMediaApplicationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token used to return the next page of results.</p>"}))
    ListSipMediaApplicationsResponse.type = Types::ListSipMediaApplicationsResponse
    ListSipRulesRequest.add_member(:sip_media_application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'SipMediaApplicationId', traits: {"smithy.api#documentation" => "<p>The SIP media application ID.</p>", "smithy.api#httpQuery" => "sip-media-application"}))
    ListSipRulesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultMax, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call. Defaults to 100.</p>", "smithy.api#httpQuery" => "max-results"}))
    ListSipRulesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token used to return the next page of results.</p>", "smithy.api#httpQuery" => "next-token"}))
    ListSipRulesRequest.type = Types::ListSipRulesRequest
    ListSipRulesResponse.add_member(:sip_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: SipRuleList, location_name: 'SipRules', traits: {"smithy.api#documentation" => "<p>The list of SIP rules and details.</p>"}))
    ListSipRulesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token used to return the next page of results.</p>"}))
    ListSipRulesResponse.type = Types::ListSipRulesResponse
    ListSupportedPhoneNumberCountriesRequest.add_member(:product_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberProductType, location_name: 'ProductType', traits: {"smithy.api#documentation" => "<p>The phone number product type.</p>", "smithy.api#httpQuery" => "product-type", "smithy.api#required" => {}}))
    ListSupportedPhoneNumberCountriesRequest.type = Types::ListSupportedPhoneNumberCountriesRequest
    ListSupportedPhoneNumberCountriesResponse.add_member(:phone_number_countries, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberCountriesList, location_name: 'PhoneNumberCountries', traits: {"smithy.api#documentation" => "<p>The supported phone number countries.</p>"}))
    ListSupportedPhoneNumberCountriesResponse.type = Types::ListSupportedPhoneNumberCountriesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The resource ARN.</p>", "smithy.api#httpQuery" => "arn", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags in the list.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListVoiceConnectorGroupsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token used to return the next page of results.</p>", "smithy.api#httpQuery" => "next-token"}))
    ListVoiceConnectorGroupsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultMax, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call.  </p>", "smithy.api#httpQuery" => "max-results"}))
    ListVoiceConnectorGroupsRequest.type = Types::ListVoiceConnectorGroupsRequest
    ListVoiceConnectorGroupsResponse.add_member(:voice_connector_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceConnectorGroupList, location_name: 'VoiceConnectorGroups', traits: {"smithy.api#documentation" => "<p>The details of the Voice Connector groups.</p>"}))
    ListVoiceConnectorGroupsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token used to return the next page of results.</p>"}))
    ListVoiceConnectorGroupsResponse.type = Types::ListVoiceConnectorGroupsResponse
    ListVoiceConnectorTerminationCredentialsRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListVoiceConnectorTerminationCredentialsRequest.type = Types::ListVoiceConnectorTerminationCredentialsRequest
    ListVoiceConnectorTerminationCredentialsResponse.add_member(:usernames, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringList, location_name: 'Usernames', traits: {"smithy.api#documentation" => "<p>A list of user names.</p>"}))
    ListVoiceConnectorTerminationCredentialsResponse.type = Types::ListVoiceConnectorTerminationCredentialsResponse
    ListVoiceConnectorsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token used to return the next page of results.</p>", "smithy.api#httpQuery" => "next-token"}))
    ListVoiceConnectorsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultMax, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call.</p>", "smithy.api#httpQuery" => "max-results"}))
    ListVoiceConnectorsRequest.type = Types::ListVoiceConnectorsRequest
    ListVoiceConnectorsResponse.add_member(:voice_connectors, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceConnectorList, location_name: 'VoiceConnectors', traits: {"smithy.api#documentation" => "<p>The details of the Voice Connectors.</p>"}))
    ListVoiceConnectorsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token used to return the next page of results.</p>"}))
    ListVoiceConnectorsResponse.type = Types::ListVoiceConnectorsResponse
    ListVoiceProfileDomainsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token used to return the next page of results.</p>", "smithy.api#httpQuery" => "next-token"}))
    ListVoiceProfileDomainsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultMax, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call.</p>", "smithy.api#httpQuery" => "max-results"}))
    ListVoiceProfileDomainsRequest.type = Types::ListVoiceProfileDomainsRequest
    ListVoiceProfileDomainsResponse.add_member(:voice_profile_domains, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceProfileDomainSummaryList, location_name: 'VoiceProfileDomains', traits: {"smithy.api#documentation" => "<p>The list of voice profile domains.</p>"}))
    ListVoiceProfileDomainsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token used to return the next page of results.</p>"}))
    ListVoiceProfileDomainsResponse.type = Types::ListVoiceProfileDomainsResponse
    ListVoiceProfilesRequest.add_member(:voice_profile_domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString256, location_name: 'VoiceProfileDomainId', traits: {"smithy.api#documentation" => "<p>The ID of the voice profile domain.</p>", "smithy.api#httpQuery" => "voice-profile-domain-id", "smithy.api#required" => {}}))
    ListVoiceProfilesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token used to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "next-token"}))
    ListVoiceProfilesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultMax, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results in the request.</p>", "smithy.api#httpQuery" => "max-results"}))
    ListVoiceProfilesRequest.type = Types::ListVoiceProfilesRequest
    ListVoiceProfilesResponse.add_member(:voice_profiles, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceProfileSummaryList, location_name: 'VoiceProfiles', traits: {"smithy.api#documentation" => "<p>The list of voice profiles.</p>"}))
    ListVoiceProfilesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token used to retrieve the next page of results.</p>"}))
    ListVoiceProfilesResponse.type = Types::ListVoiceProfilesResponse
    LoggingConfiguration.add_member(:enable_sip_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnableSIPLogs', traits: {"smithy.api#documentation" => "<p>Boolean that enables sending SIP message logs to Amazon CloudWatch.</p>"}))
    LoggingConfiguration.add_member(:enable_media_metric_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnableMediaMetricLogs', traits: {"smithy.api#documentation" => "<p>Enables or disables media metrics logging.</p>"}))
    LoggingConfiguration.type = Types::LoggingConfiguration
    MediaInsightsConfiguration.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Disabled', traits: {"smithy.api#documentation" => "<p>Denotes the configuration as enabled or disabled.</p>"}))
    MediaInsightsConfiguration.add_member(:configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ConfigurationArn', traits: {"smithy.api#documentation" => "<p>The configuration's ARN.</p>"}))
    MediaInsightsConfiguration.type = Types::MediaInsightsConfiguration
    NonEmptyStringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    NotFoundException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    NotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    NotFoundException.type = Types::NotFoundException
    NotificationTarget.add_member(:event_bridge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EventBridge', traits: {"smithy.api#enumValue" => "EventBridge"}))
    NotificationTarget.add_member(:sns, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SNS', traits: {"smithy.api#enumValue" => "SNS"}))
    NotificationTarget.add_member(:sqs, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SQS', traits: {"smithy.api#enumValue" => "SQS"}))
    NumberSelectionBehavior.add_member(:prefer_sticky, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PreferSticky', traits: {"smithy.api#enumValue" => "PreferSticky"}))
    NumberSelectionBehavior.add_member(:avoid_sticky, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AvoidSticky', traits: {"smithy.api#enumValue" => "AvoidSticky"}))
    OrderedPhoneNumber.add_member(:e164_phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: 'E164PhoneNumber', traits: {"smithy.api#documentation" => "<p>The phone number, in E.164 format.</p>"}))
    OrderedPhoneNumber.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OrderedPhoneNumberStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The phone number status.</p>"}))
    OrderedPhoneNumber.type = Types::OrderedPhoneNumber
    OrderedPhoneNumberList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OrderedPhoneNumber)
    OrderedPhoneNumberStatus.add_member(:processing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Processing', traits: {"smithy.api#enumValue" => "Processing"}))
    OrderedPhoneNumberStatus.add_member(:acquired, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Acquired', traits: {"smithy.api#enumValue" => "Acquired"}))
    OrderedPhoneNumberStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    Origination.add_member(:routes, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginationRouteList, location_name: 'Routes', traits: {"smithy.api#documentation" => "<p>The call distribution properties defined for your SIP hosts. Valid range: Minimum \n         value of 1. Maximum value of 20. This parameter is not required, but you must specify \n         this parameter or <code>Disabled</code>.</p>"}))
    Origination.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Disabled', traits: {"smithy.api#documentation" => "<p>When origination settings are disabled, inbound calls are not enabled for your \n         Amazon Chime SDK Voice Connector. \n         This parameter is not required, but you must specify this parameter or \n         <code>Routes</code>.</p>"}))
    Origination.type = Types::Origination
    OriginationRoute.add_member(:host, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Host', traits: {"smithy.api#documentation" => "<p>The FQDN or IP address to contact for origination traffic.</p>"}))
    OriginationRoute.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: 'Port', traits: {"smithy.api#documentation" => "<p>The designated origination route port. Defaults to 5060.</p>"}))
    OriginationRoute.add_member(:protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginationRouteProtocol, location_name: 'Protocol', traits: {"smithy.api#documentation" => "<p>The protocol to use for the origination route. Encryption-enabled Amazon Chime SDK Voice Connectors use \n         TCP protocol by default.</p>"}))
    OriginationRoute.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginationRoutePriority, location_name: 'Priority', traits: {"smithy.api#documentation" => "<p>The priority associated with the host, with 1 being the highest priority. Higher \n         priority hosts are attempted first.</p>"}))
    OriginationRoute.add_member(:weight, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginationRouteWeight, location_name: 'Weight', traits: {"smithy.api#documentation" => "<p>The weight assigned to an origination route. When hosts have equal priority, \n         calls are distributed between them based on their relative weights.</p>"}))
    OriginationRoute.type = Types::OriginationRoute
    OriginationRouteList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OriginationRoute)
    OriginationRouteProtocol.add_member(:tcp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TCP', traits: {"smithy.api#enumValue" => "TCP"}))
    OriginationRouteProtocol.add_member(:udp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UDP', traits: {"smithy.api#enumValue" => "UDP"}))
    Participant.add_member(:phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: 'PhoneNumber', traits: {"smithy.api#documentation" => "<p>The participant's phone number.</p>"}))
    Participant.add_member(:proxy_phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: 'ProxyPhoneNumber', traits: {"smithy.api#documentation" => "<p>The participant's proxy phone number.</p>"}))
    Participant.type = Types::Participant
    ParticipantPhoneNumberList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: E164PhoneNumber)
    Participants.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Participant)
    PhoneNumber.add_member(:phone_number_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: 'PhoneNumberId', traits: {"smithy.api#documentation" => "<p>The phone number's ID.</p>"}))
    PhoneNumber.add_member(:e164_phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: 'E164PhoneNumber', traits: {"smithy.api#documentation" => "<p>The phone number, in E.164 format.</p>"}))
    PhoneNumber.add_member(:country, Smithy::Schema::Shapes::ShapeRef.new(shape: Alpha2CountryCode, location_name: 'Country', traits: {"smithy.api#documentation" => "<p>The phone number's country. Format: ISO 3166-1 alpha-2.</p>"}))
    PhoneNumber.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The phone number's type.</p>"}))
    PhoneNumber.add_member(:product_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberProductType, location_name: 'ProductType', traits: {"smithy.api#documentation" => "<p>The phone number's product type.</p>"}))
    PhoneNumber.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The phone number's status.</p>"}))
    PhoneNumber.add_member(:capabilities, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberCapabilities, location_name: 'Capabilities', traits: {"smithy.api#documentation" => "<p>The phone number's capabilities.</p>"}))
    PhoneNumber.add_member(:associations, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberAssociationList, location_name: 'Associations', traits: {"smithy.api#documentation" => "<p>The phone number's associations.</p>"}))
    PhoneNumber.add_member(:calling_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CallingName, location_name: 'CallingName', traits: {"smithy.api#documentation" => "<p>The outbound calling name associated with the phone number.</p>"}))
    PhoneNumber.add_member(:calling_name_status, Smithy::Schema::Shapes::ShapeRef.new(shape: CallingNameStatus, location_name: 'CallingNameStatus', traits: {"smithy.api#documentation" => "<p>The outbound calling name status.</p>"}))
    PhoneNumber.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The phone number creation timestamp, in ISO 8601 format.</p>"}))
    PhoneNumber.add_member(:updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'UpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The updated phone number timestamp, in ISO 8601 format.</p>"}))
    PhoneNumber.add_member(:deletion_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'DeletionTimestamp', traits: {"smithy.api#documentation" => "<p>The deleted phone number timestamp, in ISO 8601 format.</p>"}))
    PhoneNumber.add_member(:order_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'OrderId', traits: {"smithy.api#documentation" => "<p>The phone number's order ID.</p>"}))
    PhoneNumber.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the phone number.</p>"}))
    PhoneNumber.type = Types::PhoneNumber
    PhoneNumberAssociation.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>Contains the ID for the entity specified in Name.</p>"}))
    PhoneNumberAssociation.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberAssociationName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Defines the association with an Amazon Chime SDK account ID, user ID, Voice Connector ID, or Voice Connector group ID.</p>"}))
    PhoneNumberAssociation.add_member(:associated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'AssociatedTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of the phone number association, in ISO 8601 format.</p>"}))
    PhoneNumberAssociation.type = Types::PhoneNumberAssociation
    PhoneNumberAssociationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberAssociation)
    PhoneNumberAssociationName.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VoiceConnectorId', traits: {"smithy.api#enumValue" => "VoiceConnectorId"}))
    PhoneNumberAssociationName.add_member(:voice_connector_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VoiceConnectorGroupId', traits: {"smithy.api#enumValue" => "VoiceConnectorGroupId"}))
    PhoneNumberAssociationName.add_member(:sip_rule_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SipRuleId', traits: {"smithy.api#enumValue" => "SipRuleId"}))
    PhoneNumberCapabilities.add_member(:inbound_call, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'InboundCall', traits: {"smithy.api#documentation" => "<p>Allows or denies inbound calling for the specified phone number.</p>"}))
    PhoneNumberCapabilities.add_member(:outbound_call, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'OutboundCall', traits: {"smithy.api#documentation" => "<p>Allows or denies outbound calling for the specified phone number.</p>"}))
    PhoneNumberCapabilities.add_member(:inbound_sms, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'InboundSMS', traits: {"smithy.api#documentation" => "<p>Allows or denies inbound SMS messaging for the specified phone number.</p>"}))
    PhoneNumberCapabilities.add_member(:outbound_sms, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'OutboundSMS', traits: {"smithy.api#documentation" => "<p>Allows or denies outbound SMS messaging for the specified phone number.</p>"}))
    PhoneNumberCapabilities.add_member(:inbound_mms, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'InboundMMS', traits: {"smithy.api#documentation" => "<p>Allows or denies inbound MMS messaging for the specified phone number.</p>"}))
    PhoneNumberCapabilities.add_member(:outbound_mms, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'OutboundMMS', traits: {"smithy.api#documentation" => "<p>Allows or denies inbound MMS messaging for the specified phone number.</p>"}))
    PhoneNumberCapabilities.type = Types::PhoneNumberCapabilities
    PhoneNumberCountriesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberCountry)
    PhoneNumberCountry.add_member(:country_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Alpha2CountryCode, location_name: 'CountryCode', traits: {"smithy.api#documentation" => "<p>The phone number country code. Format: ISO 3166-1 alpha-2.</p>"}))
    PhoneNumberCountry.add_member(:supported_phone_number_types, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberTypeList, location_name: 'SupportedPhoneNumberTypes', traits: {"smithy.api#documentation" => "<p>The supported phone number types.</p>"}))
    PhoneNumberCountry.type = Types::PhoneNumberCountry
    PhoneNumberError.add_member(:phone_number_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: 'PhoneNumberId', traits: {"smithy.api#documentation" => "<p>The phone number ID for which the action failed.</p>"}))
    PhoneNumberError.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code.</p>"}))
    PhoneNumberError.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The error message.</p>"}))
    PhoneNumberError.type = Types::PhoneNumberError
    PhoneNumberErrorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberError)
    PhoneNumberList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber)
    PhoneNumberOrder.add_member(:phone_number_order_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'PhoneNumberOrderId', traits: {"smithy.api#documentation" => "<p>The ID of the phone order.</p>"}))
    PhoneNumberOrder.add_member(:product_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberProductType, location_name: 'ProductType', traits: {"smithy.api#documentation" => "<p>The phone number order product type.</p>"}))
    PhoneNumberOrder.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberOrderStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the phone number order.</p>"}))
    PhoneNumberOrder.add_member(:order_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberOrderType, location_name: 'OrderType', traits: {"smithy.api#documentation" => "<p>The type of phone number being ordered, local or toll-free.</p>"}))
    PhoneNumberOrder.add_member(:ordered_phone_numbers, Smithy::Schema::Shapes::ShapeRef.new(shape: OrderedPhoneNumberList, location_name: 'OrderedPhoneNumbers', traits: {"smithy.api#documentation" => "<p>The ordered phone number details, such as the phone number in E.164 format \n         and the phone number status.</p>"}))
    PhoneNumberOrder.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The phone number order creation time stamp, in ISO 8601 format.</p>"}))
    PhoneNumberOrder.add_member(:updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'UpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The updated phone number order time stamp, in ISO 8601 format.</p>"}))
    PhoneNumberOrder.add_member(:foc_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'FocDate', traits: {"smithy.api#documentation" => "<p>The Firm Order Commitment (FOC) date for phone number porting orders. This field is null\n         if a phone number order is not a porting order.</p>"}))
    PhoneNumberOrder.type = Types::PhoneNumberOrder
    PhoneNumberOrderList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberOrder)
    PhoneNumberOrderStatus.add_member(:processing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Processing', traits: {"smithy.api#enumValue" => "Processing"}))
    PhoneNumberOrderStatus.add_member(:successful, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Successful', traits: {"smithy.api#enumValue" => "Successful"}))
    PhoneNumberOrderStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    PhoneNumberOrderStatus.add_member(:partial, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Partial', traits: {"smithy.api#enumValue" => "Partial"}))
    PhoneNumberOrderStatus.add_member(:pending_documents, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PendingDocuments', traits: {"smithy.api#enumValue" => "PendingDocuments"}))
    PhoneNumberOrderStatus.add_member(:submitted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Submitted', traits: {"smithy.api#enumValue" => "Submitted"}))
    PhoneNumberOrderStatus.add_member(:foc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FOC', traits: {"smithy.api#enumValue" => "FOC"}))
    PhoneNumberOrderStatus.add_member(:change_requested, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ChangeRequested', traits: {"smithy.api#enumValue" => "ChangeRequested"}))
    PhoneNumberOrderStatus.add_member(:exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Exception', traits: {"smithy.api#enumValue" => "Exception"}))
    PhoneNumberOrderStatus.add_member(:cancel_requested, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CancelRequested', traits: {"smithy.api#enumValue" => "CancelRequested"}))
    PhoneNumberOrderStatus.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Cancelled', traits: {"smithy.api#enumValue" => "Cancelled"}))
    PhoneNumberOrderType.add_member(:new, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'New', traits: {"smithy.api#enumValue" => "New"}))
    PhoneNumberOrderType.add_member(:porting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Porting', traits: {"smithy.api#enumValue" => "Porting"}))
    PhoneNumberProductType.add_member(:voice_connector, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VoiceConnector', traits: {"smithy.api#enumValue" => "VoiceConnector"}))
    PhoneNumberProductType.add_member(:sip_media_application_dial_in, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SipMediaApplicationDialIn', traits: {"smithy.api#enumValue" => "SipMediaApplicationDialIn"}))
    PhoneNumberStatus.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Cancelled', traits: {"smithy.api#enumValue" => "Cancelled"}))
    PhoneNumberStatus.add_member(:portin_cancel_requested, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PortinCancelRequested', traits: {"smithy.api#enumValue" => "PortinCancelRequested"}))
    PhoneNumberStatus.add_member(:portin_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PortinInProgress', traits: {"smithy.api#enumValue" => "PortinInProgress"}))
    PhoneNumberStatus.add_member(:acquire_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AcquireInProgress', traits: {"smithy.api#enumValue" => "AcquireInProgress"}))
    PhoneNumberStatus.add_member(:acquire_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AcquireFailed', traits: {"smithy.api#enumValue" => "AcquireFailed"}))
    PhoneNumberStatus.add_member(:unassigned, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Unassigned', traits: {"smithy.api#enumValue" => "Unassigned"}))
    PhoneNumberStatus.add_member(:assigned, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Assigned', traits: {"smithy.api#enumValue" => "Assigned"}))
    PhoneNumberStatus.add_member(:release_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReleaseInProgress', traits: {"smithy.api#enumValue" => "ReleaseInProgress"}))
    PhoneNumberStatus.add_member(:delete_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DeleteInProgress', traits: {"smithy.api#enumValue" => "DeleteInProgress"}))
    PhoneNumberStatus.add_member(:release_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReleaseFailed', traits: {"smithy.api#enumValue" => "ReleaseFailed"}))
    PhoneNumberStatus.add_member(:delete_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DeleteFailed', traits: {"smithy.api#enumValue" => "DeleteFailed"}))
    PhoneNumberType.add_member(:local, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Local', traits: {"smithy.api#enumValue" => "Local"}))
    PhoneNumberType.add_member(:toll_free, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TollFree', traits: {"smithy.api#enumValue" => "TollFree"}))
    PhoneNumberTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberType)
    Proxy.add_member(:default_session_expiry_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'DefaultSessionExpiryMinutes', traits: {"smithy.api#documentation" => "<p>The default number of minutes allowed for proxy sessions.</p>"}))
    Proxy.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Disabled', traits: {"smithy.api#documentation" => "<p>When true, stops proxy sessions from being created on the specified Amazon Chime SDK Voice Connector.</p>"}))
    Proxy.add_member(:fall_back_phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: 'FallBackPhoneNumber', traits: {"smithy.api#documentation" => "<p>The phone number to route calls to after a proxy session expires.</p>"}))
    Proxy.add_member(:phone_number_countries, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'PhoneNumberCountries', traits: {"smithy.api#documentation" => "<p>The countries for proxy phone numbers to be selected from.</p>"}))
    Proxy.type = Types::Proxy
    ProxySession.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString128, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>"}))
    ProxySession.add_member(:proxy_session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString128, location_name: 'ProxySessionId', traits: {"smithy.api#documentation" => "<p>The proxy session ID.</p>"}))
    ProxySession.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String128, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The proxy session name.</p>"}))
    ProxySession.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ProxySessionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The proxy session status.</p>"}))
    ProxySession.add_member(:expiry_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'ExpiryMinutes', traits: {"smithy.api#documentation" => "<p>The number of minutes allowed for the proxy session.</p>"}))
    ProxySession.add_member(:capabilities, Smithy::Schema::Shapes::ShapeRef.new(shape: CapabilityList, location_name: 'Capabilities', traits: {"smithy.api#documentation" => "<p>The proxy session capabilities.</p>"}))
    ProxySession.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The created time stamp, in ISO 8601 format.</p>"}))
    ProxySession.add_member(:updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'UpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The updated time stamp, in ISO 8601 format.</p>"}))
    ProxySession.add_member(:ended_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'EndedTimestamp', traits: {"smithy.api#documentation" => "<p>The ended time stamp, in ISO 8601 format.</p>"}))
    ProxySession.add_member(:participants, Smithy::Schema::Shapes::ShapeRef.new(shape: Participants, location_name: 'Participants', traits: {"smithy.api#documentation" => "<p>The proxy session participants.</p>"}))
    ProxySession.add_member(:number_selection_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberSelectionBehavior, location_name: 'NumberSelectionBehavior', traits: {"smithy.api#documentation" => "<p>The preference for proxy phone number reuse, or stickiness, between the same participants across sessions.</p>"}))
    ProxySession.add_member(:geo_match_level, Smithy::Schema::Shapes::ShapeRef.new(shape: GeoMatchLevel, location_name: 'GeoMatchLevel', traits: {"smithy.api#documentation" => "<p>The preference for matching the country or area code of the proxy phone number with that of the first participant.</p>"}))
    ProxySession.add_member(:geo_match_params, Smithy::Schema::Shapes::ShapeRef.new(shape: GeoMatchParams, location_name: 'GeoMatchParams', traits: {"smithy.api#documentation" => "<p>The country and area code for the proxy phone number.</p>"}))
    ProxySession.type = Types::ProxySession
    ProxySessionStatus.add_member(:open, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Open', traits: {"smithy.api#enumValue" => "Open"}))
    ProxySessionStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InProgress', traits: {"smithy.api#enumValue" => "InProgress"}))
    ProxySessionStatus.add_member(:closed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Closed', traits: {"smithy.api#enumValue" => "Closed"}))
    ProxySessions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProxySession)
    PutSipMediaApplicationAlexaSkillConfigurationRequest.add_member(:sip_media_application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'SipMediaApplicationId', traits: {"smithy.api#documentation" => "<p>The SIP media application ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutSipMediaApplicationAlexaSkillConfigurationRequest.add_member(:sip_media_application_alexa_skill_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SipMediaApplicationAlexaSkillConfiguration, location_name: 'SipMediaApplicationAlexaSkillConfiguration', traits: {"smithy.api#documentation" => "<p>The Alexa Skill configuration.</p>"}))
    PutSipMediaApplicationAlexaSkillConfigurationRequest.type = Types::PutSipMediaApplicationAlexaSkillConfigurationRequest
    PutSipMediaApplicationAlexaSkillConfigurationResponse.add_member(:sip_media_application_alexa_skill_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SipMediaApplicationAlexaSkillConfiguration, location_name: 'SipMediaApplicationAlexaSkillConfiguration', traits: {"smithy.api#documentation" => "<p>Returns the Alexa Skill configuration.</p>"}))
    PutSipMediaApplicationAlexaSkillConfigurationResponse.type = Types::PutSipMediaApplicationAlexaSkillConfigurationResponse
    PutSipMediaApplicationLoggingConfigurationRequest.add_member(:sip_media_application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'SipMediaApplicationId', traits: {"smithy.api#documentation" => "<p>The SIP media application ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutSipMediaApplicationLoggingConfigurationRequest.add_member(:sip_media_application_logging_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SipMediaApplicationLoggingConfiguration, location_name: 'SipMediaApplicationLoggingConfiguration', traits: {"smithy.api#documentation" => "<p>The logging configuration for the specified SIP media application.</p>"}))
    PutSipMediaApplicationLoggingConfigurationRequest.type = Types::PutSipMediaApplicationLoggingConfigurationRequest
    PutSipMediaApplicationLoggingConfigurationResponse.add_member(:sip_media_application_logging_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SipMediaApplicationLoggingConfiguration, location_name: 'SipMediaApplicationLoggingConfiguration', traits: {"smithy.api#documentation" => "<p>The updated logging configuration for the specified SIP media application.</p>"}))
    PutSipMediaApplicationLoggingConfigurationResponse.type = Types::PutSipMediaApplicationLoggingConfigurationResponse
    PutVoiceConnectorEmergencyCallingConfigurationRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutVoiceConnectorEmergencyCallingConfigurationRequest.add_member(:emergency_calling_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EmergencyCallingConfiguration, location_name: 'EmergencyCallingConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration being updated.</p>", "smithy.api#required" => {}}))
    PutVoiceConnectorEmergencyCallingConfigurationRequest.type = Types::PutVoiceConnectorEmergencyCallingConfigurationRequest
    PutVoiceConnectorEmergencyCallingConfigurationResponse.add_member(:emergency_calling_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EmergencyCallingConfiguration, location_name: 'EmergencyCallingConfiguration', traits: {"smithy.api#documentation" => "<p>The updated configuration.</p>"}))
    PutVoiceConnectorEmergencyCallingConfigurationResponse.type = Types::PutVoiceConnectorEmergencyCallingConfigurationResponse
    PutVoiceConnectorExternalSystemsConfigurationRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString128, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The ID of the Voice Connector for which to add the external system\n         configuration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutVoiceConnectorExternalSystemsConfigurationRequest.add_member(:session_border_controller_types, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionBorderControllerTypeList, location_name: 'SessionBorderControllerTypes', traits: {"smithy.api#documentation" => "<p>The session border controllers to use.</p>"}))
    PutVoiceConnectorExternalSystemsConfigurationRequest.add_member(:contact_center_system_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactCenterSystemTypeList, location_name: 'ContactCenterSystemTypes', traits: {"smithy.api#documentation" => "<p>The contact center system to use.</p>"}))
    PutVoiceConnectorExternalSystemsConfigurationRequest.type = Types::PutVoiceConnectorExternalSystemsConfigurationRequest
    PutVoiceConnectorExternalSystemsConfigurationResponse.add_member(:external_systems_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalSystemsConfiguration, location_name: 'ExternalSystemsConfiguration', traits: {"smithy.api#documentation" => "<p>An object that contains information about an external systems configuration for a Voice Connector.</p>"}))
    PutVoiceConnectorExternalSystemsConfigurationResponse.type = Types::PutVoiceConnectorExternalSystemsConfigurationResponse
    PutVoiceConnectorLoggingConfigurationRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutVoiceConnectorLoggingConfigurationRequest.add_member(:logging_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: 'LoggingConfiguration', traits: {"smithy.api#documentation" => "<p>The logging configuration being updated.</p>", "smithy.api#required" => {}}))
    PutVoiceConnectorLoggingConfigurationRequest.type = Types::PutVoiceConnectorLoggingConfigurationRequest
    PutVoiceConnectorLoggingConfigurationResponse.add_member(:logging_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: 'LoggingConfiguration', traits: {"smithy.api#documentation" => "<p>The updated logging configuration.</p>"}))
    PutVoiceConnectorLoggingConfigurationResponse.type = Types::PutVoiceConnectorLoggingConfigurationResponse
    PutVoiceConnectorOriginationRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutVoiceConnectorOriginationRequest.add_member(:origination, Smithy::Schema::Shapes::ShapeRef.new(shape: Origination, location_name: 'Origination', traits: {"smithy.api#documentation" => "<p>The origination settings being updated.</p>", "smithy.api#required" => {}}))
    PutVoiceConnectorOriginationRequest.type = Types::PutVoiceConnectorOriginationRequest
    PutVoiceConnectorOriginationResponse.add_member(:origination, Smithy::Schema::Shapes::ShapeRef.new(shape: Origination, location_name: 'Origination', traits: {"smithy.api#documentation" => "<p>The updated origination settings.</p>"}))
    PutVoiceConnectorOriginationResponse.type = Types::PutVoiceConnectorOriginationResponse
    PutVoiceConnectorProxyRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString128, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutVoiceConnectorProxyRequest.add_member(:default_session_expiry_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'DefaultSessionExpiryMinutes', traits: {"smithy.api#documentation" => "<p>The default number of minutes allowed for proxy session.</p>", "smithy.api#required" => {}}))
    PutVoiceConnectorProxyRequest.add_member(:phone_number_pool_countries, Smithy::Schema::Shapes::ShapeRef.new(shape: CountryList, location_name: 'PhoneNumberPoolCountries', traits: {"smithy.api#documentation" => "<p>The countries for proxy phone numbers to be selected from.</p>", "smithy.api#required" => {}}))
    PutVoiceConnectorProxyRequest.add_member(:fall_back_phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: 'FallBackPhoneNumber', traits: {"smithy.api#documentation" => "<p>The phone number to route calls to after a proxy session expires.</p>"}))
    PutVoiceConnectorProxyRequest.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Disabled', traits: {"smithy.api#documentation" => "<p>When true, stops proxy sessions from being created on the specified Amazon Chime SDK Voice Connector.</p>"}))
    PutVoiceConnectorProxyRequest.type = Types::PutVoiceConnectorProxyRequest
    PutVoiceConnectorProxyResponse.add_member(:proxy, Smithy::Schema::Shapes::ShapeRef.new(shape: Proxy, location_name: 'Proxy', traits: {"smithy.api#documentation" => "<p>The proxy configuration details.</p>"}))
    PutVoiceConnectorProxyResponse.type = Types::PutVoiceConnectorProxyResponse
    PutVoiceConnectorStreamingConfigurationRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutVoiceConnectorStreamingConfigurationRequest.add_member(:streaming_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamingConfiguration, location_name: 'StreamingConfiguration', traits: {"smithy.api#documentation" => "<p>The streaming settings being updated.</p>", "smithy.api#required" => {}}))
    PutVoiceConnectorStreamingConfigurationRequest.type = Types::PutVoiceConnectorStreamingConfigurationRequest
    PutVoiceConnectorStreamingConfigurationResponse.add_member(:streaming_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamingConfiguration, location_name: 'StreamingConfiguration', traits: {"smithy.api#documentation" => "<p>The updated streaming settings.</p>"}))
    PutVoiceConnectorStreamingConfigurationResponse.type = Types::PutVoiceConnectorStreamingConfigurationResponse
    PutVoiceConnectorTerminationCredentialsRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutVoiceConnectorTerminationCredentialsRequest.add_member(:credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialList, location_name: 'Credentials', traits: {"smithy.api#documentation" => "<p>The termination credentials being updated.</p>"}))
    PutVoiceConnectorTerminationCredentialsRequest.type = Types::PutVoiceConnectorTerminationCredentialsRequest
    PutVoiceConnectorTerminationRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutVoiceConnectorTerminationRequest.add_member(:termination, Smithy::Schema::Shapes::ShapeRef.new(shape: Termination, location_name: 'Termination', traits: {"smithy.api#documentation" => "<p>The termination settings to be updated.</p>", "smithy.api#required" => {}}))
    PutVoiceConnectorTerminationRequest.type = Types::PutVoiceConnectorTerminationRequest
    PutVoiceConnectorTerminationResponse.add_member(:termination, Smithy::Schema::Shapes::ShapeRef.new(shape: Termination, location_name: 'Termination', traits: {"smithy.api#documentation" => "<p>The updated termination settings.</p>"}))
    PutVoiceConnectorTerminationResponse.type = Types::PutVoiceConnectorTerminationResponse
    ResourceLimitExceededException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    ResourceLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ResourceLimitExceededException.type = Types::ResourceLimitExceededException
    RestorePhoneNumberRequest.add_member(:phone_number_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: 'PhoneNumberId', traits: {"smithy.api#documentation" => "<p>The ID of the phone number being restored.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RestorePhoneNumberRequest.type = Types::RestorePhoneNumberRequest
    RestorePhoneNumberResponse.add_member(:phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'PhoneNumber', traits: {"smithy.api#documentation" => "<p>The restored phone number.</p>"}))
    RestorePhoneNumberResponse.type = Types::RestorePhoneNumberResponse
    SMACreateCallArgumentsMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString)
    SMACreateCallArgumentsMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString)
    SMAUpdateCallArgumentsMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString)
    SMAUpdateCallArgumentsMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString)
    SearchAvailablePhoneNumbersRequest.add_member(:area_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AreaCode', traits: {"smithy.api#documentation" => "<p>Confines a search to just the phone numbers associated with the specified area code.</p>", "smithy.api#httpQuery" => "area-code"}))
    SearchAvailablePhoneNumbersRequest.add_member(:city, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'City', traits: {"smithy.api#documentation" => "<p>Confines a search to just the phone numbers associated with the specified city.</p>", "smithy.api#httpQuery" => "city"}))
    SearchAvailablePhoneNumbersRequest.add_member(:country, Smithy::Schema::Shapes::ShapeRef.new(shape: Alpha2CountryCode, location_name: 'Country', traits: {"smithy.api#documentation" => "<p>Confines a search to just the phone numbers associated with the specified country.</p>", "smithy.api#httpQuery" => "country"}))
    SearchAvailablePhoneNumbersRequest.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'State', traits: {"smithy.api#documentation" => "<p>Confines a search to just the phone numbers associated with the specified state.</p>", "smithy.api#httpQuery" => "state"}))
    SearchAvailablePhoneNumbersRequest.add_member(:toll_free_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: TollFreePrefix, location_name: 'TollFreePrefix', traits: {"smithy.api#documentation" => "<p>Confines a search to just the phone numbers associated with the specified toll-free prefix.</p>", "smithy.api#httpQuery" => "toll-free-prefix"}))
    SearchAvailablePhoneNumbersRequest.add_member(:phone_number_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberType, location_name: 'PhoneNumberType', traits: {"smithy.api#documentation" => "<p>Confines a search to just the phone numbers associated with the specified phone number type, either <b>local</b> or <b>toll-free</b>.</p>", "smithy.api#httpQuery" => "phone-number-type"}))
    SearchAvailablePhoneNumbersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>", "smithy.api#httpQuery" => "max-results"}))
    SearchAvailablePhoneNumbersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token used to return the next page of results.</p>", "smithy.api#httpQuery" => "next-token"}))
    SearchAvailablePhoneNumbersRequest.type = Types::SearchAvailablePhoneNumbersRequest
    SearchAvailablePhoneNumbersResponse.add_member(:e164_phone_numbers, Smithy::Schema::Shapes::ShapeRef.new(shape: E164PhoneNumberList, location_name: 'E164PhoneNumbers', traits: {"smithy.api#documentation" => "<p>Confines a search to just the phone numbers in the E.164 format.</p>"}))
    SearchAvailablePhoneNumbersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token used to return the next page of results.</p>"}))
    SearchAvailablePhoneNumbersResponse.type = Types::SearchAvailablePhoneNumbersResponse
    SensitiveStringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString)
    ServerSideEncryptionConfiguration.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'KmsKeyArn', traits: {"smithy.api#documentation" => "<p>The ARN of the KMS key used to encrypt the enrollment data in a voice profile domain. \n         Asymmetric customer managed keys are not supported.</p>", "smithy.api#required" => {}}))
    ServerSideEncryptionConfiguration.type = Types::ServerSideEncryptionConfiguration
    ServiceFailureException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    ServiceFailureException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ServiceFailureException.type = Types::ServiceFailureException
    ServiceUnavailableException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    ServiceUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SessionBorderControllerType.add_member(:ribbon_sbc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RIBBON_SBC', traits: {"smithy.api#enumValue" => "RIBBON_SBC"}))
    SessionBorderControllerType.add_member(:oracle_acme_packet_sbc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORACLE_ACME_PACKET_SBC', traits: {"smithy.api#enumValue" => "ORACLE_ACME_PACKET_SBC"}))
    SessionBorderControllerType.add_member(:avaya_sbce, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAYA_SBCE', traits: {"smithy.api#enumValue" => "AVAYA_SBCE"}))
    SessionBorderControllerType.add_member(:cisco_unified_border_element, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CISCO_UNIFIED_BORDER_ELEMENT', traits: {"smithy.api#enumValue" => "CISCO_UNIFIED_BORDER_ELEMENT"}))
    SessionBorderControllerType.add_member(:audiocodes_mediant_sbc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUDIOCODES_MEDIANT_SBC', traits: {"smithy.api#enumValue" => "AUDIOCODES_MEDIANT_SBC"}))
    SessionBorderControllerTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SessionBorderControllerType)
    SipHeadersMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString)
    SipHeadersMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString)
    SipMediaApplication.add_member(:sip_media_application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'SipMediaApplicationId', traits: {"smithy.api#documentation" => "<p>A SIP media application's ID.</p>"}))
    SipMediaApplication.add_member(:aws_region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AwsRegion', traits: {"smithy.api#documentation" => "<p>The AWS Region in which the SIP media application is created.</p>"}))
    SipMediaApplication.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SipMediaApplicationName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The SIP media application's name.</p>"}))
    SipMediaApplication.add_member(:endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: SipMediaApplicationEndpointList, location_name: 'Endpoints', traits: {"smithy.api#documentation" => "<p>List of endpoints for a SIP media application. Currently, only one endpoint per \n         SIP media application is permitted.</p>"}))
    SipMediaApplication.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The SIP media application creation timestamp, in ISO 8601 format.</p>"}))
    SipMediaApplication.add_member(:updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'UpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the SIP media application was updated.</p>"}))
    SipMediaApplication.add_member(:sip_media_application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'SipMediaApplicationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the SIP media application.</p>"}))
    SipMediaApplication.type = Types::SipMediaApplication
    SipMediaApplicationAlexaSkillConfiguration.add_member(:alexa_skill_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AlexaSkillStatus, location_name: 'AlexaSkillStatus', traits: {"smithy.api#documentation" => "<p>The status of the Alexa Skill configuration.</p>", "smithy.api#required" => {}}))
    SipMediaApplicationAlexaSkillConfiguration.add_member(:alexa_skill_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AlexaSkillIdList, location_name: 'AlexaSkillIds', traits: {"smithy.api#documentation" => "<p>The ID of the Alexa Skill configuration.</p>", "smithy.api#required" => {}}))
    SipMediaApplicationAlexaSkillConfiguration.type = Types::SipMediaApplicationAlexaSkillConfiguration
    SipMediaApplicationCall.add_member(:transaction_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'TransactionId', traits: {"smithy.api#documentation" => "<p>The call's transaction ID.</p>"}))
    SipMediaApplicationCall.type = Types::SipMediaApplicationCall
    SipMediaApplicationEndpoint.add_member(:lambda_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionArn, location_name: 'LambdaArn', traits: {"smithy.api#documentation" => "<p>Valid Amazon Resource Name (ARN) of the Lambda function, version, or alias. \n         The function must be created in the same AWS Region as the SIP media application.</p>"}))
    SipMediaApplicationEndpoint.type = Types::SipMediaApplicationEndpoint
    SipMediaApplicationEndpointList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SipMediaApplicationEndpoint)
    SipMediaApplicationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SipMediaApplication)
    SipMediaApplicationLoggingConfiguration.add_member(:enable_sip_media_application_message_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnableSipMediaApplicationMessageLogs', traits: {"smithy.api#documentation" => "<p>Enables message logging for the specified SIP media application.</p>"}))
    SipMediaApplicationLoggingConfiguration.type = Types::SipMediaApplicationLoggingConfiguration
    SipRule.add_member(:sip_rule_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'SipRuleId', traits: {"smithy.api#documentation" => "<p>A SIP rule's ID.</p>"}))
    SipRule.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SipRuleName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A SIP rule's name.</p>"}))
    SipRule.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Disabled', traits: {"smithy.api#documentation" => "<p>Indicates whether the SIP rule is enabled or disabled. You must disable a rule before you can delete it.</p>"}))
    SipRule.add_member(:trigger_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SipRuleTriggerType, location_name: 'TriggerType', traits: {"smithy.api#documentation" => "<p>The type of trigger set for a SIP rule, either a phone number or a URI request host name.</p>"}))
    SipRule.add_member(:trigger_value, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'TriggerValue', traits: {"smithy.api#documentation" => "<p>The value set for a SIP rule's trigger type. Either a phone number or a URI hostname.</p>"}))
    SipRule.add_member(:target_applications, Smithy::Schema::Shapes::ShapeRef.new(shape: SipRuleTargetApplicationList, location_name: 'TargetApplications', traits: {"smithy.api#documentation" => "<p>The target SIP media application and other details, such as priority and AWS Region, \n         to be specified in the SIP rule. Only one SIP rule per AWS Region can be provided.</p>"}))
    SipRule.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the SIP rule was created, in ISO 8601 format.</p>"}))
    SipRule.add_member(:updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'UpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the SIP rule was updated, in ISO 8601 format.</p>"}))
    SipRule.type = Types::SipRule
    SipRuleList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SipRule)
    SipRuleTargetApplication.add_member(:sip_media_application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'SipMediaApplicationId', traits: {"smithy.api#documentation" => "<p>The ID of a rule's target SIP media application.</p>"}))
    SipRuleTargetApplication.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: SipApplicationPriority, location_name: 'Priority', traits: {"smithy.api#documentation" => "<p>The priority setting of a rule's target SIP media application.</p>"}))
    SipRuleTargetApplication.add_member(:aws_region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AwsRegion', traits: {"smithy.api#documentation" => "<p>The AWS Region of a rule's target SIP media application.</p>"}))
    SipRuleTargetApplication.type = Types::SipRuleTargetApplication
    SipRuleTargetApplicationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SipRuleTargetApplication)
    SipRuleTriggerType.add_member(:to_phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ToPhoneNumber', traits: {"smithy.api#enumValue" => "ToPhoneNumber"}))
    SipRuleTriggerType.add_member(:request_uri_hostname, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RequestUriHostname', traits: {"smithy.api#enumValue" => "RequestUriHostname"}))
    SpeakerSearchDetails.add_member(:results, Smithy::Schema::Shapes::ShapeRef.new(shape: SpeakerSearchResultList, location_name: 'Results', traits: {"smithy.api#documentation" => "<p>The result value in the speaker search details.</p>"}))
    SpeakerSearchDetails.add_member(:voiceprint_generation_status, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString256, location_name: 'VoiceprintGenerationStatus', traits: {"smithy.api#documentation" => "<p>The status of a voice print generation operation, <code>VoiceprintGenerationSuccess</code> or <code>VoiceprintGenerationFailure</code>..</p>"}))
    SpeakerSearchDetails.type = Types::SpeakerSearchDetails
    SpeakerSearchResult.add_member(:confidence_score, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfidenceScore, location_name: 'ConfidenceScore', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The confidence score in the speaker search analysis.</p>"}))
    SpeakerSearchResult.add_member(:voice_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString256, location_name: 'VoiceProfileId', traits: {"smithy.api#documentation" => "<p>The voice profile ID.</p>"}))
    SpeakerSearchResult.type = Types::SpeakerSearchResult
    SpeakerSearchResultList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SpeakerSearchResult)
    SpeakerSearchTask.add_member(:speaker_search_task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString256, location_name: 'SpeakerSearchTaskId', traits: {"smithy.api#documentation" => "<p>The speaker search task ID.</p>"}))
    SpeakerSearchTask.add_member(:speaker_search_task_status, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'SpeakerSearchTaskStatus', traits: {"smithy.api#documentation" => "<p>The status of the speaker search task, <code>IN_QUEUE</code>, <code>IN_PROGRESS</code>, <code>PARTIAL_SUCCESS</code>, <code>SUCCEEDED</code>, \n         <code>FAILED</code>, or <code>STOPPED</code>.</p>"}))
    SpeakerSearchTask.add_member(:call_details, Smithy::Schema::Shapes::ShapeRef.new(shape: CallDetails, location_name: 'CallDetails', traits: {"smithy.api#documentation" => "<p>The call details of a speaker search task.</p>"}))
    SpeakerSearchTask.add_member(:speaker_search_details, Smithy::Schema::Shapes::ShapeRef.new(shape: SpeakerSearchDetails, location_name: 'SpeakerSearchDetails', traits: {"smithy.api#documentation" => "<p>The details of a speaker search task.</p>"}))
    SpeakerSearchTask.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which a speaker search task was created.</p>"}))
    SpeakerSearchTask.add_member(:updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'UpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which a speaker search task was updated.</p>"}))
    SpeakerSearchTask.add_member(:started_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'StartedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the speaker search task began.</p>"}))
    SpeakerSearchTask.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>A detailed message about the status of a speaker search.</p>"}))
    SpeakerSearchTask.type = Types::SpeakerSearchTask
    StartSpeakerSearchTaskRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString128, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartSpeakerSearchTaskRequest.add_member(:transaction_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString256, location_name: 'TransactionId', traits: {"smithy.api#documentation" => "<p>The transaction ID of the call being analyzed.</p>", "smithy.api#required" => {}}))
    StartSpeakerSearchTaskRequest.add_member(:voice_profile_domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString256, location_name: 'VoiceProfileDomainId', traits: {"smithy.api#documentation" => "<p>The ID of the voice profile domain that will store the voice profile.</p>", "smithy.api#required" => {}}))
    StartSpeakerSearchTaskRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestId, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>The unique identifier for the client request. Use a different token for different speaker search tasks.</p>"}))
    StartSpeakerSearchTaskRequest.add_member(:call_leg, Smithy::Schema::Shapes::ShapeRef.new(shape: CallLegType, location_name: 'CallLeg', traits: {"smithy.api#documentation" => "<p>Specifies which call leg to stream for speaker search.</p>"}))
    StartSpeakerSearchTaskRequest.type = Types::StartSpeakerSearchTaskRequest
    StartSpeakerSearchTaskResponse.add_member(:speaker_search_task, Smithy::Schema::Shapes::ShapeRef.new(shape: SpeakerSearchTask, location_name: 'SpeakerSearchTask', traits: {"smithy.api#documentation" => "<p>The details of the speaker search task.</p>"}))
    StartSpeakerSearchTaskResponse.type = Types::StartSpeakerSearchTaskResponse
    StartVoiceToneAnalysisTaskRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString128, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartVoiceToneAnalysisTaskRequest.add_member(:transaction_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString256, location_name: 'TransactionId', traits: {"smithy.api#documentation" => "<p>The transaction ID.</p>", "smithy.api#required" => {}}))
    StartVoiceToneAnalysisTaskRequest.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The language code.</p>", "smithy.api#required" => {}}))
    StartVoiceToneAnalysisTaskRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestId, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>The unique identifier for the client request. Use a different token for different voice tone analysis \n         tasks.</p>"}))
    StartVoiceToneAnalysisTaskRequest.type = Types::StartVoiceToneAnalysisTaskRequest
    StartVoiceToneAnalysisTaskResponse.add_member(:voice_tone_analysis_task, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceToneAnalysisTask, location_name: 'VoiceToneAnalysisTask', traits: {"smithy.api#documentation" => "<p>The details of the voice tone analysis task.</p>"}))
    StartVoiceToneAnalysisTaskResponse.type = Types::StartVoiceToneAnalysisTaskResponse
    StopSpeakerSearchTaskRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString128, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopSpeakerSearchTaskRequest.add_member(:speaker_search_task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString256, location_name: 'SpeakerSearchTaskId', traits: {"smithy.api#documentation" => "<p>The speaker search task ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopSpeakerSearchTaskRequest.type = Types::StopSpeakerSearchTaskRequest
    StopVoiceToneAnalysisTaskRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString128, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopVoiceToneAnalysisTaskRequest.add_member(:voice_tone_analysis_task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString256, location_name: 'VoiceToneAnalysisTaskId', traits: {"smithy.api#documentation" => "<p>The ID of the voice tone analysis task.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopVoiceToneAnalysisTaskRequest.type = Types::StopVoiceToneAnalysisTaskRequest
    StreamingConfiguration.add_member(:data_retention_in_hours, Smithy::Schema::Shapes::ShapeRef.new(shape: DataRetentionInHours, location_name: 'DataRetentionInHours', traits: {"smithy.api#documentation" => "<p>The amount of time, in hours, to the Kinesis data.</p>", "smithy.api#required" => {}}))
    StreamingConfiguration.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Disabled', traits: {"smithy.api#documentation" => "<p>When true, streaming to Kinesis is off.</p>", "smithy.api#required" => {}}))
    StreamingConfiguration.add_member(:streaming_notification_targets, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamingNotificationTargetList, location_name: 'StreamingNotificationTargets', traits: {"smithy.api#documentation" => "<p>The streaming notification targets.</p>"}))
    StreamingConfiguration.add_member(:media_insights_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaInsightsConfiguration, location_name: 'MediaInsightsConfiguration', traits: {"smithy.api#documentation" => "<p>The call analytics configuration.</p>"}))
    StreamingConfiguration.type = Types::StreamingConfiguration
    StreamingNotificationTarget.add_member(:notification_target, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationTarget, location_name: 'NotificationTarget', traits: {"smithy.api#documentation" => "<p>The streaming notification target.</p>"}))
    StreamingNotificationTarget.type = Types::StreamingNotificationTarget
    StreamingNotificationTargetList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StreamingNotificationTarget)
    StringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The tag's key.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The tag's value.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The ARN of the resource being tagged. </p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of the tags being added to the resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    Termination.add_member(:cps_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: CpsLimit, location_name: 'CpsLimit', traits: {"smithy.api#documentation" => "<p>The limit on calls per second. Max value based on account service quota. Default value of 1.</p>"}))
    Termination.add_member(:default_phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: 'DefaultPhoneNumber', traits: {"smithy.api#documentation" => "<p>The default outbound calling number.</p>"}))
    Termination.add_member(:calling_regions, Smithy::Schema::Shapes::ShapeRef.new(shape: CallingRegionList, location_name: 'CallingRegions', traits: {"smithy.api#documentation" => "<p>The countries to which calls are allowed, in ISO 3166-1 alpha-2 format. Required.</p>"}))
    Termination.add_member(:cidr_allowed_list, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'CidrAllowedList', traits: {"smithy.api#documentation" => "<p>The IP addresses allowed to make calls, in CIDR format.</p>"}))
    Termination.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Disabled', traits: {"smithy.api#documentation" => "<p>When termination is disabled, outbound calls cannot be made.</p>"}))
    Termination.type = Types::Termination
    TerminationHealth.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'Timestamp', traits: {"smithy.api#documentation" => "<p>The timestamp, in ISO 8601 format.</p>"}))
    TerminationHealth.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Source', traits: {"smithy.api#documentation" => "<p>The source IP address.</p>"}))
    TerminationHealth.type = Types::TerminationHealth
    ThrottledClientException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    ThrottledClientException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ThrottledClientException.type = Types::ThrottledClientException
    UnauthorizedClientException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    UnauthorizedClientException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    UnauthorizedClientException.type = Types::UnauthorizedClientException
    UnprocessableEntityException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    UnprocessableEntityException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    UnprocessableEntityException.type = Types::UnprocessableEntityException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The ARN of the resource having its tags removed.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The keys of the tags being removed from the resource.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateGlobalSettingsRequest.add_member(:voice_connector, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceConnectorSettings, location_name: 'VoiceConnector', traits: {"smithy.api#documentation" => "<p>The Voice Connector settings.</p>"}))
    UpdateGlobalSettingsRequest.type = Types::UpdateGlobalSettingsRequest
    UpdatePhoneNumberRequest.add_member(:phone_number_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: 'PhoneNumberId', traits: {"smithy.api#documentation" => "<p>The phone number ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePhoneNumberRequest.add_member(:product_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberProductType, location_name: 'ProductType', traits: {"smithy.api#documentation" => "<p>The product type.</p>"}))
    UpdatePhoneNumberRequest.add_member(:calling_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CallingName, location_name: 'CallingName', traits: {"smithy.api#documentation" => "<p>The outbound calling name associated with the phone number.</p>"}))
    UpdatePhoneNumberRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Specifies the updated name assigned to one or more phone numbers.</p>"}))
    UpdatePhoneNumberRequest.type = Types::UpdatePhoneNumberRequest
    UpdatePhoneNumberRequestItem.add_member(:phone_number_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: 'PhoneNumberId', traits: {"smithy.api#documentation" => "<p>The phone number ID to update.</p>", "smithy.api#required" => {}}))
    UpdatePhoneNumberRequestItem.add_member(:product_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberProductType, location_name: 'ProductType', traits: {"smithy.api#documentation" => "<p>The product type to update.</p>"}))
    UpdatePhoneNumberRequestItem.add_member(:calling_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CallingName, location_name: 'CallingName', traits: {"smithy.api#documentation" => "<p>The outbound calling name to update.</p>"}))
    UpdatePhoneNumberRequestItem.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumberName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the phone number.</p>"}))
    UpdatePhoneNumberRequestItem.type = Types::UpdatePhoneNumberRequestItem
    UpdatePhoneNumberRequestItemList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePhoneNumberRequestItem)
    UpdatePhoneNumberResponse.add_member(:phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'PhoneNumber', traits: {"smithy.api#documentation" => "<p>The updated phone number details.</p>"}))
    UpdatePhoneNumberResponse.type = Types::UpdatePhoneNumberResponse
    UpdatePhoneNumberSettingsRequest.add_member(:calling_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CallingName, location_name: 'CallingName', traits: {"smithy.api#documentation" => "<p>The default outbound calling name for the account.</p>", "smithy.api#required" => {}}))
    UpdatePhoneNumberSettingsRequest.type = Types::UpdatePhoneNumberSettingsRequest
    UpdateProxySessionRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString128, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateProxySessionRequest.add_member(:proxy_session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString128, location_name: 'ProxySessionId', traits: {"smithy.api#documentation" => "<p>The proxy session ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateProxySessionRequest.add_member(:capabilities, Smithy::Schema::Shapes::ShapeRef.new(shape: CapabilityList, location_name: 'Capabilities', traits: {"smithy.api#documentation" => "<p>The proxy session capabilities.</p>", "smithy.api#required" => {}}))
    UpdateProxySessionRequest.add_member(:expiry_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'ExpiryMinutes', traits: {"smithy.api#documentation" => "<p>The number of minutes allowed for the proxy session.</p>"}))
    UpdateProxySessionRequest.type = Types::UpdateProxySessionRequest
    UpdateProxySessionResponse.add_member(:proxy_session, Smithy::Schema::Shapes::ShapeRef.new(shape: ProxySession, location_name: 'ProxySession', traits: {"smithy.api#documentation" => "<p>The updated proxy session details.</p>"}))
    UpdateProxySessionResponse.type = Types::UpdateProxySessionResponse
    UpdateSipMediaApplicationCallRequest.add_member(:sip_media_application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'SipMediaApplicationId', traits: {"smithy.api#documentation" => "<p>The ID of the SIP media application handling the call.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSipMediaApplicationCallRequest.add_member(:transaction_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'TransactionId', traits: {"smithy.api#documentation" => "<p>The ID of the call transaction.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSipMediaApplicationCallRequest.add_member(:arguments, Smithy::Schema::Shapes::ShapeRef.new(shape: SMAUpdateCallArgumentsMap, location_name: 'Arguments', traits: {"smithy.api#documentation" => "<p>Arguments made available to the Lambda function as part of the \n         <code>CALL_UPDATE_REQUESTED</code> event. Can contain 0-20 key-value pairs.</p>", "smithy.api#required" => {}}))
    UpdateSipMediaApplicationCallRequest.type = Types::UpdateSipMediaApplicationCallRequest
    UpdateSipMediaApplicationCallResponse.add_member(:sip_media_application_call, Smithy::Schema::Shapes::ShapeRef.new(shape: SipMediaApplicationCall, location_name: 'SipMediaApplicationCall', traits: {"smithy.api#documentation" => "<p>A <code>Call</code> instance for a SIP media application.</p>"}))
    UpdateSipMediaApplicationCallResponse.type = Types::UpdateSipMediaApplicationCallResponse
    UpdateSipMediaApplicationRequest.add_member(:sip_media_application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'SipMediaApplicationId', traits: {"smithy.api#documentation" => "<p>The SIP media application ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSipMediaApplicationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SipMediaApplicationName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The new name for the specified SIP media application.</p>"}))
    UpdateSipMediaApplicationRequest.add_member(:endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: SipMediaApplicationEndpointList, location_name: 'Endpoints', traits: {"smithy.api#documentation" => "<p>The new set of endpoints for the specified SIP media application.</p>"}))
    UpdateSipMediaApplicationRequest.type = Types::UpdateSipMediaApplicationRequest
    UpdateSipMediaApplicationResponse.add_member(:sip_media_application, Smithy::Schema::Shapes::ShapeRef.new(shape: SipMediaApplication, location_name: 'SipMediaApplication', traits: {"smithy.api#documentation" => "<p>The updated SIP media application’s details.</p>"}))
    UpdateSipMediaApplicationResponse.type = Types::UpdateSipMediaApplicationResponse
    UpdateSipRuleRequest.add_member(:sip_rule_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'SipRuleId', traits: {"smithy.api#documentation" => "<p>The SIP rule ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSipRuleRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SipRuleName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The new name for the specified SIP rule.</p>", "smithy.api#required" => {}}))
    UpdateSipRuleRequest.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'Disabled', traits: {"smithy.api#documentation" => "<p>The new value that indicates whether the rule is disabled.</p>"}))
    UpdateSipRuleRequest.add_member(:target_applications, Smithy::Schema::Shapes::ShapeRef.new(shape: SipRuleTargetApplicationList, location_name: 'TargetApplications', traits: {"smithy.api#documentation" => "<p>The new list of target applications.</p>"}))
    UpdateSipRuleRequest.type = Types::UpdateSipRuleRequest
    UpdateSipRuleResponse.add_member(:sip_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: SipRule, location_name: 'SipRule', traits: {"smithy.api#documentation" => "<p>The updated SIP rule details.</p>"}))
    UpdateSipRuleResponse.type = Types::UpdateSipRuleResponse
    UpdateVoiceConnectorGroupRequest.add_member(:voice_connector_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'VoiceConnectorGroupId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateVoiceConnectorGroupRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceConnectorGroupName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the Voice Connector group.</p>", "smithy.api#required" => {}}))
    UpdateVoiceConnectorGroupRequest.add_member(:voice_connector_items, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceConnectorItemList, location_name: 'VoiceConnectorItems', traits: {"smithy.api#documentation" => "<p>The <code>VoiceConnectorItems</code> to associate with the Voice Connector \n         group.</p>", "smithy.api#required" => {}}))
    UpdateVoiceConnectorGroupRequest.type = Types::UpdateVoiceConnectorGroupRequest
    UpdateVoiceConnectorGroupResponse.add_member(:voice_connector_group, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceConnectorGroup, location_name: 'VoiceConnectorGroup', traits: {"smithy.api#documentation" => "<p>The updated Voice Connector group.</p>"}))
    UpdateVoiceConnectorGroupResponse.type = Types::UpdateVoiceConnectorGroupResponse
    UpdateVoiceConnectorRequest.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateVoiceConnectorRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceConnectorName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the Voice Connector.</p>", "smithy.api#required" => {}}))
    UpdateVoiceConnectorRequest.add_member(:require_encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RequireEncryption', traits: {"smithy.api#documentation" => "<p>When enabled, requires encryption for the Voice Connector.</p>", "smithy.api#required" => {}}))
    UpdateVoiceConnectorRequest.type = Types::UpdateVoiceConnectorRequest
    UpdateVoiceConnectorResponse.add_member(:voice_connector, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceConnector, location_name: 'VoiceConnector', traits: {"smithy.api#documentation" => "<p>The updated Voice Connector details.</p>"}))
    UpdateVoiceConnectorResponse.type = Types::UpdateVoiceConnectorResponse
    UpdateVoiceProfileDomainRequest.add_member(:voice_profile_domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString256, location_name: 'VoiceProfileDomainId', traits: {"smithy.api#documentation" => "<p>The domain ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateVoiceProfileDomainRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceProfileDomainName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the voice profile domain.</p>"}))
    UpdateVoiceProfileDomainRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceProfileDomainDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the voice profile domain.</p>"}))
    UpdateVoiceProfileDomainRequest.type = Types::UpdateVoiceProfileDomainRequest
    UpdateVoiceProfileDomainResponse.add_member(:voice_profile_domain, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceProfileDomain, location_name: 'VoiceProfileDomain', traits: {"smithy.api#documentation" => "<p>The updated details of the voice profile domain.</p>"}))
    UpdateVoiceProfileDomainResponse.type = Types::UpdateVoiceProfileDomainResponse
    UpdateVoiceProfileRequest.add_member(:voice_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString256, location_name: 'VoiceProfileId', traits: {"smithy.api#documentation" => "<p>The profile ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateVoiceProfileRequest.add_member(:speaker_search_task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString256, location_name: 'SpeakerSearchTaskId', traits: {"smithy.api#documentation" => "<p>The ID of the speaker search task.</p>", "smithy.api#required" => {}}))
    UpdateVoiceProfileRequest.type = Types::UpdateVoiceProfileRequest
    UpdateVoiceProfileResponse.add_member(:voice_profile, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceProfile, location_name: 'VoiceProfile', traits: {"smithy.api#documentation" => "<p>The updated voice profile settings.</p>"}))
    UpdateVoiceProfileResponse.type = Types::UpdateVoiceProfileResponse
    ValidateE911AddressRequest.add_member(:aws_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AwsAccountId', traits: {"smithy.api#documentation" => "<p>The AWS account ID.</p>", "smithy.api#required" => {}}))
    ValidateE911AddressRequest.add_member(:street_number, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: 'StreetNumber', traits: {"smithy.api#documentation" => "<p>The address street number, such as <code>200</code> or <code>2121</code>.</p>", "smithy.api#required" => {}}))
    ValidateE911AddressRequest.add_member(:street_info, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: 'StreetInfo', traits: {"smithy.api#documentation" => "<p>The address street information, such as <code>8th Avenue</code>.</p>", "smithy.api#required" => {}}))
    ValidateE911AddressRequest.add_member(:city, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: 'City', traits: {"smithy.api#documentation" => "<p>The address city, such as <code>Portland</code>.</p>", "smithy.api#required" => {}}))
    ValidateE911AddressRequest.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The address state, such as <code>ME</code>.</p>", "smithy.api#required" => {}}))
    ValidateE911AddressRequest.add_member(:country, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: 'Country', traits: {"smithy.api#documentation" => "<p>The country in the address being validated as two-letter country code in ISO 3166-1\n         alpha-2 format, such as <code>US</code>. For more information, see <a href=\"https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2\">ISO 3166-1 alpha-2</a> in\n         Wikipedia.</p>", "smithy.api#required" => {}}))
    ValidateE911AddressRequest.add_member(:postal_code, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: 'PostalCode', traits: {"smithy.api#documentation" => "<p>The dress postal code, such <code>04352</code>.</p>", "smithy.api#required" => {}}))
    ValidateE911AddressRequest.type = Types::ValidateE911AddressRequest
    ValidateE911AddressResponse.add_member(:validation_result, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationResult, location_name: 'ValidationResult', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Number indicating the result of address validation.</p>\n         <p>Each possible result is defined as follows:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>0</code> - Address validation succeeded.</p>\n            </li>\n            <li>\n               <p>\n                  <code>1</code> - Address validation succeeded. The address was a close enough\n               match and has been corrected as part of the address object.</p>\n            </li>\n            <li>\n               <p>\n                  <code>2</code> - Address validation failed. You should re-submit the validation\n               request with candidates from the <code>CandidateAddressList</code> result, if it's a\n               close match.</p>\n            </li>\n         </ul>"}))
    ValidateE911AddressResponse.add_member(:address_external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AddressExternalId', traits: {"smithy.api#documentation" => "<p>The ID that represents the address.</p>"}))
    ValidateE911AddressResponse.add_member(:address, Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: 'Address', traits: {"smithy.api#documentation" => "<p>The validated address.</p>"}))
    ValidateE911AddressResponse.add_member(:candidate_address_list, Smithy::Schema::Shapes::ShapeRef.new(shape: CandidateAddressList, location_name: 'CandidateAddressList', traits: {"smithy.api#documentation" => "<p>The list of address suggestions..</p>"}))
    ValidateE911AddressResponse.type = Types::ValidateE911AddressResponse
    VoiceConnector.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector's ID.</p>"}))
    VoiceConnector.add_member(:aws_region, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceConnectorAwsRegion, location_name: 'AwsRegion', traits: {"smithy.api#documentation" => "<p>The AWS Region in which the Voice Connector is created. \n         Default: us-east-1.</p>"}))
    VoiceConnector.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceConnectorName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The Voice Connector's name.</p>"}))
    VoiceConnector.add_member(:outbound_host_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OutboundHostName', traits: {"smithy.api#documentation" => "<p>The outbound host name for the Voice Connector.</p>"}))
    VoiceConnector.add_member(:require_encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RequireEncryption', traits: {"smithy.api#documentation" => "<p>Enables or disables encryption for the Voice Connector.</p>"}))
    VoiceConnector.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The Voice Connector's creation timestamp, in ISO 8601 format.</p>"}))
    VoiceConnector.add_member(:updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'UpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The Voice Connector's updated timestamp, in ISO 8601 format.</p>"}))
    VoiceConnector.add_member(:voice_connector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'VoiceConnectorArn', traits: {"smithy.api#documentation" => "<p>The ARN of the Voice Connector.</p>"}))
    VoiceConnector.add_member(:integration_type, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceConnectorIntegrationType, location_name: 'IntegrationType', traits: {"smithy.api#documentation" => "<p>The connectors for use with Amazon Connect.</p>"}))
    VoiceConnector.type = Types::VoiceConnector
    VoiceConnectorAwsRegion.add_member(:us_east_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'US_EAST_1', traits: {"smithy.api#enumValue" => "us-east-1"}))
    VoiceConnectorAwsRegion.add_member(:us_west_2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'US_WEST_2', traits: {"smithy.api#enumValue" => "us-west-2"}))
    VoiceConnectorAwsRegion.add_member(:ca_central_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CA_CENTRAL_1', traits: {"smithy.api#enumValue" => "ca-central-1"}))
    VoiceConnectorAwsRegion.add_member(:eu_central_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EU_CENTRAL_1', traits: {"smithy.api#enumValue" => "eu-central-1"}))
    VoiceConnectorAwsRegion.add_member(:eu_west_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EU_WEST_1', traits: {"smithy.api#enumValue" => "eu-west-1"}))
    VoiceConnectorAwsRegion.add_member(:eu_west_2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EU_WEST_2', traits: {"smithy.api#enumValue" => "eu-west-2"}))
    VoiceConnectorAwsRegion.add_member(:ap_northeast_2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AP_NORTHEAST_2', traits: {"smithy.api#enumValue" => "ap-northeast-2"}))
    VoiceConnectorAwsRegion.add_member(:ap_northeast_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AP_NORTHEAST_1', traits: {"smithy.api#enumValue" => "ap-northeast-1"}))
    VoiceConnectorAwsRegion.add_member(:ap_southeast_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AP_SOUTHEAST_1', traits: {"smithy.api#enumValue" => "ap-southeast-1"}))
    VoiceConnectorAwsRegion.add_member(:ap_southeast_2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AP_SOUTHEAST_2', traits: {"smithy.api#enumValue" => "ap-southeast-2"}))
    VoiceConnectorAwsRegionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceConnectorAwsRegion)
    VoiceConnectorGroup.add_member(:voice_connector_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'VoiceConnectorGroupId', traits: {"smithy.api#documentation" => "<p>The ID of a Voice Connector group.</p>"}))
    VoiceConnectorGroup.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceConnectorGroupName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of a Voice Connector group.</p>"}))
    VoiceConnectorGroup.add_member(:voice_connector_items, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceConnectorItemList, location_name: 'VoiceConnectorItems', traits: {"smithy.api#documentation" => "<p>The Voice Connectors to which you route inbound calls.</p>"}))
    VoiceConnectorGroup.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The Voice Connector group's creation time stamp, in ISO 8601 format.</p>"}))
    VoiceConnectorGroup.add_member(:updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'UpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The Voice Connector group's creation time stamp, in ISO 8601 format.</p>"}))
    VoiceConnectorGroup.add_member(:voice_connector_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'VoiceConnectorGroupArn', traits: {"smithy.api#documentation" => "<p>The ARN of the Voice Connector group.</p>"}))
    VoiceConnectorGroup.type = Types::VoiceConnectorGroup
    VoiceConnectorGroupList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceConnectorGroup)
    VoiceConnectorIntegrationType.add_member(:connect_call_transfer_connector, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONNECT_CALL_TRANSFER_CONNECTOR', traits: {"smithy.api#enumValue" => "CONNECT_CALL_TRANSFER_CONNECTOR"}))
    VoiceConnectorIntegrationType.add_member(:connect_analytics_connector, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONNECT_ANALYTICS_CONNECTOR', traits: {"smithy.api#enumValue" => "CONNECT_ANALYTICS_CONNECTOR"}))
    VoiceConnectorItem.add_member(:voice_connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'VoiceConnectorId', traits: {"smithy.api#documentation" => "<p>The Voice Connector ID.</p>", "smithy.api#required" => {}}))
    VoiceConnectorItem.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceConnectorItemPriority, location_name: 'Priority', traits: {"smithy.api#documentation" => "<p>The priority setting of a Voice Connector item. Calls are routed to hosts \n           in priority order, with 1 as the highest priority. When hosts have equal priority, \n           the system distributes calls among them based on their relative weight.</p>", "smithy.api#required" => {}}))
    VoiceConnectorItem.type = Types::VoiceConnectorItem
    VoiceConnectorItemList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceConnectorItem)
    VoiceConnectorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceConnector)
    VoiceConnectorSettings.add_member(:cdr_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CdrBucket', traits: {"smithy.api#documentation" => "<p>The S3 bucket that stores the Voice Connector's call detail records.</p>"}))
    VoiceConnectorSettings.type = Types::VoiceConnectorSettings
    VoiceProfile.add_member(:voice_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString256, location_name: 'VoiceProfileId', traits: {"smithy.api#documentation" => "<p>The ID of the voice profile.</p>"}))
    VoiceProfile.add_member(:voice_profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'VoiceProfileArn', traits: {"smithy.api#documentation" => "<p>The ARN of the voice profile.</p>"}))
    VoiceProfile.add_member(:voice_profile_domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString256, location_name: 'VoiceProfileDomainId', traits: {"smithy.api#documentation" => "<p>The ID of the domain that contains the voice profile.</p>"}))
    VoiceProfile.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the voice profile was created and enrolled.</p>"}))
    VoiceProfile.add_member(:updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'UpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the voice profile was last updated.</p>"}))
    VoiceProfile.add_member(:expiration_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'ExpirationTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which a voice profile expires unless you re-enroll the caller via the \n         <code>UpdateVoiceProfile</code> API.</p>"}))
    VoiceProfile.type = Types::VoiceProfile
    VoiceProfileDomain.add_member(:voice_profile_domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString256, location_name: 'VoiceProfileDomainId', traits: {"smithy.api#documentation" => "<p>The ID of the voice profile domain.</p>"}))
    VoiceProfileDomain.add_member(:voice_profile_domain_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'VoiceProfileDomainArn', traits: {"smithy.api#documentation" => "<p>The voice profile domain's Amazon Resource Number (ARN).</p>"}))
    VoiceProfileDomain.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceProfileDomainName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the voice profile domain.</p>"}))
    VoiceProfileDomain.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceProfileDomainDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the voice profile domain.</p>"}))
    VoiceProfileDomain.add_member(:server_side_encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: 'ServerSideEncryptionConfiguration', traits: {"smithy.api#documentation" => "<p>A structure that contains the configuration settings for server-side encryption.</p>"}))
    VoiceProfileDomain.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the voice profile domain was created.</p>"}))
    VoiceProfileDomain.add_member(:updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'UpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the voice profile was last updated.</p>"}))
    VoiceProfileDomain.type = Types::VoiceProfileDomain
    VoiceProfileDomainSummary.add_member(:voice_profile_domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString256, location_name: 'VoiceProfileDomainId', traits: {"smithy.api#documentation" => "<p>The ID of the voice profile domain summary.</p>"}))
    VoiceProfileDomainSummary.add_member(:voice_profile_domain_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'VoiceProfileDomainArn', traits: {"smithy.api#documentation" => "<p>The ARN of a voice profile in a voice profile domain summary.</p>"}))
    VoiceProfileDomainSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceProfileDomainName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the voice profile domain summary.</p>"}))
    VoiceProfileDomainSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceProfileDomainDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Describes the voice profile domain summary.</p>"}))
    VoiceProfileDomainSummary.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the voice profile domain summary was created.</p>"}))
    VoiceProfileDomainSummary.add_member(:updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'UpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the voice profile domain summary was last updated.</p>"}))
    VoiceProfileDomainSummary.type = Types::VoiceProfileDomainSummary
    VoiceProfileDomainSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceProfileDomainSummary)
    VoiceProfileSummary.add_member(:voice_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString256, location_name: 'VoiceProfileId', traits: {"smithy.api#documentation" => "<p>The ID of the voice profile in a voice profile summary.</p>"}))
    VoiceProfileSummary.add_member(:voice_profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'VoiceProfileArn', traits: {"smithy.api#documentation" => "<p>The ARN of the voice profile in a voice profile summary.</p>"}))
    VoiceProfileSummary.add_member(:voice_profile_domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString256, location_name: 'VoiceProfileDomainId', traits: {"smithy.api#documentation" => "<p>The ID of the voice profile domain in a voice profile summary.</p>"}))
    VoiceProfileSummary.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which a voice profile summary was created.</p>"}))
    VoiceProfileSummary.add_member(:updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'UpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which a voice profile summary was last updated.</p>"}))
    VoiceProfileSummary.add_member(:expiration_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'ExpirationTimestamp', traits: {"smithy.api#documentation" => "<p>Extends the life of the voice profile. You can use <code>UpdateVoiceProfile</code> to refresh an existing voice profile's voice print and extend the life of the summary.</p>"}))
    VoiceProfileSummary.type = Types::VoiceProfileSummary
    VoiceProfileSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceProfileSummary)
    VoiceToneAnalysisTask.add_member(:voice_tone_analysis_task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString256, location_name: 'VoiceToneAnalysisTaskId', traits: {"smithy.api#documentation" => "<p>The ID of the voice tone analysis task.</p>"}))
    VoiceToneAnalysisTask.add_member(:voice_tone_analysis_task_status, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'VoiceToneAnalysisTaskStatus', traits: {"smithy.api#documentation" => "<p>The status of a voice tone analysis task, <code>IN_QUEUE</code>, <code>IN_PROGRESS</code>, <code>PARTIAL_SUCCESS</code>, <code>SUCCEEDED</code>, \n         <code>FAILED</code>, or <code>STOPPED</code>.</p>"}))
    VoiceToneAnalysisTask.add_member(:call_details, Smithy::Schema::Shapes::ShapeRef.new(shape: CallDetails, location_name: 'CallDetails', traits: {"smithy.api#documentation" => "<p>The call details of a voice tone analysis task.</p>"}))
    VoiceToneAnalysisTask.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which a voice tone analysis task was created.</p>"}))
    VoiceToneAnalysisTask.add_member(:updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'UpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which a voice tone analysis task was updated.</p>"}))
    VoiceToneAnalysisTask.add_member(:started_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'StartedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which a voice tone analysis task started.</p>"}))
    VoiceToneAnalysisTask.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>The status of a voice tone analysis task.</p>"}))
    VoiceToneAnalysisTask.type = Types::VoiceToneAnalysisTask

    ChimeSDKTelephonyService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.chimesdkvoice#ChimeSDKTelephonyService"
      service.name = "ChimeSDKTelephonyService"
      service.version = "2022-08-03"
      service.traits = {"aws.api#service" => {"sdkId" => "Chime SDK Voice", "arnNamespace" => "chime", "cloudFormationName" => "ChimeSDKVoice", "cloudTrailEventSource" => "chimesdkvoice.amazonaws.com", "endpointPrefix" => "voice-chime"}, "aws.auth#sigv4" => {"name" => "chime"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Chime SDK Voice"}
      service.add_operation(:associate_phone_numbers_with_voice_connector, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#AssociatePhoneNumbersWithVoiceConnector"
        operation.name = "AssociatePhoneNumbersWithVoiceConnector"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatePhoneNumbersWithVoiceConnectorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatePhoneNumbersWithVoiceConnectorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/voice-connectors/{VoiceConnectorId}?operation=associate-phone-numbers", "code" => 200}}
      end)
      service.add_operation(:associate_phone_numbers_with_voice_connector_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#AssociatePhoneNumbersWithVoiceConnectorGroup"
        operation.name = "AssociatePhoneNumbersWithVoiceConnectorGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatePhoneNumbersWithVoiceConnectorGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatePhoneNumbersWithVoiceConnectorGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/voice-connector-groups/{VoiceConnectorGroupId}?operation=associate-phone-numbers", "code" => 200}}
      end)
      service.add_operation(:batch_delete_phone_number, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#BatchDeletePhoneNumber"
        operation.name = "BatchDeletePhoneNumber"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeletePhoneNumberRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeletePhoneNumberResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/phone-numbers?operation=batch-delete", "code" => 200}}
      end)
      service.add_operation(:batch_update_phone_number, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#BatchUpdatePhoneNumber"
        operation.name = "BatchUpdatePhoneNumber"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdatePhoneNumberRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdatePhoneNumberResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/phone-numbers?operation=batch-update", "code" => 200}}
      end)
      service.add_operation(:create_phone_number_order, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#CreatePhoneNumberOrder"
        operation.name = "CreatePhoneNumberOrder"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePhoneNumberOrderRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePhoneNumberOrderResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/phone-number-orders", "code" => 201}}
      end)
      service.add_operation(:create_proxy_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#CreateProxySession"
        operation.name = "CreateProxySession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProxySessionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProxySessionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/voice-connectors/{VoiceConnectorId}/proxy-sessions", "code" => 201}}
      end)
      service.add_operation(:create_sip_media_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#CreateSipMediaApplication"
        operation.name = "CreateSipMediaApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSipMediaApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSipMediaApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sip-media-applications", "code" => 201}}
      end)
      service.add_operation(:create_sip_media_application_call, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#CreateSipMediaApplicationCall"
        operation.name = "CreateSipMediaApplicationCall"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSipMediaApplicationCallRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSipMediaApplicationCallResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sip-media-applications/{SipMediaApplicationId}/calls", "code" => 201}}
      end)
      service.add_operation(:create_sip_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#CreateSipRule"
        operation.name = "CreateSipRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSipRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSipRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sip-rules", "code" => 201}}
      end)
      service.add_operation(:create_voice_connector, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#CreateVoiceConnector"
        operation.name = "CreateVoiceConnector"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVoiceConnectorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVoiceConnectorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/voice-connectors", "code" => 201}}
      end)
      service.add_operation(:create_voice_connector_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#CreateVoiceConnectorGroup"
        operation.name = "CreateVoiceConnectorGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVoiceConnectorGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVoiceConnectorGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/voice-connector-groups", "code" => 201}}
      end)
      service.add_operation(:create_voice_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#CreateVoiceProfile"
        operation.name = "CreateVoiceProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVoiceProfileRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVoiceProfileResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GoneException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/voice-profiles", "code" => 201}}
      end)
      service.add_operation(:create_voice_profile_domain, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#CreateVoiceProfileDomain"
        operation.name = "CreateVoiceProfileDomain"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVoiceProfileDomainRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVoiceProfileDomainResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/voice-profile-domains", "code" => 201}}
      end)
      service.add_operation(:delete_phone_number, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#DeletePhoneNumber"
        operation.name = "DeletePhoneNumber"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePhoneNumberRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/phone-numbers/{PhoneNumberId}", "code" => 204}}
      end)
      service.add_operation(:delete_proxy_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#DeleteProxySession"
        operation.name = "DeleteProxySession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProxySessionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/voice-connectors/{VoiceConnectorId}/proxy-sessions/{ProxySessionId}", "code" => 204}}
      end)
      service.add_operation(:delete_sip_media_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#DeleteSipMediaApplication"
        operation.name = "DeleteSipMediaApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSipMediaApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/sip-media-applications/{SipMediaApplicationId}", "code" => 204}}
      end)
      service.add_operation(:delete_sip_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#DeleteSipRule"
        operation.name = "DeleteSipRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSipRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/sip-rules/{SipRuleId}", "code" => 204}}
      end)
      service.add_operation(:delete_voice_connector, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#DeleteVoiceConnector"
        operation.name = "DeleteVoiceConnector"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVoiceConnectorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/voice-connectors/{VoiceConnectorId}", "code" => 204}}
      end)
      service.add_operation(:delete_voice_connector_emergency_calling_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#DeleteVoiceConnectorEmergencyCallingConfiguration"
        operation.name = "DeleteVoiceConnectorEmergencyCallingConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVoiceConnectorEmergencyCallingConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/voice-connectors/{VoiceConnectorId}/emergency-calling-configuration", "code" => 204}}
      end)
      service.add_operation(:delete_voice_connector_external_systems_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#DeleteVoiceConnectorExternalSystemsConfiguration"
        operation.name = "DeleteVoiceConnectorExternalSystemsConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVoiceConnectorExternalSystemsConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/voice-connectors/{VoiceConnectorId}/external-systems-configuration", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_voice_connector_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#DeleteVoiceConnectorGroup"
        operation.name = "DeleteVoiceConnectorGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVoiceConnectorGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/voice-connector-groups/{VoiceConnectorGroupId}", "code" => 204}}
      end)
      service.add_operation(:delete_voice_connector_origination, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#DeleteVoiceConnectorOrigination"
        operation.name = "DeleteVoiceConnectorOrigination"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVoiceConnectorOriginationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/voice-connectors/{VoiceConnectorId}/origination", "code" => 204}}
      end)
      service.add_operation(:delete_voice_connector_proxy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#DeleteVoiceConnectorProxy"
        operation.name = "DeleteVoiceConnectorProxy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVoiceConnectorProxyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/voice-connectors/{VoiceConnectorId}/programmable-numbers/proxy", "code" => 204}}
      end)
      service.add_operation(:delete_voice_connector_streaming_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#DeleteVoiceConnectorStreamingConfiguration"
        operation.name = "DeleteVoiceConnectorStreamingConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVoiceConnectorStreamingConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/voice-connectors/{VoiceConnectorId}/streaming-configuration", "code" => 204}}
      end)
      service.add_operation(:delete_voice_connector_termination, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#DeleteVoiceConnectorTermination"
        operation.name = "DeleteVoiceConnectorTermination"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVoiceConnectorTerminationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/voice-connectors/{VoiceConnectorId}/termination", "code" => 204}}
      end)
      service.add_operation(:delete_voice_connector_termination_credentials, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#DeleteVoiceConnectorTerminationCredentials"
        operation.name = "DeleteVoiceConnectorTerminationCredentials"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVoiceConnectorTerminationCredentialsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/voice-connectors/{VoiceConnectorId}/termination/credentials?operation=delete", "code" => 204}}
      end)
      service.add_operation(:delete_voice_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#DeleteVoiceProfile"
        operation.name = "DeleteVoiceProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVoiceProfileRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/voice-profiles/{VoiceProfileId}", "code" => 204}}
      end)
      service.add_operation(:delete_voice_profile_domain, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#DeleteVoiceProfileDomain"
        operation.name = "DeleteVoiceProfileDomain"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVoiceProfileDomainRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/voice-profile-domains/{VoiceProfileDomainId}", "code" => 204}}
      end)
      service.add_operation(:disassociate_phone_numbers_from_voice_connector, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#DisassociatePhoneNumbersFromVoiceConnector"
        operation.name = "DisassociatePhoneNumbersFromVoiceConnector"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociatePhoneNumbersFromVoiceConnectorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociatePhoneNumbersFromVoiceConnectorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/voice-connectors/{VoiceConnectorId}?operation=disassociate-phone-numbers", "code" => 200}}
      end)
      service.add_operation(:disassociate_phone_numbers_from_voice_connector_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#DisassociatePhoneNumbersFromVoiceConnectorGroup"
        operation.name = "DisassociatePhoneNumbersFromVoiceConnectorGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociatePhoneNumbersFromVoiceConnectorGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociatePhoneNumbersFromVoiceConnectorGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/voice-connector-groups/{VoiceConnectorGroupId}?operation=disassociate-phone-numbers", "code" => 200}}
      end)
      service.add_operation(:get_global_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetGlobalSettings"
        operation.name = "GetGlobalSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGlobalSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/settings", "code" => 200}}
      end)
      service.add_operation(:get_phone_number, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetPhoneNumber"
        operation.name = "GetPhoneNumber"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPhoneNumberRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPhoneNumberResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/phone-numbers/{PhoneNumberId}", "code" => 200}}
      end)
      service.add_operation(:get_phone_number_order, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetPhoneNumberOrder"
        operation.name = "GetPhoneNumberOrder"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPhoneNumberOrderRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPhoneNumberOrderResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/phone-number-orders/{PhoneNumberOrderId}", "code" => 200}}
      end)
      service.add_operation(:get_phone_number_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetPhoneNumberSettings"
        operation.name = "GetPhoneNumberSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPhoneNumberSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/settings/phone-number", "code" => 200}}
      end)
      service.add_operation(:get_proxy_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetProxySession"
        operation.name = "GetProxySession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetProxySessionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetProxySessionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-connectors/{VoiceConnectorId}/proxy-sessions/{ProxySessionId}", "code" => 200}}
      end)
      service.add_operation(:get_sip_media_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetSipMediaApplication"
        operation.name = "GetSipMediaApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSipMediaApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSipMediaApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sip-media-applications/{SipMediaApplicationId}", "code" => 200}}
      end)
      service.add_operation(:get_sip_media_application_alexa_skill_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetSipMediaApplicationAlexaSkillConfiguration"
        operation.name = "GetSipMediaApplicationAlexaSkillConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSipMediaApplicationAlexaSkillConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSipMediaApplicationAlexaSkillConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "Due to changes made by the Amazon Alexa service, this API is no longer available for use. For more information, refer to the Alexa Smart Properties page(https://developer.amazon.com/en-US/alexa/alexasmartproperties)."}, "smithy.api#http" => {"method" => "GET", "uri" => "/sip-media-applications/{SipMediaApplicationId}/alexa-skill-configuration", "code" => 200}}
      end)
      service.add_operation(:get_sip_media_application_logging_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetSipMediaApplicationLoggingConfiguration"
        operation.name = "GetSipMediaApplicationLoggingConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSipMediaApplicationLoggingConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSipMediaApplicationLoggingConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sip-media-applications/{SipMediaApplicationId}/logging-configuration", "code" => 200}}
      end)
      service.add_operation(:get_sip_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetSipRule"
        operation.name = "GetSipRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSipRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSipRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sip-rules/{SipRuleId}", "code" => 200}}
      end)
      service.add_operation(:get_speaker_search_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetSpeakerSearchTask"
        operation.name = "GetSpeakerSearchTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSpeakerSearchTaskRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSpeakerSearchTaskResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-connectors/{VoiceConnectorId}/speaker-search-tasks/{SpeakerSearchTaskId}", "code" => 200}}
      end)
      service.add_operation(:get_voice_connector, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetVoiceConnector"
        operation.name = "GetVoiceConnector"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVoiceConnectorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVoiceConnectorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-connectors/{VoiceConnectorId}", "code" => 200}}
      end)
      service.add_operation(:get_voice_connector_emergency_calling_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetVoiceConnectorEmergencyCallingConfiguration"
        operation.name = "GetVoiceConnectorEmergencyCallingConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVoiceConnectorEmergencyCallingConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVoiceConnectorEmergencyCallingConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-connectors/{VoiceConnectorId}/emergency-calling-configuration", "code" => 200}}
      end)
      service.add_operation(:get_voice_connector_external_systems_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetVoiceConnectorExternalSystemsConfiguration"
        operation.name = "GetVoiceConnectorExternalSystemsConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVoiceConnectorExternalSystemsConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVoiceConnectorExternalSystemsConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-connectors/{VoiceConnectorId}/external-systems-configuration", "code" => 200}}
      end)
      service.add_operation(:get_voice_connector_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetVoiceConnectorGroup"
        operation.name = "GetVoiceConnectorGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVoiceConnectorGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVoiceConnectorGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-connector-groups/{VoiceConnectorGroupId}", "code" => 200}}
      end)
      service.add_operation(:get_voice_connector_logging_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetVoiceConnectorLoggingConfiguration"
        operation.name = "GetVoiceConnectorLoggingConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVoiceConnectorLoggingConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVoiceConnectorLoggingConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-connectors/{VoiceConnectorId}/logging-configuration", "code" => 200}}
      end)
      service.add_operation(:get_voice_connector_origination, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetVoiceConnectorOrigination"
        operation.name = "GetVoiceConnectorOrigination"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVoiceConnectorOriginationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVoiceConnectorOriginationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-connectors/{VoiceConnectorId}/origination", "code" => 200}}
      end)
      service.add_operation(:get_voice_connector_proxy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetVoiceConnectorProxy"
        operation.name = "GetVoiceConnectorProxy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVoiceConnectorProxyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVoiceConnectorProxyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-connectors/{VoiceConnectorId}/programmable-numbers/proxy", "code" => 200}}
      end)
      service.add_operation(:get_voice_connector_streaming_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetVoiceConnectorStreamingConfiguration"
        operation.name = "GetVoiceConnectorStreamingConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVoiceConnectorStreamingConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVoiceConnectorStreamingConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-connectors/{VoiceConnectorId}/streaming-configuration", "code" => 200}}
      end)
      service.add_operation(:get_voice_connector_termination, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetVoiceConnectorTermination"
        operation.name = "GetVoiceConnectorTermination"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVoiceConnectorTerminationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVoiceConnectorTerminationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-connectors/{VoiceConnectorId}/termination", "code" => 200}}
      end)
      service.add_operation(:get_voice_connector_termination_health, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetVoiceConnectorTerminationHealth"
        operation.name = "GetVoiceConnectorTerminationHealth"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVoiceConnectorTerminationHealthRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVoiceConnectorTerminationHealthResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-connectors/{VoiceConnectorId}/termination/health", "code" => 200}}
      end)
      service.add_operation(:get_voice_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetVoiceProfile"
        operation.name = "GetVoiceProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVoiceProfileRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVoiceProfileResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-profiles/{VoiceProfileId}", "code" => 200}}
      end)
      service.add_operation(:get_voice_profile_domain, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetVoiceProfileDomain"
        operation.name = "GetVoiceProfileDomain"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVoiceProfileDomainRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVoiceProfileDomainResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-profile-domains/{VoiceProfileDomainId}", "code" => 200}}
      end)
      service.add_operation(:get_voice_tone_analysis_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetVoiceToneAnalysisTask"
        operation.name = "GetVoiceToneAnalysisTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVoiceToneAnalysisTaskRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVoiceToneAnalysisTaskResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-connectors/{VoiceConnectorId}/voice-tone-analysis-tasks/{VoiceToneAnalysisTaskId}", "code" => 200}}
      end)
      service.add_operation(:list_available_voice_connector_regions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#ListAvailableVoiceConnectorRegions"
        operation.name = "ListAvailableVoiceConnectorRegions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAvailableVoiceConnectorRegionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-connector-regions", "code" => 200}}
      end)
      service.add_operation(:list_phone_number_orders, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#ListPhoneNumberOrders"
        operation.name = "ListPhoneNumberOrders"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPhoneNumberOrdersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPhoneNumberOrdersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/phone-number-orders", "code" => 200}}
        operation[:paginator] = Paginators::ListPhoneNumberOrders.new
      end)
      service.add_operation(:list_phone_numbers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#ListPhoneNumbers"
        operation.name = "ListPhoneNumbers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPhoneNumbersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPhoneNumbersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/phone-numbers", "code" => 200}}
        operation[:paginator] = Paginators::ListPhoneNumbers.new
      end)
      service.add_operation(:list_proxy_sessions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#ListProxySessions"
        operation.name = "ListProxySessions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProxySessionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProxySessionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-connectors/{VoiceConnectorId}/proxy-sessions", "code" => 200}}
        operation[:paginator] = Paginators::ListProxySessions.new
      end)
      service.add_operation(:list_sip_media_applications, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#ListSipMediaApplications"
        operation.name = "ListSipMediaApplications"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSipMediaApplicationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSipMediaApplicationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sip-media-applications", "code" => 200}}
        operation[:paginator] = Paginators::ListSipMediaApplications.new
      end)
      service.add_operation(:list_sip_rules, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#ListSipRules"
        operation.name = "ListSipRules"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSipRulesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSipRulesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sip-rules", "code" => 200}}
        operation[:paginator] = Paginators::ListSipRules.new
      end)
      service.add_operation(:list_supported_phone_number_countries, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#ListSupportedPhoneNumberCountries"
        operation.name = "ListSupportedPhoneNumberCountries"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSupportedPhoneNumberCountriesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSupportedPhoneNumberCountriesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/phone-number-countries", "code" => 200}}
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags", "code" => 200}}
      end)
      service.add_operation(:list_voice_connector_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#ListVoiceConnectorGroups"
        operation.name = "ListVoiceConnectorGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVoiceConnectorGroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVoiceConnectorGroupsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-connector-groups", "code" => 200}}
        operation[:paginator] = Paginators::ListVoiceConnectorGroups.new
      end)
      service.add_operation(:list_voice_connector_termination_credentials, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#ListVoiceConnectorTerminationCredentials"
        operation.name = "ListVoiceConnectorTerminationCredentials"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVoiceConnectorTerminationCredentialsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVoiceConnectorTerminationCredentialsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-connectors/{VoiceConnectorId}/termination/credentials", "code" => 200}}
      end)
      service.add_operation(:list_voice_connectors, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#ListVoiceConnectors"
        operation.name = "ListVoiceConnectors"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVoiceConnectorsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVoiceConnectorsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-connectors", "code" => 200}}
        operation[:paginator] = Paginators::ListVoiceConnectors.new
      end)
      service.add_operation(:list_voice_profile_domains, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#ListVoiceProfileDomains"
        operation.name = "ListVoiceProfileDomains"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVoiceProfileDomainsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVoiceProfileDomainsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-profile-domains", "code" => 200}}
        operation[:paginator] = Paginators::ListVoiceProfileDomains.new
      end)
      service.add_operation(:list_voice_profiles, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#ListVoiceProfiles"
        operation.name = "ListVoiceProfiles"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVoiceProfilesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVoiceProfilesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-profiles", "code" => 200}}
        operation[:paginator] = Paginators::ListVoiceProfiles.new
      end)
      service.add_operation(:put_sip_media_application_alexa_skill_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#PutSipMediaApplicationAlexaSkillConfiguration"
        operation.name = "PutSipMediaApplicationAlexaSkillConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutSipMediaApplicationAlexaSkillConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutSipMediaApplicationAlexaSkillConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "Due to changes made by the Amazon Alexa service, this API is no longer available for use. For more information, refer to the Alexa Smart Properties page(https://developer.amazon.com/en-US/alexa/alexasmartproperties)."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/sip-media-applications/{SipMediaApplicationId}/alexa-skill-configuration", "code" => 200}}
      end)
      service.add_operation(:put_sip_media_application_logging_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#PutSipMediaApplicationLoggingConfiguration"
        operation.name = "PutSipMediaApplicationLoggingConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutSipMediaApplicationLoggingConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutSipMediaApplicationLoggingConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/sip-media-applications/{SipMediaApplicationId}/logging-configuration", "code" => 200}}
      end)
      service.add_operation(:put_voice_connector_emergency_calling_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#PutVoiceConnectorEmergencyCallingConfiguration"
        operation.name = "PutVoiceConnectorEmergencyCallingConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutVoiceConnectorEmergencyCallingConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutVoiceConnectorEmergencyCallingConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/voice-connectors/{VoiceConnectorId}/emergency-calling-configuration", "code" => 200}}
      end)
      service.add_operation(:put_voice_connector_external_systems_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#PutVoiceConnectorExternalSystemsConfiguration"
        operation.name = "PutVoiceConnectorExternalSystemsConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutVoiceConnectorExternalSystemsConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutVoiceConnectorExternalSystemsConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/voice-connectors/{VoiceConnectorId}/external-systems-configuration", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_voice_connector_logging_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#PutVoiceConnectorLoggingConfiguration"
        operation.name = "PutVoiceConnectorLoggingConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutVoiceConnectorLoggingConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutVoiceConnectorLoggingConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/voice-connectors/{VoiceConnectorId}/logging-configuration", "code" => 200}}
      end)
      service.add_operation(:put_voice_connector_origination, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#PutVoiceConnectorOrigination"
        operation.name = "PutVoiceConnectorOrigination"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutVoiceConnectorOriginationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutVoiceConnectorOriginationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/voice-connectors/{VoiceConnectorId}/origination", "code" => 200}}
      end)
      service.add_operation(:put_voice_connector_proxy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#PutVoiceConnectorProxy"
        operation.name = "PutVoiceConnectorProxy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutVoiceConnectorProxyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutVoiceConnectorProxyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/voice-connectors/{VoiceConnectorId}/programmable-numbers/proxy", "code" => 200}}
      end)
      service.add_operation(:put_voice_connector_streaming_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#PutVoiceConnectorStreamingConfiguration"
        operation.name = "PutVoiceConnectorStreamingConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutVoiceConnectorStreamingConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutVoiceConnectorStreamingConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/voice-connectors/{VoiceConnectorId}/streaming-configuration", "code" => 200}}
      end)
      service.add_operation(:put_voice_connector_termination, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#PutVoiceConnectorTermination"
        operation.name = "PutVoiceConnectorTermination"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutVoiceConnectorTerminationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutVoiceConnectorTerminationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/voice-connectors/{VoiceConnectorId}/termination", "code" => 200}}
      end)
      service.add_operation(:put_voice_connector_termination_credentials, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#PutVoiceConnectorTerminationCredentials"
        operation.name = "PutVoiceConnectorTerminationCredentials"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutVoiceConnectorTerminationCredentialsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/voice-connectors/{VoiceConnectorId}/termination/credentials?operation=put", "code" => 204}}
      end)
      service.add_operation(:restore_phone_number, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#RestorePhoneNumber"
        operation.name = "RestorePhoneNumber"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RestorePhoneNumberRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RestorePhoneNumberResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/phone-numbers/{PhoneNumberId}?operation=restore", "code" => 200}}
      end)
      service.add_operation(:search_available_phone_numbers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#SearchAvailablePhoneNumbers"
        operation.name = "SearchAvailablePhoneNumbers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchAvailablePhoneNumbersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchAvailablePhoneNumbersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/search?type=phone-numbers", "code" => 200}}
        operation[:paginator] = Paginators::SearchAvailablePhoneNumbers.new
      end)
      service.add_operation(:start_speaker_search_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#StartSpeakerSearchTask"
        operation.name = "StartSpeakerSearchTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSpeakerSearchTaskRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSpeakerSearchTaskResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GoneException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/voice-connectors/{VoiceConnectorId}/speaker-search-tasks", "code" => 201}}
      end)
      service.add_operation(:start_voice_tone_analysis_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#StartVoiceToneAnalysisTask"
        operation.name = "StartVoiceToneAnalysisTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartVoiceToneAnalysisTaskRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartVoiceToneAnalysisTaskResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GoneException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/voice-connectors/{VoiceConnectorId}/voice-tone-analysis-tasks", "code" => 201}}
      end)
      service.add_operation(:stop_speaker_search_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#StopSpeakerSearchTask"
        operation.name = "StopSpeakerSearchTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopSpeakerSearchTaskRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/voice-connectors/{VoiceConnectorId}/speaker-search-tasks/{SpeakerSearchTaskId}?operation=stop", "code" => 204}}
      end)
      service.add_operation(:stop_voice_tone_analysis_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#StopVoiceToneAnalysisTask"
        operation.name = "StopVoiceToneAnalysisTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopVoiceToneAnalysisTaskRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/voice-connectors/{VoiceConnectorId}/voice-tone-analysis-tasks/{VoiceToneAnalysisTaskId}?operation=stop", "code" => 204}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags?operation=tag-resource", "code" => 204}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags?operation=untag-resource", "code" => 204}}
      end)
      service.add_operation(:update_global_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#UpdateGlobalSettings"
        operation.name = "UpdateGlobalSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGlobalSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/settings", "code" => 204}}
      end)
      service.add_operation(:update_phone_number, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#UpdatePhoneNumber"
        operation.name = "UpdatePhoneNumber"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePhoneNumberRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePhoneNumberResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/phone-numbers/{PhoneNumberId}", "code" => 200}}
      end)
      service.add_operation(:update_phone_number_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#UpdatePhoneNumberSettings"
        operation.name = "UpdatePhoneNumberSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePhoneNumberSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/settings/phone-number", "code" => 204}}
      end)
      service.add_operation(:update_proxy_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#UpdateProxySession"
        operation.name = "UpdateProxySession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProxySessionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProxySessionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/voice-connectors/{VoiceConnectorId}/proxy-sessions/{ProxySessionId}", "code" => 201}}
      end)
      service.add_operation(:update_sip_media_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#UpdateSipMediaApplication"
        operation.name = "UpdateSipMediaApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSipMediaApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSipMediaApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/sip-media-applications/{SipMediaApplicationId}", "code" => 200}}
      end)
      service.add_operation(:update_sip_media_application_call, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#UpdateSipMediaApplicationCall"
        operation.name = "UpdateSipMediaApplicationCall"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSipMediaApplicationCallRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSipMediaApplicationCallResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sip-media-applications/{SipMediaApplicationId}/calls/{TransactionId}", "code" => 202}}
      end)
      service.add_operation(:update_sip_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#UpdateSipRule"
        operation.name = "UpdateSipRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSipRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSipRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/sip-rules/{SipRuleId}", "code" => 202}}
      end)
      service.add_operation(:update_voice_connector, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#UpdateVoiceConnector"
        operation.name = "UpdateVoiceConnector"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVoiceConnectorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVoiceConnectorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/voice-connectors/{VoiceConnectorId}", "code" => 200}}
      end)
      service.add_operation(:update_voice_connector_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#UpdateVoiceConnectorGroup"
        operation.name = "UpdateVoiceConnectorGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVoiceConnectorGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVoiceConnectorGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/voice-connector-groups/{VoiceConnectorGroupId}", "code" => 202}}
      end)
      service.add_operation(:update_voice_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#UpdateVoiceProfile"
        operation.name = "UpdateVoiceProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVoiceProfileRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVoiceProfileResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GoneException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/voice-profiles/{VoiceProfileId}", "code" => 200}}
      end)
      service.add_operation(:update_voice_profile_domain, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#UpdateVoiceProfileDomain"
        operation.name = "UpdateVoiceProfileDomain"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVoiceProfileDomainRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVoiceProfileDomainResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/voice-profile-domains/{VoiceProfileDomainId}", "code" => 200}}
      end)
      service.add_operation(:validate_e911_address, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#ValidateE911Address"
        operation.name = "ValidateE911Address"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidateE911AddressRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidateE911AddressResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/emergency-calling/address", "code" => 202}}
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
