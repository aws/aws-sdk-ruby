# frozen_string_literal: true

# This is generated code!

module Aws::B2bi
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AdvancedOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#AdvancedOptions", name: "AdvancedOptions")
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#AmazonResourceName", name: "AmazonResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#BucketName", name: "BucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}})
    BusinessName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#BusinessName", name: "BusinessName", traits: {"smithy.api#length" => {"min" => 1, "max" => 254}})
    CapabilityConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.b2bi#CapabilityConfiguration", name: "CapabilityConfiguration")
    CapabilityDirection = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.b2bi#CapabilityDirection", name: "CapabilityDirection")
    CapabilityId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#CapabilityId", name: "CapabilityId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    CapabilityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.b2bi#CapabilityList", name: "CapabilityList")
    CapabilityName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#CapabilityName", name: "CapabilityName", traits: {"smithy.api#length" => {"min" => 1, "max" => 254}})
    CapabilityOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#CapabilityOptions", name: "CapabilityOptions")
    CapabilitySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#CapabilitySummary", name: "CapabilitySummary")
    CapabilityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.b2bi#CapabilityType", name: "CapabilityType")
    CodeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.b2bi#CodeList", name: "CodeList")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConversionSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#ConversionSource", name: "ConversionSource")
    ConversionSourceFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.b2bi#ConversionSourceFormat", name: "ConversionSourceFormat")
    ConversionTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#ConversionTarget", name: "ConversionTarget")
    ConversionTargetFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.b2bi#ConversionTargetFormat", name: "ConversionTargetFormat")
    ConversionTargetFormatDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.b2bi#ConversionTargetFormatDetails", name: "ConversionTargetFormatDetails")
    CreateCapabilityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#CreateCapabilityRequest", name: "CreateCapabilityRequest")
    CreateCapabilityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#CreateCapabilityResponse", name: "CreateCapabilityResponse")
    CreatePartnershipRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#CreatePartnershipRequest", name: "CreatePartnershipRequest")
    CreatePartnershipResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#CreatePartnershipResponse", name: "CreatePartnershipResponse")
    CreateProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#CreateProfileRequest", name: "CreateProfileRequest")
    CreateProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#CreateProfileResponse", name: "CreateProfileResponse")
    CreateStarterMappingTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#CreateStarterMappingTemplateRequest", name: "CreateStarterMappingTemplateRequest")
    CreateStarterMappingTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#CreateStarterMappingTemplateResponse", name: "CreateStarterMappingTemplateResponse")
    CreateTransformerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#CreateTransformerRequest", name: "CreateTransformerRequest")
    CreateTransformerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#CreateTransformerResponse", name: "CreateTransformerResponse")
    CreatedDate = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.b2bi#CreatedDate", name: "CreatedDate", traits: {"smithy.api#timestampFormat" => "date-time"})
    DeleteCapabilityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#DeleteCapabilityRequest", name: "DeleteCapabilityRequest")
    DeletePartnershipRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#DeletePartnershipRequest", name: "DeletePartnershipRequest")
    DeleteProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#DeleteProfileRequest", name: "DeleteProfileRequest")
    DeleteTransformerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#DeleteTransformerRequest", name: "DeleteTransformerRequest")
    EdiConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#EdiConfiguration", name: "EdiConfiguration")
    EdiType = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.b2bi#EdiType", name: "EdiType")
    ElementId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#ElementId", name: "ElementId")
    ElementPosition = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#ElementPosition", name: "ElementPosition")
    ElementRequirement = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.b2bi#ElementRequirement", name: "ElementRequirement")
    Email = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#Email", name: "Email", traits: {"smithy.api#length" => {"min" => 5, "max" => 254}, "smithy.api#pattern" => "^[\\w\\.\\-]+@[\\w\\.\\-]+$", "smithy.api#sensitive" => {}})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#ErrorMessage", name: "ErrorMessage", traits: {"smithy.api#length" => {"min" => 10, "max" => 1024}})
    FileFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.b2bi#FileFormat", name: "FileFormat")
    FileLocation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#FileLocation", name: "FileLocation", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    FormatOptions = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.b2bi#FormatOptions", name: "FormatOptions")
    FromFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.b2bi#FromFormat", name: "FromFormat")
    GenerateMappingInputFileContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#GenerateMappingInputFileContent", name: "GenerateMappingInputFileContent", traits: {"smithy.api#length" => {"min" => 0, "max" => 5000000}})
    GenerateMappingOutputFileContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#GenerateMappingOutputFileContent", name: "GenerateMappingOutputFileContent", traits: {"smithy.api#length" => {"min" => 0, "max" => 5000000}})
    GenerateMappingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#GenerateMappingRequest", name: "GenerateMappingRequest")
    GenerateMappingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#GenerateMappingResponse", name: "GenerateMappingResponse")
    GetCapabilityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#GetCapabilityRequest", name: "GetCapabilityRequest")
    GetCapabilityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#GetCapabilityResponse", name: "GetCapabilityResponse")
    GetPartnershipRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#GetPartnershipRequest", name: "GetPartnershipRequest")
    GetPartnershipResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#GetPartnershipResponse", name: "GetPartnershipResponse")
    GetProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#GetProfileRequest", name: "GetProfileRequest")
    GetProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#GetProfileResponse", name: "GetProfileResponse")
    GetTransformerJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#GetTransformerJobRequest", name: "GetTransformerJobRequest")
    GetTransformerJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#GetTransformerJobResponse", name: "GetTransformerJobResponse")
    GetTransformerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#GetTransformerRequest", name: "GetTransformerRequest")
    GetTransformerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#GetTransformerResponse", name: "GetTransformerResponse")
    InboundEdiOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#InboundEdiOptions", name: "InboundEdiOptions")
    InputConversion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#InputConversion", name: "InputConversion")
    InputFileSource = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.b2bi#InputFileSource", name: "InputFileSource")
    InstructionsDocuments = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.b2bi#InstructionsDocuments", name: "InstructionsDocuments", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    KeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.b2bi#KeyList", name: "KeyList")
    LineLength = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.b2bi#LineLength", name: "LineLength", traits: {"smithy.api#range" => {"min" => 1}})
    LineTerminator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.b2bi#LineTerminator", name: "LineTerminator")
    ListCapabilitiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#ListCapabilitiesRequest", name: "ListCapabilitiesRequest")
    ListCapabilitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#ListCapabilitiesResponse", name: "ListCapabilitiesResponse")
    ListPartnershipsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#ListPartnershipsRequest", name: "ListPartnershipsRequest")
    ListPartnershipsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#ListPartnershipsResponse", name: "ListPartnershipsResponse")
    ListProfilesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#ListProfilesRequest", name: "ListProfilesRequest")
    ListProfilesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#ListProfilesResponse", name: "ListProfilesResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListTransformersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#ListTransformersRequest", name: "ListTransformersRequest")
    ListTransformersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#ListTransformersResponse", name: "ListTransformersResponse")
    LogGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#LogGroupName", name: "LogGroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    Logging = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.b2bi#Logging", name: "Logging")
    Mapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#Mapping", name: "Mapping")
    MappingTemplate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#MappingTemplate", name: "MappingTemplate", traits: {"smithy.api#length" => {"min" => 0, "max" => 350000}})
    MappingTemplateLanguage = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.b2bi#MappingTemplateLanguage", name: "MappingTemplateLanguage")
    MappingType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.b2bi#MappingType", name: "MappingType")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.b2bi#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ModifiedDate = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.b2bi#ModifiedDate", name: "ModifiedDate", traits: {"smithy.api#timestampFormat" => "date-time"})
    OutboundEdiOptions = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.b2bi#OutboundEdiOptions", name: "OutboundEdiOptions")
    OutputConversion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#OutputConversion", name: "OutputConversion")
    OutputSampleFileSource = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.b2bi#OutputSampleFileSource", name: "OutputSampleFileSource")
    PageToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#PageToken", name: "PageToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ParsedSplitFileContentsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.b2bi#ParsedSplitFileContentsList", name: "ParsedSplitFileContentsList")
    PartnerName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#PartnerName", name: "PartnerName", traits: {"smithy.api#length" => {"min" => 1, "max" => 254}})
    PartnershipCapabilities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.b2bi#PartnershipCapabilities", name: "PartnershipCapabilities")
    PartnershipId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#PartnershipId", name: "PartnershipId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    PartnershipList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.b2bi#PartnershipList", name: "PartnershipList")
    PartnershipSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#PartnershipSummary", name: "PartnershipSummary", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.b2bi#Profile"}]})
    Phone = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#Phone", name: "Phone", traits: {"smithy.api#length" => {"min" => 7, "max" => 22}, "smithy.api#pattern" => "^\\+?([0-9 \\t\\-()\\/]{7,})(?:\\s*(?:#|x\\.?|ext\\.?|extension) \\t*(\\d+))?$", "smithy.api#sensitive" => {}})
    ProfileId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#ProfileId", name: "ProfileId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    ProfileList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.b2bi#ProfileList", name: "ProfileList")
    ProfileName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#ProfileName", name: "ProfileName", traits: {"smithy.api#length" => {"min" => 1, "max" => 254}})
    ProfileSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#ProfileSummary", name: "ProfileSummary", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.b2bi#Profile"}]})
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    S3Key = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#S3Key", name: "S3Key", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    S3Location = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#S3Location", name: "S3Location")
    S3LocationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.b2bi#S3LocationList", name: "S3LocationList")
    SampleDocumentKeys = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#SampleDocumentKeys", name: "SampleDocumentKeys")
    SampleDocuments = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#SampleDocuments", name: "SampleDocuments")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    StartTransformerJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#StartTransformerJobRequest", name: "StartTransformerJobRequest")
    StartTransformerJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#StartTransformerJobResponse", name: "StartTransformerJobResponse")
    StartingFunctionalGroupControlNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.b2bi#StartingFunctionalGroupControlNumber", name: "StartingFunctionalGroupControlNumber", traits: {"smithy.api#range" => {"min" => 1, "max" => 999999999}})
    StartingInterchangeControlNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.b2bi#StartingInterchangeControlNumber", name: "StartingInterchangeControlNumber", traits: {"smithy.api#range" => {"min" => 1, "max" => 999999999}})
    StartingTransactionSetControlNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.b2bi#StartingTransactionSetControlNumber", name: "StartingTransactionSetControlNumber", traits: {"smithy.api#range" => {"min" => 1, "max" => 999999999}})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.b2bi#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.b2bi#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#TagResourceRequest", name: "TagResourceRequest")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TemplateDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.b2bi#TemplateDetails", name: "TemplateDetails")
    TestConversionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#TestConversionRequest", name: "TestConversionRequest")
    TestConversionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#TestConversionResponse", name: "TestConversionResponse")
    TestMappingInputFileContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#TestMappingInputFileContent", name: "TestMappingInputFileContent", traits: {"smithy.api#length" => {"min" => 0, "max" => 5000000}})
    TestMappingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#TestMappingRequest", name: "TestMappingRequest")
    TestMappingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#TestMappingResponse", name: "TestMappingResponse")
    TestParsingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#TestParsingRequest", name: "TestParsingRequest")
    TestParsingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#TestParsingResponse", name: "TestParsingResponse")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    ToFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.b2bi#ToFormat", name: "ToFormat")
    TradingPartnerId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#TradingPartnerId", name: "TradingPartnerId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    TransformerId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#TransformerId", name: "TransformerId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    TransformerJobId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#TransformerJobId", name: "TransformerJobId", traits: {"smithy.api#length" => {"min" => 25, "max" => 25}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    TransformerJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.b2bi#TransformerJobStatus", name: "TransformerJobStatus")
    TransformerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.b2bi#TransformerList", name: "TransformerList")
    TransformerName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#TransformerName", name: "TransformerName", traits: {"smithy.api#length" => {"min" => 1, "max" => 254}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]{1,512}$"})
    TransformerStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.b2bi#TransformerStatus", name: "TransformerStatus")
    TransformerSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#TransformerSummary", name: "TransformerSummary", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.b2bi#Transformer"}]})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#UntagResourceRequest", name: "UntagResourceRequest")
    UpdateCapabilityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#UpdateCapabilityRequest", name: "UpdateCapabilityRequest")
    UpdateCapabilityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#UpdateCapabilityResponse", name: "UpdateCapabilityResponse")
    UpdatePartnershipRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#UpdatePartnershipRequest", name: "UpdatePartnershipRequest")
    UpdatePartnershipResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#UpdatePartnershipResponse", name: "UpdatePartnershipResponse")
    UpdateProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#UpdateProfileRequest", name: "UpdateProfileRequest")
    UpdateProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#UpdateProfileResponse", name: "UpdateProfileResponse")
    UpdateTransformerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#UpdateTransformerRequest", name: "UpdateTransformerRequest")
    UpdateTransformerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#UpdateTransformerResponse", name: "UpdateTransformerResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationMessages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.b2bi#ValidationMessages", name: "ValidationMessages")
    WrapFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.b2bi#WrapFormat", name: "WrapFormat")
    WrapOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#WrapOptions", name: "WrapOptions")
    X12AcknowledgmentOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#X12AcknowledgmentOptions", name: "X12AcknowledgmentOptions")
    X12AcknowledgmentRequestedCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#X12AcknowledgmentRequestedCode", name: "X12AcknowledgmentRequestedCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#pattern" => "^[a-zA-Z0-9]*$"})
    X12AdvancedOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#X12AdvancedOptions", name: "X12AdvancedOptions")
    X12ApplicationReceiverCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#X12ApplicationReceiverCode", name: "X12ApplicationReceiverCode", traits: {"smithy.api#length" => {"min" => 2, "max" => 15}, "smithy.api#pattern" => "^[a-zA-Z0-9 ]*$"})
    X12ApplicationSenderCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#X12ApplicationSenderCode", name: "X12ApplicationSenderCode", traits: {"smithy.api#length" => {"min" => 2, "max" => 15}, "smithy.api#pattern" => "^[a-zA-Z0-9 ]*$"})
    X12CodeListValidationRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#X12CodeListValidationRule", name: "X12CodeListValidationRule")
    X12ComponentSeparator = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#X12ComponentSeparator", name: "X12ComponentSeparator", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#pattern" => "^[!&'()*+,\\-./:;?=%@\\[\\]_{}|<>~^`\"]$"})
    X12ControlNumbers = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#X12ControlNumbers", name: "X12ControlNumbers")
    X12DataElementSeparator = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#X12DataElementSeparator", name: "X12DataElementSeparator", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#pattern" => "^[!&'()*+,\\-./:;?=%@\\[\\]_{}|<>~^`\"]$"})
    X12Delimiters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#X12Delimiters", name: "X12Delimiters")
    X12Details = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#X12Details", name: "X12Details")
    X12ElementLengthValidationRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#X12ElementLengthValidationRule", name: "X12ElementLengthValidationRule")
    X12ElementRequirementValidationRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#X12ElementRequirementValidationRule", name: "X12ElementRequirementValidationRule")
    X12Envelope = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#X12Envelope", name: "X12Envelope")
    X12FunctionalAcknowledgment = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.b2bi#X12FunctionalAcknowledgment", name: "X12FunctionalAcknowledgment")
    X12FunctionalGroupHeaders = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#X12FunctionalGroupHeaders", name: "X12FunctionalGroupHeaders")
    X12GS05TimeFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.b2bi#X12GS05TimeFormat", name: "X12GS05TimeFormat")
    X12IdQualifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#X12IdQualifier", name: "X12IdQualifier", traits: {"smithy.api#length" => {"min" => 2, "max" => 2}, "smithy.api#pattern" => "^[a-zA-Z0-9]*$"})
    X12InboundEdiOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#X12InboundEdiOptions", name: "X12InboundEdiOptions")
    X12InterchangeControlHeaders = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#X12InterchangeControlHeaders", name: "X12InterchangeControlHeaders")
    X12OutboundEdiHeaders = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#X12OutboundEdiHeaders", name: "X12OutboundEdiHeaders")
    X12ReceiverId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#X12ReceiverId", name: "X12ReceiverId", traits: {"smithy.api#length" => {"min" => 15, "max" => 15}, "smithy.api#pattern" => "^[a-zA-Z0-9 ]*$"})
    X12RepetitionSeparator = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#X12RepetitionSeparator", name: "X12RepetitionSeparator", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    X12ResponsibleAgencyCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#X12ResponsibleAgencyCode", name: "X12ResponsibleAgencyCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}, "smithy.api#pattern" => "^[a-zA-Z0-9]*$"})
    X12SegmentTerminator = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#X12SegmentTerminator", name: "X12SegmentTerminator", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#pattern" => "^[!&'()*+,\\-./:;?=%@\\[\\]_{}|<>~^`\"]$"})
    X12SenderId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#X12SenderId", name: "X12SenderId", traits: {"smithy.api#length" => {"min" => 15, "max" => 15}, "smithy.api#pattern" => "^[a-zA-Z0-9 ]*$"})
    X12SplitBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.b2bi#X12SplitBy", name: "X12SplitBy")
    X12SplitOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#X12SplitOptions", name: "X12SplitOptions")
    X12TechnicalAcknowledgment = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.b2bi#X12TechnicalAcknowledgment", name: "X12TechnicalAcknowledgment")
    X12TransactionSet = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.b2bi#X12TransactionSet", name: "X12TransactionSet")
    X12UsageIndicatorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.b2bi#X12UsageIndicatorCode", name: "X12UsageIndicatorCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#pattern" => "^[a-zA-Z0-9]*$"})
    X12ValidateEdi = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.b2bi#X12ValidateEdi", name: "X12ValidateEdi")
    X12ValidationOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.b2bi#X12ValidationOptions", name: "X12ValidationOptions")
    X12ValidationRule = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.b2bi#X12ValidationRule", name: "X12ValidationRule")
    X12ValidationRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.b2bi#X12ValidationRules", name: "X12ValidationRules")
    X12Version = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.b2bi#X12Version", name: "X12Version")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AdvancedOptions.add_member(:x12, ::Smithy::Schema::Shapes::MemberShape.new(target: X12AdvancedOptions, location_name: "x12"))
    AdvancedOptions.type = Types::AdvancedOptions
    CapabilityConfiguration.add_member(:edi, Types::CapabilityConfiguration::Edi, ::Smithy::Schema::Shapes::MemberShape.new(target: EdiConfiguration, location_name: "edi"))
    CapabilityConfiguration.add_member(:unknown, Types::CapabilityConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    CapabilityConfiguration.type = Types::CapabilityConfiguration
    CapabilityDirection.add_member(:inbound, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INBOUND", traits: {"smithy.api#enumValue" => "INBOUND"}))
    CapabilityDirection.add_member(:outbound, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OUTBOUND", traits: {"smithy.api#enumValue" => "OUTBOUND"}))
    CapabilityList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilitySummary)
    CapabilityOptions.add_member(:outbound_edi, ::Smithy::Schema::Shapes::MemberShape.new(target: OutboundEdiOptions, location_name: "outboundEdi"))
    CapabilityOptions.add_member(:inbound_edi, ::Smithy::Schema::Shapes::MemberShape.new(target: InboundEdiOptions, location_name: "inboundEdi"))
    CapabilityOptions.type = Types::CapabilityOptions
    CapabilitySummary.add_member(:capability_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityId, location_name: "capabilityId", traits: {"smithy.api#required" => {}}))
    CapabilitySummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CapabilitySummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityType, location_name: "type", traits: {"smithy.api#required" => {}}))
    CapabilitySummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedDate, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    CapabilitySummary.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ModifiedDate, location_name: "modifiedAt"))
    CapabilitySummary.type = Types::CapabilitySummary
    CapabilityType.add_member(:edi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EDI", traits: {"smithy.api#enumValue" => "edi"}))
    CodeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String)
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ConversionSource.add_member(:file_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversionSourceFormat, location_name: "fileFormat", traits: {"smithy.api#required" => {}}))
    ConversionSource.add_member(:input_file, ::Smithy::Schema::Shapes::MemberShape.new(target: InputFileSource, location_name: "inputFile", traits: {"smithy.api#required" => {}}))
    ConversionSource.type = Types::ConversionSource
    ConversionSourceFormat.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JSON", traits: {"smithy.api#enumValue" => "JSON"}))
    ConversionSourceFormat.add_member(:xml, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "XML", traits: {"smithy.api#enumValue" => "XML"}))
    ConversionTarget.add_member(:file_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversionTargetFormat, location_name: "fileFormat", traits: {"smithy.api#required" => {}}))
    ConversionTarget.add_member(:format_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversionTargetFormatDetails, location_name: "formatDetails"))
    ConversionTarget.add_member(:output_sample_file, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputSampleFileSource, location_name: "outputSampleFile"))
    ConversionTarget.add_member(:advanced_options, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvancedOptions, location_name: "advancedOptions"))
    ConversionTarget.type = Types::ConversionTarget
    ConversionTargetFormat.add_member(:x12, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12", traits: {"smithy.api#enumValue" => "X12"}))
    ConversionTargetFormatDetails.add_member(:x12, Types::ConversionTargetFormatDetails::X12, ::Smithy::Schema::Shapes::MemberShape.new(target: X12Details, location_name: "x12"))
    ConversionTargetFormatDetails.add_member(:unknown, Types::ConversionTargetFormatDetails::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ConversionTargetFormatDetails.type = Types::ConversionTargetFormatDetails
    CreateCapabilityRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateCapabilityRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityType, location_name: "type", traits: {"smithy.api#required" => {}}))
    CreateCapabilityRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityConfiguration, location_name: "configuration", traits: {"smithy.api#required" => {}}))
    CreateCapabilityRequest.add_member(:instructions_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: InstructionsDocuments, location_name: "instructionsDocuments"))
    CreateCapabilityRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateCapabilityRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "tags", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreateCapabilityRequest.type = Types::CreateCapabilityRequest
    CreateCapabilityResponse.add_member(:capability_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityId, location_name: "capabilityId", traits: {"smithy.api#required" => {}}))
    CreateCapabilityResponse.add_member(:capability_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "capabilityArn", traits: {"smithy.api#required" => {}}))
    CreateCapabilityResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateCapabilityResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityType, location_name: "type", traits: {"smithy.api#required" => {}}))
    CreateCapabilityResponse.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityConfiguration, location_name: "configuration", traits: {"smithy.api#required" => {}}))
    CreateCapabilityResponse.add_member(:instructions_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: InstructionsDocuments, location_name: "instructionsDocuments"))
    CreateCapabilityResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedDate, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    CreateCapabilityResponse.type = Types::CreateCapabilityResponse
    CreatePartnershipRequest.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileId, location_name: "profileId", traits: {"smithy.api#required" => {}}))
    CreatePartnershipRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreatePartnershipRequest.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, location_name: "email", traits: {"smithy.api#required" => {}}))
    CreatePartnershipRequest.add_member(:phone, ::Smithy::Schema::Shapes::MemberShape.new(target: Phone, location_name: "phone"))
    CreatePartnershipRequest.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnershipCapabilities, location_name: "capabilities", traits: {"smithy.api#required" => {}}))
    CreatePartnershipRequest.add_member(:capability_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityOptions, location_name: "capabilityOptions"))
    CreatePartnershipRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreatePartnershipRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "tags", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreatePartnershipRequest.type = Types::CreatePartnershipRequest
    CreatePartnershipResponse.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileId, location_name: "profileId", traits: {"smithy.api#required" => {}}))
    CreatePartnershipResponse.add_member(:partnership_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnershipId, location_name: "partnershipId", traits: {"smithy.api#required" => {}}))
    CreatePartnershipResponse.add_member(:partnership_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "partnershipArn", traits: {"smithy.api#required" => {}}))
    CreatePartnershipResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerName, location_name: "name"))
    CreatePartnershipResponse.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, location_name: "email"))
    CreatePartnershipResponse.add_member(:phone, ::Smithy::Schema::Shapes::MemberShape.new(target: Phone, location_name: "phone"))
    CreatePartnershipResponse.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnershipCapabilities, location_name: "capabilities"))
    CreatePartnershipResponse.add_member(:capability_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityOptions, location_name: "capabilityOptions"))
    CreatePartnershipResponse.add_member(:trading_partner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TradingPartnerId, location_name: "tradingPartnerId"))
    CreatePartnershipResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedDate, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    CreatePartnershipResponse.type = Types::CreatePartnershipResponse
    CreateProfileRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateProfileRequest.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, location_name: "email"))
    CreateProfileRequest.add_member(:phone, ::Smithy::Schema::Shapes::MemberShape.new(target: Phone, location_name: "phone", traits: {"smithy.api#required" => {}}))
    CreateProfileRequest.add_member(:business_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessName, location_name: "businessName", traits: {"smithy.api#required" => {}}))
    CreateProfileRequest.add_member(:logging, ::Smithy::Schema::Shapes::MemberShape.new(target: Logging, location_name: "logging", traits: {"smithy.api#required" => {}}))
    CreateProfileRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateProfileRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "tags", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreateProfileRequest.type = Types::CreateProfileRequest
    CreateProfileResponse.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileId, location_name: "profileId", traits: {"smithy.api#required" => {}}))
    CreateProfileResponse.add_member(:profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "profileArn", traits: {"smithy.api#required" => {}}))
    CreateProfileResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateProfileResponse.add_member(:business_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessName, location_name: "businessName", traits: {"smithy.api#required" => {}}))
    CreateProfileResponse.add_member(:phone, ::Smithy::Schema::Shapes::MemberShape.new(target: Phone, location_name: "phone", traits: {"smithy.api#required" => {}}))
    CreateProfileResponse.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, location_name: "email"))
    CreateProfileResponse.add_member(:logging, ::Smithy::Schema::Shapes::MemberShape.new(target: Logging, location_name: "logging"))
    CreateProfileResponse.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "logGroupName"))
    CreateProfileResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedDate, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    CreateProfileResponse.type = Types::CreateProfileResponse
    CreateStarterMappingTemplateRequest.add_member(:output_sample_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, location_name: "outputSampleLocation"))
    CreateStarterMappingTemplateRequest.add_member(:mapping_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MappingType, location_name: "mappingType", traits: {"smithy.api#required" => {}}))
    CreateStarterMappingTemplateRequest.add_member(:template_details, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateDetails, location_name: "templateDetails", traits: {"smithy.api#required" => {}}))
    CreateStarterMappingTemplateRequest.type = Types::CreateStarterMappingTemplateRequest
    CreateStarterMappingTemplateResponse.add_member(:mapping_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "mappingTemplate", traits: {"smithy.api#required" => {}}))
    CreateStarterMappingTemplateResponse.type = Types::CreateStarterMappingTemplateResponse
    CreateTransformerRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformerName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateTransformerRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateTransformerRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "tags", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreateTransformerRequest.add_member(:file_format, ::Smithy::Schema::Shapes::MemberShape.new(target: FileFormat, location_name: "fileFormat", traits: {"smithy.api#deprecated" => {"message" => "This is a legacy trait. Please use input-conversion or output-conversion."}}))
    CreateTransformerRequest.add_member(:mapping_template, ::Smithy::Schema::Shapes::MemberShape.new(target: MappingTemplate, location_name: "mappingTemplate", traits: {"smithy.api#deprecated" => {"message" => "This is a legacy trait. Please use input-conversion or output-conversion."}}))
    CreateTransformerRequest.add_member(:edi_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EdiType, location_name: "ediType", traits: {"smithy.api#deprecated" => {"message" => "This is a legacy trait. Please use input-conversion or output-conversion."}}))
    CreateTransformerRequest.add_member(:sample_document, ::Smithy::Schema::Shapes::MemberShape.new(target: FileLocation, location_name: "sampleDocument", traits: {"smithy.api#deprecated" => {"message" => "This is a legacy trait. Please use input-conversion or output-conversion."}}))
    CreateTransformerRequest.add_member(:input_conversion, ::Smithy::Schema::Shapes::MemberShape.new(target: InputConversion, location_name: "inputConversion"))
    CreateTransformerRequest.add_member(:mapping, ::Smithy::Schema::Shapes::MemberShape.new(target: Mapping, location_name: "mapping"))
    CreateTransformerRequest.add_member(:output_conversion, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputConversion, location_name: "outputConversion"))
    CreateTransformerRequest.add_member(:sample_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleDocuments, location_name: "sampleDocuments"))
    CreateTransformerRequest.type = Types::CreateTransformerRequest
    CreateTransformerResponse.add_member(:transformer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformerId, location_name: "transformerId", traits: {"smithy.api#required" => {}}))
    CreateTransformerResponse.add_member(:transformer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "transformerArn", traits: {"smithy.api#required" => {}}))
    CreateTransformerResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformerName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateTransformerResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformerStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    CreateTransformerResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedDate, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    CreateTransformerResponse.add_member(:file_format, ::Smithy::Schema::Shapes::MemberShape.new(target: FileFormat, location_name: "fileFormat", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => "NOT_USED", "smithy.api#deprecated" => {"message" => "This is a legacy trait. Please use input-conversion or output-conversion."}}))
    CreateTransformerResponse.add_member(:mapping_template, ::Smithy::Schema::Shapes::MemberShape.new(target: MappingTemplate, location_name: "mappingTemplate", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => "NOT_USED", "smithy.api#deprecated" => {"message" => "This is a legacy trait. Please use input-conversion or output-conversion."}}))
    CreateTransformerResponse.add_member(:edi_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EdiType, location_name: "ediType", traits: {"smithy.api#deprecated" => {"message" => "This is a legacy trait. Please use input-conversion or output-conversion."}}))
    CreateTransformerResponse.add_member(:sample_document, ::Smithy::Schema::Shapes::MemberShape.new(target: FileLocation, location_name: "sampleDocument", traits: {"smithy.api#deprecated" => {"message" => "This is a legacy trait. Please use input-conversion or output-conversion."}}))
    CreateTransformerResponse.add_member(:input_conversion, ::Smithy::Schema::Shapes::MemberShape.new(target: InputConversion, location_name: "inputConversion"))
    CreateTransformerResponse.add_member(:mapping, ::Smithy::Schema::Shapes::MemberShape.new(target: Mapping, location_name: "mapping"))
    CreateTransformerResponse.add_member(:output_conversion, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputConversion, location_name: "outputConversion"))
    CreateTransformerResponse.add_member(:sample_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleDocuments, location_name: "sampleDocuments"))
    CreateTransformerResponse.type = Types::CreateTransformerResponse
    DeleteCapabilityRequest.add_member(:capability_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityId, location_name: "capabilityId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCapabilityRequest.type = Types::DeleteCapabilityRequest
    DeletePartnershipRequest.add_member(:partnership_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnershipId, location_name: "partnershipId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePartnershipRequest.type = Types::DeletePartnershipRequest
    DeleteProfileRequest.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileId, location_name: "profileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteProfileRequest.type = Types::DeleteProfileRequest
    DeleteTransformerRequest.add_member(:transformer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformerId, location_name: "transformerId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTransformerRequest.type = Types::DeleteTransformerRequest
    EdiConfiguration.add_member(:capability_direction, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityDirection, location_name: "capabilityDirection"))
    EdiConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EdiType, location_name: "type", traits: {"smithy.api#required" => {}}))
    EdiConfiguration.add_member(:input_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, location_name: "inputLocation", traits: {"smithy.api#required" => {}}))
    EdiConfiguration.add_member(:output_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, location_name: "outputLocation", traits: {"smithy.api#required" => {}}))
    EdiConfiguration.add_member(:transformer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformerId, location_name: "transformerId", traits: {"smithy.api#required" => {}}))
    EdiConfiguration.type = Types::EdiConfiguration
    EdiType.add_member(:x12_details, Types::EdiType::X12Details, ::Smithy::Schema::Shapes::MemberShape.new(target: X12Details, location_name: "x12Details"))
    EdiType.add_member(:unknown, Types::EdiType::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    EdiType.type = Types::EdiType
    ElementRequirement.add_member(:optional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OPTIONAL", traits: {"smithy.api#enumValue" => "OPTIONAL"}))
    ElementRequirement.add_member(:mandatory, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MANDATORY", traits: {"smithy.api#enumValue" => "MANDATORY"}))
    FileFormat.add_member(:xml, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "XML", traits: {"smithy.api#enumValue" => "XML"}))
    FileFormat.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JSON", traits: {"smithy.api#enumValue" => "JSON"}))
    FileFormat.add_member(:not_used, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_USED", traits: {"smithy.api#enumValue" => "NOT_USED"}))
    FormatOptions.add_member(:x12, Types::FormatOptions::X12, ::Smithy::Schema::Shapes::MemberShape.new(target: X12Details, location_name: "x12"))
    FormatOptions.add_member(:unknown, Types::FormatOptions::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    FormatOptions.type = Types::FormatOptions
    FromFormat.add_member(:x12, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12", traits: {"smithy.api#enumValue" => "X12"}))
    GenerateMappingRequest.add_member(:input_file_content, ::Smithy::Schema::Shapes::MemberShape.new(target: GenerateMappingInputFileContent, location_name: "inputFileContent", traits: {"smithy.api#required" => {}}))
    GenerateMappingRequest.add_member(:output_file_content, ::Smithy::Schema::Shapes::MemberShape.new(target: GenerateMappingOutputFileContent, location_name: "outputFileContent", traits: {"smithy.api#required" => {}}))
    GenerateMappingRequest.add_member(:mapping_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MappingType, location_name: "mappingType", traits: {"smithy.api#required" => {}}))
    GenerateMappingRequest.type = Types::GenerateMappingRequest
    GenerateMappingResponse.add_member(:mapping_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "mappingTemplate", traits: {"smithy.api#required" => {}}))
    GenerateMappingResponse.add_member(:mapping_accuracy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, location_name: "mappingAccuracy", traits: {"smithy.api#range" => {"min" => 0.0, "max" => 1.0}}))
    GenerateMappingResponse.type = Types::GenerateMappingResponse
    GetCapabilityRequest.add_member(:capability_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityId, location_name: "capabilityId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCapabilityRequest.type = Types::GetCapabilityRequest
    GetCapabilityResponse.add_member(:capability_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityId, location_name: "capabilityId", traits: {"smithy.api#required" => {}}))
    GetCapabilityResponse.add_member(:capability_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "capabilityArn", traits: {"smithy.api#required" => {}}))
    GetCapabilityResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityName, location_name: "name", traits: {"smithy.api#required" => {}}))
    GetCapabilityResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityType, location_name: "type", traits: {"smithy.api#required" => {}}))
    GetCapabilityResponse.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityConfiguration, location_name: "configuration", traits: {"smithy.api#required" => {}}))
    GetCapabilityResponse.add_member(:instructions_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: InstructionsDocuments, location_name: "instructionsDocuments"))
    GetCapabilityResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedDate, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetCapabilityResponse.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ModifiedDate, location_name: "modifiedAt"))
    GetCapabilityResponse.type = Types::GetCapabilityResponse
    GetPartnershipRequest.add_member(:partnership_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnershipId, location_name: "partnershipId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPartnershipRequest.type = Types::GetPartnershipRequest
    GetPartnershipResponse.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileId, location_name: "profileId", traits: {"smithy.api#required" => {}}))
    GetPartnershipResponse.add_member(:partnership_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnershipId, location_name: "partnershipId", traits: {"smithy.api#required" => {}}))
    GetPartnershipResponse.add_member(:partnership_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "partnershipArn", traits: {"smithy.api#required" => {}}))
    GetPartnershipResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerName, location_name: "name"))
    GetPartnershipResponse.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, location_name: "email"))
    GetPartnershipResponse.add_member(:phone, ::Smithy::Schema::Shapes::MemberShape.new(target: Phone, location_name: "phone"))
    GetPartnershipResponse.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnershipCapabilities, location_name: "capabilities"))
    GetPartnershipResponse.add_member(:capability_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityOptions, location_name: "capabilityOptions"))
    GetPartnershipResponse.add_member(:trading_partner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TradingPartnerId, location_name: "tradingPartnerId"))
    GetPartnershipResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedDate, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetPartnershipResponse.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ModifiedDate, location_name: "modifiedAt"))
    GetPartnershipResponse.type = Types::GetPartnershipResponse
    GetProfileRequest.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileId, location_name: "profileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetProfileRequest.type = Types::GetProfileRequest
    GetProfileResponse.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileId, location_name: "profileId", traits: {"smithy.api#required" => {}}))
    GetProfileResponse.add_member(:profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "profileArn", traits: {"smithy.api#required" => {}}))
    GetProfileResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileName, location_name: "name", traits: {"smithy.api#required" => {}}))
    GetProfileResponse.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, location_name: "email"))
    GetProfileResponse.add_member(:phone, ::Smithy::Schema::Shapes::MemberShape.new(target: Phone, location_name: "phone", traits: {"smithy.api#required" => {}}))
    GetProfileResponse.add_member(:business_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessName, location_name: "businessName", traits: {"smithy.api#required" => {}}))
    GetProfileResponse.add_member(:logging, ::Smithy::Schema::Shapes::MemberShape.new(target: Logging, location_name: "logging"))
    GetProfileResponse.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "logGroupName"))
    GetProfileResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedDate, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetProfileResponse.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ModifiedDate, location_name: "modifiedAt"))
    GetProfileResponse.type = Types::GetProfileResponse
    GetTransformerJobRequest.add_member(:transformer_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformerJobId, location_name: "transformerJobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTransformerJobRequest.add_member(:transformer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformerId, location_name: "transformerId", traits: {"smithy.api#httpQuery" => "transformerId", "smithy.api#required" => {}}))
    GetTransformerJobRequest.type = Types::GetTransformerJobRequest
    GetTransformerJobResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformerJobStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    GetTransformerJobResponse.add_member(:output_files, ::Smithy::Schema::Shapes::MemberShape.new(target: S3LocationList, location_name: "outputFiles"))
    GetTransformerJobResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    GetTransformerJobResponse.type = Types::GetTransformerJobResponse
    GetTransformerRequest.add_member(:transformer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformerId, location_name: "transformerId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTransformerRequest.type = Types::GetTransformerRequest
    GetTransformerResponse.add_member(:transformer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformerId, location_name: "transformerId", traits: {"smithy.api#required" => {}}))
    GetTransformerResponse.add_member(:transformer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "transformerArn", traits: {"smithy.api#required" => {}}))
    GetTransformerResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformerName, location_name: "name", traits: {"smithy.api#required" => {}}))
    GetTransformerResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformerStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    GetTransformerResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedDate, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetTransformerResponse.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ModifiedDate, location_name: "modifiedAt"))
    GetTransformerResponse.add_member(:file_format, ::Smithy::Schema::Shapes::MemberShape.new(target: FileFormat, location_name: "fileFormat", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => "NOT_USED", "smithy.api#deprecated" => {"message" => "This is a legacy trait. Please use input-conversion or output-conversion."}}))
    GetTransformerResponse.add_member(:mapping_template, ::Smithy::Schema::Shapes::MemberShape.new(target: MappingTemplate, location_name: "mappingTemplate", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => "NOT_USED", "smithy.api#deprecated" => {"message" => "This is a legacy trait. Please use input-conversion or output-conversion."}}))
    GetTransformerResponse.add_member(:edi_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EdiType, location_name: "ediType", traits: {"smithy.api#deprecated" => {"message" => "This is a legacy trait. Please use input-conversion or output-conversion."}}))
    GetTransformerResponse.add_member(:sample_document, ::Smithy::Schema::Shapes::MemberShape.new(target: FileLocation, location_name: "sampleDocument", traits: {"smithy.api#deprecated" => {"message" => "This is a legacy trait. Please use input-conversion or output-conversion."}}))
    GetTransformerResponse.add_member(:input_conversion, ::Smithy::Schema::Shapes::MemberShape.new(target: InputConversion, location_name: "inputConversion"))
    GetTransformerResponse.add_member(:mapping, ::Smithy::Schema::Shapes::MemberShape.new(target: Mapping, location_name: "mapping"))
    GetTransformerResponse.add_member(:output_conversion, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputConversion, location_name: "outputConversion"))
    GetTransformerResponse.add_member(:sample_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleDocuments, location_name: "sampleDocuments"))
    GetTransformerResponse.type = Types::GetTransformerResponse
    InboundEdiOptions.add_member(:x12, ::Smithy::Schema::Shapes::MemberShape.new(target: X12InboundEdiOptions, location_name: "x12"))
    InboundEdiOptions.type = Types::InboundEdiOptions
    InputConversion.add_member(:from_format, ::Smithy::Schema::Shapes::MemberShape.new(target: FromFormat, location_name: "fromFormat", traits: {"smithy.api#required" => {}}))
    InputConversion.add_member(:format_options, ::Smithy::Schema::Shapes::MemberShape.new(target: FormatOptions, location_name: "formatOptions"))
    InputConversion.add_member(:advanced_options, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvancedOptions, location_name: "advancedOptions"))
    InputConversion.type = Types::InputConversion
    InputFileSource.add_member(:file_content, Types::InputFileSource::FileContent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "fileContent", traits: {"smithy.api#length" => {"min" => 1, "max" => 5000000}}))
    InputFileSource.add_member(:unknown, Types::InputFileSource::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    InputFileSource.type = Types::InputFileSource
    InstructionsDocuments.member = ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location)
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    KeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SampleDocumentKeys)
    LineTerminator.add_member(:crlf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CRLF", traits: {"smithy.api#enumValue" => "CRLF"}))
    LineTerminator.add_member(:lf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LF", traits: {"smithy.api#enumValue" => "LF"}))
    LineTerminator.add_member(:cr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CR", traits: {"smithy.api#enumValue" => "CR"}))
    ListCapabilitiesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCapabilitiesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListCapabilitiesRequest.type = Types::ListCapabilitiesRequest
    ListCapabilitiesResponse.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityList, location_name: "capabilities", traits: {"smithy.api#required" => {}}))
    ListCapabilitiesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, location_name: "nextToken"))
    ListCapabilitiesResponse.type = Types::ListCapabilitiesResponse
    ListPartnershipsRequest.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileId, location_name: "profileId", traits: {"smithy.api#httpQuery" => "profileId"}))
    ListPartnershipsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListPartnershipsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListPartnershipsRequest.type = Types::ListPartnershipsRequest
    ListPartnershipsResponse.add_member(:partnerships, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnershipList, location_name: "partnerships", traits: {"smithy.api#required" => {}}))
    ListPartnershipsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, location_name: "nextToken"))
    ListPartnershipsResponse.type = Types::ListPartnershipsResponse
    ListProfilesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListProfilesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListProfilesRequest.type = Types::ListProfilesRequest
    ListProfilesResponse.add_member(:profiles, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileList, location_name: "profiles", traits: {"smithy.api#required" => {}}))
    ListProfilesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, location_name: "nextToken"))
    ListProfilesResponse.type = Types::ListProfilesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "ResourceARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTransformersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTransformersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListTransformersRequest.type = Types::ListTransformersRequest
    ListTransformersResponse.add_member(:transformers, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformerList, location_name: "transformers", traits: {"smithy.api#required" => {}}))
    ListTransformersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, location_name: "nextToken"))
    ListTransformersResponse.type = Types::ListTransformersResponse
    Logging.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    Logging.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    Mapping.add_member(:template_language, ::Smithy::Schema::Shapes::MemberShape.new(target: MappingTemplateLanguage, location_name: "templateLanguage", traits: {"smithy.api#required" => {}}))
    Mapping.add_member(:template, ::Smithy::Schema::Shapes::MemberShape.new(target: MappingTemplate, location_name: "template"))
    Mapping.type = Types::Mapping
    MappingTemplateLanguage.add_member(:xslt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "XSLT", traits: {"smithy.api#enumValue" => "XSLT"}))
    MappingTemplateLanguage.add_member(:jsonata, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JSONATA", traits: {"smithy.api#enumValue" => "JSONATA"}))
    MappingType.add_member(:jsonata, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JSONATA", traits: {"smithy.api#enumValue" => "JSONATA"}))
    MappingType.add_member(:xslt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "XSLT", traits: {"smithy.api#enumValue" => "XSLT"}))
    OutboundEdiOptions.add_member(:x12, Types::OutboundEdiOptions::X12, ::Smithy::Schema::Shapes::MemberShape.new(target: X12Envelope, location_name: "x12"))
    OutboundEdiOptions.add_member(:unknown, Types::OutboundEdiOptions::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    OutboundEdiOptions.type = Types::OutboundEdiOptions
    OutputConversion.add_member(:to_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ToFormat, location_name: "toFormat", traits: {"smithy.api#required" => {}}))
    OutputConversion.add_member(:format_options, ::Smithy::Schema::Shapes::MemberShape.new(target: FormatOptions, location_name: "formatOptions"))
    OutputConversion.add_member(:advanced_options, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvancedOptions, location_name: "advancedOptions"))
    OutputConversion.type = Types::OutputConversion
    OutputSampleFileSource.add_member(:file_location, Types::OutputSampleFileSource::FileLocation, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, location_name: "fileLocation"))
    OutputSampleFileSource.add_member(:unknown, Types::OutputSampleFileSource::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    OutputSampleFileSource.type = Types::OutputSampleFileSource
    ParsedSplitFileContentsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String)
    PartnershipCapabilities.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityId)
    PartnershipList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PartnershipSummary)
    PartnershipSummary.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileId, location_name: "profileId", traits: {"smithy.api#required" => {}}))
    PartnershipSummary.add_member(:partnership_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnershipId, location_name: "partnershipId", traits: {"smithy.api#required" => {}}))
    PartnershipSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerName, location_name: "name"))
    PartnershipSummary.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnershipCapabilities, location_name: "capabilities"))
    PartnershipSummary.add_member(:capability_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityOptions, location_name: "capabilityOptions"))
    PartnershipSummary.add_member(:trading_partner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TradingPartnerId, location_name: "tradingPartnerId"))
    PartnershipSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedDate, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    PartnershipSummary.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ModifiedDate, location_name: "modifiedAt"))
    PartnershipSummary.type = Types::PartnershipSummary
    ProfileList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileSummary)
    ProfileSummary.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileId, location_name: "profileId", traits: {"smithy.api#required" => {}}))
    ProfileSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileName, location_name: "name", traits: {"smithy.api#required" => {}}))
    ProfileSummary.add_member(:business_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessName, location_name: "businessName", traits: {"smithy.api#required" => {}}))
    ProfileSummary.add_member(:logging, ::Smithy::Schema::Shapes::MemberShape.new(target: Logging, location_name: "logging"))
    ProfileSummary.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "logGroupName"))
    ProfileSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedDate, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    ProfileSummary.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ModifiedDate, location_name: "modifiedAt"))
    ProfileSummary.type = Types::ProfileSummary
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3Location.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, location_name: "bucketName"))
    S3Location.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Key, location_name: "key"))
    S3Location.type = Types::S3Location
    S3LocationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location)
    SampleDocumentKeys.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Key, location_name: "input"))
    SampleDocumentKeys.add_member(:output, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Key, location_name: "output"))
    SampleDocumentKeys.type = Types::SampleDocumentKeys
    SampleDocuments.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, location_name: "bucketName", traits: {"smithy.api#required" => {}}))
    SampleDocuments.add_member(:keys, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyList, location_name: "keys", traits: {"smithy.api#required" => {}}))
    SampleDocuments.type = Types::SampleDocuments
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "serviceCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "quotaCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    StartTransformerJobRequest.add_member(:input_file, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, location_name: "inputFile", traits: {"smithy.api#required" => {}}))
    StartTransformerJobRequest.add_member(:output_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, location_name: "outputLocation", traits: {"smithy.api#required" => {}}))
    StartTransformerJobRequest.add_member(:transformer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformerId, location_name: "transformerId", traits: {"smithy.api#required" => {}}))
    StartTransformerJobRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartTransformerJobRequest.type = Types::StartTransformerJobRequest
    StartTransformerJobResponse.add_member(:transformer_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformerJobId, location_name: "transformerJobId", traits: {"smithy.api#required" => {}}))
    StartTransformerJobResponse.type = Types::StartTransformerJobResponse
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, location_name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, location_name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "ResourceARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TemplateDetails.add_member(:x12, Types::TemplateDetails::X12, ::Smithy::Schema::Shapes::MemberShape.new(target: X12Details, location_name: "x12"))
    TemplateDetails.add_member(:unknown, Types::TemplateDetails::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    TemplateDetails.type = Types::TemplateDetails
    TestConversionRequest.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversionSource, location_name: "source", traits: {"smithy.api#required" => {}}))
    TestConversionRequest.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversionTarget, location_name: "target", traits: {"smithy.api#required" => {}}))
    TestConversionRequest.type = Types::TestConversionRequest
    TestConversionResponse.add_member(:converted_file_content, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "convertedFileContent", traits: {"smithy.api#required" => {}}))
    TestConversionResponse.add_member(:validation_messages, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationMessages, location_name: "validationMessages"))
    TestConversionResponse.type = Types::TestConversionResponse
    TestMappingRequest.add_member(:input_file_content, ::Smithy::Schema::Shapes::MemberShape.new(target: TestMappingInputFileContent, location_name: "inputFileContent", traits: {"smithy.api#required" => {}}))
    TestMappingRequest.add_member(:mapping_template, ::Smithy::Schema::Shapes::MemberShape.new(target: MappingTemplate, location_name: "mappingTemplate", traits: {"smithy.api#required" => {}}))
    TestMappingRequest.add_member(:file_format, ::Smithy::Schema::Shapes::MemberShape.new(target: FileFormat, location_name: "fileFormat", traits: {"smithy.api#required" => {}}))
    TestMappingRequest.type = Types::TestMappingRequest
    TestMappingResponse.add_member(:mapped_file_content, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "mappedFileContent", traits: {"smithy.api#required" => {}}))
    TestMappingResponse.type = Types::TestMappingResponse
    TestParsingRequest.add_member(:input_file, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, location_name: "inputFile", traits: {"smithy.api#required" => {}}))
    TestParsingRequest.add_member(:file_format, ::Smithy::Schema::Shapes::MemberShape.new(target: FileFormat, location_name: "fileFormat", traits: {"smithy.api#required" => {}}))
    TestParsingRequest.add_member(:edi_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EdiType, location_name: "ediType", traits: {"smithy.api#required" => {}}))
    TestParsingRequest.add_member(:advanced_options, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvancedOptions, location_name: "advancedOptions"))
    TestParsingRequest.type = Types::TestParsingRequest
    TestParsingResponse.add_member(:parsed_file_content, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "parsedFileContent", traits: {"smithy.api#required" => {}}))
    TestParsingResponse.add_member(:parsed_split_file_contents, ::Smithy::Schema::Shapes::MemberShape.new(target: ParsedSplitFileContentsList, location_name: "parsedSplitFileContents"))
    TestParsingResponse.add_member(:validation_messages, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationMessages, location_name: "validationMessages"))
    TestParsingResponse.type = Types::TestParsingResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    ToFormat.add_member(:x12, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12", traits: {"smithy.api#enumValue" => "X12"}))
    TransformerJobStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RUNNING", traits: {"smithy.api#enumValue" => "running"}))
    TransformerJobStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "succeeded"}))
    TransformerJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "failed"}))
    TransformerList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TransformerSummary)
    TransformerStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "active"}))
    TransformerStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INACTIVE", traits: {"smithy.api#enumValue" => "inactive"}))
    TransformerSummary.add_member(:transformer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformerId, location_name: "transformerId", traits: {"smithy.api#required" => {}}))
    TransformerSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformerName, location_name: "name", traits: {"smithy.api#required" => {}}))
    TransformerSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformerStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    TransformerSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedDate, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    TransformerSummary.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ModifiedDate, location_name: "modifiedAt"))
    TransformerSummary.add_member(:file_format, ::Smithy::Schema::Shapes::MemberShape.new(target: FileFormat, location_name: "fileFormat", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => "NOT_USED", "smithy.api#deprecated" => {"message" => "This is a legacy trait. Please use input-conversion or output-conversion."}}))
    TransformerSummary.add_member(:mapping_template, ::Smithy::Schema::Shapes::MemberShape.new(target: MappingTemplate, location_name: "mappingTemplate", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => "NOT_USED", "smithy.api#deprecated" => {"message" => "This is a legacy trait. Please use input-conversion or output-conversion."}}))
    TransformerSummary.add_member(:edi_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EdiType, location_name: "ediType", traits: {"smithy.api#deprecated" => {"message" => "This is a legacy trait. Please use input-conversion or output-conversion."}}))
    TransformerSummary.add_member(:sample_document, ::Smithy::Schema::Shapes::MemberShape.new(target: FileLocation, location_name: "sampleDocument", traits: {"smithy.api#deprecated" => {"message" => "This is a legacy trait. Please use input-conversion or output-conversion."}}))
    TransformerSummary.add_member(:input_conversion, ::Smithy::Schema::Shapes::MemberShape.new(target: InputConversion, location_name: "inputConversion"))
    TransformerSummary.add_member(:mapping, ::Smithy::Schema::Shapes::MemberShape.new(target: Mapping, location_name: "mapping"))
    TransformerSummary.add_member(:output_conversion, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputConversion, location_name: "outputConversion"))
    TransformerSummary.add_member(:sample_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleDocuments, location_name: "sampleDocuments"))
    TransformerSummary.type = Types::TransformerSummary
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "ResourceARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, location_name: "TagKeys", traits: {"smithy.api#httpQuery" => "TagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateCapabilityRequest.add_member(:capability_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityId, location_name: "capabilityId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCapabilityRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityName, location_name: "name"))
    UpdateCapabilityRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityConfiguration, location_name: "configuration"))
    UpdateCapabilityRequest.add_member(:instructions_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: InstructionsDocuments, location_name: "instructionsDocuments"))
    UpdateCapabilityRequest.type = Types::UpdateCapabilityRequest
    UpdateCapabilityResponse.add_member(:capability_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityId, location_name: "capabilityId", traits: {"smithy.api#required" => {}}))
    UpdateCapabilityResponse.add_member(:capability_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "capabilityArn", traits: {"smithy.api#required" => {}}))
    UpdateCapabilityResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityName, location_name: "name", traits: {"smithy.api#required" => {}}))
    UpdateCapabilityResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityType, location_name: "type", traits: {"smithy.api#required" => {}}))
    UpdateCapabilityResponse.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityConfiguration, location_name: "configuration", traits: {"smithy.api#required" => {}}))
    UpdateCapabilityResponse.add_member(:instructions_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: InstructionsDocuments, location_name: "instructionsDocuments"))
    UpdateCapabilityResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedDate, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    UpdateCapabilityResponse.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ModifiedDate, location_name: "modifiedAt"))
    UpdateCapabilityResponse.type = Types::UpdateCapabilityResponse
    UpdatePartnershipRequest.add_member(:partnership_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnershipId, location_name: "partnershipId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePartnershipRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerName, location_name: "name"))
    UpdatePartnershipRequest.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnershipCapabilities, location_name: "capabilities"))
    UpdatePartnershipRequest.add_member(:capability_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityOptions, location_name: "capabilityOptions"))
    UpdatePartnershipRequest.type = Types::UpdatePartnershipRequest
    UpdatePartnershipResponse.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileId, location_name: "profileId", traits: {"smithy.api#required" => {}}))
    UpdatePartnershipResponse.add_member(:partnership_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnershipId, location_name: "partnershipId", traits: {"smithy.api#required" => {}}))
    UpdatePartnershipResponse.add_member(:partnership_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "partnershipArn", traits: {"smithy.api#required" => {}}))
    UpdatePartnershipResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerName, location_name: "name"))
    UpdatePartnershipResponse.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, location_name: "email"))
    UpdatePartnershipResponse.add_member(:phone, ::Smithy::Schema::Shapes::MemberShape.new(target: Phone, location_name: "phone"))
    UpdatePartnershipResponse.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnershipCapabilities, location_name: "capabilities"))
    UpdatePartnershipResponse.add_member(:capability_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityOptions, location_name: "capabilityOptions"))
    UpdatePartnershipResponse.add_member(:trading_partner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TradingPartnerId, location_name: "tradingPartnerId"))
    UpdatePartnershipResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedDate, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    UpdatePartnershipResponse.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ModifiedDate, location_name: "modifiedAt"))
    UpdatePartnershipResponse.type = Types::UpdatePartnershipResponse
    UpdateProfileRequest.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileId, location_name: "profileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateProfileRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileName, location_name: "name"))
    UpdateProfileRequest.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, location_name: "email"))
    UpdateProfileRequest.add_member(:phone, ::Smithy::Schema::Shapes::MemberShape.new(target: Phone, location_name: "phone"))
    UpdateProfileRequest.add_member(:business_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessName, location_name: "businessName"))
    UpdateProfileRequest.type = Types::UpdateProfileRequest
    UpdateProfileResponse.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileId, location_name: "profileId", traits: {"smithy.api#required" => {}}))
    UpdateProfileResponse.add_member(:profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "profileArn", traits: {"smithy.api#required" => {}}))
    UpdateProfileResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileName, location_name: "name", traits: {"smithy.api#required" => {}}))
    UpdateProfileResponse.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, location_name: "email"))
    UpdateProfileResponse.add_member(:phone, ::Smithy::Schema::Shapes::MemberShape.new(target: Phone, location_name: "phone", traits: {"smithy.api#required" => {}}))
    UpdateProfileResponse.add_member(:business_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessName, location_name: "businessName", traits: {"smithy.api#required" => {}}))
    UpdateProfileResponse.add_member(:logging, ::Smithy::Schema::Shapes::MemberShape.new(target: Logging, location_name: "logging"))
    UpdateProfileResponse.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "logGroupName"))
    UpdateProfileResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedDate, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    UpdateProfileResponse.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ModifiedDate, location_name: "modifiedAt"))
    UpdateProfileResponse.type = Types::UpdateProfileResponse
    UpdateTransformerRequest.add_member(:transformer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformerId, location_name: "transformerId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTransformerRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformerName, location_name: "name"))
    UpdateTransformerRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformerStatus, location_name: "status"))
    UpdateTransformerRequest.add_member(:file_format, ::Smithy::Schema::Shapes::MemberShape.new(target: FileFormat, location_name: "fileFormat", traits: {"smithy.api#deprecated" => {"message" => "This is a legacy trait. Please use input-conversion or output-conversion."}}))
    UpdateTransformerRequest.add_member(:mapping_template, ::Smithy::Schema::Shapes::MemberShape.new(target: MappingTemplate, location_name: "mappingTemplate", traits: {"smithy.api#deprecated" => {"message" => "This is a legacy trait. Please use input-conversion or output-conversion."}}))
    UpdateTransformerRequest.add_member(:edi_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EdiType, location_name: "ediType", traits: {"smithy.api#deprecated" => {"message" => "This is a legacy trait. Please use input-conversion or output-conversion."}}))
    UpdateTransformerRequest.add_member(:sample_document, ::Smithy::Schema::Shapes::MemberShape.new(target: FileLocation, location_name: "sampleDocument", traits: {"smithy.api#deprecated" => {"message" => "This is a legacy trait. Please use input-conversion or output-conversion."}}))
    UpdateTransformerRequest.add_member(:input_conversion, ::Smithy::Schema::Shapes::MemberShape.new(target: InputConversion, location_name: "inputConversion"))
    UpdateTransformerRequest.add_member(:mapping, ::Smithy::Schema::Shapes::MemberShape.new(target: Mapping, location_name: "mapping"))
    UpdateTransformerRequest.add_member(:output_conversion, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputConversion, location_name: "outputConversion"))
    UpdateTransformerRequest.add_member(:sample_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleDocuments, location_name: "sampleDocuments"))
    UpdateTransformerRequest.type = Types::UpdateTransformerRequest
    UpdateTransformerResponse.add_member(:transformer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformerId, location_name: "transformerId", traits: {"smithy.api#required" => {}}))
    UpdateTransformerResponse.add_member(:transformer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "transformerArn", traits: {"smithy.api#required" => {}}))
    UpdateTransformerResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformerName, location_name: "name", traits: {"smithy.api#required" => {}}))
    UpdateTransformerResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformerStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    UpdateTransformerResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedDate, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    UpdateTransformerResponse.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ModifiedDate, location_name: "modifiedAt", traits: {"smithy.api#required" => {}}))
    UpdateTransformerResponse.add_member(:file_format, ::Smithy::Schema::Shapes::MemberShape.new(target: FileFormat, location_name: "fileFormat", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => "NOT_USED", "smithy.api#deprecated" => {"message" => "This is a legacy trait. Please use input-conversion or output-conversion."}}))
    UpdateTransformerResponse.add_member(:mapping_template, ::Smithy::Schema::Shapes::MemberShape.new(target: MappingTemplate, location_name: "mappingTemplate", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => "NOT_USED", "smithy.api#deprecated" => {"message" => "This is a legacy trait. Please use input-conversion or output-conversion."}}))
    UpdateTransformerResponse.add_member(:edi_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EdiType, location_name: "ediType", traits: {"smithy.api#deprecated" => {"message" => "This is a legacy trait. Please use input-conversion or output-conversion."}}))
    UpdateTransformerResponse.add_member(:sample_document, ::Smithy::Schema::Shapes::MemberShape.new(target: FileLocation, location_name: "sampleDocument", traits: {"smithy.api#deprecated" => {"message" => "This is a legacy trait. Please use input-conversion or output-conversion."}}))
    UpdateTransformerResponse.add_member(:input_conversion, ::Smithy::Schema::Shapes::MemberShape.new(target: InputConversion, location_name: "inputConversion"))
    UpdateTransformerResponse.add_member(:mapping, ::Smithy::Schema::Shapes::MemberShape.new(target: Mapping, location_name: "mapping"))
    UpdateTransformerResponse.add_member(:output_conversion, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputConversion, location_name: "outputConversion"))
    UpdateTransformerResponse.add_member(:sample_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleDocuments, location_name: "sampleDocuments"))
    UpdateTransformerResponse.type = Types::UpdateTransformerResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException
    ValidationMessages.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String)
    WrapFormat.add_member(:segment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SEGMENT", traits: {"smithy.api#enumValue" => "SEGMENT"}))
    WrapFormat.add_member(:one_line, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ONE_LINE", traits: {"smithy.api#enumValue" => "ONE_LINE"}))
    WrapFormat.add_member(:line_length, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LINE_LENGTH", traits: {"smithy.api#enumValue" => "LINE_LENGTH"}))
    WrapOptions.add_member(:wrap_by, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapFormat, location_name: "wrapBy", traits: {"smithy.api#required" => {}}))
    WrapOptions.add_member(:line_terminator, ::Smithy::Schema::Shapes::MemberShape.new(target: LineTerminator, location_name: "lineTerminator"))
    WrapOptions.add_member(:line_length, ::Smithy::Schema::Shapes::MemberShape.new(target: LineLength, location_name: "lineLength"))
    WrapOptions.type = Types::WrapOptions
    X12AcknowledgmentOptions.add_member(:functional_acknowledgment, ::Smithy::Schema::Shapes::MemberShape.new(target: X12FunctionalAcknowledgment, location_name: "functionalAcknowledgment", traits: {"smithy.api#required" => {}}))
    X12AcknowledgmentOptions.add_member(:technical_acknowledgment, ::Smithy::Schema::Shapes::MemberShape.new(target: X12TechnicalAcknowledgment, location_name: "technicalAcknowledgment", traits: {"smithy.api#required" => {}}))
    X12AcknowledgmentOptions.type = Types::X12AcknowledgmentOptions
    X12AdvancedOptions.add_member(:split_options, ::Smithy::Schema::Shapes::MemberShape.new(target: X12SplitOptions, location_name: "splitOptions"))
    X12AdvancedOptions.add_member(:validation_options, ::Smithy::Schema::Shapes::MemberShape.new(target: X12ValidationOptions, location_name: "validationOptions"))
    X12AdvancedOptions.type = Types::X12AdvancedOptions
    X12CodeListValidationRule.add_member(:element_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ElementId, location_name: "elementId", traits: {"smithy.api#required" => {}}))
    X12CodeListValidationRule.add_member(:codes_to_add, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeList, location_name: "codesToAdd"))
    X12CodeListValidationRule.add_member(:codes_to_remove, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeList, location_name: "codesToRemove"))
    X12CodeListValidationRule.type = Types::X12CodeListValidationRule
    X12ControlNumbers.add_member(:starting_interchange_control_number, ::Smithy::Schema::Shapes::MemberShape.new(target: StartingInterchangeControlNumber, location_name: "startingInterchangeControlNumber"))
    X12ControlNumbers.add_member(:starting_functional_group_control_number, ::Smithy::Schema::Shapes::MemberShape.new(target: StartingFunctionalGroupControlNumber, location_name: "startingFunctionalGroupControlNumber"))
    X12ControlNumbers.add_member(:starting_transaction_set_control_number, ::Smithy::Schema::Shapes::MemberShape.new(target: StartingTransactionSetControlNumber, location_name: "startingTransactionSetControlNumber"))
    X12ControlNumbers.type = Types::X12ControlNumbers
    X12Delimiters.add_member(:component_separator, ::Smithy::Schema::Shapes::MemberShape.new(target: X12ComponentSeparator, location_name: "componentSeparator"))
    X12Delimiters.add_member(:data_element_separator, ::Smithy::Schema::Shapes::MemberShape.new(target: X12DataElementSeparator, location_name: "dataElementSeparator"))
    X12Delimiters.add_member(:segment_terminator, ::Smithy::Schema::Shapes::MemberShape.new(target: X12SegmentTerminator, location_name: "segmentTerminator"))
    X12Delimiters.type = Types::X12Delimiters
    X12Details.add_member(:transaction_set, ::Smithy::Schema::Shapes::MemberShape.new(target: X12TransactionSet, location_name: "transactionSet"))
    X12Details.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: X12Version, location_name: "version"))
    X12Details.type = Types::X12Details
    X12ElementLengthValidationRule.add_member(:element_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ElementId, location_name: "elementId", traits: {"smithy.api#required" => {}}))
    X12ElementLengthValidationRule.add_member(:max_length, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxLength", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000000}, "smithy.api#required" => {}}))
    X12ElementLengthValidationRule.add_member(:min_length, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "minLength", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000000}, "smithy.api#required" => {}}))
    X12ElementLengthValidationRule.type = Types::X12ElementLengthValidationRule
    X12ElementRequirementValidationRule.add_member(:element_position, ::Smithy::Schema::Shapes::MemberShape.new(target: ElementPosition, location_name: "elementPosition", traits: {"smithy.api#required" => {}}))
    X12ElementRequirementValidationRule.add_member(:requirement, ::Smithy::Schema::Shapes::MemberShape.new(target: ElementRequirement, location_name: "requirement", traits: {"smithy.api#required" => {}}))
    X12ElementRequirementValidationRule.type = Types::X12ElementRequirementValidationRule
    X12Envelope.add_member(:common, ::Smithy::Schema::Shapes::MemberShape.new(target: X12OutboundEdiHeaders, location_name: "common"))
    X12Envelope.add_member(:wrap_options, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapOptions, location_name: "wrapOptions"))
    X12Envelope.type = Types::X12Envelope
    X12FunctionalAcknowledgment.add_member(:do_not_generate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DO_NOT_GENERATE", traits: {"smithy.api#enumValue" => "DO_NOT_GENERATE"}))
    X12FunctionalAcknowledgment.add_member(:generate_all_segments, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GENERATE_ALL_SEGMENTS", traits: {"smithy.api#enumValue" => "GENERATE_ALL_SEGMENTS"}))
    X12FunctionalAcknowledgment.add_member(:generate_without_transaction_set_response_loop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GENERATE_WITHOUT_TRANSACTION_SET_RESPONSE_LOOP", traits: {"smithy.api#enumValue" => "GENERATE_WITHOUT_TRANSACTION_SET_RESPONSE_LOOP"}))
    X12FunctionalGroupHeaders.add_member(:application_sender_code, ::Smithy::Schema::Shapes::MemberShape.new(target: X12ApplicationSenderCode, location_name: "applicationSenderCode"))
    X12FunctionalGroupHeaders.add_member(:application_receiver_code, ::Smithy::Schema::Shapes::MemberShape.new(target: X12ApplicationReceiverCode, location_name: "applicationReceiverCode"))
    X12FunctionalGroupHeaders.add_member(:responsible_agency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: X12ResponsibleAgencyCode, location_name: "responsibleAgencyCode"))
    X12FunctionalGroupHeaders.type = Types::X12FunctionalGroupHeaders
    X12GS05TimeFormat.add_member(:hhmm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HHMM", traits: {"smithy.api#enumValue" => "HHMM"}))
    X12GS05TimeFormat.add_member(:hhmmss, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HHMMSS", traits: {"smithy.api#enumValue" => "HHMMSS"}))
    X12GS05TimeFormat.add_member(:hhmmssdd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HHMMSSDD", traits: {"smithy.api#enumValue" => "HHMMSSDD"}))
    X12InboundEdiOptions.add_member(:acknowledgment_options, ::Smithy::Schema::Shapes::MemberShape.new(target: X12AcknowledgmentOptions, location_name: "acknowledgmentOptions"))
    X12InboundEdiOptions.type = Types::X12InboundEdiOptions
    X12InterchangeControlHeaders.add_member(:sender_id_qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: X12IdQualifier, location_name: "senderIdQualifier"))
    X12InterchangeControlHeaders.add_member(:sender_id, ::Smithy::Schema::Shapes::MemberShape.new(target: X12SenderId, location_name: "senderId"))
    X12InterchangeControlHeaders.add_member(:receiver_id_qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: X12IdQualifier, location_name: "receiverIdQualifier"))
    X12InterchangeControlHeaders.add_member(:receiver_id, ::Smithy::Schema::Shapes::MemberShape.new(target: X12ReceiverId, location_name: "receiverId"))
    X12InterchangeControlHeaders.add_member(:repetition_separator, ::Smithy::Schema::Shapes::MemberShape.new(target: X12RepetitionSeparator, location_name: "repetitionSeparator"))
    X12InterchangeControlHeaders.add_member(:acknowledgment_requested_code, ::Smithy::Schema::Shapes::MemberShape.new(target: X12AcknowledgmentRequestedCode, location_name: "acknowledgmentRequestedCode"))
    X12InterchangeControlHeaders.add_member(:usage_indicator_code, ::Smithy::Schema::Shapes::MemberShape.new(target: X12UsageIndicatorCode, location_name: "usageIndicatorCode"))
    X12InterchangeControlHeaders.type = Types::X12InterchangeControlHeaders
    X12OutboundEdiHeaders.add_member(:interchange_control_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: X12InterchangeControlHeaders, location_name: "interchangeControlHeaders"))
    X12OutboundEdiHeaders.add_member(:functional_group_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: X12FunctionalGroupHeaders, location_name: "functionalGroupHeaders"))
    X12OutboundEdiHeaders.add_member(:delimiters, ::Smithy::Schema::Shapes::MemberShape.new(target: X12Delimiters, location_name: "delimiters"))
    X12OutboundEdiHeaders.add_member(:validate_edi, ::Smithy::Schema::Shapes::MemberShape.new(target: X12ValidateEdi, location_name: "validateEdi"))
    X12OutboundEdiHeaders.add_member(:control_numbers, ::Smithy::Schema::Shapes::MemberShape.new(target: X12ControlNumbers, location_name: "controlNumbers"))
    X12OutboundEdiHeaders.add_member(:gs05_time_format, ::Smithy::Schema::Shapes::MemberShape.new(target: X12GS05TimeFormat, location_name: "gs05TimeFormat"))
    X12OutboundEdiHeaders.type = Types::X12OutboundEdiHeaders
    X12SplitBy.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    X12SplitBy.add_member(:transaction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRANSACTION", traits: {"smithy.api#enumValue" => "TRANSACTION"}))
    X12SplitOptions.add_member(:split_by, ::Smithy::Schema::Shapes::MemberShape.new(target: X12SplitBy, location_name: "splitBy", traits: {"smithy.api#required" => {}}))
    X12SplitOptions.type = Types::X12SplitOptions
    X12TechnicalAcknowledgment.add_member(:do_not_generate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DO_NOT_GENERATE", traits: {"smithy.api#enumValue" => "DO_NOT_GENERATE"}))
    X12TechnicalAcknowledgment.add_member(:generate_all_segments, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GENERATE_ALL_SEGMENTS", traits: {"smithy.api#enumValue" => "GENERATE_ALL_SEGMENTS"}))
    X12TransactionSet.add_member(:x12_100, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_100", traits: {"smithy.api#enumValue" => "X12_100"}))
    X12TransactionSet.add_member(:x12_101, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_101", traits: {"smithy.api#enumValue" => "X12_101"}))
    X12TransactionSet.add_member(:x12_102, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_102", traits: {"smithy.api#enumValue" => "X12_102"}))
    X12TransactionSet.add_member(:x12_103, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_103", traits: {"smithy.api#enumValue" => "X12_103"}))
    X12TransactionSet.add_member(:x12_104, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_104", traits: {"smithy.api#enumValue" => "X12_104"}))
    X12TransactionSet.add_member(:x12_105, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_105", traits: {"smithy.api#enumValue" => "X12_105"}))
    X12TransactionSet.add_member(:x12_106, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_106", traits: {"smithy.api#enumValue" => "X12_106"}))
    X12TransactionSet.add_member(:x12_107, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_107", traits: {"smithy.api#enumValue" => "X12_107"}))
    X12TransactionSet.add_member(:x12_108, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_108", traits: {"smithy.api#enumValue" => "X12_108"}))
    X12TransactionSet.add_member(:x12_109, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_109", traits: {"smithy.api#enumValue" => "X12_109"}))
    X12TransactionSet.add_member(:x12_110, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_110", traits: {"smithy.api#enumValue" => "X12_110"}))
    X12TransactionSet.add_member(:x12_111, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_111", traits: {"smithy.api#enumValue" => "X12_111"}))
    X12TransactionSet.add_member(:x12_112, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_112", traits: {"smithy.api#enumValue" => "X12_112"}))
    X12TransactionSet.add_member(:x12_113, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_113", traits: {"smithy.api#enumValue" => "X12_113"}))
    X12TransactionSet.add_member(:x12_120, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_120", traits: {"smithy.api#enumValue" => "X12_120"}))
    X12TransactionSet.add_member(:x12_121, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_121", traits: {"smithy.api#enumValue" => "X12_121"}))
    X12TransactionSet.add_member(:x12_124, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_124", traits: {"smithy.api#enumValue" => "X12_124"}))
    X12TransactionSet.add_member(:x12_125, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_125", traits: {"smithy.api#enumValue" => "X12_125"}))
    X12TransactionSet.add_member(:x12_126, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_126", traits: {"smithy.api#enumValue" => "X12_126"}))
    X12TransactionSet.add_member(:x12_127, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_127", traits: {"smithy.api#enumValue" => "X12_127"}))
    X12TransactionSet.add_member(:x12_128, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_128", traits: {"smithy.api#enumValue" => "X12_128"}))
    X12TransactionSet.add_member(:x12_129, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_129", traits: {"smithy.api#enumValue" => "X12_129"}))
    X12TransactionSet.add_member(:x12_130, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_130", traits: {"smithy.api#enumValue" => "X12_130"}))
    X12TransactionSet.add_member(:x12_131, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_131", traits: {"smithy.api#enumValue" => "X12_131"}))
    X12TransactionSet.add_member(:x12_132, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_132", traits: {"smithy.api#enumValue" => "X12_132"}))
    X12TransactionSet.add_member(:x12_133, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_133", traits: {"smithy.api#enumValue" => "X12_133"}))
    X12TransactionSet.add_member(:x12_135, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_135", traits: {"smithy.api#enumValue" => "X12_135"}))
    X12TransactionSet.add_member(:x12_138, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_138", traits: {"smithy.api#enumValue" => "X12_138"}))
    X12TransactionSet.add_member(:x12_139, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_139", traits: {"smithy.api#enumValue" => "X12_139"}))
    X12TransactionSet.add_member(:x12_140, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_140", traits: {"smithy.api#enumValue" => "X12_140"}))
    X12TransactionSet.add_member(:x12_141, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_141", traits: {"smithy.api#enumValue" => "X12_141"}))
    X12TransactionSet.add_member(:x12_142, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_142", traits: {"smithy.api#enumValue" => "X12_142"}))
    X12TransactionSet.add_member(:x12_143, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_143", traits: {"smithy.api#enumValue" => "X12_143"}))
    X12TransactionSet.add_member(:x12_144, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_144", traits: {"smithy.api#enumValue" => "X12_144"}))
    X12TransactionSet.add_member(:x12_146, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_146", traits: {"smithy.api#enumValue" => "X12_146"}))
    X12TransactionSet.add_member(:x12_147, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_147", traits: {"smithy.api#enumValue" => "X12_147"}))
    X12TransactionSet.add_member(:x12_148, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_148", traits: {"smithy.api#enumValue" => "X12_148"}))
    X12TransactionSet.add_member(:x12_149, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_149", traits: {"smithy.api#enumValue" => "X12_149"}))
    X12TransactionSet.add_member(:x12_150, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_150", traits: {"smithy.api#enumValue" => "X12_150"}))
    X12TransactionSet.add_member(:x12_151, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_151", traits: {"smithy.api#enumValue" => "X12_151"}))
    X12TransactionSet.add_member(:x12_152, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_152", traits: {"smithy.api#enumValue" => "X12_152"}))
    X12TransactionSet.add_member(:x12_153, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_153", traits: {"smithy.api#enumValue" => "X12_153"}))
    X12TransactionSet.add_member(:x12_154, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_154", traits: {"smithy.api#enumValue" => "X12_154"}))
    X12TransactionSet.add_member(:x12_155, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_155", traits: {"smithy.api#enumValue" => "X12_155"}))
    X12TransactionSet.add_member(:x12_157, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_157", traits: {"smithy.api#enumValue" => "X12_157"}))
    X12TransactionSet.add_member(:x12_158, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_158", traits: {"smithy.api#enumValue" => "X12_158"}))
    X12TransactionSet.add_member(:x12_159, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_159", traits: {"smithy.api#enumValue" => "X12_159"}))
    X12TransactionSet.add_member(:x12_160, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_160", traits: {"smithy.api#enumValue" => "X12_160"}))
    X12TransactionSet.add_member(:x12_161, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_161", traits: {"smithy.api#enumValue" => "X12_161"}))
    X12TransactionSet.add_member(:x12_163, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_163", traits: {"smithy.api#enumValue" => "X12_163"}))
    X12TransactionSet.add_member(:x12_170, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_170", traits: {"smithy.api#enumValue" => "X12_170"}))
    X12TransactionSet.add_member(:x12_175, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_175", traits: {"smithy.api#enumValue" => "X12_175"}))
    X12TransactionSet.add_member(:x12_176, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_176", traits: {"smithy.api#enumValue" => "X12_176"}))
    X12TransactionSet.add_member(:x12_179, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_179", traits: {"smithy.api#enumValue" => "X12_179"}))
    X12TransactionSet.add_member(:x12_180, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_180", traits: {"smithy.api#enumValue" => "X12_180"}))
    X12TransactionSet.add_member(:x12_185, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_185", traits: {"smithy.api#enumValue" => "X12_185"}))
    X12TransactionSet.add_member(:x12_186, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_186", traits: {"smithy.api#enumValue" => "X12_186"}))
    X12TransactionSet.add_member(:x12_187, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_187", traits: {"smithy.api#enumValue" => "X12_187"}))
    X12TransactionSet.add_member(:x12_188, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_188", traits: {"smithy.api#enumValue" => "X12_188"}))
    X12TransactionSet.add_member(:x12_189, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_189", traits: {"smithy.api#enumValue" => "X12_189"}))
    X12TransactionSet.add_member(:x12_190, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_190", traits: {"smithy.api#enumValue" => "X12_190"}))
    X12TransactionSet.add_member(:x12_191, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_191", traits: {"smithy.api#enumValue" => "X12_191"}))
    X12TransactionSet.add_member(:x12_194, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_194", traits: {"smithy.api#enumValue" => "X12_194"}))
    X12TransactionSet.add_member(:x12_195, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_195", traits: {"smithy.api#enumValue" => "X12_195"}))
    X12TransactionSet.add_member(:x12_196, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_196", traits: {"smithy.api#enumValue" => "X12_196"}))
    X12TransactionSet.add_member(:x12_197, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_197", traits: {"smithy.api#enumValue" => "X12_197"}))
    X12TransactionSet.add_member(:x12_198, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_198", traits: {"smithy.api#enumValue" => "X12_198"}))
    X12TransactionSet.add_member(:x12_199, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_199", traits: {"smithy.api#enumValue" => "X12_199"}))
    X12TransactionSet.add_member(:x12_200, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_200", traits: {"smithy.api#enumValue" => "X12_200"}))
    X12TransactionSet.add_member(:x12_201, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_201", traits: {"smithy.api#enumValue" => "X12_201"}))
    X12TransactionSet.add_member(:x12_202, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_202", traits: {"smithy.api#enumValue" => "X12_202"}))
    X12TransactionSet.add_member(:x12_203, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_203", traits: {"smithy.api#enumValue" => "X12_203"}))
    X12TransactionSet.add_member(:x12_204, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_204", traits: {"smithy.api#enumValue" => "X12_204"}))
    X12TransactionSet.add_member(:x12_205, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_205", traits: {"smithy.api#enumValue" => "X12_205"}))
    X12TransactionSet.add_member(:x12_206, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_206", traits: {"smithy.api#enumValue" => "X12_206"}))
    X12TransactionSet.add_member(:x12_210, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_210", traits: {"smithy.api#enumValue" => "X12_210"}))
    X12TransactionSet.add_member(:x12_211, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_211", traits: {"smithy.api#enumValue" => "X12_211"}))
    X12TransactionSet.add_member(:x12_212, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_212", traits: {"smithy.api#enumValue" => "X12_212"}))
    X12TransactionSet.add_member(:x12_213, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_213", traits: {"smithy.api#enumValue" => "X12_213"}))
    X12TransactionSet.add_member(:x12_214, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_214", traits: {"smithy.api#enumValue" => "X12_214"}))
    X12TransactionSet.add_member(:x12_215, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_215", traits: {"smithy.api#enumValue" => "X12_215"}))
    X12TransactionSet.add_member(:x12_216, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_216", traits: {"smithy.api#enumValue" => "X12_216"}))
    X12TransactionSet.add_member(:x12_217, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_217", traits: {"smithy.api#enumValue" => "X12_217"}))
    X12TransactionSet.add_member(:x12_218, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_218", traits: {"smithy.api#enumValue" => "X12_218"}))
    X12TransactionSet.add_member(:x12_219, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_219", traits: {"smithy.api#enumValue" => "X12_219"}))
    X12TransactionSet.add_member(:x12_220, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_220", traits: {"smithy.api#enumValue" => "X12_220"}))
    X12TransactionSet.add_member(:x12_222, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_222", traits: {"smithy.api#enumValue" => "X12_222"}))
    X12TransactionSet.add_member(:x12_223, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_223", traits: {"smithy.api#enumValue" => "X12_223"}))
    X12TransactionSet.add_member(:x12_224, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_224", traits: {"smithy.api#enumValue" => "X12_224"}))
    X12TransactionSet.add_member(:x12_225, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_225", traits: {"smithy.api#enumValue" => "X12_225"}))
    X12TransactionSet.add_member(:x12_227, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_227", traits: {"smithy.api#enumValue" => "X12_227"}))
    X12TransactionSet.add_member(:x12_228, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_228", traits: {"smithy.api#enumValue" => "X12_228"}))
    X12TransactionSet.add_member(:x12_240, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_240", traits: {"smithy.api#enumValue" => "X12_240"}))
    X12TransactionSet.add_member(:x12_242, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_242", traits: {"smithy.api#enumValue" => "X12_242"}))
    X12TransactionSet.add_member(:x12_244, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_244", traits: {"smithy.api#enumValue" => "X12_244"}))
    X12TransactionSet.add_member(:x12_245, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_245", traits: {"smithy.api#enumValue" => "X12_245"}))
    X12TransactionSet.add_member(:x12_248, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_248", traits: {"smithy.api#enumValue" => "X12_248"}))
    X12TransactionSet.add_member(:x12_249, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_249", traits: {"smithy.api#enumValue" => "X12_249"}))
    X12TransactionSet.add_member(:x12_250, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_250", traits: {"smithy.api#enumValue" => "X12_250"}))
    X12TransactionSet.add_member(:x12_251, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_251", traits: {"smithy.api#enumValue" => "X12_251"}))
    X12TransactionSet.add_member(:x12_252, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_252", traits: {"smithy.api#enumValue" => "X12_252"}))
    X12TransactionSet.add_member(:x12_255, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_255", traits: {"smithy.api#enumValue" => "X12_255"}))
    X12TransactionSet.add_member(:x12_256, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_256", traits: {"smithy.api#enumValue" => "X12_256"}))
    X12TransactionSet.add_member(:x12_259, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_259", traits: {"smithy.api#enumValue" => "X12_259"}))
    X12TransactionSet.add_member(:x12_260, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_260", traits: {"smithy.api#enumValue" => "X12_260"}))
    X12TransactionSet.add_member(:x12_261, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_261", traits: {"smithy.api#enumValue" => "X12_261"}))
    X12TransactionSet.add_member(:x12_262, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_262", traits: {"smithy.api#enumValue" => "X12_262"}))
    X12TransactionSet.add_member(:x12_263, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_263", traits: {"smithy.api#enumValue" => "X12_263"}))
    X12TransactionSet.add_member(:x12_264, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_264", traits: {"smithy.api#enumValue" => "X12_264"}))
    X12TransactionSet.add_member(:x12_265, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_265", traits: {"smithy.api#enumValue" => "X12_265"}))
    X12TransactionSet.add_member(:x12_266, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_266", traits: {"smithy.api#enumValue" => "X12_266"}))
    X12TransactionSet.add_member(:x12_267, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_267", traits: {"smithy.api#enumValue" => "X12_267"}))
    X12TransactionSet.add_member(:x12_268, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_268", traits: {"smithy.api#enumValue" => "X12_268"}))
    X12TransactionSet.add_member(:x12_269, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_269", traits: {"smithy.api#enumValue" => "X12_269"}))
    X12TransactionSet.add_member(:x12_270, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_270", traits: {"smithy.api#enumValue" => "X12_270"}))
    X12TransactionSet.add_member(:x12_271, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_271", traits: {"smithy.api#enumValue" => "X12_271"}))
    X12TransactionSet.add_member(:x12_272, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_272", traits: {"smithy.api#enumValue" => "X12_272"}))
    X12TransactionSet.add_member(:x12_273, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_273", traits: {"smithy.api#enumValue" => "X12_273"}))
    X12TransactionSet.add_member(:x12_274, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_274", traits: {"smithy.api#enumValue" => "X12_274"}))
    X12TransactionSet.add_member(:x12_275, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_275", traits: {"smithy.api#enumValue" => "X12_275"}))
    X12TransactionSet.add_member(:x12_276, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_276", traits: {"smithy.api#enumValue" => "X12_276"}))
    X12TransactionSet.add_member(:x12_277, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_277", traits: {"smithy.api#enumValue" => "X12_277"}))
    X12TransactionSet.add_member(:x12_278, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_278", traits: {"smithy.api#enumValue" => "X12_278"}))
    X12TransactionSet.add_member(:x12_280, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_280", traits: {"smithy.api#enumValue" => "X12_280"}))
    X12TransactionSet.add_member(:x12_283, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_283", traits: {"smithy.api#enumValue" => "X12_283"}))
    X12TransactionSet.add_member(:x12_284, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_284", traits: {"smithy.api#enumValue" => "X12_284"}))
    X12TransactionSet.add_member(:x12_285, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_285", traits: {"smithy.api#enumValue" => "X12_285"}))
    X12TransactionSet.add_member(:x12_286, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_286", traits: {"smithy.api#enumValue" => "X12_286"}))
    X12TransactionSet.add_member(:x12_288, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_288", traits: {"smithy.api#enumValue" => "X12_288"}))
    X12TransactionSet.add_member(:x12_290, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_290", traits: {"smithy.api#enumValue" => "X12_290"}))
    X12TransactionSet.add_member(:x12_300, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_300", traits: {"smithy.api#enumValue" => "X12_300"}))
    X12TransactionSet.add_member(:x12_301, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_301", traits: {"smithy.api#enumValue" => "X12_301"}))
    X12TransactionSet.add_member(:x12_303, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_303", traits: {"smithy.api#enumValue" => "X12_303"}))
    X12TransactionSet.add_member(:x12_304, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_304", traits: {"smithy.api#enumValue" => "X12_304"}))
    X12TransactionSet.add_member(:x12_309, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_309", traits: {"smithy.api#enumValue" => "X12_309"}))
    X12TransactionSet.add_member(:x12_310, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_310", traits: {"smithy.api#enumValue" => "X12_310"}))
    X12TransactionSet.add_member(:x12_311, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_311", traits: {"smithy.api#enumValue" => "X12_311"}))
    X12TransactionSet.add_member(:x12_312, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_312", traits: {"smithy.api#enumValue" => "X12_312"}))
    X12TransactionSet.add_member(:x12_313, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_313", traits: {"smithy.api#enumValue" => "X12_313"}))
    X12TransactionSet.add_member(:x12_315, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_315", traits: {"smithy.api#enumValue" => "X12_315"}))
    X12TransactionSet.add_member(:x12_317, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_317", traits: {"smithy.api#enumValue" => "X12_317"}))
    X12TransactionSet.add_member(:x12_319, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_319", traits: {"smithy.api#enumValue" => "X12_319"}))
    X12TransactionSet.add_member(:x12_322, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_322", traits: {"smithy.api#enumValue" => "X12_322"}))
    X12TransactionSet.add_member(:x12_323, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_323", traits: {"smithy.api#enumValue" => "X12_323"}))
    X12TransactionSet.add_member(:x12_324, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_324", traits: {"smithy.api#enumValue" => "X12_324"}))
    X12TransactionSet.add_member(:x12_325, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_325", traits: {"smithy.api#enumValue" => "X12_325"}))
    X12TransactionSet.add_member(:x12_326, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_326", traits: {"smithy.api#enumValue" => "X12_326"}))
    X12TransactionSet.add_member(:x12_350, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_350", traits: {"smithy.api#enumValue" => "X12_350"}))
    X12TransactionSet.add_member(:x12_352, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_352", traits: {"smithy.api#enumValue" => "X12_352"}))
    X12TransactionSet.add_member(:x12_353, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_353", traits: {"smithy.api#enumValue" => "X12_353"}))
    X12TransactionSet.add_member(:x12_354, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_354", traits: {"smithy.api#enumValue" => "X12_354"}))
    X12TransactionSet.add_member(:x12_355, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_355", traits: {"smithy.api#enumValue" => "X12_355"}))
    X12TransactionSet.add_member(:x12_356, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_356", traits: {"smithy.api#enumValue" => "X12_356"}))
    X12TransactionSet.add_member(:x12_357, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_357", traits: {"smithy.api#enumValue" => "X12_357"}))
    X12TransactionSet.add_member(:x12_358, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_358", traits: {"smithy.api#enumValue" => "X12_358"}))
    X12TransactionSet.add_member(:x12_361, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_361", traits: {"smithy.api#enumValue" => "X12_361"}))
    X12TransactionSet.add_member(:x12_362, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_362", traits: {"smithy.api#enumValue" => "X12_362"}))
    X12TransactionSet.add_member(:x12_404, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_404", traits: {"smithy.api#enumValue" => "X12_404"}))
    X12TransactionSet.add_member(:x12_410, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_410", traits: {"smithy.api#enumValue" => "X12_410"}))
    X12TransactionSet.add_member(:x12_412, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_412", traits: {"smithy.api#enumValue" => "X12_412"}))
    X12TransactionSet.add_member(:x12_414, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_414", traits: {"smithy.api#enumValue" => "X12_414"}))
    X12TransactionSet.add_member(:x12_417, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_417", traits: {"smithy.api#enumValue" => "X12_417"}))
    X12TransactionSet.add_member(:x12_418, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_418", traits: {"smithy.api#enumValue" => "X12_418"}))
    X12TransactionSet.add_member(:x12_419, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_419", traits: {"smithy.api#enumValue" => "X12_419"}))
    X12TransactionSet.add_member(:x12_420, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_420", traits: {"smithy.api#enumValue" => "X12_420"}))
    X12TransactionSet.add_member(:x12_421, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_421", traits: {"smithy.api#enumValue" => "X12_421"}))
    X12TransactionSet.add_member(:x12_422, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_422", traits: {"smithy.api#enumValue" => "X12_422"}))
    X12TransactionSet.add_member(:x12_423, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_423", traits: {"smithy.api#enumValue" => "X12_423"}))
    X12TransactionSet.add_member(:x12_424, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_424", traits: {"smithy.api#enumValue" => "X12_424"}))
    X12TransactionSet.add_member(:x12_425, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_425", traits: {"smithy.api#enumValue" => "X12_425"}))
    X12TransactionSet.add_member(:x12_426, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_426", traits: {"smithy.api#enumValue" => "X12_426"}))
    X12TransactionSet.add_member(:x12_429, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_429", traits: {"smithy.api#enumValue" => "X12_429"}))
    X12TransactionSet.add_member(:x12_431, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_431", traits: {"smithy.api#enumValue" => "X12_431"}))
    X12TransactionSet.add_member(:x12_432, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_432", traits: {"smithy.api#enumValue" => "X12_432"}))
    X12TransactionSet.add_member(:x12_433, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_433", traits: {"smithy.api#enumValue" => "X12_433"}))
    X12TransactionSet.add_member(:x12_434, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_434", traits: {"smithy.api#enumValue" => "X12_434"}))
    X12TransactionSet.add_member(:x12_435, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_435", traits: {"smithy.api#enumValue" => "X12_435"}))
    X12TransactionSet.add_member(:x12_436, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_436", traits: {"smithy.api#enumValue" => "X12_436"}))
    X12TransactionSet.add_member(:x12_437, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_437", traits: {"smithy.api#enumValue" => "X12_437"}))
    X12TransactionSet.add_member(:x12_440, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_440", traits: {"smithy.api#enumValue" => "X12_440"}))
    X12TransactionSet.add_member(:x12_451, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_451", traits: {"smithy.api#enumValue" => "X12_451"}))
    X12TransactionSet.add_member(:x12_452, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_452", traits: {"smithy.api#enumValue" => "X12_452"}))
    X12TransactionSet.add_member(:x12_453, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_453", traits: {"smithy.api#enumValue" => "X12_453"}))
    X12TransactionSet.add_member(:x12_455, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_455", traits: {"smithy.api#enumValue" => "X12_455"}))
    X12TransactionSet.add_member(:x12_456, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_456", traits: {"smithy.api#enumValue" => "X12_456"}))
    X12TransactionSet.add_member(:x12_460, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_460", traits: {"smithy.api#enumValue" => "X12_460"}))
    X12TransactionSet.add_member(:x12_463, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_463", traits: {"smithy.api#enumValue" => "X12_463"}))
    X12TransactionSet.add_member(:x12_466, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_466", traits: {"smithy.api#enumValue" => "X12_466"}))
    X12TransactionSet.add_member(:x12_468, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_468", traits: {"smithy.api#enumValue" => "X12_468"}))
    X12TransactionSet.add_member(:x12_470, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_470", traits: {"smithy.api#enumValue" => "X12_470"}))
    X12TransactionSet.add_member(:x12_475, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_475", traits: {"smithy.api#enumValue" => "X12_475"}))
    X12TransactionSet.add_member(:x12_485, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_485", traits: {"smithy.api#enumValue" => "X12_485"}))
    X12TransactionSet.add_member(:x12_486, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_486", traits: {"smithy.api#enumValue" => "X12_486"}))
    X12TransactionSet.add_member(:x12_490, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_490", traits: {"smithy.api#enumValue" => "X12_490"}))
    X12TransactionSet.add_member(:x12_492, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_492", traits: {"smithy.api#enumValue" => "X12_492"}))
    X12TransactionSet.add_member(:x12_494, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_494", traits: {"smithy.api#enumValue" => "X12_494"}))
    X12TransactionSet.add_member(:x12_500, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_500", traits: {"smithy.api#enumValue" => "X12_500"}))
    X12TransactionSet.add_member(:x12_501, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_501", traits: {"smithy.api#enumValue" => "X12_501"}))
    X12TransactionSet.add_member(:x12_503, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_503", traits: {"smithy.api#enumValue" => "X12_503"}))
    X12TransactionSet.add_member(:x12_504, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_504", traits: {"smithy.api#enumValue" => "X12_504"}))
    X12TransactionSet.add_member(:x12_511, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_511", traits: {"smithy.api#enumValue" => "X12_511"}))
    X12TransactionSet.add_member(:x12_517, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_517", traits: {"smithy.api#enumValue" => "X12_517"}))
    X12TransactionSet.add_member(:x12_521, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_521", traits: {"smithy.api#enumValue" => "X12_521"}))
    X12TransactionSet.add_member(:x12_527, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_527", traits: {"smithy.api#enumValue" => "X12_527"}))
    X12TransactionSet.add_member(:x12_536, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_536", traits: {"smithy.api#enumValue" => "X12_536"}))
    X12TransactionSet.add_member(:x12_540, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_540", traits: {"smithy.api#enumValue" => "X12_540"}))
    X12TransactionSet.add_member(:x12_561, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_561", traits: {"smithy.api#enumValue" => "X12_561"}))
    X12TransactionSet.add_member(:x12_567, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_567", traits: {"smithy.api#enumValue" => "X12_567"}))
    X12TransactionSet.add_member(:x12_568, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_568", traits: {"smithy.api#enumValue" => "X12_568"}))
    X12TransactionSet.add_member(:x12_601, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_601", traits: {"smithy.api#enumValue" => "X12_601"}))
    X12TransactionSet.add_member(:x12_602, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_602", traits: {"smithy.api#enumValue" => "X12_602"}))
    X12TransactionSet.add_member(:x12_620, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_620", traits: {"smithy.api#enumValue" => "X12_620"}))
    X12TransactionSet.add_member(:x12_625, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_625", traits: {"smithy.api#enumValue" => "X12_625"}))
    X12TransactionSet.add_member(:x12_650, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_650", traits: {"smithy.api#enumValue" => "X12_650"}))
    X12TransactionSet.add_member(:x12_715, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_715", traits: {"smithy.api#enumValue" => "X12_715"}))
    X12TransactionSet.add_member(:x12_753, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_753", traits: {"smithy.api#enumValue" => "X12_753"}))
    X12TransactionSet.add_member(:x12_754, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_754", traits: {"smithy.api#enumValue" => "X12_754"}))
    X12TransactionSet.add_member(:x12_805, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_805", traits: {"smithy.api#enumValue" => "X12_805"}))
    X12TransactionSet.add_member(:x12_806, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_806", traits: {"smithy.api#enumValue" => "X12_806"}))
    X12TransactionSet.add_member(:x12_810, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_810", traits: {"smithy.api#enumValue" => "X12_810"}))
    X12TransactionSet.add_member(:x12_811, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_811", traits: {"smithy.api#enumValue" => "X12_811"}))
    X12TransactionSet.add_member(:x12_812, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_812", traits: {"smithy.api#enumValue" => "X12_812"}))
    X12TransactionSet.add_member(:x12_813, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_813", traits: {"smithy.api#enumValue" => "X12_813"}))
    X12TransactionSet.add_member(:x12_814, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_814", traits: {"smithy.api#enumValue" => "X12_814"}))
    X12TransactionSet.add_member(:x12_815, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_815", traits: {"smithy.api#enumValue" => "X12_815"}))
    X12TransactionSet.add_member(:x12_816, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_816", traits: {"smithy.api#enumValue" => "X12_816"}))
    X12TransactionSet.add_member(:x12_818, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_818", traits: {"smithy.api#enumValue" => "X12_818"}))
    X12TransactionSet.add_member(:x12_819, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_819", traits: {"smithy.api#enumValue" => "X12_819"}))
    X12TransactionSet.add_member(:x12_820, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_820", traits: {"smithy.api#enumValue" => "X12_820"}))
    X12TransactionSet.add_member(:x12_821, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_821", traits: {"smithy.api#enumValue" => "X12_821"}))
    X12TransactionSet.add_member(:x12_822, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_822", traits: {"smithy.api#enumValue" => "X12_822"}))
    X12TransactionSet.add_member(:x12_823, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_823", traits: {"smithy.api#enumValue" => "X12_823"}))
    X12TransactionSet.add_member(:x12_824, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_824", traits: {"smithy.api#enumValue" => "X12_824"}))
    X12TransactionSet.add_member(:x12_826, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_826", traits: {"smithy.api#enumValue" => "X12_826"}))
    X12TransactionSet.add_member(:x12_827, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_827", traits: {"smithy.api#enumValue" => "X12_827"}))
    X12TransactionSet.add_member(:x12_828, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_828", traits: {"smithy.api#enumValue" => "X12_828"}))
    X12TransactionSet.add_member(:x12_829, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_829", traits: {"smithy.api#enumValue" => "X12_829"}))
    X12TransactionSet.add_member(:x12_830, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_830", traits: {"smithy.api#enumValue" => "X12_830"}))
    X12TransactionSet.add_member(:x12_831, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_831", traits: {"smithy.api#enumValue" => "X12_831"}))
    X12TransactionSet.add_member(:x12_832, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_832", traits: {"smithy.api#enumValue" => "X12_832"}))
    X12TransactionSet.add_member(:x12_833, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_833", traits: {"smithy.api#enumValue" => "X12_833"}))
    X12TransactionSet.add_member(:x12_834, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_834", traits: {"smithy.api#enumValue" => "X12_834"}))
    X12TransactionSet.add_member(:x12_835, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_835", traits: {"smithy.api#enumValue" => "X12_835"}))
    X12TransactionSet.add_member(:x12_836, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_836", traits: {"smithy.api#enumValue" => "X12_836"}))
    X12TransactionSet.add_member(:x12_837, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_837", traits: {"smithy.api#enumValue" => "X12_837"}))
    X12TransactionSet.add_member(:x12_838, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_838", traits: {"smithy.api#enumValue" => "X12_838"}))
    X12TransactionSet.add_member(:x12_839, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_839", traits: {"smithy.api#enumValue" => "X12_839"}))
    X12TransactionSet.add_member(:x12_840, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_840", traits: {"smithy.api#enumValue" => "X12_840"}))
    X12TransactionSet.add_member(:x12_841, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_841", traits: {"smithy.api#enumValue" => "X12_841"}))
    X12TransactionSet.add_member(:x12_842, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_842", traits: {"smithy.api#enumValue" => "X12_842"}))
    X12TransactionSet.add_member(:x12_843, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_843", traits: {"smithy.api#enumValue" => "X12_843"}))
    X12TransactionSet.add_member(:x12_844, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_844", traits: {"smithy.api#enumValue" => "X12_844"}))
    X12TransactionSet.add_member(:x12_845, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_845", traits: {"smithy.api#enumValue" => "X12_845"}))
    X12TransactionSet.add_member(:x12_846, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_846", traits: {"smithy.api#enumValue" => "X12_846"}))
    X12TransactionSet.add_member(:x12_847, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_847", traits: {"smithy.api#enumValue" => "X12_847"}))
    X12TransactionSet.add_member(:x12_848, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_848", traits: {"smithy.api#enumValue" => "X12_848"}))
    X12TransactionSet.add_member(:x12_849, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_849", traits: {"smithy.api#enumValue" => "X12_849"}))
    X12TransactionSet.add_member(:x12_850, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_850", traits: {"smithy.api#enumValue" => "X12_850"}))
    X12TransactionSet.add_member(:x12_851, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_851", traits: {"smithy.api#enumValue" => "X12_851"}))
    X12TransactionSet.add_member(:x12_852, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_852", traits: {"smithy.api#enumValue" => "X12_852"}))
    X12TransactionSet.add_member(:x12_853, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_853", traits: {"smithy.api#enumValue" => "X12_853"}))
    X12TransactionSet.add_member(:x12_854, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_854", traits: {"smithy.api#enumValue" => "X12_854"}))
    X12TransactionSet.add_member(:x12_855, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_855", traits: {"smithy.api#enumValue" => "X12_855"}))
    X12TransactionSet.add_member(:x12_856, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_856", traits: {"smithy.api#enumValue" => "X12_856"}))
    X12TransactionSet.add_member(:x12_857, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_857", traits: {"smithy.api#enumValue" => "X12_857"}))
    X12TransactionSet.add_member(:x12_858, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_858", traits: {"smithy.api#enumValue" => "X12_858"}))
    X12TransactionSet.add_member(:x12_859, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_859", traits: {"smithy.api#enumValue" => "X12_859"}))
    X12TransactionSet.add_member(:x12_860, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_860", traits: {"smithy.api#enumValue" => "X12_860"}))
    X12TransactionSet.add_member(:x12_861, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_861", traits: {"smithy.api#enumValue" => "X12_861"}))
    X12TransactionSet.add_member(:x12_862, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_862", traits: {"smithy.api#enumValue" => "X12_862"}))
    X12TransactionSet.add_member(:x12_863, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_863", traits: {"smithy.api#enumValue" => "X12_863"}))
    X12TransactionSet.add_member(:x12_864, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_864", traits: {"smithy.api#enumValue" => "X12_864"}))
    X12TransactionSet.add_member(:x12_865, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_865", traits: {"smithy.api#enumValue" => "X12_865"}))
    X12TransactionSet.add_member(:x12_866, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_866", traits: {"smithy.api#enumValue" => "X12_866"}))
    X12TransactionSet.add_member(:x12_867, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_867", traits: {"smithy.api#enumValue" => "X12_867"}))
    X12TransactionSet.add_member(:x12_868, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_868", traits: {"smithy.api#enumValue" => "X12_868"}))
    X12TransactionSet.add_member(:x12_869, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_869", traits: {"smithy.api#enumValue" => "X12_869"}))
    X12TransactionSet.add_member(:x12_870, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_870", traits: {"smithy.api#enumValue" => "X12_870"}))
    X12TransactionSet.add_member(:x12_871, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_871", traits: {"smithy.api#enumValue" => "X12_871"}))
    X12TransactionSet.add_member(:x12_872, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_872", traits: {"smithy.api#enumValue" => "X12_872"}))
    X12TransactionSet.add_member(:x12_873, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_873", traits: {"smithy.api#enumValue" => "X12_873"}))
    X12TransactionSet.add_member(:x12_874, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_874", traits: {"smithy.api#enumValue" => "X12_874"}))
    X12TransactionSet.add_member(:x12_875, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_875", traits: {"smithy.api#enumValue" => "X12_875"}))
    X12TransactionSet.add_member(:x12_876, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_876", traits: {"smithy.api#enumValue" => "X12_876"}))
    X12TransactionSet.add_member(:x12_877, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_877", traits: {"smithy.api#enumValue" => "X12_877"}))
    X12TransactionSet.add_member(:x12_878, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_878", traits: {"smithy.api#enumValue" => "X12_878"}))
    X12TransactionSet.add_member(:x12_879, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_879", traits: {"smithy.api#enumValue" => "X12_879"}))
    X12TransactionSet.add_member(:x12_880, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_880", traits: {"smithy.api#enumValue" => "X12_880"}))
    X12TransactionSet.add_member(:x12_881, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_881", traits: {"smithy.api#enumValue" => "X12_881"}))
    X12TransactionSet.add_member(:x12_882, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_882", traits: {"smithy.api#enumValue" => "X12_882"}))
    X12TransactionSet.add_member(:x12_883, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_883", traits: {"smithy.api#enumValue" => "X12_883"}))
    X12TransactionSet.add_member(:x12_884, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_884", traits: {"smithy.api#enumValue" => "X12_884"}))
    X12TransactionSet.add_member(:x12_885, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_885", traits: {"smithy.api#enumValue" => "X12_885"}))
    X12TransactionSet.add_member(:x12_886, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_886", traits: {"smithy.api#enumValue" => "X12_886"}))
    X12TransactionSet.add_member(:x12_887, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_887", traits: {"smithy.api#enumValue" => "X12_887"}))
    X12TransactionSet.add_member(:x12_888, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_888", traits: {"smithy.api#enumValue" => "X12_888"}))
    X12TransactionSet.add_member(:x12_889, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_889", traits: {"smithy.api#enumValue" => "X12_889"}))
    X12TransactionSet.add_member(:x12_891, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_891", traits: {"smithy.api#enumValue" => "X12_891"}))
    X12TransactionSet.add_member(:x12_893, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_893", traits: {"smithy.api#enumValue" => "X12_893"}))
    X12TransactionSet.add_member(:x12_894, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_894", traits: {"smithy.api#enumValue" => "X12_894"}))
    X12TransactionSet.add_member(:x12_895, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_895", traits: {"smithy.api#enumValue" => "X12_895"}))
    X12TransactionSet.add_member(:x12_896, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_896", traits: {"smithy.api#enumValue" => "X12_896"}))
    X12TransactionSet.add_member(:x12_920, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_920", traits: {"smithy.api#enumValue" => "X12_920"}))
    X12TransactionSet.add_member(:x12_924, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_924", traits: {"smithy.api#enumValue" => "X12_924"}))
    X12TransactionSet.add_member(:x12_925, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_925", traits: {"smithy.api#enumValue" => "X12_925"}))
    X12TransactionSet.add_member(:x12_926, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_926", traits: {"smithy.api#enumValue" => "X12_926"}))
    X12TransactionSet.add_member(:x12_928, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_928", traits: {"smithy.api#enumValue" => "X12_928"}))
    X12TransactionSet.add_member(:x12_940, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_940", traits: {"smithy.api#enumValue" => "X12_940"}))
    X12TransactionSet.add_member(:x12_943, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_943", traits: {"smithy.api#enumValue" => "X12_943"}))
    X12TransactionSet.add_member(:x12_944, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_944", traits: {"smithy.api#enumValue" => "X12_944"}))
    X12TransactionSet.add_member(:x12_945, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_945", traits: {"smithy.api#enumValue" => "X12_945"}))
    X12TransactionSet.add_member(:x12_947, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_947", traits: {"smithy.api#enumValue" => "X12_947"}))
    X12TransactionSet.add_member(:x12_980, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_980", traits: {"smithy.api#enumValue" => "X12_980"}))
    X12TransactionSet.add_member(:x12_990, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_990", traits: {"smithy.api#enumValue" => "X12_990"}))
    X12TransactionSet.add_member(:x12_993, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_993", traits: {"smithy.api#enumValue" => "X12_993"}))
    X12TransactionSet.add_member(:x12_996, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_996", traits: {"smithy.api#enumValue" => "X12_996"}))
    X12TransactionSet.add_member(:x12_997, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_997", traits: {"smithy.api#enumValue" => "X12_997"}))
    X12TransactionSet.add_member(:x12_998, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_998", traits: {"smithy.api#enumValue" => "X12_998"}))
    X12TransactionSet.add_member(:x12_999, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_999", traits: {"smithy.api#enumValue" => "X12_999"}))
    X12TransactionSet.add_member(:x12_270_x279, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_270_X279", traits: {"smithy.api#enumValue" => "X12_270_X279"}))
    X12TransactionSet.add_member(:x12_271_x279, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_271_X279", traits: {"smithy.api#enumValue" => "X12_271_X279"}))
    X12TransactionSet.add_member(:x12_275_x210, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_275_X210", traits: {"smithy.api#enumValue" => "X12_275_X210"}))
    X12TransactionSet.add_member(:x12_275_x211, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_275_X211", traits: {"smithy.api#enumValue" => "X12_275_X211"}))
    X12TransactionSet.add_member(:x12_276_x212, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_276_X212", traits: {"smithy.api#enumValue" => "X12_276_X212"}))
    X12TransactionSet.add_member(:x12_277_x212, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_277_X212", traits: {"smithy.api#enumValue" => "X12_277_X212"}))
    X12TransactionSet.add_member(:x12_277_x214, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_277_X214", traits: {"smithy.api#enumValue" => "X12_277_X214"}))
    X12TransactionSet.add_member(:x12_277_x364, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_277_X364", traits: {"smithy.api#enumValue" => "X12_277_X364"}))
    X12TransactionSet.add_member(:x12_278_x217, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_278_X217", traits: {"smithy.api#enumValue" => "X12_278_X217"}))
    X12TransactionSet.add_member(:x12_820_x218, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_820_X218", traits: {"smithy.api#enumValue" => "X12_820_X218"}))
    X12TransactionSet.add_member(:x12_820_x306, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_820_X306", traits: {"smithy.api#enumValue" => "X12_820_X306"}))
    X12TransactionSet.add_member(:x12_824_x186, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_824_X186", traits: {"smithy.api#enumValue" => "X12_824_X186"}))
    X12TransactionSet.add_member(:x12_834_x220, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_834_X220", traits: {"smithy.api#enumValue" => "X12_834_X220"}))
    X12TransactionSet.add_member(:x12_834_x307, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_834_X307", traits: {"smithy.api#enumValue" => "X12_834_X307"}))
    X12TransactionSet.add_member(:x12_834_x318, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_834_X318", traits: {"smithy.api#enumValue" => "X12_834_X318"}))
    X12TransactionSet.add_member(:x12_835_x221, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_835_X221", traits: {"smithy.api#enumValue" => "X12_835_X221"}))
    X12TransactionSet.add_member(:x12_837_x222, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_837_X222", traits: {"smithy.api#enumValue" => "X12_837_X222"}))
    X12TransactionSet.add_member(:x12_837_x223, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_837_X223", traits: {"smithy.api#enumValue" => "X12_837_X223"}))
    X12TransactionSet.add_member(:x12_837_x224, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_837_X224", traits: {"smithy.api#enumValue" => "X12_837_X224"}))
    X12TransactionSet.add_member(:x12_837_x291, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_837_X291", traits: {"smithy.api#enumValue" => "X12_837_X291"}))
    X12TransactionSet.add_member(:x12_837_x292, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_837_X292", traits: {"smithy.api#enumValue" => "X12_837_X292"}))
    X12TransactionSet.add_member(:x12_837_x298, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_837_X298", traits: {"smithy.api#enumValue" => "X12_837_X298"}))
    X12TransactionSet.add_member(:x12_999_x231, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "X12_999_X231", traits: {"smithy.api#enumValue" => "X12_999_X231"}))
    X12ValidationOptions.add_member(:validation_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: X12ValidationRules, location_name: "validationRules"))
    X12ValidationOptions.type = Types::X12ValidationOptions
    X12ValidationRule.add_member(:code_list_validation_rule, Types::X12ValidationRule::CodeListValidationRule, ::Smithy::Schema::Shapes::MemberShape.new(target: X12CodeListValidationRule, location_name: "codeListValidationRule"))
    X12ValidationRule.add_member(:element_length_validation_rule, Types::X12ValidationRule::ElementLengthValidationRule, ::Smithy::Schema::Shapes::MemberShape.new(target: X12ElementLengthValidationRule, location_name: "elementLengthValidationRule"))
    X12ValidationRule.add_member(:element_requirement_validation_rule, Types::X12ValidationRule::ElementRequirementValidationRule, ::Smithy::Schema::Shapes::MemberShape.new(target: X12ElementRequirementValidationRule, location_name: "elementRequirementValidationRule"))
    X12ValidationRule.add_member(:unknown, Types::X12ValidationRule::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    X12ValidationRule.type = Types::X12ValidationRule
    X12ValidationRules.member = ::Smithy::Schema::Shapes::MemberShape.new(target: X12ValidationRule)
    X12Version.add_member(:version_4010, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VERSION_4010", traits: {"smithy.api#enumValue" => "VERSION_4010"}))
    X12Version.add_member(:version_4030, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VERSION_4030", traits: {"smithy.api#enumValue" => "VERSION_4030"}))
    X12Version.add_member(:version_4050, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VERSION_4050", traits: {"smithy.api#enumValue" => "VERSION_4050"}))
    X12Version.add_member(:version_4060, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VERSION_4060", traits: {"smithy.api#enumValue" => "VERSION_4060"}))
    X12Version.add_member(:version_5010, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VERSION_5010", traits: {"smithy.api#enumValue" => "VERSION_5010"}))
    X12Version.add_member(:version_5010_hipaa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VERSION_5010_HIPAA", traits: {"smithy.api#enumValue" => "VERSION_5010_HIPAA"}))

    B2BI = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.b2bi#B2BI"
      service.name = "B2BI"
      service.version = "2022-06-23"
      service.traits = {"aws.api#service" => {"sdkId" => "b2bi", "endpointPrefix" => "b2bi"}, "aws.api#tagEnabled" => {}, "aws.auth#sigv4" => {"name" => "b2bi"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "AWS B2B Data Interchange", "smithy.api#unstable" => {}}
      service.add_operation(:create_capability, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.b2bi#CreateCapability"
        operation.name = "CreateCapability"
        operation.input = CreateCapabilityRequest
        operation.output = CreateCapabilityResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#requiredActions" => ["b2bi:TagResource"], "smithy.api#http" => {"code" => 201, "uri" => "/capabilities", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_partnership, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.b2bi#CreatePartnership"
        operation.name = "CreatePartnership"
        operation.input = CreatePartnershipRequest
        operation.output = CreatePartnershipResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#requiredActions" => ["b2bi:TagResource"], "smithy.api#http" => {"code" => 201, "uri" => "/partnerships", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.b2bi#CreateProfile"
        operation.name = "CreateProfile"
        operation.input = CreateProfileRequest
        operation.output = CreateProfileResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#requiredActions" => ["b2bi:TagResource", "logs:CreateLogDelivery", "logs:CreateLogGroup", "logs:CreateLogStream", "logs:DeleteLogDelivery", "logs:DescribeLogGroups", "logs:DescribeLogStreams", "logs:DescribeResourcePolicies", "logs:ListLogDeliveries", "logs:PutLogEvents", "logs:PutResourcePolicy"], "smithy.api#http" => {"code" => 201, "uri" => "/profiles", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_starter_mapping_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.b2bi#CreateStarterMappingTemplate"
        operation.name = "CreateStarterMappingTemplate"
        operation.input = CreateStarterMappingTemplateRequest
        operation.output = CreateStarterMappingTemplateResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/createmappingstarttemplate", "method" => "POST"}}
      end)
      service.add_operation(:create_transformer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.b2bi#CreateTransformer"
        operation.name = "CreateTransformer"
        operation.input = CreateTransformerRequest
        operation.output = CreateTransformerResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#requiredActions" => ["b2bi:TagResource", "b2bi:UpdateTransformer", "logs:CreateLogDelivery", "logs:CreateLogGroup", "logs:CreateLogStream", "logs:DescribeLogGroups", "logs:DescribeLogStreams", "logs:DescribeResourcePolicies", "logs:ListLogDeliveries", "logs:PutLogEvents", "logs:PutResourcePolicy"], "smithy.api#http" => {"code" => 201, "uri" => "/transformers", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_capability, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.b2bi#DeleteCapability"
        operation.name = "DeleteCapability"
        operation.input = DeleteCapabilityRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/capabilities/{capabilityId}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_partnership, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.b2bi#DeletePartnership"
        operation.name = "DeletePartnership"
        operation.input = DeletePartnershipRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/partnerships/{partnershipId}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.b2bi#DeleteProfile"
        operation.name = "DeleteProfile"
        operation.input = DeleteProfileRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#requiredActions" => ["logs:DeleteLogDelivery", "logs:ListLogDeliveries"], "smithy.api#http" => {"code" => 200, "uri" => "/profiles/{profileId}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_transformer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.b2bi#DeleteTransformer"
        operation.name = "DeleteTransformer"
        operation.input = DeleteTransformerRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/transformers/{transformerId}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:generate_mapping, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.b2bi#GenerateMapping"
        operation.name = "GenerateMapping"
        operation.input = GenerateMappingRequest
        operation.output = GenerateMappingResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/generate-mapping", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_capability, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.b2bi#GetCapability"
        operation.name = "GetCapability"
        operation.input = GetCapabilityRequest
        operation.output = GetCapabilityResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/capabilities/{capabilityId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_partnership, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.b2bi#GetPartnership"
        operation.name = "GetPartnership"
        operation.input = GetPartnershipRequest
        operation.output = GetPartnershipResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/partnerships/{partnershipId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.b2bi#GetProfile"
        operation.name = "GetProfile"
        operation.input = GetProfileRequest
        operation.output = GetProfileResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#requiredActions" => ["b2bi:ListTagsForResource"], "smithy.api#http" => {"code" => 200, "uri" => "/profiles/{profileId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_transformer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.b2bi#GetTransformer"
        operation.name = "GetTransformer"
        operation.input = GetTransformerRequest
        operation.output = GetTransformerResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/transformers/{transformerId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_transformer_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.b2bi#GetTransformerJob"
        operation.name = "GetTransformerJob"
        operation.input = GetTransformerJobRequest
        operation.output = GetTransformerJobResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/transformer-jobs/{transformerJobId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_capabilities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.b2bi#ListCapabilities"
        operation.name = "ListCapabilities"
        operation.input = ListCapabilitiesRequest
        operation.output = ListCapabilitiesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/capabilities", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCapabilities.new
      end)
      service.add_operation(:list_partnerships, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.b2bi#ListPartnerships"
        operation.name = "ListPartnerships"
        operation.input = ListPartnershipsRequest
        operation.output = ListPartnershipsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/partnerships", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPartnerships.new
      end)
      service.add_operation(:list_profiles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.b2bi#ListProfiles"
        operation.name = "ListProfiles"
        operation.input = ListProfilesRequest
        operation.output = ListProfilesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/profiles", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListProfiles.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.b2bi#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/tags/{ResourceARN}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_transformers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.b2bi#ListTransformers"
        operation.name = "ListTransformers"
        operation.input = ListTransformersRequest
        operation.output = ListTransformersResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/transformers", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTransformers.new
      end)
      service.add_operation(:start_transformer_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.b2bi#StartTransformerJob"
        operation.name = "StartTransformerJob"
        operation.input = StartTransformerJobRequest
        operation.output = StartTransformerJobResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/transformer-jobs", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.b2bi#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/tags/{ResourceARN}", "method" => "POST"}}
      end)
      service.add_operation(:test_conversion, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.b2bi#TestConversion"
        operation.name = "TestConversion"
        operation.input = TestConversionRequest
        operation.output = TestConversionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/testconversion", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:test_mapping, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.b2bi#TestMapping"
        operation.name = "TestMapping"
        operation.input = TestMappingRequest
        operation.output = TestMappingResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 201, "uri" => "/testmapping", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:test_parsing, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.b2bi#TestParsing"
        operation.name = "TestParsing"
        operation.input = TestParsingRequest
        operation.output = TestParsingResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 201, "uri" => "/testparsing", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.b2bi#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "uri" => "/tags/{ResourceARN}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_capability, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.b2bi#UpdateCapability"
        operation.name = "UpdateCapability"
        operation.input = UpdateCapabilityRequest
        operation.output = UpdateCapabilityResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#requiredActions" => ["b2bi:TagResource", "b2bi:UntagResource"], "smithy.api#http" => {"code" => 200, "uri" => "/capabilities/{capabilityId}", "method" => "PATCH"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_partnership, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.b2bi#UpdatePartnership"
        operation.name = "UpdatePartnership"
        operation.input = UpdatePartnershipRequest
        operation.output = UpdatePartnershipResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#requiredActions" => ["b2bi:TagResource", "b2bi:UntagResource"], "smithy.api#http" => {"code" => 200, "uri" => "/partnerships/{partnershipId}", "method" => "PATCH"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.b2bi#UpdateProfile"
        operation.name = "UpdateProfile"
        operation.input = UpdateProfileRequest
        operation.output = UpdateProfileResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#requiredActions" => ["b2bi:TagResource", "b2bi:UntagResource"], "smithy.api#http" => {"code" => 200, "uri" => "/profiles/{profileId}", "method" => "PATCH"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_transformer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.b2bi#UpdateTransformer"
        operation.name = "UpdateTransformer"
        operation.input = UpdateTransformerRequest
        operation.output = UpdateTransformerResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#requiredActions" => ["b2bi:TagResource", "b2bi:UntagResource"], "smithy.api#http" => {"code" => 200, "uri" => "/transformers/{transformerId}", "method" => "PATCH"}, "smithy.api#idempotent" => {}}
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
