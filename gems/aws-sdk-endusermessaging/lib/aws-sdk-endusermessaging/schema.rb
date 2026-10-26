# frozen_string_literal: true

# This is generated code!

module Aws::EndUserMessaging
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#AmazonResourceName", name: "AmazonResourceName", traits: {"smithy.api#length" => {"min" => 20, "max" => 256}, "smithy.api#pattern" => "^arn:[A-Za-z0-9_:/-]+$"})
    AttachmentBody = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.endusermessaging#AttachmentBody", name: "AttachmentBody", traits: {"smithy.api#length" => {"min" => 1, "max" => 5242880}, "smithy.api#sensitive" => {}})
    BrandProfileAttributeCategory = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#BrandProfileAttributeCategory", name: "BrandProfileAttributeCategory", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    BrandProfileAttributeDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#BrandProfileAttributeDescription", name: "BrandProfileAttributeDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#sensitive" => {}})
    BrandProfileAttributeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#BrandProfileAttributeInput", name: "BrandProfileAttributeInput")
    BrandProfileAttributeInputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.endusermessaging#BrandProfileAttributeInputList", name: "BrandProfileAttributeInputList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    BrandProfileAttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#BrandProfileAttributeName", name: "BrandProfileAttributeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_ -]*[A-Za-z0-9_-][A-Za-z0-9_ -]*$", "smithy.api#sensitive" => {}})
    BrandProfileAttributeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#BrandProfileAttributeOutput", name: "BrandProfileAttributeOutput")
    BrandProfileAttributeOutputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.endusermessaging#BrandProfileAttributeOutputList", name: "BrandProfileAttributeOutputList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    BrandProfileAttributeSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#BrandProfileAttributeSummary", name: "BrandProfileAttributeSummary")
    BrandProfileAttributeSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.endusermessaging#BrandProfileAttributeSummaryList", name: "BrandProfileAttributeSummaryList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    BrandProfileAttributeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.endusermessaging#BrandProfileAttributeType", name: "BrandProfileAttributeType")
    BrandProfileAttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#BrandProfileAttributeValue", name: "BrandProfileAttributeValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#sensitive" => {}})
    BrandProfileIdOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#BrandProfileIdOrArn", name: "BrandProfileIdOrArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/-]+$"})
    BrandProfileInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#BrandProfileInfo", name: "BrandProfileInfo")
    BrandProfileInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.endusermessaging#BrandProfileInfoList", name: "BrandProfileInfoList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    BrandProfileName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#BrandProfileName", name: "BrandProfileName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9_ -]*[A-Za-z0-9_-][A-Za-z0-9_ -]*$"})
    ChannelParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#ChannelParameters", name: "ChannelParameters")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\x21-\\x7E]+$", "smithy.api#sensitive" => {}})
    CodeConfigurationParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#CodeConfigurationParameters", name: "CodeConfigurationParameters")
    CodeLength = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.endusermessaging#CodeLength", name: "CodeLength", traits: {"smithy.api#range" => {"min" => 4, "max" => 8}})
    CodeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.endusermessaging#CodeType", name: "CodeType")
    ConfigurationSetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#ConfigurationSetName", name: "ConfigurationSetName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_-]+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContextKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#ContextKey", name: "ContextKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^\\S+$", "smithy.api#sensitive" => {}})
    ContextMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.endusermessaging#ContextMap", name: "ContextMap", traits: {"smithy.api#length" => {"max" => 5}})
    ContextValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#ContextValue", name: "ContextValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 800}, "smithy.api#pattern" => "^\\S(?:[\\s\\S]*\\S)?$", "smithy.api#sensitive" => {}})
    CreateBrandProfileAttributesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#CreateBrandProfileAttributesInput", name: "CreateBrandProfileAttributesInput")
    CreateBrandProfileAttributesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#CreateBrandProfileAttributesOutput", name: "CreateBrandProfileAttributesOutput")
    CreateBrandProfileFromRegistrationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#CreateBrandProfileFromRegistrationInput", name: "CreateBrandProfileFromRegistrationInput")
    CreateBrandProfileFromRegistrationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#CreateBrandProfileFromRegistrationOutput", name: "CreateBrandProfileFromRegistrationOutput")
    CreateBrandProfileInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#CreateBrandProfileInput", name: "CreateBrandProfileInput")
    CreateBrandProfileOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#CreateBrandProfileOutput", name: "CreateBrandProfileOutput")
    CreateNotifyCodeConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#CreateNotifyCodeConfigurationInput", name: "CreateNotifyCodeConfigurationInput")
    CreateNotifyCodeConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#CreateNotifyCodeConfigurationOutput", name: "CreateNotifyCodeConfigurationOutput")
    CreateRegistrationsFromBrandProfileInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#CreateRegistrationsFromBrandProfileInput", name: "CreateRegistrationsFromBrandProfileInput")
    CreateRegistrationsFromBrandProfileOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#CreateRegistrationsFromBrandProfileOutput", name: "CreateRegistrationsFromBrandProfileOutput")
    DeleteBrandProfileAttributeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#DeleteBrandProfileAttributeInput", name: "DeleteBrandProfileAttributeInput")
    DeleteBrandProfileAttributeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#DeleteBrandProfileAttributeOutput", name: "DeleteBrandProfileAttributeOutput")
    DeleteBrandProfileInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#DeleteBrandProfileInput", name: "DeleteBrandProfileInput")
    DeleteBrandProfileOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#DeleteBrandProfileOutput", name: "DeleteBrandProfileOutput")
    DeleteNotifyCodeConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#DeleteNotifyCodeConfigurationInput", name: "DeleteNotifyCodeConfigurationInput")
    DeleteNotifyCodeConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#DeleteNotifyCodeConfigurationOutput", name: "DeleteNotifyCodeConfigurationOutput")
    DestinationCountryParameterKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#DestinationCountryParameterKey", name: "DestinationCountryParameterKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^\\S+$"})
    DestinationCountryParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#DestinationCountryParameterValue", name: "DestinationCountryParameterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^\\S+$", "smithy.api#sensitive" => {}})
    DestinationCountryParameters = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.endusermessaging#DestinationCountryParameters", name: "DestinationCountryParameters", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    DestinationIdentity = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#DestinationIdentity", name: "DestinationIdentity", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^[\\x21-\\x22\\x24-\\x7E]+$", "smithy.api#sensitive" => {}})
    GetBrandProfileAttributeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#GetBrandProfileAttributeInput", name: "GetBrandProfileAttributeInput")
    GetBrandProfileAttributeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#GetBrandProfileAttributeOutput", name: "GetBrandProfileAttributeOutput")
    GetBrandProfileInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#GetBrandProfileInput", name: "GetBrandProfileInput")
    GetBrandProfileOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#GetBrandProfileOutput", name: "GetBrandProfileOutput")
    GetJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#GetJobInput", name: "GetJobInput")
    GetNotifyCodeConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#GetNotifyCodeConfigurationInput", name: "GetNotifyCodeConfigurationInput")
    GetNotifyCodeConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#GetNotifyCodeConfigurationOutput", name: "GetNotifyCodeConfigurationOutput")
    InlineTemplateBody = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#InlineTemplateBody", name: "InlineTemplateBody", traits: {"smithy.api#length" => {"min" => 1, "max" => 6000}, "smithy.api#pattern" => "^[\\s\\S]*\\S[\\s\\S]*$", "smithy.api#sensitive" => {}})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    Job = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#Job", name: "Job")
    JobErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#JobErrorCode", name: "JobErrorCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    JobErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#JobErrorMessage", name: "JobErrorMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    JobId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#JobId", name: "JobId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9_-]+$"})
    JobOperationType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#JobOperationType", name: "JobOperationType", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    JobResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#JobResource", name: "JobResource")
    JobResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#JobResourceId", name: "JobResourceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/-]+$"})
    JobResourceIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#JobResourceIdentifier", name: "JobResourceIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\S]+$"})
    JobResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.endusermessaging#JobResourceList", name: "JobResourceList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    JobResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.endusermessaging#JobResourceType", name: "JobResourceType")
    JobResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#JobResult", name: "JobResult")
    JobResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.endusermessaging#JobResults", name: "JobResults", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    JobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.endusermessaging#JobStatus", name: "JobStatus")
    JobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#JobSummary", name: "JobSummary")
    JobSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.endusermessaging#JobSummaryList", name: "JobSummaryList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    LanguageCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#LanguageCode", name: "LanguageCode", traits: {"smithy.api#length" => {"min" => 2, "max" => 35}, "smithy.api#pattern" => "^\\S+$"})
    ListBrandProfileAttributesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#ListBrandProfileAttributesInput", name: "ListBrandProfileAttributesInput")
    ListBrandProfileAttributesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#ListBrandProfileAttributesOutput", name: "ListBrandProfileAttributesOutput")
    ListBrandProfilesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#ListBrandProfilesInput", name: "ListBrandProfilesInput")
    ListBrandProfilesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#ListBrandProfilesOutput", name: "ListBrandProfilesOutput")
    ListJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#ListJobsInput", name: "ListJobsInput")
    ListJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#ListJobsOutput", name: "ListJobsOutput")
    ListNotifyCodeConfigurationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#ListNotifyCodeConfigurationsInput", name: "ListNotifyCodeConfigurationsInput")
    ListNotifyCodeConfigurationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#ListNotifyCodeConfigurationsOutput", name: "ListNotifyCodeConfigurationsOutput")
    ListRegistrationsFromBrandProfileInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#ListRegistrationsFromBrandProfileInput", name: "ListRegistrationsFromBrandProfileInput")
    ListRegistrationsFromBrandProfileOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#ListRegistrationsFromBrandProfileOutput", name: "ListRegistrationsFromBrandProfileOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.endusermessaging#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxVerificationAttempts = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.endusermessaging#MaxVerificationAttempts", name: "MaxVerificationAttempts", traits: {"smithy.api#range" => {"min" => 1, "max" => 5}})
    MediaDownloadUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#MediaDownloadUrl", name: "MediaDownloadUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#sensitive" => {}})
    MessageId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#MessageId", name: "MessageId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/-]+$"})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^.+$"})
    NotifyChannel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.endusermessaging#NotifyChannel", name: "NotifyChannel")
    NotifyCodeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#NotifyCodeConfiguration", name: "NotifyCodeConfiguration")
    NotifyCodeConfigurationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#NotifyCodeConfigurationId", name: "NotifyCodeConfigurationId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9_-]+$"})
    NotifyCodeConfigurationIdOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#NotifyCodeConfigurationIdOrArn", name: "NotifyCodeConfigurationIdOrArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/-]+$"})
    NotifyCodeConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.endusermessaging#NotifyCodeConfigurationList", name: "NotifyCodeConfigurationList")
    NotifyCodeConfigurationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#NotifyCodeConfigurationName", name: "NotifyCodeConfigurationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9_ -]*[A-Za-z0-9_-][A-Za-z0-9_ -]*$"})
    NotifyParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#NotifyParameters", name: "NotifyParameters")
    NotifyTemplateId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#NotifyTemplateId", name: "NotifyTemplateId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_-]+$"})
    OnAttributeConflict = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.endusermessaging#OnAttributeConflict", name: "OnAttributeConflict")
    OriginationIdentity = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#OriginationIdentity", name: "OriginationIdentity", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/+-]+$"})
    ReferenceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#ReferenceId", name: "ReferenceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_-]+$"})
    RegistrationAssociationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#RegistrationAssociationSummary", name: "RegistrationAssociationSummary")
    RegistrationAssociationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.endusermessaging#RegistrationAssociationSummaryList", name: "RegistrationAssociationSummaryList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    RegistrationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#RegistrationId", name: "RegistrationId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_-]+$"})
    RegistrationIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.endusermessaging#RegistrationIdList", name: "RegistrationIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    RegistrationIdOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#RegistrationIdOrArn", name: "RegistrationIdOrArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_:/-]+$"})
    RegistrationType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#RegistrationType", name: "RegistrationType", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9_]+$"})
    RegistrationTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.endusermessaging#RegistrationTypeList", name: "RegistrationTypeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SendNotifyCodeVerificationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#SendNotifyCodeVerificationInput", name: "SendNotifyCodeVerificationInput")
    SendNotifyCodeVerificationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#SendNotifyCodeVerificationOutput", name: "SendNotifyCodeVerificationOutput")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Status = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.endusermessaging#Status", name: "Status")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^.+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.endusermessaging#TagKeyList", name: "TagKeyList")
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.endusermessaging#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^.*$"})
    TextParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#TextParameters", name: "TextParameters")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateBrandProfileAttributeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#UpdateBrandProfileAttributeInput", name: "UpdateBrandProfileAttributeInput")
    UpdateBrandProfileAttributeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#UpdateBrandProfileAttributeOutput", name: "UpdateBrandProfileAttributeOutput")
    UpdateBrandProfileFromRegistrationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#UpdateBrandProfileFromRegistrationInput", name: "UpdateBrandProfileFromRegistrationInput")
    UpdateBrandProfileFromRegistrationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#UpdateBrandProfileFromRegistrationOutput", name: "UpdateBrandProfileFromRegistrationOutput")
    UpdateBrandProfileInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#UpdateBrandProfileInput", name: "UpdateBrandProfileInput")
    UpdateBrandProfileOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#UpdateBrandProfileOutput", name: "UpdateBrandProfileOutput")
    UpdateChannelParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#UpdateChannelParameters", name: "UpdateChannelParameters")
    UpdateCodeConfigurationParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#UpdateCodeConfigurationParameters", name: "UpdateCodeConfigurationParameters")
    UpdateDestinationCountryParameters = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.endusermessaging#UpdateDestinationCountryParameters", name: "UpdateDestinationCountryParameters", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    UpdateInlineTemplateBody = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#UpdateInlineTemplateBody", name: "UpdateInlineTemplateBody", traits: {"smithy.api#length" => {"min" => 0, "max" => 6000}, "smithy.api#pattern" => "^([\\s\\S]*\\S[\\s\\S]*)?$", "smithy.api#sensitive" => {}})
    UpdateLanguageCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#UpdateLanguageCode", name: "UpdateLanguageCode", traits: {"smithy.api#length" => {"min" => 0, "max" => 35}, "smithy.api#pattern" => "^(\\S{2,35})?$"})
    UpdateNotifyCodeConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#UpdateNotifyCodeConfigurationInput", name: "UpdateNotifyCodeConfigurationInput")
    UpdateNotifyCodeConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#UpdateNotifyCodeConfigurationOutput", name: "UpdateNotifyCodeConfigurationOutput")
    UpdateNotifyParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#UpdateNotifyParameters", name: "UpdateNotifyParameters")
    UpdateNotifyTemplateId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#UpdateNotifyTemplateId", name: "UpdateNotifyTemplateId", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_-]*$"})
    UpdateRegistrationsFromBrandProfileInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#UpdateRegistrationsFromBrandProfileInput", name: "UpdateRegistrationsFromBrandProfileInput")
    UpdateRegistrationsFromBrandProfileOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#UpdateRegistrationsFromBrandProfileOutput", name: "UpdateRegistrationsFromBrandProfileOutput")
    UpdateTextParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#UpdateTextParameters", name: "UpdateTextParameters")
    UpdateVoiceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#UpdateVoiceId", name: "UpdateVoiceId", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9]*$"})
    UpdateVoiceParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#UpdateVoiceParameters", name: "UpdateVoiceParameters")
    UpdateWhatsAppParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#UpdateWhatsAppParameters", name: "UpdateWhatsAppParameters")
    UpdateWhatsAppTemplateName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#UpdateWhatsAppTemplateName", name: "UpdateWhatsAppTemplateName", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^\\S*$"})
    ValidateNotifyCodeVerificationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#ValidateNotifyCodeVerificationInput", name: "ValidateNotifyCodeVerificationInput")
    ValidateNotifyCodeVerificationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#ValidateNotifyCodeVerificationOutput", name: "ValidateNotifyCodeVerificationOutput")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client"})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.endusermessaging#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidityPeriodMinutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.endusermessaging#ValidityPeriodMinutes", name: "ValidityPeriodMinutes", traits: {"smithy.api#range" => {"min" => 1, "max" => 60}})
    VerificationCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#VerificationCode", name: "VerificationCode", traits: {"smithy.api#length" => {"min" => 4, "max" => 8}, "smithy.api#pattern" => "^[A-Za-z0-9]+$", "smithy.api#sensitive" => {}})
    VerificationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#VerificationId", name: "VerificationId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9_:/-]+$"})
    VerificationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.endusermessaging#VerificationStatus", name: "VerificationStatus")
    VoiceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#VoiceId", name: "VoiceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9]+$"})
    VoiceMessageBodyTextType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.endusermessaging#VoiceMessageBodyTextType", name: "VoiceMessageBodyTextType")
    VoiceParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#VoiceParameters", name: "VoiceParameters")
    WhatsAppParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.endusermessaging#WhatsAppParameters", name: "WhatsAppParameters")
    WhatsAppTemplateName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.endusermessaging#WhatsAppTemplateName", name: "WhatsAppTemplateName", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^\\S+$"})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    BrandProfileAttributeInput.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileAttributeName, name: "attributeName", traits: {"smithy.api#required" => {}}))
    BrandProfileAttributeInput.add_member(:attribute_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileAttributeType, name: "attributeType", traits: {"smithy.api#required" => {}}))
    BrandProfileAttributeInput.add_member(:attribute_value, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileAttributeValue, name: "attributeValue"))
    BrandProfileAttributeInput.add_member(:attachment_body, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentBody, name: "attachmentBody"))
    BrandProfileAttributeInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileAttributeDescription, name: "description"))
    BrandProfileAttributeInput.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileAttributeCategory, name: "category"))
    BrandProfileAttributeInput.type = Types::BrandProfileAttributeInput
    BrandProfileAttributeInputList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileAttributeInput, name: "member"))
    BrandProfileAttributeOutput.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileAttributeName, name: "attributeName", traits: {"smithy.api#required" => {}}))
    BrandProfileAttributeOutput.add_member(:attribute_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileAttributeType, name: "attributeType", traits: {"smithy.api#required" => {}}))
    BrandProfileAttributeOutput.add_member(:media_download_url, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaDownloadUrl, name: "mediaDownloadUrl"))
    BrandProfileAttributeOutput.type = Types::BrandProfileAttributeOutput
    BrandProfileAttributeOutputList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileAttributeOutput, name: "member"))
    BrandProfileAttributeSummary.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileAttributeName, name: "attributeName", traits: {"smithy.api#required" => {}}))
    BrandProfileAttributeSummary.add_member(:attribute_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileAttributeType, name: "attributeType", traits: {"smithy.api#required" => {}}))
    BrandProfileAttributeSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileAttributeDescription, name: "description"))
    BrandProfileAttributeSummary.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileAttributeCategory, name: "category"))
    BrandProfileAttributeSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    BrandProfileAttributeSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    BrandProfileAttributeSummary.type = Types::BrandProfileAttributeSummary
    BrandProfileAttributeSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileAttributeSummary, name: "member"))
    BrandProfileAttributeType.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEXT", traits: {"smithy.api#enumValue" => "TEXT"}))
    BrandProfileAttributeType.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMAGE", traits: {"smithy.api#enumValue" => "IMAGE"}))
    BrandProfileAttributeType.add_member(:document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT", traits: {"smithy.api#enumValue" => "DOCUMENT"}))
    BrandProfileInfo.add_member(:brand_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileIdOrArn, name: "brandProfileId", traits: {"smithy.api#required" => {}}))
    BrandProfileInfo.add_member(:brand_profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "brandProfileArn", traits: {"smithy.api#required" => {}}))
    BrandProfileInfo.add_member(:brand_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileName, name: "brandProfileName", traits: {"smithy.api#required" => {}}))
    BrandProfileInfo.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status", traits: {"smithy.api#required" => {}}))
    BrandProfileInfo.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "deletionProtectionEnabled", traits: {"smithy.api#required" => {}}))
    BrandProfileInfo.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    BrandProfileInfo.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    BrandProfileInfo.type = Types::BrandProfileInfo
    BrandProfileInfoList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileInfo, name: "member"))
    ChannelParameters.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: TextParameters, name: "text"))
    ChannelParameters.add_member(:voice, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceParameters, name: "voice"))
    ChannelParameters.add_member(:notify, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyParameters, name: "notify"))
    ChannelParameters.add_member(:whats_app, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppParameters, name: "whatsApp"))
    ChannelParameters.type = Types::ChannelParameters
    CodeConfigurationParameters.add_member(:code_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeType, name: "codeType"))
    CodeConfigurationParameters.add_member(:code_length, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeLength, name: "codeLength"))
    CodeConfigurationParameters.add_member(:validity_period_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidityPeriodMinutes, name: "validityPeriodMinutes"))
    CodeConfigurationParameters.add_member(:max_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxVerificationAttempts, name: "maxAttempts"))
    CodeConfigurationParameters.type = Types::CodeConfigurationParameters
    CodeType.add_member(:numeric, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUMERIC", traits: {"smithy.api#enumValue" => "NUMERIC"}))
    CodeType.add_member(:alpha, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALPHA", traits: {"smithy.api#enumValue" => "ALPHA"}))
    CodeType.add_member(:alphanumeric, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALPHANUMERIC", traits: {"smithy.api#enumValue" => "ALPHANUMERIC"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId"))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType"))
    ConflictException.type = Types::ConflictException
    ContextMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextKey, name: "key"))
    ContextMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextValue, name: "value"))
    CreateBrandProfileAttributesInput.add_member(:brand_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileIdOrArn, name: "brandProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateBrandProfileAttributesInput.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileAttributeInputList, name: "attributes", traits: {"smithy.api#required" => {}}))
    CreateBrandProfileAttributesInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateBrandProfileAttributesInput.type = Types::CreateBrandProfileAttributesInput
    CreateBrandProfileAttributesOutput.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileAttributeOutputList, name: "attributes", traits: {"smithy.api#required" => {}}))
    CreateBrandProfileAttributesOutput.type = Types::CreateBrandProfileAttributesOutput
    CreateBrandProfileFromRegistrationInput.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationIdOrArn, name: "registrationId", traits: {"smithy.api#required" => {}}))
    CreateBrandProfileFromRegistrationInput.add_member(:brand_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileName, name: "brandProfileName", traits: {"smithy.api#required" => {}}))
    CreateBrandProfileFromRegistrationInput.add_member(:smart_match, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "smartMatch"))
    CreateBrandProfileFromRegistrationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateBrandProfileFromRegistrationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateBrandProfileFromRegistrationInput.type = Types::CreateBrandProfileFromRegistrationInput
    CreateBrandProfileFromRegistrationOutput.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: JobResults, name: "results", traits: {"smithy.api#required" => {}}))
    CreateBrandProfileFromRegistrationOutput.type = Types::CreateBrandProfileFromRegistrationOutput
    CreateBrandProfileInput.add_member(:brand_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileName, name: "brandProfileName", traits: {"smithy.api#required" => {}}))
    CreateBrandProfileInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateBrandProfileInput.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "deletionProtectionEnabled"))
    CreateBrandProfileInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateBrandProfileInput.type = Types::CreateBrandProfileInput
    CreateBrandProfileOutput.add_member(:brand_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileIdOrArn, name: "brandProfileId", traits: {"smithy.api#required" => {}}))
    CreateBrandProfileOutput.add_member(:brand_profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "brandProfileArn", traits: {"smithy.api#required" => {}}))
    CreateBrandProfileOutput.add_member(:brand_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileName, name: "brandProfileName", traits: {"smithy.api#required" => {}}))
    CreateBrandProfileOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status", traits: {"smithy.api#required" => {}}))
    CreateBrandProfileOutput.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "deletionProtectionEnabled", traits: {"smithy.api#required" => {}}))
    CreateBrandProfileOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    CreateBrandProfileOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    CreateBrandProfileOutput.add_member(:attributes_created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "attributesCreated", traits: {"smithy.api#required" => {}}))
    CreateBrandProfileOutput.type = Types::CreateBrandProfileOutput
    CreateNotifyCodeConfigurationInput.add_member(:notify_code_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyCodeConfigurationName, name: "notifyCodeConfigurationName", traits: {"smithy.api#required" => {}}))
    CreateNotifyCodeConfigurationInput.add_member(:code_configuration_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeConfigurationParameters, name: "codeConfigurationParameters"))
    CreateNotifyCodeConfigurationInput.add_member(:channel_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelParameters, name: "channelParameters"))
    CreateNotifyCodeConfigurationInput.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "deletionProtectionEnabled"))
    CreateNotifyCodeConfigurationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateNotifyCodeConfigurationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateNotifyCodeConfigurationInput.type = Types::CreateNotifyCodeConfigurationInput
    CreateNotifyCodeConfigurationOutput.add_member(:notify_code_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyCodeConfiguration, name: "notifyCodeConfiguration", traits: {"smithy.api#required" => {}}))
    CreateNotifyCodeConfigurationOutput.type = Types::CreateNotifyCodeConfigurationOutput
    CreateRegistrationsFromBrandProfileInput.add_member(:brand_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileIdOrArn, name: "brandProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRegistrationsFromBrandProfileInput.add_member(:registration_types, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationTypeList, name: "registrationTypes", traits: {"smithy.api#required" => {}}))
    CreateRegistrationsFromBrandProfileInput.add_member(:smart_match, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "smartMatch"))
    CreateRegistrationsFromBrandProfileInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateRegistrationsFromBrandProfileInput.type = Types::CreateRegistrationsFromBrandProfileInput
    CreateRegistrationsFromBrandProfileOutput.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: JobResults, name: "results", traits: {"smithy.api#required" => {}}))
    CreateRegistrationsFromBrandProfileOutput.type = Types::CreateRegistrationsFromBrandProfileOutput
    DeleteBrandProfileAttributeInput.add_member(:brand_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileIdOrArn, name: "brandProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBrandProfileAttributeInput.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileAttributeName, name: "attributeName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBrandProfileAttributeInput.type = Types::DeleteBrandProfileAttributeInput
    DeleteBrandProfileAttributeOutput.add_member(:brand_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileIdOrArn, name: "brandProfileId", traits: {"smithy.api#required" => {}}))
    DeleteBrandProfileAttributeOutput.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileAttributeName, name: "attributeName", traits: {"smithy.api#required" => {}}))
    DeleteBrandProfileAttributeOutput.type = Types::DeleteBrandProfileAttributeOutput
    DeleteBrandProfileInput.add_member(:brand_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileIdOrArn, name: "brandProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBrandProfileInput.type = Types::DeleteBrandProfileInput
    DeleteBrandProfileOutput.add_member(:brand_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileIdOrArn, name: "brandProfileId", traits: {"smithy.api#required" => {}}))
    DeleteBrandProfileOutput.add_member(:brand_profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "brandProfileArn", traits: {"smithy.api#required" => {}}))
    DeleteBrandProfileOutput.type = Types::DeleteBrandProfileOutput
    DeleteNotifyCodeConfigurationInput.add_member(:notify_code_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyCodeConfigurationIdOrArn, name: "notifyCodeConfigurationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteNotifyCodeConfigurationInput.type = Types::DeleteNotifyCodeConfigurationInput
    DeleteNotifyCodeConfigurationOutput.type = Types::DeleteNotifyCodeConfigurationOutput
    DestinationCountryParameters.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationCountryParameterKey, name: "key"))
    DestinationCountryParameters.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationCountryParameterValue, name: "value"))
    GetBrandProfileAttributeInput.add_member(:brand_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileIdOrArn, name: "brandProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBrandProfileAttributeInput.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileAttributeName, name: "attributeName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBrandProfileAttributeInput.type = Types::GetBrandProfileAttributeInput
    GetBrandProfileAttributeOutput.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileAttributeName, name: "attributeName", traits: {"smithy.api#required" => {}}))
    GetBrandProfileAttributeOutput.add_member(:attribute_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileAttributeType, name: "attributeType", traits: {"smithy.api#required" => {}}))
    GetBrandProfileAttributeOutput.add_member(:attribute_value, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileAttributeValue, name: "attributeValue"))
    GetBrandProfileAttributeOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileAttributeDescription, name: "description"))
    GetBrandProfileAttributeOutput.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileAttributeCategory, name: "category"))
    GetBrandProfileAttributeOutput.add_member(:media_content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "mediaContentType"))
    GetBrandProfileAttributeOutput.add_member(:media_size_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "mediaSizeBytes"))
    GetBrandProfileAttributeOutput.add_member(:media_download_url, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaDownloadUrl, name: "mediaDownloadUrl"))
    GetBrandProfileAttributeOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetBrandProfileAttributeOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    GetBrandProfileAttributeOutput.type = Types::GetBrandProfileAttributeOutput
    GetBrandProfileInput.add_member(:brand_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileIdOrArn, name: "brandProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBrandProfileInput.type = Types::GetBrandProfileInput
    GetBrandProfileOutput.add_member(:brand_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileIdOrArn, name: "brandProfileId", traits: {"smithy.api#required" => {}}))
    GetBrandProfileOutput.add_member(:brand_profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "brandProfileArn", traits: {"smithy.api#required" => {}}))
    GetBrandProfileOutput.add_member(:brand_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileName, name: "brandProfileName", traits: {"smithy.api#required" => {}}))
    GetBrandProfileOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status", traits: {"smithy.api#required" => {}}))
    GetBrandProfileOutput.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "deletionProtectionEnabled", traits: {"smithy.api#required" => {}}))
    GetBrandProfileOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetBrandProfileOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    GetBrandProfileOutput.type = Types::GetBrandProfileOutput
    GetJobInput.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJobInput.type = Types::GetJobInput
    GetNotifyCodeConfigurationInput.add_member(:notify_code_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyCodeConfigurationIdOrArn, name: "notifyCodeConfigurationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetNotifyCodeConfigurationInput.type = Types::GetNotifyCodeConfigurationInput
    GetNotifyCodeConfigurationOutput.add_member(:notify_code_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyCodeConfiguration, name: "notifyCodeConfiguration", traits: {"smithy.api#required" => {}}))
    GetNotifyCodeConfigurationOutput.type = Types::GetNotifyCodeConfigurationOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    Job.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#required" => {}}))
    Job.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "status", traits: {"smithy.api#required" => {}}))
    Job.add_member(:operation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: JobOperationType, name: "operationType", traits: {"smithy.api#required" => {}}))
    Job.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    Job.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    Job.add_member(:brand_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileIdOrArn, name: "brandProfileId"))
    Job.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: JobErrorCode, name: "errorCode"))
    Job.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: JobErrorMessage, name: "errorMessage"))
    Job.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: JobResourceList, name: "resources"))
    Job.type = Types::Job
    JobResource.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: JobResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    JobResource.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobResourceId, name: "resourceId", traits: {"smithy.api#required" => {}}))
    JobResource.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    JobResource.type = Types::JobResource
    JobResourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: JobResource, name: "member"))
    JobResourceType.add_member(:registration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGISTRATION", traits: {"smithy.api#enumValue" => "REGISTRATION"}))
    JobResourceType.add_member(:brand_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BRAND_PROFILE", traits: {"smithy.api#enumValue" => "BRAND_PROFILE"}))
    JobResult.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#required" => {}}))
    JobResult.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: JobResourceIdentifier, name: "resourceIdentifier", traits: {"smithy.api#required" => {}}))
    JobResult.type = Types::JobResult
    JobResults.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: JobResult, name: "member"))
    JobStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    JobStatus.add_member(:processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROCESSING", traits: {"smithy.api#enumValue" => "PROCESSING"}))
    JobStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    JobSummary.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#required" => {}}))
    JobSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "status", traits: {"smithy.api#required" => {}}))
    JobSummary.add_member(:operation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: JobOperationType, name: "operationType", traits: {"smithy.api#required" => {}}))
    JobSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    JobSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    JobSummary.add_member(:brand_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileIdOrArn, name: "brandProfileId"))
    JobSummary.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: JobErrorCode, name: "errorCode"))
    JobSummary.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: JobErrorMessage, name: "errorMessage"))
    JobSummary.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: JobResourceList, name: "resources"))
    JobSummary.type = Types::JobSummary
    JobSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: JobSummary, name: "member"))
    ListBrandProfileAttributesInput.add_member(:brand_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileIdOrArn, name: "brandProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBrandProfileAttributesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListBrandProfileAttributesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListBrandProfileAttributesInput.type = Types::ListBrandProfileAttributesInput
    ListBrandProfileAttributesOutput.add_member(:brand_profile_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileAttributeSummaryList, name: "brandProfileAttributes", traits: {"smithy.api#required" => {}}))
    ListBrandProfileAttributesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListBrandProfileAttributesOutput.type = Types::ListBrandProfileAttributesOutput
    ListBrandProfilesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListBrandProfilesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListBrandProfilesInput.type = Types::ListBrandProfilesInput
    ListBrandProfilesOutput.add_member(:brand_profiles, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileInfoList, name: "brandProfiles", traits: {"smithy.api#required" => {}}))
    ListBrandProfilesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListBrandProfilesOutput.type = Types::ListBrandProfilesOutput
    ListJobsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListJobsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListJobsInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "status", traits: {"smithy.api#httpQuery" => "status"}))
    ListJobsInput.add_member(:brand_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileIdOrArn, name: "brandProfileId", traits: {"smithy.api#httpQuery" => "brandProfileId"}))
    ListJobsInput.add_member(:operation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: JobOperationType, name: "operationType", traits: {"smithy.api#httpQuery" => "operationType"}))
    ListJobsInput.type = Types::ListJobsInput
    ListJobsOutput.add_member(:jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: JobSummaryList, name: "jobs", traits: {"smithy.api#required" => {}}))
    ListJobsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListJobsOutput.type = Types::ListJobsOutput
    ListNotifyCodeConfigurationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListNotifyCodeConfigurationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListNotifyCodeConfigurationsInput.type = Types::ListNotifyCodeConfigurationsInput
    ListNotifyCodeConfigurationsOutput.add_member(:notify_code_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyCodeConfigurationList, name: "notifyCodeConfigurations", traits: {"smithy.api#required" => {}}))
    ListNotifyCodeConfigurationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListNotifyCodeConfigurationsOutput.type = Types::ListNotifyCodeConfigurationsOutput
    ListRegistrationsFromBrandProfileInput.add_member(:brand_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileIdOrArn, name: "brandProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRegistrationsFromBrandProfileInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListRegistrationsFromBrandProfileInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRegistrationsFromBrandProfileInput.type = Types::ListRegistrationsFromBrandProfileInput
    ListRegistrationsFromBrandProfileOutput.add_member(:registration_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationAssociationSummaryList, name: "registrationAssociations", traits: {"smithy.api#required" => {}}))
    ListRegistrationsFromBrandProfileOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListRegistrationsFromBrandProfileOutput.type = Types::ListRegistrationsFromBrandProfileOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    NotifyChannel.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEXT", traits: {"smithy.api#enumValue" => "TEXT"}))
    NotifyChannel.add_member(:voice, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VOICE", traits: {"smithy.api#enumValue" => "VOICE"}))
    NotifyChannel.add_member(:whatsapp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WHATSAPP", traits: {"smithy.api#enumValue" => "WHATSAPP"}))
    NotifyCodeConfiguration.add_member(:notify_code_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyCodeConfigurationId, name: "notifyCodeConfigurationId", traits: {"smithy.api#required" => {}}))
    NotifyCodeConfiguration.add_member(:notify_code_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "notifyCodeConfigurationArn", traits: {"smithy.api#required" => {}}))
    NotifyCodeConfiguration.add_member(:notify_code_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyCodeConfigurationName, name: "notifyCodeConfigurationName", traits: {"smithy.api#required" => {}}))
    NotifyCodeConfiguration.add_member(:code_configuration_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeConfigurationParameters, name: "codeConfigurationParameters"))
    NotifyCodeConfiguration.add_member(:channel_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelParameters, name: "channelParameters"))
    NotifyCodeConfiguration.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "deletionProtectionEnabled", traits: {"smithy.api#required" => {}}))
    NotifyCodeConfiguration.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    NotifyCodeConfiguration.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    NotifyCodeConfiguration.type = Types::NotifyCodeConfiguration
    NotifyCodeConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyCodeConfiguration, name: "member"))
    NotifyParameters.add_member(:notify_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyTemplateId, name: "notifyTemplateId"))
    NotifyParameters.add_member(:voice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceId, name: "voiceId"))
    NotifyParameters.type = Types::NotifyParameters
    OnAttributeConflict.add_member(:replace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLACE", traits: {"smithy.api#enumValue" => "REPLACE"}))
    OnAttributeConflict.add_member(:preserve, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRESERVE", traits: {"smithy.api#enumValue" => "PRESERVE"}))
    RegistrationAssociationSummary.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationId, name: "registrationId", traits: {"smithy.api#required" => {}}))
    RegistrationAssociationSummary.add_member(:registration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationType, name: "registrationType", traits: {"smithy.api#required" => {}}))
    RegistrationAssociationSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    RegistrationAssociationSummary.add_member(:smart_match_used, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "smartMatchUsed", traits: {"smithy.api#required" => {}}))
    RegistrationAssociationSummary.type = Types::RegistrationAssociationSummary
    RegistrationAssociationSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationAssociationSummary, name: "member"))
    RegistrationIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationIdOrArn, name: "member"))
    RegistrationTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationType, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SendNotifyCodeVerificationInput.add_member(:channel, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyChannel, name: "channel", traits: {"smithy.api#required" => {}}))
    SendNotifyCodeVerificationInput.add_member(:destination_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationIdentity, name: "destinationIdentity", traits: {"smithy.api#required" => {}}))
    SendNotifyCodeVerificationInput.add_member(:origination_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginationIdentity, name: "originationIdentity", traits: {"smithy.api#required" => {}}))
    SendNotifyCodeVerificationInput.add_member(:notify_code_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyCodeConfigurationIdOrArn, name: "notifyCodeConfiguration"))
    SendNotifyCodeVerificationInput.add_member(:override_channel_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelParameters, name: "overrideChannelParameters"))
    SendNotifyCodeVerificationInput.add_member(:override_code_configuration_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeConfigurationParameters, name: "overrideCodeConfigurationParameters"))
    SendNotifyCodeVerificationInput.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "configurationSetName"))
    SendNotifyCodeVerificationInput.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextMap, name: "context"))
    SendNotifyCodeVerificationInput.add_member(:reference_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceId, name: "referenceId"))
    SendNotifyCodeVerificationInput.type = Types::SendNotifyCodeVerificationInput
    SendNotifyCodeVerificationOutput.add_member(:verification_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationId, name: "verificationId", traits: {"smithy.api#required" => {}}))
    SendNotifyCodeVerificationOutput.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, name: "messageId", traits: {"smithy.api#required" => {}}))
    SendNotifyCodeVerificationOutput.type = Types::SendNotifyCodeVerificationOutput
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Status.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    Status.add_member(:blocked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BLOCKED", traits: {"smithy.api#enumValue" => "BLOCKED"}))
    Status.add_member(:paused, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAUSED", traits: {"smithy.api#enumValue" => "PAUSED"}))
    Status.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    Status.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TextParameters.add_member(:inline_template_body, ::Smithy::Schema::Shapes::MemberShape.new(target: InlineTemplateBody, name: "inlineTemplateBody"))
    TextParameters.add_member(:destination_country_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationCountryParameters, name: "destinationCountryParameters"))
    TextParameters.type = Types::TextParameters
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateBrandProfileAttributeInput.add_member(:brand_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileIdOrArn, name: "brandProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBrandProfileAttributeInput.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileAttributeName, name: "attributeName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBrandProfileAttributeInput.add_member(:attribute_value, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileAttributeValue, name: "attributeValue"))
    UpdateBrandProfileAttributeInput.add_member(:attachment_body, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Blob, name: "attachmentBody"))
    UpdateBrandProfileAttributeInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileAttributeDescription, name: "description"))
    UpdateBrandProfileAttributeInput.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileAttributeCategory, name: "category"))
    UpdateBrandProfileAttributeInput.type = Types::UpdateBrandProfileAttributeInput
    UpdateBrandProfileAttributeOutput.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileAttributeName, name: "attributeName", traits: {"smithy.api#required" => {}}))
    UpdateBrandProfileAttributeOutput.add_member(:attribute_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileAttributeType, name: "attributeType", traits: {"smithy.api#required" => {}}))
    UpdateBrandProfileAttributeOutput.add_member(:attribute_value, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileAttributeValue, name: "attributeValue"))
    UpdateBrandProfileAttributeOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileAttributeDescription, name: "description"))
    UpdateBrandProfileAttributeOutput.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileAttributeCategory, name: "category"))
    UpdateBrandProfileAttributeOutput.add_member(:media_content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "mediaContentType"))
    UpdateBrandProfileAttributeOutput.add_member(:media_size_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "mediaSizeBytes"))
    UpdateBrandProfileAttributeOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    UpdateBrandProfileAttributeOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    UpdateBrandProfileAttributeOutput.type = Types::UpdateBrandProfileAttributeOutput
    UpdateBrandProfileFromRegistrationInput.add_member(:brand_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileIdOrArn, name: "brandProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBrandProfileFromRegistrationInput.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationIdOrArn, name: "registrationId", traits: {"smithy.api#required" => {}}))
    UpdateBrandProfileFromRegistrationInput.add_member(:smart_match, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "smartMatch"))
    UpdateBrandProfileFromRegistrationInput.add_member(:on_attribute_conflict, ::Smithy::Schema::Shapes::MemberShape.new(target: OnAttributeConflict, name: "onAttributeConflict"))
    UpdateBrandProfileFromRegistrationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateBrandProfileFromRegistrationInput.type = Types::UpdateBrandProfileFromRegistrationInput
    UpdateBrandProfileFromRegistrationOutput.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: JobResults, name: "results", traits: {"smithy.api#required" => {}}))
    UpdateBrandProfileFromRegistrationOutput.type = Types::UpdateBrandProfileFromRegistrationOutput
    UpdateBrandProfileInput.add_member(:brand_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileIdOrArn, name: "brandProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBrandProfileInput.add_member(:brand_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileName, name: "brandProfileName"))
    UpdateBrandProfileInput.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "deletionProtectionEnabled"))
    UpdateBrandProfileInput.type = Types::UpdateBrandProfileInput
    UpdateBrandProfileOutput.add_member(:brand_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileIdOrArn, name: "brandProfileId", traits: {"smithy.api#required" => {}}))
    UpdateBrandProfileOutput.add_member(:brand_profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "brandProfileArn", traits: {"smithy.api#required" => {}}))
    UpdateBrandProfileOutput.add_member(:brand_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileName, name: "brandProfileName", traits: {"smithy.api#required" => {}}))
    UpdateBrandProfileOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateBrandProfileOutput.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "deletionProtectionEnabled", traits: {"smithy.api#required" => {}}))
    UpdateBrandProfileOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    UpdateBrandProfileOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    UpdateBrandProfileOutput.type = Types::UpdateBrandProfileOutput
    UpdateChannelParameters.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateTextParameters, name: "text"))
    UpdateChannelParameters.add_member(:voice, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateVoiceParameters, name: "voice"))
    UpdateChannelParameters.add_member(:notify, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateNotifyParameters, name: "notify"))
    UpdateChannelParameters.add_member(:whats_app, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateWhatsAppParameters, name: "whatsApp"))
    UpdateChannelParameters.type = Types::UpdateChannelParameters
    UpdateCodeConfigurationParameters.add_member(:code_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeType, name: "codeType"))
    UpdateCodeConfigurationParameters.add_member(:code_length, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeLength, name: "codeLength"))
    UpdateCodeConfigurationParameters.add_member(:validity_period_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidityPeriodMinutes, name: "validityPeriodMinutes"))
    UpdateCodeConfigurationParameters.add_member(:max_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxVerificationAttempts, name: "maxAttempts"))
    UpdateCodeConfigurationParameters.type = Types::UpdateCodeConfigurationParameters
    UpdateDestinationCountryParameters.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationCountryParameterKey, name: "key"))
    UpdateDestinationCountryParameters.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationCountryParameterValue, name: "value"))
    UpdateNotifyCodeConfigurationInput.add_member(:notify_code_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyCodeConfigurationIdOrArn, name: "notifyCodeConfigurationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateNotifyCodeConfigurationInput.add_member(:notify_code_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyCodeConfigurationName, name: "notifyCodeConfigurationName"))
    UpdateNotifyCodeConfigurationInput.add_member(:code_configuration_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateCodeConfigurationParameters, name: "codeConfigurationParameters"))
    UpdateNotifyCodeConfigurationInput.add_member(:channel_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateChannelParameters, name: "channelParameters"))
    UpdateNotifyCodeConfigurationInput.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "deletionProtectionEnabled"))
    UpdateNotifyCodeConfigurationInput.type = Types::UpdateNotifyCodeConfigurationInput
    UpdateNotifyCodeConfigurationOutput.add_member(:notify_code_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyCodeConfiguration, name: "notifyCodeConfiguration", traits: {"smithy.api#required" => {}}))
    UpdateNotifyCodeConfigurationOutput.type = Types::UpdateNotifyCodeConfigurationOutput
    UpdateNotifyParameters.add_member(:notify_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateNotifyTemplateId, name: "notifyTemplateId"))
    UpdateNotifyParameters.add_member(:voice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateVoiceId, name: "voiceId"))
    UpdateNotifyParameters.type = Types::UpdateNotifyParameters
    UpdateRegistrationsFromBrandProfileInput.add_member(:brand_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BrandProfileIdOrArn, name: "brandProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRegistrationsFromBrandProfileInput.add_member(:registration_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationIdList, name: "registrationIds", traits: {"smithy.api#required" => {}}))
    UpdateRegistrationsFromBrandProfileInput.add_member(:smart_match, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "smartMatch"))
    UpdateRegistrationsFromBrandProfileInput.add_member(:on_attribute_conflict, ::Smithy::Schema::Shapes::MemberShape.new(target: OnAttributeConflict, name: "onAttributeConflict"))
    UpdateRegistrationsFromBrandProfileInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateRegistrationsFromBrandProfileInput.type = Types::UpdateRegistrationsFromBrandProfileInput
    UpdateRegistrationsFromBrandProfileOutput.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: JobResults, name: "results", traits: {"smithy.api#required" => {}}))
    UpdateRegistrationsFromBrandProfileOutput.type = Types::UpdateRegistrationsFromBrandProfileOutput
    UpdateTextParameters.add_member(:inline_template_body, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateInlineTemplateBody, name: "inlineTemplateBody"))
    UpdateTextParameters.add_member(:destination_country_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateDestinationCountryParameters, name: "destinationCountryParameters"))
    UpdateTextParameters.type = Types::UpdateTextParameters
    UpdateVoiceParameters.add_member(:inline_template_body, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateInlineTemplateBody, name: "inlineTemplateBody"))
    UpdateVoiceParameters.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateLanguageCode, name: "languageCode"))
    UpdateVoiceParameters.add_member(:voice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateVoiceId, name: "voiceId"))
    UpdateVoiceParameters.add_member(:voice_message_body_text_type, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceMessageBodyTextType, name: "voiceMessageBodyTextType"))
    UpdateVoiceParameters.type = Types::UpdateVoiceParameters
    UpdateWhatsAppParameters.add_member(:whats_app_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateWhatsAppTemplateName, name: "whatsAppTemplateName"))
    UpdateWhatsAppParameters.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateLanguageCode, name: "languageCode"))
    UpdateWhatsAppParameters.type = Types::UpdateWhatsAppParameters
    ValidateNotifyCodeVerificationInput.add_member(:destination_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationIdentity, name: "destinationIdentity", traits: {"smithy.api#required" => {}}))
    ValidateNotifyCodeVerificationInput.add_member(:reference_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceId, name: "referenceId"))
    ValidateNotifyCodeVerificationInput.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationCode, name: "code", traits: {"smithy.api#required" => {}}))
    ValidateNotifyCodeVerificationInput.type = Types::ValidateNotifyCodeVerificationInput
    ValidateNotifyCodeVerificationOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ValidateNotifyCodeVerificationOutput.type = Types::ValidateNotifyCodeVerificationOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "path", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    VerificationStatus.add_member(:valid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALID", traits: {"smithy.api#enumValue" => "VALID"}))
    VerificationStatus.add_member(:invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID", traits: {"smithy.api#enumValue" => "INVALID"}))
    VoiceMessageBodyTextType.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEXT", traits: {"smithy.api#enumValue" => "TEXT"}))
    VoiceMessageBodyTextType.add_member(:ssml, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SSML", traits: {"smithy.api#enumValue" => "SSML"}))
    VoiceParameters.add_member(:inline_template_body, ::Smithy::Schema::Shapes::MemberShape.new(target: InlineTemplateBody, name: "inlineTemplateBody"))
    VoiceParameters.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "languageCode"))
    VoiceParameters.add_member(:voice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceId, name: "voiceId"))
    VoiceParameters.add_member(:voice_message_body_text_type, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceMessageBodyTextType, name: "voiceMessageBodyTextType"))
    VoiceParameters.type = Types::VoiceParameters
    WhatsAppParameters.add_member(:whats_app_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppTemplateName, name: "whatsAppTemplateName"))
    WhatsAppParameters.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "languageCode"))
    WhatsAppParameters.type = Types::WhatsAppParameters

    EndUserMessaging = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.endusermessaging#EndUserMessaging"
      service.name = "EndUserMessaging"
      service.version = "2026-09-21"
      service.traits = {"aws.api#service" => {"sdkId" => "EndUserMessaging", "arnNamespace" => "end-user-messaging", "cloudTrailEventSource" => "end-user-messaging.amazonaws.com", "endpointPrefix" => "end-user-messaging"}, "aws.auth#sigv4" => {"name" => "end-user-messaging"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS End User Messaging", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://end-user-messaging-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://end-user-messaging-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://end-user-messaging.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://end-user-messaging.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:create_brand_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.endusermessaging#CreateBrandProfile"
        operation.name = "CreateBrandProfile"
        operation.input = CreateBrandProfileInput
        operation.output = CreateBrandProfileOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create a brand profile", "requiredActions" => []}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/brand-profiles"}}
      end)
      service.add_operation(:create_brand_profile_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.endusermessaging#CreateBrandProfileAttributes"
        operation.name = "CreateBrandProfileAttributes"
        operation.input = CreateBrandProfileAttributesInput
        operation.output = CreateBrandProfileAttributesOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create attributes for a brand profile", "requiredActions" => []}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/brand-profiles/{brandProfileId}/attributes"}}
      end)
      service.add_operation(:create_brand_profile_from_registration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.endusermessaging#CreateBrandProfileFromRegistration"
        operation.name = "CreateBrandProfileFromRegistration"
        operation.input = CreateBrandProfileFromRegistrationInput
        operation.output = CreateBrandProfileFromRegistrationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create a new brand profile populated from an existing registration via Bedrock mapping", "requiredActions" => []}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/brand-profiles/create-from-registration"}}
      end)
      service.add_operation(:create_notify_code_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.endusermessaging#CreateNotifyCodeConfiguration"
        operation.name = "CreateNotifyCodeConfiguration"
        operation.input = CreateNotifyCodeConfigurationInput
        operation.output = CreateNotifyCodeConfigurationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create a notify code configuration", "requiredActions" => []}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/notify-code-configurations"}}
      end)
      service.add_operation(:create_registrations_from_brand_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.endusermessaging#CreateRegistrationsFromBrandProfile"
        operation.name = "CreateRegistrationsFromBrandProfile"
        operation.input = CreateRegistrationsFromBrandProfileInput
        operation.output = CreateRegistrationsFromBrandProfileOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create DRAFT registrations pre-filled from brand profile attributes via Bedrock mapping", "requiredActions" => []}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/brand-profiles/{brandProfileId}/create-registrations"}}
      end)
      service.add_operation(:delete_brand_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.endusermessaging#DeleteBrandProfile"
        operation.name = "DeleteBrandProfile"
        operation.input = DeleteBrandProfileInput
        operation.output = DeleteBrandProfileOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a brand profile", "requiredActions" => []}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/brand-profiles/{brandProfileId+}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_brand_profile_attribute, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.endusermessaging#DeleteBrandProfileAttribute"
        operation.name = "DeleteBrandProfileAttribute"
        operation.input = DeleteBrandProfileAttributeInput
        operation.output = DeleteBrandProfileAttributeOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a brand profile attribute", "requiredActions" => []}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/brand-profiles/{brandProfileId}/attributes/{attributeName}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_notify_code_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.endusermessaging#DeleteNotifyCodeConfiguration"
        operation.name = "DeleteNotifyCodeConfiguration"
        operation.input = DeleteNotifyCodeConfigurationInput
        operation.output = DeleteNotifyCodeConfigurationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a notify code configuration", "requiredActions" => []}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/notify-code-configurations/{notifyCodeConfigurationId+}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_brand_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.endusermessaging#GetBrandProfile"
        operation.name = "GetBrandProfile"
        operation.input = GetBrandProfileInput
        operation.output = GetBrandProfileOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get a brand profile", "requiredActions" => []}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/brand-profiles/{brandProfileId+}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_brand_profile_attribute, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.endusermessaging#GetBrandProfileAttribute"
        operation.name = "GetBrandProfileAttribute"
        operation.input = GetBrandProfileAttributeInput
        operation.output = GetBrandProfileAttributeOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get a brand profile attribute", "requiredActions" => []}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/brand-profiles/{brandProfileId}/attributes/{attributeName}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.endusermessaging#GetJob"
        operation.name = "GetJob"
        operation.input = GetJobInput
        operation.output = Job
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get the details of an asynchronous job", "requiredActions" => []}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/jobs/{jobId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_notify_code_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.endusermessaging#GetNotifyCodeConfiguration"
        operation.name = "GetNotifyCodeConfiguration"
        operation.input = GetNotifyCodeConfigurationInput
        operation.output = GetNotifyCodeConfigurationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get a notify code configuration", "requiredActions" => []}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/notify-code-configurations/{notifyCodeConfigurationId+}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_brand_profile_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.endusermessaging#ListBrandProfileAttributes"
        operation.name = "ListBrandProfileAttributes"
        operation.input = ListBrandProfileAttributesInput
        operation.output = ListBrandProfileAttributesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list the attributes for a brand profile", "requiredActions" => []}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/brand-profiles/{brandProfileId}/attributes"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListBrandProfileAttributes.new
      end)
      service.add_operation(:list_brand_profiles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.endusermessaging#ListBrandProfiles"
        operation.name = "ListBrandProfiles"
        operation.input = ListBrandProfilesInput
        operation.output = ListBrandProfilesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list brand profiles", "requiredActions" => []}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/brand-profiles"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListBrandProfilesSmokeTest", "params" => {}, "expect" => {"failure" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListBrandProfiles.new
      end)
      service.add_operation(:list_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.endusermessaging#ListJobs"
        operation.name = "ListJobs"
        operation.input = ListJobsInput
        operation.output = ListJobsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list asynchronous jobs in your account", "requiredActions" => []}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/jobs"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListJobs.new
      end)
      service.add_operation(:list_notify_code_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.endusermessaging#ListNotifyCodeConfigurations"
        operation.name = "ListNotifyCodeConfigurations"
        operation.input = ListNotifyCodeConfigurationsInput
        operation.output = ListNotifyCodeConfigurationsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list notify code configurations", "requiredActions" => []}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/notify-code-configurations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListNotifyCodeConfigurations.new
      end)
      service.add_operation(:list_registrations_from_brand_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.endusermessaging#ListRegistrationsFromBrandProfile"
        operation.name = "ListRegistrationsFromBrandProfile"
        operation.input = ListRegistrationsFromBrandProfileInput
        operation.output = ListRegistrationsFromBrandProfileOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list the registrations created from a brand profile", "requiredActions" => []}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/brand-profiles/{brandProfileId}/registrations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRegistrationsFromBrandProfile.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.endusermessaging#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list tags for a resource", "requiredActions" => []}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:send_notify_code_verification, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.endusermessaging#SendNotifyCodeVerification"
        operation.name = "SendNotifyCodeVerification"
        operation.input = SendNotifyCodeVerificationInput
        operation.output = SendNotifyCodeVerificationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to send a notify code verification", "requiredActions" => []}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/notify-code-verifications/send"}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.endusermessaging#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to tag a resource", "requiredActions" => []}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/tags/{resourceArn}"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.endusermessaging#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to untag a resource", "requiredActions" => []}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_brand_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.endusermessaging#UpdateBrandProfile"
        operation.name = "UpdateBrandProfile"
        operation.input = UpdateBrandProfileInput
        operation.output = UpdateBrandProfileOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update a brand profile", "requiredActions" => []}, "smithy.api#http" => {"method" => "PUT", "uri" => "/v1/brand-profiles/{brandProfileId+}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_brand_profile_attribute, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.endusermessaging#UpdateBrandProfileAttribute"
        operation.name = "UpdateBrandProfileAttribute"
        operation.input = UpdateBrandProfileAttributeInput
        operation.output = UpdateBrandProfileAttributeOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update a brand profile attribute", "requiredActions" => []}, "smithy.api#http" => {"method" => "PUT", "uri" => "/v1/brand-profiles/{brandProfileId}/attributes/{attributeName}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_brand_profile_from_registration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.endusermessaging#UpdateBrandProfileFromRegistration"
        operation.name = "UpdateBrandProfileFromRegistration"
        operation.input = UpdateBrandProfileFromRegistrationInput
        operation.output = UpdateBrandProfileFromRegistrationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update a brand profile from a registration", "requiredActions" => []}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/brand-profiles/{brandProfileId}/update-from-registration"}}
      end)
      service.add_operation(:update_notify_code_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.endusermessaging#UpdateNotifyCodeConfiguration"
        operation.name = "UpdateNotifyCodeConfiguration"
        operation.input = UpdateNotifyCodeConfigurationInput
        operation.output = UpdateNotifyCodeConfigurationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update a notify code configuration", "requiredActions" => []}, "smithy.api#http" => {"method" => "PUT", "uri" => "/v1/notify-code-configurations/{notifyCodeConfigurationId+}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_registrations_from_brand_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.endusermessaging#UpdateRegistrationsFromBrandProfile"
        operation.name = "UpdateRegistrationsFromBrandProfile"
        operation.input = UpdateRegistrationsFromBrandProfileInput
        operation.output = UpdateRegistrationsFromBrandProfileOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update registrations from a brand profile", "requiredActions" => []}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/brand-profiles/{brandProfileId}/update-registrations"}}
      end)
      service.add_operation(:validate_notify_code_verification, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.endusermessaging#ValidateNotifyCodeVerification"
        operation.name = "ValidateNotifyCodeVerification"
        operation.input = ValidateNotifyCodeVerificationInput
        operation.output = ValidateNotifyCodeVerificationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to validate a notify code verification", "requiredActions" => []}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/notify-code-verifications/validate"}}
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
