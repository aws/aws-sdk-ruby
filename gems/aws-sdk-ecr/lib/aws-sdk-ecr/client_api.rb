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
    DeleteRepositoryPolicyRequest = Shapes::StructureShape.new(name: 'DeleteRepositoryPolicyRequest')
    DeleteRepositoryPolicyResponse = Shapes::StructureShape.new(name: 'DeleteRepositoryPolicyResponse')
    DeleteRepositoryRequest = Shapes::StructureShape.new(name: 'DeleteRepositoryRequest')
    DeleteRepositoryResponse = Shapes::StructureShape.new(name: 'DeleteRepositoryResponse')
    DescribeImagesFilter = Shapes::StructureShape.new(name: 'DescribeImagesFilter')
    DescribeImagesRequest = Shapes::StructureShape.new(name: 'DescribeImagesRequest')
    DescribeImagesResponse = Shapes::StructureShape.new(name: 'DescribeImagesResponse')
    DescribeRepositoriesRequest = Shapes::StructureShape.new(name: 'DescribeRepositoriesRequest')
    DescribeRepositoriesResponse = Shapes::StructureShape.new(name: 'DescribeRepositoriesResponse')
    EmptyUploadException = Shapes::StructureShape.new(name: 'EmptyUploadException')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    ExpirationTimestamp = Shapes::TimestampShape.new(name: 'ExpirationTimestamp')
    ForceFlag = Shapes::BooleanShape.new(name: 'ForceFlag')
    GetAuthorizationTokenRegistryIdList = Shapes::ListShape.new(name: 'GetAuthorizationTokenRegistryIdList')
    GetAuthorizationTokenRequest = Shapes::StructureShape.new(name: 'GetAuthorizationTokenRequest')
    GetAuthorizationTokenResponse = Shapes::StructureShape.new(name: 'GetAuthorizationTokenResponse')
    GetDownloadUrlForLayerRequest = Shapes::StructureShape.new(name: 'GetDownloadUrlForLayerRequest')
    GetDownloadUrlForLayerResponse = Shapes::StructureShape.new(name: 'GetDownloadUrlForLayerResponse')
    GetRepositoryPolicyRequest = Shapes::StructureShape.new(name: 'GetRepositoryPolicyRequest')
    GetRepositoryPolicyResponse = Shapes::StructureShape.new(name: 'GetRepositoryPolicyResponse')
    Image = Shapes::StructureShape.new(name: 'Image')
    ImageAlreadyExistsException = Shapes::StructureShape.new(name: 'ImageAlreadyExistsException')
    ImageDetail = Shapes::StructureShape.new(name: 'ImageDetail')
    ImageDetailList = Shapes::ListShape.new(name: 'ImageDetailList')
    ImageDigest = Shapes::StringShape.new(name: 'ImageDigest')
    ImageFailure = Shapes::StructureShape.new(name: 'ImageFailure')
    ImageFailureCode = Shapes::StringShape.new(name: 'ImageFailureCode')
    ImageFailureList = Shapes::ListShape.new(name: 'ImageFailureList')
    ImageFailureReason = Shapes::StringShape.new(name: 'ImageFailureReason')
    ImageIdentifier = Shapes::StructureShape.new(name: 'ImageIdentifier')
    ImageIdentifierList = Shapes::ListShape.new(name: 'ImageIdentifierList')
    ImageList = Shapes::ListShape.new(name: 'ImageList')
    ImageManifest = Shapes::StringShape.new(name: 'ImageManifest')
    ImageNotFoundException = Shapes::StructureShape.new(name: 'ImageNotFoundException')
    ImageSizeInBytes = Shapes::IntegerShape.new(name: 'ImageSizeInBytes')
    ImageTag = Shapes::StringShape.new(name: 'ImageTag')
    ImageTagList = Shapes::ListShape.new(name: 'ImageTagList')
    InitiateLayerUploadRequest = Shapes::StructureShape.new(name: 'InitiateLayerUploadRequest')
    InitiateLayerUploadResponse = Shapes::StructureShape.new(name: 'InitiateLayerUploadResponse')
    InvalidLayerException = Shapes::StructureShape.new(name: 'InvalidLayerException')
    InvalidLayerPartException = Shapes::StructureShape.new(name: 'InvalidLayerPartException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
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
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListImagesFilter = Shapes::StructureShape.new(name: 'ListImagesFilter')
    ListImagesRequest = Shapes::StructureShape.new(name: 'ListImagesRequest')
    ListImagesResponse = Shapes::StructureShape.new(name: 'ListImagesResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MediaType = Shapes::StringShape.new(name: 'MediaType')
    MediaTypeList = Shapes::ListShape.new(name: 'MediaTypeList')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    PartSize = Shapes::IntegerShape.new(name: 'PartSize')
    ProxyEndpoint = Shapes::StringShape.new(name: 'ProxyEndpoint')
    PushTimestamp = Shapes::TimestampShape.new(name: 'PushTimestamp')
    PutImageRequest = Shapes::StructureShape.new(name: 'PutImageRequest')
    PutImageResponse = Shapes::StructureShape.new(name: 'PutImageResponse')
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
    ServerException = Shapes::StructureShape.new(name: 'ServerException')
    SetRepositoryPolicyRequest = Shapes::StructureShape.new(name: 'SetRepositoryPolicyRequest')
    SetRepositoryPolicyResponse = Shapes::StructureShape.new(name: 'SetRepositoryPolicyResponse')
    TagStatus = Shapes::StringShape.new(name: 'TagStatus')
    UploadId = Shapes::StringShape.new(name: 'UploadId')
    UploadLayerPartRequest = Shapes::StructureShape.new(name: 'UploadLayerPartRequest')
    UploadLayerPartResponse = Shapes::StructureShape.new(name: 'UploadLayerPartResponse')
    UploadNotFoundException = Shapes::StructureShape.new(name: 'UploadNotFoundException')
    Url = Shapes::StringShape.new(name: 'Url')

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
    CreateRepositoryRequest.struct_class = Types::CreateRepositoryRequest

    CreateRepositoryResponse.add_member(:repository, Shapes::ShapeRef.new(shape: Repository, location_name: "repository"))
    CreateRepositoryResponse.struct_class = Types::CreateRepositoryResponse

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
    Image.struct_class = Types::Image

    ImageDetail.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    ImageDetail.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    ImageDetail.add_member(:image_digest, Shapes::ShapeRef.new(shape: ImageDigest, location_name: "imageDigest"))
    ImageDetail.add_member(:image_tags, Shapes::ShapeRef.new(shape: ImageTagList, location_name: "imageTags"))
    ImageDetail.add_member(:image_size_in_bytes, Shapes::ShapeRef.new(shape: ImageSizeInBytes, location_name: "imageSizeInBytes"))
    ImageDetail.add_member(:image_pushed_at, Shapes::ShapeRef.new(shape: PushTimestamp, location_name: "imagePushedAt"))
    ImageDetail.struct_class = Types::ImageDetail

    ImageDetailList.member = Shapes::ShapeRef.new(shape: ImageDetail)

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

    ImageTagList.member = Shapes::ShapeRef.new(shape: ImageTag)

    InitiateLayerUploadRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    InitiateLayerUploadRequest.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    InitiateLayerUploadRequest.struct_class = Types::InitiateLayerUploadRequest

    InitiateLayerUploadResponse.add_member(:upload_id, Shapes::ShapeRef.new(shape: UploadId, location_name: "uploadId"))
    InitiateLayerUploadResponse.add_member(:part_size, Shapes::ShapeRef.new(shape: PartSize, location_name: "partSize"))
    InitiateLayerUploadResponse.struct_class = Types::InitiateLayerUploadResponse

    Layer.add_member(:layer_digest, Shapes::ShapeRef.new(shape: LayerDigest, location_name: "layerDigest"))
    Layer.add_member(:layer_availability, Shapes::ShapeRef.new(shape: LayerAvailability, location_name: "layerAvailability"))
    Layer.add_member(:layer_size, Shapes::ShapeRef.new(shape: LayerSizeInBytes, location_name: "layerSize"))
    Layer.add_member(:media_type, Shapes::ShapeRef.new(shape: MediaType, location_name: "mediaType"))
    Layer.struct_class = Types::Layer

    LayerDigestList.member = Shapes::ShapeRef.new(shape: LayerDigest)

    LayerFailure.add_member(:layer_digest, Shapes::ShapeRef.new(shape: BatchedOperationLayerDigest, location_name: "layerDigest"))
    LayerFailure.add_member(:failure_code, Shapes::ShapeRef.new(shape: LayerFailureCode, location_name: "failureCode"))
    LayerFailure.add_member(:failure_reason, Shapes::ShapeRef.new(shape: LayerFailureReason, location_name: "failureReason"))
    LayerFailure.struct_class = Types::LayerFailure

    LayerFailureList.member = Shapes::ShapeRef.new(shape: LayerFailure)

    LayerList.member = Shapes::ShapeRef.new(shape: Layer)

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

    MediaTypeList.member = Shapes::ShapeRef.new(shape: MediaType)

    PutImageRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    PutImageRequest.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    PutImageRequest.add_member(:image_manifest, Shapes::ShapeRef.new(shape: ImageManifest, required: true, location_name: "imageManifest"))
    PutImageRequest.add_member(:image_tag, Shapes::ShapeRef.new(shape: ImageTag, location_name: "imageTag"))
    PutImageRequest.struct_class = Types::PutImageRequest

    PutImageResponse.add_member(:image, Shapes::ShapeRef.new(shape: Image, location_name: "image"))
    PutImageResponse.struct_class = Types::PutImageResponse

    Repository.add_member(:repository_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "repositoryArn"))
    Repository.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    Repository.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    Repository.add_member(:repository_uri, Shapes::ShapeRef.new(shape: Url, location_name: "repositoryUri"))
    Repository.add_member(:created_at, Shapes::ShapeRef.new(shape: CreationTimestamp, location_name: "createdAt"))
    Repository.struct_class = Types::Repository

    RepositoryList.member = Shapes::ShapeRef.new(shape: Repository)

    RepositoryNameList.member = Shapes::ShapeRef.new(shape: RepositoryName)

    SetRepositoryPolicyRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    SetRepositoryPolicyRequest.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    SetRepositoryPolicyRequest.add_member(:policy_text, Shapes::ShapeRef.new(shape: RepositoryPolicyText, required: true, location_name: "policyText"))
    SetRepositoryPolicyRequest.add_member(:force, Shapes::ShapeRef.new(shape: ForceFlag, location_name: "force"))
    SetRepositoryPolicyRequest.struct_class = Types::SetRepositoryPolicyRequest

    SetRepositoryPolicyResponse.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    SetRepositoryPolicyResponse.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    SetRepositoryPolicyResponse.add_member(:policy_text, Shapes::ShapeRef.new(shape: RepositoryPolicyText, location_name: "policyText"))
    SetRepositoryPolicyResponse.struct_class = Types::SetRepositoryPolicyResponse

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


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2015-09-21"

      api.metadata = {
        "endpointPrefix" => "ecr",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "Amazon EC2 Container Registry",
        "signatureVersion" => "v4",
        "targetPrefix" => "AmazonEC2ContainerRegistry_V20150921",
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
      end)

      api.add_operation(:create_repository, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRepository"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateRepositoryRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRepositoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
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
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
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
      end)
    end

  end
end
