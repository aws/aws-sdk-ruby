# frozen_string_literal: true

# This is generated code!

module Aws::ChimeSDKVoice
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Address = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#Address", name: "Address")
    AlexaSkillId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkvoice#AlexaSkillId", name: "AlexaSkillId", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^amzn1\\.application-oa2-client\\.[0-9a-fA-F]{32}$", "smithy.api#sensitive" => {}})
    AlexaSkillIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#AlexaSkillIdList", name: "AlexaSkillIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    AlexaSkillStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkvoice#AlexaSkillStatus", name: "AlexaSkillStatus")
    Alpha2CountryCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkvoice#Alpha2CountryCode", name: "Alpha2CountryCode", traits: {"smithy.api#pattern" => "^[A-Z]{2}$"})
    AreaCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkvoice#AreaCode", name: "AreaCode", traits: {"smithy.api#pattern" => "^$|^[0-9]{3,3}$"})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkvoice#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn[\\/\\:\\-\\_\\.a-zA-Z0-9]+$", "smithy.api#sensitive" => {}})
    AssociatePhoneNumbersWithVoiceConnectorGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#AssociatePhoneNumbersWithVoiceConnectorGroupRequest", name: "AssociatePhoneNumbersWithVoiceConnectorGroupRequest")
    AssociatePhoneNumbersWithVoiceConnectorGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#AssociatePhoneNumbersWithVoiceConnectorGroupResponse", name: "AssociatePhoneNumbersWithVoiceConnectorGroupResponse")
    AssociatePhoneNumbersWithVoiceConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#AssociatePhoneNumbersWithVoiceConnectorRequest", name: "AssociatePhoneNumbersWithVoiceConnectorRequest")
    AssociatePhoneNumbersWithVoiceConnectorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#AssociatePhoneNumbersWithVoiceConnectorResponse", name: "AssociatePhoneNumbersWithVoiceConnectorResponse")
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#BadRequestException", name: "BadRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BatchDeletePhoneNumberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#BatchDeletePhoneNumberRequest", name: "BatchDeletePhoneNumberRequest")
    BatchDeletePhoneNumberResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#BatchDeletePhoneNumberResponse", name: "BatchDeletePhoneNumberResponse")
    BatchUpdatePhoneNumberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#BatchUpdatePhoneNumberRequest", name: "BatchUpdatePhoneNumberRequest")
    BatchUpdatePhoneNumberResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#BatchUpdatePhoneNumberResponse", name: "BatchUpdatePhoneNumberResponse")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.chimesdkvoice#Boolean", name: "Boolean")
    CallDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#CallDetails", name: "CallDetails")
    CallLegType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkvoice#CallLegType", name: "CallLegType")
    CallingName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkvoice#CallingName", name: "CallingName", traits: {"smithy.api#pattern" => "^$|^[a-zA-Z0-9 ]{2,15}$", "smithy.api#sensitive" => {}})
    CallingNameStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkvoice#CallingNameStatus", name: "CallingNameStatus")
    CallingRegion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkvoice#CallingRegion", name: "CallingRegion")
    CallingRegionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#CallingRegionList", name: "CallingRegionList")
    CandidateAddress = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#CandidateAddress", name: "CandidateAddress")
    CandidateAddressList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#CandidateAddressList", name: "CandidateAddressList")
    Capability = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkvoice#Capability", name: "Capability")
    CapabilityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#CapabilityList", name: "CapabilityList")
    ClientRequestId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkvoice#ClientRequestId", name: "ClientRequestId", traits: {"smithy.api#pattern" => "^[-_a-zA-Z0-9]*${2,64}$"})
    ConfidenceScore = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.chimesdkvoice#ConfidenceScore", name: "ConfidenceScore", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1}})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContactCenterSystemType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkvoice#ContactCenterSystemType", name: "ContactCenterSystemType")
    ContactCenterSystemTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#ContactCenterSystemTypeList", name: "ContactCenterSystemTypeList")
    Country = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkvoice#Country", name: "Country", traits: {"smithy.api#pattern" => "^$|^[A-Z]{2,2}$"})
    CountryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#CountryList", name: "CountryList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    CpsLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chimesdkvoice#CpsLimit", name: "CpsLimit", traits: {"smithy.api#range" => {"min" => 1}})
    CreatePhoneNumberOrderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#CreatePhoneNumberOrderRequest", name: "CreatePhoneNumberOrderRequest")
    CreatePhoneNumberOrderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#CreatePhoneNumberOrderResponse", name: "CreatePhoneNumberOrderResponse")
    CreateProxySessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#CreateProxySessionRequest", name: "CreateProxySessionRequest")
    CreateProxySessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#CreateProxySessionResponse", name: "CreateProxySessionResponse")
    CreateSipMediaApplicationCallRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#CreateSipMediaApplicationCallRequest", name: "CreateSipMediaApplicationCallRequest")
    CreateSipMediaApplicationCallResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#CreateSipMediaApplicationCallResponse", name: "CreateSipMediaApplicationCallResponse")
    CreateSipMediaApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#CreateSipMediaApplicationRequest", name: "CreateSipMediaApplicationRequest")
    CreateSipMediaApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#CreateSipMediaApplicationResponse", name: "CreateSipMediaApplicationResponse")
    CreateSipRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#CreateSipRuleRequest", name: "CreateSipRuleRequest")
    CreateSipRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#CreateSipRuleResponse", name: "CreateSipRuleResponse")
    CreateVoiceConnectorGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#CreateVoiceConnectorGroupRequest", name: "CreateVoiceConnectorGroupRequest")
    CreateVoiceConnectorGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#CreateVoiceConnectorGroupResponse", name: "CreateVoiceConnectorGroupResponse")
    CreateVoiceConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#CreateVoiceConnectorRequest", name: "CreateVoiceConnectorRequest")
    CreateVoiceConnectorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#CreateVoiceConnectorResponse", name: "CreateVoiceConnectorResponse")
    CreateVoiceProfileDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#CreateVoiceProfileDomainRequest", name: "CreateVoiceProfileDomainRequest")
    CreateVoiceProfileDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#CreateVoiceProfileDomainResponse", name: "CreateVoiceProfileDomainResponse")
    CreateVoiceProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#CreateVoiceProfileRequest", name: "CreateVoiceProfileRequest")
    CreateVoiceProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#CreateVoiceProfileResponse", name: "CreateVoiceProfileResponse")
    Credential = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#Credential", name: "Credential")
    CredentialList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#CredentialList", name: "CredentialList")
    DNISEmergencyCallingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#DNISEmergencyCallingConfiguration", name: "DNISEmergencyCallingConfiguration")
    DNISEmergencyCallingConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#DNISEmergencyCallingConfigurationList", name: "DNISEmergencyCallingConfigurationList")
    DataRetentionInHours = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chimesdkvoice#DataRetentionInHours", name: "DataRetentionInHours", traits: {"smithy.api#range" => {"min" => 0}})
    DeletePhoneNumberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#DeletePhoneNumberRequest", name: "DeletePhoneNumberRequest")
    DeleteProxySessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#DeleteProxySessionRequest", name: "DeleteProxySessionRequest")
    DeleteSipMediaApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#DeleteSipMediaApplicationRequest", name: "DeleteSipMediaApplicationRequest")
    DeleteSipRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#DeleteSipRuleRequest", name: "DeleteSipRuleRequest")
    DeleteVoiceConnectorEmergencyCallingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#DeleteVoiceConnectorEmergencyCallingConfigurationRequest", name: "DeleteVoiceConnectorEmergencyCallingConfigurationRequest")
    DeleteVoiceConnectorExternalSystemsConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#DeleteVoiceConnectorExternalSystemsConfigurationRequest", name: "DeleteVoiceConnectorExternalSystemsConfigurationRequest")
    DeleteVoiceConnectorGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#DeleteVoiceConnectorGroupRequest", name: "DeleteVoiceConnectorGroupRequest")
    DeleteVoiceConnectorOriginationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#DeleteVoiceConnectorOriginationRequest", name: "DeleteVoiceConnectorOriginationRequest")
    DeleteVoiceConnectorProxyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#DeleteVoiceConnectorProxyRequest", name: "DeleteVoiceConnectorProxyRequest")
    DeleteVoiceConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#DeleteVoiceConnectorRequest", name: "DeleteVoiceConnectorRequest")
    DeleteVoiceConnectorStreamingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#DeleteVoiceConnectorStreamingConfigurationRequest", name: "DeleteVoiceConnectorStreamingConfigurationRequest")
    DeleteVoiceConnectorTerminationCredentialsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#DeleteVoiceConnectorTerminationCredentialsRequest", name: "DeleteVoiceConnectorTerminationCredentialsRequest")
    DeleteVoiceConnectorTerminationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#DeleteVoiceConnectorTerminationRequest", name: "DeleteVoiceConnectorTerminationRequest")
    DeleteVoiceProfileDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#DeleteVoiceProfileDomainRequest", name: "DeleteVoiceProfileDomainRequest")
    DeleteVoiceProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#DeleteVoiceProfileRequest", name: "DeleteVoiceProfileRequest")
    DisassociatePhoneNumbersFromVoiceConnectorGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#DisassociatePhoneNumbersFromVoiceConnectorGroupRequest", name: "DisassociatePhoneNumbersFromVoiceConnectorGroupRequest")
    DisassociatePhoneNumbersFromVoiceConnectorGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#DisassociatePhoneNumbersFromVoiceConnectorGroupResponse", name: "DisassociatePhoneNumbersFromVoiceConnectorGroupResponse")
    DisassociatePhoneNumbersFromVoiceConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#DisassociatePhoneNumbersFromVoiceConnectorRequest", name: "DisassociatePhoneNumbersFromVoiceConnectorRequest")
    DisassociatePhoneNumbersFromVoiceConnectorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#DisassociatePhoneNumbersFromVoiceConnectorResponse", name: "DisassociatePhoneNumbersFromVoiceConnectorResponse")
    E164PhoneNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkvoice#E164PhoneNumber", name: "E164PhoneNumber", traits: {"smithy.api#pattern" => "^\\+?[1-9]\\d{1,14}$", "smithy.api#sensitive" => {}})
    E164PhoneNumberList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#E164PhoneNumberList", name: "E164PhoneNumberList")
    EmergencyCallingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#EmergencyCallingConfiguration", name: "EmergencyCallingConfiguration")
    ErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkvoice#ErrorCode", name: "ErrorCode")
    ExternalSystemsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#ExternalSystemsConfiguration", name: "ExternalSystemsConfiguration")
    ForbiddenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#ForbiddenException", name: "ForbiddenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    FunctionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkvoice#FunctionArn", name: "FunctionArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}((-gov)|(-iso(b?)))?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?$", "smithy.api#sensitive" => {}})
    GeoMatchLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkvoice#GeoMatchLevel", name: "GeoMatchLevel")
    GeoMatchParams = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GeoMatchParams", name: "GeoMatchParams")
    GetGlobalSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetGlobalSettingsResponse", name: "GetGlobalSettingsResponse")
    GetPhoneNumberOrderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetPhoneNumberOrderRequest", name: "GetPhoneNumberOrderRequest")
    GetPhoneNumberOrderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetPhoneNumberOrderResponse", name: "GetPhoneNumberOrderResponse")
    GetPhoneNumberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetPhoneNumberRequest", name: "GetPhoneNumberRequest")
    GetPhoneNumberResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetPhoneNumberResponse", name: "GetPhoneNumberResponse")
    GetPhoneNumberSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetPhoneNumberSettingsResponse", name: "GetPhoneNumberSettingsResponse")
    GetProxySessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetProxySessionRequest", name: "GetProxySessionRequest")
    GetProxySessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetProxySessionResponse", name: "GetProxySessionResponse")
    GetSipMediaApplicationAlexaSkillConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetSipMediaApplicationAlexaSkillConfigurationRequest", name: "GetSipMediaApplicationAlexaSkillConfigurationRequest")
    GetSipMediaApplicationAlexaSkillConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetSipMediaApplicationAlexaSkillConfigurationResponse", name: "GetSipMediaApplicationAlexaSkillConfigurationResponse")
    GetSipMediaApplicationLoggingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetSipMediaApplicationLoggingConfigurationRequest", name: "GetSipMediaApplicationLoggingConfigurationRequest")
    GetSipMediaApplicationLoggingConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetSipMediaApplicationLoggingConfigurationResponse", name: "GetSipMediaApplicationLoggingConfigurationResponse")
    GetSipMediaApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetSipMediaApplicationRequest", name: "GetSipMediaApplicationRequest")
    GetSipMediaApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetSipMediaApplicationResponse", name: "GetSipMediaApplicationResponse")
    GetSipRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetSipRuleRequest", name: "GetSipRuleRequest")
    GetSipRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetSipRuleResponse", name: "GetSipRuleResponse")
    GetSpeakerSearchTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetSpeakerSearchTaskRequest", name: "GetSpeakerSearchTaskRequest")
    GetSpeakerSearchTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetSpeakerSearchTaskResponse", name: "GetSpeakerSearchTaskResponse")
    GetVoiceConnectorEmergencyCallingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetVoiceConnectorEmergencyCallingConfigurationRequest", name: "GetVoiceConnectorEmergencyCallingConfigurationRequest")
    GetVoiceConnectorEmergencyCallingConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetVoiceConnectorEmergencyCallingConfigurationResponse", name: "GetVoiceConnectorEmergencyCallingConfigurationResponse")
    GetVoiceConnectorExternalSystemsConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetVoiceConnectorExternalSystemsConfigurationRequest", name: "GetVoiceConnectorExternalSystemsConfigurationRequest")
    GetVoiceConnectorExternalSystemsConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetVoiceConnectorExternalSystemsConfigurationResponse", name: "GetVoiceConnectorExternalSystemsConfigurationResponse")
    GetVoiceConnectorGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetVoiceConnectorGroupRequest", name: "GetVoiceConnectorGroupRequest")
    GetVoiceConnectorGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetVoiceConnectorGroupResponse", name: "GetVoiceConnectorGroupResponse")
    GetVoiceConnectorLoggingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetVoiceConnectorLoggingConfigurationRequest", name: "GetVoiceConnectorLoggingConfigurationRequest")
    GetVoiceConnectorLoggingConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetVoiceConnectorLoggingConfigurationResponse", name: "GetVoiceConnectorLoggingConfigurationResponse")
    GetVoiceConnectorOriginationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetVoiceConnectorOriginationRequest", name: "GetVoiceConnectorOriginationRequest")
    GetVoiceConnectorOriginationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetVoiceConnectorOriginationResponse", name: "GetVoiceConnectorOriginationResponse")
    GetVoiceConnectorProxyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetVoiceConnectorProxyRequest", name: "GetVoiceConnectorProxyRequest")
    GetVoiceConnectorProxyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetVoiceConnectorProxyResponse", name: "GetVoiceConnectorProxyResponse")
    GetVoiceConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetVoiceConnectorRequest", name: "GetVoiceConnectorRequest")
    GetVoiceConnectorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetVoiceConnectorResponse", name: "GetVoiceConnectorResponse")
    GetVoiceConnectorStreamingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetVoiceConnectorStreamingConfigurationRequest", name: "GetVoiceConnectorStreamingConfigurationRequest")
    GetVoiceConnectorStreamingConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetVoiceConnectorStreamingConfigurationResponse", name: "GetVoiceConnectorStreamingConfigurationResponse")
    GetVoiceConnectorTerminationHealthRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetVoiceConnectorTerminationHealthRequest", name: "GetVoiceConnectorTerminationHealthRequest")
    GetVoiceConnectorTerminationHealthResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetVoiceConnectorTerminationHealthResponse", name: "GetVoiceConnectorTerminationHealthResponse")
    GetVoiceConnectorTerminationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetVoiceConnectorTerminationRequest", name: "GetVoiceConnectorTerminationRequest")
    GetVoiceConnectorTerminationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetVoiceConnectorTerminationResponse", name: "GetVoiceConnectorTerminationResponse")
    GetVoiceProfileDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetVoiceProfileDomainRequest", name: "GetVoiceProfileDomainRequest")
    GetVoiceProfileDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetVoiceProfileDomainResponse", name: "GetVoiceProfileDomainResponse")
    GetVoiceProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetVoiceProfileRequest", name: "GetVoiceProfileRequest")
    GetVoiceProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetVoiceProfileResponse", name: "GetVoiceProfileResponse")
    GetVoiceToneAnalysisTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetVoiceToneAnalysisTaskRequest", name: "GetVoiceToneAnalysisTaskRequest")
    GetVoiceToneAnalysisTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GetVoiceToneAnalysisTaskResponse", name: "GetVoiceToneAnalysisTaskResponse")
    GoneException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#GoneException", name: "GoneException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 410})
    GuidString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkvoice#GuidString", name: "GuidString", traits: {"smithy.api#pattern" => "^[a-fA-F0-9]{8}(?:-[a-fA-F0-9]{4}){3}-[a-fA-F0-9]{12}$"})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chimesdkvoice#Integer", name: "Integer")
    Iso8601Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.chimesdkvoice#Iso8601Timestamp", name: "Iso8601Timestamp", traits: {"smithy.api#timestampFormat" => "date-time"})
    LanguageCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkvoice#LanguageCode", name: "LanguageCode")
    ListAvailableVoiceConnectorRegionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#ListAvailableVoiceConnectorRegionsResponse", name: "ListAvailableVoiceConnectorRegionsResponse")
    ListPhoneNumberOrdersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#ListPhoneNumberOrdersRequest", name: "ListPhoneNumberOrdersRequest")
    ListPhoneNumberOrdersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#ListPhoneNumberOrdersResponse", name: "ListPhoneNumberOrdersResponse")
    ListPhoneNumbersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#ListPhoneNumbersRequest", name: "ListPhoneNumbersRequest")
    ListPhoneNumbersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#ListPhoneNumbersResponse", name: "ListPhoneNumbersResponse")
    ListProxySessionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#ListProxySessionsRequest", name: "ListProxySessionsRequest")
    ListProxySessionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#ListProxySessionsResponse", name: "ListProxySessionsResponse")
    ListSipMediaApplicationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#ListSipMediaApplicationsRequest", name: "ListSipMediaApplicationsRequest")
    ListSipMediaApplicationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#ListSipMediaApplicationsResponse", name: "ListSipMediaApplicationsResponse")
    ListSipRulesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#ListSipRulesRequest", name: "ListSipRulesRequest")
    ListSipRulesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#ListSipRulesResponse", name: "ListSipRulesResponse")
    ListSupportedPhoneNumberCountriesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#ListSupportedPhoneNumberCountriesRequest", name: "ListSupportedPhoneNumberCountriesRequest")
    ListSupportedPhoneNumberCountriesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#ListSupportedPhoneNumberCountriesResponse", name: "ListSupportedPhoneNumberCountriesResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListVoiceConnectorGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#ListVoiceConnectorGroupsRequest", name: "ListVoiceConnectorGroupsRequest")
    ListVoiceConnectorGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#ListVoiceConnectorGroupsResponse", name: "ListVoiceConnectorGroupsResponse")
    ListVoiceConnectorTerminationCredentialsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#ListVoiceConnectorTerminationCredentialsRequest", name: "ListVoiceConnectorTerminationCredentialsRequest")
    ListVoiceConnectorTerminationCredentialsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#ListVoiceConnectorTerminationCredentialsResponse", name: "ListVoiceConnectorTerminationCredentialsResponse")
    ListVoiceConnectorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#ListVoiceConnectorsRequest", name: "ListVoiceConnectorsRequest")
    ListVoiceConnectorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#ListVoiceConnectorsResponse", name: "ListVoiceConnectorsResponse")
    ListVoiceProfileDomainsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#ListVoiceProfileDomainsRequest", name: "ListVoiceProfileDomainsRequest")
    ListVoiceProfileDomainsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#ListVoiceProfileDomainsResponse", name: "ListVoiceProfileDomainsResponse")
    ListVoiceProfilesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#ListVoiceProfilesRequest", name: "ListVoiceProfilesRequest")
    ListVoiceProfilesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#ListVoiceProfilesResponse", name: "ListVoiceProfilesResponse")
    LoggingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#LoggingConfiguration", name: "LoggingConfiguration")
    MediaInsightsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#MediaInsightsConfiguration", name: "MediaInsightsConfiguration")
    NetworkType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkvoice#NetworkType", name: "NetworkType")
    NextTokenString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkvoice#NextTokenString", name: "NextTokenString", traits: {"smithy.api#length" => {"min" => 0, "max" => 65535}})
    NonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkvoice#NonEmptyString", name: "NonEmptyString", traits: {"smithy.api#pattern" => "\\S"})
    NonEmptyString128 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkvoice#NonEmptyString128", name: "NonEmptyString128", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "\\S"})
    NonEmptyString256 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkvoice#NonEmptyString256", name: "NonEmptyString256", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "\\S"})
    NonEmptyStringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#NonEmptyStringList", name: "NonEmptyStringList", traits: {"smithy.api#length" => {"min" => 1}})
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#NotFoundException", name: "NotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NotificationTarget = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkvoice#NotificationTarget", name: "NotificationTarget")
    NullableBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.chimesdkvoice#NullableBoolean", name: "NullableBoolean")
    NumberSelectionBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkvoice#NumberSelectionBehavior", name: "NumberSelectionBehavior")
    OrderedPhoneNumber = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#OrderedPhoneNumber", name: "OrderedPhoneNumber")
    OrderedPhoneNumberList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#OrderedPhoneNumberList", name: "OrderedPhoneNumberList")
    OrderedPhoneNumberStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkvoice#OrderedPhoneNumberStatus", name: "OrderedPhoneNumberStatus")
    Origination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#Origination", name: "Origination")
    OriginationRoute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#OriginationRoute", name: "OriginationRoute")
    OriginationRouteList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#OriginationRouteList", name: "OriginationRouteList")
    OriginationRoutePriority = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chimesdkvoice#OriginationRoutePriority", name: "OriginationRoutePriority", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    OriginationRouteProtocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkvoice#OriginationRouteProtocol", name: "OriginationRouteProtocol")
    OriginationRouteWeight = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chimesdkvoice#OriginationRouteWeight", name: "OriginationRouteWeight", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    Participant = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#Participant", name: "Participant")
    ParticipantPhoneNumberList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#ParticipantPhoneNumberList", name: "ParticipantPhoneNumberList", traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    Participants = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#Participants", name: "Participants")
    PhoneNumber = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#PhoneNumber", name: "PhoneNumber")
    PhoneNumberAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#PhoneNumberAssociation", name: "PhoneNumberAssociation")
    PhoneNumberAssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#PhoneNumberAssociationList", name: "PhoneNumberAssociationList")
    PhoneNumberAssociationName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkvoice#PhoneNumberAssociationName", name: "PhoneNumberAssociationName")
    PhoneNumberCapabilities = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#PhoneNumberCapabilities", name: "PhoneNumberCapabilities")
    PhoneNumberCountriesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#PhoneNumberCountriesList", name: "PhoneNumberCountriesList")
    PhoneNumberCountry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#PhoneNumberCountry", name: "PhoneNumberCountry")
    PhoneNumberError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#PhoneNumberError", name: "PhoneNumberError")
    PhoneNumberErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#PhoneNumberErrorList", name: "PhoneNumberErrorList")
    PhoneNumberList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#PhoneNumberList", name: "PhoneNumberList")
    PhoneNumberMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chimesdkvoice#PhoneNumberMaxResults", name: "PhoneNumberMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 500}})
    PhoneNumberName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkvoice#PhoneNumberName", name: "PhoneNumberName", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^$|^[a-zA-Z0-9\\,\\.\\_\\-]+(\\s+[a-zA-Z0-9\\,\\.\\_\\-]+)*$", "smithy.api#sensitive" => {}})
    PhoneNumberOrder = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#PhoneNumberOrder", name: "PhoneNumberOrder")
    PhoneNumberOrderList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#PhoneNumberOrderList", name: "PhoneNumberOrderList")
    PhoneNumberOrderStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkvoice#PhoneNumberOrderStatus", name: "PhoneNumberOrderStatus")
    PhoneNumberOrderType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkvoice#PhoneNumberOrderType", name: "PhoneNumberOrderType")
    PhoneNumberProductType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkvoice#PhoneNumberProductType", name: "PhoneNumberProductType")
    PhoneNumberStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkvoice#PhoneNumberStatus", name: "PhoneNumberStatus")
    PhoneNumberType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkvoice#PhoneNumberType", name: "PhoneNumberType")
    PhoneNumberTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#PhoneNumberTypeList", name: "PhoneNumberTypeList")
    Port = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chimesdkvoice#Port", name: "Port", traits: {"smithy.api#range" => {"min" => 0, "max" => 65535}})
    PositiveInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chimesdkvoice#PositiveInteger", name: "PositiveInteger", traits: {"smithy.api#range" => {"min" => 1}})
    Proxy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#Proxy", name: "Proxy")
    ProxySession = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#ProxySession", name: "ProxySession")
    ProxySessionNameString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkvoice#ProxySessionNameString", name: "ProxySessionNameString", traits: {"smithy.api#pattern" => "^$|^[a-zA-Z0-9 ]{0,30}$", "smithy.api#sensitive" => {}})
    ProxySessionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkvoice#ProxySessionStatus", name: "ProxySessionStatus")
    ProxySessions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#ProxySessions", name: "ProxySessions")
    PutSipMediaApplicationAlexaSkillConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#PutSipMediaApplicationAlexaSkillConfigurationRequest", name: "PutSipMediaApplicationAlexaSkillConfigurationRequest")
    PutSipMediaApplicationAlexaSkillConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#PutSipMediaApplicationAlexaSkillConfigurationResponse", name: "PutSipMediaApplicationAlexaSkillConfigurationResponse")
    PutSipMediaApplicationLoggingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#PutSipMediaApplicationLoggingConfigurationRequest", name: "PutSipMediaApplicationLoggingConfigurationRequest")
    PutSipMediaApplicationLoggingConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#PutSipMediaApplicationLoggingConfigurationResponse", name: "PutSipMediaApplicationLoggingConfigurationResponse")
    PutVoiceConnectorEmergencyCallingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#PutVoiceConnectorEmergencyCallingConfigurationRequest", name: "PutVoiceConnectorEmergencyCallingConfigurationRequest")
    PutVoiceConnectorEmergencyCallingConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#PutVoiceConnectorEmergencyCallingConfigurationResponse", name: "PutVoiceConnectorEmergencyCallingConfigurationResponse")
    PutVoiceConnectorExternalSystemsConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#PutVoiceConnectorExternalSystemsConfigurationRequest", name: "PutVoiceConnectorExternalSystemsConfigurationRequest")
    PutVoiceConnectorExternalSystemsConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#PutVoiceConnectorExternalSystemsConfigurationResponse", name: "PutVoiceConnectorExternalSystemsConfigurationResponse")
    PutVoiceConnectorLoggingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#PutVoiceConnectorLoggingConfigurationRequest", name: "PutVoiceConnectorLoggingConfigurationRequest")
    PutVoiceConnectorLoggingConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#PutVoiceConnectorLoggingConfigurationResponse", name: "PutVoiceConnectorLoggingConfigurationResponse")
    PutVoiceConnectorOriginationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#PutVoiceConnectorOriginationRequest", name: "PutVoiceConnectorOriginationRequest")
    PutVoiceConnectorOriginationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#PutVoiceConnectorOriginationResponse", name: "PutVoiceConnectorOriginationResponse")
    PutVoiceConnectorProxyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#PutVoiceConnectorProxyRequest", name: "PutVoiceConnectorProxyRequest")
    PutVoiceConnectorProxyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#PutVoiceConnectorProxyResponse", name: "PutVoiceConnectorProxyResponse")
    PutVoiceConnectorStreamingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#PutVoiceConnectorStreamingConfigurationRequest", name: "PutVoiceConnectorStreamingConfigurationRequest")
    PutVoiceConnectorStreamingConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#PutVoiceConnectorStreamingConfigurationResponse", name: "PutVoiceConnectorStreamingConfigurationResponse")
    PutVoiceConnectorTerminationCredentialsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#PutVoiceConnectorTerminationCredentialsRequest", name: "PutVoiceConnectorTerminationCredentialsRequest")
    PutVoiceConnectorTerminationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#PutVoiceConnectorTerminationRequest", name: "PutVoiceConnectorTerminationRequest")
    PutVoiceConnectorTerminationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#PutVoiceConnectorTerminationResponse", name: "PutVoiceConnectorTerminationResponse")
    ResourceLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#ResourceLimitExceededException", name: "ResourceLimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RestorePhoneNumberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#RestorePhoneNumberRequest", name: "RestorePhoneNumberRequest")
    RestorePhoneNumberResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#RestorePhoneNumberResponse", name: "RestorePhoneNumberResponse")
    ResultMax = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chimesdkvoice#ResultMax", name: "ResultMax", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    SMACreateCallArgumentsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.chimesdkvoice#SMACreateCallArgumentsMap", name: "SMACreateCallArgumentsMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    SMAUpdateCallArgumentsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.chimesdkvoice#SMAUpdateCallArgumentsMap", name: "SMAUpdateCallArgumentsMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    SearchAvailablePhoneNumbersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#SearchAvailablePhoneNumbersRequest", name: "SearchAvailablePhoneNumbersRequest")
    SearchAvailablePhoneNumbersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#SearchAvailablePhoneNumbersResponse", name: "SearchAvailablePhoneNumbersResponse")
    SensitiveNonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkvoice#SensitiveNonEmptyString", name: "SensitiveNonEmptyString", traits: {"smithy.api#pattern" => "\\S", "smithy.api#sensitive" => {}})
    SensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkvoice#SensitiveString", name: "SensitiveString", traits: {"smithy.api#sensitive" => {}})
    SensitiveStringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#SensitiveStringList", name: "SensitiveStringList")
    ServerSideEncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#ServerSideEncryptionConfiguration", name: "ServerSideEncryptionConfiguration")
    ServiceFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#ServiceFailureException", name: "ServiceFailureException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SessionBorderControllerType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkvoice#SessionBorderControllerType", name: "SessionBorderControllerType")
    SessionBorderControllerTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#SessionBorderControllerTypeList", name: "SessionBorderControllerTypeList")
    SipApplicationPriority = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chimesdkvoice#SipApplicationPriority", name: "SipApplicationPriority", traits: {"smithy.api#range" => {"min" => 1}})
    SipHeadersMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.chimesdkvoice#SipHeadersMap", name: "SipHeadersMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    SipMediaApplication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#SipMediaApplication", name: "SipMediaApplication")
    SipMediaApplicationAlexaSkillConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#SipMediaApplicationAlexaSkillConfiguration", name: "SipMediaApplicationAlexaSkillConfiguration")
    SipMediaApplicationCall = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#SipMediaApplicationCall", name: "SipMediaApplicationCall")
    SipMediaApplicationEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#SipMediaApplicationEndpoint", name: "SipMediaApplicationEndpoint")
    SipMediaApplicationEndpointList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#SipMediaApplicationEndpointList", name: "SipMediaApplicationEndpointList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    SipMediaApplicationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#SipMediaApplicationList", name: "SipMediaApplicationList")
    SipMediaApplicationLoggingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#SipMediaApplicationLoggingConfiguration", name: "SipMediaApplicationLoggingConfiguration")
    SipMediaApplicationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkvoice#SipMediaApplicationName", name: "SipMediaApplicationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9 _.-]+$"})
    SipRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#SipRule", name: "SipRule")
    SipRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#SipRuleList", name: "SipRuleList")
    SipRuleName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkvoice#SipRuleName", name: "SipRuleName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9 _.-]+$"})
    SipRuleTargetApplication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#SipRuleTargetApplication", name: "SipRuleTargetApplication")
    SipRuleTargetApplicationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#SipRuleTargetApplicationList", name: "SipRuleTargetApplicationList", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    SipRuleTriggerType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkvoice#SipRuleTriggerType", name: "SipRuleTriggerType")
    SpeakerSearchDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#SpeakerSearchDetails", name: "SpeakerSearchDetails")
    SpeakerSearchResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#SpeakerSearchResult", name: "SpeakerSearchResult")
    SpeakerSearchResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#SpeakerSearchResultList", name: "SpeakerSearchResultList")
    SpeakerSearchTask = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#SpeakerSearchTask", name: "SpeakerSearchTask")
    StartSpeakerSearchTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#StartSpeakerSearchTaskRequest", name: "StartSpeakerSearchTaskRequest")
    StartSpeakerSearchTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#StartSpeakerSearchTaskResponse", name: "StartSpeakerSearchTaskResponse")
    StartVoiceToneAnalysisTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#StartVoiceToneAnalysisTaskRequest", name: "StartVoiceToneAnalysisTaskRequest")
    StartVoiceToneAnalysisTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#StartVoiceToneAnalysisTaskResponse", name: "StartVoiceToneAnalysisTaskResponse")
    StopSpeakerSearchTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#StopSpeakerSearchTaskRequest", name: "StopSpeakerSearchTaskRequest")
    StopVoiceToneAnalysisTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#StopVoiceToneAnalysisTaskRequest", name: "StopVoiceToneAnalysisTaskRequest")
    StreamingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#StreamingConfiguration", name: "StreamingConfiguration")
    StreamingNotificationTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#StreamingNotificationTarget", name: "StreamingNotificationTarget")
    StreamingNotificationTargetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#StreamingNotificationTargetList", name: "StreamingNotificationTargetList", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkvoice#String", name: "String")
    String128 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkvoice#String128", name: "String128", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#StringList", name: "StringList")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkvoice#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#sensitive" => {}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#TagResourceRequest", name: "TagResourceRequest")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkvoice#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#sensitive" => {}})
    Termination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#Termination", name: "Termination")
    TerminationHealth = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#TerminationHealth", name: "TerminationHealth")
    ThrottledClientException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#ThrottledClientException", name: "ThrottledClientException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TollFreePrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkvoice#TollFreePrefix", name: "TollFreePrefix", traits: {"smithy.api#length" => {"min" => 3, "max" => 3}, "smithy.api#pattern" => "^8(00|33|44|55|66|77|88)$"})
    UnauthorizedClientException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#UnauthorizedClientException", name: "UnauthorizedClientException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UnprocessableEntityException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#UnprocessableEntityException", name: "UnprocessableEntityException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 422})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#UntagResourceRequest", name: "UntagResourceRequest")
    UpdateGlobalSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#UpdateGlobalSettingsRequest", name: "UpdateGlobalSettingsRequest")
    UpdatePhoneNumberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#UpdatePhoneNumberRequest", name: "UpdatePhoneNumberRequest")
    UpdatePhoneNumberRequestItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#UpdatePhoneNumberRequestItem", name: "UpdatePhoneNumberRequestItem")
    UpdatePhoneNumberRequestItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#UpdatePhoneNumberRequestItemList", name: "UpdatePhoneNumberRequestItemList")
    UpdatePhoneNumberResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#UpdatePhoneNumberResponse", name: "UpdatePhoneNumberResponse")
    UpdatePhoneNumberSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#UpdatePhoneNumberSettingsRequest", name: "UpdatePhoneNumberSettingsRequest")
    UpdateProxySessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#UpdateProxySessionRequest", name: "UpdateProxySessionRequest")
    UpdateProxySessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#UpdateProxySessionResponse", name: "UpdateProxySessionResponse")
    UpdateSipMediaApplicationCallRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#UpdateSipMediaApplicationCallRequest", name: "UpdateSipMediaApplicationCallRequest")
    UpdateSipMediaApplicationCallResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#UpdateSipMediaApplicationCallResponse", name: "UpdateSipMediaApplicationCallResponse")
    UpdateSipMediaApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#UpdateSipMediaApplicationRequest", name: "UpdateSipMediaApplicationRequest")
    UpdateSipMediaApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#UpdateSipMediaApplicationResponse", name: "UpdateSipMediaApplicationResponse")
    UpdateSipRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#UpdateSipRuleRequest", name: "UpdateSipRuleRequest")
    UpdateSipRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#UpdateSipRuleResponse", name: "UpdateSipRuleResponse")
    UpdateVoiceConnectorGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#UpdateVoiceConnectorGroupRequest", name: "UpdateVoiceConnectorGroupRequest")
    UpdateVoiceConnectorGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#UpdateVoiceConnectorGroupResponse", name: "UpdateVoiceConnectorGroupResponse")
    UpdateVoiceConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#UpdateVoiceConnectorRequest", name: "UpdateVoiceConnectorRequest")
    UpdateVoiceConnectorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#UpdateVoiceConnectorResponse", name: "UpdateVoiceConnectorResponse")
    UpdateVoiceProfileDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#UpdateVoiceProfileDomainRequest", name: "UpdateVoiceProfileDomainRequest")
    UpdateVoiceProfileDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#UpdateVoiceProfileDomainResponse", name: "UpdateVoiceProfileDomainResponse")
    UpdateVoiceProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#UpdateVoiceProfileRequest", name: "UpdateVoiceProfileRequest")
    UpdateVoiceProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#UpdateVoiceProfileResponse", name: "UpdateVoiceProfileResponse")
    ValidateE911AddressRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#ValidateE911AddressRequest", name: "ValidateE911AddressRequest")
    ValidateE911AddressResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#ValidateE911AddressResponse", name: "ValidateE911AddressResponse")
    ValidationResult = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chimesdkvoice#ValidationResult", name: "ValidationResult", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 2}})
    VoiceConnector = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#VoiceConnector", name: "VoiceConnector")
    VoiceConnectorAwsRegion = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkvoice#VoiceConnectorAwsRegion", name: "VoiceConnectorAwsRegion")
    VoiceConnectorAwsRegionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#VoiceConnectorAwsRegionList", name: "VoiceConnectorAwsRegionList")
    VoiceConnectorGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#VoiceConnectorGroup", name: "VoiceConnectorGroup")
    VoiceConnectorGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#VoiceConnectorGroupList", name: "VoiceConnectorGroupList")
    VoiceConnectorGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkvoice#VoiceConnectorGroupName", name: "VoiceConnectorGroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9 _.-]+$"})
    VoiceConnectorIntegrationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkvoice#VoiceConnectorIntegrationType", name: "VoiceConnectorIntegrationType")
    VoiceConnectorItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#VoiceConnectorItem", name: "VoiceConnectorItem")
    VoiceConnectorItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#VoiceConnectorItemList", name: "VoiceConnectorItemList")
    VoiceConnectorItemPriority = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chimesdkvoice#VoiceConnectorItemPriority", name: "VoiceConnectorItemPriority", traits: {"smithy.api#range" => {"min" => 1, "max" => 99}})
    VoiceConnectorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#VoiceConnectorList", name: "VoiceConnectorList")
    VoiceConnectorName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkvoice#VoiceConnectorName", name: "VoiceConnectorName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9 _.-]+$"})
    VoiceConnectorSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#VoiceConnectorSettings", name: "VoiceConnectorSettings")
    VoiceProfile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#VoiceProfile", name: "VoiceProfile")
    VoiceProfileDomain = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#VoiceProfileDomain", name: "VoiceProfileDomain")
    VoiceProfileDomainDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkvoice#VoiceProfileDomainDescription", name: "VoiceProfileDomainDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    VoiceProfileDomainName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkvoice#VoiceProfileDomainName", name: "VoiceProfileDomainName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9 _.-]+$"})
    VoiceProfileDomainSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#VoiceProfileDomainSummary", name: "VoiceProfileDomainSummary")
    VoiceProfileDomainSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#VoiceProfileDomainSummaryList", name: "VoiceProfileDomainSummaryList")
    VoiceProfileSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#VoiceProfileSummary", name: "VoiceProfileSummary")
    VoiceProfileSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkvoice#VoiceProfileSummaryList", name: "VoiceProfileSummaryList")
    VoiceToneAnalysisTask = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkvoice#VoiceToneAnalysisTask", name: "VoiceToneAnalysisTask")

    AccessDeniedException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    Address.add_member(:street_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "streetName"))
    Address.add_member(:street_suffix, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "streetSuffix"))
    Address.add_member(:post_directional, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "postDirectional"))
    Address.add_member(:pre_directional, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "preDirectional"))
    Address.add_member(:street_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "streetNumber"))
    Address.add_member(:city, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "city"))
    Address.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "state"))
    Address.add_member(:postal_code, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "postalCode"))
    Address.add_member(:postal_code_plus4, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "postalCodePlus4"))
    Address.add_member(:country, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "country"))
    Address.type = Types::Address
    AlexaSkillIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AlexaSkillId, name: "member"))
    AlexaSkillStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AlexaSkillStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    AssociatePhoneNumbersWithVoiceConnectorGroupRequest.add_member(:voice_connector_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "VoiceConnectorGroupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociatePhoneNumbersWithVoiceConnectorGroupRequest.add_member(:e164_phone_numbers, ::Smithy::Schema::Shapes::MemberShape.new(target: E164PhoneNumberList, name: "E164PhoneNumbers", traits: {"smithy.api#required" => {}}))
    AssociatePhoneNumbersWithVoiceConnectorGroupRequest.add_member(:force_associate, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "ForceAssociate"))
    AssociatePhoneNumbersWithVoiceConnectorGroupRequest.type = Types::AssociatePhoneNumbersWithVoiceConnectorGroupRequest
    AssociatePhoneNumbersWithVoiceConnectorGroupResponse.add_member(:phone_number_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberErrorList, name: "PhoneNumberErrors"))
    AssociatePhoneNumbersWithVoiceConnectorGroupResponse.type = Types::AssociatePhoneNumbersWithVoiceConnectorGroupResponse
    AssociatePhoneNumbersWithVoiceConnectorRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociatePhoneNumbersWithVoiceConnectorRequest.add_member(:e164_phone_numbers, ::Smithy::Schema::Shapes::MemberShape.new(target: E164PhoneNumberList, name: "E164PhoneNumbers", traits: {"smithy.api#required" => {}}))
    AssociatePhoneNumbersWithVoiceConnectorRequest.add_member(:force_associate, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "ForceAssociate"))
    AssociatePhoneNumbersWithVoiceConnectorRequest.type = Types::AssociatePhoneNumbersWithVoiceConnectorRequest
    AssociatePhoneNumbersWithVoiceConnectorResponse.add_member(:phone_number_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberErrorList, name: "PhoneNumberErrors"))
    AssociatePhoneNumbersWithVoiceConnectorResponse.type = Types::AssociatePhoneNumbersWithVoiceConnectorResponse
    BadRequestException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    BadRequestException.type = Types::BadRequestException
    BatchDeletePhoneNumberRequest.add_member(:phone_number_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyStringList, name: "PhoneNumberIds", traits: {"smithy.api#required" => {}}))
    BatchDeletePhoneNumberRequest.type = Types::BatchDeletePhoneNumberRequest
    BatchDeletePhoneNumberResponse.add_member(:phone_number_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberErrorList, name: "PhoneNumberErrors"))
    BatchDeletePhoneNumberResponse.type = Types::BatchDeletePhoneNumberResponse
    BatchUpdatePhoneNumberRequest.add_member(:update_phone_number_request_items, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatePhoneNumberRequestItemList, name: "UpdatePhoneNumberRequestItems", traits: {"smithy.api#required" => {}}))
    BatchUpdatePhoneNumberRequest.type = Types::BatchUpdatePhoneNumberRequest
    BatchUpdatePhoneNumberResponse.add_member(:phone_number_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberErrorList, name: "PhoneNumberErrors"))
    BatchUpdatePhoneNumberResponse.type = Types::BatchUpdatePhoneNumberResponse
    CallDetails.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString128, name: "VoiceConnectorId"))
    CallDetails.add_member(:transaction_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString256, name: "TransactionId"))
    CallDetails.add_member(:is_caller, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsCaller"))
    CallDetails.type = Types::CallDetails
    CallLegType.add_member(:caller, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CALLER", traits: {"smithy.api#enumValue" => "Caller"}))
    CallLegType.add_member(:callee, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CALLEE", traits: {"smithy.api#enumValue" => "Callee"}))
    CallingNameStatus.add_member(:unassigned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Unassigned", traits: {"smithy.api#enumValue" => "Unassigned"}))
    CallingNameStatus.add_member(:update_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UpdateInProgress", traits: {"smithy.api#enumValue" => "UpdateInProgress"}))
    CallingNameStatus.add_member(:update_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UpdateSucceeded", traits: {"smithy.api#enumValue" => "UpdateSucceeded"}))
    CallingNameStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UpdateFailed", traits: {"smithy.api#enumValue" => "UpdateFailed"}))
    CallingRegionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CallingRegion, name: "member"))
    CandidateAddress.add_member(:street_info, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "streetInfo"))
    CandidateAddress.add_member(:street_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "streetNumber"))
    CandidateAddress.add_member(:city, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "city"))
    CandidateAddress.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "state"))
    CandidateAddress.add_member(:postal_code, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "postalCode"))
    CandidateAddress.add_member(:postal_code_plus4, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "postalCodePlus4"))
    CandidateAddress.add_member(:country, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "country"))
    CandidateAddress.type = Types::CandidateAddress
    CandidateAddressList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CandidateAddress, name: "member", traits: {"smithy.api#xmlName" => "CandidateAddress"}))
    Capability.add_member(:voice, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Voice", traits: {"smithy.api#enumValue" => "Voice"}))
    Capability.add_member(:sms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMS", traits: {"smithy.api#enumValue" => "SMS"}))
    CapabilityList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Capability, name: "member"))
    ConflictException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ConflictException.type = Types::ConflictException
    ContactCenterSystemType.add_member(:genesys_engage_on_premises, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GENESYS_ENGAGE_ON_PREMISES", traits: {"smithy.api#enumValue" => "GENESYS_ENGAGE_ON_PREMISES"}))
    ContactCenterSystemType.add_member(:avaya_aura_call_center_elite, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAYA_AURA_CALL_CENTER_ELITE", traits: {"smithy.api#enumValue" => "AVAYA_AURA_CALL_CENTER_ELITE"}))
    ContactCenterSystemType.add_member(:avaya_aura_contact_center, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAYA_AURA_CONTACT_CENTER", traits: {"smithy.api#enumValue" => "AVAYA_AURA_CONTACT_CENTER"}))
    ContactCenterSystemType.add_member(:cisco_unified_contact_center_enterprise, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CISCO_UNIFIED_CONTACT_CENTER_ENTERPRISE", traits: {"smithy.api#enumValue" => "CISCO_UNIFIED_CONTACT_CENTER_ENTERPRISE"}))
    ContactCenterSystemTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactCenterSystemType, name: "member"))
    CountryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Country, name: "member"))
    CreatePhoneNumberOrderRequest.add_member(:product_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberProductType, name: "ProductType", traits: {"smithy.api#required" => {}}))
    CreatePhoneNumberOrderRequest.add_member(:e164_phone_numbers, ::Smithy::Schema::Shapes::MemberShape.new(target: E164PhoneNumberList, name: "E164PhoneNumbers", traits: {"smithy.api#required" => {}}))
    CreatePhoneNumberOrderRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberName, name: "Name"))
    CreatePhoneNumberOrderRequest.type = Types::CreatePhoneNumberOrderRequest
    CreatePhoneNumberOrderResponse.add_member(:phone_number_order, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberOrder, name: "PhoneNumberOrder"))
    CreatePhoneNumberOrderResponse.type = Types::CreatePhoneNumberOrderResponse
    CreateProxySessionRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString128, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateProxySessionRequest.add_member(:participant_phone_numbers, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantPhoneNumberList, name: "ParticipantPhoneNumbers", traits: {"smithy.api#required" => {}}))
    CreateProxySessionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxySessionNameString, name: "Name"))
    CreateProxySessionRequest.add_member(:expiry_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "ExpiryMinutes"))
    CreateProxySessionRequest.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityList, name: "Capabilities", traits: {"smithy.api#required" => {}}))
    CreateProxySessionRequest.add_member(:number_selection_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberSelectionBehavior, name: "NumberSelectionBehavior"))
    CreateProxySessionRequest.add_member(:geo_match_level, ::Smithy::Schema::Shapes::MemberShape.new(target: GeoMatchLevel, name: "GeoMatchLevel"))
    CreateProxySessionRequest.add_member(:geo_match_params, ::Smithy::Schema::Shapes::MemberShape.new(target: GeoMatchParams, name: "GeoMatchParams"))
    CreateProxySessionRequest.type = Types::CreateProxySessionRequest
    CreateProxySessionResponse.add_member(:proxy_session, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxySession, name: "ProxySession"))
    CreateProxySessionResponse.type = Types::CreateProxySessionResponse
    CreateSipMediaApplicationCallRequest.add_member(:from_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: E164PhoneNumber, name: "FromPhoneNumber", traits: {"smithy.api#required" => {}}))
    CreateSipMediaApplicationCallRequest.add_member(:to_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: E164PhoneNumber, name: "ToPhoneNumber", traits: {"smithy.api#required" => {}}))
    CreateSipMediaApplicationCallRequest.add_member(:sip_media_application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "SipMediaApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSipMediaApplicationCallRequest.add_member(:sip_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: SipHeadersMap, name: "SipHeaders"))
    CreateSipMediaApplicationCallRequest.add_member(:arguments_map, ::Smithy::Schema::Shapes::MemberShape.new(target: SMACreateCallArgumentsMap, name: "ArgumentsMap"))
    CreateSipMediaApplicationCallRequest.type = Types::CreateSipMediaApplicationCallRequest
    CreateSipMediaApplicationCallResponse.add_member(:sip_media_application_call, ::Smithy::Schema::Shapes::MemberShape.new(target: SipMediaApplicationCall, name: "SipMediaApplicationCall"))
    CreateSipMediaApplicationCallResponse.type = Types::CreateSipMediaApplicationCallResponse
    CreateSipMediaApplicationRequest.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AwsRegion", traits: {"smithy.api#required" => {}}))
    CreateSipMediaApplicationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SipMediaApplicationName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateSipMediaApplicationRequest.add_member(:endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: SipMediaApplicationEndpointList, name: "Endpoints", traits: {"smithy.api#required" => {}}))
    CreateSipMediaApplicationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateSipMediaApplicationRequest.type = Types::CreateSipMediaApplicationRequest
    CreateSipMediaApplicationResponse.add_member(:sip_media_application, ::Smithy::Schema::Shapes::MemberShape.new(target: SipMediaApplication, name: "SipMediaApplication"))
    CreateSipMediaApplicationResponse.type = Types::CreateSipMediaApplicationResponse
    CreateSipRuleRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SipRuleName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateSipRuleRequest.add_member(:trigger_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SipRuleTriggerType, name: "TriggerType", traits: {"smithy.api#required" => {}}))
    CreateSipRuleRequest.add_member(:trigger_value, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "TriggerValue", traits: {"smithy.api#required" => {}}))
    CreateSipRuleRequest.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "Disabled"))
    CreateSipRuleRequest.add_member(:target_applications, ::Smithy::Schema::Shapes::MemberShape.new(target: SipRuleTargetApplicationList, name: "TargetApplications"))
    CreateSipRuleRequest.type = Types::CreateSipRuleRequest
    CreateSipRuleResponse.add_member(:sip_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: SipRule, name: "SipRule"))
    CreateSipRuleResponse.type = Types::CreateSipRuleResponse
    CreateVoiceConnectorGroupRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceConnectorGroupName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateVoiceConnectorGroupRequest.add_member(:voice_connector_items, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceConnectorItemList, name: "VoiceConnectorItems"))
    CreateVoiceConnectorGroupRequest.type = Types::CreateVoiceConnectorGroupRequest
    CreateVoiceConnectorGroupResponse.add_member(:voice_connector_group, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceConnectorGroup, name: "VoiceConnectorGroup"))
    CreateVoiceConnectorGroupResponse.type = Types::CreateVoiceConnectorGroupResponse
    CreateVoiceConnectorRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceConnectorName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateVoiceConnectorRequest.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceConnectorAwsRegion, name: "AwsRegion"))
    CreateVoiceConnectorRequest.add_member(:require_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "RequireEncryption", traits: {"smithy.api#required" => {}}))
    CreateVoiceConnectorRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateVoiceConnectorRequest.add_member(:integration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceConnectorIntegrationType, name: "IntegrationType"))
    CreateVoiceConnectorRequest.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "NetworkType"))
    CreateVoiceConnectorRequest.type = Types::CreateVoiceConnectorRequest
    CreateVoiceConnectorResponse.add_member(:voice_connector, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceConnector, name: "VoiceConnector"))
    CreateVoiceConnectorResponse.type = Types::CreateVoiceConnectorResponse
    CreateVoiceProfileDomainRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceProfileDomainName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateVoiceProfileDomainRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceProfileDomainDescription, name: "Description"))
    CreateVoiceProfileDomainRequest.add_member(:server_side_encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryptionConfiguration, name: "ServerSideEncryptionConfiguration", traits: {"smithy.api#required" => {}}))
    CreateVoiceProfileDomainRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestId, name: "ClientRequestToken"))
    CreateVoiceProfileDomainRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateVoiceProfileDomainRequest.type = Types::CreateVoiceProfileDomainRequest
    CreateVoiceProfileDomainResponse.add_member(:voice_profile_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceProfileDomain, name: "VoiceProfileDomain"))
    CreateVoiceProfileDomainResponse.type = Types::CreateVoiceProfileDomainResponse
    CreateVoiceProfileRequest.add_member(:speaker_search_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString256, name: "SpeakerSearchTaskId", traits: {"smithy.api#required" => {}}))
    CreateVoiceProfileRequest.type = Types::CreateVoiceProfileRequest
    CreateVoiceProfileResponse.add_member(:voice_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceProfile, name: "VoiceProfile"))
    CreateVoiceProfileResponse.type = Types::CreateVoiceProfileResponse
    Credential.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Username"))
    Credential.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Password"))
    Credential.type = Types::Credential
    CredentialList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Credential, name: "member"))
    DNISEmergencyCallingConfiguration.add_member(:emergency_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: E164PhoneNumber, name: "EmergencyPhoneNumber", traits: {"smithy.api#required" => {}}))
    DNISEmergencyCallingConfiguration.add_member(:test_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: E164PhoneNumber, name: "TestPhoneNumber"))
    DNISEmergencyCallingConfiguration.add_member(:calling_country, ::Smithy::Schema::Shapes::MemberShape.new(target: Alpha2CountryCode, name: "CallingCountry", traits: {"smithy.api#required" => {}}))
    DNISEmergencyCallingConfiguration.type = Types::DNISEmergencyCallingConfiguration
    DNISEmergencyCallingConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DNISEmergencyCallingConfiguration, name: "member"))
    DeletePhoneNumberRequest.add_member(:phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "PhoneNumberId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePhoneNumberRequest.type = Types::DeletePhoneNumberRequest
    DeleteProxySessionRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString128, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteProxySessionRequest.add_member(:proxy_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString128, name: "ProxySessionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteProxySessionRequest.type = Types::DeleteProxySessionRequest
    DeleteSipMediaApplicationRequest.add_member(:sip_media_application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "SipMediaApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSipMediaApplicationRequest.type = Types::DeleteSipMediaApplicationRequest
    DeleteSipRuleRequest.add_member(:sip_rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "SipRuleId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSipRuleRequest.type = Types::DeleteSipRuleRequest
    DeleteVoiceConnectorEmergencyCallingConfigurationRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVoiceConnectorEmergencyCallingConfigurationRequest.type = Types::DeleteVoiceConnectorEmergencyCallingConfigurationRequest
    DeleteVoiceConnectorExternalSystemsConfigurationRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVoiceConnectorExternalSystemsConfigurationRequest.type = Types::DeleteVoiceConnectorExternalSystemsConfigurationRequest
    DeleteVoiceConnectorGroupRequest.add_member(:voice_connector_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "VoiceConnectorGroupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVoiceConnectorGroupRequest.type = Types::DeleteVoiceConnectorGroupRequest
    DeleteVoiceConnectorOriginationRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVoiceConnectorOriginationRequest.type = Types::DeleteVoiceConnectorOriginationRequest
    DeleteVoiceConnectorProxyRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString128, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVoiceConnectorProxyRequest.type = Types::DeleteVoiceConnectorProxyRequest
    DeleteVoiceConnectorRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVoiceConnectorRequest.type = Types::DeleteVoiceConnectorRequest
    DeleteVoiceConnectorStreamingConfigurationRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVoiceConnectorStreamingConfigurationRequest.type = Types::DeleteVoiceConnectorStreamingConfigurationRequest
    DeleteVoiceConnectorTerminationCredentialsRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVoiceConnectorTerminationCredentialsRequest.add_member(:usernames, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringList, name: "Usernames", traits: {"smithy.api#required" => {}}))
    DeleteVoiceConnectorTerminationCredentialsRequest.type = Types::DeleteVoiceConnectorTerminationCredentialsRequest
    DeleteVoiceConnectorTerminationRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVoiceConnectorTerminationRequest.type = Types::DeleteVoiceConnectorTerminationRequest
    DeleteVoiceProfileDomainRequest.add_member(:voice_profile_domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString256, name: "VoiceProfileDomainId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVoiceProfileDomainRequest.type = Types::DeleteVoiceProfileDomainRequest
    DeleteVoiceProfileRequest.add_member(:voice_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString256, name: "VoiceProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVoiceProfileRequest.type = Types::DeleteVoiceProfileRequest
    DisassociatePhoneNumbersFromVoiceConnectorGroupRequest.add_member(:voice_connector_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "VoiceConnectorGroupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociatePhoneNumbersFromVoiceConnectorGroupRequest.add_member(:e164_phone_numbers, ::Smithy::Schema::Shapes::MemberShape.new(target: E164PhoneNumberList, name: "E164PhoneNumbers", traits: {"smithy.api#required" => {}}))
    DisassociatePhoneNumbersFromVoiceConnectorGroupRequest.type = Types::DisassociatePhoneNumbersFromVoiceConnectorGroupRequest
    DisassociatePhoneNumbersFromVoiceConnectorGroupResponse.add_member(:phone_number_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberErrorList, name: "PhoneNumberErrors"))
    DisassociatePhoneNumbersFromVoiceConnectorGroupResponse.type = Types::DisassociatePhoneNumbersFromVoiceConnectorGroupResponse
    DisassociatePhoneNumbersFromVoiceConnectorRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociatePhoneNumbersFromVoiceConnectorRequest.add_member(:e164_phone_numbers, ::Smithy::Schema::Shapes::MemberShape.new(target: E164PhoneNumberList, name: "E164PhoneNumbers", traits: {"smithy.api#required" => {}}))
    DisassociatePhoneNumbersFromVoiceConnectorRequest.type = Types::DisassociatePhoneNumbersFromVoiceConnectorRequest
    DisassociatePhoneNumbersFromVoiceConnectorResponse.add_member(:phone_number_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberErrorList, name: "PhoneNumberErrors"))
    DisassociatePhoneNumbersFromVoiceConnectorResponse.type = Types::DisassociatePhoneNumbersFromVoiceConnectorResponse
    E164PhoneNumberList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: E164PhoneNumber, name: "member"))
    EmergencyCallingConfiguration.add_member(:dnis, ::Smithy::Schema::Shapes::MemberShape.new(target: DNISEmergencyCallingConfigurationList, name: "DNIS"))
    EmergencyCallingConfiguration.type = Types::EmergencyCallingConfiguration
    ErrorCode.add_member(:bad_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BadRequest", traits: {"smithy.api#enumValue" => "BadRequest"}))
    ErrorCode.add_member(:conflict, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Conflict", traits: {"smithy.api#enumValue" => "Conflict"}))
    ErrorCode.add_member(:forbidden, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Forbidden", traits: {"smithy.api#enumValue" => "Forbidden"}))
    ErrorCode.add_member(:not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotFound", traits: {"smithy.api#enumValue" => "NotFound"}))
    ErrorCode.add_member(:precondition_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PreconditionFailed", traits: {"smithy.api#enumValue" => "PreconditionFailed"}))
    ErrorCode.add_member(:resource_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResourceLimitExceeded", traits: {"smithy.api#enumValue" => "ResourceLimitExceeded"}))
    ErrorCode.add_member(:service_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ServiceFailure", traits: {"smithy.api#enumValue" => "ServiceFailure"}))
    ErrorCode.add_member(:access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AccessDenied", traits: {"smithy.api#enumValue" => "AccessDenied"}))
    ErrorCode.add_member(:service_unavailable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ServiceUnavailable", traits: {"smithy.api#enumValue" => "ServiceUnavailable"}))
    ErrorCode.add_member(:throttled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Throttled", traits: {"smithy.api#enumValue" => "Throttled"}))
    ErrorCode.add_member(:throttling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Throttling", traits: {"smithy.api#enumValue" => "Throttling"}))
    ErrorCode.add_member(:unauthorized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Unauthorized", traits: {"smithy.api#enumValue" => "Unauthorized"}))
    ErrorCode.add_member(:unprocessable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Unprocessable", traits: {"smithy.api#enumValue" => "Unprocessable"}))
    ErrorCode.add_member(:voice_connector_group_associations_exist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VoiceConnectorGroupAssociationsExist", traits: {"smithy.api#enumValue" => "VoiceConnectorGroupAssociationsExist"}))
    ErrorCode.add_member(:phone_number_associations_exist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PhoneNumberAssociationsExist", traits: {"smithy.api#enumValue" => "PhoneNumberAssociationsExist"}))
    ErrorCode.add_member(:gone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Gone", traits: {"smithy.api#enumValue" => "Gone"}))
    ExternalSystemsConfiguration.add_member(:session_border_controller_types, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionBorderControllerTypeList, name: "SessionBorderControllerTypes"))
    ExternalSystemsConfiguration.add_member(:contact_center_system_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactCenterSystemTypeList, name: "ContactCenterSystemTypes"))
    ExternalSystemsConfiguration.type = Types::ExternalSystemsConfiguration
    ForbiddenException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    ForbiddenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ForbiddenException.type = Types::ForbiddenException
    GeoMatchLevel.add_member(:country, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Country", traits: {"smithy.api#enumValue" => "Country"}))
    GeoMatchLevel.add_member(:area_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AreaCode", traits: {"smithy.api#enumValue" => "AreaCode"}))
    GeoMatchParams.add_member(:country, ::Smithy::Schema::Shapes::MemberShape.new(target: Country, name: "Country", traits: {"smithy.api#required" => {}}))
    GeoMatchParams.add_member(:area_code, ::Smithy::Schema::Shapes::MemberShape.new(target: AreaCode, name: "AreaCode", traits: {"smithy.api#required" => {}}))
    GeoMatchParams.type = Types::GeoMatchParams
    GetGlobalSettingsResponse.add_member(:voice_connector, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceConnectorSettings, name: "VoiceConnector"))
    GetGlobalSettingsResponse.type = Types::GetGlobalSettingsResponse
    GetPhoneNumberOrderRequest.add_member(:phone_number_order_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "PhoneNumberOrderId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPhoneNumberOrderRequest.type = Types::GetPhoneNumberOrderRequest
    GetPhoneNumberOrderResponse.add_member(:phone_number_order, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberOrder, name: "PhoneNumberOrder"))
    GetPhoneNumberOrderResponse.type = Types::GetPhoneNumberOrderResponse
    GetPhoneNumberRequest.add_member(:phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "PhoneNumberId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPhoneNumberRequest.type = Types::GetPhoneNumberRequest
    GetPhoneNumberResponse.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "PhoneNumber"))
    GetPhoneNumberResponse.type = Types::GetPhoneNumberResponse
    GetPhoneNumberSettingsResponse.add_member(:calling_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CallingName, name: "CallingName"))
    GetPhoneNumberSettingsResponse.add_member(:calling_name_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "CallingNameUpdatedTimestamp"))
    GetPhoneNumberSettingsResponse.type = Types::GetPhoneNumberSettingsResponse
    GetProxySessionRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString128, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetProxySessionRequest.add_member(:proxy_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString128, name: "ProxySessionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetProxySessionRequest.type = Types::GetProxySessionRequest
    GetProxySessionResponse.add_member(:proxy_session, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxySession, name: "ProxySession"))
    GetProxySessionResponse.type = Types::GetProxySessionResponse
    GetSipMediaApplicationAlexaSkillConfigurationRequest.add_member(:sip_media_application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "SipMediaApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSipMediaApplicationAlexaSkillConfigurationRequest.type = Types::GetSipMediaApplicationAlexaSkillConfigurationRequest
    GetSipMediaApplicationAlexaSkillConfigurationResponse.add_member(:sip_media_application_alexa_skill_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SipMediaApplicationAlexaSkillConfiguration, name: "SipMediaApplicationAlexaSkillConfiguration"))
    GetSipMediaApplicationAlexaSkillConfigurationResponse.type = Types::GetSipMediaApplicationAlexaSkillConfigurationResponse
    GetSipMediaApplicationLoggingConfigurationRequest.add_member(:sip_media_application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "SipMediaApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSipMediaApplicationLoggingConfigurationRequest.type = Types::GetSipMediaApplicationLoggingConfigurationRequest
    GetSipMediaApplicationLoggingConfigurationResponse.add_member(:sip_media_application_logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SipMediaApplicationLoggingConfiguration, name: "SipMediaApplicationLoggingConfiguration"))
    GetSipMediaApplicationLoggingConfigurationResponse.type = Types::GetSipMediaApplicationLoggingConfigurationResponse
    GetSipMediaApplicationRequest.add_member(:sip_media_application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "SipMediaApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSipMediaApplicationRequest.type = Types::GetSipMediaApplicationRequest
    GetSipMediaApplicationResponse.add_member(:sip_media_application, ::Smithy::Schema::Shapes::MemberShape.new(target: SipMediaApplication, name: "SipMediaApplication"))
    GetSipMediaApplicationResponse.type = Types::GetSipMediaApplicationResponse
    GetSipRuleRequest.add_member(:sip_rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "SipRuleId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSipRuleRequest.type = Types::GetSipRuleRequest
    GetSipRuleResponse.add_member(:sip_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: SipRule, name: "SipRule"))
    GetSipRuleResponse.type = Types::GetSipRuleResponse
    GetSpeakerSearchTaskRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString128, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSpeakerSearchTaskRequest.add_member(:speaker_search_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString256, name: "SpeakerSearchTaskId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSpeakerSearchTaskRequest.type = Types::GetSpeakerSearchTaskRequest
    GetSpeakerSearchTaskResponse.add_member(:speaker_search_task, ::Smithy::Schema::Shapes::MemberShape.new(target: SpeakerSearchTask, name: "SpeakerSearchTask"))
    GetSpeakerSearchTaskResponse.type = Types::GetSpeakerSearchTaskResponse
    GetVoiceConnectorEmergencyCallingConfigurationRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVoiceConnectorEmergencyCallingConfigurationRequest.type = Types::GetVoiceConnectorEmergencyCallingConfigurationRequest
    GetVoiceConnectorEmergencyCallingConfigurationResponse.add_member(:emergency_calling_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EmergencyCallingConfiguration, name: "EmergencyCallingConfiguration"))
    GetVoiceConnectorEmergencyCallingConfigurationResponse.type = Types::GetVoiceConnectorEmergencyCallingConfigurationResponse
    GetVoiceConnectorExternalSystemsConfigurationRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVoiceConnectorExternalSystemsConfigurationRequest.type = Types::GetVoiceConnectorExternalSystemsConfigurationRequest
    GetVoiceConnectorExternalSystemsConfigurationResponse.add_member(:external_systems_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalSystemsConfiguration, name: "ExternalSystemsConfiguration"))
    GetVoiceConnectorExternalSystemsConfigurationResponse.type = Types::GetVoiceConnectorExternalSystemsConfigurationResponse
    GetVoiceConnectorGroupRequest.add_member(:voice_connector_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "VoiceConnectorGroupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVoiceConnectorGroupRequest.type = Types::GetVoiceConnectorGroupRequest
    GetVoiceConnectorGroupResponse.add_member(:voice_connector_group, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceConnectorGroup, name: "VoiceConnectorGroup"))
    GetVoiceConnectorGroupResponse.type = Types::GetVoiceConnectorGroupResponse
    GetVoiceConnectorLoggingConfigurationRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVoiceConnectorLoggingConfigurationRequest.type = Types::GetVoiceConnectorLoggingConfigurationRequest
    GetVoiceConnectorLoggingConfigurationResponse.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfiguration, name: "LoggingConfiguration"))
    GetVoiceConnectorLoggingConfigurationResponse.type = Types::GetVoiceConnectorLoggingConfigurationResponse
    GetVoiceConnectorOriginationRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVoiceConnectorOriginationRequest.type = Types::GetVoiceConnectorOriginationRequest
    GetVoiceConnectorOriginationResponse.add_member(:origination, ::Smithy::Schema::Shapes::MemberShape.new(target: Origination, name: "Origination"))
    GetVoiceConnectorOriginationResponse.type = Types::GetVoiceConnectorOriginationResponse
    GetVoiceConnectorProxyRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString128, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVoiceConnectorProxyRequest.type = Types::GetVoiceConnectorProxyRequest
    GetVoiceConnectorProxyResponse.add_member(:proxy, ::Smithy::Schema::Shapes::MemberShape.new(target: Proxy, name: "Proxy"))
    GetVoiceConnectorProxyResponse.type = Types::GetVoiceConnectorProxyResponse
    GetVoiceConnectorRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVoiceConnectorRequest.type = Types::GetVoiceConnectorRequest
    GetVoiceConnectorResponse.add_member(:voice_connector, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceConnector, name: "VoiceConnector"))
    GetVoiceConnectorResponse.type = Types::GetVoiceConnectorResponse
    GetVoiceConnectorStreamingConfigurationRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVoiceConnectorStreamingConfigurationRequest.type = Types::GetVoiceConnectorStreamingConfigurationRequest
    GetVoiceConnectorStreamingConfigurationResponse.add_member(:streaming_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingConfiguration, name: "StreamingConfiguration"))
    GetVoiceConnectorStreamingConfigurationResponse.type = Types::GetVoiceConnectorStreamingConfigurationResponse
    GetVoiceConnectorTerminationHealthRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVoiceConnectorTerminationHealthRequest.type = Types::GetVoiceConnectorTerminationHealthRequest
    GetVoiceConnectorTerminationHealthResponse.add_member(:termination_health, ::Smithy::Schema::Shapes::MemberShape.new(target: TerminationHealth, name: "TerminationHealth"))
    GetVoiceConnectorTerminationHealthResponse.type = Types::GetVoiceConnectorTerminationHealthResponse
    GetVoiceConnectorTerminationRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVoiceConnectorTerminationRequest.type = Types::GetVoiceConnectorTerminationRequest
    GetVoiceConnectorTerminationResponse.add_member(:termination, ::Smithy::Schema::Shapes::MemberShape.new(target: Termination, name: "Termination"))
    GetVoiceConnectorTerminationResponse.type = Types::GetVoiceConnectorTerminationResponse
    GetVoiceProfileDomainRequest.add_member(:voice_profile_domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString256, name: "VoiceProfileDomainId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVoiceProfileDomainRequest.type = Types::GetVoiceProfileDomainRequest
    GetVoiceProfileDomainResponse.add_member(:voice_profile_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceProfileDomain, name: "VoiceProfileDomain"))
    GetVoiceProfileDomainResponse.type = Types::GetVoiceProfileDomainResponse
    GetVoiceProfileRequest.add_member(:voice_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString256, name: "VoiceProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVoiceProfileRequest.type = Types::GetVoiceProfileRequest
    GetVoiceProfileResponse.add_member(:voice_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceProfile, name: "VoiceProfile"))
    GetVoiceProfileResponse.type = Types::GetVoiceProfileResponse
    GetVoiceToneAnalysisTaskRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString128, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVoiceToneAnalysisTaskRequest.add_member(:voice_tone_analysis_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString256, name: "VoiceToneAnalysisTaskId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVoiceToneAnalysisTaskRequest.add_member(:is_caller, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsCaller", traits: {"smithy.api#httpQuery" => "isCaller", "smithy.api#required" => {}}))
    GetVoiceToneAnalysisTaskRequest.type = Types::GetVoiceToneAnalysisTaskRequest
    GetVoiceToneAnalysisTaskResponse.add_member(:voice_tone_analysis_task, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceToneAnalysisTask, name: "VoiceToneAnalysisTask"))
    GetVoiceToneAnalysisTaskResponse.type = Types::GetVoiceToneAnalysisTaskResponse
    GoneException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    GoneException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    GoneException.type = Types::GoneException
    LanguageCode.add_member(:en_us, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EN_US", traits: {"smithy.api#enumValue" => "en-US"}))
    ListAvailableVoiceConnectorRegionsResponse.add_member(:voice_connector_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceConnectorAwsRegionList, name: "VoiceConnectorRegions"))
    ListAvailableVoiceConnectorRegionsResponse.type = Types::ListAvailableVoiceConnectorRegionsResponse
    ListPhoneNumberOrdersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListPhoneNumberOrdersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultMax, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListPhoneNumberOrdersRequest.type = Types::ListPhoneNumberOrdersRequest
    ListPhoneNumberOrdersResponse.add_member(:phone_number_orders, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberOrderList, name: "PhoneNumberOrders"))
    ListPhoneNumberOrdersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListPhoneNumberOrdersResponse.type = Types::ListPhoneNumberOrdersResponse
    ListPhoneNumbersRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status", traits: {"smithy.api#httpQuery" => "status"}))
    ListPhoneNumbersRequest.add_member(:product_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberProductType, name: "ProductType", traits: {"smithy.api#httpQuery" => "product-type"}))
    ListPhoneNumbersRequest.add_member(:filter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberAssociationName, name: "FilterName", traits: {"smithy.api#httpQuery" => "filter-name"}))
    ListPhoneNumbersRequest.add_member(:filter_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FilterValue", traits: {"smithy.api#httpQuery" => "filter-value"}))
    ListPhoneNumbersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultMax, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListPhoneNumbersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListPhoneNumbersRequest.type = Types::ListPhoneNumbersRequest
    ListPhoneNumbersResponse.add_member(:phone_numbers, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberList, name: "PhoneNumbers"))
    ListPhoneNumbersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListPhoneNumbersResponse.type = Types::ListPhoneNumbersResponse
    ListProxySessionsRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString128, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListProxySessionsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxySessionStatus, name: "Status", traits: {"smithy.api#httpQuery" => "status"}))
    ListProxySessionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenString, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListProxySessionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultMax, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListProxySessionsRequest.type = Types::ListProxySessionsRequest
    ListProxySessionsResponse.add_member(:proxy_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxySessions, name: "ProxySessions"))
    ListProxySessionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenString, name: "NextToken"))
    ListProxySessionsResponse.type = Types::ListProxySessionsResponse
    ListSipMediaApplicationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultMax, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListSipMediaApplicationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenString, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListSipMediaApplicationsRequest.type = Types::ListSipMediaApplicationsRequest
    ListSipMediaApplicationsResponse.add_member(:sip_media_applications, ::Smithy::Schema::Shapes::MemberShape.new(target: SipMediaApplicationList, name: "SipMediaApplications"))
    ListSipMediaApplicationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenString, name: "NextToken"))
    ListSipMediaApplicationsResponse.type = Types::ListSipMediaApplicationsResponse
    ListSipRulesRequest.add_member(:sip_media_application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "SipMediaApplicationId", traits: {"smithy.api#httpQuery" => "sip-media-application"}))
    ListSipRulesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultMax, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListSipRulesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenString, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListSipRulesRequest.type = Types::ListSipRulesRequest
    ListSipRulesResponse.add_member(:sip_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: SipRuleList, name: "SipRules"))
    ListSipRulesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenString, name: "NextToken"))
    ListSipRulesResponse.type = Types::ListSipRulesResponse
    ListSupportedPhoneNumberCountriesRequest.add_member(:product_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberProductType, name: "ProductType", traits: {"smithy.api#httpQuery" => "product-type", "smithy.api#required" => {}}))
    ListSupportedPhoneNumberCountriesRequest.type = Types::ListSupportedPhoneNumberCountriesRequest
    ListSupportedPhoneNumberCountriesResponse.add_member(:phone_number_countries, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberCountriesList, name: "PhoneNumberCountries"))
    ListSupportedPhoneNumberCountriesResponse.type = Types::ListSupportedPhoneNumberCountriesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceARN", traits: {"smithy.api#httpQuery" => "arn", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListVoiceConnectorGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListVoiceConnectorGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultMax, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListVoiceConnectorGroupsRequest.type = Types::ListVoiceConnectorGroupsRequest
    ListVoiceConnectorGroupsResponse.add_member(:voice_connector_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceConnectorGroupList, name: "VoiceConnectorGroups"))
    ListVoiceConnectorGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListVoiceConnectorGroupsResponse.type = Types::ListVoiceConnectorGroupsResponse
    ListVoiceConnectorTerminationCredentialsRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListVoiceConnectorTerminationCredentialsRequest.type = Types::ListVoiceConnectorTerminationCredentialsRequest
    ListVoiceConnectorTerminationCredentialsResponse.add_member(:usernames, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringList, name: "Usernames"))
    ListVoiceConnectorTerminationCredentialsResponse.type = Types::ListVoiceConnectorTerminationCredentialsResponse
    ListVoiceConnectorsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListVoiceConnectorsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultMax, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListVoiceConnectorsRequest.type = Types::ListVoiceConnectorsRequest
    ListVoiceConnectorsResponse.add_member(:voice_connectors, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceConnectorList, name: "VoiceConnectors"))
    ListVoiceConnectorsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListVoiceConnectorsResponse.type = Types::ListVoiceConnectorsResponse
    ListVoiceProfileDomainsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListVoiceProfileDomainsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultMax, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListVoiceProfileDomainsRequest.type = Types::ListVoiceProfileDomainsRequest
    ListVoiceProfileDomainsResponse.add_member(:voice_profile_domains, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceProfileDomainSummaryList, name: "VoiceProfileDomains"))
    ListVoiceProfileDomainsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListVoiceProfileDomainsResponse.type = Types::ListVoiceProfileDomainsResponse
    ListVoiceProfilesRequest.add_member(:voice_profile_domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString256, name: "VoiceProfileDomainId", traits: {"smithy.api#httpQuery" => "voice-profile-domain-id", "smithy.api#required" => {}}))
    ListVoiceProfilesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListVoiceProfilesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultMax, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListVoiceProfilesRequest.type = Types::ListVoiceProfilesRequest
    ListVoiceProfilesResponse.add_member(:voice_profiles, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceProfileSummaryList, name: "VoiceProfiles"))
    ListVoiceProfilesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListVoiceProfilesResponse.type = Types::ListVoiceProfilesResponse
    LoggingConfiguration.add_member(:enable_sip_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EnableSIPLogs"))
    LoggingConfiguration.add_member(:enable_media_metric_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EnableMediaMetricLogs"))
    LoggingConfiguration.type = Types::LoggingConfiguration
    MediaInsightsConfiguration.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Disabled"))
    MediaInsightsConfiguration.add_member(:configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ConfigurationArn"))
    MediaInsightsConfiguration.type = Types::MediaInsightsConfiguration
    NetworkType.add_member(:ipv4_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV4_ONLY", traits: {"smithy.api#enumValue" => "IPV4_ONLY"}))
    NetworkType.add_member(:dual_stack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUAL_STACK", traits: {"smithy.api#enumValue" => "DUAL_STACK"}))
    NonEmptyStringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    NotFoundException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    NotFoundException.type = Types::NotFoundException
    NotificationTarget.add_member(:event_bridge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EventBridge", traits: {"smithy.api#enumValue" => "EventBridge"}))
    NotificationTarget.add_member(:sns, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SNS", traits: {"smithy.api#enumValue" => "SNS"}))
    NotificationTarget.add_member(:sqs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SQS", traits: {"smithy.api#enumValue" => "SQS"}))
    NumberSelectionBehavior.add_member(:prefer_sticky, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PreferSticky", traits: {"smithy.api#enumValue" => "PreferSticky"}))
    NumberSelectionBehavior.add_member(:avoid_sticky, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AvoidSticky", traits: {"smithy.api#enumValue" => "AvoidSticky"}))
    OrderedPhoneNumber.add_member(:e164_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: E164PhoneNumber, name: "E164PhoneNumber"))
    OrderedPhoneNumber.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderedPhoneNumberStatus, name: "Status"))
    OrderedPhoneNumber.type = Types::OrderedPhoneNumber
    OrderedPhoneNumberList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderedPhoneNumber, name: "member"))
    OrderedPhoneNumberStatus.add_member(:processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Processing", traits: {"smithy.api#enumValue" => "Processing"}))
    OrderedPhoneNumberStatus.add_member(:acquired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Acquired", traits: {"smithy.api#enumValue" => "Acquired"}))
    OrderedPhoneNumberStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    Origination.add_member(:routes, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginationRouteList, name: "Routes"))
    Origination.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Disabled"))
    Origination.type = Types::Origination
    OriginationRoute.add_member(:host, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Host"))
    OriginationRoute.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "Port"))
    OriginationRoute.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginationRouteProtocol, name: "Protocol"))
    OriginationRoute.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginationRoutePriority, name: "Priority"))
    OriginationRoute.add_member(:weight, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginationRouteWeight, name: "Weight"))
    OriginationRoute.type = Types::OriginationRoute
    OriginationRouteList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginationRoute, name: "member"))
    OriginationRouteProtocol.add_member(:tcp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TCP", traits: {"smithy.api#enumValue" => "TCP"}))
    OriginationRouteProtocol.add_member(:udp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UDP", traits: {"smithy.api#enumValue" => "UDP"}))
    Participant.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: E164PhoneNumber, name: "PhoneNumber"))
    Participant.add_member(:proxy_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: E164PhoneNumber, name: "ProxyPhoneNumber"))
    Participant.type = Types::Participant
    ParticipantPhoneNumberList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: E164PhoneNumber, name: "member"))
    Participants.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Participant, name: "member"))
    PhoneNumber.add_member(:phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "PhoneNumberId"))
    PhoneNumber.add_member(:e164_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: E164PhoneNumber, name: "E164PhoneNumber"))
    PhoneNumber.add_member(:country, ::Smithy::Schema::Shapes::MemberShape.new(target: Alpha2CountryCode, name: "Country"))
    PhoneNumber.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberType, name: "Type"))
    PhoneNumber.add_member(:product_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberProductType, name: "ProductType"))
    PhoneNumber.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberStatus, name: "Status"))
    PhoneNumber.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberCapabilities, name: "Capabilities"))
    PhoneNumber.add_member(:associations, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberAssociationList, name: "Associations"))
    PhoneNumber.add_member(:calling_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CallingName, name: "CallingName"))
    PhoneNumber.add_member(:calling_name_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CallingNameStatus, name: "CallingNameStatus"))
    PhoneNumber.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "CreatedTimestamp"))
    PhoneNumber.add_member(:updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "UpdatedTimestamp"))
    PhoneNumber.add_member(:deletion_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "DeletionTimestamp"))
    PhoneNumber.add_member(:order_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "OrderId"))
    PhoneNumber.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberName, name: "Name"))
    PhoneNumber.type = Types::PhoneNumber
    PhoneNumberAssociation.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Value"))
    PhoneNumberAssociation.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberAssociationName, name: "Name"))
    PhoneNumberAssociation.add_member(:associated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "AssociatedTimestamp"))
    PhoneNumberAssociation.type = Types::PhoneNumberAssociation
    PhoneNumberAssociationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberAssociation, name: "member"))
    PhoneNumberAssociationName.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VoiceConnectorId", traits: {"smithy.api#enumValue" => "VoiceConnectorId"}))
    PhoneNumberAssociationName.add_member(:voice_connector_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VoiceConnectorGroupId", traits: {"smithy.api#enumValue" => "VoiceConnectorGroupId"}))
    PhoneNumberAssociationName.add_member(:sip_rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SipRuleId", traits: {"smithy.api#enumValue" => "SipRuleId"}))
    PhoneNumberCapabilities.add_member(:inbound_call, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "InboundCall"))
    PhoneNumberCapabilities.add_member(:outbound_call, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "OutboundCall"))
    PhoneNumberCapabilities.add_member(:inbound_sms, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "InboundSMS"))
    PhoneNumberCapabilities.add_member(:outbound_sms, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "OutboundSMS"))
    PhoneNumberCapabilities.add_member(:inbound_mms, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "InboundMMS"))
    PhoneNumberCapabilities.add_member(:outbound_mms, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "OutboundMMS"))
    PhoneNumberCapabilities.type = Types::PhoneNumberCapabilities
    PhoneNumberCountriesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberCountry, name: "member"))
    PhoneNumberCountry.add_member(:country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: Alpha2CountryCode, name: "CountryCode"))
    PhoneNumberCountry.add_member(:supported_phone_number_types, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberTypeList, name: "SupportedPhoneNumberTypes"))
    PhoneNumberCountry.type = Types::PhoneNumberCountry
    PhoneNumberError.add_member(:phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "PhoneNumberId"))
    PhoneNumberError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    PhoneNumberError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorMessage"))
    PhoneNumberError.type = Types::PhoneNumberError
    PhoneNumberErrorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberError, name: "member"))
    PhoneNumberList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "member"))
    PhoneNumberOrder.add_member(:phone_number_order_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "PhoneNumberOrderId"))
    PhoneNumberOrder.add_member(:product_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberProductType, name: "ProductType"))
    PhoneNumberOrder.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberOrderStatus, name: "Status"))
    PhoneNumberOrder.add_member(:order_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberOrderType, name: "OrderType"))
    PhoneNumberOrder.add_member(:ordered_phone_numbers, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderedPhoneNumberList, name: "OrderedPhoneNumbers"))
    PhoneNumberOrder.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "CreatedTimestamp"))
    PhoneNumberOrder.add_member(:updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "UpdatedTimestamp"))
    PhoneNumberOrder.add_member(:foc_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "FocDate"))
    PhoneNumberOrder.type = Types::PhoneNumberOrder
    PhoneNumberOrderList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberOrder, name: "member"))
    PhoneNumberOrderStatus.add_member(:processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Processing", traits: {"smithy.api#enumValue" => "Processing"}))
    PhoneNumberOrderStatus.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Successful", traits: {"smithy.api#enumValue" => "Successful"}))
    PhoneNumberOrderStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    PhoneNumberOrderStatus.add_member(:partial, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Partial", traits: {"smithy.api#enumValue" => "Partial"}))
    PhoneNumberOrderStatus.add_member(:pending_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PendingDocuments", traits: {"smithy.api#enumValue" => "PendingDocuments"}))
    PhoneNumberOrderStatus.add_member(:submitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Submitted", traits: {"smithy.api#enumValue" => "Submitted"}))
    PhoneNumberOrderStatus.add_member(:foc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FOC", traits: {"smithy.api#enumValue" => "FOC"}))
    PhoneNumberOrderStatus.add_member(:change_requested, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ChangeRequested", traits: {"smithy.api#enumValue" => "ChangeRequested"}))
    PhoneNumberOrderStatus.add_member(:exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Exception", traits: {"smithy.api#enumValue" => "Exception"}))
    PhoneNumberOrderStatus.add_member(:cancel_requested, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CancelRequested", traits: {"smithy.api#enumValue" => "CancelRequested"}))
    PhoneNumberOrderStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Cancelled", traits: {"smithy.api#enumValue" => "Cancelled"}))
    PhoneNumberOrderType.add_member(:new, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "New", traits: {"smithy.api#enumValue" => "New"}))
    PhoneNumberOrderType.add_member(:porting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Porting", traits: {"smithy.api#enumValue" => "Porting"}))
    PhoneNumberProductType.add_member(:voice_connector, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VoiceConnector", traits: {"smithy.api#enumValue" => "VoiceConnector"}))
    PhoneNumberProductType.add_member(:sip_media_application_dial_in, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SipMediaApplicationDialIn", traits: {"smithy.api#enumValue" => "SipMediaApplicationDialIn"}))
    PhoneNumberStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Cancelled", traits: {"smithy.api#enumValue" => "Cancelled"}))
    PhoneNumberStatus.add_member(:portin_cancel_requested, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PortinCancelRequested", traits: {"smithy.api#enumValue" => "PortinCancelRequested"}))
    PhoneNumberStatus.add_member(:portin_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PortinInProgress", traits: {"smithy.api#enumValue" => "PortinInProgress"}))
    PhoneNumberStatus.add_member(:acquire_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AcquireInProgress", traits: {"smithy.api#enumValue" => "AcquireInProgress"}))
    PhoneNumberStatus.add_member(:acquire_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AcquireFailed", traits: {"smithy.api#enumValue" => "AcquireFailed"}))
    PhoneNumberStatus.add_member(:unassigned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Unassigned", traits: {"smithy.api#enumValue" => "Unassigned"}))
    PhoneNumberStatus.add_member(:assigned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Assigned", traits: {"smithy.api#enumValue" => "Assigned"}))
    PhoneNumberStatus.add_member(:release_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ReleaseInProgress", traits: {"smithy.api#enumValue" => "ReleaseInProgress"}))
    PhoneNumberStatus.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeleteInProgress", traits: {"smithy.api#enumValue" => "DeleteInProgress"}))
    PhoneNumberStatus.add_member(:release_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ReleaseFailed", traits: {"smithy.api#enumValue" => "ReleaseFailed"}))
    PhoneNumberStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeleteFailed", traits: {"smithy.api#enumValue" => "DeleteFailed"}))
    PhoneNumberType.add_member(:local, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Local", traits: {"smithy.api#enumValue" => "Local"}))
    PhoneNumberType.add_member(:toll_free, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TollFree", traits: {"smithy.api#enumValue" => "TollFree"}))
    PhoneNumberTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberType, name: "member"))
    Proxy.add_member(:default_session_expiry_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "DefaultSessionExpiryMinutes"))
    Proxy.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Disabled"))
    Proxy.add_member(:fall_back_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: E164PhoneNumber, name: "FallBackPhoneNumber"))
    Proxy.add_member(:phone_number_countries, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "PhoneNumberCountries"))
    Proxy.type = Types::Proxy
    ProxySession.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString128, name: "VoiceConnectorId"))
    ProxySession.add_member(:proxy_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString128, name: "ProxySessionId"))
    ProxySession.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String128, name: "Name"))
    ProxySession.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxySessionStatus, name: "Status"))
    ProxySession.add_member(:expiry_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "ExpiryMinutes"))
    ProxySession.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityList, name: "Capabilities"))
    ProxySession.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "CreatedTimestamp"))
    ProxySession.add_member(:updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "UpdatedTimestamp"))
    ProxySession.add_member(:ended_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "EndedTimestamp"))
    ProxySession.add_member(:participants, ::Smithy::Schema::Shapes::MemberShape.new(target: Participants, name: "Participants"))
    ProxySession.add_member(:number_selection_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberSelectionBehavior, name: "NumberSelectionBehavior"))
    ProxySession.add_member(:geo_match_level, ::Smithy::Schema::Shapes::MemberShape.new(target: GeoMatchLevel, name: "GeoMatchLevel"))
    ProxySession.add_member(:geo_match_params, ::Smithy::Schema::Shapes::MemberShape.new(target: GeoMatchParams, name: "GeoMatchParams"))
    ProxySession.type = Types::ProxySession
    ProxySessionStatus.add_member(:open, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Open", traits: {"smithy.api#enumValue" => "Open"}))
    ProxySessionStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InProgress", traits: {"smithy.api#enumValue" => "InProgress"}))
    ProxySessionStatus.add_member(:closed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Closed", traits: {"smithy.api#enumValue" => "Closed"}))
    ProxySessions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxySession, name: "member"))
    PutSipMediaApplicationAlexaSkillConfigurationRequest.add_member(:sip_media_application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "SipMediaApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutSipMediaApplicationAlexaSkillConfigurationRequest.add_member(:sip_media_application_alexa_skill_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SipMediaApplicationAlexaSkillConfiguration, name: "SipMediaApplicationAlexaSkillConfiguration"))
    PutSipMediaApplicationAlexaSkillConfigurationRequest.type = Types::PutSipMediaApplicationAlexaSkillConfigurationRequest
    PutSipMediaApplicationAlexaSkillConfigurationResponse.add_member(:sip_media_application_alexa_skill_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SipMediaApplicationAlexaSkillConfiguration, name: "SipMediaApplicationAlexaSkillConfiguration"))
    PutSipMediaApplicationAlexaSkillConfigurationResponse.type = Types::PutSipMediaApplicationAlexaSkillConfigurationResponse
    PutSipMediaApplicationLoggingConfigurationRequest.add_member(:sip_media_application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "SipMediaApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutSipMediaApplicationLoggingConfigurationRequest.add_member(:sip_media_application_logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SipMediaApplicationLoggingConfiguration, name: "SipMediaApplicationLoggingConfiguration"))
    PutSipMediaApplicationLoggingConfigurationRequest.type = Types::PutSipMediaApplicationLoggingConfigurationRequest
    PutSipMediaApplicationLoggingConfigurationResponse.add_member(:sip_media_application_logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SipMediaApplicationLoggingConfiguration, name: "SipMediaApplicationLoggingConfiguration"))
    PutSipMediaApplicationLoggingConfigurationResponse.type = Types::PutSipMediaApplicationLoggingConfigurationResponse
    PutVoiceConnectorEmergencyCallingConfigurationRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutVoiceConnectorEmergencyCallingConfigurationRequest.add_member(:emergency_calling_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EmergencyCallingConfiguration, name: "EmergencyCallingConfiguration", traits: {"smithy.api#required" => {}}))
    PutVoiceConnectorEmergencyCallingConfigurationRequest.type = Types::PutVoiceConnectorEmergencyCallingConfigurationRequest
    PutVoiceConnectorEmergencyCallingConfigurationResponse.add_member(:emergency_calling_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EmergencyCallingConfiguration, name: "EmergencyCallingConfiguration"))
    PutVoiceConnectorEmergencyCallingConfigurationResponse.type = Types::PutVoiceConnectorEmergencyCallingConfigurationResponse
    PutVoiceConnectorExternalSystemsConfigurationRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString128, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutVoiceConnectorExternalSystemsConfigurationRequest.add_member(:session_border_controller_types, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionBorderControllerTypeList, name: "SessionBorderControllerTypes"))
    PutVoiceConnectorExternalSystemsConfigurationRequest.add_member(:contact_center_system_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactCenterSystemTypeList, name: "ContactCenterSystemTypes"))
    PutVoiceConnectorExternalSystemsConfigurationRequest.type = Types::PutVoiceConnectorExternalSystemsConfigurationRequest
    PutVoiceConnectorExternalSystemsConfigurationResponse.add_member(:external_systems_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalSystemsConfiguration, name: "ExternalSystemsConfiguration"))
    PutVoiceConnectorExternalSystemsConfigurationResponse.type = Types::PutVoiceConnectorExternalSystemsConfigurationResponse
    PutVoiceConnectorLoggingConfigurationRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutVoiceConnectorLoggingConfigurationRequest.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfiguration, name: "LoggingConfiguration", traits: {"smithy.api#required" => {}}))
    PutVoiceConnectorLoggingConfigurationRequest.type = Types::PutVoiceConnectorLoggingConfigurationRequest
    PutVoiceConnectorLoggingConfigurationResponse.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfiguration, name: "LoggingConfiguration"))
    PutVoiceConnectorLoggingConfigurationResponse.type = Types::PutVoiceConnectorLoggingConfigurationResponse
    PutVoiceConnectorOriginationRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutVoiceConnectorOriginationRequest.add_member(:origination, ::Smithy::Schema::Shapes::MemberShape.new(target: Origination, name: "Origination", traits: {"smithy.api#required" => {}}))
    PutVoiceConnectorOriginationRequest.type = Types::PutVoiceConnectorOriginationRequest
    PutVoiceConnectorOriginationResponse.add_member(:origination, ::Smithy::Schema::Shapes::MemberShape.new(target: Origination, name: "Origination"))
    PutVoiceConnectorOriginationResponse.type = Types::PutVoiceConnectorOriginationResponse
    PutVoiceConnectorProxyRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString128, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutVoiceConnectorProxyRequest.add_member(:default_session_expiry_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "DefaultSessionExpiryMinutes", traits: {"smithy.api#required" => {}}))
    PutVoiceConnectorProxyRequest.add_member(:phone_number_pool_countries, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryList, name: "PhoneNumberPoolCountries", traits: {"smithy.api#required" => {}}))
    PutVoiceConnectorProxyRequest.add_member(:fall_back_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: E164PhoneNumber, name: "FallBackPhoneNumber"))
    PutVoiceConnectorProxyRequest.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Disabled"))
    PutVoiceConnectorProxyRequest.type = Types::PutVoiceConnectorProxyRequest
    PutVoiceConnectorProxyResponse.add_member(:proxy, ::Smithy::Schema::Shapes::MemberShape.new(target: Proxy, name: "Proxy"))
    PutVoiceConnectorProxyResponse.type = Types::PutVoiceConnectorProxyResponse
    PutVoiceConnectorStreamingConfigurationRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutVoiceConnectorStreamingConfigurationRequest.add_member(:streaming_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingConfiguration, name: "StreamingConfiguration", traits: {"smithy.api#required" => {}}))
    PutVoiceConnectorStreamingConfigurationRequest.type = Types::PutVoiceConnectorStreamingConfigurationRequest
    PutVoiceConnectorStreamingConfigurationResponse.add_member(:streaming_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingConfiguration, name: "StreamingConfiguration"))
    PutVoiceConnectorStreamingConfigurationResponse.type = Types::PutVoiceConnectorStreamingConfigurationResponse
    PutVoiceConnectorTerminationCredentialsRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutVoiceConnectorTerminationCredentialsRequest.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialList, name: "Credentials"))
    PutVoiceConnectorTerminationCredentialsRequest.type = Types::PutVoiceConnectorTerminationCredentialsRequest
    PutVoiceConnectorTerminationRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutVoiceConnectorTerminationRequest.add_member(:termination, ::Smithy::Schema::Shapes::MemberShape.new(target: Termination, name: "Termination", traits: {"smithy.api#required" => {}}))
    PutVoiceConnectorTerminationRequest.type = Types::PutVoiceConnectorTerminationRequest
    PutVoiceConnectorTerminationResponse.add_member(:termination, ::Smithy::Schema::Shapes::MemberShape.new(target: Termination, name: "Termination"))
    PutVoiceConnectorTerminationResponse.type = Types::PutVoiceConnectorTerminationResponse
    ResourceLimitExceededException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    ResourceLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ResourceLimitExceededException.type = Types::ResourceLimitExceededException
    RestorePhoneNumberRequest.add_member(:phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "PhoneNumberId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RestorePhoneNumberRequest.type = Types::RestorePhoneNumberRequest
    RestorePhoneNumberResponse.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "PhoneNumber"))
    RestorePhoneNumberResponse.type = Types::RestorePhoneNumberResponse
    SMACreateCallArgumentsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "key"))
    SMACreateCallArgumentsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "value"))
    SMAUpdateCallArgumentsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "key"))
    SMAUpdateCallArgumentsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "value"))
    SearchAvailablePhoneNumbersRequest.add_member(:area_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AreaCode", traits: {"smithy.api#httpQuery" => "area-code"}))
    SearchAvailablePhoneNumbersRequest.add_member(:city, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "City", traits: {"smithy.api#httpQuery" => "city"}))
    SearchAvailablePhoneNumbersRequest.add_member(:country, ::Smithy::Schema::Shapes::MemberShape.new(target: Alpha2CountryCode, name: "Country", traits: {"smithy.api#httpQuery" => "country"}))
    SearchAvailablePhoneNumbersRequest.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "State", traits: {"smithy.api#httpQuery" => "state"}))
    SearchAvailablePhoneNumbersRequest.add_member(:toll_free_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: TollFreePrefix, name: "TollFreePrefix", traits: {"smithy.api#httpQuery" => "toll-free-prefix"}))
    SearchAvailablePhoneNumbersRequest.add_member(:phone_number_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberType, name: "PhoneNumberType", traits: {"smithy.api#httpQuery" => "phone-number-type"}))
    SearchAvailablePhoneNumbersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberMaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    SearchAvailablePhoneNumbersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    SearchAvailablePhoneNumbersRequest.type = Types::SearchAvailablePhoneNumbersRequest
    SearchAvailablePhoneNumbersResponse.add_member(:e164_phone_numbers, ::Smithy::Schema::Shapes::MemberShape.new(target: E164PhoneNumberList, name: "E164PhoneNumbers"))
    SearchAvailablePhoneNumbersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    SearchAvailablePhoneNumbersResponse.type = Types::SearchAvailablePhoneNumbersResponse
    SensitiveStringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "member"))
    ServerSideEncryptionConfiguration.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "KmsKeyArn", traits: {"smithy.api#required" => {}}))
    ServerSideEncryptionConfiguration.type = Types::ServerSideEncryptionConfiguration
    ServiceFailureException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    ServiceFailureException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ServiceFailureException.type = Types::ServiceFailureException
    ServiceUnavailableException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SessionBorderControllerType.add_member(:ribbon_sbc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RIBBON_SBC", traits: {"smithy.api#enumValue" => "RIBBON_SBC"}))
    SessionBorderControllerType.add_member(:oracle_acme_packet_sbc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORACLE_ACME_PACKET_SBC", traits: {"smithy.api#enumValue" => "ORACLE_ACME_PACKET_SBC"}))
    SessionBorderControllerType.add_member(:avaya_sbce, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAYA_SBCE", traits: {"smithy.api#enumValue" => "AVAYA_SBCE"}))
    SessionBorderControllerType.add_member(:cisco_unified_border_element, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CISCO_UNIFIED_BORDER_ELEMENT", traits: {"smithy.api#enumValue" => "CISCO_UNIFIED_BORDER_ELEMENT"}))
    SessionBorderControllerType.add_member(:audiocodes_mediant_sbc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUDIOCODES_MEDIANT_SBC", traits: {"smithy.api#enumValue" => "AUDIOCODES_MEDIANT_SBC"}))
    SessionBorderControllerTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionBorderControllerType, name: "member"))
    SipHeadersMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "key"))
    SipHeadersMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "value"))
    SipMediaApplication.add_member(:sip_media_application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "SipMediaApplicationId"))
    SipMediaApplication.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AwsRegion"))
    SipMediaApplication.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SipMediaApplicationName, name: "Name"))
    SipMediaApplication.add_member(:endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: SipMediaApplicationEndpointList, name: "Endpoints"))
    SipMediaApplication.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "CreatedTimestamp"))
    SipMediaApplication.add_member(:updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "UpdatedTimestamp"))
    SipMediaApplication.add_member(:sip_media_application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "SipMediaApplicationArn"))
    SipMediaApplication.type = Types::SipMediaApplication
    SipMediaApplicationAlexaSkillConfiguration.add_member(:alexa_skill_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AlexaSkillStatus, name: "AlexaSkillStatus", traits: {"smithy.api#required" => {}}))
    SipMediaApplicationAlexaSkillConfiguration.add_member(:alexa_skill_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AlexaSkillIdList, name: "AlexaSkillIds", traits: {"smithy.api#required" => {}}))
    SipMediaApplicationAlexaSkillConfiguration.type = Types::SipMediaApplicationAlexaSkillConfiguration
    SipMediaApplicationCall.add_member(:transaction_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "TransactionId"))
    SipMediaApplicationCall.type = Types::SipMediaApplicationCall
    SipMediaApplicationEndpoint.add_member(:lambda_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "LambdaArn"))
    SipMediaApplicationEndpoint.type = Types::SipMediaApplicationEndpoint
    SipMediaApplicationEndpointList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SipMediaApplicationEndpoint, name: "member"))
    SipMediaApplicationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SipMediaApplication, name: "member"))
    SipMediaApplicationLoggingConfiguration.add_member(:enable_sip_media_application_message_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EnableSipMediaApplicationMessageLogs"))
    SipMediaApplicationLoggingConfiguration.type = Types::SipMediaApplicationLoggingConfiguration
    SipRule.add_member(:sip_rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "SipRuleId"))
    SipRule.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SipRuleName, name: "Name"))
    SipRule.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Disabled"))
    SipRule.add_member(:trigger_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SipRuleTriggerType, name: "TriggerType"))
    SipRule.add_member(:trigger_value, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "TriggerValue"))
    SipRule.add_member(:target_applications, ::Smithy::Schema::Shapes::MemberShape.new(target: SipRuleTargetApplicationList, name: "TargetApplications"))
    SipRule.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "CreatedTimestamp"))
    SipRule.add_member(:updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "UpdatedTimestamp"))
    SipRule.type = Types::SipRule
    SipRuleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SipRule, name: "member"))
    SipRuleTargetApplication.add_member(:sip_media_application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "SipMediaApplicationId"))
    SipRuleTargetApplication.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: SipApplicationPriority, name: "Priority"))
    SipRuleTargetApplication.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AwsRegion"))
    SipRuleTargetApplication.type = Types::SipRuleTargetApplication
    SipRuleTargetApplicationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SipRuleTargetApplication, name: "member"))
    SipRuleTriggerType.add_member(:to_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ToPhoneNumber", traits: {"smithy.api#enumValue" => "ToPhoneNumber"}))
    SipRuleTriggerType.add_member(:request_uri_hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RequestUriHostname", traits: {"smithy.api#enumValue" => "RequestUriHostname"}))
    SpeakerSearchDetails.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: SpeakerSearchResultList, name: "Results"))
    SpeakerSearchDetails.add_member(:voiceprint_generation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString256, name: "VoiceprintGenerationStatus"))
    SpeakerSearchDetails.type = Types::SpeakerSearchDetails
    SpeakerSearchResult.add_member(:confidence_score, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfidenceScore, name: "ConfidenceScore", traits: {"smithy.api#default" => 0}))
    SpeakerSearchResult.add_member(:voice_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString256, name: "VoiceProfileId"))
    SpeakerSearchResult.type = Types::SpeakerSearchResult
    SpeakerSearchResultList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SpeakerSearchResult, name: "member"))
    SpeakerSearchTask.add_member(:speaker_search_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString256, name: "SpeakerSearchTaskId"))
    SpeakerSearchTask.add_member(:speaker_search_task_status, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "SpeakerSearchTaskStatus"))
    SpeakerSearchTask.add_member(:call_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CallDetails, name: "CallDetails"))
    SpeakerSearchTask.add_member(:speaker_search_details, ::Smithy::Schema::Shapes::MemberShape.new(target: SpeakerSearchDetails, name: "SpeakerSearchDetails"))
    SpeakerSearchTask.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "CreatedTimestamp"))
    SpeakerSearchTask.add_member(:updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "UpdatedTimestamp"))
    SpeakerSearchTask.add_member(:started_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "StartedTimestamp"))
    SpeakerSearchTask.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StatusMessage"))
    SpeakerSearchTask.type = Types::SpeakerSearchTask
    StartSpeakerSearchTaskRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString128, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartSpeakerSearchTaskRequest.add_member(:transaction_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString256, name: "TransactionId", traits: {"smithy.api#required" => {}}))
    StartSpeakerSearchTaskRequest.add_member(:voice_profile_domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString256, name: "VoiceProfileDomainId", traits: {"smithy.api#required" => {}}))
    StartSpeakerSearchTaskRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestId, name: "ClientRequestToken"))
    StartSpeakerSearchTaskRequest.add_member(:call_leg, ::Smithy::Schema::Shapes::MemberShape.new(target: CallLegType, name: "CallLeg"))
    StartSpeakerSearchTaskRequest.type = Types::StartSpeakerSearchTaskRequest
    StartSpeakerSearchTaskResponse.add_member(:speaker_search_task, ::Smithy::Schema::Shapes::MemberShape.new(target: SpeakerSearchTask, name: "SpeakerSearchTask"))
    StartSpeakerSearchTaskResponse.type = Types::StartSpeakerSearchTaskResponse
    StartVoiceToneAnalysisTaskRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString128, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartVoiceToneAnalysisTaskRequest.add_member(:transaction_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString256, name: "TransactionId", traits: {"smithy.api#required" => {}}))
    StartVoiceToneAnalysisTaskRequest.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode", traits: {"smithy.api#required" => {}}))
    StartVoiceToneAnalysisTaskRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestId, name: "ClientRequestToken"))
    StartVoiceToneAnalysisTaskRequest.type = Types::StartVoiceToneAnalysisTaskRequest
    StartVoiceToneAnalysisTaskResponse.add_member(:voice_tone_analysis_task, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceToneAnalysisTask, name: "VoiceToneAnalysisTask"))
    StartVoiceToneAnalysisTaskResponse.type = Types::StartVoiceToneAnalysisTaskResponse
    StopSpeakerSearchTaskRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString128, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopSpeakerSearchTaskRequest.add_member(:speaker_search_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString256, name: "SpeakerSearchTaskId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopSpeakerSearchTaskRequest.type = Types::StopSpeakerSearchTaskRequest
    StopVoiceToneAnalysisTaskRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString128, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopVoiceToneAnalysisTaskRequest.add_member(:voice_tone_analysis_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString256, name: "VoiceToneAnalysisTaskId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopVoiceToneAnalysisTaskRequest.type = Types::StopVoiceToneAnalysisTaskRequest
    StreamingConfiguration.add_member(:data_retention_in_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRetentionInHours, name: "DataRetentionInHours", traits: {"smithy.api#required" => {}}))
    StreamingConfiguration.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Disabled", traits: {"smithy.api#required" => {}}))
    StreamingConfiguration.add_member(:streaming_notification_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingNotificationTargetList, name: "StreamingNotificationTargets"))
    StreamingConfiguration.add_member(:media_insights_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaInsightsConfiguration, name: "MediaInsightsConfiguration"))
    StreamingConfiguration.type = Types::StreamingConfiguration
    StreamingNotificationTarget.add_member(:notification_target, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationTarget, name: "NotificationTarget"))
    StreamingNotificationTarget.type = Types::StreamingNotificationTarget
    StreamingNotificationTargetList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingNotificationTarget, name: "member"))
    StringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    Termination.add_member(:cps_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: CpsLimit, name: "CpsLimit"))
    Termination.add_member(:default_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: E164PhoneNumber, name: "DefaultPhoneNumber"))
    Termination.add_member(:calling_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: CallingRegionList, name: "CallingRegions"))
    Termination.add_member(:cidr_allowed_list, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "CidrAllowedList"))
    Termination.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Disabled"))
    Termination.type = Types::Termination
    TerminationHealth.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "Timestamp"))
    TerminationHealth.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Source"))
    TerminationHealth.type = Types::TerminationHealth
    ThrottledClientException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    ThrottledClientException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ThrottledClientException.type = Types::ThrottledClientException
    UnauthorizedClientException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    UnauthorizedClientException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    UnauthorizedClientException.type = Types::UnauthorizedClientException
    UnprocessableEntityException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    UnprocessableEntityException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    UnprocessableEntityException.type = Types::UnprocessableEntityException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateGlobalSettingsRequest.add_member(:voice_connector, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceConnectorSettings, name: "VoiceConnector"))
    UpdateGlobalSettingsRequest.type = Types::UpdateGlobalSettingsRequest
    UpdatePhoneNumberRequest.add_member(:phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "PhoneNumberId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePhoneNumberRequest.add_member(:product_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberProductType, name: "ProductType"))
    UpdatePhoneNumberRequest.add_member(:calling_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CallingName, name: "CallingName"))
    UpdatePhoneNumberRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberName, name: "Name"))
    UpdatePhoneNumberRequest.type = Types::UpdatePhoneNumberRequest
    UpdatePhoneNumberRequestItem.add_member(:phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "PhoneNumberId", traits: {"smithy.api#required" => {}}))
    UpdatePhoneNumberRequestItem.add_member(:product_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberProductType, name: "ProductType"))
    UpdatePhoneNumberRequestItem.add_member(:calling_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CallingName, name: "CallingName"))
    UpdatePhoneNumberRequestItem.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumberName, name: "Name"))
    UpdatePhoneNumberRequestItem.type = Types::UpdatePhoneNumberRequestItem
    UpdatePhoneNumberRequestItemList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatePhoneNumberRequestItem, name: "member"))
    UpdatePhoneNumberResponse.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "PhoneNumber"))
    UpdatePhoneNumberResponse.type = Types::UpdatePhoneNumberResponse
    UpdatePhoneNumberSettingsRequest.add_member(:calling_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CallingName, name: "CallingName", traits: {"smithy.api#required" => {}}))
    UpdatePhoneNumberSettingsRequest.type = Types::UpdatePhoneNumberSettingsRequest
    UpdateProxySessionRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString128, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateProxySessionRequest.add_member(:proxy_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString128, name: "ProxySessionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateProxySessionRequest.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityList, name: "Capabilities", traits: {"smithy.api#required" => {}}))
    UpdateProxySessionRequest.add_member(:expiry_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "ExpiryMinutes"))
    UpdateProxySessionRequest.type = Types::UpdateProxySessionRequest
    UpdateProxySessionResponse.add_member(:proxy_session, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxySession, name: "ProxySession"))
    UpdateProxySessionResponse.type = Types::UpdateProxySessionResponse
    UpdateSipMediaApplicationCallRequest.add_member(:sip_media_application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "SipMediaApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSipMediaApplicationCallRequest.add_member(:transaction_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "TransactionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSipMediaApplicationCallRequest.add_member(:arguments, ::Smithy::Schema::Shapes::MemberShape.new(target: SMAUpdateCallArgumentsMap, name: "Arguments", traits: {"smithy.api#required" => {}}))
    UpdateSipMediaApplicationCallRequest.type = Types::UpdateSipMediaApplicationCallRequest
    UpdateSipMediaApplicationCallResponse.add_member(:sip_media_application_call, ::Smithy::Schema::Shapes::MemberShape.new(target: SipMediaApplicationCall, name: "SipMediaApplicationCall"))
    UpdateSipMediaApplicationCallResponse.type = Types::UpdateSipMediaApplicationCallResponse
    UpdateSipMediaApplicationRequest.add_member(:sip_media_application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "SipMediaApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSipMediaApplicationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SipMediaApplicationName, name: "Name"))
    UpdateSipMediaApplicationRequest.add_member(:endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: SipMediaApplicationEndpointList, name: "Endpoints"))
    UpdateSipMediaApplicationRequest.type = Types::UpdateSipMediaApplicationRequest
    UpdateSipMediaApplicationResponse.add_member(:sip_media_application, ::Smithy::Schema::Shapes::MemberShape.new(target: SipMediaApplication, name: "SipMediaApplication"))
    UpdateSipMediaApplicationResponse.type = Types::UpdateSipMediaApplicationResponse
    UpdateSipRuleRequest.add_member(:sip_rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "SipRuleId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSipRuleRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SipRuleName, name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateSipRuleRequest.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "Disabled"))
    UpdateSipRuleRequest.add_member(:target_applications, ::Smithy::Schema::Shapes::MemberShape.new(target: SipRuleTargetApplicationList, name: "TargetApplications"))
    UpdateSipRuleRequest.type = Types::UpdateSipRuleRequest
    UpdateSipRuleResponse.add_member(:sip_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: SipRule, name: "SipRule"))
    UpdateSipRuleResponse.type = Types::UpdateSipRuleResponse
    UpdateVoiceConnectorGroupRequest.add_member(:voice_connector_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "VoiceConnectorGroupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateVoiceConnectorGroupRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceConnectorGroupName, name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateVoiceConnectorGroupRequest.add_member(:voice_connector_items, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceConnectorItemList, name: "VoiceConnectorItems", traits: {"smithy.api#required" => {}}))
    UpdateVoiceConnectorGroupRequest.type = Types::UpdateVoiceConnectorGroupRequest
    UpdateVoiceConnectorGroupResponse.add_member(:voice_connector_group, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceConnectorGroup, name: "VoiceConnectorGroup"))
    UpdateVoiceConnectorGroupResponse.type = Types::UpdateVoiceConnectorGroupResponse
    UpdateVoiceConnectorRequest.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "VoiceConnectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateVoiceConnectorRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceConnectorName, name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateVoiceConnectorRequest.add_member(:require_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "RequireEncryption", traits: {"smithy.api#required" => {}}))
    UpdateVoiceConnectorRequest.type = Types::UpdateVoiceConnectorRequest
    UpdateVoiceConnectorResponse.add_member(:voice_connector, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceConnector, name: "VoiceConnector"))
    UpdateVoiceConnectorResponse.type = Types::UpdateVoiceConnectorResponse
    UpdateVoiceProfileDomainRequest.add_member(:voice_profile_domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString256, name: "VoiceProfileDomainId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateVoiceProfileDomainRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceProfileDomainName, name: "Name"))
    UpdateVoiceProfileDomainRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceProfileDomainDescription, name: "Description"))
    UpdateVoiceProfileDomainRequest.type = Types::UpdateVoiceProfileDomainRequest
    UpdateVoiceProfileDomainResponse.add_member(:voice_profile_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceProfileDomain, name: "VoiceProfileDomain"))
    UpdateVoiceProfileDomainResponse.type = Types::UpdateVoiceProfileDomainResponse
    UpdateVoiceProfileRequest.add_member(:voice_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString256, name: "VoiceProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateVoiceProfileRequest.add_member(:speaker_search_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString256, name: "SpeakerSearchTaskId", traits: {"smithy.api#required" => {}}))
    UpdateVoiceProfileRequest.type = Types::UpdateVoiceProfileRequest
    UpdateVoiceProfileResponse.add_member(:voice_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceProfile, name: "VoiceProfile"))
    UpdateVoiceProfileResponse.type = Types::UpdateVoiceProfileResponse
    ValidateE911AddressRequest.add_member(:aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "AwsAccountId", traits: {"smithy.api#required" => {}}))
    ValidateE911AddressRequest.add_member(:street_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "StreetNumber", traits: {"smithy.api#required" => {}}))
    ValidateE911AddressRequest.add_member(:street_info, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "StreetInfo", traits: {"smithy.api#required" => {}}))
    ValidateE911AddressRequest.add_member(:city, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "City", traits: {"smithy.api#required" => {}}))
    ValidateE911AddressRequest.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "State", traits: {"smithy.api#required" => {}}))
    ValidateE911AddressRequest.add_member(:country, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "Country", traits: {"smithy.api#required" => {}}))
    ValidateE911AddressRequest.add_member(:postal_code, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "PostalCode", traits: {"smithy.api#required" => {}}))
    ValidateE911AddressRequest.type = Types::ValidateE911AddressRequest
    ValidateE911AddressResponse.add_member(:validation_result, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationResult, name: "ValidationResult", traits: {"smithy.api#default" => 0}))
    ValidateE911AddressResponse.add_member(:address_external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AddressExternalId"))
    ValidateE911AddressResponse.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "Address"))
    ValidateE911AddressResponse.add_member(:candidate_address_list, ::Smithy::Schema::Shapes::MemberShape.new(target: CandidateAddressList, name: "CandidateAddressList"))
    ValidateE911AddressResponse.type = Types::ValidateE911AddressResponse
    VoiceConnector.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "VoiceConnectorId"))
    VoiceConnector.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceConnectorAwsRegion, name: "AwsRegion"))
    VoiceConnector.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceConnectorName, name: "Name"))
    VoiceConnector.add_member(:outbound_host_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OutboundHostName"))
    VoiceConnector.add_member(:require_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "RequireEncryption"))
    VoiceConnector.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "CreatedTimestamp"))
    VoiceConnector.add_member(:updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "UpdatedTimestamp"))
    VoiceConnector.add_member(:voice_connector_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "VoiceConnectorArn"))
    VoiceConnector.add_member(:integration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceConnectorIntegrationType, name: "IntegrationType"))
    VoiceConnector.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "NetworkType"))
    VoiceConnector.type = Types::VoiceConnector
    VoiceConnectorAwsRegion.add_member(:us_east_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_EAST_1", traits: {"smithy.api#enumValue" => "us-east-1"}))
    VoiceConnectorAwsRegion.add_member(:us_west_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_WEST_2", traits: {"smithy.api#enumValue" => "us-west-2"}))
    VoiceConnectorAwsRegion.add_member(:ca_central_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CA_CENTRAL_1", traits: {"smithy.api#enumValue" => "ca-central-1"}))
    VoiceConnectorAwsRegion.add_member(:eu_central_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EU_CENTRAL_1", traits: {"smithy.api#enumValue" => "eu-central-1"}))
    VoiceConnectorAwsRegion.add_member(:eu_west_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EU_WEST_1", traits: {"smithy.api#enumValue" => "eu-west-1"}))
    VoiceConnectorAwsRegion.add_member(:eu_west_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EU_WEST_2", traits: {"smithy.api#enumValue" => "eu-west-2"}))
    VoiceConnectorAwsRegion.add_member(:ap_northeast_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_NORTHEAST_2", traits: {"smithy.api#enumValue" => "ap-northeast-2"}))
    VoiceConnectorAwsRegion.add_member(:ap_northeast_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_NORTHEAST_1", traits: {"smithy.api#enumValue" => "ap-northeast-1"}))
    VoiceConnectorAwsRegion.add_member(:ap_southeast_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_SOUTHEAST_1", traits: {"smithy.api#enumValue" => "ap-southeast-1"}))
    VoiceConnectorAwsRegion.add_member(:ap_southeast_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_SOUTHEAST_2", traits: {"smithy.api#enumValue" => "ap-southeast-2"}))
    VoiceConnectorAwsRegionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceConnectorAwsRegion, name: "member"))
    VoiceConnectorGroup.add_member(:voice_connector_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "VoiceConnectorGroupId"))
    VoiceConnectorGroup.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceConnectorGroupName, name: "Name"))
    VoiceConnectorGroup.add_member(:voice_connector_items, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceConnectorItemList, name: "VoiceConnectorItems"))
    VoiceConnectorGroup.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "CreatedTimestamp"))
    VoiceConnectorGroup.add_member(:updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "UpdatedTimestamp"))
    VoiceConnectorGroup.add_member(:voice_connector_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "VoiceConnectorGroupArn"))
    VoiceConnectorGroup.type = Types::VoiceConnectorGroup
    VoiceConnectorGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceConnectorGroup, name: "member"))
    VoiceConnectorIntegrationType.add_member(:connect_call_transfer_connector, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONNECT_CALL_TRANSFER_CONNECTOR", traits: {"smithy.api#enumValue" => "CONNECT_CALL_TRANSFER_CONNECTOR"}))
    VoiceConnectorIntegrationType.add_member(:connect_analytics_connector, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONNECT_ANALYTICS_CONNECTOR", traits: {"smithy.api#enumValue" => "CONNECT_ANALYTICS_CONNECTOR"}))
    VoiceConnectorItem.add_member(:voice_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "VoiceConnectorId", traits: {"smithy.api#required" => {}}))
    VoiceConnectorItem.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceConnectorItemPriority, name: "Priority", traits: {"smithy.api#required" => {}}))
    VoiceConnectorItem.type = Types::VoiceConnectorItem
    VoiceConnectorItemList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceConnectorItem, name: "member"))
    VoiceConnectorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceConnector, name: "member"))
    VoiceConnectorSettings.add_member(:cdr_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CdrBucket"))
    VoiceConnectorSettings.type = Types::VoiceConnectorSettings
    VoiceProfile.add_member(:voice_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString256, name: "VoiceProfileId"))
    VoiceProfile.add_member(:voice_profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "VoiceProfileArn"))
    VoiceProfile.add_member(:voice_profile_domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString256, name: "VoiceProfileDomainId"))
    VoiceProfile.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "CreatedTimestamp"))
    VoiceProfile.add_member(:updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "UpdatedTimestamp"))
    VoiceProfile.add_member(:expiration_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "ExpirationTimestamp"))
    VoiceProfile.type = Types::VoiceProfile
    VoiceProfileDomain.add_member(:voice_profile_domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString256, name: "VoiceProfileDomainId"))
    VoiceProfileDomain.add_member(:voice_profile_domain_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "VoiceProfileDomainArn"))
    VoiceProfileDomain.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceProfileDomainName, name: "Name"))
    VoiceProfileDomain.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceProfileDomainDescription, name: "Description"))
    VoiceProfileDomain.add_member(:server_side_encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryptionConfiguration, name: "ServerSideEncryptionConfiguration"))
    VoiceProfileDomain.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "CreatedTimestamp"))
    VoiceProfileDomain.add_member(:updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "UpdatedTimestamp"))
    VoiceProfileDomain.type = Types::VoiceProfileDomain
    VoiceProfileDomainSummary.add_member(:voice_profile_domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString256, name: "VoiceProfileDomainId"))
    VoiceProfileDomainSummary.add_member(:voice_profile_domain_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "VoiceProfileDomainArn"))
    VoiceProfileDomainSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceProfileDomainName, name: "Name"))
    VoiceProfileDomainSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceProfileDomainDescription, name: "Description"))
    VoiceProfileDomainSummary.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "CreatedTimestamp"))
    VoiceProfileDomainSummary.add_member(:updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "UpdatedTimestamp"))
    VoiceProfileDomainSummary.type = Types::VoiceProfileDomainSummary
    VoiceProfileDomainSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceProfileDomainSummary, name: "member"))
    VoiceProfileSummary.add_member(:voice_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString256, name: "VoiceProfileId"))
    VoiceProfileSummary.add_member(:voice_profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "VoiceProfileArn"))
    VoiceProfileSummary.add_member(:voice_profile_domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString256, name: "VoiceProfileDomainId"))
    VoiceProfileSummary.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "CreatedTimestamp"))
    VoiceProfileSummary.add_member(:updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "UpdatedTimestamp"))
    VoiceProfileSummary.add_member(:expiration_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "ExpirationTimestamp"))
    VoiceProfileSummary.type = Types::VoiceProfileSummary
    VoiceProfileSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceProfileSummary, name: "member"))
    VoiceToneAnalysisTask.add_member(:voice_tone_analysis_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString256, name: "VoiceToneAnalysisTaskId"))
    VoiceToneAnalysisTask.add_member(:voice_tone_analysis_task_status, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "VoiceToneAnalysisTaskStatus"))
    VoiceToneAnalysisTask.add_member(:call_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CallDetails, name: "CallDetails"))
    VoiceToneAnalysisTask.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "CreatedTimestamp"))
    VoiceToneAnalysisTask.add_member(:updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "UpdatedTimestamp"))
    VoiceToneAnalysisTask.add_member(:started_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "StartedTimestamp"))
    VoiceToneAnalysisTask.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StatusMessage"))
    VoiceToneAnalysisTask.type = Types::VoiceToneAnalysisTask

    ChimeSDKTelephonyService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.chimesdkvoice#ChimeSDKTelephonyService"
      service.name = "ChimeSDKTelephonyService"
      service.version = "2022-08-03"
      service.traits = {"aws.api#service" => {"sdkId" => "Chime SDK Voice", "arnNamespace" => "chime", "cloudFormationName" => "ChimeSDKVoice", "cloudTrailEventSource" => "chimesdkvoice.amazonaws.com", "endpointPrefix" => "voice-chime"}, "aws.auth#sigv4" => {"name" => "chime"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Chime SDK Voice"}
      service.add_operation(:associate_phone_numbers_with_voice_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#AssociatePhoneNumbersWithVoiceConnector"
        operation.name = "AssociatePhoneNumbersWithVoiceConnector"
        operation.input = AssociatePhoneNumbersWithVoiceConnectorRequest
        operation.output = AssociatePhoneNumbersWithVoiceConnectorResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/voice-connectors/{VoiceConnectorId}?operation=associate-phone-numbers", "code" => 200}}
      end)
      service.add_operation(:associate_phone_numbers_with_voice_connector_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#AssociatePhoneNumbersWithVoiceConnectorGroup"
        operation.name = "AssociatePhoneNumbersWithVoiceConnectorGroup"
        operation.input = AssociatePhoneNumbersWithVoiceConnectorGroupRequest
        operation.output = AssociatePhoneNumbersWithVoiceConnectorGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/voice-connector-groups/{VoiceConnectorGroupId}?operation=associate-phone-numbers", "code" => 200}}
      end)
      service.add_operation(:batch_delete_phone_number, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#BatchDeletePhoneNumber"
        operation.name = "BatchDeletePhoneNumber"
        operation.input = BatchDeletePhoneNumberRequest
        operation.output = BatchDeletePhoneNumberResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/phone-numbers?operation=batch-delete", "code" => 200}}
      end)
      service.add_operation(:batch_update_phone_number, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#BatchUpdatePhoneNumber"
        operation.name = "BatchUpdatePhoneNumber"
        operation.input = BatchUpdatePhoneNumberRequest
        operation.output = BatchUpdatePhoneNumberResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/phone-numbers?operation=batch-update", "code" => 200}}
      end)
      service.add_operation(:create_phone_number_order, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#CreatePhoneNumberOrder"
        operation.name = "CreatePhoneNumberOrder"
        operation.input = CreatePhoneNumberOrderRequest
        operation.output = CreatePhoneNumberOrderResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/phone-number-orders", "code" => 201}}
      end)
      service.add_operation(:create_proxy_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#CreateProxySession"
        operation.name = "CreateProxySession"
        operation.input = CreateProxySessionRequest
        operation.output = CreateProxySessionResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/voice-connectors/{VoiceConnectorId}/proxy-sessions", "code" => 201}}
      end)
      service.add_operation(:create_sip_media_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#CreateSipMediaApplication"
        operation.name = "CreateSipMediaApplication"
        operation.input = CreateSipMediaApplicationRequest
        operation.output = CreateSipMediaApplicationResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sip-media-applications", "code" => 201}}
      end)
      service.add_operation(:create_sip_media_application_call, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#CreateSipMediaApplicationCall"
        operation.name = "CreateSipMediaApplicationCall"
        operation.input = CreateSipMediaApplicationCallRequest
        operation.output = CreateSipMediaApplicationCallResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sip-media-applications/{SipMediaApplicationId}/calls", "code" => 201}}
      end)
      service.add_operation(:create_sip_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#CreateSipRule"
        operation.name = "CreateSipRule"
        operation.input = CreateSipRuleRequest
        operation.output = CreateSipRuleResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sip-rules", "code" => 201}}
      end)
      service.add_operation(:create_voice_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#CreateVoiceConnector"
        operation.name = "CreateVoiceConnector"
        operation.input = CreateVoiceConnectorRequest
        operation.output = CreateVoiceConnectorResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/voice-connectors", "code" => 201}}
      end)
      service.add_operation(:create_voice_connector_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#CreateVoiceConnectorGroup"
        operation.name = "CreateVoiceConnectorGroup"
        operation.input = CreateVoiceConnectorGroupRequest
        operation.output = CreateVoiceConnectorGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/voice-connector-groups", "code" => 201}}
      end)
      service.add_operation(:create_voice_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#CreateVoiceProfile"
        operation.name = "CreateVoiceProfile"
        operation.input = CreateVoiceProfileRequest
        operation.output = CreateVoiceProfileResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << GoneException
        operation.errors << NotFoundException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/voice-profiles", "code" => 201}}
      end)
      service.add_operation(:create_voice_profile_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#CreateVoiceProfileDomain"
        operation.name = "CreateVoiceProfileDomain"
        operation.input = CreateVoiceProfileDomainRequest
        operation.output = CreateVoiceProfileDomainResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/voice-profile-domains", "code" => 201}}
      end)
      service.add_operation(:delete_phone_number, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#DeletePhoneNumber"
        operation.name = "DeletePhoneNumber"
        operation.input = DeletePhoneNumberRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/phone-numbers/{PhoneNumberId}", "code" => 204}}
      end)
      service.add_operation(:delete_proxy_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#DeleteProxySession"
        operation.name = "DeleteProxySession"
        operation.input = DeleteProxySessionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/voice-connectors/{VoiceConnectorId}/proxy-sessions/{ProxySessionId}", "code" => 204}}
      end)
      service.add_operation(:delete_sip_media_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#DeleteSipMediaApplication"
        operation.name = "DeleteSipMediaApplication"
        operation.input = DeleteSipMediaApplicationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/sip-media-applications/{SipMediaApplicationId}", "code" => 204}}
      end)
      service.add_operation(:delete_sip_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#DeleteSipRule"
        operation.name = "DeleteSipRule"
        operation.input = DeleteSipRuleRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/sip-rules/{SipRuleId}", "code" => 204}}
      end)
      service.add_operation(:delete_voice_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#DeleteVoiceConnector"
        operation.name = "DeleteVoiceConnector"
        operation.input = DeleteVoiceConnectorRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/voice-connectors/{VoiceConnectorId}", "code" => 204}}
      end)
      service.add_operation(:delete_voice_connector_emergency_calling_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#DeleteVoiceConnectorEmergencyCallingConfiguration"
        operation.name = "DeleteVoiceConnectorEmergencyCallingConfiguration"
        operation.input = DeleteVoiceConnectorEmergencyCallingConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/voice-connectors/{VoiceConnectorId}/emergency-calling-configuration", "code" => 204}}
      end)
      service.add_operation(:delete_voice_connector_external_systems_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#DeleteVoiceConnectorExternalSystemsConfiguration"
        operation.name = "DeleteVoiceConnectorExternalSystemsConfiguration"
        operation.input = DeleteVoiceConnectorExternalSystemsConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/voice-connectors/{VoiceConnectorId}/external-systems-configuration", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_voice_connector_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#DeleteVoiceConnectorGroup"
        operation.name = "DeleteVoiceConnectorGroup"
        operation.input = DeleteVoiceConnectorGroupRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/voice-connector-groups/{VoiceConnectorGroupId}", "code" => 204}}
      end)
      service.add_operation(:delete_voice_connector_origination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#DeleteVoiceConnectorOrigination"
        operation.name = "DeleteVoiceConnectorOrigination"
        operation.input = DeleteVoiceConnectorOriginationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/voice-connectors/{VoiceConnectorId}/origination", "code" => 204}}
      end)
      service.add_operation(:delete_voice_connector_proxy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#DeleteVoiceConnectorProxy"
        operation.name = "DeleteVoiceConnectorProxy"
        operation.input = DeleteVoiceConnectorProxyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/voice-connectors/{VoiceConnectorId}/programmable-numbers/proxy", "code" => 204}}
      end)
      service.add_operation(:delete_voice_connector_streaming_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#DeleteVoiceConnectorStreamingConfiguration"
        operation.name = "DeleteVoiceConnectorStreamingConfiguration"
        operation.input = DeleteVoiceConnectorStreamingConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/voice-connectors/{VoiceConnectorId}/streaming-configuration", "code" => 204}}
      end)
      service.add_operation(:delete_voice_connector_termination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#DeleteVoiceConnectorTermination"
        operation.name = "DeleteVoiceConnectorTermination"
        operation.input = DeleteVoiceConnectorTerminationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/voice-connectors/{VoiceConnectorId}/termination", "code" => 204}}
      end)
      service.add_operation(:delete_voice_connector_termination_credentials, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#DeleteVoiceConnectorTerminationCredentials"
        operation.name = "DeleteVoiceConnectorTerminationCredentials"
        operation.input = DeleteVoiceConnectorTerminationCredentialsRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/voice-connectors/{VoiceConnectorId}/termination/credentials?operation=delete", "code" => 204}}
      end)
      service.add_operation(:delete_voice_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#DeleteVoiceProfile"
        operation.name = "DeleteVoiceProfile"
        operation.input = DeleteVoiceProfileRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/voice-profiles/{VoiceProfileId}", "code" => 204}}
      end)
      service.add_operation(:delete_voice_profile_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#DeleteVoiceProfileDomain"
        operation.name = "DeleteVoiceProfileDomain"
        operation.input = DeleteVoiceProfileDomainRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/voice-profile-domains/{VoiceProfileDomainId}", "code" => 204}}
      end)
      service.add_operation(:disassociate_phone_numbers_from_voice_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#DisassociatePhoneNumbersFromVoiceConnector"
        operation.name = "DisassociatePhoneNumbersFromVoiceConnector"
        operation.input = DisassociatePhoneNumbersFromVoiceConnectorRequest
        operation.output = DisassociatePhoneNumbersFromVoiceConnectorResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/voice-connectors/{VoiceConnectorId}?operation=disassociate-phone-numbers", "code" => 200}}
      end)
      service.add_operation(:disassociate_phone_numbers_from_voice_connector_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#DisassociatePhoneNumbersFromVoiceConnectorGroup"
        operation.name = "DisassociatePhoneNumbersFromVoiceConnectorGroup"
        operation.input = DisassociatePhoneNumbersFromVoiceConnectorGroupRequest
        operation.output = DisassociatePhoneNumbersFromVoiceConnectorGroupResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/voice-connector-groups/{VoiceConnectorGroupId}?operation=disassociate-phone-numbers", "code" => 200}}
      end)
      service.add_operation(:get_global_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetGlobalSettings"
        operation.name = "GetGlobalSettings"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = GetGlobalSettingsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/settings", "code" => 200}}
      end)
      service.add_operation(:get_phone_number, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetPhoneNumber"
        operation.name = "GetPhoneNumber"
        operation.input = GetPhoneNumberRequest
        operation.output = GetPhoneNumberResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/phone-numbers/{PhoneNumberId}", "code" => 200}}
      end)
      service.add_operation(:get_phone_number_order, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetPhoneNumberOrder"
        operation.name = "GetPhoneNumberOrder"
        operation.input = GetPhoneNumberOrderRequest
        operation.output = GetPhoneNumberOrderResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/phone-number-orders/{PhoneNumberOrderId}", "code" => 200}}
      end)
      service.add_operation(:get_phone_number_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetPhoneNumberSettings"
        operation.name = "GetPhoneNumberSettings"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = GetPhoneNumberSettingsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/settings/phone-number", "code" => 200}}
      end)
      service.add_operation(:get_proxy_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetProxySession"
        operation.name = "GetProxySession"
        operation.input = GetProxySessionRequest
        operation.output = GetProxySessionResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-connectors/{VoiceConnectorId}/proxy-sessions/{ProxySessionId}", "code" => 200}}
      end)
      service.add_operation(:get_sip_media_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetSipMediaApplication"
        operation.name = "GetSipMediaApplication"
        operation.input = GetSipMediaApplicationRequest
        operation.output = GetSipMediaApplicationResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sip-media-applications/{SipMediaApplicationId}", "code" => 200}}
      end)
      service.add_operation(:get_sip_media_application_alexa_skill_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetSipMediaApplicationAlexaSkillConfiguration"
        operation.name = "GetSipMediaApplicationAlexaSkillConfiguration"
        operation.input = GetSipMediaApplicationAlexaSkillConfigurationRequest
        operation.output = GetSipMediaApplicationAlexaSkillConfigurationResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#deprecated" => {"message" => "Due to changes made by the Amazon Alexa service, this API is no longer available for use. For more information, refer to the Alexa Smart Properties page(https://developer.amazon.com/en-US/alexa/alexasmartproperties)."}, "smithy.api#http" => {"method" => "GET", "uri" => "/sip-media-applications/{SipMediaApplicationId}/alexa-skill-configuration", "code" => 200}}
      end)
      service.add_operation(:get_sip_media_application_logging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetSipMediaApplicationLoggingConfiguration"
        operation.name = "GetSipMediaApplicationLoggingConfiguration"
        operation.input = GetSipMediaApplicationLoggingConfigurationRequest
        operation.output = GetSipMediaApplicationLoggingConfigurationResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sip-media-applications/{SipMediaApplicationId}/logging-configuration", "code" => 200}}
      end)
      service.add_operation(:get_sip_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetSipRule"
        operation.name = "GetSipRule"
        operation.input = GetSipRuleRequest
        operation.output = GetSipRuleResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sip-rules/{SipRuleId}", "code" => 200}}
      end)
      service.add_operation(:get_speaker_search_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetSpeakerSearchTask"
        operation.name = "GetSpeakerSearchTask"
        operation.input = GetSpeakerSearchTaskRequest
        operation.output = GetSpeakerSearchTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-connectors/{VoiceConnectorId}/speaker-search-tasks/{SpeakerSearchTaskId}", "code" => 200}}
      end)
      service.add_operation(:get_voice_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetVoiceConnector"
        operation.name = "GetVoiceConnector"
        operation.input = GetVoiceConnectorRequest
        operation.output = GetVoiceConnectorResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-connectors/{VoiceConnectorId}", "code" => 200}}
      end)
      service.add_operation(:get_voice_connector_emergency_calling_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetVoiceConnectorEmergencyCallingConfiguration"
        operation.name = "GetVoiceConnectorEmergencyCallingConfiguration"
        operation.input = GetVoiceConnectorEmergencyCallingConfigurationRequest
        operation.output = GetVoiceConnectorEmergencyCallingConfigurationResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-connectors/{VoiceConnectorId}/emergency-calling-configuration", "code" => 200}}
      end)
      service.add_operation(:get_voice_connector_external_systems_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetVoiceConnectorExternalSystemsConfiguration"
        operation.name = "GetVoiceConnectorExternalSystemsConfiguration"
        operation.input = GetVoiceConnectorExternalSystemsConfigurationRequest
        operation.output = GetVoiceConnectorExternalSystemsConfigurationResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-connectors/{VoiceConnectorId}/external-systems-configuration", "code" => 200}}
      end)
      service.add_operation(:get_voice_connector_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetVoiceConnectorGroup"
        operation.name = "GetVoiceConnectorGroup"
        operation.input = GetVoiceConnectorGroupRequest
        operation.output = GetVoiceConnectorGroupResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-connector-groups/{VoiceConnectorGroupId}", "code" => 200}}
      end)
      service.add_operation(:get_voice_connector_logging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetVoiceConnectorLoggingConfiguration"
        operation.name = "GetVoiceConnectorLoggingConfiguration"
        operation.input = GetVoiceConnectorLoggingConfigurationRequest
        operation.output = GetVoiceConnectorLoggingConfigurationResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-connectors/{VoiceConnectorId}/logging-configuration", "code" => 200}}
      end)
      service.add_operation(:get_voice_connector_origination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetVoiceConnectorOrigination"
        operation.name = "GetVoiceConnectorOrigination"
        operation.input = GetVoiceConnectorOriginationRequest
        operation.output = GetVoiceConnectorOriginationResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-connectors/{VoiceConnectorId}/origination", "code" => 200}}
      end)
      service.add_operation(:get_voice_connector_proxy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetVoiceConnectorProxy"
        operation.name = "GetVoiceConnectorProxy"
        operation.input = GetVoiceConnectorProxyRequest
        operation.output = GetVoiceConnectorProxyResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-connectors/{VoiceConnectorId}/programmable-numbers/proxy", "code" => 200}}
      end)
      service.add_operation(:get_voice_connector_streaming_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetVoiceConnectorStreamingConfiguration"
        operation.name = "GetVoiceConnectorStreamingConfiguration"
        operation.input = GetVoiceConnectorStreamingConfigurationRequest
        operation.output = GetVoiceConnectorStreamingConfigurationResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-connectors/{VoiceConnectorId}/streaming-configuration", "code" => 200}}
      end)
      service.add_operation(:get_voice_connector_termination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetVoiceConnectorTermination"
        operation.name = "GetVoiceConnectorTermination"
        operation.input = GetVoiceConnectorTerminationRequest
        operation.output = GetVoiceConnectorTerminationResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-connectors/{VoiceConnectorId}/termination", "code" => 200}}
      end)
      service.add_operation(:get_voice_connector_termination_health, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetVoiceConnectorTerminationHealth"
        operation.name = "GetVoiceConnectorTerminationHealth"
        operation.input = GetVoiceConnectorTerminationHealthRequest
        operation.output = GetVoiceConnectorTerminationHealthResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-connectors/{VoiceConnectorId}/termination/health", "code" => 200}}
      end)
      service.add_operation(:get_voice_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetVoiceProfile"
        operation.name = "GetVoiceProfile"
        operation.input = GetVoiceProfileRequest
        operation.output = GetVoiceProfileResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-profiles/{VoiceProfileId}", "code" => 200}}
      end)
      service.add_operation(:get_voice_profile_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetVoiceProfileDomain"
        operation.name = "GetVoiceProfileDomain"
        operation.input = GetVoiceProfileDomainRequest
        operation.output = GetVoiceProfileDomainResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-profile-domains/{VoiceProfileDomainId}", "code" => 200}}
      end)
      service.add_operation(:get_voice_tone_analysis_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#GetVoiceToneAnalysisTask"
        operation.name = "GetVoiceToneAnalysisTask"
        operation.input = GetVoiceToneAnalysisTaskRequest
        operation.output = GetVoiceToneAnalysisTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-connectors/{VoiceConnectorId}/voice-tone-analysis-tasks/{VoiceToneAnalysisTaskId}", "code" => 200}}
      end)
      service.add_operation(:list_available_voice_connector_regions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#ListAvailableVoiceConnectorRegions"
        operation.name = "ListAvailableVoiceConnectorRegions"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = ListAvailableVoiceConnectorRegionsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-connector-regions", "code" => 200}}
      end)
      service.add_operation(:list_phone_number_orders, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#ListPhoneNumberOrders"
        operation.name = "ListPhoneNumberOrders"
        operation.input = ListPhoneNumberOrdersRequest
        operation.output = ListPhoneNumberOrdersResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/phone-number-orders", "code" => 200}}
        operation[:paginator] = Paginators::ListPhoneNumberOrders.new
      end)
      service.add_operation(:list_phone_numbers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#ListPhoneNumbers"
        operation.name = "ListPhoneNumbers"
        operation.input = ListPhoneNumbersRequest
        operation.output = ListPhoneNumbersResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/phone-numbers", "code" => 200}}
        operation[:paginator] = Paginators::ListPhoneNumbers.new
      end)
      service.add_operation(:list_proxy_sessions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#ListProxySessions"
        operation.name = "ListProxySessions"
        operation.input = ListProxySessionsRequest
        operation.output = ListProxySessionsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-connectors/{VoiceConnectorId}/proxy-sessions", "code" => 200}}
        operation[:paginator] = Paginators::ListProxySessions.new
      end)
      service.add_operation(:list_sip_media_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#ListSipMediaApplications"
        operation.name = "ListSipMediaApplications"
        operation.input = ListSipMediaApplicationsRequest
        operation.output = ListSipMediaApplicationsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sip-media-applications", "code" => 200}}
        operation[:paginator] = Paginators::ListSipMediaApplications.new
      end)
      service.add_operation(:list_sip_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#ListSipRules"
        operation.name = "ListSipRules"
        operation.input = ListSipRulesRequest
        operation.output = ListSipRulesResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sip-rules", "code" => 200}}
        operation[:paginator] = Paginators::ListSipRules.new
      end)
      service.add_operation(:list_supported_phone_number_countries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#ListSupportedPhoneNumberCountries"
        operation.name = "ListSupportedPhoneNumberCountries"
        operation.input = ListSupportedPhoneNumberCountriesRequest
        operation.output = ListSupportedPhoneNumberCountriesResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/phone-number-countries", "code" => 200}}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags", "code" => 200}}
      end)
      service.add_operation(:list_voice_connector_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#ListVoiceConnectorGroups"
        operation.name = "ListVoiceConnectorGroups"
        operation.input = ListVoiceConnectorGroupsRequest
        operation.output = ListVoiceConnectorGroupsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-connector-groups", "code" => 200}}
        operation[:paginator] = Paginators::ListVoiceConnectorGroups.new
      end)
      service.add_operation(:list_voice_connector_termination_credentials, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#ListVoiceConnectorTerminationCredentials"
        operation.name = "ListVoiceConnectorTerminationCredentials"
        operation.input = ListVoiceConnectorTerminationCredentialsRequest
        operation.output = ListVoiceConnectorTerminationCredentialsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-connectors/{VoiceConnectorId}/termination/credentials", "code" => 200}}
      end)
      service.add_operation(:list_voice_connectors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#ListVoiceConnectors"
        operation.name = "ListVoiceConnectors"
        operation.input = ListVoiceConnectorsRequest
        operation.output = ListVoiceConnectorsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-connectors", "code" => 200}}
        operation[:paginator] = Paginators::ListVoiceConnectors.new
      end)
      service.add_operation(:list_voice_profile_domains, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#ListVoiceProfileDomains"
        operation.name = "ListVoiceProfileDomains"
        operation.input = ListVoiceProfileDomainsRequest
        operation.output = ListVoiceProfileDomainsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-profile-domains", "code" => 200}}
        operation[:paginator] = Paginators::ListVoiceProfileDomains.new
      end)
      service.add_operation(:list_voice_profiles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#ListVoiceProfiles"
        operation.name = "ListVoiceProfiles"
        operation.input = ListVoiceProfilesRequest
        operation.output = ListVoiceProfilesResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/voice-profiles", "code" => 200}}
        operation[:paginator] = Paginators::ListVoiceProfiles.new
      end)
      service.add_operation(:put_sip_media_application_alexa_skill_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#PutSipMediaApplicationAlexaSkillConfiguration"
        operation.name = "PutSipMediaApplicationAlexaSkillConfiguration"
        operation.input = PutSipMediaApplicationAlexaSkillConfigurationRequest
        operation.output = PutSipMediaApplicationAlexaSkillConfigurationResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#deprecated" => {"message" => "Due to changes made by the Amazon Alexa service, this API is no longer available for use. For more information, refer to the Alexa Smart Properties page(https://developer.amazon.com/en-US/alexa/alexasmartproperties)."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/sip-media-applications/{SipMediaApplicationId}/alexa-skill-configuration", "code" => 200}}
      end)
      service.add_operation(:put_sip_media_application_logging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#PutSipMediaApplicationLoggingConfiguration"
        operation.name = "PutSipMediaApplicationLoggingConfiguration"
        operation.input = PutSipMediaApplicationLoggingConfigurationRequest
        operation.output = PutSipMediaApplicationLoggingConfigurationResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/sip-media-applications/{SipMediaApplicationId}/logging-configuration", "code" => 200}}
      end)
      service.add_operation(:put_voice_connector_emergency_calling_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#PutVoiceConnectorEmergencyCallingConfiguration"
        operation.name = "PutVoiceConnectorEmergencyCallingConfiguration"
        operation.input = PutVoiceConnectorEmergencyCallingConfigurationRequest
        operation.output = PutVoiceConnectorEmergencyCallingConfigurationResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/voice-connectors/{VoiceConnectorId}/emergency-calling-configuration", "code" => 200}}
      end)
      service.add_operation(:put_voice_connector_external_systems_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#PutVoiceConnectorExternalSystemsConfiguration"
        operation.name = "PutVoiceConnectorExternalSystemsConfiguration"
        operation.input = PutVoiceConnectorExternalSystemsConfigurationRequest
        operation.output = PutVoiceConnectorExternalSystemsConfigurationResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/voice-connectors/{VoiceConnectorId}/external-systems-configuration", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_voice_connector_logging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#PutVoiceConnectorLoggingConfiguration"
        operation.name = "PutVoiceConnectorLoggingConfiguration"
        operation.input = PutVoiceConnectorLoggingConfigurationRequest
        operation.output = PutVoiceConnectorLoggingConfigurationResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/voice-connectors/{VoiceConnectorId}/logging-configuration", "code" => 200}}
      end)
      service.add_operation(:put_voice_connector_origination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#PutVoiceConnectorOrigination"
        operation.name = "PutVoiceConnectorOrigination"
        operation.input = PutVoiceConnectorOriginationRequest
        operation.output = PutVoiceConnectorOriginationResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/voice-connectors/{VoiceConnectorId}/origination", "code" => 200}}
      end)
      service.add_operation(:put_voice_connector_proxy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#PutVoiceConnectorProxy"
        operation.name = "PutVoiceConnectorProxy"
        operation.input = PutVoiceConnectorProxyRequest
        operation.output = PutVoiceConnectorProxyResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/voice-connectors/{VoiceConnectorId}/programmable-numbers/proxy", "code" => 200}}
      end)
      service.add_operation(:put_voice_connector_streaming_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#PutVoiceConnectorStreamingConfiguration"
        operation.name = "PutVoiceConnectorStreamingConfiguration"
        operation.input = PutVoiceConnectorStreamingConfigurationRequest
        operation.output = PutVoiceConnectorStreamingConfigurationResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/voice-connectors/{VoiceConnectorId}/streaming-configuration", "code" => 200}}
      end)
      service.add_operation(:put_voice_connector_termination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#PutVoiceConnectorTermination"
        operation.name = "PutVoiceConnectorTermination"
        operation.input = PutVoiceConnectorTerminationRequest
        operation.output = PutVoiceConnectorTerminationResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/voice-connectors/{VoiceConnectorId}/termination", "code" => 200}}
      end)
      service.add_operation(:put_voice_connector_termination_credentials, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#PutVoiceConnectorTerminationCredentials"
        operation.name = "PutVoiceConnectorTerminationCredentials"
        operation.input = PutVoiceConnectorTerminationCredentialsRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/voice-connectors/{VoiceConnectorId}/termination/credentials?operation=put", "code" => 204}}
      end)
      service.add_operation(:restore_phone_number, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#RestorePhoneNumber"
        operation.name = "RestorePhoneNumber"
        operation.input = RestorePhoneNumberRequest
        operation.output = RestorePhoneNumberResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/phone-numbers/{PhoneNumberId}?operation=restore", "code" => 200}}
      end)
      service.add_operation(:search_available_phone_numbers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#SearchAvailablePhoneNumbers"
        operation.name = "SearchAvailablePhoneNumbers"
        operation.input = SearchAvailablePhoneNumbersRequest
        operation.output = SearchAvailablePhoneNumbersResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/search?type=phone-numbers", "code" => 200}}
        operation[:paginator] = Paginators::SearchAvailablePhoneNumbers.new
      end)
      service.add_operation(:start_speaker_search_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#StartSpeakerSearchTask"
        operation.name = "StartSpeakerSearchTask"
        operation.input = StartSpeakerSearchTaskRequest
        operation.output = StartSpeakerSearchTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << GoneException
        operation.errors << NotFoundException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.errors << UnprocessableEntityException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/voice-connectors/{VoiceConnectorId}/speaker-search-tasks", "code" => 201}}
      end)
      service.add_operation(:start_voice_tone_analysis_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#StartVoiceToneAnalysisTask"
        operation.name = "StartVoiceToneAnalysisTask"
        operation.input = StartVoiceToneAnalysisTaskRequest
        operation.output = StartVoiceToneAnalysisTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << GoneException
        operation.errors << NotFoundException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.errors << UnprocessableEntityException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/voice-connectors/{VoiceConnectorId}/voice-tone-analysis-tasks", "code" => 201}}
      end)
      service.add_operation(:stop_speaker_search_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#StopSpeakerSearchTask"
        operation.name = "StopSpeakerSearchTask"
        operation.input = StopSpeakerSearchTaskRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.errors << UnprocessableEntityException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/voice-connectors/{VoiceConnectorId}/speaker-search-tasks/{SpeakerSearchTaskId}?operation=stop", "code" => 204}}
      end)
      service.add_operation(:stop_voice_tone_analysis_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#StopVoiceToneAnalysisTask"
        operation.name = "StopVoiceToneAnalysisTask"
        operation.input = StopVoiceToneAnalysisTaskRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.errors << UnprocessableEntityException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/voice-connectors/{VoiceConnectorId}/voice-tone-analysis-tasks/{VoiceToneAnalysisTaskId}?operation=stop", "code" => 204}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags?operation=tag-resource", "code" => 204}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags?operation=untag-resource", "code" => 204}}
      end)
      service.add_operation(:update_global_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#UpdateGlobalSettings"
        operation.name = "UpdateGlobalSettings"
        operation.input = UpdateGlobalSettingsRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/settings", "code" => 204}}
      end)
      service.add_operation(:update_phone_number, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#UpdatePhoneNumber"
        operation.name = "UpdatePhoneNumber"
        operation.input = UpdatePhoneNumberRequest
        operation.output = UpdatePhoneNumberResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/phone-numbers/{PhoneNumberId}", "code" => 200}}
      end)
      service.add_operation(:update_phone_number_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#UpdatePhoneNumberSettings"
        operation.name = "UpdatePhoneNumberSettings"
        operation.input = UpdatePhoneNumberSettingsRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/settings/phone-number", "code" => 204}}
      end)
      service.add_operation(:update_proxy_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#UpdateProxySession"
        operation.name = "UpdateProxySession"
        operation.input = UpdateProxySessionRequest
        operation.output = UpdateProxySessionResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/voice-connectors/{VoiceConnectorId}/proxy-sessions/{ProxySessionId}", "code" => 201}}
      end)
      service.add_operation(:update_sip_media_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#UpdateSipMediaApplication"
        operation.name = "UpdateSipMediaApplication"
        operation.input = UpdateSipMediaApplicationRequest
        operation.output = UpdateSipMediaApplicationResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/sip-media-applications/{SipMediaApplicationId}", "code" => 200}}
      end)
      service.add_operation(:update_sip_media_application_call, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#UpdateSipMediaApplicationCall"
        operation.name = "UpdateSipMediaApplicationCall"
        operation.input = UpdateSipMediaApplicationCallRequest
        operation.output = UpdateSipMediaApplicationCallResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sip-media-applications/{SipMediaApplicationId}/calls/{TransactionId}", "code" => 202}}
      end)
      service.add_operation(:update_sip_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#UpdateSipRule"
        operation.name = "UpdateSipRule"
        operation.input = UpdateSipRuleRequest
        operation.output = UpdateSipRuleResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/sip-rules/{SipRuleId}", "code" => 202}}
      end)
      service.add_operation(:update_voice_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#UpdateVoiceConnector"
        operation.name = "UpdateVoiceConnector"
        operation.input = UpdateVoiceConnectorRequest
        operation.output = UpdateVoiceConnectorResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/voice-connectors/{VoiceConnectorId}", "code" => 200}}
      end)
      service.add_operation(:update_voice_connector_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#UpdateVoiceConnectorGroup"
        operation.name = "UpdateVoiceConnectorGroup"
        operation.input = UpdateVoiceConnectorGroupRequest
        operation.output = UpdateVoiceConnectorGroupResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/voice-connector-groups/{VoiceConnectorGroupId}", "code" => 202}}
      end)
      service.add_operation(:update_voice_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#UpdateVoiceProfile"
        operation.name = "UpdateVoiceProfile"
        operation.input = UpdateVoiceProfileRequest
        operation.output = UpdateVoiceProfileResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << GoneException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/voice-profiles/{VoiceProfileId}", "code" => 200}}
      end)
      service.add_operation(:update_voice_profile_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#UpdateVoiceProfileDomain"
        operation.name = "UpdateVoiceProfileDomain"
        operation.input = UpdateVoiceProfileDomainRequest
        operation.output = UpdateVoiceProfileDomainResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/voice-profile-domains/{VoiceProfileDomainId}", "code" => 200}}
      end)
      service.add_operation(:validate_e911_address, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkvoice#ValidateE911Address"
        operation.name = "ValidateE911Address"
        operation.input = ValidateE911AddressRequest
        operation.output = ValidateE911AddressResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/emergency-calling/address", "code" => 202}}
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
