# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::EndUserMessaging
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    AttachmentBody = Shapes::BlobShape.new(name: 'AttachmentBody')
    Blob = Shapes::BlobShape.new(name: 'Blob')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BrandProfileAttributeCategory = Shapes::StringShape.new(name: 'BrandProfileAttributeCategory')
    BrandProfileAttributeDescription = Shapes::StringShape.new(name: 'BrandProfileAttributeDescription')
    BrandProfileAttributeInput = Shapes::StructureShape.new(name: 'BrandProfileAttributeInput')
    BrandProfileAttributeInputList = Shapes::ListShape.new(name: 'BrandProfileAttributeInputList')
    BrandProfileAttributeName = Shapes::StringShape.new(name: 'BrandProfileAttributeName')
    BrandProfileAttributeOutput = Shapes::StructureShape.new(name: 'BrandProfileAttributeOutput')
    BrandProfileAttributeOutputList = Shapes::ListShape.new(name: 'BrandProfileAttributeOutputList')
    BrandProfileAttributeSummary = Shapes::StructureShape.new(name: 'BrandProfileAttributeSummary')
    BrandProfileAttributeSummaryList = Shapes::ListShape.new(name: 'BrandProfileAttributeSummaryList')
    BrandProfileAttributeType = Shapes::StringShape.new(name: 'BrandProfileAttributeType')
    BrandProfileAttributeValue = Shapes::StringShape.new(name: 'BrandProfileAttributeValue')
    BrandProfileIdOrArn = Shapes::StringShape.new(name: 'BrandProfileIdOrArn')
    BrandProfileInfo = Shapes::StructureShape.new(name: 'BrandProfileInfo')
    BrandProfileInfoList = Shapes::ListShape.new(name: 'BrandProfileInfoList')
    BrandProfileName = Shapes::StringShape.new(name: 'BrandProfileName')
    ChannelParameters = Shapes::StructureShape.new(name: 'ChannelParameters')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CodeConfigurationParameters = Shapes::StructureShape.new(name: 'CodeConfigurationParameters')
    CodeLength = Shapes::IntegerShape.new(name: 'CodeLength')
    CodeType = Shapes::StringShape.new(name: 'CodeType')
    ConfigurationSetName = Shapes::StringShape.new(name: 'ConfigurationSetName')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContextKey = Shapes::StringShape.new(name: 'ContextKey')
    ContextMap = Shapes::MapShape.new(name: 'ContextMap')
    ContextValue = Shapes::StringShape.new(name: 'ContextValue')
    CreateBrandProfileAttributesInput = Shapes::StructureShape.new(name: 'CreateBrandProfileAttributesInput')
    CreateBrandProfileAttributesOutput = Shapes::StructureShape.new(name: 'CreateBrandProfileAttributesOutput')
    CreateBrandProfileFromRegistrationInput = Shapes::StructureShape.new(name: 'CreateBrandProfileFromRegistrationInput')
    CreateBrandProfileFromRegistrationOutput = Shapes::StructureShape.new(name: 'CreateBrandProfileFromRegistrationOutput')
    CreateBrandProfileInput = Shapes::StructureShape.new(name: 'CreateBrandProfileInput')
    CreateBrandProfileOutput = Shapes::StructureShape.new(name: 'CreateBrandProfileOutput')
    CreateNotifyCodeConfigurationInput = Shapes::StructureShape.new(name: 'CreateNotifyCodeConfigurationInput')
    CreateNotifyCodeConfigurationOutput = Shapes::StructureShape.new(name: 'CreateNotifyCodeConfigurationOutput')
    CreateRegistrationsFromBrandProfileInput = Shapes::StructureShape.new(name: 'CreateRegistrationsFromBrandProfileInput')
    CreateRegistrationsFromBrandProfileOutput = Shapes::StructureShape.new(name: 'CreateRegistrationsFromBrandProfileOutput')
    DeleteBrandProfileAttributeInput = Shapes::StructureShape.new(name: 'DeleteBrandProfileAttributeInput')
    DeleteBrandProfileAttributeOutput = Shapes::StructureShape.new(name: 'DeleteBrandProfileAttributeOutput')
    DeleteBrandProfileInput = Shapes::StructureShape.new(name: 'DeleteBrandProfileInput')
    DeleteBrandProfileOutput = Shapes::StructureShape.new(name: 'DeleteBrandProfileOutput')
    DeleteNotifyCodeConfigurationInput = Shapes::StructureShape.new(name: 'DeleteNotifyCodeConfigurationInput')
    DeleteNotifyCodeConfigurationOutput = Shapes::StructureShape.new(name: 'DeleteNotifyCodeConfigurationOutput')
    DestinationCountryParameterKey = Shapes::StringShape.new(name: 'DestinationCountryParameterKey')
    DestinationCountryParameterValue = Shapes::StringShape.new(name: 'DestinationCountryParameterValue')
    DestinationCountryParameters = Shapes::MapShape.new(name: 'DestinationCountryParameters')
    DestinationIdentity = Shapes::StringShape.new(name: 'DestinationIdentity')
    GetBrandProfileAttributeInput = Shapes::StructureShape.new(name: 'GetBrandProfileAttributeInput')
    GetBrandProfileAttributeOutput = Shapes::StructureShape.new(name: 'GetBrandProfileAttributeOutput')
    GetBrandProfileInput = Shapes::StructureShape.new(name: 'GetBrandProfileInput')
    GetBrandProfileOutput = Shapes::StructureShape.new(name: 'GetBrandProfileOutput')
    GetJobInput = Shapes::StructureShape.new(name: 'GetJobInput')
    GetNotifyCodeConfigurationInput = Shapes::StructureShape.new(name: 'GetNotifyCodeConfigurationInput')
    GetNotifyCodeConfigurationOutput = Shapes::StructureShape.new(name: 'GetNotifyCodeConfigurationOutput')
    InlineTemplateBody = Shapes::StringShape.new(name: 'InlineTemplateBody')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    Job = Shapes::StructureShape.new(name: 'Job')
    JobErrorCode = Shapes::StringShape.new(name: 'JobErrorCode')
    JobErrorMessage = Shapes::StringShape.new(name: 'JobErrorMessage')
    JobId = Shapes::StringShape.new(name: 'JobId')
    JobOperationType = Shapes::StringShape.new(name: 'JobOperationType')
    JobResource = Shapes::StructureShape.new(name: 'JobResource')
    JobResourceId = Shapes::StringShape.new(name: 'JobResourceId')
    JobResourceIdentifier = Shapes::StringShape.new(name: 'JobResourceIdentifier')
    JobResourceList = Shapes::ListShape.new(name: 'JobResourceList')
    JobResourceType = Shapes::StringShape.new(name: 'JobResourceType')
    JobResult = Shapes::StructureShape.new(name: 'JobResult')
    JobResults = Shapes::ListShape.new(name: 'JobResults')
    JobStatus = Shapes::StringShape.new(name: 'JobStatus')
    JobSummary = Shapes::StructureShape.new(name: 'JobSummary')
    JobSummaryList = Shapes::ListShape.new(name: 'JobSummaryList')
    LanguageCode = Shapes::StringShape.new(name: 'LanguageCode')
    ListBrandProfileAttributesInput = Shapes::StructureShape.new(name: 'ListBrandProfileAttributesInput')
    ListBrandProfileAttributesOutput = Shapes::StructureShape.new(name: 'ListBrandProfileAttributesOutput')
    ListBrandProfilesInput = Shapes::StructureShape.new(name: 'ListBrandProfilesInput')
    ListBrandProfilesOutput = Shapes::StructureShape.new(name: 'ListBrandProfilesOutput')
    ListJobsInput = Shapes::StructureShape.new(name: 'ListJobsInput')
    ListJobsOutput = Shapes::StructureShape.new(name: 'ListJobsOutput')
    ListNotifyCodeConfigurationsInput = Shapes::StructureShape.new(name: 'ListNotifyCodeConfigurationsInput')
    ListNotifyCodeConfigurationsOutput = Shapes::StructureShape.new(name: 'ListNotifyCodeConfigurationsOutput')
    ListRegistrationsFromBrandProfileInput = Shapes::StructureShape.new(name: 'ListRegistrationsFromBrandProfileInput')
    ListRegistrationsFromBrandProfileOutput = Shapes::StructureShape.new(name: 'ListRegistrationsFromBrandProfileOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaxVerificationAttempts = Shapes::IntegerShape.new(name: 'MaxVerificationAttempts')
    MediaDownloadUrl = Shapes::StringShape.new(name: 'MediaDownloadUrl')
    MessageId = Shapes::StringShape.new(name: 'MessageId')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NotifyChannel = Shapes::StringShape.new(name: 'NotifyChannel')
    NotifyCodeConfiguration = Shapes::StructureShape.new(name: 'NotifyCodeConfiguration')
    NotifyCodeConfigurationId = Shapes::StringShape.new(name: 'NotifyCodeConfigurationId')
    NotifyCodeConfigurationIdOrArn = Shapes::StringShape.new(name: 'NotifyCodeConfigurationIdOrArn')
    NotifyCodeConfigurationList = Shapes::ListShape.new(name: 'NotifyCodeConfigurationList')
    NotifyCodeConfigurationName = Shapes::StringShape.new(name: 'NotifyCodeConfigurationName')
    NotifyParameters = Shapes::StructureShape.new(name: 'NotifyParameters')
    NotifyTemplateId = Shapes::StringShape.new(name: 'NotifyTemplateId')
    OnAttributeConflict = Shapes::StringShape.new(name: 'OnAttributeConflict')
    OriginationIdentity = Shapes::StringShape.new(name: 'OriginationIdentity')
    ReferenceId = Shapes::StringShape.new(name: 'ReferenceId')
    RegistrationAssociationSummary = Shapes::StructureShape.new(name: 'RegistrationAssociationSummary')
    RegistrationAssociationSummaryList = Shapes::ListShape.new(name: 'RegistrationAssociationSummaryList')
    RegistrationId = Shapes::StringShape.new(name: 'RegistrationId')
    RegistrationIdList = Shapes::ListShape.new(name: 'RegistrationIdList')
    RegistrationIdOrArn = Shapes::StringShape.new(name: 'RegistrationIdOrArn')
    RegistrationType = Shapes::StringShape.new(name: 'RegistrationType')
    RegistrationTypeList = Shapes::ListShape.new(name: 'RegistrationTypeList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SendNotifyCodeVerificationInput = Shapes::StructureShape.new(name: 'SendNotifyCodeVerificationInput')
    SendNotifyCodeVerificationOutput = Shapes::StructureShape.new(name: 'SendNotifyCodeVerificationOutput')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    Status = Shapes::StringShape.new(name: 'Status')
    String = Shapes::StringShape.new(name: 'String')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceInputTagsList = Shapes::ListShape.new(name: 'TagResourceInputTagsList')
    TagResourceOutput = Shapes::StructureShape.new(name: 'TagResourceOutput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TextParameters = Shapes::StructureShape.new(name: 'TextParameters')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceInputTagKeysList = Shapes::ListShape.new(name: 'UntagResourceInputTagKeysList')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
    UpdateBrandProfileAttributeInput = Shapes::StructureShape.new(name: 'UpdateBrandProfileAttributeInput')
    UpdateBrandProfileAttributeOutput = Shapes::StructureShape.new(name: 'UpdateBrandProfileAttributeOutput')
    UpdateBrandProfileFromRegistrationInput = Shapes::StructureShape.new(name: 'UpdateBrandProfileFromRegistrationInput')
    UpdateBrandProfileFromRegistrationOutput = Shapes::StructureShape.new(name: 'UpdateBrandProfileFromRegistrationOutput')
    UpdateBrandProfileInput = Shapes::StructureShape.new(name: 'UpdateBrandProfileInput')
    UpdateBrandProfileOutput = Shapes::StructureShape.new(name: 'UpdateBrandProfileOutput')
    UpdateChannelParameters = Shapes::StructureShape.new(name: 'UpdateChannelParameters')
    UpdateCodeConfigurationParameters = Shapes::StructureShape.new(name: 'UpdateCodeConfigurationParameters')
    UpdateDestinationCountryParameters = Shapes::MapShape.new(name: 'UpdateDestinationCountryParameters')
    UpdateInlineTemplateBody = Shapes::StringShape.new(name: 'UpdateInlineTemplateBody')
    UpdateLanguageCode = Shapes::StringShape.new(name: 'UpdateLanguageCode')
    UpdateNotifyCodeConfigurationInput = Shapes::StructureShape.new(name: 'UpdateNotifyCodeConfigurationInput')
    UpdateNotifyCodeConfigurationOutput = Shapes::StructureShape.new(name: 'UpdateNotifyCodeConfigurationOutput')
    UpdateNotifyParameters = Shapes::StructureShape.new(name: 'UpdateNotifyParameters')
    UpdateNotifyTemplateId = Shapes::StringShape.new(name: 'UpdateNotifyTemplateId')
    UpdateRegistrationsFromBrandProfileInput = Shapes::StructureShape.new(name: 'UpdateRegistrationsFromBrandProfileInput')
    UpdateRegistrationsFromBrandProfileOutput = Shapes::StructureShape.new(name: 'UpdateRegistrationsFromBrandProfileOutput')
    UpdateTextParameters = Shapes::StructureShape.new(name: 'UpdateTextParameters')
    UpdateVoiceId = Shapes::StringShape.new(name: 'UpdateVoiceId')
    UpdateVoiceParameters = Shapes::StructureShape.new(name: 'UpdateVoiceParameters')
    UpdateWhatsAppParameters = Shapes::StructureShape.new(name: 'UpdateWhatsAppParameters')
    UpdateWhatsAppTemplateName = Shapes::StringShape.new(name: 'UpdateWhatsAppTemplateName')
    ValidateNotifyCodeVerificationInput = Shapes::StructureShape.new(name: 'ValidateNotifyCodeVerificationInput')
    ValidateNotifyCodeVerificationOutput = Shapes::StructureShape.new(name: 'ValidateNotifyCodeVerificationOutput')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidityPeriodMinutes = Shapes::IntegerShape.new(name: 'ValidityPeriodMinutes')
    VerificationCode = Shapes::StringShape.new(name: 'VerificationCode')
    VerificationId = Shapes::StringShape.new(name: 'VerificationId')
    VerificationStatus = Shapes::StringShape.new(name: 'VerificationStatus')
    VoiceId = Shapes::StringShape.new(name: 'VoiceId')
    VoiceMessageBodyTextType = Shapes::StringShape.new(name: 'VoiceMessageBodyTextType')
    VoiceParameters = Shapes::StructureShape.new(name: 'VoiceParameters')
    WhatsAppParameters = Shapes::StructureShape.new(name: 'WhatsAppParameters')
    WhatsAppTemplateName = Shapes::StringShape.new(name: 'WhatsAppTemplateName')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    BrandProfileAttributeInput.add_member(:attribute_name, Shapes::ShapeRef.new(shape: BrandProfileAttributeName, required: true, location_name: "attributeName"))
    BrandProfileAttributeInput.add_member(:attribute_type, Shapes::ShapeRef.new(shape: BrandProfileAttributeType, required: true, location_name: "attributeType"))
    BrandProfileAttributeInput.add_member(:attribute_value, Shapes::ShapeRef.new(shape: BrandProfileAttributeValue, location_name: "attributeValue"))
    BrandProfileAttributeInput.add_member(:attachment_body, Shapes::ShapeRef.new(shape: AttachmentBody, location_name: "attachmentBody"))
    BrandProfileAttributeInput.add_member(:description, Shapes::ShapeRef.new(shape: BrandProfileAttributeDescription, location_name: "description"))
    BrandProfileAttributeInput.add_member(:category, Shapes::ShapeRef.new(shape: BrandProfileAttributeCategory, location_name: "category"))
    BrandProfileAttributeInput.struct_class = Types::BrandProfileAttributeInput

    BrandProfileAttributeInputList.member = Shapes::ShapeRef.new(shape: BrandProfileAttributeInput)

    BrandProfileAttributeOutput.add_member(:attribute_name, Shapes::ShapeRef.new(shape: BrandProfileAttributeName, required: true, location_name: "attributeName"))
    BrandProfileAttributeOutput.add_member(:attribute_type, Shapes::ShapeRef.new(shape: BrandProfileAttributeType, required: true, location_name: "attributeType"))
    BrandProfileAttributeOutput.add_member(:media_download_url, Shapes::ShapeRef.new(shape: MediaDownloadUrl, location_name: "mediaDownloadUrl"))
    BrandProfileAttributeOutput.struct_class = Types::BrandProfileAttributeOutput

    BrandProfileAttributeOutputList.member = Shapes::ShapeRef.new(shape: BrandProfileAttributeOutput)

    BrandProfileAttributeSummary.add_member(:attribute_name, Shapes::ShapeRef.new(shape: BrandProfileAttributeName, required: true, location_name: "attributeName"))
    BrandProfileAttributeSummary.add_member(:attribute_type, Shapes::ShapeRef.new(shape: BrandProfileAttributeType, required: true, location_name: "attributeType"))
    BrandProfileAttributeSummary.add_member(:description, Shapes::ShapeRef.new(shape: BrandProfileAttributeDescription, location_name: "description"))
    BrandProfileAttributeSummary.add_member(:category, Shapes::ShapeRef.new(shape: BrandProfileAttributeCategory, location_name: "category"))
    BrandProfileAttributeSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    BrandProfileAttributeSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    BrandProfileAttributeSummary.struct_class = Types::BrandProfileAttributeSummary

    BrandProfileAttributeSummaryList.member = Shapes::ShapeRef.new(shape: BrandProfileAttributeSummary)

    BrandProfileInfo.add_member(:brand_profile_id, Shapes::ShapeRef.new(shape: BrandProfileIdOrArn, required: true, location_name: "brandProfileId"))
    BrandProfileInfo.add_member(:brand_profile_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "brandProfileArn"))
    BrandProfileInfo.add_member(:brand_profile_name, Shapes::ShapeRef.new(shape: BrandProfileName, required: true, location_name: "brandProfileName"))
    BrandProfileInfo.add_member(:status, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "status"))
    BrandProfileInfo.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "deletionProtectionEnabled"))
    BrandProfileInfo.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    BrandProfileInfo.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    BrandProfileInfo.struct_class = Types::BrandProfileInfo

    BrandProfileInfoList.member = Shapes::ShapeRef.new(shape: BrandProfileInfo)

    ChannelParameters.add_member(:text, Shapes::ShapeRef.new(shape: TextParameters, location_name: "text"))
    ChannelParameters.add_member(:voice, Shapes::ShapeRef.new(shape: VoiceParameters, location_name: "voice"))
    ChannelParameters.add_member(:notify, Shapes::ShapeRef.new(shape: NotifyParameters, location_name: "notify"))
    ChannelParameters.add_member(:whats_app, Shapes::ShapeRef.new(shape: WhatsAppParameters, location_name: "whatsApp"))
    ChannelParameters.struct_class = Types::ChannelParameters

    CodeConfigurationParameters.add_member(:code_type, Shapes::ShapeRef.new(shape: CodeType, location_name: "codeType"))
    CodeConfigurationParameters.add_member(:code_length, Shapes::ShapeRef.new(shape: CodeLength, location_name: "codeLength"))
    CodeConfigurationParameters.add_member(:validity_period_minutes, Shapes::ShapeRef.new(shape: ValidityPeriodMinutes, location_name: "validityPeriodMinutes"))
    CodeConfigurationParameters.add_member(:max_attempts, Shapes::ShapeRef.new(shape: MaxVerificationAttempts, location_name: "maxAttempts"))
    CodeConfigurationParameters.struct_class = Types::CodeConfigurationParameters

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    ContextMap.key = Shapes::ShapeRef.new(shape: ContextKey)
    ContextMap.value = Shapes::ShapeRef.new(shape: ContextValue)

    CreateBrandProfileAttributesInput.add_member(:brand_profile_id, Shapes::ShapeRef.new(shape: BrandProfileIdOrArn, required: true, location: "uri", location_name: "brandProfileId"))
    CreateBrandProfileAttributesInput.add_member(:attributes, Shapes::ShapeRef.new(shape: BrandProfileAttributeInputList, required: true, location_name: "attributes"))
    CreateBrandProfileAttributesInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateBrandProfileAttributesInput.struct_class = Types::CreateBrandProfileAttributesInput

    CreateBrandProfileAttributesOutput.add_member(:attributes, Shapes::ShapeRef.new(shape: BrandProfileAttributeOutputList, required: true, location_name: "attributes"))
    CreateBrandProfileAttributesOutput.struct_class = Types::CreateBrandProfileAttributesOutput

    CreateBrandProfileFromRegistrationInput.add_member(:registration_id, Shapes::ShapeRef.new(shape: RegistrationIdOrArn, required: true, location_name: "registrationId"))
    CreateBrandProfileFromRegistrationInput.add_member(:brand_profile_name, Shapes::ShapeRef.new(shape: BrandProfileName, required: true, location_name: "brandProfileName"))
    CreateBrandProfileFromRegistrationInput.add_member(:smart_match, Shapes::ShapeRef.new(shape: Boolean, location_name: "smartMatch"))
    CreateBrandProfileFromRegistrationInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateBrandProfileFromRegistrationInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateBrandProfileFromRegistrationInput.struct_class = Types::CreateBrandProfileFromRegistrationInput

    CreateBrandProfileFromRegistrationOutput.add_member(:results, Shapes::ShapeRef.new(shape: JobResults, required: true, location_name: "results"))
    CreateBrandProfileFromRegistrationOutput.struct_class = Types::CreateBrandProfileFromRegistrationOutput

    CreateBrandProfileInput.add_member(:brand_profile_name, Shapes::ShapeRef.new(shape: BrandProfileName, required: true, location_name: "brandProfileName"))
    CreateBrandProfileInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateBrandProfileInput.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "deletionProtectionEnabled"))
    CreateBrandProfileInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateBrandProfileInput.struct_class = Types::CreateBrandProfileInput

    CreateBrandProfileOutput.add_member(:brand_profile_id, Shapes::ShapeRef.new(shape: BrandProfileIdOrArn, required: true, location_name: "brandProfileId"))
    CreateBrandProfileOutput.add_member(:brand_profile_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "brandProfileArn"))
    CreateBrandProfileOutput.add_member(:brand_profile_name, Shapes::ShapeRef.new(shape: BrandProfileName, required: true, location_name: "brandProfileName"))
    CreateBrandProfileOutput.add_member(:status, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "status"))
    CreateBrandProfileOutput.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "deletionProtectionEnabled"))
    CreateBrandProfileOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    CreateBrandProfileOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    CreateBrandProfileOutput.add_member(:attributes_created, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "attributesCreated"))
    CreateBrandProfileOutput.struct_class = Types::CreateBrandProfileOutput

    CreateNotifyCodeConfigurationInput.add_member(:notify_code_configuration_name, Shapes::ShapeRef.new(shape: NotifyCodeConfigurationName, required: true, location_name: "notifyCodeConfigurationName"))
    CreateNotifyCodeConfigurationInput.add_member(:code_configuration_parameters, Shapes::ShapeRef.new(shape: CodeConfigurationParameters, location_name: "codeConfigurationParameters"))
    CreateNotifyCodeConfigurationInput.add_member(:channel_parameters, Shapes::ShapeRef.new(shape: ChannelParameters, location_name: "channelParameters"))
    CreateNotifyCodeConfigurationInput.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "deletionProtectionEnabled"))
    CreateNotifyCodeConfigurationInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateNotifyCodeConfigurationInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateNotifyCodeConfigurationInput.struct_class = Types::CreateNotifyCodeConfigurationInput

    CreateNotifyCodeConfigurationOutput.add_member(:notify_code_configuration, Shapes::ShapeRef.new(shape: NotifyCodeConfiguration, required: true, location_name: "notifyCodeConfiguration"))
    CreateNotifyCodeConfigurationOutput.struct_class = Types::CreateNotifyCodeConfigurationOutput

    CreateRegistrationsFromBrandProfileInput.add_member(:brand_profile_id, Shapes::ShapeRef.new(shape: BrandProfileIdOrArn, required: true, location: "uri", location_name: "brandProfileId"))
    CreateRegistrationsFromBrandProfileInput.add_member(:registration_types, Shapes::ShapeRef.new(shape: RegistrationTypeList, required: true, location_name: "registrationTypes"))
    CreateRegistrationsFromBrandProfileInput.add_member(:smart_match, Shapes::ShapeRef.new(shape: Boolean, location_name: "smartMatch"))
    CreateRegistrationsFromBrandProfileInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateRegistrationsFromBrandProfileInput.struct_class = Types::CreateRegistrationsFromBrandProfileInput

    CreateRegistrationsFromBrandProfileOutput.add_member(:results, Shapes::ShapeRef.new(shape: JobResults, required: true, location_name: "results"))
    CreateRegistrationsFromBrandProfileOutput.struct_class = Types::CreateRegistrationsFromBrandProfileOutput

    DeleteBrandProfileAttributeInput.add_member(:brand_profile_id, Shapes::ShapeRef.new(shape: BrandProfileIdOrArn, required: true, location: "uri", location_name: "brandProfileId"))
    DeleteBrandProfileAttributeInput.add_member(:attribute_name, Shapes::ShapeRef.new(shape: BrandProfileAttributeName, required: true, location: "uri", location_name: "attributeName"))
    DeleteBrandProfileAttributeInput.struct_class = Types::DeleteBrandProfileAttributeInput

    DeleteBrandProfileAttributeOutput.add_member(:brand_profile_id, Shapes::ShapeRef.new(shape: BrandProfileIdOrArn, required: true, location_name: "brandProfileId"))
    DeleteBrandProfileAttributeOutput.add_member(:attribute_name, Shapes::ShapeRef.new(shape: BrandProfileAttributeName, required: true, location_name: "attributeName"))
    DeleteBrandProfileAttributeOutput.struct_class = Types::DeleteBrandProfileAttributeOutput

    DeleteBrandProfileInput.add_member(:brand_profile_id, Shapes::ShapeRef.new(shape: BrandProfileIdOrArn, required: true, location: "uri", location_name: "brandProfileId"))
    DeleteBrandProfileInput.struct_class = Types::DeleteBrandProfileInput

    DeleteBrandProfileOutput.add_member(:brand_profile_id, Shapes::ShapeRef.new(shape: BrandProfileIdOrArn, required: true, location_name: "brandProfileId"))
    DeleteBrandProfileOutput.add_member(:brand_profile_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "brandProfileArn"))
    DeleteBrandProfileOutput.struct_class = Types::DeleteBrandProfileOutput

    DeleteNotifyCodeConfigurationInput.add_member(:notify_code_configuration_id, Shapes::ShapeRef.new(shape: NotifyCodeConfigurationIdOrArn, required: true, location: "uri", location_name: "notifyCodeConfigurationId"))
    DeleteNotifyCodeConfigurationInput.struct_class = Types::DeleteNotifyCodeConfigurationInput

    DeleteNotifyCodeConfigurationOutput.struct_class = Types::DeleteNotifyCodeConfigurationOutput

    DestinationCountryParameters.key = Shapes::ShapeRef.new(shape: DestinationCountryParameterKey)
    DestinationCountryParameters.value = Shapes::ShapeRef.new(shape: DestinationCountryParameterValue)

    GetBrandProfileAttributeInput.add_member(:brand_profile_id, Shapes::ShapeRef.new(shape: BrandProfileIdOrArn, required: true, location: "uri", location_name: "brandProfileId"))
    GetBrandProfileAttributeInput.add_member(:attribute_name, Shapes::ShapeRef.new(shape: BrandProfileAttributeName, required: true, location: "uri", location_name: "attributeName"))
    GetBrandProfileAttributeInput.struct_class = Types::GetBrandProfileAttributeInput

    GetBrandProfileAttributeOutput.add_member(:attribute_name, Shapes::ShapeRef.new(shape: BrandProfileAttributeName, required: true, location_name: "attributeName"))
    GetBrandProfileAttributeOutput.add_member(:attribute_type, Shapes::ShapeRef.new(shape: BrandProfileAttributeType, required: true, location_name: "attributeType"))
    GetBrandProfileAttributeOutput.add_member(:attribute_value, Shapes::ShapeRef.new(shape: BrandProfileAttributeValue, location_name: "attributeValue"))
    GetBrandProfileAttributeOutput.add_member(:description, Shapes::ShapeRef.new(shape: BrandProfileAttributeDescription, location_name: "description"))
    GetBrandProfileAttributeOutput.add_member(:category, Shapes::ShapeRef.new(shape: BrandProfileAttributeCategory, location_name: "category"))
    GetBrandProfileAttributeOutput.add_member(:media_content_type, Shapes::ShapeRef.new(shape: String, location_name: "mediaContentType"))
    GetBrandProfileAttributeOutput.add_member(:media_size_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "mediaSizeBytes"))
    GetBrandProfileAttributeOutput.add_member(:media_download_url, Shapes::ShapeRef.new(shape: MediaDownloadUrl, location_name: "mediaDownloadUrl"))
    GetBrandProfileAttributeOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    GetBrandProfileAttributeOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    GetBrandProfileAttributeOutput.struct_class = Types::GetBrandProfileAttributeOutput

    GetBrandProfileInput.add_member(:brand_profile_id, Shapes::ShapeRef.new(shape: BrandProfileIdOrArn, required: true, location: "uri", location_name: "brandProfileId"))
    GetBrandProfileInput.struct_class = Types::GetBrandProfileInput

    GetBrandProfileOutput.add_member(:brand_profile_id, Shapes::ShapeRef.new(shape: BrandProfileIdOrArn, required: true, location_name: "brandProfileId"))
    GetBrandProfileOutput.add_member(:brand_profile_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "brandProfileArn"))
    GetBrandProfileOutput.add_member(:brand_profile_name, Shapes::ShapeRef.new(shape: BrandProfileName, required: true, location_name: "brandProfileName"))
    GetBrandProfileOutput.add_member(:status, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "status"))
    GetBrandProfileOutput.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "deletionProtectionEnabled"))
    GetBrandProfileOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    GetBrandProfileOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    GetBrandProfileOutput.struct_class = Types::GetBrandProfileOutput

    GetJobInput.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    GetJobInput.struct_class = Types::GetJobInput

    GetNotifyCodeConfigurationInput.add_member(:notify_code_configuration_id, Shapes::ShapeRef.new(shape: NotifyCodeConfigurationIdOrArn, required: true, location: "uri", location_name: "notifyCodeConfigurationId"))
    GetNotifyCodeConfigurationInput.struct_class = Types::GetNotifyCodeConfigurationInput

    GetNotifyCodeConfigurationOutput.add_member(:notify_code_configuration, Shapes::ShapeRef.new(shape: NotifyCodeConfiguration, required: true, location_name: "notifyCodeConfiguration"))
    GetNotifyCodeConfigurationOutput.struct_class = Types::GetNotifyCodeConfigurationOutput

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    Job.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    Job.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "status"))
    Job.add_member(:operation_type, Shapes::ShapeRef.new(shape: JobOperationType, required: true, location_name: "operationType"))
    Job.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    Job.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    Job.add_member(:brand_profile_id, Shapes::ShapeRef.new(shape: BrandProfileIdOrArn, location_name: "brandProfileId"))
    Job.add_member(:error_code, Shapes::ShapeRef.new(shape: JobErrorCode, location_name: "errorCode"))
    Job.add_member(:error_message, Shapes::ShapeRef.new(shape: JobErrorMessage, location_name: "errorMessage"))
    Job.add_member(:resources, Shapes::ShapeRef.new(shape: JobResourceList, location_name: "resources"))
    Job.struct_class = Types::Job

    JobResource.add_member(:resource_type, Shapes::ShapeRef.new(shape: JobResourceType, required: true, location_name: "resourceType"))
    JobResource.add_member(:resource_id, Shapes::ShapeRef.new(shape: JobResourceId, required: true, location_name: "resourceId"))
    JobResource.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "resourceArn"))
    JobResource.struct_class = Types::JobResource

    JobResourceList.member = Shapes::ShapeRef.new(shape: JobResource)

    JobResult.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    JobResult.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: JobResourceIdentifier, required: true, location_name: "resourceIdentifier"))
    JobResult.struct_class = Types::JobResult

    JobResults.member = Shapes::ShapeRef.new(shape: JobResult)

    JobSummary.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    JobSummary.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "status"))
    JobSummary.add_member(:operation_type, Shapes::ShapeRef.new(shape: JobOperationType, required: true, location_name: "operationType"))
    JobSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    JobSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    JobSummary.add_member(:brand_profile_id, Shapes::ShapeRef.new(shape: BrandProfileIdOrArn, location_name: "brandProfileId"))
    JobSummary.add_member(:error_code, Shapes::ShapeRef.new(shape: JobErrorCode, location_name: "errorCode"))
    JobSummary.add_member(:error_message, Shapes::ShapeRef.new(shape: JobErrorMessage, location_name: "errorMessage"))
    JobSummary.add_member(:resources, Shapes::ShapeRef.new(shape: JobResourceList, location_name: "resources"))
    JobSummary.struct_class = Types::JobSummary

    JobSummaryList.member = Shapes::ShapeRef.new(shape: JobSummary)

    ListBrandProfileAttributesInput.add_member(:brand_profile_id, Shapes::ShapeRef.new(shape: BrandProfileIdOrArn, required: true, location: "uri", location_name: "brandProfileId"))
    ListBrandProfileAttributesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListBrandProfileAttributesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListBrandProfileAttributesInput.struct_class = Types::ListBrandProfileAttributesInput

    ListBrandProfileAttributesOutput.add_member(:brand_profile_attributes, Shapes::ShapeRef.new(shape: BrandProfileAttributeSummaryList, required: true, location_name: "brandProfileAttributes"))
    ListBrandProfileAttributesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBrandProfileAttributesOutput.struct_class = Types::ListBrandProfileAttributesOutput

    ListBrandProfilesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListBrandProfilesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListBrandProfilesInput.struct_class = Types::ListBrandProfilesInput

    ListBrandProfilesOutput.add_member(:brand_profiles, Shapes::ShapeRef.new(shape: BrandProfileInfoList, required: true, location_name: "brandProfiles"))
    ListBrandProfilesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBrandProfilesOutput.struct_class = Types::ListBrandProfilesOutput

    ListJobsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListJobsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListJobsInput.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, location: "querystring", location_name: "status"))
    ListJobsInput.add_member(:brand_profile_id, Shapes::ShapeRef.new(shape: BrandProfileIdOrArn, location: "querystring", location_name: "brandProfileId"))
    ListJobsInput.add_member(:operation_type, Shapes::ShapeRef.new(shape: JobOperationType, location: "querystring", location_name: "operationType"))
    ListJobsInput.struct_class = Types::ListJobsInput

    ListJobsOutput.add_member(:jobs, Shapes::ShapeRef.new(shape: JobSummaryList, required: true, location_name: "jobs"))
    ListJobsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListJobsOutput.struct_class = Types::ListJobsOutput

    ListNotifyCodeConfigurationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListNotifyCodeConfigurationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListNotifyCodeConfigurationsInput.struct_class = Types::ListNotifyCodeConfigurationsInput

    ListNotifyCodeConfigurationsOutput.add_member(:notify_code_configurations, Shapes::ShapeRef.new(shape: NotifyCodeConfigurationList, required: true, location_name: "notifyCodeConfigurations"))
    ListNotifyCodeConfigurationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListNotifyCodeConfigurationsOutput.struct_class = Types::ListNotifyCodeConfigurationsOutput

    ListRegistrationsFromBrandProfileInput.add_member(:brand_profile_id, Shapes::ShapeRef.new(shape: BrandProfileIdOrArn, required: true, location: "uri", location_name: "brandProfileId"))
    ListRegistrationsFromBrandProfileInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListRegistrationsFromBrandProfileInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListRegistrationsFromBrandProfileInput.struct_class = Types::ListRegistrationsFromBrandProfileInput

    ListRegistrationsFromBrandProfileOutput.add_member(:registration_associations, Shapes::ShapeRef.new(shape: RegistrationAssociationSummaryList, required: true, location_name: "registrationAssociations"))
    ListRegistrationsFromBrandProfileOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRegistrationsFromBrandProfileOutput.struct_class = Types::ListRegistrationsFromBrandProfileOutput

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    NotifyCodeConfiguration.add_member(:notify_code_configuration_id, Shapes::ShapeRef.new(shape: NotifyCodeConfigurationId, required: true, location_name: "notifyCodeConfigurationId"))
    NotifyCodeConfiguration.add_member(:notify_code_configuration_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "notifyCodeConfigurationArn"))
    NotifyCodeConfiguration.add_member(:notify_code_configuration_name, Shapes::ShapeRef.new(shape: NotifyCodeConfigurationName, required: true, location_name: "notifyCodeConfigurationName"))
    NotifyCodeConfiguration.add_member(:code_configuration_parameters, Shapes::ShapeRef.new(shape: CodeConfigurationParameters, location_name: "codeConfigurationParameters"))
    NotifyCodeConfiguration.add_member(:channel_parameters, Shapes::ShapeRef.new(shape: ChannelParameters, location_name: "channelParameters"))
    NotifyCodeConfiguration.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "deletionProtectionEnabled"))
    NotifyCodeConfiguration.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    NotifyCodeConfiguration.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    NotifyCodeConfiguration.struct_class = Types::NotifyCodeConfiguration

    NotifyCodeConfigurationList.member = Shapes::ShapeRef.new(shape: NotifyCodeConfiguration)

    NotifyParameters.add_member(:notify_template_id, Shapes::ShapeRef.new(shape: NotifyTemplateId, location_name: "notifyTemplateId"))
    NotifyParameters.add_member(:voice_id, Shapes::ShapeRef.new(shape: VoiceId, location_name: "voiceId"))
    NotifyParameters.struct_class = Types::NotifyParameters

    RegistrationAssociationSummary.add_member(:registration_id, Shapes::ShapeRef.new(shape: RegistrationId, required: true, location_name: "registrationId"))
    RegistrationAssociationSummary.add_member(:registration_type, Shapes::ShapeRef.new(shape: RegistrationType, required: true, location_name: "registrationType"))
    RegistrationAssociationSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    RegistrationAssociationSummary.add_member(:smart_match_used, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "smartMatchUsed"))
    RegistrationAssociationSummary.struct_class = Types::RegistrationAssociationSummary

    RegistrationAssociationSummaryList.member = Shapes::ShapeRef.new(shape: RegistrationAssociationSummary)

    RegistrationIdList.member = Shapes::ShapeRef.new(shape: RegistrationIdOrArn)

    RegistrationTypeList.member = Shapes::ShapeRef.new(shape: RegistrationType)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SendNotifyCodeVerificationInput.add_member(:channel, Shapes::ShapeRef.new(shape: NotifyChannel, required: true, location_name: "channel"))
    SendNotifyCodeVerificationInput.add_member(:destination_identity, Shapes::ShapeRef.new(shape: DestinationIdentity, required: true, location_name: "destinationIdentity"))
    SendNotifyCodeVerificationInput.add_member(:origination_identity, Shapes::ShapeRef.new(shape: OriginationIdentity, required: true, location_name: "originationIdentity"))
    SendNotifyCodeVerificationInput.add_member(:notify_code_configuration, Shapes::ShapeRef.new(shape: NotifyCodeConfigurationIdOrArn, location_name: "notifyCodeConfiguration"))
    SendNotifyCodeVerificationInput.add_member(:override_channel_parameters, Shapes::ShapeRef.new(shape: ChannelParameters, location_name: "overrideChannelParameters"))
    SendNotifyCodeVerificationInput.add_member(:override_code_configuration_parameters, Shapes::ShapeRef.new(shape: CodeConfigurationParameters, location_name: "overrideCodeConfigurationParameters"))
    SendNotifyCodeVerificationInput.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: "configurationSetName"))
    SendNotifyCodeVerificationInput.add_member(:context, Shapes::ShapeRef.new(shape: ContextMap, location_name: "context"))
    SendNotifyCodeVerificationInput.add_member(:reference_id, Shapes::ShapeRef.new(shape: ReferenceId, location_name: "referenceId"))
    SendNotifyCodeVerificationInput.struct_class = Types::SendNotifyCodeVerificationInput

    SendNotifyCodeVerificationOutput.add_member(:verification_id, Shapes::ShapeRef.new(shape: VerificationId, required: true, location_name: "verificationId"))
    SendNotifyCodeVerificationOutput.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, required: true, location_name: "messageId"))
    SendNotifyCodeVerificationOutput.struct_class = Types::SendNotifyCodeVerificationOutput

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "value"))
    Tag.struct_class = Types::Tag

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagResourceInputTagsList, required: true, location_name: "tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceInputTagsList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceOutput.struct_class = Types::TagResourceOutput

    TextParameters.add_member(:inline_template_body, Shapes::ShapeRef.new(shape: InlineTemplateBody, location_name: "inlineTemplateBody"))
    TextParameters.add_member(:destination_country_parameters, Shapes::ShapeRef.new(shape: DestinationCountryParameters, location_name: "destinationCountryParameters"))
    TextParameters.struct_class = Types::TextParameters

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: UntagResourceInputTagKeysList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UntagResourceInputTagKeysList.member = Shapes::ShapeRef.new(shape: TagKey)

    UntagResourceOutput.struct_class = Types::UntagResourceOutput

    UpdateBrandProfileAttributeInput.add_member(:brand_profile_id, Shapes::ShapeRef.new(shape: BrandProfileIdOrArn, required: true, location: "uri", location_name: "brandProfileId"))
    UpdateBrandProfileAttributeInput.add_member(:attribute_name, Shapes::ShapeRef.new(shape: BrandProfileAttributeName, required: true, location: "uri", location_name: "attributeName"))
    UpdateBrandProfileAttributeInput.add_member(:attribute_value, Shapes::ShapeRef.new(shape: BrandProfileAttributeValue, location_name: "attributeValue"))
    UpdateBrandProfileAttributeInput.add_member(:attachment_body, Shapes::ShapeRef.new(shape: Blob, location_name: "attachmentBody"))
    UpdateBrandProfileAttributeInput.add_member(:description, Shapes::ShapeRef.new(shape: BrandProfileAttributeDescription, location_name: "description"))
    UpdateBrandProfileAttributeInput.add_member(:category, Shapes::ShapeRef.new(shape: BrandProfileAttributeCategory, location_name: "category"))
    UpdateBrandProfileAttributeInput.struct_class = Types::UpdateBrandProfileAttributeInput

    UpdateBrandProfileAttributeOutput.add_member(:attribute_name, Shapes::ShapeRef.new(shape: BrandProfileAttributeName, required: true, location_name: "attributeName"))
    UpdateBrandProfileAttributeOutput.add_member(:attribute_type, Shapes::ShapeRef.new(shape: BrandProfileAttributeType, required: true, location_name: "attributeType"))
    UpdateBrandProfileAttributeOutput.add_member(:attribute_value, Shapes::ShapeRef.new(shape: BrandProfileAttributeValue, location_name: "attributeValue"))
    UpdateBrandProfileAttributeOutput.add_member(:description, Shapes::ShapeRef.new(shape: BrandProfileAttributeDescription, location_name: "description"))
    UpdateBrandProfileAttributeOutput.add_member(:category, Shapes::ShapeRef.new(shape: BrandProfileAttributeCategory, location_name: "category"))
    UpdateBrandProfileAttributeOutput.add_member(:media_content_type, Shapes::ShapeRef.new(shape: String, location_name: "mediaContentType"))
    UpdateBrandProfileAttributeOutput.add_member(:media_size_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "mediaSizeBytes"))
    UpdateBrandProfileAttributeOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    UpdateBrandProfileAttributeOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    UpdateBrandProfileAttributeOutput.struct_class = Types::UpdateBrandProfileAttributeOutput

    UpdateBrandProfileFromRegistrationInput.add_member(:brand_profile_id, Shapes::ShapeRef.new(shape: BrandProfileIdOrArn, required: true, location: "uri", location_name: "brandProfileId"))
    UpdateBrandProfileFromRegistrationInput.add_member(:registration_id, Shapes::ShapeRef.new(shape: RegistrationIdOrArn, required: true, location_name: "registrationId"))
    UpdateBrandProfileFromRegistrationInput.add_member(:smart_match, Shapes::ShapeRef.new(shape: Boolean, location_name: "smartMatch"))
    UpdateBrandProfileFromRegistrationInput.add_member(:on_attribute_conflict, Shapes::ShapeRef.new(shape: OnAttributeConflict, location_name: "onAttributeConflict"))
    UpdateBrandProfileFromRegistrationInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateBrandProfileFromRegistrationInput.struct_class = Types::UpdateBrandProfileFromRegistrationInput

    UpdateBrandProfileFromRegistrationOutput.add_member(:results, Shapes::ShapeRef.new(shape: JobResults, required: true, location_name: "results"))
    UpdateBrandProfileFromRegistrationOutput.struct_class = Types::UpdateBrandProfileFromRegistrationOutput

    UpdateBrandProfileInput.add_member(:brand_profile_id, Shapes::ShapeRef.new(shape: BrandProfileIdOrArn, required: true, location: "uri", location_name: "brandProfileId"))
    UpdateBrandProfileInput.add_member(:brand_profile_name, Shapes::ShapeRef.new(shape: BrandProfileName, location_name: "brandProfileName"))
    UpdateBrandProfileInput.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "deletionProtectionEnabled"))
    UpdateBrandProfileInput.struct_class = Types::UpdateBrandProfileInput

    UpdateBrandProfileOutput.add_member(:brand_profile_id, Shapes::ShapeRef.new(shape: BrandProfileIdOrArn, required: true, location_name: "brandProfileId"))
    UpdateBrandProfileOutput.add_member(:brand_profile_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "brandProfileArn"))
    UpdateBrandProfileOutput.add_member(:brand_profile_name, Shapes::ShapeRef.new(shape: BrandProfileName, required: true, location_name: "brandProfileName"))
    UpdateBrandProfileOutput.add_member(:status, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "status"))
    UpdateBrandProfileOutput.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "deletionProtectionEnabled"))
    UpdateBrandProfileOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    UpdateBrandProfileOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    UpdateBrandProfileOutput.struct_class = Types::UpdateBrandProfileOutput

    UpdateChannelParameters.add_member(:text, Shapes::ShapeRef.new(shape: UpdateTextParameters, location_name: "text"))
    UpdateChannelParameters.add_member(:voice, Shapes::ShapeRef.new(shape: UpdateVoiceParameters, location_name: "voice"))
    UpdateChannelParameters.add_member(:notify, Shapes::ShapeRef.new(shape: UpdateNotifyParameters, location_name: "notify"))
    UpdateChannelParameters.add_member(:whats_app, Shapes::ShapeRef.new(shape: UpdateWhatsAppParameters, location_name: "whatsApp"))
    UpdateChannelParameters.struct_class = Types::UpdateChannelParameters

    UpdateCodeConfigurationParameters.add_member(:code_type, Shapes::ShapeRef.new(shape: CodeType, location_name: "codeType"))
    UpdateCodeConfigurationParameters.add_member(:code_length, Shapes::ShapeRef.new(shape: CodeLength, location_name: "codeLength"))
    UpdateCodeConfigurationParameters.add_member(:validity_period_minutes, Shapes::ShapeRef.new(shape: ValidityPeriodMinutes, location_name: "validityPeriodMinutes"))
    UpdateCodeConfigurationParameters.add_member(:max_attempts, Shapes::ShapeRef.new(shape: MaxVerificationAttempts, location_name: "maxAttempts"))
    UpdateCodeConfigurationParameters.struct_class = Types::UpdateCodeConfigurationParameters

    UpdateDestinationCountryParameters.key = Shapes::ShapeRef.new(shape: DestinationCountryParameterKey)
    UpdateDestinationCountryParameters.value = Shapes::ShapeRef.new(shape: DestinationCountryParameterValue)

    UpdateNotifyCodeConfigurationInput.add_member(:notify_code_configuration_id, Shapes::ShapeRef.new(shape: NotifyCodeConfigurationIdOrArn, required: true, location: "uri", location_name: "notifyCodeConfigurationId"))
    UpdateNotifyCodeConfigurationInput.add_member(:notify_code_configuration_name, Shapes::ShapeRef.new(shape: NotifyCodeConfigurationName, location_name: "notifyCodeConfigurationName"))
    UpdateNotifyCodeConfigurationInput.add_member(:code_configuration_parameters, Shapes::ShapeRef.new(shape: UpdateCodeConfigurationParameters, location_name: "codeConfigurationParameters"))
    UpdateNotifyCodeConfigurationInput.add_member(:channel_parameters, Shapes::ShapeRef.new(shape: UpdateChannelParameters, location_name: "channelParameters"))
    UpdateNotifyCodeConfigurationInput.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "deletionProtectionEnabled"))
    UpdateNotifyCodeConfigurationInput.struct_class = Types::UpdateNotifyCodeConfigurationInput

    UpdateNotifyCodeConfigurationOutput.add_member(:notify_code_configuration, Shapes::ShapeRef.new(shape: NotifyCodeConfiguration, required: true, location_name: "notifyCodeConfiguration"))
    UpdateNotifyCodeConfigurationOutput.struct_class = Types::UpdateNotifyCodeConfigurationOutput

    UpdateNotifyParameters.add_member(:notify_template_id, Shapes::ShapeRef.new(shape: UpdateNotifyTemplateId, location_name: "notifyTemplateId"))
    UpdateNotifyParameters.add_member(:voice_id, Shapes::ShapeRef.new(shape: UpdateVoiceId, location_name: "voiceId"))
    UpdateNotifyParameters.struct_class = Types::UpdateNotifyParameters

    UpdateRegistrationsFromBrandProfileInput.add_member(:brand_profile_id, Shapes::ShapeRef.new(shape: BrandProfileIdOrArn, required: true, location: "uri", location_name: "brandProfileId"))
    UpdateRegistrationsFromBrandProfileInput.add_member(:registration_ids, Shapes::ShapeRef.new(shape: RegistrationIdList, required: true, location_name: "registrationIds"))
    UpdateRegistrationsFromBrandProfileInput.add_member(:smart_match, Shapes::ShapeRef.new(shape: Boolean, location_name: "smartMatch"))
    UpdateRegistrationsFromBrandProfileInput.add_member(:on_attribute_conflict, Shapes::ShapeRef.new(shape: OnAttributeConflict, location_name: "onAttributeConflict"))
    UpdateRegistrationsFromBrandProfileInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateRegistrationsFromBrandProfileInput.struct_class = Types::UpdateRegistrationsFromBrandProfileInput

    UpdateRegistrationsFromBrandProfileOutput.add_member(:results, Shapes::ShapeRef.new(shape: JobResults, required: true, location_name: "results"))
    UpdateRegistrationsFromBrandProfileOutput.struct_class = Types::UpdateRegistrationsFromBrandProfileOutput

    UpdateTextParameters.add_member(:inline_template_body, Shapes::ShapeRef.new(shape: UpdateInlineTemplateBody, location_name: "inlineTemplateBody"))
    UpdateTextParameters.add_member(:destination_country_parameters, Shapes::ShapeRef.new(shape: UpdateDestinationCountryParameters, location_name: "destinationCountryParameters"))
    UpdateTextParameters.struct_class = Types::UpdateTextParameters

    UpdateVoiceParameters.add_member(:inline_template_body, Shapes::ShapeRef.new(shape: UpdateInlineTemplateBody, location_name: "inlineTemplateBody"))
    UpdateVoiceParameters.add_member(:language_code, Shapes::ShapeRef.new(shape: UpdateLanguageCode, location_name: "languageCode"))
    UpdateVoiceParameters.add_member(:voice_id, Shapes::ShapeRef.new(shape: UpdateVoiceId, location_name: "voiceId"))
    UpdateVoiceParameters.add_member(:voice_message_body_text_type, Shapes::ShapeRef.new(shape: VoiceMessageBodyTextType, location_name: "voiceMessageBodyTextType"))
    UpdateVoiceParameters.struct_class = Types::UpdateVoiceParameters

    UpdateWhatsAppParameters.add_member(:whats_app_template_name, Shapes::ShapeRef.new(shape: UpdateWhatsAppTemplateName, location_name: "whatsAppTemplateName"))
    UpdateWhatsAppParameters.add_member(:language_code, Shapes::ShapeRef.new(shape: UpdateLanguageCode, location_name: "languageCode"))
    UpdateWhatsAppParameters.struct_class = Types::UpdateWhatsAppParameters

    ValidateNotifyCodeVerificationInput.add_member(:destination_identity, Shapes::ShapeRef.new(shape: DestinationIdentity, required: true, location_name: "destinationIdentity"))
    ValidateNotifyCodeVerificationInput.add_member(:reference_id, Shapes::ShapeRef.new(shape: ReferenceId, location_name: "referenceId"))
    ValidateNotifyCodeVerificationInput.add_member(:code, Shapes::ShapeRef.new(shape: VerificationCode, required: true, location_name: "code"))
    ValidateNotifyCodeVerificationInput.struct_class = Types::ValidateNotifyCodeVerificationInput

    ValidateNotifyCodeVerificationOutput.add_member(:status, Shapes::ShapeRef.new(shape: VerificationStatus, required: true, location_name: "status"))
    ValidateNotifyCodeVerificationOutput.struct_class = Types::ValidateNotifyCodeVerificationOutput

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:path, Shapes::ShapeRef.new(shape: String, required: true, location_name: "path"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    VoiceParameters.add_member(:inline_template_body, Shapes::ShapeRef.new(shape: InlineTemplateBody, location_name: "inlineTemplateBody"))
    VoiceParameters.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "languageCode"))
    VoiceParameters.add_member(:voice_id, Shapes::ShapeRef.new(shape: VoiceId, location_name: "voiceId"))
    VoiceParameters.add_member(:voice_message_body_text_type, Shapes::ShapeRef.new(shape: VoiceMessageBodyTextType, location_name: "voiceMessageBodyTextType"))
    VoiceParameters.struct_class = Types::VoiceParameters

    WhatsAppParameters.add_member(:whats_app_template_name, Shapes::ShapeRef.new(shape: WhatsAppTemplateName, location_name: "whatsAppTemplateName"))
    WhatsAppParameters.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "languageCode"))
    WhatsAppParameters.struct_class = Types::WhatsAppParameters


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2026-09-21"

      api.metadata = {
        "apiVersion" => "2026-09-21",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "end-user-messaging",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS End User Messaging",
        "serviceId" => "EndUserMessaging",
        "signatureVersion" => "v4",
        "signingName" => "end-user-messaging",
        "uid" => "endusermessaging-2026-09-21",
      }

      api.add_operation(:create_brand_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBrandProfile"
        o.http_method = "POST"
        o.http_request_uri = "/v1/brand-profiles"
        o.input = Shapes::ShapeRef.new(shape: CreateBrandProfileInput)
        o.output = Shapes::ShapeRef.new(shape: CreateBrandProfileOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_brand_profile_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBrandProfileAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/v1/brand-profiles/{brandProfileId}/attributes"
        o.input = Shapes::ShapeRef.new(shape: CreateBrandProfileAttributesInput)
        o.output = Shapes::ShapeRef.new(shape: CreateBrandProfileAttributesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_brand_profile_from_registration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBrandProfileFromRegistration"
        o.http_method = "POST"
        o.http_request_uri = "/v1/brand-profiles/create-from-registration"
        o.input = Shapes::ShapeRef.new(shape: CreateBrandProfileFromRegistrationInput)
        o.output = Shapes::ShapeRef.new(shape: CreateBrandProfileFromRegistrationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_notify_code_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateNotifyCodeConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/v1/notify-code-configurations"
        o.input = Shapes::ShapeRef.new(shape: CreateNotifyCodeConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: CreateNotifyCodeConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_registrations_from_brand_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRegistrationsFromBrandProfile"
        o.http_method = "POST"
        o.http_request_uri = "/v1/brand-profiles/{brandProfileId}/create-registrations"
        o.input = Shapes::ShapeRef.new(shape: CreateRegistrationsFromBrandProfileInput)
        o.output = Shapes::ShapeRef.new(shape: CreateRegistrationsFromBrandProfileOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_brand_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBrandProfile"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/brand-profiles/{brandProfileId+}"
        o.input = Shapes::ShapeRef.new(shape: DeleteBrandProfileInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteBrandProfileOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_brand_profile_attribute, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBrandProfileAttribute"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/brand-profiles/{brandProfileId}/attributes/{attributeName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteBrandProfileAttributeInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteBrandProfileAttributeOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_notify_code_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteNotifyCodeConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/notify-code-configurations/{notifyCodeConfigurationId+}"
        o.input = Shapes::ShapeRef.new(shape: DeleteNotifyCodeConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteNotifyCodeConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_brand_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBrandProfile"
        o.http_method = "GET"
        o.http_request_uri = "/v1/brand-profiles/{brandProfileId+}"
        o.input = Shapes::ShapeRef.new(shape: GetBrandProfileInput)
        o.output = Shapes::ShapeRef.new(shape: GetBrandProfileOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_brand_profile_attribute, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBrandProfileAttribute"
        o.http_method = "GET"
        o.http_request_uri = "/v1/brand-profiles/{brandProfileId}/attributes/{attributeName}"
        o.input = Shapes::ShapeRef.new(shape: GetBrandProfileAttributeInput)
        o.output = Shapes::ShapeRef.new(shape: GetBrandProfileAttributeOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetJob"
        o.http_method = "GET"
        o.http_request_uri = "/v1/jobs/{jobId}"
        o.input = Shapes::ShapeRef.new(shape: GetJobInput)
        o.output = Shapes::ShapeRef.new(shape: Job)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_notify_code_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetNotifyCodeConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/v1/notify-code-configurations/{notifyCodeConfigurationId+}"
        o.input = Shapes::ShapeRef.new(shape: GetNotifyCodeConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: GetNotifyCodeConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_brand_profile_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBrandProfileAttributes"
        o.http_method = "GET"
        o.http_request_uri = "/v1/brand-profiles/{brandProfileId}/attributes"
        o.input = Shapes::ShapeRef.new(shape: ListBrandProfileAttributesInput)
        o.output = Shapes::ShapeRef.new(shape: ListBrandProfileAttributesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_brand_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBrandProfiles"
        o.http_method = "GET"
        o.http_request_uri = "/v1/brand-profiles"
        o.input = Shapes::ShapeRef.new(shape: ListBrandProfilesInput)
        o.output = Shapes::ShapeRef.new(shape: ListBrandProfilesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListJobs"
        o.http_method = "GET"
        o.http_request_uri = "/v1/jobs"
        o.input = Shapes::ShapeRef.new(shape: ListJobsInput)
        o.output = Shapes::ShapeRef.new(shape: ListJobsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_notify_code_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNotifyCodeConfigurations"
        o.http_method = "GET"
        o.http_request_uri = "/v1/notify-code-configurations"
        o.input = Shapes::ShapeRef.new(shape: ListNotifyCodeConfigurationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListNotifyCodeConfigurationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_registrations_from_brand_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRegistrationsFromBrandProfile"
        o.http_method = "GET"
        o.http_request_uri = "/v1/brand-profiles/{brandProfileId}/registrations"
        o.input = Shapes::ShapeRef.new(shape: ListRegistrationsFromBrandProfileInput)
        o.output = Shapes::ShapeRef.new(shape: ListRegistrationsFromBrandProfileOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.http_request_uri = "/v1/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:send_notify_code_verification, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendNotifyCodeVerification"
        o.http_method = "POST"
        o.http_request_uri = "/v1/notify-code-verifications/send"
        o.input = Shapes::ShapeRef.new(shape: SendNotifyCodeVerificationInput)
        o.output = Shapes::ShapeRef.new(shape: SendNotifyCodeVerificationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/v1/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: TagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_brand_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBrandProfile"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/brand-profiles/{brandProfileId+}"
        o.input = Shapes::ShapeRef.new(shape: UpdateBrandProfileInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateBrandProfileOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_brand_profile_attribute, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBrandProfileAttribute"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/brand-profiles/{brandProfileId}/attributes/{attributeName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateBrandProfileAttributeInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateBrandProfileAttributeOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_brand_profile_from_registration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBrandProfileFromRegistration"
        o.http_method = "POST"
        o.http_request_uri = "/v1/brand-profiles/{brandProfileId}/update-from-registration"
        o.input = Shapes::ShapeRef.new(shape: UpdateBrandProfileFromRegistrationInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateBrandProfileFromRegistrationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_notify_code_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateNotifyCodeConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/notify-code-configurations/{notifyCodeConfigurationId+}"
        o.input = Shapes::ShapeRef.new(shape: UpdateNotifyCodeConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateNotifyCodeConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_registrations_from_brand_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRegistrationsFromBrandProfile"
        o.http_method = "POST"
        o.http_request_uri = "/v1/brand-profiles/{brandProfileId}/update-registrations"
        o.input = Shapes::ShapeRef.new(shape: UpdateRegistrationsFromBrandProfileInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateRegistrationsFromBrandProfileOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:validate_notify_code_verification, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ValidateNotifyCodeVerification"
        o.http_method = "POST"
        o.http_request_uri = "/v1/notify-code-verifications/validate"
        o.input = Shapes::ShapeRef.new(shape: ValidateNotifyCodeVerificationInput)
        o.output = Shapes::ShapeRef.new(shape: ValidateNotifyCodeVerificationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
