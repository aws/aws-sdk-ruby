# frozen_string_literal: true

# This is generated code!

module Aws::Signer
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.signer#AccountId', name: 'AccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]{12}$"})
    AddProfilePermissionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#AddProfilePermissionRequest', name: 'AddProfilePermissionRequest')
    AddProfilePermissionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#AddProfilePermissionResponse', name: 'AddProfilePermissionResponse')
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.signer#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}})
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#BadRequestException', name: 'BadRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Blob = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.signer#Blob', name: 'Blob')
    BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.signer#BucketName', name: 'BucketName')
    CancelSigningProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#CancelSigningProfileRequest', name: 'CancelSigningProfileRequest')
    Category = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.signer#Category', name: 'Category')
    CertificateArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.signer#CertificateArn', name: 'CertificateArn')
    CertificateHashes = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.signer#CertificateHashes', name: 'CertificateHashes')
    ClientRequestToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.signer#ClientRequestToken', name: 'ClientRequestToken')
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DescribeSigningJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#DescribeSigningJobRequest', name: 'DescribeSigningJobRequest')
    DescribeSigningJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#DescribeSigningJobResponse', name: 'DescribeSigningJobResponse')
    Destination = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#Destination', name: 'Destination')
    DisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.signer#DisplayName', name: 'DisplayName')
    EncryptionAlgorithm = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.signer#EncryptionAlgorithm', name: 'EncryptionAlgorithm')
    EncryptionAlgorithmOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#EncryptionAlgorithmOptions', name: 'EncryptionAlgorithmOptions')
    EncryptionAlgorithms = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.signer#EncryptionAlgorithms', name: 'EncryptionAlgorithms')
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.signer#ErrorCode', name: 'ErrorCode')
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.signer#ErrorMessage', name: 'ErrorMessage')
    GetRevocationStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#GetRevocationStatusRequest', name: 'GetRevocationStatusRequest')
    GetRevocationStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#GetRevocationStatusResponse', name: 'GetRevocationStatusResponse')
    GetSigningPlatformRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#GetSigningPlatformRequest', name: 'GetSigningPlatformRequest')
    GetSigningPlatformResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#GetSigningPlatformResponse', name: 'GetSigningPlatformResponse')
    GetSigningProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#GetSigningProfileRequest', name: 'GetSigningProfileRequest')
    GetSigningProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#GetSigningProfileResponse', name: 'GetSigningProfileResponse')
    HashAlgorithm = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.signer#HashAlgorithm', name: 'HashAlgorithm')
    HashAlgorithmOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#HashAlgorithmOptions', name: 'HashAlgorithmOptions')
    HashAlgorithms = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.signer#HashAlgorithms', name: 'HashAlgorithms')
    ImageFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.signer#ImageFormat', name: 'ImageFormat')
    ImageFormats = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.signer#ImageFormats', name: 'ImageFormats')
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.signer#Integer', name: 'Integer', traits: {"smithy.api#default" => 0})
    InternalServiceErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#InternalServiceErrorException', name: 'InternalServiceErrorException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    JobId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.signer#JobId', name: 'JobId')
    Key = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.signer#Key', name: 'Key')
    ListProfilePermissionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#ListProfilePermissionsRequest', name: 'ListProfilePermissionsRequest')
    ListProfilePermissionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#ListProfilePermissionsResponse', name: 'ListProfilePermissionsResponse')
    ListSigningJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#ListSigningJobsRequest', name: 'ListSigningJobsRequest')
    ListSigningJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#ListSigningJobsResponse', name: 'ListSigningJobsResponse')
    ListSigningPlatformsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#ListSigningPlatformsRequest', name: 'ListSigningPlatformsRequest')
    ListSigningPlatformsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#ListSigningPlatformsResponse', name: 'ListSigningPlatformsResponse')
    ListSigningProfilesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#ListSigningProfilesRequest', name: 'ListSigningProfilesRequest')
    ListSigningProfilesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#ListSigningProfilesResponse', name: 'ListSigningProfilesResponse')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.signer#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 25}})
    MaxSizeInMB = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.signer#MaxSizeInMB', name: 'MaxSizeInMB', traits: {"smithy.api#default" => 0})
    Metadata = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.signer#Metadata', name: 'Metadata')
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.signer#NextToken', name: 'NextToken')
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#NotFoundException', name: 'NotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Payload = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.signer#Payload', name: 'Payload', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    Permission = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#Permission', name: 'Permission')
    Permissions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.signer#Permissions', name: 'Permissions')
    PlatformId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.signer#PlatformId', name: 'PlatformId')
    PolicySizeBytes = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.signer#PolicySizeBytes', name: 'PolicySizeBytes', traits: {"smithy.api#default" => 0})
    Prefix = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.signer#Prefix', name: 'Prefix')
    ProfileName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.signer#ProfileName', name: 'ProfileName', traits: {"smithy.api#length" => {"min" => 2, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_]{2,}$"})
    ProfileVersion = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.signer#ProfileVersion', name: 'ProfileVersion', traits: {"smithy.api#length" => {"min" => 10, "max" => 10}, "smithy.api#pattern" => "^[a-zA-Z0-9]{10}$"})
    PutSigningProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#PutSigningProfileRequest', name: 'PutSigningProfileRequest')
    PutSigningProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#PutSigningProfileResponse', name: 'PutSigningProfileResponse')
    RemoveProfilePermissionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#RemoveProfilePermissionRequest', name: 'RemoveProfilePermissionRequest')
    RemoveProfilePermissionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#RemoveProfilePermissionResponse', name: 'RemoveProfilePermissionResponse')
    RequestedBy = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.signer#RequestedBy', name: 'RequestedBy')
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RevocationReasonString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.signer#RevocationReasonString', name: 'RevocationReasonString', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    RevokeSignatureRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#RevokeSignatureRequest', name: 'RevokeSignatureRequest')
    RevokeSigningProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#RevokeSigningProfileRequest', name: 'RevokeSigningProfileRequest')
    RevokedEntities = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.signer#RevokedEntities', name: 'RevokedEntities')
    S3Destination = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#S3Destination', name: 'S3Destination')
    S3SignedObject = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#S3SignedObject', name: 'S3SignedObject')
    S3Source = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#S3Source', name: 'S3Source')
    ServiceLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#ServiceLimitExceededException', name: 'ServiceLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SignPayloadRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#SignPayloadRequest', name: 'SignPayloadRequest')
    SignPayloadResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#SignPayloadResponse', name: 'SignPayloadResponse')
    SignatureValidityPeriod = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#SignatureValidityPeriod', name: 'SignatureValidityPeriod')
    SignedObject = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#SignedObject', name: 'SignedObject')
    SigningConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#SigningConfiguration', name: 'SigningConfiguration')
    SigningConfigurationOverrides = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#SigningConfigurationOverrides', name: 'SigningConfigurationOverrides')
    SigningImageFormat = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#SigningImageFormat', name: 'SigningImageFormat')
    SigningJob = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#SigningJob', name: 'SigningJob')
    SigningJobRevocationRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#SigningJobRevocationRecord', name: 'SigningJobRevocationRecord')
    SigningJobs = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.signer#SigningJobs', name: 'SigningJobs')
    SigningMaterial = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#SigningMaterial', name: 'SigningMaterial')
    SigningParameterKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.signer#SigningParameterKey', name: 'SigningParameterKey')
    SigningParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.signer#SigningParameterValue', name: 'SigningParameterValue')
    SigningParameters = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.signer#SigningParameters', name: 'SigningParameters')
    SigningPlatform = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#SigningPlatform', name: 'SigningPlatform')
    SigningPlatformOverrides = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#SigningPlatformOverrides', name: 'SigningPlatformOverrides')
    SigningPlatforms = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.signer#SigningPlatforms', name: 'SigningPlatforms')
    SigningProfile = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#SigningProfile', name: 'SigningProfile')
    SigningProfileRevocationRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#SigningProfileRevocationRecord', name: 'SigningProfileRevocationRecord')
    SigningProfileStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.signer#SigningProfileStatus', name: 'SigningProfileStatus')
    SigningProfiles = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.signer#SigningProfiles', name: 'SigningProfiles')
    SigningStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.signer#SigningStatus', name: 'SigningStatus')
    Source = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#Source', name: 'Source')
    StartSigningJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#StartSigningJobRequest', name: 'StartSigningJobRequest')
    StartSigningJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#StartSigningJobResponse', name: 'StartSigningJobResponse')
    StatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.signer#StatusReason', name: 'StatusReason')
    Statuses = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.signer#Statuses', name: 'Statuses')
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.signer#String', name: 'String')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.signer#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.signer#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.signer#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.signer#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#deprecated" => {"message" => "Instead of this error, TooManyRequestsException should be used."}, "smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.signer#Timestamp', name: 'Timestamp')
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#TooManyRequestsException', name: 'TooManyRequestsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#UntagResourceResponse', name: 'UntagResourceResponse')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.signer#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidityType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.signer#ValidityType', name: 'ValidityType')
    Version = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.signer#Version', name: 'Version')
    Bool = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.signer#bool', name: 'Bool', traits: {"smithy.api#default" => false})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    AccessDeniedException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'code'))
    AccessDeniedException.type = Types::AccessDeniedException
    AddProfilePermissionRequest.add_member(:profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileName, location_name: 'profileName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AddProfilePermissionRequest.add_member(:profile_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileVersion, location_name: 'profileVersion'))
    AddProfilePermissionRequest.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'action', traits: {"smithy.api#required" => {}}))
    AddProfilePermissionRequest.add_member(:principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'principal', traits: {"smithy.api#required" => {}}))
    AddProfilePermissionRequest.add_member(:revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'revisionId'))
    AddProfilePermissionRequest.add_member(:statement_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'statementId', traits: {"smithy.api#required" => {}}))
    AddProfilePermissionRequest.type = Types::AddProfilePermissionRequest
    AddProfilePermissionResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'revisionId'))
    AddProfilePermissionResponse.type = Types::AddProfilePermissionResponse
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    BadRequestException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'code'))
    BadRequestException.type = Types::BadRequestException
    CancelSigningProfileRequest.add_member(:profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileName, location_name: 'profileName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelSigningProfileRequest.type = Types::CancelSigningProfileRequest
    Category.add_member(:aws_io_t, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWSIoT', traits: {"smithy.api#enumValue" => "AWSIoT"}))
    CertificateHashes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ConflictException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'code'))
    ConflictException.type = Types::ConflictException
    DescribeSigningJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeSigningJobRequest.type = Types::DescribeSigningJobRequest
    DescribeSigningJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId'))
    DescribeSigningJobResponse.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source'))
    DescribeSigningJobResponse.add_member(:signing_material, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningMaterial, location_name: 'signingMaterial'))
    DescribeSigningJobResponse.add_member(:platform_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformId, location_name: 'platformId'))
    DescribeSigningJobResponse.add_member(:platform_display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'platformDisplayName'))
    DescribeSigningJobResponse.add_member(:profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileName, location_name: 'profileName'))
    DescribeSigningJobResponse.add_member(:profile_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileVersion, location_name: 'profileVersion'))
    DescribeSigningJobResponse.add_member(:overrides, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningPlatformOverrides, location_name: 'overrides'))
    DescribeSigningJobResponse.add_member(:signing_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningParameters, location_name: 'signingParameters'))
    DescribeSigningJobResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt'))
    DescribeSigningJobResponse.add_member(:completed_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'completedAt'))
    DescribeSigningJobResponse.add_member(:signature_expires_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'signatureExpiresAt'))
    DescribeSigningJobResponse.add_member(:requested_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestedBy, location_name: 'requestedBy'))
    DescribeSigningJobResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningStatus, location_name: 'status'))
    DescribeSigningJobResponse.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusReason, location_name: 'statusReason'))
    DescribeSigningJobResponse.add_member(:revocation_record, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningJobRevocationRecord, location_name: 'revocationRecord'))
    DescribeSigningJobResponse.add_member(:signed_object, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SignedObject, location_name: 'signedObject'))
    DescribeSigningJobResponse.add_member(:job_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'jobOwner'))
    DescribeSigningJobResponse.add_member(:job_invoker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'jobInvoker'))
    DescribeSigningJobResponse.type = Types::DescribeSigningJobResponse
    Destination.add_member(:s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Destination, location_name: 's3'))
    Destination.type = Types::Destination
    EncryptionAlgorithm.add_member(:rsa, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSA', traits: {"smithy.api#enumValue" => "RSA"}))
    EncryptionAlgorithm.add_member(:ecdsa, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ECDSA', traits: {"smithy.api#enumValue" => "ECDSA"}))
    EncryptionAlgorithmOptions.add_member(:allowed_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionAlgorithms, location_name: 'allowedValues', traits: {"smithy.api#required" => {}}))
    EncryptionAlgorithmOptions.add_member(:default_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionAlgorithm, location_name: 'defaultValue', traits: {"smithy.api#required" => {}}))
    EncryptionAlgorithmOptions.type = Types::EncryptionAlgorithmOptions
    EncryptionAlgorithms.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionAlgorithm)
    GetRevocationStatusRequest.add_member(:signature_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'signatureTimestamp', traits: {"smithy.api#httpQuery" => "signatureTimestamp", "smithy.api#required" => {}}))
    GetRevocationStatusRequest.add_member(:platform_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformId, location_name: 'platformId', traits: {"smithy.api#httpQuery" => "platformId", "smithy.api#required" => {}}))
    GetRevocationStatusRequest.add_member(:profile_version_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'profileVersionArn', traits: {"smithy.api#httpQuery" => "profileVersionArn", "smithy.api#required" => {}}))
    GetRevocationStatusRequest.add_member(:job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'jobArn', traits: {"smithy.api#httpQuery" => "jobArn", "smithy.api#required" => {}}))
    GetRevocationStatusRequest.add_member(:certificate_hashes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateHashes, location_name: 'certificateHashes', traits: {"smithy.api#httpQuery" => "certificateHashes", "smithy.api#required" => {}}))
    GetRevocationStatusRequest.type = Types::GetRevocationStatusRequest
    GetRevocationStatusResponse.add_member(:revoked_entities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevokedEntities, location_name: 'revokedEntities'))
    GetRevocationStatusResponse.type = Types::GetRevocationStatusResponse
    GetSigningPlatformRequest.add_member(:platform_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformId, location_name: 'platformId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSigningPlatformRequest.type = Types::GetSigningPlatformRequest
    GetSigningPlatformResponse.add_member(:platform_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformId, location_name: 'platformId'))
    GetSigningPlatformResponse.add_member(:display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'displayName'))
    GetSigningPlatformResponse.add_member(:partner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'partner'))
    GetSigningPlatformResponse.add_member(:target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'target'))
    GetSigningPlatformResponse.add_member(:category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Category, location_name: 'category'))
    GetSigningPlatformResponse.add_member(:signing_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningConfiguration, location_name: 'signingConfiguration'))
    GetSigningPlatformResponse.add_member(:signing_image_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningImageFormat, location_name: 'signingImageFormat'))
    GetSigningPlatformResponse.add_member(:max_size_in_mb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSizeInMB, location_name: 'maxSizeInMB', traits: {"smithy.api#default" => 0}))
    GetSigningPlatformResponse.add_member(:revocation_supported, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'revocationSupported', traits: {"smithy.api#default" => false}))
    GetSigningPlatformResponse.type = Types::GetSigningPlatformResponse
    GetSigningProfileRequest.add_member(:profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileName, location_name: 'profileName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSigningProfileRequest.add_member(:profile_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'profileOwner', traits: {"smithy.api#httpQuery" => "profileOwner"}))
    GetSigningProfileRequest.type = Types::GetSigningProfileRequest
    GetSigningProfileResponse.add_member(:profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileName, location_name: 'profileName'))
    GetSigningProfileResponse.add_member(:profile_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileVersion, location_name: 'profileVersion'))
    GetSigningProfileResponse.add_member(:profile_version_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'profileVersionArn'))
    GetSigningProfileResponse.add_member(:revocation_record, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningProfileRevocationRecord, location_name: 'revocationRecord'))
    GetSigningProfileResponse.add_member(:signing_material, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningMaterial, location_name: 'signingMaterial'))
    GetSigningProfileResponse.add_member(:platform_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformId, location_name: 'platformId'))
    GetSigningProfileResponse.add_member(:platform_display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'platformDisplayName'))
    GetSigningProfileResponse.add_member(:signature_validity_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SignatureValidityPeriod, location_name: 'signatureValidityPeriod'))
    GetSigningProfileResponse.add_member(:overrides, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningPlatformOverrides, location_name: 'overrides'))
    GetSigningProfileResponse.add_member(:signing_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningParameters, location_name: 'signingParameters'))
    GetSigningProfileResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningProfileStatus, location_name: 'status'))
    GetSigningProfileResponse.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'statusReason'))
    GetSigningProfileResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn'))
    GetSigningProfileResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    GetSigningProfileResponse.type = Types::GetSigningProfileResponse
    HashAlgorithm.add_member(:sha1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHA1', traits: {"smithy.api#enumValue" => "SHA1"}))
    HashAlgorithm.add_member(:sha256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHA256', traits: {"smithy.api#enumValue" => "SHA256"}))
    HashAlgorithmOptions.add_member(:allowed_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HashAlgorithms, location_name: 'allowedValues', traits: {"smithy.api#required" => {}}))
    HashAlgorithmOptions.add_member(:default_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HashAlgorithm, location_name: 'defaultValue', traits: {"smithy.api#required" => {}}))
    HashAlgorithmOptions.type = Types::HashAlgorithmOptions
    HashAlgorithms.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HashAlgorithm)
    ImageFormat.add_member(:json, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON', traits: {"smithy.api#enumValue" => "JSON"}))
    ImageFormat.add_member(:json_embedded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSONEmbedded', traits: {"smithy.api#enumValue" => "JSONEmbedded"}))
    ImageFormat.add_member(:json_detached, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSONDetached', traits: {"smithy.api#enumValue" => "JSONDetached"}))
    ImageFormats.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageFormat)
    InternalServiceErrorException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InternalServiceErrorException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'code'))
    InternalServiceErrorException.type = Types::InternalServiceErrorException
    ListProfilePermissionsRequest.add_member(:profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileName, location_name: 'profileName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListProfilePermissionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListProfilePermissionsRequest.type = Types::ListProfilePermissionsRequest
    ListProfilePermissionsResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'revisionId'))
    ListProfilePermissionsResponse.add_member(:policy_size_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicySizeBytes, location_name: 'policySizeBytes', traits: {"smithy.api#default" => 0}))
    ListProfilePermissionsResponse.add_member(:permissions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Permissions, location_name: 'permissions'))
    ListProfilePermissionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListProfilePermissionsResponse.type = Types::ListProfilePermissionsResponse
    ListSigningJobsRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningStatus, location_name: 'status', traits: {"smithy.api#httpQuery" => "status"}))
    ListSigningJobsRequest.add_member(:platform_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformId, location_name: 'platformId', traits: {"smithy.api#httpQuery" => "platformId"}))
    ListSigningJobsRequest.add_member(:requested_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestedBy, location_name: 'requestedBy', traits: {"smithy.api#httpQuery" => "requestedBy"}))
    ListSigningJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListSigningJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSigningJobsRequest.add_member(:is_revoked, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'isRevoked', traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "isRevoked"}))
    ListSigningJobsRequest.add_member(:signature_expires_before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'signatureExpiresBefore', traits: {"smithy.api#httpQuery" => "signatureExpiresBefore"}))
    ListSigningJobsRequest.add_member(:signature_expires_after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'signatureExpiresAfter', traits: {"smithy.api#httpQuery" => "signatureExpiresAfter"}))
    ListSigningJobsRequest.add_member(:job_invoker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'jobInvoker', traits: {"smithy.api#httpQuery" => "jobInvoker"}))
    ListSigningJobsRequest.type = Types::ListSigningJobsRequest
    ListSigningJobsResponse.add_member(:jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningJobs, location_name: 'jobs'))
    ListSigningJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListSigningJobsResponse.type = Types::ListSigningJobsResponse
    ListSigningPlatformsRequest.add_member(:category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'category', traits: {"smithy.api#httpQuery" => "category"}))
    ListSigningPlatformsRequest.add_member(:partner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'partner', traits: {"smithy.api#httpQuery" => "partner"}))
    ListSigningPlatformsRequest.add_member(:target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'target', traits: {"smithy.api#httpQuery" => "target"}))
    ListSigningPlatformsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListSigningPlatformsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSigningPlatformsRequest.type = Types::ListSigningPlatformsRequest
    ListSigningPlatformsResponse.add_member(:platforms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningPlatforms, location_name: 'platforms'))
    ListSigningPlatformsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListSigningPlatformsResponse.type = Types::ListSigningPlatformsResponse
    ListSigningProfilesRequest.add_member(:include_canceled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'includeCanceled', traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "includeCanceled"}))
    ListSigningProfilesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListSigningProfilesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSigningProfilesRequest.add_member(:platform_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformId, location_name: 'platformId', traits: {"smithy.api#httpQuery" => "platformId"}))
    ListSigningProfilesRequest.add_member(:statuses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Statuses, location_name: 'statuses', traits: {"smithy.api#httpQuery" => "statuses"}))
    ListSigningProfilesRequest.type = Types::ListSigningProfilesRequest
    ListSigningProfilesResponse.add_member(:profiles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningProfiles, location_name: 'profiles'))
    ListSigningProfilesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListSigningProfilesResponse.type = Types::ListSigningProfilesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    Metadata.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Metadata.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    NotFoundException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'code'))
    NotFoundException.type = Types::NotFoundException
    Permission.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'action'))
    Permission.add_member(:principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'principal'))
    Permission.add_member(:statement_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'statementId'))
    Permission.add_member(:profile_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileVersion, location_name: 'profileVersion'))
    Permission.type = Types::Permission
    Permissions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Permission)
    PutSigningProfileRequest.add_member(:profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileName, location_name: 'profileName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutSigningProfileRequest.add_member(:signing_material, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningMaterial, location_name: 'signingMaterial'))
    PutSigningProfileRequest.add_member(:signature_validity_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SignatureValidityPeriod, location_name: 'signatureValidityPeriod'))
    PutSigningProfileRequest.add_member(:platform_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformId, location_name: 'platformId', traits: {"smithy.api#required" => {}}))
    PutSigningProfileRequest.add_member(:overrides, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningPlatformOverrides, location_name: 'overrides'))
    PutSigningProfileRequest.add_member(:signing_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningParameters, location_name: 'signingParameters'))
    PutSigningProfileRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    PutSigningProfileRequest.type = Types::PutSigningProfileRequest
    PutSigningProfileResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn'))
    PutSigningProfileResponse.add_member(:profile_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileVersion, location_name: 'profileVersion'))
    PutSigningProfileResponse.add_member(:profile_version_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'profileVersionArn'))
    PutSigningProfileResponse.type = Types::PutSigningProfileResponse
    RemoveProfilePermissionRequest.add_member(:profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileName, location_name: 'profileName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveProfilePermissionRequest.add_member(:revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'revisionId', traits: {"smithy.api#httpQuery" => "revisionId", "smithy.api#required" => {}}))
    RemoveProfilePermissionRequest.add_member(:statement_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'statementId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveProfilePermissionRequest.type = Types::RemoveProfilePermissionRequest
    RemoveProfilePermissionResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'revisionId'))
    RemoveProfilePermissionResponse.type = Types::RemoveProfilePermissionResponse
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ResourceNotFoundException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'code'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RevokeSignatureRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RevokeSignatureRequest.add_member(:job_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'jobOwner'))
    RevokeSignatureRequest.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevocationReasonString, location_name: 'reason', traits: {"smithy.api#required" => {}}))
    RevokeSignatureRequest.type = Types::RevokeSignatureRequest
    RevokeSigningProfileRequest.add_member(:profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileName, location_name: 'profileName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RevokeSigningProfileRequest.add_member(:profile_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileVersion, location_name: 'profileVersion', traits: {"smithy.api#required" => {}}))
    RevokeSigningProfileRequest.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevocationReasonString, location_name: 'reason', traits: {"smithy.api#required" => {}}))
    RevokeSigningProfileRequest.add_member(:effective_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'effectiveTime', traits: {"smithy.api#required" => {}}))
    RevokeSigningProfileRequest.type = Types::RevokeSigningProfileRequest
    RevokedEntities.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    S3Destination.add_member(:bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: 'bucketName'))
    S3Destination.add_member(:prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prefix, location_name: 'prefix'))
    S3Destination.type = Types::S3Destination
    S3SignedObject.add_member(:bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: 'bucketName'))
    S3SignedObject.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: 'key'))
    S3SignedObject.type = Types::S3SignedObject
    S3Source.add_member(:bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: 'bucketName', traits: {"smithy.api#required" => {}}))
    S3Source.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: 'key', traits: {"smithy.api#required" => {}}))
    S3Source.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#required" => {}}))
    S3Source.type = Types::S3Source
    ServiceLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ServiceLimitExceededException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'code'))
    ServiceLimitExceededException.type = Types::ServiceLimitExceededException
    SignPayloadRequest.add_member(:profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileName, location_name: 'profileName', traits: {"smithy.api#required" => {}}))
    SignPayloadRequest.add_member(:profile_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'profileOwner'))
    SignPayloadRequest.add_member(:payload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Payload, location_name: 'payload', traits: {"smithy.api#required" => {}}))
    SignPayloadRequest.add_member(:payload_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'payloadFormat', traits: {"smithy.api#required" => {}}))
    SignPayloadRequest.type = Types::SignPayloadRequest
    SignPayloadResponse.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId'))
    SignPayloadResponse.add_member(:job_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'jobOwner'))
    SignPayloadResponse.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Metadata, location_name: 'metadata'))
    SignPayloadResponse.add_member(:signature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Blob, location_name: 'signature'))
    SignPayloadResponse.type = Types::SignPayloadResponse
    SignatureValidityPeriod.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'value', traits: {"smithy.api#default" => 0}))
    SignatureValidityPeriod.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidityType, location_name: 'type'))
    SignatureValidityPeriod.type = Types::SignatureValidityPeriod
    SignedObject.add_member(:s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3SignedObject, location_name: 's3'))
    SignedObject.type = Types::SignedObject
    SigningConfiguration.add_member(:encryption_algorithm_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionAlgorithmOptions, location_name: 'encryptionAlgorithmOptions', traits: {"smithy.api#required" => {}}))
    SigningConfiguration.add_member(:hash_algorithm_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HashAlgorithmOptions, location_name: 'hashAlgorithmOptions', traits: {"smithy.api#required" => {}}))
    SigningConfiguration.type = Types::SigningConfiguration
    SigningConfigurationOverrides.add_member(:encryption_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionAlgorithm, location_name: 'encryptionAlgorithm'))
    SigningConfigurationOverrides.add_member(:hash_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HashAlgorithm, location_name: 'hashAlgorithm'))
    SigningConfigurationOverrides.type = Types::SigningConfigurationOverrides
    SigningImageFormat.add_member(:supported_formats, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageFormats, location_name: 'supportedFormats', traits: {"smithy.api#required" => {}}))
    SigningImageFormat.add_member(:default_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageFormat, location_name: 'defaultFormat', traits: {"smithy.api#required" => {}}))
    SigningImageFormat.type = Types::SigningImageFormat
    SigningJob.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId'))
    SigningJob.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source'))
    SigningJob.add_member(:signed_object, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SignedObject, location_name: 'signedObject'))
    SigningJob.add_member(:signing_material, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningMaterial, location_name: 'signingMaterial'))
    SigningJob.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt'))
    SigningJob.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningStatus, location_name: 'status'))
    SigningJob.add_member(:is_revoked, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'isRevoked', traits: {"smithy.api#default" => false}))
    SigningJob.add_member(:profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileName, location_name: 'profileName'))
    SigningJob.add_member(:profile_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileVersion, location_name: 'profileVersion'))
    SigningJob.add_member(:platform_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformId, location_name: 'platformId'))
    SigningJob.add_member(:platform_display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'platformDisplayName'))
    SigningJob.add_member(:signature_expires_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'signatureExpiresAt'))
    SigningJob.add_member(:job_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'jobOwner'))
    SigningJob.add_member(:job_invoker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'jobInvoker'))
    SigningJob.type = Types::SigningJob
    SigningJobRevocationRecord.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'reason'))
    SigningJobRevocationRecord.add_member(:revoked_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'revokedAt'))
    SigningJobRevocationRecord.add_member(:revoked_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'revokedBy'))
    SigningJobRevocationRecord.type = Types::SigningJobRevocationRecord
    SigningJobs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningJob)
    SigningMaterial.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateArn, location_name: 'certificateArn', traits: {"smithy.api#required" => {}}))
    SigningMaterial.type = Types::SigningMaterial
    SigningParameters.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningParameterKey)
    SigningParameters.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningParameterValue)
    SigningPlatform.add_member(:platform_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'platformId'))
    SigningPlatform.add_member(:display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'displayName'))
    SigningPlatform.add_member(:partner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'partner'))
    SigningPlatform.add_member(:target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'target'))
    SigningPlatform.add_member(:category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Category, location_name: 'category'))
    SigningPlatform.add_member(:signing_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningConfiguration, location_name: 'signingConfiguration'))
    SigningPlatform.add_member(:signing_image_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningImageFormat, location_name: 'signingImageFormat'))
    SigningPlatform.add_member(:max_size_in_mb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSizeInMB, location_name: 'maxSizeInMB', traits: {"smithy.api#default" => 0}))
    SigningPlatform.add_member(:revocation_supported, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'revocationSupported', traits: {"smithy.api#default" => false}))
    SigningPlatform.type = Types::SigningPlatform
    SigningPlatformOverrides.add_member(:signing_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningConfigurationOverrides, location_name: 'signingConfiguration'))
    SigningPlatformOverrides.add_member(:signing_image_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageFormat, location_name: 'signingImageFormat'))
    SigningPlatformOverrides.type = Types::SigningPlatformOverrides
    SigningPlatforms.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningPlatform)
    SigningProfile.add_member(:profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileName, location_name: 'profileName'))
    SigningProfile.add_member(:profile_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileVersion, location_name: 'profileVersion'))
    SigningProfile.add_member(:profile_version_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'profileVersionArn'))
    SigningProfile.add_member(:signing_material, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningMaterial, location_name: 'signingMaterial'))
    SigningProfile.add_member(:signature_validity_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SignatureValidityPeriod, location_name: 'signatureValidityPeriod'))
    SigningProfile.add_member(:platform_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformId, location_name: 'platformId'))
    SigningProfile.add_member(:platform_display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'platformDisplayName'))
    SigningProfile.add_member(:signing_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningParameters, location_name: 'signingParameters'))
    SigningProfile.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningProfileStatus, location_name: 'status'))
    SigningProfile.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn'))
    SigningProfile.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    SigningProfile.type = Types::SigningProfile
    SigningProfileRevocationRecord.add_member(:revocation_effective_from, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'revocationEffectiveFrom'))
    SigningProfileRevocationRecord.add_member(:revoked_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'revokedAt'))
    SigningProfileRevocationRecord.add_member(:revoked_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'revokedBy'))
    SigningProfileRevocationRecord.type = Types::SigningProfileRevocationRecord
    SigningProfileStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Active', traits: {"smithy.api#enumValue" => "Active"}))
    SigningProfileStatus.add_member(:canceled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Canceled', traits: {"smithy.api#enumValue" => "Canceled"}))
    SigningProfileStatus.add_member(:revoked, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Revoked', traits: {"smithy.api#enumValue" => "Revoked"}))
    SigningProfiles.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningProfile)
    SigningStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InProgress', traits: {"smithy.api#enumValue" => "InProgress"}))
    SigningStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    SigningStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Succeeded', traits: {"smithy.api#enumValue" => "Succeeded"}))
    Source.add_member(:s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Source, location_name: 's3'))
    Source.type = Types::Source
    StartSigningJobRequest.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#required" => {}}))
    StartSigningJobRequest.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Destination, location_name: 'destination', traits: {"smithy.api#required" => {}}))
    StartSigningJobRequest.add_member(:profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileName, location_name: 'profileName', traits: {"smithy.api#required" => {}}))
    StartSigningJobRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken', traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    StartSigningJobRequest.add_member(:profile_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'profileOwner'))
    StartSigningJobRequest.type = Types::StartSigningJobRequest
    StartSigningJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId'))
    StartSigningJobResponse.add_member(:job_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'jobOwner'))
    StartSigningJobResponse.type = Types::StartSigningJobResponse
    Statuses.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningProfileStatus)
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ThrottlingException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'code'))
    ThrottlingException.type = Types::ThrottlingException
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    TooManyRequestsException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'code'))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ValidationException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'code'))
    ValidationException.type = Types::ValidationException
    ValidityType.add_member(:days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DAYS', traits: {"smithy.api#enumValue" => "DAYS"}))
    ValidityType.add_member(:months, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MONTHS', traits: {"smithy.api#enumValue" => "MONTHS"}))
    ValidityType.add_member(:years, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'YEARS', traits: {"smithy.api#enumValue" => "YEARS"}))

    WallabyService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.signer#WallabyService"
      service.name = "WallabyService"
      service.version = "2017-08-25"
      service.traits = {"aws.api#service" => {"sdkId" => "signer", "arnNamespace" => "signer", "cloudFormationName" => "Signer", "cloudTrailEventSource" => "signer.amazonaws.com", "endpointPrefix" => "signer"}, "aws.auth#sigv4" => {"name" => "signer"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Signer"}
      service.add_operation(:add_profile_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signer#AddProfilePermission"
        operation.name = "AddProfilePermission"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddProfilePermissionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddProfilePermissionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/signing-profiles/{profileName}/permissions", "code" => 200}}
      end)
      service.add_operation(:cancel_signing_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signer#CancelSigningProfile"
        operation.name = "CancelSigningProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelSigningProfileRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/signing-profiles/{profileName}", "code" => 200}}
      end)
      service.add_operation(:describe_signing_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signer#DescribeSigningJob"
        operation.name = "DescribeSigningJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSigningJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSigningJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/signing-jobs/{jobId}", "code" => 200}}
      end)
      service.add_operation(:get_revocation_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signer#GetRevocationStatus"
        operation.name = "GetRevocationStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRevocationStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRevocationStatusResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "verification."}, "smithy.api#http" => {"method" => "GET", "uri" => "/revocations", "code" => 200}}
      end)
      service.add_operation(:get_signing_platform, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signer#GetSigningPlatform"
        operation.name = "GetSigningPlatform"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSigningPlatformRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSigningPlatformResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/signing-platforms/{platformId}", "code" => 200}}
      end)
      service.add_operation(:get_signing_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signer#GetSigningProfile"
        operation.name = "GetSigningProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSigningProfileRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSigningProfileResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/signing-profiles/{profileName}", "code" => 200}}
      end)
      service.add_operation(:list_profile_permissions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signer#ListProfilePermissions"
        operation.name = "ListProfilePermissions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListProfilePermissionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListProfilePermissionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/signing-profiles/{profileName}/permissions", "code" => 200}}
      end)
      service.add_operation(:list_signing_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signer#ListSigningJobs"
        operation.name = "ListSigningJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSigningJobsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSigningJobsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/signing-jobs", "code" => 200}}
        operation[:paginator] = Paginators::ListSigningJobs.new
      end)
      service.add_operation(:list_signing_platforms, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signer#ListSigningPlatforms"
        operation.name = "ListSigningPlatforms"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSigningPlatformsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSigningPlatformsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/signing-platforms", "code" => 200}}
        operation[:paginator] = Paginators::ListSigningPlatforms.new
      end)
      service.add_operation(:list_signing_profiles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signer#ListSigningProfiles"
        operation.name = "ListSigningProfiles"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSigningProfilesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSigningProfilesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/signing-profiles", "code" => 200}}
        operation[:paginator] = Paginators::ListSigningProfiles.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signer#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:put_signing_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signer#PutSigningProfile"
        operation.name = "PutSigningProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutSigningProfileRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutSigningProfileResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/signing-profiles/{profileName}", "code" => 200}}
      end)
      service.add_operation(:remove_profile_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signer#RemoveProfilePermission"
        operation.name = "RemoveProfilePermission"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveProfilePermissionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveProfilePermissionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/signing-profiles/{profileName}/permissions/{statementId}", "code" => 200}}
      end)
      service.add_operation(:revoke_signature, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signer#RevokeSignature"
        operation.name = "RevokeSignature"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevokeSignatureRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/signing-jobs/{jobId}/revoke", "code" => 200}}
      end)
      service.add_operation(:revoke_signing_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signer#RevokeSigningProfile"
        operation.name = "RevokeSigningProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevokeSigningProfileRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/signing-profiles/{profileName}/revoke", "code" => 200}}
      end)
      service.add_operation(:sign_payload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signer#SignPayload"
        operation.name = "SignPayload"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SignPayloadRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SignPayloadResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/signing-jobs/with-payload", "code" => 200}}
      end)
      service.add_operation(:start_signing_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signer#StartSigningJob"
        operation.name = "StartSigningJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartSigningJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartSigningJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/signing-jobs", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signer#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.signer#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
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
