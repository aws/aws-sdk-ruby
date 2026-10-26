# frozen_string_literal: true

# This is generated code!

module Aws::Signer
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signer#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]{12}$"})
    AddProfilePermissionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#AddProfilePermissionRequest", name: "AddProfilePermissionRequest")
    AddProfilePermissionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#AddProfilePermissionResponse", name: "AddProfilePermissionResponse")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signer#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}})
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#BadRequestException", name: "BadRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Blob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.signer#Blob", name: "Blob")
    BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signer#BucketName", name: "BucketName")
    CancelSigningProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#CancelSigningProfileRequest", name: "CancelSigningProfileRequest")
    Category = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.signer#Category", name: "Category")
    CertificateArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signer#CertificateArn", name: "CertificateArn")
    CertificateHashes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.signer#CertificateHashes", name: "CertificateHashes")
    ClientRequestToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signer#ClientRequestToken", name: "ClientRequestToken")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DescribeSigningJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#DescribeSigningJobRequest", name: "DescribeSigningJobRequest")
    DescribeSigningJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#DescribeSigningJobResponse", name: "DescribeSigningJobResponse")
    Destination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#Destination", name: "Destination")
    DisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signer#DisplayName", name: "DisplayName")
    EncryptionAlgorithm = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.signer#EncryptionAlgorithm", name: "EncryptionAlgorithm")
    EncryptionAlgorithmOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#EncryptionAlgorithmOptions", name: "EncryptionAlgorithmOptions")
    EncryptionAlgorithms = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.signer#EncryptionAlgorithms", name: "EncryptionAlgorithms")
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signer#ErrorCode", name: "ErrorCode")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signer#ErrorMessage", name: "ErrorMessage")
    GetRevocationStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#GetRevocationStatusRequest", name: "GetRevocationStatusRequest")
    GetRevocationStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#GetRevocationStatusResponse", name: "GetRevocationStatusResponse")
    GetSigningPlatformRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#GetSigningPlatformRequest", name: "GetSigningPlatformRequest")
    GetSigningPlatformResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#GetSigningPlatformResponse", name: "GetSigningPlatformResponse")
    GetSigningProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#GetSigningProfileRequest", name: "GetSigningProfileRequest")
    GetSigningProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#GetSigningProfileResponse", name: "GetSigningProfileResponse")
    HashAlgorithm = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.signer#HashAlgorithm", name: "HashAlgorithm")
    HashAlgorithmOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#HashAlgorithmOptions", name: "HashAlgorithmOptions")
    HashAlgorithms = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.signer#HashAlgorithms", name: "HashAlgorithms")
    ImageFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.signer#ImageFormat", name: "ImageFormat")
    ImageFormats = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.signer#ImageFormats", name: "ImageFormats")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.signer#Integer", name: "Integer", traits: {"smithy.api#default" => 0})
    InternalServiceErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#InternalServiceErrorException", name: "InternalServiceErrorException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    JobId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signer#JobId", name: "JobId")
    Key = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signer#Key", name: "Key")
    ListProfilePermissionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#ListProfilePermissionsRequest", name: "ListProfilePermissionsRequest")
    ListProfilePermissionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#ListProfilePermissionsResponse", name: "ListProfilePermissionsResponse")
    ListSigningJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#ListSigningJobsRequest", name: "ListSigningJobsRequest")
    ListSigningJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#ListSigningJobsResponse", name: "ListSigningJobsResponse")
    ListSigningPlatformsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#ListSigningPlatformsRequest", name: "ListSigningPlatformsRequest")
    ListSigningPlatformsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#ListSigningPlatformsResponse", name: "ListSigningPlatformsResponse")
    ListSigningProfilesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#ListSigningProfilesRequest", name: "ListSigningProfilesRequest")
    ListSigningProfilesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#ListSigningProfilesResponse", name: "ListSigningProfilesResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.signer#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 25}})
    MaxSizeInMB = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.signer#MaxSizeInMB", name: "MaxSizeInMB", traits: {"smithy.api#default" => 0})
    Metadata = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.signer#Metadata", name: "Metadata")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signer#NextToken", name: "NextToken")
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#NotFoundException", name: "NotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Payload = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.signer#Payload", name: "Payload", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    Permission = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#Permission", name: "Permission")
    Permissions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.signer#Permissions", name: "Permissions")
    PlatformId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signer#PlatformId", name: "PlatformId")
    PolicySizeBytes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.signer#PolicySizeBytes", name: "PolicySizeBytes", traits: {"smithy.api#default" => 0})
    Prefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signer#Prefix", name: "Prefix")
    ProfileName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signer#ProfileName", name: "ProfileName", traits: {"smithy.api#length" => {"min" => 2, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_]{2,}$"})
    ProfileVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signer#ProfileVersion", name: "ProfileVersion", traits: {"smithy.api#length" => {"min" => 10, "max" => 10}, "smithy.api#pattern" => "^[a-zA-Z0-9]{10}$"})
    PutSigningProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#PutSigningProfileRequest", name: "PutSigningProfileRequest")
    PutSigningProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#PutSigningProfileResponse", name: "PutSigningProfileResponse")
    RemoveProfilePermissionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#RemoveProfilePermissionRequest", name: "RemoveProfilePermissionRequest")
    RemoveProfilePermissionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#RemoveProfilePermissionResponse", name: "RemoveProfilePermissionResponse")
    RequestedBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signer#RequestedBy", name: "RequestedBy")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RevocationReasonString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signer#RevocationReasonString", name: "RevocationReasonString", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    RevokeSignatureRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#RevokeSignatureRequest", name: "RevokeSignatureRequest")
    RevokeSigningProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#RevokeSigningProfileRequest", name: "RevokeSigningProfileRequest")
    RevokedEntities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.signer#RevokedEntities", name: "RevokedEntities")
    S3Destination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#S3Destination", name: "S3Destination")
    S3SignedObject = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#S3SignedObject", name: "S3SignedObject")
    S3Source = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#S3Source", name: "S3Source")
    ServiceLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#ServiceLimitExceededException", name: "ServiceLimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SignPayloadRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#SignPayloadRequest", name: "SignPayloadRequest")
    SignPayloadResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#SignPayloadResponse", name: "SignPayloadResponse")
    SignatureValidityPeriod = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#SignatureValidityPeriod", name: "SignatureValidityPeriod")
    SignedObject = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#SignedObject", name: "SignedObject")
    SigningConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#SigningConfiguration", name: "SigningConfiguration")
    SigningConfigurationOverrides = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#SigningConfigurationOverrides", name: "SigningConfigurationOverrides")
    SigningImageFormat = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#SigningImageFormat", name: "SigningImageFormat")
    SigningJob = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#SigningJob", name: "SigningJob")
    SigningJobRevocationRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#SigningJobRevocationRecord", name: "SigningJobRevocationRecord")
    SigningJobs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.signer#SigningJobs", name: "SigningJobs")
    SigningMaterial = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#SigningMaterial", name: "SigningMaterial")
    SigningParameterKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signer#SigningParameterKey", name: "SigningParameterKey")
    SigningParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signer#SigningParameterValue", name: "SigningParameterValue")
    SigningParameters = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.signer#SigningParameters", name: "SigningParameters")
    SigningPlatform = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#SigningPlatform", name: "SigningPlatform")
    SigningPlatformOverrides = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#SigningPlatformOverrides", name: "SigningPlatformOverrides")
    SigningPlatforms = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.signer#SigningPlatforms", name: "SigningPlatforms")
    SigningProfile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#SigningProfile", name: "SigningProfile")
    SigningProfileRevocationRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#SigningProfileRevocationRecord", name: "SigningProfileRevocationRecord")
    SigningProfileStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.signer#SigningProfileStatus", name: "SigningProfileStatus")
    SigningProfiles = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.signer#SigningProfiles", name: "SigningProfiles")
    SigningStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.signer#SigningStatus", name: "SigningStatus")
    Source = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#Source", name: "Source")
    StartSigningJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#StartSigningJobRequest", name: "StartSigningJobRequest")
    StartSigningJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#StartSigningJobResponse", name: "StartSigningJobResponse")
    StatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signer#StatusReason", name: "StatusReason")
    Statuses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.signer#Statuses", name: "Statuses")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signer#String", name: "String")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signer#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.signer#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.signer#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signer#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#deprecated" => {"message" => "Instead of this error, TooManyRequestsException should be used."}, "smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.signer#Timestamp", name: "Timestamp")
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#TooManyRequestsException", name: "TooManyRequestsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#UntagResourceResponse", name: "UntagResourceResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.signer#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.signer#ValidityType", name: "ValidityType")
    Version = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.signer#Version", name: "Version")
    Bool = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.signer#bool", name: "Bool", traits: {"smithy.api#default" => false})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    AccessDeniedException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "code"))
    AccessDeniedException.type = Types::AccessDeniedException
    AddProfilePermissionRequest.add_member(:profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileName, name: "profileName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AddProfilePermissionRequest.add_member(:profile_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileVersion, name: "profileVersion"))
    AddProfilePermissionRequest.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "action", traits: {"smithy.api#required" => {}}))
    AddProfilePermissionRequest.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "principal", traits: {"smithy.api#required" => {}}))
    AddProfilePermissionRequest.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "revisionId"))
    AddProfilePermissionRequest.add_member(:statement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statementId", traits: {"smithy.api#required" => {}}))
    AddProfilePermissionRequest.type = Types::AddProfilePermissionRequest
    AddProfilePermissionResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "revisionId"))
    AddProfilePermissionResponse.type = Types::AddProfilePermissionResponse
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    BadRequestException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "code"))
    BadRequestException.type = Types::BadRequestException
    CancelSigningProfileRequest.add_member(:profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileName, name: "profileName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelSigningProfileRequest.type = Types::CancelSigningProfileRequest
    Category.add_member(:aws_io_t, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWSIoT", traits: {"smithy.api#enumValue" => "AWSIoT"}))
    CertificateHashes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ConflictException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "code"))
    ConflictException.type = Types::ConflictException
    DescribeSigningJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeSigningJobRequest.type = Types::DescribeSigningJobRequest
    DescribeSigningJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId"))
    DescribeSigningJobResponse.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, name: "source"))
    DescribeSigningJobResponse.add_member(:signing_material, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningMaterial, name: "signingMaterial"))
    DescribeSigningJobResponse.add_member(:platform_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformId, name: "platformId"))
    DescribeSigningJobResponse.add_member(:platform_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "platformDisplayName"))
    DescribeSigningJobResponse.add_member(:profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileName, name: "profileName"))
    DescribeSigningJobResponse.add_member(:profile_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileVersion, name: "profileVersion"))
    DescribeSigningJobResponse.add_member(:overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningPlatformOverrides, name: "overrides"))
    DescribeSigningJobResponse.add_member(:signing_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningParameters, name: "signingParameters"))
    DescribeSigningJobResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    DescribeSigningJobResponse.add_member(:completed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "completedAt"))
    DescribeSigningJobResponse.add_member(:signature_expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "signatureExpiresAt"))
    DescribeSigningJobResponse.add_member(:requested_by, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestedBy, name: "requestedBy"))
    DescribeSigningJobResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningStatus, name: "status"))
    DescribeSigningJobResponse.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusReason, name: "statusReason"))
    DescribeSigningJobResponse.add_member(:revocation_record, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningJobRevocationRecord, name: "revocationRecord"))
    DescribeSigningJobResponse.add_member(:signed_object, ::Smithy::Schema::Shapes::MemberShape.new(target: SignedObject, name: "signedObject"))
    DescribeSigningJobResponse.add_member(:job_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "jobOwner"))
    DescribeSigningJobResponse.add_member(:job_invoker, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "jobInvoker"))
    DescribeSigningJobResponse.type = Types::DescribeSigningJobResponse
    Destination.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Destination, name: "s3"))
    Destination.type = Types::Destination
    EncryptionAlgorithm.add_member(:rsa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RSA", traits: {"smithy.api#enumValue" => "RSA"}))
    EncryptionAlgorithm.add_member(:ecdsa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECDSA", traits: {"smithy.api#enumValue" => "ECDSA"}))
    EncryptionAlgorithmOptions.add_member(:allowed_values, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionAlgorithms, name: "allowedValues", traits: {"smithy.api#required" => {}}))
    EncryptionAlgorithmOptions.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionAlgorithm, name: "defaultValue", traits: {"smithy.api#required" => {}}))
    EncryptionAlgorithmOptions.type = Types::EncryptionAlgorithmOptions
    EncryptionAlgorithms.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionAlgorithm, name: "member"))
    GetRevocationStatusRequest.add_member(:signature_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "signatureTimestamp", traits: {"smithy.api#httpQuery" => "signatureTimestamp", "smithy.api#required" => {}}))
    GetRevocationStatusRequest.add_member(:platform_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformId, name: "platformId", traits: {"smithy.api#httpQuery" => "platformId", "smithy.api#required" => {}}))
    GetRevocationStatusRequest.add_member(:profile_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "profileVersionArn", traits: {"smithy.api#httpQuery" => "profileVersionArn", "smithy.api#required" => {}}))
    GetRevocationStatusRequest.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "jobArn", traits: {"smithy.api#httpQuery" => "jobArn", "smithy.api#required" => {}}))
    GetRevocationStatusRequest.add_member(:certificate_hashes, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateHashes, name: "certificateHashes", traits: {"smithy.api#httpQuery" => "certificateHashes", "smithy.api#required" => {}}))
    GetRevocationStatusRequest.type = Types::GetRevocationStatusRequest
    GetRevocationStatusResponse.add_member(:revoked_entities, ::Smithy::Schema::Shapes::MemberShape.new(target: RevokedEntities, name: "revokedEntities"))
    GetRevocationStatusResponse.type = Types::GetRevocationStatusResponse
    GetSigningPlatformRequest.add_member(:platform_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformId, name: "platformId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSigningPlatformRequest.type = Types::GetSigningPlatformRequest
    GetSigningPlatformResponse.add_member(:platform_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformId, name: "platformId"))
    GetSigningPlatformResponse.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "displayName"))
    GetSigningPlatformResponse.add_member(:partner, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "partner"))
    GetSigningPlatformResponse.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "target"))
    GetSigningPlatformResponse.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: Category, name: "category"))
    GetSigningPlatformResponse.add_member(:signing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningConfiguration, name: "signingConfiguration"))
    GetSigningPlatformResponse.add_member(:signing_image_format, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningImageFormat, name: "signingImageFormat"))
    GetSigningPlatformResponse.add_member(:max_size_in_mb, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSizeInMB, name: "maxSizeInMB", traits: {"smithy.api#default" => 0}))
    GetSigningPlatformResponse.add_member(:revocation_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: Bool, name: "revocationSupported", traits: {"smithy.api#default" => false}))
    GetSigningPlatformResponse.type = Types::GetSigningPlatformResponse
    GetSigningProfileRequest.add_member(:profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileName, name: "profileName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSigningProfileRequest.add_member(:profile_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "profileOwner", traits: {"smithy.api#httpQuery" => "profileOwner"}))
    GetSigningProfileRequest.type = Types::GetSigningProfileRequest
    GetSigningProfileResponse.add_member(:profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileName, name: "profileName"))
    GetSigningProfileResponse.add_member(:profile_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileVersion, name: "profileVersion"))
    GetSigningProfileResponse.add_member(:profile_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "profileVersionArn"))
    GetSigningProfileResponse.add_member(:revocation_record, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningProfileRevocationRecord, name: "revocationRecord"))
    GetSigningProfileResponse.add_member(:signing_material, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningMaterial, name: "signingMaterial"))
    GetSigningProfileResponse.add_member(:platform_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformId, name: "platformId"))
    GetSigningProfileResponse.add_member(:platform_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "platformDisplayName"))
    GetSigningProfileResponse.add_member(:signature_validity_period, ::Smithy::Schema::Shapes::MemberShape.new(target: SignatureValidityPeriod, name: "signatureValidityPeriod"))
    GetSigningProfileResponse.add_member(:overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningPlatformOverrides, name: "overrides"))
    GetSigningProfileResponse.add_member(:signing_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningParameters, name: "signingParameters"))
    GetSigningProfileResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningProfileStatus, name: "status"))
    GetSigningProfileResponse.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusReason"))
    GetSigningProfileResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "arn"))
    GetSigningProfileResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    GetSigningProfileResponse.type = Types::GetSigningProfileResponse
    HashAlgorithm.add_member(:sha1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHA1", traits: {"smithy.api#enumValue" => "SHA1"}))
    HashAlgorithm.add_member(:sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHA256", traits: {"smithy.api#enumValue" => "SHA256"}))
    HashAlgorithmOptions.add_member(:allowed_values, ::Smithy::Schema::Shapes::MemberShape.new(target: HashAlgorithms, name: "allowedValues", traits: {"smithy.api#required" => {}}))
    HashAlgorithmOptions.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: HashAlgorithm, name: "defaultValue", traits: {"smithy.api#required" => {}}))
    HashAlgorithmOptions.type = Types::HashAlgorithmOptions
    HashAlgorithms.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: HashAlgorithm, name: "member"))
    ImageFormat.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON", traits: {"smithy.api#enumValue" => "JSON"}))
    ImageFormat.add_member(:json_embedded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSONEmbedded", traits: {"smithy.api#enumValue" => "JSONEmbedded"}))
    ImageFormat.add_member(:json_detached, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSONDetached", traits: {"smithy.api#enumValue" => "JSONDetached"}))
    ImageFormats.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageFormat, name: "member"))
    InternalServiceErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InternalServiceErrorException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "code"))
    InternalServiceErrorException.type = Types::InternalServiceErrorException
    ListProfilePermissionsRequest.add_member(:profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileName, name: "profileName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListProfilePermissionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListProfilePermissionsRequest.type = Types::ListProfilePermissionsRequest
    ListProfilePermissionsResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "revisionId"))
    ListProfilePermissionsResponse.add_member(:policy_size_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicySizeBytes, name: "policySizeBytes", traits: {"smithy.api#default" => 0}))
    ListProfilePermissionsResponse.add_member(:permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: Permissions, name: "permissions"))
    ListProfilePermissionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListProfilePermissionsResponse.type = Types::ListProfilePermissionsResponse
    ListSigningJobsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningStatus, name: "status", traits: {"smithy.api#httpQuery" => "status"}))
    ListSigningJobsRequest.add_member(:platform_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformId, name: "platformId", traits: {"smithy.api#httpQuery" => "platformId"}))
    ListSigningJobsRequest.add_member(:requested_by, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestedBy, name: "requestedBy", traits: {"smithy.api#httpQuery" => "requestedBy"}))
    ListSigningJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListSigningJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSigningJobsRequest.add_member(:is_revoked, ::Smithy::Schema::Shapes::MemberShape.new(target: Bool, name: "isRevoked", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "isRevoked"}))
    ListSigningJobsRequest.add_member(:signature_expires_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "signatureExpiresBefore", traits: {"smithy.api#httpQuery" => "signatureExpiresBefore"}))
    ListSigningJobsRequest.add_member(:signature_expires_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "signatureExpiresAfter", traits: {"smithy.api#httpQuery" => "signatureExpiresAfter"}))
    ListSigningJobsRequest.add_member(:job_invoker, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "jobInvoker", traits: {"smithy.api#httpQuery" => "jobInvoker"}))
    ListSigningJobsRequest.type = Types::ListSigningJobsRequest
    ListSigningJobsResponse.add_member(:jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningJobs, name: "jobs"))
    ListSigningJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListSigningJobsResponse.type = Types::ListSigningJobsResponse
    ListSigningPlatformsRequest.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "category", traits: {"smithy.api#httpQuery" => "category"}))
    ListSigningPlatformsRequest.add_member(:partner, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "partner", traits: {"smithy.api#httpQuery" => "partner"}))
    ListSigningPlatformsRequest.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "target", traits: {"smithy.api#httpQuery" => "target"}))
    ListSigningPlatformsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListSigningPlatformsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSigningPlatformsRequest.type = Types::ListSigningPlatformsRequest
    ListSigningPlatformsResponse.add_member(:platforms, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningPlatforms, name: "platforms"))
    ListSigningPlatformsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListSigningPlatformsResponse.type = Types::ListSigningPlatformsResponse
    ListSigningProfilesRequest.add_member(:include_canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: Bool, name: "includeCanceled", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "includeCanceled"}))
    ListSigningProfilesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListSigningProfilesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSigningProfilesRequest.add_member(:platform_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformId, name: "platformId", traits: {"smithy.api#httpQuery" => "platformId"}))
    ListSigningProfilesRequest.add_member(:statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: Statuses, name: "statuses", traits: {"smithy.api#httpQuery" => "statuses"}))
    ListSigningProfilesRequest.type = Types::ListSigningProfilesRequest
    ListSigningProfilesResponse.add_member(:profiles, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningProfiles, name: "profiles"))
    ListSigningProfilesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListSigningProfilesResponse.type = Types::ListSigningProfilesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    Metadata.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    Metadata.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    NotFoundException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "code"))
    NotFoundException.type = Types::NotFoundException
    Permission.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "action"))
    Permission.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "principal"))
    Permission.add_member(:statement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statementId"))
    Permission.add_member(:profile_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileVersion, name: "profileVersion"))
    Permission.type = Types::Permission
    Permissions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Permission, name: "member"))
    PutSigningProfileRequest.add_member(:profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileName, name: "profileName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutSigningProfileRequest.add_member(:signing_material, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningMaterial, name: "signingMaterial"))
    PutSigningProfileRequest.add_member(:signature_validity_period, ::Smithy::Schema::Shapes::MemberShape.new(target: SignatureValidityPeriod, name: "signatureValidityPeriod"))
    PutSigningProfileRequest.add_member(:platform_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformId, name: "platformId", traits: {"smithy.api#required" => {}}))
    PutSigningProfileRequest.add_member(:overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningPlatformOverrides, name: "overrides"))
    PutSigningProfileRequest.add_member(:signing_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningParameters, name: "signingParameters"))
    PutSigningProfileRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    PutSigningProfileRequest.type = Types::PutSigningProfileRequest
    PutSigningProfileResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "arn"))
    PutSigningProfileResponse.add_member(:profile_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileVersion, name: "profileVersion"))
    PutSigningProfileResponse.add_member(:profile_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "profileVersionArn"))
    PutSigningProfileResponse.type = Types::PutSigningProfileResponse
    RemoveProfilePermissionRequest.add_member(:profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileName, name: "profileName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveProfilePermissionRequest.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "revisionId", traits: {"smithy.api#httpQuery" => "revisionId", "smithy.api#required" => {}}))
    RemoveProfilePermissionRequest.add_member(:statement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statementId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveProfilePermissionRequest.type = Types::RemoveProfilePermissionRequest
    RemoveProfilePermissionResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "revisionId"))
    RemoveProfilePermissionResponse.type = Types::RemoveProfilePermissionResponse
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceNotFoundException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "code"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RevokeSignatureRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RevokeSignatureRequest.add_member(:job_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "jobOwner"))
    RevokeSignatureRequest.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: RevocationReasonString, name: "reason", traits: {"smithy.api#required" => {}}))
    RevokeSignatureRequest.type = Types::RevokeSignatureRequest
    RevokeSigningProfileRequest.add_member(:profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileName, name: "profileName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RevokeSigningProfileRequest.add_member(:profile_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileVersion, name: "profileVersion", traits: {"smithy.api#required" => {}}))
    RevokeSigningProfileRequest.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: RevocationReasonString, name: "reason", traits: {"smithy.api#required" => {}}))
    RevokeSigningProfileRequest.add_member(:effective_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "effectiveTime", traits: {"smithy.api#required" => {}}))
    RevokeSigningProfileRequest.type = Types::RevokeSigningProfileRequest
    RevokedEntities.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    S3Destination.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "bucketName"))
    S3Destination.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "prefix"))
    S3Destination.type = Types::S3Destination
    S3SignedObject.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "bucketName"))
    S3SignedObject.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, name: "key"))
    S3SignedObject.type = Types::S3SignedObject
    S3Source.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "bucketName", traits: {"smithy.api#required" => {}}))
    S3Source.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, name: "key", traits: {"smithy.api#required" => {}}))
    S3Source.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "version", traits: {"smithy.api#required" => {}}))
    S3Source.type = Types::S3Source
    ServiceLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ServiceLimitExceededException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "code"))
    ServiceLimitExceededException.type = Types::ServiceLimitExceededException
    SignPayloadRequest.add_member(:profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileName, name: "profileName", traits: {"smithy.api#required" => {}}))
    SignPayloadRequest.add_member(:profile_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "profileOwner"))
    SignPayloadRequest.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: Payload, name: "payload", traits: {"smithy.api#required" => {}}))
    SignPayloadRequest.add_member(:payload_format, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "payloadFormat", traits: {"smithy.api#required" => {}}))
    SignPayloadRequest.type = Types::SignPayloadRequest
    SignPayloadResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId"))
    SignPayloadResponse.add_member(:job_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "jobOwner"))
    SignPayloadResponse.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "metadata"))
    SignPayloadResponse.add_member(:signature, ::Smithy::Schema::Shapes::MemberShape.new(target: Blob, name: "signature"))
    SignPayloadResponse.type = Types::SignPayloadResponse
    SignatureValidityPeriod.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "value", traits: {"smithy.api#default" => 0}))
    SignatureValidityPeriod.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidityType, name: "type"))
    SignatureValidityPeriod.type = Types::SignatureValidityPeriod
    SignedObject.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3SignedObject, name: "s3"))
    SignedObject.type = Types::SignedObject
    SigningConfiguration.add_member(:encryption_algorithm_options, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionAlgorithmOptions, name: "encryptionAlgorithmOptions", traits: {"smithy.api#required" => {}}))
    SigningConfiguration.add_member(:hash_algorithm_options, ::Smithy::Schema::Shapes::MemberShape.new(target: HashAlgorithmOptions, name: "hashAlgorithmOptions", traits: {"smithy.api#required" => {}}))
    SigningConfiguration.type = Types::SigningConfiguration
    SigningConfigurationOverrides.add_member(:encryption_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionAlgorithm, name: "encryptionAlgorithm"))
    SigningConfigurationOverrides.add_member(:hash_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: HashAlgorithm, name: "hashAlgorithm"))
    SigningConfigurationOverrides.type = Types::SigningConfigurationOverrides
    SigningImageFormat.add_member(:supported_formats, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageFormats, name: "supportedFormats", traits: {"smithy.api#required" => {}}))
    SigningImageFormat.add_member(:default_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageFormat, name: "defaultFormat", traits: {"smithy.api#required" => {}}))
    SigningImageFormat.type = Types::SigningImageFormat
    SigningJob.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId"))
    SigningJob.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, name: "source"))
    SigningJob.add_member(:signed_object, ::Smithy::Schema::Shapes::MemberShape.new(target: SignedObject, name: "signedObject"))
    SigningJob.add_member(:signing_material, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningMaterial, name: "signingMaterial"))
    SigningJob.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    SigningJob.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningStatus, name: "status"))
    SigningJob.add_member(:is_revoked, ::Smithy::Schema::Shapes::MemberShape.new(target: Bool, name: "isRevoked", traits: {"smithy.api#default" => false}))
    SigningJob.add_member(:profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileName, name: "profileName"))
    SigningJob.add_member(:profile_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileVersion, name: "profileVersion"))
    SigningJob.add_member(:platform_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformId, name: "platformId"))
    SigningJob.add_member(:platform_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "platformDisplayName"))
    SigningJob.add_member(:signature_expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "signatureExpiresAt"))
    SigningJob.add_member(:job_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "jobOwner"))
    SigningJob.add_member(:job_invoker, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "jobInvoker"))
    SigningJob.type = Types::SigningJob
    SigningJobRevocationRecord.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "reason"))
    SigningJobRevocationRecord.add_member(:revoked_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "revokedAt"))
    SigningJobRevocationRecord.add_member(:revoked_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "revokedBy"))
    SigningJobRevocationRecord.type = Types::SigningJobRevocationRecord
    SigningJobs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningJob, name: "member"))
    SigningMaterial.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateArn, name: "certificateArn", traits: {"smithy.api#required" => {}}))
    SigningMaterial.type = Types::SigningMaterial
    SigningParameters.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningParameterKey, name: "key"))
    SigningParameters.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningParameterValue, name: "value"))
    SigningPlatform.add_member(:platform_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "platformId"))
    SigningPlatform.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "displayName"))
    SigningPlatform.add_member(:partner, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "partner"))
    SigningPlatform.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "target"))
    SigningPlatform.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: Category, name: "category"))
    SigningPlatform.add_member(:signing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningConfiguration, name: "signingConfiguration"))
    SigningPlatform.add_member(:signing_image_format, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningImageFormat, name: "signingImageFormat"))
    SigningPlatform.add_member(:max_size_in_mb, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSizeInMB, name: "maxSizeInMB", traits: {"smithy.api#default" => 0}))
    SigningPlatform.add_member(:revocation_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: Bool, name: "revocationSupported", traits: {"smithy.api#default" => false}))
    SigningPlatform.type = Types::SigningPlatform
    SigningPlatformOverrides.add_member(:signing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningConfigurationOverrides, name: "signingConfiguration"))
    SigningPlatformOverrides.add_member(:signing_image_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageFormat, name: "signingImageFormat"))
    SigningPlatformOverrides.type = Types::SigningPlatformOverrides
    SigningPlatforms.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningPlatform, name: "member"))
    SigningProfile.add_member(:profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileName, name: "profileName"))
    SigningProfile.add_member(:profile_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileVersion, name: "profileVersion"))
    SigningProfile.add_member(:profile_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "profileVersionArn"))
    SigningProfile.add_member(:signing_material, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningMaterial, name: "signingMaterial"))
    SigningProfile.add_member(:signature_validity_period, ::Smithy::Schema::Shapes::MemberShape.new(target: SignatureValidityPeriod, name: "signatureValidityPeriod"))
    SigningProfile.add_member(:platform_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformId, name: "platformId"))
    SigningProfile.add_member(:platform_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "platformDisplayName"))
    SigningProfile.add_member(:signing_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningParameters, name: "signingParameters"))
    SigningProfile.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningProfileStatus, name: "status"))
    SigningProfile.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "arn"))
    SigningProfile.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    SigningProfile.type = Types::SigningProfile
    SigningProfileRevocationRecord.add_member(:revocation_effective_from, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "revocationEffectiveFrom"))
    SigningProfileRevocationRecord.add_member(:revoked_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "revokedAt"))
    SigningProfileRevocationRecord.add_member(:revoked_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "revokedBy"))
    SigningProfileRevocationRecord.type = Types::SigningProfileRevocationRecord
    SigningProfileStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Active", traits: {"smithy.api#enumValue" => "Active"}))
    SigningProfileStatus.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Canceled", traits: {"smithy.api#enumValue" => "Canceled"}))
    SigningProfileStatus.add_member(:revoked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Revoked", traits: {"smithy.api#enumValue" => "Revoked"}))
    SigningProfiles.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningProfile, name: "member"))
    SigningStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InProgress", traits: {"smithy.api#enumValue" => "InProgress"}))
    SigningStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    SigningStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Succeeded", traits: {"smithy.api#enumValue" => "Succeeded"}))
    Source.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Source, name: "s3"))
    Source.type = Types::Source
    StartSigningJobRequest.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, name: "source", traits: {"smithy.api#required" => {}}))
    StartSigningJobRequest.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: Destination, name: "destination", traits: {"smithy.api#required" => {}}))
    StartSigningJobRequest.add_member(:profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileName, name: "profileName", traits: {"smithy.api#required" => {}}))
    StartSigningJobRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    StartSigningJobRequest.add_member(:profile_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "profileOwner"))
    StartSigningJobRequest.type = Types::StartSigningJobRequest
    StartSigningJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId"))
    StartSigningJobResponse.add_member(:job_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "jobOwner"))
    StartSigningJobResponse.type = Types::StartSigningJobResponse
    Statuses.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningProfileStatus, name: "member"))
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ThrottlingException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "code"))
    ThrottlingException.type = Types::ThrottlingException
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    TooManyRequestsException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "code"))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ValidationException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "code"))
    ValidationException.type = Types::ValidationException
    ValidityType.add_member(:days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAYS", traits: {"smithy.api#enumValue" => "DAYS"}))
    ValidityType.add_member(:months, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONTHS", traits: {"smithy.api#enumValue" => "MONTHS"}))
    ValidityType.add_member(:years, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "YEARS", traits: {"smithy.api#enumValue" => "YEARS"}))

    WallabyService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.signer#WallabyService"
      service.name = "WallabyService"
      service.version = "2017-08-25"
      service.traits = {"aws.api#service" => {"sdkId" => "signer", "arnNamespace" => "signer", "cloudFormationName" => "Signer", "cloudTrailEventSource" => "signer.amazonaws.com", "endpointPrefix" => "signer"}, "aws.auth#sigv4" => {"name" => "signer"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Signer", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://signer-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://signer-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://signer.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://signer.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:add_profile_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signer#AddProfilePermission"
        operation.name = "AddProfilePermission"
        operation.input = AddProfilePermissionRequest
        operation.output = AddProfilePermissionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServiceErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceLimitExceededException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/signing-profiles/{profileName}/permissions", "code" => 200}}
      end)
      service.add_operation(:cancel_signing_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signer#CancelSigningProfile"
        operation.name = "CancelSigningProfile"
        operation.input = CancelSigningProfileRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/signing-profiles/{profileName}", "code" => 200}}
      end)
      service.add_operation(:describe_signing_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signer#DescribeSigningJob"
        operation.name = "DescribeSigningJob"
        operation.input = DescribeSigningJobRequest
        operation.output = DescribeSigningJobResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/signing-jobs/{jobId}", "code" => 200}}
      end)
      service.add_operation(:get_revocation_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signer#GetRevocationStatus"
        operation.name = "GetRevocationStatus"
        operation.input = GetRevocationStatusRequest
        operation.output = GetRevocationStatusResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "data-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/revocations", "code" => 200}}
      end)
      service.add_operation(:get_signing_platform, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signer#GetSigningPlatform"
        operation.name = "GetSigningPlatform"
        operation.input = GetSigningPlatformRequest
        operation.output = GetSigningPlatformResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/signing-platforms/{platformId}", "code" => 200}}
      end)
      service.add_operation(:get_signing_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signer#GetSigningProfile"
        operation.name = "GetSigningProfile"
        operation.input = GetSigningProfileRequest
        operation.output = GetSigningProfileResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/signing-profiles/{profileName}", "code" => 200}}
      end)
      service.add_operation(:list_profile_permissions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signer#ListProfilePermissions"
        operation.name = "ListProfilePermissions"
        operation.input = ListProfilePermissionsRequest
        operation.output = ListProfilePermissionsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/signing-profiles/{profileName}/permissions", "code" => 200}}
      end)
      service.add_operation(:list_signing_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signer#ListSigningJobs"
        operation.name = "ListSigningJobs"
        operation.input = ListSigningJobsRequest
        operation.output = ListSigningJobsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/signing-jobs", "code" => 200}}
        operation[:paginator] = Paginators::ListSigningJobs.new
      end)
      service.add_operation(:list_signing_platforms, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signer#ListSigningPlatforms"
        operation.name = "ListSigningPlatforms"
        operation.input = ListSigningPlatformsRequest
        operation.output = ListSigningPlatformsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/signing-platforms", "code" => 200}}
        operation[:paginator] = Paginators::ListSigningPlatforms.new
      end)
      service.add_operation(:list_signing_profiles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signer#ListSigningProfiles"
        operation.name = "ListSigningProfiles"
        operation.input = ListSigningProfilesRequest
        operation.output = ListSigningProfilesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/signing-profiles", "code" => 200}}
        operation[:paginator] = Paginators::ListSigningProfiles.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signer#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << BadRequestException
        operation.errors << InternalServiceErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:put_signing_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signer#PutSigningProfile"
        operation.name = "PutSigningProfile"
        operation.input = PutSigningProfileRequest
        operation.output = PutSigningProfileResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/signing-profiles/{profileName}", "code" => 200}}
      end)
      service.add_operation(:remove_profile_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signer#RemoveProfilePermission"
        operation.name = "RemoveProfilePermission"
        operation.input = RemoveProfilePermissionRequest
        operation.output = RemoveProfilePermissionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServiceErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/signing-profiles/{profileName}/permissions/{statementId}", "code" => 200}}
      end)
      service.add_operation(:revoke_signature, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signer#RevokeSignature"
        operation.name = "RevokeSignature"
        operation.input = RevokeSignatureRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/signing-jobs/{jobId}/revoke", "code" => 200}}
      end)
      service.add_operation(:revoke_signing_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signer#RevokeSigningProfile"
        operation.name = "RevokeSigningProfile"
        operation.input = RevokeSigningProfileRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/signing-profiles/{profileName}/revoke", "code" => 200}}
      end)
      service.add_operation(:sign_payload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signer#SignPayload"
        operation.name = "SignPayload"
        operation.input = SignPayloadRequest
        operation.output = SignPayloadResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/signing-jobs/with-payload", "code" => 200}}
      end)
      service.add_operation(:start_signing_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signer#StartSigningJob"
        operation.name = "StartSigningJob"
        operation.input = StartSigningJobRequest
        operation.output = StartSigningJobResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/signing-jobs", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signer#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << BadRequestException
        operation.errors << InternalServiceErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signer#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << BadRequestException
        operation.errors << InternalServiceErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 200}}
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
