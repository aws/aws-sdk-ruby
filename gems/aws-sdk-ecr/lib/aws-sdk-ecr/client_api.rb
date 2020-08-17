# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ECR
  # @api private
  module ClientApi

    include Seahorse::Model

    Arn = Shapes::StringShape.new(name: 'Arn')
    Attribute = Shapes::StructureShape.new(name: 'Attribute')
    AttributeKey = Shapes::StringShape.new(name: 'AttributeKey')
    AttributeList = Shapes::ListShape.new(name: 'AttributeList')
    AttributeValue = Shapes::StringShape.new(name: 'AttributeValue')
    AuthorizationData = Shapes::StructureShape.new(name: 'AuthorizationData')
    AuthorizationDataList = Shapes::ListShape.new(name: 'AuthorizationDataList')
    Base64 = Shapes::StringShape.new(name: 'Base64')
    BatchCheckLayerAvailabilityRequest = Shapes::StructureShape.new(name: 'BatchCheckLayerAvailabilityRequest')
    BatchCheckLayerAvailabilityResponse = Shapes::StructureShape.new(name: 'BatchCheckLayerAvailabilityResponse')
    BatchDeleteImageRequest = Shapes::StructureShape.new(name: 'BatchDeleteImageRequest')
    BatchDeleteImageResponse = Shapes::StructureShape.new(name: 'BatchDeleteImageResponse')
    BatchGetImageRequest = Shapes::StructureShape.new(name: 'BatchGetImageRequest')
    BatchGetImageResponse = Shapes::StructureShape.new(name: 'BatchGetImageResponse')
    BatchedOperationLayerDigest = Shapes::StringShape.new(name: 'BatchedOperationLayerDigest')
    BatchedOperationLayerDigestList = Shapes::ListShape.new(name: 'BatchedOperationLayerDigestList')
    CompleteLayerUploadRequest = Shapes::StructureShape.new(name: 'CompleteLayerUploadRequest')
    CompleteLayerUploadResponse = Shapes::StructureShape.new(name: 'CompleteLayerUploadResponse')
    CreateRepositoryRequest = Shapes::StructureShape.new(name: 'CreateRepositoryRequest')
    CreateRepositoryResponse = Shapes::StructureShape.new(name: 'CreateRepositoryResponse')
    CreationTimestamp = Shapes::TimestampShape.new(name: 'CreationTimestamp')
    DeleteLifecyclePolicyRequest = Shapes::StructureShape.new(name: 'DeleteLifecyclePolicyRequest')
    DeleteLifecyclePolicyResponse = Shapes::StructureShape.new(name: 'DeleteLifecyclePolicyResponse')
    DeleteRepositoryPolicyRequest = Shapes::StructureShape.new(name: 'DeleteRepositoryPolicyRequest')
    DeleteRepositoryPolicyResponse = Shapes::StructureShape.new(name: 'DeleteRepositoryPolicyResponse')
    DeleteRepositoryRequest = Shapes::StructureShape.new(name: 'DeleteRepositoryRequest')
    DeleteRepositoryResponse = Shapes::StructureShape.new(name: 'DeleteRepositoryResponse')
    DescribeImageScanFindingsRequest = Shapes::StructureShape.new(name: 'DescribeImageScanFindingsRequest')
    DescribeImageScanFindingsResponse = Shapes::StructureShape.new(name: 'DescribeImageScanFindingsResponse')
    DescribeImagesFilter = Shapes::StructureShape.new(name: 'DescribeImagesFilter')
    DescribeImagesRequest = Shapes::StructureShape.new(name: 'DescribeImagesRequest')
    DescribeImagesResponse = Shapes::StructureShape.new(name: 'DescribeImagesResponse')
    DescribeRepositoriesRequest = Shapes::StructureShape.new(name: 'DescribeRepositoriesRequest')
    DescribeRepositoriesResponse = Shapes::StructureShape.new(name: 'DescribeRepositoriesResponse')
    EmptyUploadException = Shapes::StructureShape.new(name: 'EmptyUploadException')
    EncryptionConfiguration = Shapes::StructureShape.new(name: 'EncryptionConfiguration')
    EncryptionType = Shapes::StringShape.new(name: 'EncryptionType')
    EvaluationTimestamp = Shapes::TimestampShape.new(name: 'EvaluationTimestamp')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    ExpirationTimestamp = Shapes::TimestampShape.new(name: 'ExpirationTimestamp')
    FindingDescription = Shapes::StringShape.new(name: 'FindingDescription')
    FindingName = Shapes::StringShape.new(name: 'FindingName')
    FindingSeverity = Shapes::StringShape.new(name: 'FindingSeverity')
    FindingSeverityCounts = Shapes::MapShape.new(name: 'FindingSeverityCounts')
    ForceFlag = Shapes::BooleanShape.new(name: 'ForceFlag')
    GetAuthorizationTokenRegistryIdList = Shapes::ListShape.new(name: 'GetAuthorizationTokenRegistryIdList')
    GetAuthorizationTokenRequest = Shapes::StructureShape.new(name: 'GetAuthorizationTokenRequest')
    GetAuthorizationTokenResponse = Shapes::StructureShape.new(name: 'GetAuthorizationTokenResponse')
    GetDownloadUrlForLayerRequest = Shapes::StructureShape.new(name: 'GetDownloadUrlForLayerRequest')
    GetDownloadUrlForLayerResponse = Shapes::StructureShape.new(name: 'GetDownloadUrlForLayerResponse')
    GetLifecyclePolicyPreviewRequest = Shapes::StructureShape.new(name: 'GetLifecyclePolicyPreviewRequest')
    GetLifecyclePolicyPreviewResponse = Shapes::StructureShape.new(name: 'GetLifecyclePolicyPreviewResponse')
    GetLifecyclePolicyRequest = Shapes::StructureShape.new(name: 'GetLifecyclePolicyRequest')
    GetLifecyclePolicyResponse = Shapes::StructureShape.new(name: 'GetLifecyclePolicyResponse')
    GetRepositoryPolicyRequest = Shapes::StructureShape.new(name: 'GetRepositoryPolicyRequest')
    GetRepositoryPolicyResponse = Shapes::StructureShape.new(name: 'GetRepositoryPolicyResponse')
    Image = Shapes::StructureShape.new(name: 'Image')
    ImageActionType = Shapes::StringShape.new(name: 'ImageActionType')
    ImageAlreadyExistsException = Shapes::StructureShape.new(name: 'ImageAlreadyExistsException')
    ImageCount = Shapes::IntegerShape.new(name: 'ImageCount')
    ImageDetail = Shapes::StructureShape.new(name: 'ImageDetail')
    ImageDetailList = Shapes::ListShape.new(name: 'ImageDetailList')
    ImageDigest = Shapes::StringShape.new(name: 'ImageDigest')
    ImageDigestDoesNotMatchException = Shapes::StructureShape.new(name: 'ImageDigestDoesNotMatchException')
    ImageFailure = Shapes::StructureShape.new(name: 'ImageFailure')
    ImageFailureCode = Shapes::StringShape.new(name: 'ImageFailureCode')
    ImageFailureList = Shapes::ListShape.new(name: 'ImageFailureList')
    ImageFailureReason = Shapes::StringShape.new(name: 'ImageFailureReason')
    ImageIdentifier = Shapes::StructureShape.new(name: 'ImageIdentifier')
    ImageIdentifierList = Shapes::ListShape.new(name: 'ImageIdentifierList')
    ImageList = Shapes::ListShape.new(name: 'ImageList')
    ImageManifest = Shapes::StringShape.new(name: 'ImageManifest')
    ImageNotFoundException = Shapes::StructureShape.new(name: 'ImageNotFoundException')
    ImageScanFinding = Shapes::StructureShape.new(name: 'ImageScanFinding')
    ImageScanFindingList = Shapes::ListShape.new(name: 'ImageScanFindingList')
    ImageScanFindings = Shapes::StructureShape.new(name: 'ImageScanFindings')
    ImageScanFindingsSummary = Shapes::StructureShape.new(name: 'ImageScanFindingsSummary')
    ImageScanStatus = Shapes::StructureShape.new(name: 'ImageScanStatus')
    ImageScanningConfiguration = Shapes::StructureShape.new(name: 'ImageScanningConfiguration')
    ImageSizeInBytes = Shapes::IntegerShape.new(name: 'ImageSizeInBytes')
    ImageTag = Shapes::StringShape.new(name: 'ImageTag')
    ImageTagAlreadyExistsException = Shapes::StructureShape.new(name: 'ImageTagAlreadyExistsException')
    ImageTagList = Shapes::ListShape.new(name: 'ImageTagList')
    ImageTagMutability = Shapes::StringShape.new(name: 'ImageTagMutability')
    InitiateLayerUploadRequest = Shapes::StructureShape.new(name: 'InitiateLayerUploadRequest')
    InitiateLayerUploadResponse = Shapes::StructureShape.new(name: 'InitiateLayerUploadResponse')
    InvalidLayerException = Shapes::StructureShape.new(name: 'InvalidLayerException')
    InvalidLayerPartException = Shapes::StructureShape.new(name: 'InvalidLayerPartException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    InvalidTagParameterException = Shapes::StructureShape.new(name: 'InvalidTagParameterException')
    KmsError = Shapes::StringShape.new(name: 'KmsError')
    KmsException = Shapes::StructureShape.new(name: 'KmsException')
    KmsKey = Shapes::StringShape.new(name: 'KmsKey')
    Layer = Shapes::StructureShape.new(name: 'Layer')
    LayerAlreadyExistsException = Shapes::StructureShape.new(name: 'LayerAlreadyExistsException')
    LayerAvailability = Shapes::StringShape.new(name: 'LayerAvailability')
    LayerDigest = Shapes::StringShape.new(name: 'LayerDigest')
    LayerDigestList = Shapes::ListShape.new(name: 'LayerDigestList')
    LayerFailure = Shapes::StructureShape.new(name: 'LayerFailure')
    LayerFailureCode = Shapes::StringShape.new(name: 'LayerFailureCode')
    LayerFailureList = Shapes::ListShape.new(name: 'LayerFailureList')
    LayerFailureReason = Shapes::StringShape.new(name: 'LayerFailureReason')
    LayerInaccessibleException = Shapes::StructureShape.new(name: 'LayerInaccessibleException')
    LayerList = Shapes::ListShape.new(name: 'LayerList')
    LayerPartBlob = Shapes::BlobShape.new(name: 'LayerPartBlob')
    LayerPartTooSmallException = Shapes::StructureShape.new(name: 'LayerPartTooSmallException')
    LayerSizeInBytes = Shapes::IntegerShape.new(name: 'LayerSizeInBytes')
    LayersNotFoundException = Shapes::StructureShape.new(name: 'LayersNotFoundException')
    LifecyclePolicyNotFoundException = Shapes::StructureShape.new(name: 'LifecyclePolicyNotFoundException')
    LifecyclePolicyPreviewFilter = Shapes::StructureShape.new(name: 'LifecyclePolicyPreviewFilter')
    LifecyclePolicyPreviewInProgressException = Shapes::StructureShape.new(name: 'LifecyclePolicyPreviewInProgressException')
    LifecyclePolicyPreviewNotFoundException = Shapes::StructureShape.new(name: 'LifecyclePolicyPreviewNotFoundException')
    LifecyclePolicyPreviewResult = Shapes::StructureShape.new(name: 'LifecyclePolicyPreviewResult')
    LifecyclePolicyPreviewResultList = Shapes::ListShape.new(name: 'LifecyclePolicyPreviewResultList')
    LifecyclePolicyPreviewStatus = Shapes::StringShape.new(name: 'LifecyclePolicyPreviewStatus')
    LifecyclePolicyPreviewSummary = Shapes::StructureShape.new(name: 'LifecyclePolicyPreviewSummary')
    LifecyclePolicyRuleAction = Shapes::StructureShape.new(name: 'LifecyclePolicyRuleAction')
    LifecyclePolicyRulePriority = Shapes::IntegerShape.new(name: 'LifecyclePolicyRulePriority')
    LifecyclePolicyText = Shapes::StringShape.new(name: 'LifecyclePolicyText')
    LifecyclePreviewMaxResults = Shapes::IntegerShape.new(name: 'LifecyclePreviewMaxResults')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListImagesFilter = Shapes::StructureShape.new(name: 'ListImagesFilter')
    ListImagesRequest = Shapes::StructureShape.new(name: 'ListImagesRequest')
    ListImagesResponse = Shapes::StructureShape.new(name: 'ListImagesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MediaType = Shapes::StringShape.new(name: 'MediaType')
    MediaTypeList = Shapes::ListShape.new(name: 'MediaTypeList')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    PartSize = Shapes::IntegerShape.new(name: 'PartSize')
    ProxyEndpoint = Shapes::StringShape.new(name: 'ProxyEndpoint')
    PushTimestamp = Shapes::TimestampShape.new(name: 'PushTimestamp')
    PutImageRequest = Shapes::StructureShape.new(name: 'PutImageRequest')
    PutImageResponse = Shapes::StructureShape.new(name: 'PutImageResponse')
    PutImageScanningConfigurationRequest = Shapes::StructureShape.new(name: 'PutImageScanningConfigurationRequest')
    PutImageScanningConfigurationResponse = Shapes::StructureShape.new(name: 'PutImageScanningConfigurationResponse')
    PutImageTagMutabilityRequest = Shapes::StructureShape.new(name: 'PutImageTagMutabilityRequest')
    PutImageTagMutabilityResponse = Shapes::StructureShape.new(name: 'PutImageTagMutabilityResponse')
    PutLifecyclePolicyRequest = Shapes::StructureShape.new(name: 'PutLifecyclePolicyRequest')
    PutLifecyclePolicyResponse = Shapes::StructureShape.new(name: 'PutLifecyclePolicyResponse')
    ReferencedImagesNotFoundException = Shapes::StructureShape.new(name: 'ReferencedImagesNotFoundException')
    RegistryId = Shapes::StringShape.new(name: 'RegistryId')
    Repository = Shapes::StructureShape.new(name: 'Repository')
    RepositoryAlreadyExistsException = Shapes::StructureShape.new(name: 'RepositoryAlreadyExistsException')
    RepositoryList = Shapes::ListShape.new(name: 'RepositoryList')
    RepositoryName = Shapes::StringShape.new(name: 'RepositoryName')
    RepositoryNameList = Shapes::ListShape.new(name: 'RepositoryNameList')
    RepositoryNotEmptyException = Shapes::StructureShape.new(name: 'RepositoryNotEmptyException')
    RepositoryNotFoundException = Shapes::StructureShape.new(name: 'RepositoryNotFoundException')
    RepositoryPolicyNotFoundException = Shapes::StructureShape.new(name: 'RepositoryPolicyNotFoundException')
    RepositoryPolicyText = Shapes::StringShape.new(name: 'RepositoryPolicyText')
    ScanNotFoundException = Shapes::StructureShape.new(name: 'ScanNotFoundException')
    ScanOnPushFlag = Shapes::BooleanShape.new(name: 'ScanOnPushFlag')
    ScanStatus = Shapes::StringShape.new(name: 'ScanStatus')
    ScanStatusDescription = Shapes::StringShape.new(name: 'ScanStatusDescription')
    ScanTimestamp = Shapes::TimestampShape.new(name: 'ScanTimestamp')
    ServerException = Shapes::StructureShape.new(name: 'ServerException')
    SetRepositoryPolicyRequest = Shapes::StructureShape.new(name: 'SetRepositoryPolicyRequest')
    SetRepositoryPolicyResponse = Shapes::StructureShape.new(name: 'SetRepositoryPolicyResponse')
    SeverityCount = Shapes::IntegerShape.new(name: 'SeverityCount')
    StartImageScanRequest = Shapes::StructureShape.new(name: 'StartImageScanRequest')
    StartImageScanResponse = Shapes::StructureShape.new(name: 'StartImageScanResponse')
    StartLifecyclePolicyPreviewRequest = Shapes::StructureShape.new(name: 'StartLifecyclePolicyPreviewRequest')
    StartLifecyclePolicyPreviewResponse = Shapes::StructureShape.new(name: 'StartLifecyclePolicyPreviewResponse')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagStatus = Shapes::StringShape.new(name: 'TagStatus')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    UnsupportedImageTypeException = Shapes::StructureShape.new(name: 'UnsupportedImageTypeException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UploadId = Shapes::StringShape.new(name: 'UploadId')
    UploadLayerPartRequest = Shapes::StructureShape.new(name: 'UploadLayerPartRequest')
    UploadLayerPartResponse = Shapes::StructureShape.new(name: 'UploadLayerPartResponse')
    UploadNotFoundException = Shapes::StructureShape.new(name: 'UploadNotFoundException')
    Url = Shapes::StringShape.new(name: 'Url')
    VulnerabilitySourceUpdateTimestamp = Shapes::TimestampShape.new(name: 'VulnerabilitySourceUpdateTimestamp')

    Attribute.add_member(:key, Shapes::ShapeRef.new(shape: AttributeKey, required: true, location_name: "key"))
    Attribute.add_member(:value, Shapes::ShapeRef.new(shape: AttributeValue, location_name: "value"))
    Attribute.struct_class = Types::Attribute

    AttributeList.member = Shapes::ShapeRef.new(shape: Attribute)

    AuthorizationData.add_member(:authorization_token, Shapes::ShapeRef.new(shape: Base64, location_name: "authorizationToken"))
    AuthorizationData.add_member(:expires_at, Shapes::ShapeRef.new(shape: ExpirationTimestamp, location_name: "expiresAt"))
    AuthorizationData.add_member(:proxy_endpoint, Shapes::ShapeRef.new(shape: ProxyEndpoint, location_name: "proxyEndpoint"))
    AuthorizationData.struct_class = Types::AuthorizationData

    AuthorizationDataList.member = Shapes::ShapeRef.new(shape: AuthorizationData)

    BatchCheckLayerAvailabilityRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    BatchCheckLayerAvailabilityRequest.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    BatchCheckLayerAvailabilityRequest.add_member(:layer_digests, Shapes::ShapeRef.new(shape: BatchedOperationLayerDigestList, required: true, location_name: "layerDigests"))
    BatchCheckLayerAvailabilityRequest.struct_class = Types::BatchCheckLayerAvailabilityRequest

    BatchCheckLayerAvailabilityResponse.add_member(:layers, Shapes::ShapeRef.new(shape: LayerList, location_name: "layers"))
    BatchCheckLayerAvailabilityResponse.add_member(:failures, Shapes::ShapeRef.new(shape: LayerFailureList, location_name: "failures"))
    BatchCheckLayerAvailabilityResponse.struct_class = Types::BatchCheckLayerAvailabilityResponse

    BatchDeleteImageRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    BatchDeleteImageRequest.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    BatchDeleteImageRequest.add_member(:image_ids, Shapes::ShapeRef.new(shape: ImageIdentifierList, required: true, location_name: "imageIds"))
    BatchDeleteImageRequest.struct_class = Types::BatchDeleteImageRequest

    BatchDeleteImageResponse.add_member(:image_ids, Shapes::ShapeRef.new(shape: ImageIdentifierList, location_name: "imageIds"))
    BatchDeleteImageResponse.add_member(:failures, Shapes::ShapeRef.new(shape: ImageFailureList, location_name: "failures"))
    BatchDeleteImageResponse.struct_class = Types::BatchDeleteImageResponse

    BatchGetImageRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    BatchGetImageRequest.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    BatchGetImageRequest.add_member(:image_ids, Shapes::ShapeRef.new(shape: ImageIdentifierList, required: true, location_name: "imageIds"))
    BatchGetImageRequest.add_member(:accepted_media_types, Shapes::ShapeRef.new(shape: MediaTypeList, location_name: "acceptedMediaTypes"))
    BatchGetImageRequest.struct_class = Types::BatchGetImageRequest

    BatchGetImageResponse.add_member(:images, Shapes::ShapeRef.new(shape: ImageList, location_name: "images"))
    BatchGetImageResponse.add_member(:failures, Shapes::ShapeRef.new(shape: ImageFailureList, location_name: "failures"))
    BatchGetImageResponse.struct_class = Types::BatchGetImageResponse

    BatchedOperationLayerDigestList.member = Shapes::ShapeRef.new(shape: BatchedOperationLayerDigest)

    CompleteLayerUploadRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    CompleteLayerUploadRequest.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    CompleteLayerUploadRequest.add_member(:upload_id, Shapes::ShapeRef.new(shape: UploadId, required: true, location_name: "uploadId"))
    CompleteLayerUploadRequest.add_member(:layer_digests, Shapes::ShapeRef.new(shape: LayerDigestList, required: true, location_name: "layerDigests"))
    CompleteLayerUploadRequest.struct_class = Types::CompleteLayerUploadRequest

    CompleteLayerUploadResponse.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    CompleteLayerUploadResponse.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    CompleteLayerUploadResponse.add_member(:upload_id, Shapes::ShapeRef.new(shape: UploadId, location_name: "uploadId"))
    CompleteLayerUploadResponse.add_member(:layer_digest, Shapes::ShapeRef.new(shape: LayerDigest, location_name: "layerDigest"))
    CompleteLayerUploadResponse.struct_class = Types::CompleteLayerUploadResponse

    CreateRepositoryRequest.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    CreateRepositoryRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateRepositoryRequest.add_member(:image_tag_mutability, Shapes::ShapeRef.new(shape: ImageTagMutability, location_name: "imageTagMutability"))
    CreateRepositoryRequest.add_member(:image_scanning_configuration, Shapes::ShapeRef.new(shape: ImageScanningConfiguration, location_name: "imageScanningConfiguration"))
    CreateRepositoryRequest.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    CreateRepositoryRequest.struct_class = Types::CreateRepositoryRequest

    CreateRepositoryResponse.add_member(:repository, Shapes::ShapeRef.new(shape: Repository, location_name: "repository"))
    CreateRepositoryResponse.struct_class = Types::CreateRepositoryResponse

    DeleteLifecyclePolicyRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    DeleteLifecyclePolicyRequest.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    DeleteLifecyclePolicyRequest.struct_class = Types::DeleteLifecyclePolicyRequest

    DeleteLifecyclePolicyResponse.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    DeleteLifecyclePolicyResponse.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    DeleteLifecyclePolicyResponse.add_member(:lifecycle_policy_text, Shapes::ShapeRef.new(shape: LifecyclePolicyText, location_name: "lifecyclePolicyText"))
    DeleteLifecyclePolicyResponse.add_member(:last_evaluated_at, Shapes::ShapeRef.new(shape: EvaluationTimestamp, location_name: "lastEvaluatedAt"))
    DeleteLifecyclePolicyResponse.struct_class = Types::DeleteLifecyclePolicyResponse

    DeleteRepositoryPolicyRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    DeleteRepositoryPolicyRequest.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    DeleteRepositoryPolicyRequest.struct_class = Types::DeleteRepositoryPolicyRequest

    DeleteRepositoryPolicyResponse.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    DeleteRepositoryPolicyResponse.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    DeleteRepositoryPolicyResponse.add_member(:policy_text, Shapes::ShapeRef.new(shape: RepositoryPolicyText, location_name: "policyText"))
    DeleteRepositoryPolicyResponse.struct_class = Types::DeleteRepositoryPolicyResponse

    DeleteRepositoryRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    DeleteRepositoryRequest.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    DeleteRepositoryRequest.add_member(:force, Shapes::ShapeRef.new(shape: ForceFlag, location_name: "force"))
    DeleteRepositoryRequest.struct_class = Types::DeleteRepositoryRequest

    DeleteRepositoryResponse.add_member(:repository, Shapes::ShapeRef.new(shape: Repository, location_name: "repository"))
    DeleteRepositoryResponse.struct_class = Types::DeleteRepositoryResponse

    DescribeImageScanFindingsRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    DescribeImageScanFindingsRequest.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    DescribeImageScanFindingsRequest.add_member(:image_id, Shapes::ShapeRef.new(shape: ImageIdentifier, required: true, location_name: "imageId"))
    DescribeImageScanFindingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeImageScanFindingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    DescribeImageScanFindingsRequest.struct_class = Types::DescribeImageScanFindingsRequest

    DescribeImageScanFindingsResponse.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    DescribeImageScanFindingsResponse.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    DescribeImageScanFindingsResponse.add_member(:image_id, Shapes::ShapeRef.new(shape: ImageIdentifier, location_name: "imageId"))
    DescribeImageScanFindingsResponse.add_member(:image_scan_status, Shapes::ShapeRef.new(shape: ImageScanStatus, location_name: "imageScanStatus"))
    DescribeImageScanFindingsResponse.add_member(:image_scan_findings, Shapes::ShapeRef.new(shape: ImageScanFindings, location_name: "imageScanFindings"))
    DescribeImageScanFindingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeImageScanFindingsResponse.struct_class = Types::DescribeImageScanFindingsResponse

    DescribeImagesFilter.add_member(:tag_status, Shapes::ShapeRef.new(shape: TagStatus, location_name: "tagStatus"))
    DescribeImagesFilter.struct_class = Types::DescribeImagesFilter

    DescribeImagesRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    DescribeImagesRequest.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    DescribeImagesRequest.add_member(:image_ids, Shapes::ShapeRef.new(shape: ImageIdentifierList, location_name: "imageIds"))
    DescribeImagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeImagesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    DescribeImagesRequest.add_member(:filter, Shapes::ShapeRef.new(shape: DescribeImagesFilter, location_name: "filter"))
    DescribeImagesRequest.struct_class = Types::DescribeImagesRequest

    DescribeImagesResponse.add_member(:image_details, Shapes::ShapeRef.new(shape: ImageDetailList, location_name: "imageDetails"))
    DescribeImagesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeImagesResponse.struct_class = Types::DescribeImagesResponse

    DescribeRepositoriesRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    DescribeRepositoriesRequest.add_member(:repository_names, Shapes::ShapeRef.new(shape: RepositoryNameList, location_name: "repositoryNames"))
    DescribeRepositoriesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeRepositoriesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    DescribeRepositoriesRequest.struct_class = Types::DescribeRepositoriesRequest

    DescribeRepositoriesResponse.add_member(:repositories, Shapes::ShapeRef.new(shape: RepositoryList, location_name: "repositories"))
    DescribeRepositoriesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeRepositoriesResponse.struct_class = Types::DescribeRepositoriesResponse

    EmptyUploadException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    EmptyUploadException.struct_class = Types::EmptyUploadException

    EncryptionConfiguration.add_member(:encryption_type, Shapes::ShapeRef.new(shape: EncryptionType, required: true, location_name: "encryptionType"))
    EncryptionConfiguration.add_member(:kms_key, Shapes::ShapeRef.new(shape: KmsKey, location_name: "kmsKey"))
    EncryptionConfiguration.struct_class = Types::EncryptionConfiguration

    FindingSeverityCounts.key = Shapes::ShapeRef.new(shape: FindingSeverity)
    FindingSeverityCounts.value = Shapes::ShapeRef.new(shape: SeverityCount)

    GetAuthorizationTokenRegistryIdList.member = Shapes::ShapeRef.new(shape: RegistryId)

    GetAuthorizationTokenRequest.add_member(:registry_ids, Shapes::ShapeRef.new(shape: GetAuthorizationTokenRegistryIdList, location_name: "registryIds"))
    GetAuthorizationTokenRequest.struct_class = Types::GetAuthorizationTokenRequest

    GetAuthorizationTokenResponse.add_member(:authorization_data, Shapes::ShapeRef.new(shape: AuthorizationDataList, location_name: "authorizationData"))
    GetAuthorizationTokenResponse.struct_class = Types::GetAuthorizationTokenResponse

    GetDownloadUrlForLayerRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    GetDownloadUrlForLayerRequest.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    GetDownloadUrlForLayerRequest.add_member(:layer_digest, Shapes::ShapeRef.new(shape: LayerDigest, required: true, location_name: "layerDigest"))
    GetDownloadUrlForLayerRequest.struct_class = Types::GetDownloadUrlForLayerRequest

    GetDownloadUrlForLayerResponse.add_member(:download_url, Shapes::ShapeRef.new(shape: Url, location_name: "downloadUrl"))
    GetDownloadUrlForLayerResponse.add_member(:layer_digest, Shapes::ShapeRef.new(shape: LayerDigest, location_name: "layerDigest"))
    GetDownloadUrlForLayerResponse.struct_class = Types::GetDownloadUrlForLayerResponse

    GetLifecyclePolicyPreviewRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    GetLifecyclePolicyPreviewRequest.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    GetLifecyclePolicyPreviewRequest.add_member(:image_ids, Shapes::ShapeRef.new(shape: ImageIdentifierList, location_name: "imageIds"))
    GetLifecyclePolicyPreviewRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetLifecyclePolicyPreviewRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: LifecyclePreviewMaxResults, location_name: "maxResults"))
    GetLifecyclePolicyPreviewRequest.add_member(:filter, Shapes::ShapeRef.new(shape: LifecyclePolicyPreviewFilter, location_name: "filter"))
    GetLifecyclePolicyPreviewRequest.struct_class = Types::GetLifecyclePolicyPreviewRequest

    GetLifecyclePolicyPreviewResponse.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    GetLifecyclePolicyPreviewResponse.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    GetLifecyclePolicyPreviewResponse.add_member(:lifecycle_policy_text, Shapes::ShapeRef.new(shape: LifecyclePolicyText, location_name: "lifecyclePolicyText"))
    GetLifecyclePolicyPreviewResponse.add_member(:status, Shapes::ShapeRef.new(shape: LifecyclePolicyPreviewStatus, location_name: "status"))
    GetLifecyclePolicyPreviewResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetLifecyclePolicyPreviewResponse.add_member(:preview_results, Shapes::ShapeRef.new(shape: LifecyclePolicyPreviewResultList, location_name: "previewResults"))
    GetLifecyclePolicyPreviewResponse.add_member(:summary, Shapes::ShapeRef.new(shape: LifecyclePolicyPreviewSummary, location_name: "summary"))
    GetLifecyclePolicyPreviewResponse.struct_class = Types::GetLifecyclePolicyPreviewResponse

    GetLifecyclePolicyRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    GetLifecyclePolicyRequest.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    GetLifecyclePolicyRequest.struct_class = Types::GetLifecyclePolicyRequest

    GetLifecyclePolicyResponse.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    GetLifecyclePolicyResponse.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    GetLifecyclePolicyResponse.add_member(:lifecycle_policy_text, Shapes::ShapeRef.new(shape: LifecyclePolicyText, location_name: "lifecyclePolicyText"))
    GetLifecyclePolicyResponse.add_member(:last_evaluated_at, Shapes::ShapeRef.new(shape: EvaluationTimestamp, location_name: "lastEvaluatedAt"))
    GetLifecyclePolicyResponse.struct_class = Types::GetLifecyclePolicyResponse

    GetRepositoryPolicyRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    GetRepositoryPolicyRequest.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    GetRepositoryPolicyRequest.struct_class = Types::GetRepositoryPolicyRequest

    GetRepositoryPolicyResponse.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    GetRepositoryPolicyResponse.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    GetRepositoryPolicyResponse.add_member(:policy_text, Shapes::ShapeRef.new(shape: RepositoryPolicyText, location_name: "policyText"))
    GetRepositoryPolicyResponse.struct_class = Types::GetRepositoryPolicyResponse

    Image.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    Image.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    Image.add_member(:image_id, Shapes::ShapeRef.new(shape: ImageIdentifier, location_name: "imageId"))
    Image.add_member(:image_manifest, Shapes::ShapeRef.new(shape: ImageManifest, location_name: "imageManifest"))
    Image.add_member(:image_manifest_media_type, Shapes::ShapeRef.new(shape: MediaType, location_name: "imageManifestMediaType"))
    Image.struct_class = Types::Image

    ImageAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ImageAlreadyExistsException.struct_class = Types::ImageAlreadyExistsException

    ImageDetail.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    ImageDetail.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    ImageDetail.add_member(:image_digest, Shapes::ShapeRef.new(shape: ImageDigest, location_name: "imageDigest"))
    ImageDetail.add_member(:image_tags, Shapes::ShapeRef.new(shape: ImageTagList, location_name: "imageTags"))
    ImageDetail.add_member(:image_size_in_bytes, Shapes::ShapeRef.new(shape: ImageSizeInBytes, location_name: "imageSizeInBytes"))
    ImageDetail.add_member(:image_pushed_at, Shapes::ShapeRef.new(shape: PushTimestamp, location_name: "imagePushedAt"))
    ImageDetail.add_member(:image_scan_status, Shapes::ShapeRef.new(shape: ImageScanStatus, location_name: "imageScanStatus"))
    ImageDetail.add_member(:image_scan_findings_summary, Shapes::ShapeRef.new(shape: ImageScanFindingsSummary, location_name: "imageScanFindingsSummary"))
    ImageDetail.add_member(:image_manifest_media_type, Shapes::ShapeRef.new(shape: MediaType, location_name: "imageManifestMediaType"))
    ImageDetail.add_member(:artifact_media_type, Shapes::ShapeRef.new(shape: MediaType, location_name: "artifactMediaType"))
    ImageDetail.struct_class = Types::ImageDetail

    ImageDetailList.member = Shapes::ShapeRef.new(shape: ImageDetail)

    ImageDigestDoesNotMatchException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ImageDigestDoesNotMatchException.struct_class = Types::ImageDigestDoesNotMatchException

    ImageFailure.add_member(:image_id, Shapes::ShapeRef.new(shape: ImageIdentifier, location_name: "imageId"))
    ImageFailure.add_member(:failure_code, Shapes::ShapeRef.new(shape: ImageFailureCode, location_name: "failureCode"))
    ImageFailure.add_member(:failure_reason, Shapes::ShapeRef.new(shape: ImageFailureReason, location_name: "failureReason"))
    ImageFailure.struct_class = Types::ImageFailure

    ImageFailureList.member = Shapes::ShapeRef.new(shape: ImageFailure)

    ImageIdentifier.add_member(:image_digest, Shapes::ShapeRef.new(shape: ImageDigest, location_name: "imageDigest"))
    ImageIdentifier.add_member(:image_tag, Shapes::ShapeRef.new(shape: ImageTag, location_name: "imageTag"))
    ImageIdentifier.struct_class = Types::ImageIdentifier

    ImageIdentifierList.member = Shapes::ShapeRef.new(shape: ImageIdentifier)

    ImageList.member = Shapes::ShapeRef.new(shape: Image)

    ImageNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ImageNotFoundException.struct_class = Types::ImageNotFoundException

    ImageScanFinding.add_member(:name, Shapes::ShapeRef.new(shape: FindingName, location_name: "name"))
    ImageScanFinding.add_member(:description, Shapes::ShapeRef.new(shape: FindingDescription, location_name: "description"))
    ImageScanFinding.add_member(:uri, Shapes::ShapeRef.new(shape: Url, location_name: "uri"))
    ImageScanFinding.add_member(:severity, Shapes::ShapeRef.new(shape: FindingSeverity, location_name: "severity"))
    ImageScanFinding.add_member(:attributes, Shapes::ShapeRef.new(shape: AttributeList, location_name: "attributes"))
    ImageScanFinding.struct_class = Types::ImageScanFinding

    ImageScanFindingList.member = Shapes::ShapeRef.new(shape: ImageScanFinding)

    ImageScanFindings.add_member(:image_scan_completed_at, Shapes::ShapeRef.new(shape: ScanTimestamp, location_name: "imageScanCompletedAt"))
    ImageScanFindings.add_member(:vulnerability_source_updated_at, Shapes::ShapeRef.new(shape: VulnerabilitySourceUpdateTimestamp, location_name: "vulnerabilitySourceUpdatedAt"))
    ImageScanFindings.add_member(:findings, Shapes::ShapeRef.new(shape: ImageScanFindingList, location_name: "findings"))
    ImageScanFindings.add_member(:finding_severity_counts, Shapes::ShapeRef.new(shape: FindingSeverityCounts, location_name: "findingSeverityCounts"))
    ImageScanFindings.struct_class = Types::ImageScanFindings

    ImageScanFindingsSummary.add_member(:image_scan_completed_at, Shapes::ShapeRef.new(shape: ScanTimestamp, location_name: "imageScanCompletedAt"))
    ImageScanFindingsSummary.add_member(:vulnerability_source_updated_at, Shapes::ShapeRef.new(shape: VulnerabilitySourceUpdateTimestamp, location_name: "vulnerabilitySourceUpdatedAt"))
    ImageScanFindingsSummary.add_member(:finding_severity_counts, Shapes::ShapeRef.new(shape: FindingSeverityCounts, location_name: "findingSeverityCounts"))
    ImageScanFindingsSummary.struct_class = Types::ImageScanFindingsSummary

    ImageScanStatus.add_member(:status, Shapes::ShapeRef.new(shape: ScanStatus, location_name: "status"))
    ImageScanStatus.add_member(:description, Shapes::ShapeRef.new(shape: ScanStatusDescription, location_name: "description"))
    ImageScanStatus.struct_class = Types::ImageScanStatus

    ImageScanningConfiguration.add_member(:scan_on_push, Shapes::ShapeRef.new(shape: ScanOnPushFlag, location_name: "scanOnPush"))
    ImageScanningConfiguration.struct_class = Types::ImageScanningConfiguration

    ImageTagAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ImageTagAlreadyExistsException.struct_class = Types::ImageTagAlreadyExistsException

    ImageTagList.member = Shapes::ShapeRef.new(shape: ImageTag)

    InitiateLayerUploadRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    InitiateLayerUploadRequest.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    InitiateLayerUploadRequest.struct_class = Types::InitiateLayerUploadRequest

    InitiateLayerUploadResponse.add_member(:upload_id, Shapes::ShapeRef.new(shape: UploadId, location_name: "uploadId"))
    InitiateLayerUploadResponse.add_member(:part_size, Shapes::ShapeRef.new(shape: PartSize, location_name: "partSize"))
    InitiateLayerUploadResponse.struct_class = Types::InitiateLayerUploadResponse

    InvalidLayerException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    InvalidLayerException.struct_class = Types::InvalidLayerException

    InvalidLayerPartException.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    InvalidLayerPartException.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    InvalidLayerPartException.add_member(:upload_id, Shapes::ShapeRef.new(shape: UploadId, location_name: "uploadId"))
    InvalidLayerPartException.add_member(:last_valid_byte_received, Shapes::ShapeRef.new(shape: PartSize, location_name: "lastValidByteReceived"))
    InvalidLayerPartException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    InvalidLayerPartException.struct_class = Types::InvalidLayerPartException

    InvalidParameterException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    InvalidParameterException.struct_class = Types::InvalidParameterException

    InvalidTagParameterException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    InvalidTagParameterException.struct_class = Types::InvalidTagParameterException

    KmsException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    KmsException.add_member(:kms_error, Shapes::ShapeRef.new(shape: KmsError, location_name: "kmsError"))
    KmsException.struct_class = Types::KmsException

    Layer.add_member(:layer_digest, Shapes::ShapeRef.new(shape: LayerDigest, location_name: "layerDigest"))
    Layer.add_member(:layer_availability, Shapes::ShapeRef.new(shape: LayerAvailability, location_name: "layerAvailability"))
    Layer.add_member(:layer_size, Shapes::ShapeRef.new(shape: LayerSizeInBytes, location_name: "layerSize"))
    Layer.add_member(:media_type, Shapes::ShapeRef.new(shape: MediaType, location_name: "mediaType"))
    Layer.struct_class = Types::Layer

    LayerAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    LayerAlreadyExistsException.struct_class = Types::LayerAlreadyExistsException

    LayerDigestList.member = Shapes::ShapeRef.new(shape: LayerDigest)

    LayerFailure.add_member(:layer_digest, Shapes::ShapeRef.new(shape: BatchedOperationLayerDigest, location_name: "layerDigest"))
    LayerFailure.add_member(:failure_code, Shapes::ShapeRef.new(shape: LayerFailureCode, location_name: "failureCode"))
    LayerFailure.add_member(:failure_reason, Shapes::ShapeRef.new(shape: LayerFailureReason, location_name: "failureReason"))
    LayerFailure.struct_class = Types::LayerFailure

    LayerFailureList.member = Shapes::ShapeRef.new(shape: LayerFailure)

    LayerInaccessibleException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    LayerInaccessibleException.struct_class = Types::LayerInaccessibleException

    LayerList.member = Shapes::ShapeRef.new(shape: Layer)

    LayerPartTooSmallException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    LayerPartTooSmallException.struct_class = Types::LayerPartTooSmallException

    LayersNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    LayersNotFoundException.struct_class = Types::LayersNotFoundException

    LifecyclePolicyNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    LifecyclePolicyNotFoundException.struct_class = Types::LifecyclePolicyNotFoundException

    LifecyclePolicyPreviewFilter.add_member(:tag_status, Shapes::ShapeRef.new(shape: TagStatus, location_name: "tagStatus"))
    LifecyclePolicyPreviewFilter.struct_class = Types::LifecyclePolicyPreviewFilter

    LifecyclePolicyPreviewInProgressException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    LifecyclePolicyPreviewInProgressException.struct_class = Types::LifecyclePolicyPreviewInProgressException

    LifecyclePolicyPreviewNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    LifecyclePolicyPreviewNotFoundException.struct_class = Types::LifecyclePolicyPreviewNotFoundException

    LifecyclePolicyPreviewResult.add_member(:image_tags, Shapes::ShapeRef.new(shape: ImageTagList, location_name: "imageTags"))
    LifecyclePolicyPreviewResult.add_member(:image_digest, Shapes::ShapeRef.new(shape: ImageDigest, location_name: "imageDigest"))
    LifecyclePolicyPreviewResult.add_member(:image_pushed_at, Shapes::ShapeRef.new(shape: PushTimestamp, location_name: "imagePushedAt"))
    LifecyclePolicyPreviewResult.add_member(:action, Shapes::ShapeRef.new(shape: LifecyclePolicyRuleAction, location_name: "action"))
    LifecyclePolicyPreviewResult.add_member(:applied_rule_priority, Shapes::ShapeRef.new(shape: LifecyclePolicyRulePriority, location_name: "appliedRulePriority"))
    LifecyclePolicyPreviewResult.struct_class = Types::LifecyclePolicyPreviewResult

    LifecyclePolicyPreviewResultList.member = Shapes::ShapeRef.new(shape: LifecyclePolicyPreviewResult)

    LifecyclePolicyPreviewSummary.add_member(:expiring_image_total_count, Shapes::ShapeRef.new(shape: ImageCount, location_name: "expiringImageTotalCount"))
    LifecyclePolicyPreviewSummary.struct_class = Types::LifecyclePolicyPreviewSummary

    LifecyclePolicyRuleAction.add_member(:type, Shapes::ShapeRef.new(shape: ImageActionType, location_name: "type"))
    LifecyclePolicyRuleAction.struct_class = Types::LifecyclePolicyRuleAction

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListImagesFilter.add_member(:tag_status, Shapes::ShapeRef.new(shape: TagStatus, location_name: "tagStatus"))
    ListImagesFilter.struct_class = Types::ListImagesFilter

    ListImagesRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    ListImagesRequest.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    ListImagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListImagesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListImagesRequest.add_member(:filter, Shapes::ShapeRef.new(shape: ListImagesFilter, location_name: "filter"))
    ListImagesRequest.struct_class = Types::ListImagesRequest

    ListImagesResponse.add_member(:image_ids, Shapes::ShapeRef.new(shape: ImageIdentifierList, location_name: "imageIds"))
    ListImagesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListImagesResponse.struct_class = Types::ListImagesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MediaTypeList.member = Shapes::ShapeRef.new(shape: MediaType)

    PutImageRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    PutImageRequest.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    PutImageRequest.add_member(:image_manifest, Shapes::ShapeRef.new(shape: ImageManifest, required: true, location_name: "imageManifest"))
    PutImageRequest.add_member(:image_manifest_media_type, Shapes::ShapeRef.new(shape: MediaType, location_name: "imageManifestMediaType"))
    PutImageRequest.add_member(:image_tag, Shapes::ShapeRef.new(shape: ImageTag, location_name: "imageTag"))
    PutImageRequest.add_member(:image_digest, Shapes::ShapeRef.new(shape: ImageDigest, location_name: "imageDigest"))
    PutImageRequest.struct_class = Types::PutImageRequest

    PutImageResponse.add_member(:image, Shapes::ShapeRef.new(shape: Image, location_name: "image"))
    PutImageResponse.struct_class = Types::PutImageResponse

    PutImageScanningConfigurationRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    PutImageScanningConfigurationRequest.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    PutImageScanningConfigurationRequest.add_member(:image_scanning_configuration, Shapes::ShapeRef.new(shape: ImageScanningConfiguration, required: true, location_name: "imageScanningConfiguration"))
    PutImageScanningConfigurationRequest.struct_class = Types::PutImageScanningConfigurationRequest

    PutImageScanningConfigurationResponse.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    PutImageScanningConfigurationResponse.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    PutImageScanningConfigurationResponse.add_member(:image_scanning_configuration, Shapes::ShapeRef.new(shape: ImageScanningConfiguration, location_name: "imageScanningConfiguration"))
    PutImageScanningConfigurationResponse.struct_class = Types::PutImageScanningConfigurationResponse

    PutImageTagMutabilityRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    PutImageTagMutabilityRequest.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    PutImageTagMutabilityRequest.add_member(:image_tag_mutability, Shapes::ShapeRef.new(shape: ImageTagMutability, required: true, location_name: "imageTagMutability"))
    PutImageTagMutabilityRequest.struct_class = Types::PutImageTagMutabilityRequest

    PutImageTagMutabilityResponse.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    PutImageTagMutabilityResponse.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    PutImageTagMutabilityResponse.add_member(:image_tag_mutability, Shapes::ShapeRef.new(shape: ImageTagMutability, location_name: "imageTagMutability"))
    PutImageTagMutabilityResponse.struct_class = Types::PutImageTagMutabilityResponse

    PutLifecyclePolicyRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    PutLifecyclePolicyRequest.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    PutLifecyclePolicyRequest.add_member(:lifecycle_policy_text, Shapes::ShapeRef.new(shape: LifecyclePolicyText, required: true, location_name: "lifecyclePolicyText"))
    PutLifecyclePolicyRequest.struct_class = Types::PutLifecyclePolicyRequest

    PutLifecyclePolicyResponse.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    PutLifecyclePolicyResponse.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    PutLifecyclePolicyResponse.add_member(:lifecycle_policy_text, Shapes::ShapeRef.new(shape: LifecyclePolicyText, location_name: "lifecyclePolicyText"))
    PutLifecyclePolicyResponse.struct_class = Types::PutLifecyclePolicyResponse

    ReferencedImagesNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ReferencedImagesNotFoundException.struct_class = Types::ReferencedImagesNotFoundException

    Repository.add_member(:repository_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "repositoryArn"))
    Repository.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    Repository.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    Repository.add_member(:repository_uri, Shapes::ShapeRef.new(shape: Url, location_name: "repositoryUri"))
    Repository.add_member(:created_at, Shapes::ShapeRef.new(shape: CreationTimestamp, location_name: "createdAt"))
    Repository.add_member(:image_tag_mutability, Shapes::ShapeRef.new(shape: ImageTagMutability, location_name: "imageTagMutability"))
    Repository.add_member(:image_scanning_configuration, Shapes::ShapeRef.new(shape: ImageScanningConfiguration, location_name: "imageScanningConfiguration"))
    Repository.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    Repository.struct_class = Types::Repository

    RepositoryAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    RepositoryAlreadyExistsException.struct_class = Types::RepositoryAlreadyExistsException

    RepositoryList.member = Shapes::ShapeRef.new(shape: Repository)

    RepositoryNameList.member = Shapes::ShapeRef.new(shape: RepositoryName)

    RepositoryNotEmptyException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    RepositoryNotEmptyException.struct_class = Types::RepositoryNotEmptyException

    RepositoryNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    RepositoryNotFoundException.struct_class = Types::RepositoryNotFoundException

    RepositoryPolicyNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    RepositoryPolicyNotFoundException.struct_class = Types::RepositoryPolicyNotFoundException

    ScanNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ScanNotFoundException.struct_class = Types::ScanNotFoundException

    ServerException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ServerException.struct_class = Types::ServerException

    SetRepositoryPolicyRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    SetRepositoryPolicyRequest.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    SetRepositoryPolicyRequest.add_member(:policy_text, Shapes::ShapeRef.new(shape: RepositoryPolicyText, required: true, location_name: "policyText"))
    SetRepositoryPolicyRequest.add_member(:force, Shapes::ShapeRef.new(shape: ForceFlag, location_name: "force"))
    SetRepositoryPolicyRequest.struct_class = Types::SetRepositoryPolicyRequest

    SetRepositoryPolicyResponse.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    SetRepositoryPolicyResponse.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    SetRepositoryPolicyResponse.add_member(:policy_text, Shapes::ShapeRef.new(shape: RepositoryPolicyText, location_name: "policyText"))
    SetRepositoryPolicyResponse.struct_class = Types::SetRepositoryPolicyResponse

    StartImageScanRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    StartImageScanRequest.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    StartImageScanRequest.add_member(:image_id, Shapes::ShapeRef.new(shape: ImageIdentifier, required: true, location_name: "imageId"))
    StartImageScanRequest.struct_class = Types::StartImageScanRequest

    StartImageScanResponse.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    StartImageScanResponse.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    StartImageScanResponse.add_member(:image_id, Shapes::ShapeRef.new(shape: ImageIdentifier, location_name: "imageId"))
    StartImageScanResponse.add_member(:image_scan_status, Shapes::ShapeRef.new(shape: ImageScanStatus, location_name: "imageScanStatus"))
    StartImageScanResponse.struct_class = Types::StartImageScanResponse

    StartLifecyclePolicyPreviewRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    StartLifecyclePolicyPreviewRequest.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    StartLifecyclePolicyPreviewRequest.add_member(:lifecycle_policy_text, Shapes::ShapeRef.new(shape: LifecyclePolicyText, location_name: "lifecyclePolicyText"))
    StartLifecyclePolicyPreviewRequest.struct_class = Types::StartLifecyclePolicyPreviewRequest

    StartLifecyclePolicyPreviewResponse.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    StartLifecyclePolicyPreviewResponse.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    StartLifecyclePolicyPreviewResponse.add_member(:lifecycle_policy_text, Shapes::ShapeRef.new(shape: LifecyclePolicyText, location_name: "lifecyclePolicyText"))
    StartLifecyclePolicyPreviewResponse.add_member(:status, Shapes::ShapeRef.new(shape: LifecyclePolicyPreviewStatus, location_name: "status"))
    StartLifecyclePolicyPreviewResponse.struct_class = Types::StartLifecyclePolicyPreviewResponse

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TooManyTagsException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    TooManyTagsException.struct_class = Types::TooManyTagsException

    UnsupportedImageTypeException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    UnsupportedImageTypeException.struct_class = Types::UnsupportedImageTypeException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UploadLayerPartRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    UploadLayerPartRequest.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    UploadLayerPartRequest.add_member(:upload_id, Shapes::ShapeRef.new(shape: UploadId, required: true, location_name: "uploadId"))
    UploadLayerPartRequest.add_member(:part_first_byte, Shapes::ShapeRef.new(shape: PartSize, required: true, location_name: "partFirstByte"))
    UploadLayerPartRequest.add_member(:part_last_byte, Shapes::ShapeRef.new(shape: PartSize, required: true, location_name: "partLastByte"))
    UploadLayerPartRequest.add_member(:layer_part_blob, Shapes::ShapeRef.new(shape: LayerPartBlob, required: true, location_name: "layerPartBlob"))
    UploadLayerPartRequest.struct_class = Types::UploadLayerPartRequest

    UploadLayerPartResponse.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    UploadLayerPartResponse.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    UploadLayerPartResponse.add_member(:upload_id, Shapes::ShapeRef.new(shape: UploadId, location_name: "uploadId"))
    UploadLayerPartResponse.add_member(:last_byte_received, Shapes::ShapeRef.new(shape: PartSize, location_name: "lastByteReceived"))
    UploadLayerPartResponse.struct_class = Types::UploadLayerPartResponse

    UploadNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    UploadNotFoundException.struct_class = Types::UploadNotFoundException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2015-09-21"

      api.metadata = {
        "apiVersion" => "2015-09-21",
        "endpointPrefix" => "api.ecr",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "Amazon ECR",
        "serviceFullName" => "Amazon EC2 Container Registry",
        "serviceId" => "ECR",
        "signatureVersion" => "v4",
        "signingName" => "ecr",
        "targetPrefix" => "AmazonEC2ContainerRegistry_V20150921",
        "uid" => "ecr-2015-09-21",
      }

      api.add_operation(:batch_check_layer_availability, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchCheckLayerAvailability"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchCheckLayerAvailabilityRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchCheckLayerAvailabilityResponse)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:batch_delete_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeleteImage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchDeleteImageRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDeleteImageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
      end)

      api.add_operation(:batch_get_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetImage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchGetImageRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetImageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
      end)

      api.add_operation(:complete_layer_upload, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CompleteLayerUpload"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CompleteLayerUploadRequest)
        o.output = Shapes::ShapeRef.new(shape: CompleteLayerUploadResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UploadNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLayerException)
        o.errors << Shapes::ShapeRef.new(shape: LayerPartTooSmallException)
        o.errors << Shapes::ShapeRef.new(shape: LayerAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: EmptyUploadException)
        o.errors << Shapes::ShapeRef.new(shape: KmsException)
      end)

      api.add_operation(:create_repository, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRepository"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateRepositoryRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRepositoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: KmsException)
      end)

      api.add_operation(:delete_lifecycle_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLifecyclePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteLifecyclePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteLifecyclePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LifecyclePolicyNotFoundException)
      end)

      api.add_operation(:delete_repository, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRepository"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRepositoryRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRepositoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNotEmptyException)
        o.errors << Shapes::ShapeRef.new(shape: KmsException)
      end)

      api.add_operation(:delete_repository_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRepositoryPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRepositoryPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRepositoryPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryPolicyNotFoundException)
      end)

      api.add_operation(:describe_image_scan_findings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeImageScanFindings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeImageScanFindingsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeImageScanFindingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ImageNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ScanNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_images, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeImages"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeImagesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeImagesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ImageNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_repositories, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRepositories"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeRepositoriesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRepositoriesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_authorization_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAuthorizationToken"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAuthorizationTokenRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAuthorizationTokenResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:get_download_url_for_layer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDownloadUrlForLayer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDownloadUrlForLayerRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDownloadUrlForLayerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: LayersNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LayerInaccessibleException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
      end)

      api.add_operation(:get_lifecycle_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLifecyclePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetLifecyclePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLifecyclePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LifecyclePolicyNotFoundException)
      end)

      api.add_operation(:get_lifecycle_policy_preview, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLifecyclePolicyPreview"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetLifecyclePolicyPreviewRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLifecyclePolicyPreviewResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LifecyclePolicyPreviewNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_repository_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRepositoryPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRepositoryPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRepositoryPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryPolicyNotFoundException)
      end)

      api.add_operation(:initiate_layer_upload, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InitiateLayerUpload"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: InitiateLayerUploadRequest)
        o.output = Shapes::ShapeRef.new(shape: InitiateLayerUploadResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: KmsException)
      end)

      api.add_operation(:list_images, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListImages"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListImagesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListImagesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:put_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutImage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutImageRequest)
        o.output = Shapes::ShapeRef.new(shape: PutImageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ImageAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LayersNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ReferencedImagesNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ImageTagAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ImageDigestDoesNotMatchException)
        o.errors << Shapes::ShapeRef.new(shape: KmsException)
      end)

      api.add_operation(:put_image_scanning_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutImageScanningConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutImageScanningConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutImageScanningConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
      end)

      api.add_operation(:put_image_tag_mutability, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutImageTagMutability"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutImageTagMutabilityRequest)
        o.output = Shapes::ShapeRef.new(shape: PutImageTagMutabilityResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
      end)

      api.add_operation(:put_lifecycle_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutLifecyclePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutLifecyclePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutLifecyclePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
      end)

      api.add_operation(:set_repository_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetRepositoryPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetRepositoryPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: SetRepositoryPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
      end)

      api.add_operation(:start_image_scan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartImageScan"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartImageScanRequest)
        o.output = Shapes::ShapeRef.new(shape: StartImageScanResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedImageTypeException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ImageNotFoundException)
      end)

      api.add_operation(:start_lifecycle_policy_preview, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartLifecyclePolicyPreview"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartLifecyclePolicyPreviewRequest)
        o.output = Shapes::ShapeRef.new(shape: StartLifecyclePolicyPreviewResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LifecyclePolicyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LifecyclePolicyPreviewInProgressException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:upload_layer_part, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UploadLayerPart"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UploadLayerPartRequest)
        o.output = Shapes::ShapeRef.new(shape: UploadLayerPartResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLayerPartException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UploadNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: KmsException)
      end)
    end

  end
end
