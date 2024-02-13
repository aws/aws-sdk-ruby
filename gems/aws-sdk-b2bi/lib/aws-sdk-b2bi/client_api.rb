# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::B2bi
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    BucketName = Shapes::StringShape.new(name: 'BucketName')
    BusinessName = Shapes::StringShape.new(name: 'BusinessName')
    CapabilityConfiguration = Shapes::UnionShape.new(name: 'CapabilityConfiguration')
    CapabilityId = Shapes::StringShape.new(name: 'CapabilityId')
    CapabilityList = Shapes::ListShape.new(name: 'CapabilityList')
    CapabilityName = Shapes::StringShape.new(name: 'CapabilityName')
    CapabilitySummary = Shapes::StructureShape.new(name: 'CapabilitySummary')
    CapabilityType = Shapes::StringShape.new(name: 'CapabilityType')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateCapabilityRequest = Shapes::StructureShape.new(name: 'CreateCapabilityRequest')
    CreateCapabilityResponse = Shapes::StructureShape.new(name: 'CreateCapabilityResponse')
    CreatePartnershipRequest = Shapes::StructureShape.new(name: 'CreatePartnershipRequest')
    CreatePartnershipResponse = Shapes::StructureShape.new(name: 'CreatePartnershipResponse')
    CreateProfileRequest = Shapes::StructureShape.new(name: 'CreateProfileRequest')
    CreateProfileResponse = Shapes::StructureShape.new(name: 'CreateProfileResponse')
    CreateTransformerRequest = Shapes::StructureShape.new(name: 'CreateTransformerRequest')
    CreateTransformerResponse = Shapes::StructureShape.new(name: 'CreateTransformerResponse')
    CreatedDate = Shapes::TimestampShape.new(name: 'CreatedDate', timestampFormat: "iso8601")
    DeleteCapabilityRequest = Shapes::StructureShape.new(name: 'DeleteCapabilityRequest')
    DeletePartnershipRequest = Shapes::StructureShape.new(name: 'DeletePartnershipRequest')
    DeleteProfileRequest = Shapes::StructureShape.new(name: 'DeleteProfileRequest')
    DeleteTransformerRequest = Shapes::StructureShape.new(name: 'DeleteTransformerRequest')
    EdiConfiguration = Shapes::StructureShape.new(name: 'EdiConfiguration')
    EdiType = Shapes::UnionShape.new(name: 'EdiType')
    Email = Shapes::StringShape.new(name: 'Email')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    FileFormat = Shapes::StringShape.new(name: 'FileFormat')
    FileLocation = Shapes::StringShape.new(name: 'FileLocation')
    GetCapabilityRequest = Shapes::StructureShape.new(name: 'GetCapabilityRequest')
    GetCapabilityResponse = Shapes::StructureShape.new(name: 'GetCapabilityResponse')
    GetPartnershipRequest = Shapes::StructureShape.new(name: 'GetPartnershipRequest')
    GetPartnershipResponse = Shapes::StructureShape.new(name: 'GetPartnershipResponse')
    GetProfileRequest = Shapes::StructureShape.new(name: 'GetProfileRequest')
    GetProfileResponse = Shapes::StructureShape.new(name: 'GetProfileResponse')
    GetTransformerJobRequest = Shapes::StructureShape.new(name: 'GetTransformerJobRequest')
    GetTransformerJobResponse = Shapes::StructureShape.new(name: 'GetTransformerJobResponse')
    GetTransformerRequest = Shapes::StructureShape.new(name: 'GetTransformerRequest')
    GetTransformerResponse = Shapes::StructureShape.new(name: 'GetTransformerResponse')
    InstructionsDocuments = Shapes::ListShape.new(name: 'InstructionsDocuments')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListCapabilitiesRequest = Shapes::StructureShape.new(name: 'ListCapabilitiesRequest')
    ListCapabilitiesResponse = Shapes::StructureShape.new(name: 'ListCapabilitiesResponse')
    ListPartnershipsRequest = Shapes::StructureShape.new(name: 'ListPartnershipsRequest')
    ListPartnershipsResponse = Shapes::StructureShape.new(name: 'ListPartnershipsResponse')
    ListProfilesRequest = Shapes::StructureShape.new(name: 'ListProfilesRequest')
    ListProfilesResponse = Shapes::StructureShape.new(name: 'ListProfilesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTransformersRequest = Shapes::StructureShape.new(name: 'ListTransformersRequest')
    ListTransformersResponse = Shapes::StructureShape.new(name: 'ListTransformersResponse')
    LogGroupName = Shapes::StringShape.new(name: 'LogGroupName')
    Logging = Shapes::StringShape.new(name: 'Logging')
    MappingTemplate = Shapes::StringShape.new(name: 'MappingTemplate')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    ModifiedDate = Shapes::TimestampShape.new(name: 'ModifiedDate', timestampFormat: "iso8601")
    PageToken = Shapes::StringShape.new(name: 'PageToken')
    PartnerName = Shapes::StringShape.new(name: 'PartnerName')
    PartnershipCapabilities = Shapes::ListShape.new(name: 'PartnershipCapabilities')
    PartnershipId = Shapes::StringShape.new(name: 'PartnershipId')
    PartnershipList = Shapes::ListShape.new(name: 'PartnershipList')
    PartnershipSummary = Shapes::StructureShape.new(name: 'PartnershipSummary')
    Phone = Shapes::StringShape.new(name: 'Phone')
    ProfileId = Shapes::StringShape.new(name: 'ProfileId')
    ProfileList = Shapes::ListShape.new(name: 'ProfileList')
    ProfileName = Shapes::StringShape.new(name: 'ProfileName')
    ProfileSummary = Shapes::StructureShape.new(name: 'ProfileSummary')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    S3Key = Shapes::StringShape.new(name: 'S3Key')
    S3Location = Shapes::StructureShape.new(name: 'S3Location')
    S3LocationList = Shapes::ListShape.new(name: 'S3LocationList')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    StartTransformerJobRequest = Shapes::StructureShape.new(name: 'StartTransformerJobRequest')
    StartTransformerJobResponse = Shapes::StructureShape.new(name: 'StartTransformerJobResponse')
    String = Shapes::StringShape.new(name: 'String')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TestMappingInputFileContent = Shapes::StringShape.new(name: 'TestMappingInputFileContent')
    TestMappingRequest = Shapes::StructureShape.new(name: 'TestMappingRequest')
    TestMappingResponse = Shapes::StructureShape.new(name: 'TestMappingResponse')
    TestParsingRequest = Shapes::StructureShape.new(name: 'TestParsingRequest')
    TestParsingResponse = Shapes::StructureShape.new(name: 'TestParsingResponse')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TradingPartnerId = Shapes::StringShape.new(name: 'TradingPartnerId')
    TransformerId = Shapes::StringShape.new(name: 'TransformerId')
    TransformerJobId = Shapes::StringShape.new(name: 'TransformerJobId')
    TransformerJobStatus = Shapes::StringShape.new(name: 'TransformerJobStatus')
    TransformerList = Shapes::ListShape.new(name: 'TransformerList')
    TransformerName = Shapes::StringShape.new(name: 'TransformerName')
    TransformerStatus = Shapes::StringShape.new(name: 'TransformerStatus')
    TransformerSummary = Shapes::StructureShape.new(name: 'TransformerSummary')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateCapabilityRequest = Shapes::StructureShape.new(name: 'UpdateCapabilityRequest')
    UpdateCapabilityResponse = Shapes::StructureShape.new(name: 'UpdateCapabilityResponse')
    UpdatePartnershipRequest = Shapes::StructureShape.new(name: 'UpdatePartnershipRequest')
    UpdatePartnershipResponse = Shapes::StructureShape.new(name: 'UpdatePartnershipResponse')
    UpdateProfileRequest = Shapes::StructureShape.new(name: 'UpdateProfileRequest')
    UpdateProfileResponse = Shapes::StructureShape.new(name: 'UpdateProfileResponse')
    UpdateTransformerRequest = Shapes::StructureShape.new(name: 'UpdateTransformerRequest')
    UpdateTransformerResponse = Shapes::StructureShape.new(name: 'UpdateTransformerResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    X12Details = Shapes::StructureShape.new(name: 'X12Details')
    X12TransactionSet = Shapes::StringShape.new(name: 'X12TransactionSet')
    X12Version = Shapes::StringShape.new(name: 'X12Version')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    CapabilityConfiguration.add_member(:edi, Shapes::ShapeRef.new(shape: EdiConfiguration, location_name: "edi"))
    CapabilityConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CapabilityConfiguration.add_member_subclass(:edi, Types::CapabilityConfiguration::Edi)
    CapabilityConfiguration.add_member_subclass(:unknown, Types::CapabilityConfiguration::Unknown)
    CapabilityConfiguration.struct_class = Types::CapabilityConfiguration

    CapabilityList.member = Shapes::ShapeRef.new(shape: CapabilitySummary)

    CapabilitySummary.add_member(:capability_id, Shapes::ShapeRef.new(shape: CapabilityId, required: true, location_name: "capabilityId"))
    CapabilitySummary.add_member(:name, Shapes::ShapeRef.new(shape: CapabilityName, required: true, location_name: "name"))
    CapabilitySummary.add_member(:type, Shapes::ShapeRef.new(shape: CapabilityType, required: true, location_name: "type"))
    CapabilitySummary.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedDate, required: true, location_name: "createdAt"))
    CapabilitySummary.add_member(:modified_at, Shapes::ShapeRef.new(shape: ModifiedDate, location_name: "modifiedAt"))
    CapabilitySummary.struct_class = Types::CapabilitySummary

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateCapabilityRequest.add_member(:name, Shapes::ShapeRef.new(shape: CapabilityName, required: true, location_name: "name"))
    CreateCapabilityRequest.add_member(:type, Shapes::ShapeRef.new(shape: CapabilityType, required: true, location_name: "type"))
    CreateCapabilityRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: CapabilityConfiguration, required: true, location_name: "configuration"))
    CreateCapabilityRequest.add_member(:instructions_documents, Shapes::ShapeRef.new(shape: InstructionsDocuments, location_name: "instructionsDocuments"))
    CreateCapabilityRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateCapabilityRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateCapabilityRequest.struct_class = Types::CreateCapabilityRequest

    CreateCapabilityResponse.add_member(:capability_id, Shapes::ShapeRef.new(shape: CapabilityId, required: true, location_name: "capabilityId"))
    CreateCapabilityResponse.add_member(:capability_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "capabilityArn"))
    CreateCapabilityResponse.add_member(:name, Shapes::ShapeRef.new(shape: CapabilityName, required: true, location_name: "name"))
    CreateCapabilityResponse.add_member(:type, Shapes::ShapeRef.new(shape: CapabilityType, required: true, location_name: "type"))
    CreateCapabilityResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: CapabilityConfiguration, required: true, location_name: "configuration"))
    CreateCapabilityResponse.add_member(:instructions_documents, Shapes::ShapeRef.new(shape: InstructionsDocuments, location_name: "instructionsDocuments"))
    CreateCapabilityResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedDate, required: true, location_name: "createdAt"))
    CreateCapabilityResponse.struct_class = Types::CreateCapabilityResponse

    CreatePartnershipRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileId, required: true, location_name: "profileId"))
    CreatePartnershipRequest.add_member(:name, Shapes::ShapeRef.new(shape: PartnerName, required: true, location_name: "name"))
    CreatePartnershipRequest.add_member(:email, Shapes::ShapeRef.new(shape: Email, required: true, location_name: "email"))
    CreatePartnershipRequest.add_member(:phone, Shapes::ShapeRef.new(shape: Phone, location_name: "phone"))
    CreatePartnershipRequest.add_member(:capabilities, Shapes::ShapeRef.new(shape: PartnershipCapabilities, location_name: "capabilities"))
    CreatePartnershipRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreatePartnershipRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreatePartnershipRequest.struct_class = Types::CreatePartnershipRequest

    CreatePartnershipResponse.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileId, required: true, location_name: "profileId"))
    CreatePartnershipResponse.add_member(:partnership_id, Shapes::ShapeRef.new(shape: PartnershipId, required: true, location_name: "partnershipId"))
    CreatePartnershipResponse.add_member(:partnership_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "partnershipArn"))
    CreatePartnershipResponse.add_member(:name, Shapes::ShapeRef.new(shape: PartnerName, location_name: "name"))
    CreatePartnershipResponse.add_member(:email, Shapes::ShapeRef.new(shape: Email, location_name: "email"))
    CreatePartnershipResponse.add_member(:phone, Shapes::ShapeRef.new(shape: Phone, location_name: "phone"))
    CreatePartnershipResponse.add_member(:capabilities, Shapes::ShapeRef.new(shape: PartnershipCapabilities, location_name: "capabilities"))
    CreatePartnershipResponse.add_member(:trading_partner_id, Shapes::ShapeRef.new(shape: TradingPartnerId, location_name: "tradingPartnerId"))
    CreatePartnershipResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedDate, required: true, location_name: "createdAt"))
    CreatePartnershipResponse.struct_class = Types::CreatePartnershipResponse

    CreateProfileRequest.add_member(:name, Shapes::ShapeRef.new(shape: ProfileName, required: true, location_name: "name"))
    CreateProfileRequest.add_member(:email, Shapes::ShapeRef.new(shape: Email, location_name: "email"))
    CreateProfileRequest.add_member(:phone, Shapes::ShapeRef.new(shape: Phone, required: true, location_name: "phone"))
    CreateProfileRequest.add_member(:business_name, Shapes::ShapeRef.new(shape: BusinessName, required: true, location_name: "businessName"))
    CreateProfileRequest.add_member(:logging, Shapes::ShapeRef.new(shape: Logging, required: true, location_name: "logging"))
    CreateProfileRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateProfileRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateProfileRequest.struct_class = Types::CreateProfileRequest

    CreateProfileResponse.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileId, required: true, location_name: "profileId"))
    CreateProfileResponse.add_member(:profile_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "profileArn"))
    CreateProfileResponse.add_member(:name, Shapes::ShapeRef.new(shape: ProfileName, required: true, location_name: "name"))
    CreateProfileResponse.add_member(:business_name, Shapes::ShapeRef.new(shape: BusinessName, required: true, location_name: "businessName"))
    CreateProfileResponse.add_member(:phone, Shapes::ShapeRef.new(shape: Phone, required: true, location_name: "phone"))
    CreateProfileResponse.add_member(:email, Shapes::ShapeRef.new(shape: Email, location_name: "email"))
    CreateProfileResponse.add_member(:logging, Shapes::ShapeRef.new(shape: Logging, location_name: "logging"))
    CreateProfileResponse.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "logGroupName"))
    CreateProfileResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedDate, required: true, location_name: "createdAt"))
    CreateProfileResponse.struct_class = Types::CreateProfileResponse

    CreateTransformerRequest.add_member(:name, Shapes::ShapeRef.new(shape: TransformerName, required: true, location_name: "name"))
    CreateTransformerRequest.add_member(:file_format, Shapes::ShapeRef.new(shape: FileFormat, required: true, location_name: "fileFormat"))
    CreateTransformerRequest.add_member(:mapping_template, Shapes::ShapeRef.new(shape: MappingTemplate, required: true, location_name: "mappingTemplate"))
    CreateTransformerRequest.add_member(:edi_type, Shapes::ShapeRef.new(shape: EdiType, required: true, location_name: "ediType"))
    CreateTransformerRequest.add_member(:sample_document, Shapes::ShapeRef.new(shape: FileLocation, location_name: "sampleDocument"))
    CreateTransformerRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateTransformerRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateTransformerRequest.struct_class = Types::CreateTransformerRequest

    CreateTransformerResponse.add_member(:transformer_id, Shapes::ShapeRef.new(shape: TransformerId, required: true, location_name: "transformerId"))
    CreateTransformerResponse.add_member(:transformer_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "transformerArn"))
    CreateTransformerResponse.add_member(:name, Shapes::ShapeRef.new(shape: TransformerName, required: true, location_name: "name"))
    CreateTransformerResponse.add_member(:file_format, Shapes::ShapeRef.new(shape: FileFormat, required: true, location_name: "fileFormat"))
    CreateTransformerResponse.add_member(:mapping_template, Shapes::ShapeRef.new(shape: MappingTemplate, required: true, location_name: "mappingTemplate"))
    CreateTransformerResponse.add_member(:status, Shapes::ShapeRef.new(shape: TransformerStatus, required: true, location_name: "status"))
    CreateTransformerResponse.add_member(:edi_type, Shapes::ShapeRef.new(shape: EdiType, required: true, location_name: "ediType"))
    CreateTransformerResponse.add_member(:sample_document, Shapes::ShapeRef.new(shape: FileLocation, location_name: "sampleDocument"))
    CreateTransformerResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedDate, required: true, location_name: "createdAt"))
    CreateTransformerResponse.struct_class = Types::CreateTransformerResponse

    DeleteCapabilityRequest.add_member(:capability_id, Shapes::ShapeRef.new(shape: CapabilityId, required: true, location_name: "capabilityId"))
    DeleteCapabilityRequest.struct_class = Types::DeleteCapabilityRequest

    DeletePartnershipRequest.add_member(:partnership_id, Shapes::ShapeRef.new(shape: PartnershipId, required: true, location_name: "partnershipId"))
    DeletePartnershipRequest.struct_class = Types::DeletePartnershipRequest

    DeleteProfileRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileId, required: true, location_name: "profileId"))
    DeleteProfileRequest.struct_class = Types::DeleteProfileRequest

    DeleteTransformerRequest.add_member(:transformer_id, Shapes::ShapeRef.new(shape: TransformerId, required: true, location_name: "transformerId"))
    DeleteTransformerRequest.struct_class = Types::DeleteTransformerRequest

    EdiConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: EdiType, required: true, location_name: "type"))
    EdiConfiguration.add_member(:input_location, Shapes::ShapeRef.new(shape: S3Location, required: true, location_name: "inputLocation"))
    EdiConfiguration.add_member(:output_location, Shapes::ShapeRef.new(shape: S3Location, required: true, location_name: "outputLocation"))
    EdiConfiguration.add_member(:transformer_id, Shapes::ShapeRef.new(shape: TransformerId, required: true, location_name: "transformerId"))
    EdiConfiguration.struct_class = Types::EdiConfiguration

    EdiType.add_member(:x12_details, Shapes::ShapeRef.new(shape: X12Details, location_name: "x12Details"))
    EdiType.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EdiType.add_member_subclass(:x12_details, Types::EdiType::X12Details)
    EdiType.add_member_subclass(:unknown, Types::EdiType::Unknown)
    EdiType.struct_class = Types::EdiType

    GetCapabilityRequest.add_member(:capability_id, Shapes::ShapeRef.new(shape: CapabilityId, required: true, location_name: "capabilityId"))
    GetCapabilityRequest.struct_class = Types::GetCapabilityRequest

    GetCapabilityResponse.add_member(:capability_id, Shapes::ShapeRef.new(shape: CapabilityId, required: true, location_name: "capabilityId"))
    GetCapabilityResponse.add_member(:capability_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "capabilityArn"))
    GetCapabilityResponse.add_member(:name, Shapes::ShapeRef.new(shape: CapabilityName, required: true, location_name: "name"))
    GetCapabilityResponse.add_member(:type, Shapes::ShapeRef.new(shape: CapabilityType, required: true, location_name: "type"))
    GetCapabilityResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: CapabilityConfiguration, required: true, location_name: "configuration"))
    GetCapabilityResponse.add_member(:instructions_documents, Shapes::ShapeRef.new(shape: InstructionsDocuments, location_name: "instructionsDocuments"))
    GetCapabilityResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedDate, required: true, location_name: "createdAt"))
    GetCapabilityResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: ModifiedDate, location_name: "modifiedAt"))
    GetCapabilityResponse.struct_class = Types::GetCapabilityResponse

    GetPartnershipRequest.add_member(:partnership_id, Shapes::ShapeRef.new(shape: PartnershipId, required: true, location_name: "partnershipId"))
    GetPartnershipRequest.struct_class = Types::GetPartnershipRequest

    GetPartnershipResponse.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileId, required: true, location_name: "profileId"))
    GetPartnershipResponse.add_member(:partnership_id, Shapes::ShapeRef.new(shape: PartnershipId, required: true, location_name: "partnershipId"))
    GetPartnershipResponse.add_member(:partnership_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "partnershipArn"))
    GetPartnershipResponse.add_member(:name, Shapes::ShapeRef.new(shape: PartnerName, location_name: "name"))
    GetPartnershipResponse.add_member(:email, Shapes::ShapeRef.new(shape: Email, location_name: "email"))
    GetPartnershipResponse.add_member(:phone, Shapes::ShapeRef.new(shape: Phone, location_name: "phone"))
    GetPartnershipResponse.add_member(:capabilities, Shapes::ShapeRef.new(shape: PartnershipCapabilities, location_name: "capabilities"))
    GetPartnershipResponse.add_member(:trading_partner_id, Shapes::ShapeRef.new(shape: TradingPartnerId, location_name: "tradingPartnerId"))
    GetPartnershipResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedDate, required: true, location_name: "createdAt"))
    GetPartnershipResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: ModifiedDate, location_name: "modifiedAt"))
    GetPartnershipResponse.struct_class = Types::GetPartnershipResponse

    GetProfileRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileId, required: true, location_name: "profileId"))
    GetProfileRequest.struct_class = Types::GetProfileRequest

    GetProfileResponse.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileId, required: true, location_name: "profileId"))
    GetProfileResponse.add_member(:profile_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "profileArn"))
    GetProfileResponse.add_member(:name, Shapes::ShapeRef.new(shape: ProfileName, required: true, location_name: "name"))
    GetProfileResponse.add_member(:email, Shapes::ShapeRef.new(shape: Email, location_name: "email"))
    GetProfileResponse.add_member(:phone, Shapes::ShapeRef.new(shape: Phone, required: true, location_name: "phone"))
    GetProfileResponse.add_member(:business_name, Shapes::ShapeRef.new(shape: BusinessName, required: true, location_name: "businessName"))
    GetProfileResponse.add_member(:logging, Shapes::ShapeRef.new(shape: Logging, location_name: "logging"))
    GetProfileResponse.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "logGroupName"))
    GetProfileResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedDate, required: true, location_name: "createdAt"))
    GetProfileResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: ModifiedDate, location_name: "modifiedAt"))
    GetProfileResponse.struct_class = Types::GetProfileResponse

    GetTransformerJobRequest.add_member(:transformer_job_id, Shapes::ShapeRef.new(shape: TransformerJobId, required: true, location_name: "transformerJobId"))
    GetTransformerJobRequest.add_member(:transformer_id, Shapes::ShapeRef.new(shape: TransformerId, required: true, location_name: "transformerId"))
    GetTransformerJobRequest.struct_class = Types::GetTransformerJobRequest

    GetTransformerJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: TransformerJobStatus, required: true, location_name: "status"))
    GetTransformerJobResponse.add_member(:output_files, Shapes::ShapeRef.new(shape: S3LocationList, location_name: "outputFiles"))
    GetTransformerJobResponse.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    GetTransformerJobResponse.struct_class = Types::GetTransformerJobResponse

    GetTransformerRequest.add_member(:transformer_id, Shapes::ShapeRef.new(shape: TransformerId, required: true, location_name: "transformerId"))
    GetTransformerRequest.struct_class = Types::GetTransformerRequest

    GetTransformerResponse.add_member(:transformer_id, Shapes::ShapeRef.new(shape: TransformerId, required: true, location_name: "transformerId"))
    GetTransformerResponse.add_member(:transformer_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "transformerArn"))
    GetTransformerResponse.add_member(:name, Shapes::ShapeRef.new(shape: TransformerName, required: true, location_name: "name"))
    GetTransformerResponse.add_member(:file_format, Shapes::ShapeRef.new(shape: FileFormat, required: true, location_name: "fileFormat"))
    GetTransformerResponse.add_member(:mapping_template, Shapes::ShapeRef.new(shape: MappingTemplate, required: true, location_name: "mappingTemplate"))
    GetTransformerResponse.add_member(:status, Shapes::ShapeRef.new(shape: TransformerStatus, required: true, location_name: "status"))
    GetTransformerResponse.add_member(:edi_type, Shapes::ShapeRef.new(shape: EdiType, required: true, location_name: "ediType"))
    GetTransformerResponse.add_member(:sample_document, Shapes::ShapeRef.new(shape: FileLocation, location_name: "sampleDocument"))
    GetTransformerResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedDate, required: true, location_name: "createdAt"))
    GetTransformerResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: ModifiedDate, location_name: "modifiedAt"))
    GetTransformerResponse.struct_class = Types::GetTransformerResponse

    InstructionsDocuments.member = Shapes::ShapeRef.new(shape: S3Location)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "retryAfterSeconds"))
    InternalServerException.struct_class = Types::InternalServerException

    ListCapabilitiesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextToken"))
    ListCapabilitiesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListCapabilitiesRequest.struct_class = Types::ListCapabilitiesRequest

    ListCapabilitiesResponse.add_member(:capabilities, Shapes::ShapeRef.new(shape: CapabilityList, required: true, location_name: "capabilities"))
    ListCapabilitiesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextToken"))
    ListCapabilitiesResponse.struct_class = Types::ListCapabilitiesResponse

    ListPartnershipsRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileId, location_name: "profileId"))
    ListPartnershipsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextToken"))
    ListPartnershipsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListPartnershipsRequest.struct_class = Types::ListPartnershipsRequest

    ListPartnershipsResponse.add_member(:partnerships, Shapes::ShapeRef.new(shape: PartnershipList, required: true, location_name: "partnerships"))
    ListPartnershipsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextToken"))
    ListPartnershipsResponse.struct_class = Types::ListPartnershipsResponse

    ListProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextToken"))
    ListProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListProfilesRequest.struct_class = Types::ListProfilesRequest

    ListProfilesResponse.add_member(:profiles, Shapes::ShapeRef.new(shape: ProfileList, required: true, location_name: "profiles"))
    ListProfilesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextToken"))
    ListProfilesResponse.struct_class = Types::ListProfilesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTransformersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextToken"))
    ListTransformersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListTransformersRequest.struct_class = Types::ListTransformersRequest

    ListTransformersResponse.add_member(:transformers, Shapes::ShapeRef.new(shape: TransformerList, required: true, location_name: "transformers"))
    ListTransformersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextToken"))
    ListTransformersResponse.struct_class = Types::ListTransformersResponse

    PartnershipCapabilities.member = Shapes::ShapeRef.new(shape: CapabilityId)

    PartnershipList.member = Shapes::ShapeRef.new(shape: PartnershipSummary)

    PartnershipSummary.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileId, required: true, location_name: "profileId"))
    PartnershipSummary.add_member(:partnership_id, Shapes::ShapeRef.new(shape: PartnershipId, required: true, location_name: "partnershipId"))
    PartnershipSummary.add_member(:name, Shapes::ShapeRef.new(shape: PartnerName, location_name: "name"))
    PartnershipSummary.add_member(:capabilities, Shapes::ShapeRef.new(shape: PartnershipCapabilities, location_name: "capabilities"))
    PartnershipSummary.add_member(:trading_partner_id, Shapes::ShapeRef.new(shape: TradingPartnerId, location_name: "tradingPartnerId"))
    PartnershipSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedDate, required: true, location_name: "createdAt"))
    PartnershipSummary.add_member(:modified_at, Shapes::ShapeRef.new(shape: ModifiedDate, location_name: "modifiedAt"))
    PartnershipSummary.struct_class = Types::PartnershipSummary

    ProfileList.member = Shapes::ShapeRef.new(shape: ProfileSummary)

    ProfileSummary.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileId, required: true, location_name: "profileId"))
    ProfileSummary.add_member(:name, Shapes::ShapeRef.new(shape: ProfileName, required: true, location_name: "name"))
    ProfileSummary.add_member(:business_name, Shapes::ShapeRef.new(shape: BusinessName, required: true, location_name: "businessName"))
    ProfileSummary.add_member(:logging, Shapes::ShapeRef.new(shape: Logging, location_name: "logging"))
    ProfileSummary.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "logGroupName"))
    ProfileSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedDate, required: true, location_name: "createdAt"))
    ProfileSummary.add_member(:modified_at, Shapes::ShapeRef.new(shape: ModifiedDate, location_name: "modifiedAt"))
    ProfileSummary.struct_class = Types::ProfileSummary

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3Location.add_member(:bucket_name, Shapes::ShapeRef.new(shape: BucketName, location_name: "bucketName"))
    S3Location.add_member(:key, Shapes::ShapeRef.new(shape: S3Key, location_name: "key"))
    S3Location.struct_class = Types::S3Location

    S3LocationList.member = Shapes::ShapeRef.new(shape: S3Location)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "quotaCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StartTransformerJobRequest.add_member(:input_file, Shapes::ShapeRef.new(shape: S3Location, required: true, location_name: "inputFile"))
    StartTransformerJobRequest.add_member(:output_location, Shapes::ShapeRef.new(shape: S3Location, required: true, location_name: "outputLocation"))
    StartTransformerJobRequest.add_member(:transformer_id, Shapes::ShapeRef.new(shape: TransformerId, required: true, location_name: "transformerId"))
    StartTransformerJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    StartTransformerJobRequest.struct_class = Types::StartTransformerJobRequest

    StartTransformerJobResponse.add_member(:transformer_job_id, Shapes::ShapeRef.new(shape: TransformerJobId, required: true, location_name: "transformerJobId"))
    StartTransformerJobResponse.struct_class = Types::StartTransformerJobResponse

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TestMappingRequest.add_member(:input_file_content, Shapes::ShapeRef.new(shape: TestMappingInputFileContent, required: true, location_name: "inputFileContent"))
    TestMappingRequest.add_member(:mapping_template, Shapes::ShapeRef.new(shape: MappingTemplate, required: true, location_name: "mappingTemplate"))
    TestMappingRequest.add_member(:file_format, Shapes::ShapeRef.new(shape: FileFormat, required: true, location_name: "fileFormat"))
    TestMappingRequest.struct_class = Types::TestMappingRequest

    TestMappingResponse.add_member(:mapped_file_content, Shapes::ShapeRef.new(shape: String, required: true, location_name: "mappedFileContent"))
    TestMappingResponse.struct_class = Types::TestMappingResponse

    TestParsingRequest.add_member(:input_file, Shapes::ShapeRef.new(shape: S3Location, required: true, location_name: "inputFile"))
    TestParsingRequest.add_member(:file_format, Shapes::ShapeRef.new(shape: FileFormat, required: true, location_name: "fileFormat"))
    TestParsingRequest.add_member(:edi_type, Shapes::ShapeRef.new(shape: EdiType, required: true, location_name: "ediType"))
    TestParsingRequest.struct_class = Types::TestParsingRequest

    TestParsingResponse.add_member(:parsed_file_content, Shapes::ShapeRef.new(shape: String, required: true, location_name: "parsedFileContent"))
    TestParsingResponse.struct_class = Types::TestParsingResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "retryAfterSeconds"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TransformerList.member = Shapes::ShapeRef.new(shape: TransformerSummary)

    TransformerSummary.add_member(:transformer_id, Shapes::ShapeRef.new(shape: TransformerId, required: true, location_name: "transformerId"))
    TransformerSummary.add_member(:name, Shapes::ShapeRef.new(shape: TransformerName, required: true, location_name: "name"))
    TransformerSummary.add_member(:file_format, Shapes::ShapeRef.new(shape: FileFormat, required: true, location_name: "fileFormat"))
    TransformerSummary.add_member(:mapping_template, Shapes::ShapeRef.new(shape: MappingTemplate, required: true, location_name: "mappingTemplate"))
    TransformerSummary.add_member(:status, Shapes::ShapeRef.new(shape: TransformerStatus, required: true, location_name: "status"))
    TransformerSummary.add_member(:edi_type, Shapes::ShapeRef.new(shape: EdiType, required: true, location_name: "ediType"))
    TransformerSummary.add_member(:sample_document, Shapes::ShapeRef.new(shape: FileLocation, location_name: "sampleDocument"))
    TransformerSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedDate, required: true, location_name: "createdAt"))
    TransformerSummary.add_member(:modified_at, Shapes::ShapeRef.new(shape: ModifiedDate, location_name: "modifiedAt"))
    TransformerSummary.struct_class = Types::TransformerSummary

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateCapabilityRequest.add_member(:capability_id, Shapes::ShapeRef.new(shape: CapabilityId, required: true, location_name: "capabilityId"))
    UpdateCapabilityRequest.add_member(:name, Shapes::ShapeRef.new(shape: CapabilityName, location_name: "name"))
    UpdateCapabilityRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: CapabilityConfiguration, location_name: "configuration"))
    UpdateCapabilityRequest.add_member(:instructions_documents, Shapes::ShapeRef.new(shape: InstructionsDocuments, location_name: "instructionsDocuments"))
    UpdateCapabilityRequest.struct_class = Types::UpdateCapabilityRequest

    UpdateCapabilityResponse.add_member(:capability_id, Shapes::ShapeRef.new(shape: CapabilityId, required: true, location_name: "capabilityId"))
    UpdateCapabilityResponse.add_member(:capability_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "capabilityArn"))
    UpdateCapabilityResponse.add_member(:name, Shapes::ShapeRef.new(shape: CapabilityName, required: true, location_name: "name"))
    UpdateCapabilityResponse.add_member(:type, Shapes::ShapeRef.new(shape: CapabilityType, required: true, location_name: "type"))
    UpdateCapabilityResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: CapabilityConfiguration, required: true, location_name: "configuration"))
    UpdateCapabilityResponse.add_member(:instructions_documents, Shapes::ShapeRef.new(shape: InstructionsDocuments, location_name: "instructionsDocuments"))
    UpdateCapabilityResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedDate, required: true, location_name: "createdAt"))
    UpdateCapabilityResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: ModifiedDate, location_name: "modifiedAt"))
    UpdateCapabilityResponse.struct_class = Types::UpdateCapabilityResponse

    UpdatePartnershipRequest.add_member(:partnership_id, Shapes::ShapeRef.new(shape: PartnershipId, required: true, location_name: "partnershipId"))
    UpdatePartnershipRequest.add_member(:name, Shapes::ShapeRef.new(shape: PartnerName, location_name: "name"))
    UpdatePartnershipRequest.add_member(:capabilities, Shapes::ShapeRef.new(shape: PartnershipCapabilities, location_name: "capabilities"))
    UpdatePartnershipRequest.struct_class = Types::UpdatePartnershipRequest

    UpdatePartnershipResponse.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileId, required: true, location_name: "profileId"))
    UpdatePartnershipResponse.add_member(:partnership_id, Shapes::ShapeRef.new(shape: PartnershipId, required: true, location_name: "partnershipId"))
    UpdatePartnershipResponse.add_member(:partnership_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "partnershipArn"))
    UpdatePartnershipResponse.add_member(:name, Shapes::ShapeRef.new(shape: PartnerName, location_name: "name"))
    UpdatePartnershipResponse.add_member(:email, Shapes::ShapeRef.new(shape: Email, location_name: "email"))
    UpdatePartnershipResponse.add_member(:phone, Shapes::ShapeRef.new(shape: Phone, location_name: "phone"))
    UpdatePartnershipResponse.add_member(:capabilities, Shapes::ShapeRef.new(shape: PartnershipCapabilities, location_name: "capabilities"))
    UpdatePartnershipResponse.add_member(:trading_partner_id, Shapes::ShapeRef.new(shape: TradingPartnerId, location_name: "tradingPartnerId"))
    UpdatePartnershipResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedDate, required: true, location_name: "createdAt"))
    UpdatePartnershipResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: ModifiedDate, location_name: "modifiedAt"))
    UpdatePartnershipResponse.struct_class = Types::UpdatePartnershipResponse

    UpdateProfileRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileId, required: true, location_name: "profileId"))
    UpdateProfileRequest.add_member(:name, Shapes::ShapeRef.new(shape: ProfileName, location_name: "name"))
    UpdateProfileRequest.add_member(:email, Shapes::ShapeRef.new(shape: Email, location_name: "email"))
    UpdateProfileRequest.add_member(:phone, Shapes::ShapeRef.new(shape: Phone, location_name: "phone"))
    UpdateProfileRequest.add_member(:business_name, Shapes::ShapeRef.new(shape: BusinessName, location_name: "businessName"))
    UpdateProfileRequest.struct_class = Types::UpdateProfileRequest

    UpdateProfileResponse.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileId, required: true, location_name: "profileId"))
    UpdateProfileResponse.add_member(:profile_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "profileArn"))
    UpdateProfileResponse.add_member(:name, Shapes::ShapeRef.new(shape: ProfileName, required: true, location_name: "name"))
    UpdateProfileResponse.add_member(:email, Shapes::ShapeRef.new(shape: Email, location_name: "email"))
    UpdateProfileResponse.add_member(:phone, Shapes::ShapeRef.new(shape: Phone, required: true, location_name: "phone"))
    UpdateProfileResponse.add_member(:business_name, Shapes::ShapeRef.new(shape: BusinessName, required: true, location_name: "businessName"))
    UpdateProfileResponse.add_member(:logging, Shapes::ShapeRef.new(shape: Logging, location_name: "logging"))
    UpdateProfileResponse.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "logGroupName"))
    UpdateProfileResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedDate, required: true, location_name: "createdAt"))
    UpdateProfileResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: ModifiedDate, location_name: "modifiedAt"))
    UpdateProfileResponse.struct_class = Types::UpdateProfileResponse

    UpdateTransformerRequest.add_member(:transformer_id, Shapes::ShapeRef.new(shape: TransformerId, required: true, location_name: "transformerId"))
    UpdateTransformerRequest.add_member(:name, Shapes::ShapeRef.new(shape: TransformerName, location_name: "name"))
    UpdateTransformerRequest.add_member(:file_format, Shapes::ShapeRef.new(shape: FileFormat, location_name: "fileFormat"))
    UpdateTransformerRequest.add_member(:mapping_template, Shapes::ShapeRef.new(shape: MappingTemplate, location_name: "mappingTemplate"))
    UpdateTransformerRequest.add_member(:status, Shapes::ShapeRef.new(shape: TransformerStatus, location_name: "status"))
    UpdateTransformerRequest.add_member(:edi_type, Shapes::ShapeRef.new(shape: EdiType, location_name: "ediType"))
    UpdateTransformerRequest.add_member(:sample_document, Shapes::ShapeRef.new(shape: FileLocation, location_name: "sampleDocument"))
    UpdateTransformerRequest.struct_class = Types::UpdateTransformerRequest

    UpdateTransformerResponse.add_member(:transformer_id, Shapes::ShapeRef.new(shape: TransformerId, required: true, location_name: "transformerId"))
    UpdateTransformerResponse.add_member(:transformer_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "transformerArn"))
    UpdateTransformerResponse.add_member(:name, Shapes::ShapeRef.new(shape: TransformerName, required: true, location_name: "name"))
    UpdateTransformerResponse.add_member(:file_format, Shapes::ShapeRef.new(shape: FileFormat, required: true, location_name: "fileFormat"))
    UpdateTransformerResponse.add_member(:mapping_template, Shapes::ShapeRef.new(shape: MappingTemplate, required: true, location_name: "mappingTemplate"))
    UpdateTransformerResponse.add_member(:status, Shapes::ShapeRef.new(shape: TransformerStatus, required: true, location_name: "status"))
    UpdateTransformerResponse.add_member(:edi_type, Shapes::ShapeRef.new(shape: EdiType, required: true, location_name: "ediType"))
    UpdateTransformerResponse.add_member(:sample_document, Shapes::ShapeRef.new(shape: FileLocation, location_name: "sampleDocument"))
    UpdateTransformerResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedDate, required: true, location_name: "createdAt"))
    UpdateTransformerResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: ModifiedDate, required: true, location_name: "modifiedAt"))
    UpdateTransformerResponse.struct_class = Types::UpdateTransformerResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException

    X12Details.add_member(:transaction_set, Shapes::ShapeRef.new(shape: X12TransactionSet, location_name: "transactionSet"))
    X12Details.add_member(:version, Shapes::ShapeRef.new(shape: X12Version, location_name: "version"))
    X12Details.struct_class = Types::X12Details


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-06-23"

      api.metadata = {
        "apiVersion" => "2022-06-23",
        "endpointPrefix" => "b2bi",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "serviceAbbreviation" => "AWS B2BI",
        "serviceFullName" => "AWS B2B Data Interchange",
        "serviceId" => "b2bi",
        "signatureVersion" => "v4",
        "signingName" => "b2bi",
        "targetPrefix" => "B2BI",
        "uid" => "b2bi-2022-06-23",
      }

      api.add_operation(:create_capability, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCapability"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCapabilityRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCapabilityResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_partnership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePartnership"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePartnershipRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePartnershipResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_transformer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTransformer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateTransformerRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTransformerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_capability, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCapability"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCapabilityRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_partnership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePartnership"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeletePartnershipRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_transformer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTransformer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTransformerRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_capability, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCapability"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCapabilityRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCapabilityResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_partnership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPartnership"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPartnershipRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPartnershipResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_transformer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTransformer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTransformerRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTransformerResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_transformer_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTransformerJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTransformerJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTransformerJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_capabilities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCapabilities"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCapabilitiesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCapabilitiesResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_partnerships, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPartnerships"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPartnershipsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPartnershipsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProfiles"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListProfilesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProfilesResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_transformers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTransformers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTransformersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTransformersResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:start_transformer_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartTransformerJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartTransformerJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartTransformerJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:test_mapping, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TestMapping"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TestMappingRequest)
        o.output = Shapes::ShapeRef.new(shape: TestMappingResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:test_parsing, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TestParsing"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TestParsingRequest)
        o.output = Shapes::ShapeRef.new(shape: TestParsingResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_capability, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCapability"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateCapabilityRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCapabilityResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_partnership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePartnership"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdatePartnershipRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePartnershipResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_transformer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTransformer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateTransformerRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTransformerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
