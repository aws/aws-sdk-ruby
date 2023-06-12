# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Signer
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AddProfilePermissionRequest = Shapes::StructureShape.new(name: 'AddProfilePermissionRequest')
    AddProfilePermissionResponse = Shapes::StructureShape.new(name: 'AddProfilePermissionResponse')
    Arn = Shapes::StringShape.new(name: 'Arn')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    Blob = Shapes::BlobShape.new(name: 'Blob')
    BucketName = Shapes::StringShape.new(name: 'BucketName')
    CancelSigningProfileRequest = Shapes::StructureShape.new(name: 'CancelSigningProfileRequest')
    Category = Shapes::StringShape.new(name: 'Category')
    CertificateArn = Shapes::StringShape.new(name: 'CertificateArn')
    CertificateHashes = Shapes::ListShape.new(name: 'CertificateHashes')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    DescribeSigningJobRequest = Shapes::StructureShape.new(name: 'DescribeSigningJobRequest')
    DescribeSigningJobResponse = Shapes::StructureShape.new(name: 'DescribeSigningJobResponse')
    Destination = Shapes::StructureShape.new(name: 'Destination')
    DisplayName = Shapes::StringShape.new(name: 'DisplayName')
    EncryptionAlgorithm = Shapes::StringShape.new(name: 'EncryptionAlgorithm')
    EncryptionAlgorithmOptions = Shapes::StructureShape.new(name: 'EncryptionAlgorithmOptions')
    EncryptionAlgorithms = Shapes::ListShape.new(name: 'EncryptionAlgorithms')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    GetRevocationStatusRequest = Shapes::StructureShape.new(name: 'GetRevocationStatusRequest')
    GetRevocationStatusResponse = Shapes::StructureShape.new(name: 'GetRevocationStatusResponse')
    GetSigningPlatformRequest = Shapes::StructureShape.new(name: 'GetSigningPlatformRequest')
    GetSigningPlatformResponse = Shapes::StructureShape.new(name: 'GetSigningPlatformResponse')
    GetSigningProfileRequest = Shapes::StructureShape.new(name: 'GetSigningProfileRequest')
    GetSigningProfileResponse = Shapes::StructureShape.new(name: 'GetSigningProfileResponse')
    HashAlgorithm = Shapes::StringShape.new(name: 'HashAlgorithm')
    HashAlgorithmOptions = Shapes::StructureShape.new(name: 'HashAlgorithmOptions')
    HashAlgorithms = Shapes::ListShape.new(name: 'HashAlgorithms')
    ImageFormat = Shapes::StringShape.new(name: 'ImageFormat')
    ImageFormats = Shapes::ListShape.new(name: 'ImageFormats')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServiceErrorException = Shapes::StructureShape.new(name: 'InternalServiceErrorException')
    JobId = Shapes::StringShape.new(name: 'JobId')
    Key = Shapes::StringShape.new(name: 'Key')
    ListProfilePermissionsRequest = Shapes::StructureShape.new(name: 'ListProfilePermissionsRequest')
    ListProfilePermissionsResponse = Shapes::StructureShape.new(name: 'ListProfilePermissionsResponse')
    ListSigningJobsRequest = Shapes::StructureShape.new(name: 'ListSigningJobsRequest')
    ListSigningJobsResponse = Shapes::StructureShape.new(name: 'ListSigningJobsResponse')
    ListSigningPlatformsRequest = Shapes::StructureShape.new(name: 'ListSigningPlatformsRequest')
    ListSigningPlatformsResponse = Shapes::StructureShape.new(name: 'ListSigningPlatformsResponse')
    ListSigningProfilesRequest = Shapes::StructureShape.new(name: 'ListSigningProfilesRequest')
    ListSigningProfilesResponse = Shapes::StructureShape.new(name: 'ListSigningProfilesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaxSizeInMB = Shapes::IntegerShape.new(name: 'MaxSizeInMB')
    Metadata = Shapes::MapShape.new(name: 'Metadata')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    Payload = Shapes::BlobShape.new(name: 'Payload')
    Permission = Shapes::StructureShape.new(name: 'Permission')
    Permissions = Shapes::ListShape.new(name: 'Permissions')
    PlatformId = Shapes::StringShape.new(name: 'PlatformId')
    PolicySizeBytes = Shapes::IntegerShape.new(name: 'PolicySizeBytes')
    Prefix = Shapes::StringShape.new(name: 'Prefix')
    ProfileName = Shapes::StringShape.new(name: 'ProfileName')
    ProfileVersion = Shapes::StringShape.new(name: 'ProfileVersion')
    PutSigningProfileRequest = Shapes::StructureShape.new(name: 'PutSigningProfileRequest')
    PutSigningProfileResponse = Shapes::StructureShape.new(name: 'PutSigningProfileResponse')
    RemoveProfilePermissionRequest = Shapes::StructureShape.new(name: 'RemoveProfilePermissionRequest')
    RemoveProfilePermissionResponse = Shapes::StructureShape.new(name: 'RemoveProfilePermissionResponse')
    RequestedBy = Shapes::StringShape.new(name: 'RequestedBy')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RevocationReasonString = Shapes::StringShape.new(name: 'RevocationReasonString')
    RevokeSignatureRequest = Shapes::StructureShape.new(name: 'RevokeSignatureRequest')
    RevokeSigningProfileRequest = Shapes::StructureShape.new(name: 'RevokeSigningProfileRequest')
    RevokedEntities = Shapes::ListShape.new(name: 'RevokedEntities')
    S3Destination = Shapes::StructureShape.new(name: 'S3Destination')
    S3SignedObject = Shapes::StructureShape.new(name: 'S3SignedObject')
    S3Source = Shapes::StructureShape.new(name: 'S3Source')
    ServiceLimitExceededException = Shapes::StructureShape.new(name: 'ServiceLimitExceededException')
    SignPayloadRequest = Shapes::StructureShape.new(name: 'SignPayloadRequest')
    SignPayloadResponse = Shapes::StructureShape.new(name: 'SignPayloadResponse')
    SignatureValidityPeriod = Shapes::StructureShape.new(name: 'SignatureValidityPeriod')
    SignedObject = Shapes::StructureShape.new(name: 'SignedObject')
    SigningConfiguration = Shapes::StructureShape.new(name: 'SigningConfiguration')
    SigningConfigurationOverrides = Shapes::StructureShape.new(name: 'SigningConfigurationOverrides')
    SigningImageFormat = Shapes::StructureShape.new(name: 'SigningImageFormat')
    SigningJob = Shapes::StructureShape.new(name: 'SigningJob')
    SigningJobRevocationRecord = Shapes::StructureShape.new(name: 'SigningJobRevocationRecord')
    SigningJobs = Shapes::ListShape.new(name: 'SigningJobs')
    SigningMaterial = Shapes::StructureShape.new(name: 'SigningMaterial')
    SigningParameterKey = Shapes::StringShape.new(name: 'SigningParameterKey')
    SigningParameterValue = Shapes::StringShape.new(name: 'SigningParameterValue')
    SigningParameters = Shapes::MapShape.new(name: 'SigningParameters')
    SigningPlatform = Shapes::StructureShape.new(name: 'SigningPlatform')
    SigningPlatformOverrides = Shapes::StructureShape.new(name: 'SigningPlatformOverrides')
    SigningPlatforms = Shapes::ListShape.new(name: 'SigningPlatforms')
    SigningProfile = Shapes::StructureShape.new(name: 'SigningProfile')
    SigningProfileRevocationRecord = Shapes::StructureShape.new(name: 'SigningProfileRevocationRecord')
    SigningProfileStatus = Shapes::StringShape.new(name: 'SigningProfileStatus')
    SigningProfiles = Shapes::ListShape.new(name: 'SigningProfiles')
    SigningStatus = Shapes::StringShape.new(name: 'SigningStatus')
    Source = Shapes::StructureShape.new(name: 'Source')
    StartSigningJobRequest = Shapes::StructureShape.new(name: 'StartSigningJobRequest')
    StartSigningJobResponse = Shapes::StructureShape.new(name: 'StartSigningJobResponse')
    StatusReason = Shapes::StringShape.new(name: 'StatusReason')
    Statuses = Shapes::ListShape.new(name: 'Statuses')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidityType = Shapes::StringShape.new(name: 'ValidityType')
    Version = Shapes::StringShape.new(name: 'Version')
    bool = Shapes::BooleanShape.new(name: 'bool')
    string = Shapes::StringShape.new(name: 'string')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    AccessDeniedException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "code"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AddProfilePermissionRequest.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileName, required: true, location: "uri", location_name: "profileName"))
    AddProfilePermissionRequest.add_member(:profile_version, Shapes::ShapeRef.new(shape: ProfileVersion, location_name: "profileVersion"))
    AddProfilePermissionRequest.add_member(:action, Shapes::ShapeRef.new(shape: String, required: true, location_name: "action"))
    AddProfilePermissionRequest.add_member(:principal, Shapes::ShapeRef.new(shape: String, required: true, location_name: "principal"))
    AddProfilePermissionRequest.add_member(:revision_id, Shapes::ShapeRef.new(shape: String, location_name: "revisionId"))
    AddProfilePermissionRequest.add_member(:statement_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "statementId"))
    AddProfilePermissionRequest.struct_class = Types::AddProfilePermissionRequest

    AddProfilePermissionResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: String, location_name: "revisionId"))
    AddProfilePermissionResponse.struct_class = Types::AddProfilePermissionResponse

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    BadRequestException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "code"))
    BadRequestException.struct_class = Types::BadRequestException

    CancelSigningProfileRequest.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileName, required: true, location: "uri", location_name: "profileName"))
    CancelSigningProfileRequest.struct_class = Types::CancelSigningProfileRequest

    CertificateHashes.member = Shapes::ShapeRef.new(shape: String)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ConflictException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "code"))
    ConflictException.struct_class = Types::ConflictException

    DescribeSigningJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    DescribeSigningJobRequest.struct_class = Types::DescribeSigningJobRequest

    DescribeSigningJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "jobId"))
    DescribeSigningJobResponse.add_member(:source, Shapes::ShapeRef.new(shape: Source, location_name: "source"))
    DescribeSigningJobResponse.add_member(:signing_material, Shapes::ShapeRef.new(shape: SigningMaterial, location_name: "signingMaterial"))
    DescribeSigningJobResponse.add_member(:platform_id, Shapes::ShapeRef.new(shape: PlatformId, location_name: "platformId"))
    DescribeSigningJobResponse.add_member(:platform_display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "platformDisplayName"))
    DescribeSigningJobResponse.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileName, location_name: "profileName"))
    DescribeSigningJobResponse.add_member(:profile_version, Shapes::ShapeRef.new(shape: ProfileVersion, location_name: "profileVersion"))
    DescribeSigningJobResponse.add_member(:overrides, Shapes::ShapeRef.new(shape: SigningPlatformOverrides, location_name: "overrides"))
    DescribeSigningJobResponse.add_member(:signing_parameters, Shapes::ShapeRef.new(shape: SigningParameters, location_name: "signingParameters"))
    DescribeSigningJobResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    DescribeSigningJobResponse.add_member(:completed_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "completedAt"))
    DescribeSigningJobResponse.add_member(:signature_expires_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "signatureExpiresAt"))
    DescribeSigningJobResponse.add_member(:requested_by, Shapes::ShapeRef.new(shape: RequestedBy, location_name: "requestedBy"))
    DescribeSigningJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: SigningStatus, location_name: "status"))
    DescribeSigningJobResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: StatusReason, location_name: "statusReason"))
    DescribeSigningJobResponse.add_member(:revocation_record, Shapes::ShapeRef.new(shape: SigningJobRevocationRecord, location_name: "revocationRecord"))
    DescribeSigningJobResponse.add_member(:signed_object, Shapes::ShapeRef.new(shape: SignedObject, location_name: "signedObject"))
    DescribeSigningJobResponse.add_member(:job_owner, Shapes::ShapeRef.new(shape: AccountId, location_name: "jobOwner"))
    DescribeSigningJobResponse.add_member(:job_invoker, Shapes::ShapeRef.new(shape: AccountId, location_name: "jobInvoker"))
    DescribeSigningJobResponse.struct_class = Types::DescribeSigningJobResponse

    Destination.add_member(:s3, Shapes::ShapeRef.new(shape: S3Destination, location_name: "s3"))
    Destination.struct_class = Types::Destination

    EncryptionAlgorithmOptions.add_member(:allowed_values, Shapes::ShapeRef.new(shape: EncryptionAlgorithms, required: true, location_name: "allowedValues"))
    EncryptionAlgorithmOptions.add_member(:default_value, Shapes::ShapeRef.new(shape: EncryptionAlgorithm, required: true, location_name: "defaultValue"))
    EncryptionAlgorithmOptions.struct_class = Types::EncryptionAlgorithmOptions

    EncryptionAlgorithms.member = Shapes::ShapeRef.new(shape: EncryptionAlgorithm)

    GetRevocationStatusRequest.add_member(:signature_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "signatureTimestamp"))
    GetRevocationStatusRequest.add_member(:platform_id, Shapes::ShapeRef.new(shape: PlatformId, required: true, location: "querystring", location_name: "platformId"))
    GetRevocationStatusRequest.add_member(:profile_version_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "profileVersionArn"))
    GetRevocationStatusRequest.add_member(:job_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "jobArn"))
    GetRevocationStatusRequest.add_member(:certificate_hashes, Shapes::ShapeRef.new(shape: CertificateHashes, required: true, location: "querystring", location_name: "certificateHashes"))
    GetRevocationStatusRequest.struct_class = Types::GetRevocationStatusRequest

    GetRevocationStatusResponse.add_member(:revoked_entities, Shapes::ShapeRef.new(shape: RevokedEntities, location_name: "revokedEntities"))
    GetRevocationStatusResponse.struct_class = Types::GetRevocationStatusResponse

    GetSigningPlatformRequest.add_member(:platform_id, Shapes::ShapeRef.new(shape: PlatformId, required: true, location: "uri", location_name: "platformId"))
    GetSigningPlatformRequest.struct_class = Types::GetSigningPlatformRequest

    GetSigningPlatformResponse.add_member(:platform_id, Shapes::ShapeRef.new(shape: PlatformId, location_name: "platformId"))
    GetSigningPlatformResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "displayName"))
    GetSigningPlatformResponse.add_member(:partner, Shapes::ShapeRef.new(shape: String, location_name: "partner"))
    GetSigningPlatformResponse.add_member(:target, Shapes::ShapeRef.new(shape: String, location_name: "target"))
    GetSigningPlatformResponse.add_member(:category, Shapes::ShapeRef.new(shape: Category, location_name: "category"))
    GetSigningPlatformResponse.add_member(:signing_configuration, Shapes::ShapeRef.new(shape: SigningConfiguration, location_name: "signingConfiguration"))
    GetSigningPlatformResponse.add_member(:signing_image_format, Shapes::ShapeRef.new(shape: SigningImageFormat, location_name: "signingImageFormat"))
    GetSigningPlatformResponse.add_member(:max_size_in_mb, Shapes::ShapeRef.new(shape: MaxSizeInMB, location_name: "maxSizeInMB"))
    GetSigningPlatformResponse.add_member(:revocation_supported, Shapes::ShapeRef.new(shape: bool, location_name: "revocationSupported"))
    GetSigningPlatformResponse.struct_class = Types::GetSigningPlatformResponse

    GetSigningProfileRequest.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileName, required: true, location: "uri", location_name: "profileName"))
    GetSigningProfileRequest.add_member(:profile_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "profileOwner"))
    GetSigningProfileRequest.struct_class = Types::GetSigningProfileRequest

    GetSigningProfileResponse.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileName, location_name: "profileName"))
    GetSigningProfileResponse.add_member(:profile_version, Shapes::ShapeRef.new(shape: ProfileVersion, location_name: "profileVersion"))
    GetSigningProfileResponse.add_member(:profile_version_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "profileVersionArn"))
    GetSigningProfileResponse.add_member(:revocation_record, Shapes::ShapeRef.new(shape: SigningProfileRevocationRecord, location_name: "revocationRecord"))
    GetSigningProfileResponse.add_member(:signing_material, Shapes::ShapeRef.new(shape: SigningMaterial, location_name: "signingMaterial"))
    GetSigningProfileResponse.add_member(:platform_id, Shapes::ShapeRef.new(shape: PlatformId, location_name: "platformId"))
    GetSigningProfileResponse.add_member(:platform_display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "platformDisplayName"))
    GetSigningProfileResponse.add_member(:signature_validity_period, Shapes::ShapeRef.new(shape: SignatureValidityPeriod, location_name: "signatureValidityPeriod"))
    GetSigningProfileResponse.add_member(:overrides, Shapes::ShapeRef.new(shape: SigningPlatformOverrides, location_name: "overrides"))
    GetSigningProfileResponse.add_member(:signing_parameters, Shapes::ShapeRef.new(shape: SigningParameters, location_name: "signingParameters"))
    GetSigningProfileResponse.add_member(:status, Shapes::ShapeRef.new(shape: SigningProfileStatus, location_name: "status"))
    GetSigningProfileResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    GetSigningProfileResponse.add_member(:arn, Shapes::ShapeRef.new(shape: string, location_name: "arn"))
    GetSigningProfileResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetSigningProfileResponse.struct_class = Types::GetSigningProfileResponse

    HashAlgorithmOptions.add_member(:allowed_values, Shapes::ShapeRef.new(shape: HashAlgorithms, required: true, location_name: "allowedValues"))
    HashAlgorithmOptions.add_member(:default_value, Shapes::ShapeRef.new(shape: HashAlgorithm, required: true, location_name: "defaultValue"))
    HashAlgorithmOptions.struct_class = Types::HashAlgorithmOptions

    HashAlgorithms.member = Shapes::ShapeRef.new(shape: HashAlgorithm)

    ImageFormats.member = Shapes::ShapeRef.new(shape: ImageFormat)

    InternalServiceErrorException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InternalServiceErrorException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "code"))
    InternalServiceErrorException.struct_class = Types::InternalServiceErrorException

    ListProfilePermissionsRequest.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileName, required: true, location: "uri", location_name: "profileName"))
    ListProfilePermissionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListProfilePermissionsRequest.struct_class = Types::ListProfilePermissionsRequest

    ListProfilePermissionsResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: String, location_name: "revisionId"))
    ListProfilePermissionsResponse.add_member(:policy_size_bytes, Shapes::ShapeRef.new(shape: PolicySizeBytes, location_name: "policySizeBytes"))
    ListProfilePermissionsResponse.add_member(:permissions, Shapes::ShapeRef.new(shape: Permissions, location_name: "permissions"))
    ListProfilePermissionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListProfilePermissionsResponse.struct_class = Types::ListProfilePermissionsResponse

    ListSigningJobsRequest.add_member(:status, Shapes::ShapeRef.new(shape: SigningStatus, location: "querystring", location_name: "status"))
    ListSigningJobsRequest.add_member(:platform_id, Shapes::ShapeRef.new(shape: PlatformId, location: "querystring", location_name: "platformId"))
    ListSigningJobsRequest.add_member(:requested_by, Shapes::ShapeRef.new(shape: RequestedBy, location: "querystring", location_name: "requestedBy"))
    ListSigningJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListSigningJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListSigningJobsRequest.add_member(:is_revoked, Shapes::ShapeRef.new(shape: bool, location: "querystring", location_name: "isRevoked"))
    ListSigningJobsRequest.add_member(:signature_expires_before, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "signatureExpiresBefore"))
    ListSigningJobsRequest.add_member(:signature_expires_after, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "signatureExpiresAfter"))
    ListSigningJobsRequest.add_member(:job_invoker, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "jobInvoker"))
    ListSigningJobsRequest.struct_class = Types::ListSigningJobsRequest

    ListSigningJobsResponse.add_member(:jobs, Shapes::ShapeRef.new(shape: SigningJobs, location_name: "jobs"))
    ListSigningJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSigningJobsResponse.struct_class = Types::ListSigningJobsResponse

    ListSigningPlatformsRequest.add_member(:category, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "category"))
    ListSigningPlatformsRequest.add_member(:partner, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "partner"))
    ListSigningPlatformsRequest.add_member(:target, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "target"))
    ListSigningPlatformsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListSigningPlatformsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListSigningPlatformsRequest.struct_class = Types::ListSigningPlatformsRequest

    ListSigningPlatformsResponse.add_member(:platforms, Shapes::ShapeRef.new(shape: SigningPlatforms, location_name: "platforms"))
    ListSigningPlatformsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListSigningPlatformsResponse.struct_class = Types::ListSigningPlatformsResponse

    ListSigningProfilesRequest.add_member(:include_canceled, Shapes::ShapeRef.new(shape: bool, location: "querystring", location_name: "includeCanceled"))
    ListSigningProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListSigningProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListSigningProfilesRequest.add_member(:platform_id, Shapes::ShapeRef.new(shape: PlatformId, location: "querystring", location_name: "platformId"))
    ListSigningProfilesRequest.add_member(:statuses, Shapes::ShapeRef.new(shape: Statuses, location: "querystring", location_name: "statuses"))
    ListSigningProfilesRequest.struct_class = Types::ListSigningProfilesRequest

    ListSigningProfilesResponse.add_member(:profiles, Shapes::ShapeRef.new(shape: SigningProfiles, location_name: "profiles"))
    ListSigningProfilesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSigningProfilesResponse.struct_class = Types::ListSigningProfilesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    Metadata.key = Shapes::ShapeRef.new(shape: String)
    Metadata.value = Shapes::ShapeRef.new(shape: String)

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    NotFoundException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "code"))
    NotFoundException.struct_class = Types::NotFoundException

    Permission.add_member(:action, Shapes::ShapeRef.new(shape: String, location_name: "action"))
    Permission.add_member(:principal, Shapes::ShapeRef.new(shape: String, location_name: "principal"))
    Permission.add_member(:statement_id, Shapes::ShapeRef.new(shape: String, location_name: "statementId"))
    Permission.add_member(:profile_version, Shapes::ShapeRef.new(shape: ProfileVersion, location_name: "profileVersion"))
    Permission.struct_class = Types::Permission

    Permissions.member = Shapes::ShapeRef.new(shape: Permission)

    PutSigningProfileRequest.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileName, required: true, location: "uri", location_name: "profileName"))
    PutSigningProfileRequest.add_member(:signing_material, Shapes::ShapeRef.new(shape: SigningMaterial, location_name: "signingMaterial"))
    PutSigningProfileRequest.add_member(:signature_validity_period, Shapes::ShapeRef.new(shape: SignatureValidityPeriod, location_name: "signatureValidityPeriod"))
    PutSigningProfileRequest.add_member(:platform_id, Shapes::ShapeRef.new(shape: PlatformId, required: true, location_name: "platformId"))
    PutSigningProfileRequest.add_member(:overrides, Shapes::ShapeRef.new(shape: SigningPlatformOverrides, location_name: "overrides"))
    PutSigningProfileRequest.add_member(:signing_parameters, Shapes::ShapeRef.new(shape: SigningParameters, location_name: "signingParameters"))
    PutSigningProfileRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    PutSigningProfileRequest.struct_class = Types::PutSigningProfileRequest

    PutSigningProfileResponse.add_member(:arn, Shapes::ShapeRef.new(shape: string, location_name: "arn"))
    PutSigningProfileResponse.add_member(:profile_version, Shapes::ShapeRef.new(shape: ProfileVersion, location_name: "profileVersion"))
    PutSigningProfileResponse.add_member(:profile_version_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "profileVersionArn"))
    PutSigningProfileResponse.struct_class = Types::PutSigningProfileResponse

    RemoveProfilePermissionRequest.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileName, required: true, location: "uri", location_name: "profileName"))
    RemoveProfilePermissionRequest.add_member(:revision_id, Shapes::ShapeRef.new(shape: String, required: true, location: "querystring", location_name: "revisionId"))
    RemoveProfilePermissionRequest.add_member(:statement_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "statementId"))
    RemoveProfilePermissionRequest.struct_class = Types::RemoveProfilePermissionRequest

    RemoveProfilePermissionResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: String, location_name: "revisionId"))
    RemoveProfilePermissionResponse.struct_class = Types::RemoveProfilePermissionResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceNotFoundException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "code"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RevokeSignatureRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    RevokeSignatureRequest.add_member(:job_owner, Shapes::ShapeRef.new(shape: AccountId, location_name: "jobOwner"))
    RevokeSignatureRequest.add_member(:reason, Shapes::ShapeRef.new(shape: RevocationReasonString, required: true, location_name: "reason"))
    RevokeSignatureRequest.struct_class = Types::RevokeSignatureRequest

    RevokeSigningProfileRequest.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileName, required: true, location: "uri", location_name: "profileName"))
    RevokeSigningProfileRequest.add_member(:profile_version, Shapes::ShapeRef.new(shape: ProfileVersion, required: true, location_name: "profileVersion"))
    RevokeSigningProfileRequest.add_member(:reason, Shapes::ShapeRef.new(shape: RevocationReasonString, required: true, location_name: "reason"))
    RevokeSigningProfileRequest.add_member(:effective_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "effectiveTime"))
    RevokeSigningProfileRequest.struct_class = Types::RevokeSigningProfileRequest

    RevokedEntities.member = Shapes::ShapeRef.new(shape: String)

    S3Destination.add_member(:bucket_name, Shapes::ShapeRef.new(shape: BucketName, location_name: "bucketName"))
    S3Destination.add_member(:prefix, Shapes::ShapeRef.new(shape: Prefix, location_name: "prefix"))
    S3Destination.struct_class = Types::S3Destination

    S3SignedObject.add_member(:bucket_name, Shapes::ShapeRef.new(shape: BucketName, location_name: "bucketName"))
    S3SignedObject.add_member(:key, Shapes::ShapeRef.new(shape: Key, location_name: "key"))
    S3SignedObject.struct_class = Types::S3SignedObject

    S3Source.add_member(:bucket_name, Shapes::ShapeRef.new(shape: BucketName, required: true, location_name: "bucketName"))
    S3Source.add_member(:key, Shapes::ShapeRef.new(shape: Key, required: true, location_name: "key"))
    S3Source.add_member(:version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "version"))
    S3Source.struct_class = Types::S3Source

    ServiceLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ServiceLimitExceededException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "code"))
    ServiceLimitExceededException.struct_class = Types::ServiceLimitExceededException

    SignPayloadRequest.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileName, required: true, location_name: "profileName"))
    SignPayloadRequest.add_member(:profile_owner, Shapes::ShapeRef.new(shape: AccountId, location_name: "profileOwner"))
    SignPayloadRequest.add_member(:payload, Shapes::ShapeRef.new(shape: Payload, required: true, location_name: "payload"))
    SignPayloadRequest.add_member(:payload_format, Shapes::ShapeRef.new(shape: String, required: true, location_name: "payloadFormat"))
    SignPayloadRequest.struct_class = Types::SignPayloadRequest

    SignPayloadResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "jobId"))
    SignPayloadResponse.add_member(:job_owner, Shapes::ShapeRef.new(shape: AccountId, location_name: "jobOwner"))
    SignPayloadResponse.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "metadata"))
    SignPayloadResponse.add_member(:signature, Shapes::ShapeRef.new(shape: Blob, location_name: "signature"))
    SignPayloadResponse.struct_class = Types::SignPayloadResponse

    SignatureValidityPeriod.add_member(:value, Shapes::ShapeRef.new(shape: Integer, location_name: "value"))
    SignatureValidityPeriod.add_member(:type, Shapes::ShapeRef.new(shape: ValidityType, location_name: "type"))
    SignatureValidityPeriod.struct_class = Types::SignatureValidityPeriod

    SignedObject.add_member(:s3, Shapes::ShapeRef.new(shape: S3SignedObject, location_name: "s3"))
    SignedObject.struct_class = Types::SignedObject

    SigningConfiguration.add_member(:encryption_algorithm_options, Shapes::ShapeRef.new(shape: EncryptionAlgorithmOptions, required: true, location_name: "encryptionAlgorithmOptions"))
    SigningConfiguration.add_member(:hash_algorithm_options, Shapes::ShapeRef.new(shape: HashAlgorithmOptions, required: true, location_name: "hashAlgorithmOptions"))
    SigningConfiguration.struct_class = Types::SigningConfiguration

    SigningConfigurationOverrides.add_member(:encryption_algorithm, Shapes::ShapeRef.new(shape: EncryptionAlgorithm, location_name: "encryptionAlgorithm"))
    SigningConfigurationOverrides.add_member(:hash_algorithm, Shapes::ShapeRef.new(shape: HashAlgorithm, location_name: "hashAlgorithm"))
    SigningConfigurationOverrides.struct_class = Types::SigningConfigurationOverrides

    SigningImageFormat.add_member(:supported_formats, Shapes::ShapeRef.new(shape: ImageFormats, required: true, location_name: "supportedFormats"))
    SigningImageFormat.add_member(:default_format, Shapes::ShapeRef.new(shape: ImageFormat, required: true, location_name: "defaultFormat"))
    SigningImageFormat.struct_class = Types::SigningImageFormat

    SigningJob.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "jobId"))
    SigningJob.add_member(:source, Shapes::ShapeRef.new(shape: Source, location_name: "source"))
    SigningJob.add_member(:signed_object, Shapes::ShapeRef.new(shape: SignedObject, location_name: "signedObject"))
    SigningJob.add_member(:signing_material, Shapes::ShapeRef.new(shape: SigningMaterial, location_name: "signingMaterial"))
    SigningJob.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    SigningJob.add_member(:status, Shapes::ShapeRef.new(shape: SigningStatus, location_name: "status"))
    SigningJob.add_member(:is_revoked, Shapes::ShapeRef.new(shape: bool, location_name: "isRevoked"))
    SigningJob.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileName, location_name: "profileName"))
    SigningJob.add_member(:profile_version, Shapes::ShapeRef.new(shape: ProfileVersion, location_name: "profileVersion"))
    SigningJob.add_member(:platform_id, Shapes::ShapeRef.new(shape: PlatformId, location_name: "platformId"))
    SigningJob.add_member(:platform_display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "platformDisplayName"))
    SigningJob.add_member(:signature_expires_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "signatureExpiresAt"))
    SigningJob.add_member(:job_owner, Shapes::ShapeRef.new(shape: AccountId, location_name: "jobOwner"))
    SigningJob.add_member(:job_invoker, Shapes::ShapeRef.new(shape: AccountId, location_name: "jobInvoker"))
    SigningJob.struct_class = Types::SigningJob

    SigningJobRevocationRecord.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "reason"))
    SigningJobRevocationRecord.add_member(:revoked_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "revokedAt"))
    SigningJobRevocationRecord.add_member(:revoked_by, Shapes::ShapeRef.new(shape: String, location_name: "revokedBy"))
    SigningJobRevocationRecord.struct_class = Types::SigningJobRevocationRecord

    SigningJobs.member = Shapes::ShapeRef.new(shape: SigningJob)

    SigningMaterial.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: CertificateArn, required: true, location_name: "certificateArn"))
    SigningMaterial.struct_class = Types::SigningMaterial

    SigningParameters.key = Shapes::ShapeRef.new(shape: SigningParameterKey)
    SigningParameters.value = Shapes::ShapeRef.new(shape: SigningParameterValue)

    SigningPlatform.add_member(:platform_id, Shapes::ShapeRef.new(shape: String, location_name: "platformId"))
    SigningPlatform.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    SigningPlatform.add_member(:partner, Shapes::ShapeRef.new(shape: String, location_name: "partner"))
    SigningPlatform.add_member(:target, Shapes::ShapeRef.new(shape: String, location_name: "target"))
    SigningPlatform.add_member(:category, Shapes::ShapeRef.new(shape: Category, location_name: "category"))
    SigningPlatform.add_member(:signing_configuration, Shapes::ShapeRef.new(shape: SigningConfiguration, location_name: "signingConfiguration"))
    SigningPlatform.add_member(:signing_image_format, Shapes::ShapeRef.new(shape: SigningImageFormat, location_name: "signingImageFormat"))
    SigningPlatform.add_member(:max_size_in_mb, Shapes::ShapeRef.new(shape: MaxSizeInMB, location_name: "maxSizeInMB"))
    SigningPlatform.add_member(:revocation_supported, Shapes::ShapeRef.new(shape: bool, location_name: "revocationSupported"))
    SigningPlatform.struct_class = Types::SigningPlatform

    SigningPlatformOverrides.add_member(:signing_configuration, Shapes::ShapeRef.new(shape: SigningConfigurationOverrides, location_name: "signingConfiguration"))
    SigningPlatformOverrides.add_member(:signing_image_format, Shapes::ShapeRef.new(shape: ImageFormat, location_name: "signingImageFormat"))
    SigningPlatformOverrides.struct_class = Types::SigningPlatformOverrides

    SigningPlatforms.member = Shapes::ShapeRef.new(shape: SigningPlatform)

    SigningProfile.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileName, location_name: "profileName"))
    SigningProfile.add_member(:profile_version, Shapes::ShapeRef.new(shape: ProfileVersion, location_name: "profileVersion"))
    SigningProfile.add_member(:profile_version_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "profileVersionArn"))
    SigningProfile.add_member(:signing_material, Shapes::ShapeRef.new(shape: SigningMaterial, location_name: "signingMaterial"))
    SigningProfile.add_member(:signature_validity_period, Shapes::ShapeRef.new(shape: SignatureValidityPeriod, location_name: "signatureValidityPeriod"))
    SigningProfile.add_member(:platform_id, Shapes::ShapeRef.new(shape: PlatformId, location_name: "platformId"))
    SigningProfile.add_member(:platform_display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "platformDisplayName"))
    SigningProfile.add_member(:signing_parameters, Shapes::ShapeRef.new(shape: SigningParameters, location_name: "signingParameters"))
    SigningProfile.add_member(:status, Shapes::ShapeRef.new(shape: SigningProfileStatus, location_name: "status"))
    SigningProfile.add_member(:arn, Shapes::ShapeRef.new(shape: string, location_name: "arn"))
    SigningProfile.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    SigningProfile.struct_class = Types::SigningProfile

    SigningProfileRevocationRecord.add_member(:revocation_effective_from, Shapes::ShapeRef.new(shape: Timestamp, location_name: "revocationEffectiveFrom"))
    SigningProfileRevocationRecord.add_member(:revoked_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "revokedAt"))
    SigningProfileRevocationRecord.add_member(:revoked_by, Shapes::ShapeRef.new(shape: String, location_name: "revokedBy"))
    SigningProfileRevocationRecord.struct_class = Types::SigningProfileRevocationRecord

    SigningProfiles.member = Shapes::ShapeRef.new(shape: SigningProfile)

    Source.add_member(:s3, Shapes::ShapeRef.new(shape: S3Source, location_name: "s3"))
    Source.struct_class = Types::Source

    StartSigningJobRequest.add_member(:source, Shapes::ShapeRef.new(shape: Source, required: true, location_name: "source"))
    StartSigningJobRequest.add_member(:destination, Shapes::ShapeRef.new(shape: Destination, required: true, location_name: "destination"))
    StartSigningJobRequest.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileName, required: true, location_name: "profileName"))
    StartSigningJobRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "clientRequestToken", metadata: {"idempotencyToken"=>true}))
    StartSigningJobRequest.add_member(:profile_owner, Shapes::ShapeRef.new(shape: AccountId, location_name: "profileOwner"))
    StartSigningJobRequest.struct_class = Types::StartSigningJobRequest

    StartSigningJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "jobId"))
    StartSigningJobResponse.add_member(:job_owner, Shapes::ShapeRef.new(shape: AccountId, location_name: "jobOwner"))
    StartSigningJobResponse.struct_class = Types::StartSigningJobResponse

    Statuses.member = Shapes::ShapeRef.new(shape: SigningProfileStatus)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ThrottlingException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "code"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    TooManyRequestsException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "code"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ValidationException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "code"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-08-25"

      api.metadata = {
        "apiVersion" => "2017-08-25",
        "endpointPrefix" => "signer",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "signer",
        "serviceFullName" => "AWS Signer",
        "serviceId" => "signer",
        "signatureVersion" => "v4",
        "signingName" => "signer",
        "uid" => "signer-2017-08-25",
      }

      api.add_operation(:add_profile_permission, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddProfilePermission"
        o.http_method = "POST"
        o.http_request_uri = "/signing-profiles/{profileName}/permissions"
        o.input = Shapes::ShapeRef.new(shape: AddProfilePermissionRequest)
        o.output = Shapes::ShapeRef.new(shape: AddProfilePermissionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:cancel_signing_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelSigningProfile"
        o.http_method = "DELETE"
        o.http_request_uri = "/signing-profiles/{profileName}"
        o.input = Shapes::ShapeRef.new(shape: CancelSigningProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:describe_signing_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSigningJob"
        o.http_method = "GET"
        o.http_request_uri = "/signing-jobs/{jobId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeSigningJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSigningJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:get_revocation_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRevocationStatus"
        o.http_method = "GET"
        o.http_request_uri = "/revocations"
        o.endpoint_pattern = {
          "hostPrefix" => "verification.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetRevocationStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRevocationStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:get_signing_platform, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSigningPlatform"
        o.http_method = "GET"
        o.http_request_uri = "/signing-platforms/{platformId}"
        o.input = Shapes::ShapeRef.new(shape: GetSigningPlatformRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSigningPlatformResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:get_signing_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSigningProfile"
        o.http_method = "GET"
        o.http_request_uri = "/signing-profiles/{profileName}"
        o.input = Shapes::ShapeRef.new(shape: GetSigningProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSigningProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:list_profile_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProfilePermissions"
        o.http_method = "GET"
        o.http_request_uri = "/signing-profiles/{profileName}/permissions"
        o.input = Shapes::ShapeRef.new(shape: ListProfilePermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProfilePermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:list_signing_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSigningJobs"
        o.http_method = "GET"
        o.http_request_uri = "/signing-jobs"
        o.input = Shapes::ShapeRef.new(shape: ListSigningJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSigningJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_signing_platforms, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSigningPlatforms"
        o.http_method = "GET"
        o.http_request_uri = "/signing-platforms"
        o.input = Shapes::ShapeRef.new(shape: ListSigningPlatformsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSigningPlatformsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_signing_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSigningProfiles"
        o.http_method = "GET"
        o.http_request_uri = "/signing-profiles"
        o.input = Shapes::ShapeRef.new(shape: ListSigningProfilesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSigningProfilesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
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
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:put_signing_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutSigningProfile"
        o.http_method = "PUT"
        o.http_request_uri = "/signing-profiles/{profileName}"
        o.input = Shapes::ShapeRef.new(shape: PutSigningProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: PutSigningProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:remove_profile_permission, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveProfilePermission"
        o.http_method = "DELETE"
        o.http_request_uri = "/signing-profiles/{profileName}/permissions/{statementId}"
        o.input = Shapes::ShapeRef.new(shape: RemoveProfilePermissionRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveProfilePermissionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:revoke_signature, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RevokeSignature"
        o.http_method = "PUT"
        o.http_request_uri = "/signing-jobs/{jobId}/revoke"
        o.input = Shapes::ShapeRef.new(shape: RevokeSignatureRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:revoke_signing_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RevokeSigningProfile"
        o.http_method = "PUT"
        o.http_request_uri = "/signing-profiles/{profileName}/revoke"
        o.input = Shapes::ShapeRef.new(shape: RevokeSigningProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:sign_payload, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SignPayload"
        o.http_method = "POST"
        o.http_request_uri = "/signing-jobs/with-payload"
        o.input = Shapes::ShapeRef.new(shape: SignPayloadRequest)
        o.output = Shapes::ShapeRef.new(shape: SignPayloadResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:start_signing_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartSigningJob"
        o.http_method = "POST"
        o.http_request_uri = "/signing-jobs"
        o.input = Shapes::ShapeRef.new(shape: StartSigningJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartSigningJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)
    end

  end
end
