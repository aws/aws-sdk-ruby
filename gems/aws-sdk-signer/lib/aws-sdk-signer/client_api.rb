# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Signer
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    BucketName = Shapes::StringShape.new(name: 'BucketName')
    CancelSigningProfileRequest = Shapes::StructureShape.new(name: 'CancelSigningProfileRequest')
    Category = Shapes::StringShape.new(name: 'Category')
    CertificateArn = Shapes::StringShape.new(name: 'CertificateArn')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    CompletedAt = Shapes::TimestampShape.new(name: 'CompletedAt')
    CreatedAt = Shapes::TimestampShape.new(name: 'CreatedAt')
    DescribeSigningJobRequest = Shapes::StructureShape.new(name: 'DescribeSigningJobRequest')
    DescribeSigningJobResponse = Shapes::StructureShape.new(name: 'DescribeSigningJobResponse')
    Destination = Shapes::StructureShape.new(name: 'Destination')
    DisplayName = Shapes::StringShape.new(name: 'DisplayName')
    EncryptionAlgorithm = Shapes::StringShape.new(name: 'EncryptionAlgorithm')
    EncryptionAlgorithmOptions = Shapes::StructureShape.new(name: 'EncryptionAlgorithmOptions')
    EncryptionAlgorithms = Shapes::ListShape.new(name: 'EncryptionAlgorithms')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    GetSigningPlatformRequest = Shapes::StructureShape.new(name: 'GetSigningPlatformRequest')
    GetSigningPlatformResponse = Shapes::StructureShape.new(name: 'GetSigningPlatformResponse')
    GetSigningProfileRequest = Shapes::StructureShape.new(name: 'GetSigningProfileRequest')
    GetSigningProfileResponse = Shapes::StructureShape.new(name: 'GetSigningProfileResponse')
    HashAlgorithm = Shapes::StringShape.new(name: 'HashAlgorithm')
    HashAlgorithmOptions = Shapes::StructureShape.new(name: 'HashAlgorithmOptions')
    HashAlgorithms = Shapes::ListShape.new(name: 'HashAlgorithms')
    ImageFormat = Shapes::StringShape.new(name: 'ImageFormat')
    ImageFormats = Shapes::ListShape.new(name: 'ImageFormats')
    InternalServiceErrorException = Shapes::StructureShape.new(name: 'InternalServiceErrorException')
    JobId = Shapes::StringShape.new(name: 'JobId')
    Key = Shapes::StringShape.new(name: 'Key')
    ListSigningJobsRequest = Shapes::StructureShape.new(name: 'ListSigningJobsRequest')
    ListSigningJobsResponse = Shapes::StructureShape.new(name: 'ListSigningJobsResponse')
    ListSigningPlatformsRequest = Shapes::StructureShape.new(name: 'ListSigningPlatformsRequest')
    ListSigningPlatformsResponse = Shapes::StructureShape.new(name: 'ListSigningPlatformsResponse')
    ListSigningProfilesRequest = Shapes::StructureShape.new(name: 'ListSigningProfilesRequest')
    ListSigningProfilesResponse = Shapes::StructureShape.new(name: 'ListSigningProfilesResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaxSizeInMB = Shapes::IntegerShape.new(name: 'MaxSizeInMB')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    PlatformId = Shapes::StringShape.new(name: 'PlatformId')
    Prefix = Shapes::StringShape.new(name: 'Prefix')
    ProfileName = Shapes::StringShape.new(name: 'ProfileName')
    PutSigningProfileRequest = Shapes::StructureShape.new(name: 'PutSigningProfileRequest')
    PutSigningProfileResponse = Shapes::StructureShape.new(name: 'PutSigningProfileResponse')
    RequestedBy = Shapes::StringShape.new(name: 'RequestedBy')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    S3Destination = Shapes::StructureShape.new(name: 'S3Destination')
    S3SignedObject = Shapes::StructureShape.new(name: 'S3SignedObject')
    S3Source = Shapes::StructureShape.new(name: 'S3Source')
    SignedObject = Shapes::StructureShape.new(name: 'SignedObject')
    SigningConfiguration = Shapes::StructureShape.new(name: 'SigningConfiguration')
    SigningConfigurationOverrides = Shapes::StructureShape.new(name: 'SigningConfigurationOverrides')
    SigningImageFormat = Shapes::StructureShape.new(name: 'SigningImageFormat')
    SigningJob = Shapes::StructureShape.new(name: 'SigningJob')
    SigningJobs = Shapes::ListShape.new(name: 'SigningJobs')
    SigningMaterial = Shapes::StructureShape.new(name: 'SigningMaterial')
    SigningParameterKey = Shapes::StringShape.new(name: 'SigningParameterKey')
    SigningParameterValue = Shapes::StringShape.new(name: 'SigningParameterValue')
    SigningParameters = Shapes::MapShape.new(name: 'SigningParameters')
    SigningPlatform = Shapes::StructureShape.new(name: 'SigningPlatform')
    SigningPlatformOverrides = Shapes::StructureShape.new(name: 'SigningPlatformOverrides')
    SigningPlatforms = Shapes::ListShape.new(name: 'SigningPlatforms')
    SigningProfile = Shapes::StructureShape.new(name: 'SigningProfile')
    SigningProfileStatus = Shapes::StringShape.new(name: 'SigningProfileStatus')
    SigningProfiles = Shapes::ListShape.new(name: 'SigningProfiles')
    SigningStatus = Shapes::StringShape.new(name: 'SigningStatus')
    Source = Shapes::StructureShape.new(name: 'Source')
    StartSigningJobRequest = Shapes::StructureShape.new(name: 'StartSigningJobRequest')
    StartSigningJobResponse = Shapes::StructureShape.new(name: 'StartSigningJobResponse')
    StatusReason = Shapes::StringShape.new(name: 'StatusReason')
    String = Shapes::StringShape.new(name: 'String')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    Version = Shapes::StringShape.new(name: 'Version')
    bool = Shapes::BooleanShape.new(name: 'bool')
    key = Shapes::StringShape.new(name: 'key')
    string = Shapes::StringShape.new(name: 'string')

    CancelSigningProfileRequest.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileName, required: true, location: "uri", location_name: "profileName"))
    CancelSigningProfileRequest.struct_class = Types::CancelSigningProfileRequest

    DescribeSigningJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    DescribeSigningJobRequest.struct_class = Types::DescribeSigningJobRequest

    DescribeSigningJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "jobId"))
    DescribeSigningJobResponse.add_member(:source, Shapes::ShapeRef.new(shape: Source, location_name: "source"))
    DescribeSigningJobResponse.add_member(:signing_material, Shapes::ShapeRef.new(shape: SigningMaterial, location_name: "signingMaterial"))
    DescribeSigningJobResponse.add_member(:platform_id, Shapes::ShapeRef.new(shape: PlatformId, location_name: "platformId"))
    DescribeSigningJobResponse.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileName, location_name: "profileName"))
    DescribeSigningJobResponse.add_member(:overrides, Shapes::ShapeRef.new(shape: SigningPlatformOverrides, location_name: "overrides"))
    DescribeSigningJobResponse.add_member(:signing_parameters, Shapes::ShapeRef.new(shape: SigningParameters, location_name: "signingParameters"))
    DescribeSigningJobResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    DescribeSigningJobResponse.add_member(:completed_at, Shapes::ShapeRef.new(shape: CompletedAt, location_name: "completedAt"))
    DescribeSigningJobResponse.add_member(:requested_by, Shapes::ShapeRef.new(shape: RequestedBy, location_name: "requestedBy"))
    DescribeSigningJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: SigningStatus, location_name: "status"))
    DescribeSigningJobResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: StatusReason, location_name: "statusReason"))
    DescribeSigningJobResponse.add_member(:signed_object, Shapes::ShapeRef.new(shape: SignedObject, location_name: "signedObject"))
    DescribeSigningJobResponse.struct_class = Types::DescribeSigningJobResponse

    Destination.add_member(:s3, Shapes::ShapeRef.new(shape: S3Destination, location_name: "s3"))
    Destination.struct_class = Types::Destination

    EncryptionAlgorithmOptions.add_member(:allowed_values, Shapes::ShapeRef.new(shape: EncryptionAlgorithms, required: true, location_name: "allowedValues"))
    EncryptionAlgorithmOptions.add_member(:default_value, Shapes::ShapeRef.new(shape: EncryptionAlgorithm, required: true, location_name: "defaultValue"))
    EncryptionAlgorithmOptions.struct_class = Types::EncryptionAlgorithmOptions

    EncryptionAlgorithms.member = Shapes::ShapeRef.new(shape: EncryptionAlgorithm)

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
    GetSigningPlatformResponse.struct_class = Types::GetSigningPlatformResponse

    GetSigningProfileRequest.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileName, required: true, location: "uri", location_name: "profileName"))
    GetSigningProfileRequest.struct_class = Types::GetSigningProfileRequest

    GetSigningProfileResponse.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileName, location_name: "profileName"))
    GetSigningProfileResponse.add_member(:signing_material, Shapes::ShapeRef.new(shape: SigningMaterial, location_name: "signingMaterial"))
    GetSigningProfileResponse.add_member(:platform_id, Shapes::ShapeRef.new(shape: PlatformId, location_name: "platformId"))
    GetSigningProfileResponse.add_member(:overrides, Shapes::ShapeRef.new(shape: SigningPlatformOverrides, location_name: "overrides"))
    GetSigningProfileResponse.add_member(:signing_parameters, Shapes::ShapeRef.new(shape: SigningParameters, location_name: "signingParameters"))
    GetSigningProfileResponse.add_member(:status, Shapes::ShapeRef.new(shape: SigningProfileStatus, location_name: "status"))
    GetSigningProfileResponse.struct_class = Types::GetSigningProfileResponse

    HashAlgorithmOptions.add_member(:allowed_values, Shapes::ShapeRef.new(shape: HashAlgorithms, required: true, location_name: "allowedValues"))
    HashAlgorithmOptions.add_member(:default_value, Shapes::ShapeRef.new(shape: HashAlgorithm, required: true, location_name: "defaultValue"))
    HashAlgorithmOptions.struct_class = Types::HashAlgorithmOptions

    HashAlgorithms.member = Shapes::ShapeRef.new(shape: HashAlgorithm)

    ImageFormats.member = Shapes::ShapeRef.new(shape: ImageFormat)

    ListSigningJobsRequest.add_member(:status, Shapes::ShapeRef.new(shape: SigningStatus, location: "querystring", location_name: "status"))
    ListSigningJobsRequest.add_member(:platform_id, Shapes::ShapeRef.new(shape: PlatformId, location: "querystring", location_name: "platformId"))
    ListSigningJobsRequest.add_member(:requested_by, Shapes::ShapeRef.new(shape: RequestedBy, location: "querystring", location_name: "requestedBy"))
    ListSigningJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListSigningJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
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
    ListSigningProfilesRequest.struct_class = Types::ListSigningProfilesRequest

    ListSigningProfilesResponse.add_member(:profiles, Shapes::ShapeRef.new(shape: SigningProfiles, location_name: "profiles"))
    ListSigningProfilesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSigningProfilesResponse.struct_class = Types::ListSigningProfilesResponse

    PutSigningProfileRequest.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileName, required: true, location: "uri", location_name: "profileName"))
    PutSigningProfileRequest.add_member(:signing_material, Shapes::ShapeRef.new(shape: SigningMaterial, required: true, location_name: "signingMaterial"))
    PutSigningProfileRequest.add_member(:platform_id, Shapes::ShapeRef.new(shape: PlatformId, required: true, location_name: "platformId"))
    PutSigningProfileRequest.add_member(:overrides, Shapes::ShapeRef.new(shape: SigningPlatformOverrides, location_name: "overrides"))
    PutSigningProfileRequest.add_member(:signing_parameters, Shapes::ShapeRef.new(shape: SigningParameters, location_name: "signingParameters"))
    PutSigningProfileRequest.struct_class = Types::PutSigningProfileRequest

    PutSigningProfileResponse.add_member(:arn, Shapes::ShapeRef.new(shape: string, location_name: "arn"))
    PutSigningProfileResponse.struct_class = Types::PutSigningProfileResponse

    S3Destination.add_member(:bucket_name, Shapes::ShapeRef.new(shape: BucketName, location_name: "bucketName"))
    S3Destination.add_member(:prefix, Shapes::ShapeRef.new(shape: Prefix, location_name: "prefix"))
    S3Destination.struct_class = Types::S3Destination

    S3SignedObject.add_member(:bucket_name, Shapes::ShapeRef.new(shape: BucketName, location_name: "bucketName"))
    S3SignedObject.add_member(:key, Shapes::ShapeRef.new(shape: key, location_name: "key"))
    S3SignedObject.struct_class = Types::S3SignedObject

    S3Source.add_member(:bucket_name, Shapes::ShapeRef.new(shape: BucketName, required: true, location_name: "bucketName"))
    S3Source.add_member(:key, Shapes::ShapeRef.new(shape: Key, required: true, location_name: "key"))
    S3Source.add_member(:version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "version"))
    S3Source.struct_class = Types::S3Source

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
    SigningJob.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    SigningJob.add_member(:status, Shapes::ShapeRef.new(shape: SigningStatus, location_name: "status"))
    SigningJob.struct_class = Types::SigningJob

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
    SigningPlatform.struct_class = Types::SigningPlatform

    SigningPlatformOverrides.add_member(:signing_configuration, Shapes::ShapeRef.new(shape: SigningConfigurationOverrides, location_name: "signingConfiguration"))
    SigningPlatformOverrides.struct_class = Types::SigningPlatformOverrides

    SigningPlatforms.member = Shapes::ShapeRef.new(shape: SigningPlatform)

    SigningProfile.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileName, location_name: "profileName"))
    SigningProfile.add_member(:signing_material, Shapes::ShapeRef.new(shape: SigningMaterial, location_name: "signingMaterial"))
    SigningProfile.add_member(:platform_id, Shapes::ShapeRef.new(shape: PlatformId, location_name: "platformId"))
    SigningProfile.add_member(:signing_parameters, Shapes::ShapeRef.new(shape: SigningParameters, location_name: "signingParameters"))
    SigningProfile.add_member(:status, Shapes::ShapeRef.new(shape: SigningProfileStatus, location_name: "status"))
    SigningProfile.struct_class = Types::SigningProfile

    SigningProfiles.member = Shapes::ShapeRef.new(shape: SigningProfile)

    Source.add_member(:s3, Shapes::ShapeRef.new(shape: S3Source, location_name: "s3"))
    Source.struct_class = Types::Source

    StartSigningJobRequest.add_member(:source, Shapes::ShapeRef.new(shape: Source, required: true, location_name: "source"))
    StartSigningJobRequest.add_member(:destination, Shapes::ShapeRef.new(shape: Destination, required: true, location_name: "destination"))
    StartSigningJobRequest.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileName, location_name: "profileName"))
    StartSigningJobRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "clientRequestToken", metadata: {"idempotencyToken"=>true}))
    StartSigningJobRequest.struct_class = Types::StartSigningJobRequest

    StartSigningJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "jobId"))
    StartSigningJobResponse.struct_class = Types::StartSigningJobResponse


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

      api.add_operation(:cancel_signing_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelSigningProfile"
        o.http_method = "DELETE"
        o.http_request_uri = "/signing-profiles/{profileName}"
        o.input = Shapes::ShapeRef.new(shape: CancelSigningProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)
    end

  end
end
