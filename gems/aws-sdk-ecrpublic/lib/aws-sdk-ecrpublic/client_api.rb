# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ECRPublic
  # @api private
  module ClientApi

    include Seahorse::Model

    AboutText = Shapes::StringShape.new(name: 'AboutText')
    Architecture = Shapes::StringShape.new(name: 'Architecture')
    ArchitectureList = Shapes::ListShape.new(name: 'ArchitectureList')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AuthorizationData = Shapes::StructureShape.new(name: 'AuthorizationData')
    Base64 = Shapes::StringShape.new(name: 'Base64')
    BatchCheckLayerAvailabilityRequest = Shapes::StructureShape.new(name: 'BatchCheckLayerAvailabilityRequest')
    BatchCheckLayerAvailabilityResponse = Shapes::StructureShape.new(name: 'BatchCheckLayerAvailabilityResponse')
    BatchDeleteImageRequest = Shapes::StructureShape.new(name: 'BatchDeleteImageRequest')
    BatchDeleteImageResponse = Shapes::StructureShape.new(name: 'BatchDeleteImageResponse')
    BatchedOperationLayerDigest = Shapes::StringShape.new(name: 'BatchedOperationLayerDigest')
    BatchedOperationLayerDigestList = Shapes::ListShape.new(name: 'BatchedOperationLayerDigestList')
    CompleteLayerUploadRequest = Shapes::StructureShape.new(name: 'CompleteLayerUploadRequest')
    CompleteLayerUploadResponse = Shapes::StructureShape.new(name: 'CompleteLayerUploadResponse')
    CreateRepositoryRequest = Shapes::StructureShape.new(name: 'CreateRepositoryRequest')
    CreateRepositoryResponse = Shapes::StructureShape.new(name: 'CreateRepositoryResponse')
    CreationTimestamp = Shapes::TimestampShape.new(name: 'CreationTimestamp')
    DefaultRegistryAliasFlag = Shapes::BooleanShape.new(name: 'DefaultRegistryAliasFlag')
    DeleteRepositoryPolicyRequest = Shapes::StructureShape.new(name: 'DeleteRepositoryPolicyRequest')
    DeleteRepositoryPolicyResponse = Shapes::StructureShape.new(name: 'DeleteRepositoryPolicyResponse')
    DeleteRepositoryRequest = Shapes::StructureShape.new(name: 'DeleteRepositoryRequest')
    DeleteRepositoryResponse = Shapes::StructureShape.new(name: 'DeleteRepositoryResponse')
    DescribeImageTagsRequest = Shapes::StructureShape.new(name: 'DescribeImageTagsRequest')
    DescribeImageTagsResponse = Shapes::StructureShape.new(name: 'DescribeImageTagsResponse')
    DescribeImagesRequest = Shapes::StructureShape.new(name: 'DescribeImagesRequest')
    DescribeImagesResponse = Shapes::StructureShape.new(name: 'DescribeImagesResponse')
    DescribeRegistriesRequest = Shapes::StructureShape.new(name: 'DescribeRegistriesRequest')
    DescribeRegistriesResponse = Shapes::StructureShape.new(name: 'DescribeRegistriesResponse')
    DescribeRepositoriesRequest = Shapes::StructureShape.new(name: 'DescribeRepositoriesRequest')
    DescribeRepositoriesResponse = Shapes::StructureShape.new(name: 'DescribeRepositoriesResponse')
    EmptyUploadException = Shapes::StructureShape.new(name: 'EmptyUploadException')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    ExpirationTimestamp = Shapes::TimestampShape.new(name: 'ExpirationTimestamp')
    ForceFlag = Shapes::BooleanShape.new(name: 'ForceFlag')
    GetAuthorizationTokenRequest = Shapes::StructureShape.new(name: 'GetAuthorizationTokenRequest')
    GetAuthorizationTokenResponse = Shapes::StructureShape.new(name: 'GetAuthorizationTokenResponse')
    GetRegistryCatalogDataRequest = Shapes::StructureShape.new(name: 'GetRegistryCatalogDataRequest')
    GetRegistryCatalogDataResponse = Shapes::StructureShape.new(name: 'GetRegistryCatalogDataResponse')
    GetRepositoryCatalogDataRequest = Shapes::StructureShape.new(name: 'GetRepositoryCatalogDataRequest')
    GetRepositoryCatalogDataResponse = Shapes::StructureShape.new(name: 'GetRepositoryCatalogDataResponse')
    GetRepositoryPolicyRequest = Shapes::StructureShape.new(name: 'GetRepositoryPolicyRequest')
    GetRepositoryPolicyResponse = Shapes::StructureShape.new(name: 'GetRepositoryPolicyResponse')
    Image = Shapes::StructureShape.new(name: 'Image')
    ImageAlreadyExistsException = Shapes::StructureShape.new(name: 'ImageAlreadyExistsException')
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
    ImageManifest = Shapes::StringShape.new(name: 'ImageManifest')
    ImageNotFoundException = Shapes::StructureShape.new(name: 'ImageNotFoundException')
    ImageSizeInBytes = Shapes::IntegerShape.new(name: 'ImageSizeInBytes')
    ImageTag = Shapes::StringShape.new(name: 'ImageTag')
    ImageTagAlreadyExistsException = Shapes::StructureShape.new(name: 'ImageTagAlreadyExistsException')
    ImageTagDetail = Shapes::StructureShape.new(name: 'ImageTagDetail')
    ImageTagDetailList = Shapes::ListShape.new(name: 'ImageTagDetailList')
    ImageTagList = Shapes::ListShape.new(name: 'ImageTagList')
    InitiateLayerUploadRequest = Shapes::StructureShape.new(name: 'InitiateLayerUploadRequest')
    InitiateLayerUploadResponse = Shapes::StructureShape.new(name: 'InitiateLayerUploadResponse')
    InvalidLayerException = Shapes::StructureShape.new(name: 'InvalidLayerException')
    InvalidLayerPartException = Shapes::StructureShape.new(name: 'InvalidLayerPartException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    InvalidTagParameterException = Shapes::StructureShape.new(name: 'InvalidTagParameterException')
    Layer = Shapes::StructureShape.new(name: 'Layer')
    LayerAlreadyExistsException = Shapes::StructureShape.new(name: 'LayerAlreadyExistsException')
    LayerAvailability = Shapes::StringShape.new(name: 'LayerAvailability')
    LayerDigest = Shapes::StringShape.new(name: 'LayerDigest')
    LayerDigestList = Shapes::ListShape.new(name: 'LayerDigestList')
    LayerFailure = Shapes::StructureShape.new(name: 'LayerFailure')
    LayerFailureCode = Shapes::StringShape.new(name: 'LayerFailureCode')
    LayerFailureList = Shapes::ListShape.new(name: 'LayerFailureList')
    LayerFailureReason = Shapes::StringShape.new(name: 'LayerFailureReason')
    LayerList = Shapes::ListShape.new(name: 'LayerList')
    LayerPartBlob = Shapes::BlobShape.new(name: 'LayerPartBlob')
    LayerPartTooSmallException = Shapes::StructureShape.new(name: 'LayerPartTooSmallException')
    LayerSizeInBytes = Shapes::IntegerShape.new(name: 'LayerSizeInBytes')
    LayersNotFoundException = Shapes::StructureShape.new(name: 'LayersNotFoundException')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LogoImageBlob = Shapes::BlobShape.new(name: 'LogoImageBlob')
    MarketplaceCertified = Shapes::BooleanShape.new(name: 'MarketplaceCertified')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MediaType = Shapes::StringShape.new(name: 'MediaType')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OperatingSystem = Shapes::StringShape.new(name: 'OperatingSystem')
    OperatingSystemList = Shapes::ListShape.new(name: 'OperatingSystemList')
    PartSize = Shapes::IntegerShape.new(name: 'PartSize')
    PrimaryRegistryAliasFlag = Shapes::BooleanShape.new(name: 'PrimaryRegistryAliasFlag')
    PushTimestamp = Shapes::TimestampShape.new(name: 'PushTimestamp')
    PutImageRequest = Shapes::StructureShape.new(name: 'PutImageRequest')
    PutImageResponse = Shapes::StructureShape.new(name: 'PutImageResponse')
    PutRegistryCatalogDataRequest = Shapes::StructureShape.new(name: 'PutRegistryCatalogDataRequest')
    PutRegistryCatalogDataResponse = Shapes::StructureShape.new(name: 'PutRegistryCatalogDataResponse')
    PutRepositoryCatalogDataRequest = Shapes::StructureShape.new(name: 'PutRepositoryCatalogDataRequest')
    PutRepositoryCatalogDataResponse = Shapes::StructureShape.new(name: 'PutRepositoryCatalogDataResponse')
    ReferencedImageDetail = Shapes::StructureShape.new(name: 'ReferencedImageDetail')
    ReferencedImagesNotFoundException = Shapes::StructureShape.new(name: 'ReferencedImagesNotFoundException')
    Registry = Shapes::StructureShape.new(name: 'Registry')
    RegistryAlias = Shapes::StructureShape.new(name: 'RegistryAlias')
    RegistryAliasList = Shapes::ListShape.new(name: 'RegistryAliasList')
    RegistryAliasName = Shapes::StringShape.new(name: 'RegistryAliasName')
    RegistryAliasStatus = Shapes::StringShape.new(name: 'RegistryAliasStatus')
    RegistryCatalogData = Shapes::StructureShape.new(name: 'RegistryCatalogData')
    RegistryDisplayName = Shapes::StringShape.new(name: 'RegistryDisplayName')
    RegistryId = Shapes::StringShape.new(name: 'RegistryId')
    RegistryIdOrAlias = Shapes::StringShape.new(name: 'RegistryIdOrAlias')
    RegistryList = Shapes::ListShape.new(name: 'RegistryList')
    RegistryNotFoundException = Shapes::StructureShape.new(name: 'RegistryNotFoundException')
    RegistryVerified = Shapes::BooleanShape.new(name: 'RegistryVerified')
    Repository = Shapes::StructureShape.new(name: 'Repository')
    RepositoryAlreadyExistsException = Shapes::StructureShape.new(name: 'RepositoryAlreadyExistsException')
    RepositoryCatalogData = Shapes::StructureShape.new(name: 'RepositoryCatalogData')
    RepositoryCatalogDataInput = Shapes::StructureShape.new(name: 'RepositoryCatalogDataInput')
    RepositoryCatalogDataNotFoundException = Shapes::StructureShape.new(name: 'RepositoryCatalogDataNotFoundException')
    RepositoryDescription = Shapes::StringShape.new(name: 'RepositoryDescription')
    RepositoryList = Shapes::ListShape.new(name: 'RepositoryList')
    RepositoryName = Shapes::StringShape.new(name: 'RepositoryName')
    RepositoryNameList = Shapes::ListShape.new(name: 'RepositoryNameList')
    RepositoryNotEmptyException = Shapes::StructureShape.new(name: 'RepositoryNotEmptyException')
    RepositoryNotFoundException = Shapes::StructureShape.new(name: 'RepositoryNotFoundException')
    RepositoryPolicyNotFoundException = Shapes::StructureShape.new(name: 'RepositoryPolicyNotFoundException')
    RepositoryPolicyText = Shapes::StringShape.new(name: 'RepositoryPolicyText')
    ResourceUrl = Shapes::StringShape.new(name: 'ResourceUrl')
    ServerException = Shapes::StructureShape.new(name: 'ServerException')
    SetRepositoryPolicyRequest = Shapes::StructureShape.new(name: 'SetRepositoryPolicyRequest')
    SetRepositoryPolicyResponse = Shapes::StructureShape.new(name: 'SetRepositoryPolicyResponse')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    UnsupportedCommandException = Shapes::StructureShape.new(name: 'UnsupportedCommandException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UploadId = Shapes::StringShape.new(name: 'UploadId')
    UploadLayerPartRequest = Shapes::StructureShape.new(name: 'UploadLayerPartRequest')
    UploadLayerPartResponse = Shapes::StructureShape.new(name: 'UploadLayerPartResponse')
    UploadNotFoundException = Shapes::StructureShape.new(name: 'UploadNotFoundException')
    Url = Shapes::StringShape.new(name: 'Url')
    UsageText = Shapes::StringShape.new(name: 'UsageText')

    ArchitectureList.member = Shapes::ShapeRef.new(shape: Architecture)

    AuthorizationData.add_member(:authorization_token, Shapes::ShapeRef.new(shape: Base64, location_name: "authorizationToken"))
    AuthorizationData.add_member(:expires_at, Shapes::ShapeRef.new(shape: ExpirationTimestamp, location_name: "expiresAt"))
    AuthorizationData.struct_class = Types::AuthorizationData

    BatchCheckLayerAvailabilityRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdOrAlias, location_name: "registryId"))
    BatchCheckLayerAvailabilityRequest.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    BatchCheckLayerAvailabilityRequest.add_member(:layer_digests, Shapes::ShapeRef.new(shape: BatchedOperationLayerDigestList, required: true, location_name: "layerDigests"))
    BatchCheckLayerAvailabilityRequest.struct_class = Types::BatchCheckLayerAvailabilityRequest

    BatchCheckLayerAvailabilityResponse.add_member(:layers, Shapes::ShapeRef.new(shape: LayerList, location_name: "layers"))
    BatchCheckLayerAvailabilityResponse.add_member(:failures, Shapes::ShapeRef.new(shape: LayerFailureList, location_name: "failures"))
    BatchCheckLayerAvailabilityResponse.struct_class = Types::BatchCheckLayerAvailabilityResponse

    BatchDeleteImageRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdOrAlias, location_name: "registryId"))
    BatchDeleteImageRequest.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    BatchDeleteImageRequest.add_member(:image_ids, Shapes::ShapeRef.new(shape: ImageIdentifierList, required: true, location_name: "imageIds"))
    BatchDeleteImageRequest.struct_class = Types::BatchDeleteImageRequest

    BatchDeleteImageResponse.add_member(:image_ids, Shapes::ShapeRef.new(shape: ImageIdentifierList, location_name: "imageIds"))
    BatchDeleteImageResponse.add_member(:failures, Shapes::ShapeRef.new(shape: ImageFailureList, location_name: "failures"))
    BatchDeleteImageResponse.struct_class = Types::BatchDeleteImageResponse

    BatchedOperationLayerDigestList.member = Shapes::ShapeRef.new(shape: BatchedOperationLayerDigest)

    CompleteLayerUploadRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdOrAlias, location_name: "registryId"))
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
    CreateRepositoryRequest.add_member(:catalog_data, Shapes::ShapeRef.new(shape: RepositoryCatalogDataInput, location_name: "catalogData"))
    CreateRepositoryRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateRepositoryRequest.struct_class = Types::CreateRepositoryRequest

    CreateRepositoryResponse.add_member(:repository, Shapes::ShapeRef.new(shape: Repository, location_name: "repository"))
    CreateRepositoryResponse.add_member(:catalog_data, Shapes::ShapeRef.new(shape: RepositoryCatalogData, location_name: "catalogData"))
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

    DescribeImageTagsRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    DescribeImageTagsRequest.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    DescribeImageTagsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeImageTagsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    DescribeImageTagsRequest.struct_class = Types::DescribeImageTagsRequest

    DescribeImageTagsResponse.add_member(:image_tag_details, Shapes::ShapeRef.new(shape: ImageTagDetailList, location_name: "imageTagDetails"))
    DescribeImageTagsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeImageTagsResponse.struct_class = Types::DescribeImageTagsResponse

    DescribeImagesRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    DescribeImagesRequest.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    DescribeImagesRequest.add_member(:image_ids, Shapes::ShapeRef.new(shape: ImageIdentifierList, location_name: "imageIds"))
    DescribeImagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeImagesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    DescribeImagesRequest.struct_class = Types::DescribeImagesRequest

    DescribeImagesResponse.add_member(:image_details, Shapes::ShapeRef.new(shape: ImageDetailList, location_name: "imageDetails"))
    DescribeImagesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeImagesResponse.struct_class = Types::DescribeImagesResponse

    DescribeRegistriesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeRegistriesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    DescribeRegistriesRequest.struct_class = Types::DescribeRegistriesRequest

    DescribeRegistriesResponse.add_member(:registries, Shapes::ShapeRef.new(shape: RegistryList, required: true, location_name: "registries"))
    DescribeRegistriesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeRegistriesResponse.struct_class = Types::DescribeRegistriesResponse

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

    GetAuthorizationTokenRequest.struct_class = Types::GetAuthorizationTokenRequest

    GetAuthorizationTokenResponse.add_member(:authorization_data, Shapes::ShapeRef.new(shape: AuthorizationData, location_name: "authorizationData"))
    GetAuthorizationTokenResponse.struct_class = Types::GetAuthorizationTokenResponse

    GetRegistryCatalogDataRequest.struct_class = Types::GetRegistryCatalogDataRequest

    GetRegistryCatalogDataResponse.add_member(:registry_catalog_data, Shapes::ShapeRef.new(shape: RegistryCatalogData, required: true, location_name: "registryCatalogData"))
    GetRegistryCatalogDataResponse.struct_class = Types::GetRegistryCatalogDataResponse

    GetRepositoryCatalogDataRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    GetRepositoryCatalogDataRequest.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    GetRepositoryCatalogDataRequest.struct_class = Types::GetRepositoryCatalogDataRequest

    GetRepositoryCatalogDataResponse.add_member(:catalog_data, Shapes::ShapeRef.new(shape: RepositoryCatalogData, location_name: "catalogData"))
    GetRepositoryCatalogDataResponse.struct_class = Types::GetRepositoryCatalogDataResponse

    GetRepositoryPolicyRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    GetRepositoryPolicyRequest.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    GetRepositoryPolicyRequest.struct_class = Types::GetRepositoryPolicyRequest

    GetRepositoryPolicyResponse.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    GetRepositoryPolicyResponse.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    GetRepositoryPolicyResponse.add_member(:policy_text, Shapes::ShapeRef.new(shape: RepositoryPolicyText, location_name: "policyText"))
    GetRepositoryPolicyResponse.struct_class = Types::GetRepositoryPolicyResponse

    Image.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdOrAlias, location_name: "registryId"))
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

    ImageNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ImageNotFoundException.struct_class = Types::ImageNotFoundException

    ImageTagAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ImageTagAlreadyExistsException.struct_class = Types::ImageTagAlreadyExistsException

    ImageTagDetail.add_member(:image_tag, Shapes::ShapeRef.new(shape: ImageTag, location_name: "imageTag"))
    ImageTagDetail.add_member(:created_at, Shapes::ShapeRef.new(shape: CreationTimestamp, location_name: "createdAt"))
    ImageTagDetail.add_member(:image_detail, Shapes::ShapeRef.new(shape: ReferencedImageDetail, location_name: "imageDetail"))
    ImageTagDetail.struct_class = Types::ImageTagDetail

    ImageTagDetailList.member = Shapes::ShapeRef.new(shape: ImageTagDetail)

    ImageTagList.member = Shapes::ShapeRef.new(shape: ImageTag)

    InitiateLayerUploadRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdOrAlias, location_name: "registryId"))
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

    LayerList.member = Shapes::ShapeRef.new(shape: Layer)

    LayerPartTooSmallException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    LayerPartTooSmallException.struct_class = Types::LayerPartTooSmallException

    LayersNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    LayersNotFoundException.struct_class = Types::LayersNotFoundException

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    OperatingSystemList.member = Shapes::ShapeRef.new(shape: OperatingSystem)

    PutImageRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdOrAlias, location_name: "registryId"))
    PutImageRequest.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    PutImageRequest.add_member(:image_manifest, Shapes::ShapeRef.new(shape: ImageManifest, required: true, location_name: "imageManifest"))
    PutImageRequest.add_member(:image_manifest_media_type, Shapes::ShapeRef.new(shape: MediaType, location_name: "imageManifestMediaType"))
    PutImageRequest.add_member(:image_tag, Shapes::ShapeRef.new(shape: ImageTag, location_name: "imageTag"))
    PutImageRequest.add_member(:image_digest, Shapes::ShapeRef.new(shape: ImageDigest, location_name: "imageDigest"))
    PutImageRequest.struct_class = Types::PutImageRequest

    PutImageResponse.add_member(:image, Shapes::ShapeRef.new(shape: Image, location_name: "image"))
    PutImageResponse.struct_class = Types::PutImageResponse

    PutRegistryCatalogDataRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: RegistryDisplayName, location_name: "displayName"))
    PutRegistryCatalogDataRequest.struct_class = Types::PutRegistryCatalogDataRequest

    PutRegistryCatalogDataResponse.add_member(:registry_catalog_data, Shapes::ShapeRef.new(shape: RegistryCatalogData, required: true, location_name: "registryCatalogData"))
    PutRegistryCatalogDataResponse.struct_class = Types::PutRegistryCatalogDataResponse

    PutRepositoryCatalogDataRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    PutRepositoryCatalogDataRequest.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    PutRepositoryCatalogDataRequest.add_member(:catalog_data, Shapes::ShapeRef.new(shape: RepositoryCatalogDataInput, required: true, location_name: "catalogData"))
    PutRepositoryCatalogDataRequest.struct_class = Types::PutRepositoryCatalogDataRequest

    PutRepositoryCatalogDataResponse.add_member(:catalog_data, Shapes::ShapeRef.new(shape: RepositoryCatalogData, location_name: "catalogData"))
    PutRepositoryCatalogDataResponse.struct_class = Types::PutRepositoryCatalogDataResponse

    ReferencedImageDetail.add_member(:image_digest, Shapes::ShapeRef.new(shape: ImageDigest, location_name: "imageDigest"))
    ReferencedImageDetail.add_member(:image_size_in_bytes, Shapes::ShapeRef.new(shape: ImageSizeInBytes, location_name: "imageSizeInBytes"))
    ReferencedImageDetail.add_member(:image_pushed_at, Shapes::ShapeRef.new(shape: PushTimestamp, location_name: "imagePushedAt"))
    ReferencedImageDetail.add_member(:image_manifest_media_type, Shapes::ShapeRef.new(shape: MediaType, location_name: "imageManifestMediaType"))
    ReferencedImageDetail.add_member(:artifact_media_type, Shapes::ShapeRef.new(shape: MediaType, location_name: "artifactMediaType"))
    ReferencedImageDetail.struct_class = Types::ReferencedImageDetail

    ReferencedImagesNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ReferencedImagesNotFoundException.struct_class = Types::ReferencedImagesNotFoundException

    Registry.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, required: true, location_name: "registryId"))
    Registry.add_member(:registry_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "registryArn"))
    Registry.add_member(:registry_uri, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "registryUri"))
    Registry.add_member(:verified, Shapes::ShapeRef.new(shape: RegistryVerified, required: true, location_name: "verified"))
    Registry.add_member(:aliases, Shapes::ShapeRef.new(shape: RegistryAliasList, required: true, location_name: "aliases"))
    Registry.struct_class = Types::Registry

    RegistryAlias.add_member(:name, Shapes::ShapeRef.new(shape: RegistryAliasName, required: true, location_name: "name"))
    RegistryAlias.add_member(:status, Shapes::ShapeRef.new(shape: RegistryAliasStatus, required: true, location_name: "status"))
    RegistryAlias.add_member(:primary_registry_alias, Shapes::ShapeRef.new(shape: PrimaryRegistryAliasFlag, required: true, location_name: "primaryRegistryAlias"))
    RegistryAlias.add_member(:default_registry_alias, Shapes::ShapeRef.new(shape: DefaultRegistryAliasFlag, required: true, location_name: "defaultRegistryAlias"))
    RegistryAlias.struct_class = Types::RegistryAlias

    RegistryAliasList.member = Shapes::ShapeRef.new(shape: RegistryAlias)

    RegistryCatalogData.add_member(:display_name, Shapes::ShapeRef.new(shape: RegistryDisplayName, location_name: "displayName"))
    RegistryCatalogData.struct_class = Types::RegistryCatalogData

    RegistryList.member = Shapes::ShapeRef.new(shape: Registry)

    RegistryNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    RegistryNotFoundException.struct_class = Types::RegistryNotFoundException

    Repository.add_member(:repository_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "repositoryArn"))
    Repository.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    Repository.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    Repository.add_member(:repository_uri, Shapes::ShapeRef.new(shape: Url, location_name: "repositoryUri"))
    Repository.add_member(:created_at, Shapes::ShapeRef.new(shape: CreationTimestamp, location_name: "createdAt"))
    Repository.struct_class = Types::Repository

    RepositoryAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    RepositoryAlreadyExistsException.struct_class = Types::RepositoryAlreadyExistsException

    RepositoryCatalogData.add_member(:description, Shapes::ShapeRef.new(shape: RepositoryDescription, location_name: "description"))
    RepositoryCatalogData.add_member(:architectures, Shapes::ShapeRef.new(shape: ArchitectureList, location_name: "architectures"))
    RepositoryCatalogData.add_member(:operating_systems, Shapes::ShapeRef.new(shape: OperatingSystemList, location_name: "operatingSystems"))
    RepositoryCatalogData.add_member(:logo_url, Shapes::ShapeRef.new(shape: ResourceUrl, location_name: "logoUrl"))
    RepositoryCatalogData.add_member(:about_text, Shapes::ShapeRef.new(shape: AboutText, location_name: "aboutText"))
    RepositoryCatalogData.add_member(:usage_text, Shapes::ShapeRef.new(shape: UsageText, location_name: "usageText"))
    RepositoryCatalogData.add_member(:marketplace_certified, Shapes::ShapeRef.new(shape: MarketplaceCertified, location_name: "marketplaceCertified"))
    RepositoryCatalogData.struct_class = Types::RepositoryCatalogData

    RepositoryCatalogDataInput.add_member(:description, Shapes::ShapeRef.new(shape: RepositoryDescription, location_name: "description"))
    RepositoryCatalogDataInput.add_member(:architectures, Shapes::ShapeRef.new(shape: ArchitectureList, location_name: "architectures"))
    RepositoryCatalogDataInput.add_member(:operating_systems, Shapes::ShapeRef.new(shape: OperatingSystemList, location_name: "operatingSystems"))
    RepositoryCatalogDataInput.add_member(:logo_image_blob, Shapes::ShapeRef.new(shape: LogoImageBlob, location_name: "logoImageBlob"))
    RepositoryCatalogDataInput.add_member(:about_text, Shapes::ShapeRef.new(shape: AboutText, location_name: "aboutText"))
    RepositoryCatalogDataInput.add_member(:usage_text, Shapes::ShapeRef.new(shape: UsageText, location_name: "usageText"))
    RepositoryCatalogDataInput.struct_class = Types::RepositoryCatalogDataInput

    RepositoryCatalogDataNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    RepositoryCatalogDataNotFoundException.struct_class = Types::RepositoryCatalogDataNotFoundException

    RepositoryList.member = Shapes::ShapeRef.new(shape: Repository)

    RepositoryNameList.member = Shapes::ShapeRef.new(shape: RepositoryName)

    RepositoryNotEmptyException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    RepositoryNotEmptyException.struct_class = Types::RepositoryNotEmptyException

    RepositoryNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    RepositoryNotFoundException.struct_class = Types::RepositoryNotFoundException

    RepositoryPolicyNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    RepositoryPolicyNotFoundException.struct_class = Types::RepositoryPolicyNotFoundException

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

    UnsupportedCommandException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    UnsupportedCommandException.struct_class = Types::UnsupportedCommandException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UploadLayerPartRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdOrAlias, location_name: "registryId"))
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

      api.version = "2020-10-30"

      api.metadata = {
        "apiVersion" => "2020-10-30",
        "endpointPrefix" => "api.ecr-public",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "Amazon ECR Public",
        "serviceFullName" => "Amazon Elastic Container Registry Public",
        "serviceId" => "ECR PUBLIC",
        "signatureVersion" => "v4",
        "signingName" => "ecr-public",
        "targetPrefix" => "SpencerFrontendService",
        "uid" => "ecr-public-2020-10-30",
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
        o.errors << Shapes::ShapeRef.new(shape: RegistryNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedCommandException)
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
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedCommandException)
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
        o.errors << Shapes::ShapeRef.new(shape: RegistryNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedCommandException)
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
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedCommandException)
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
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedCommandException)
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
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedCommandException)
      end)

      api.add_operation(:describe_image_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeImageTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeImageTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeImageTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedCommandException)
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
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedCommandException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_registries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRegistries"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeRegistriesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRegistriesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedCommandException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
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
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedCommandException)
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
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedCommandException)
      end)

      api.add_operation(:get_registry_catalog_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRegistryCatalogData"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRegistryCatalogDataRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRegistryCatalogDataResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedCommandException)
      end)

      api.add_operation(:get_repository_catalog_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRepositoryCatalogData"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRepositoryCatalogDataRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRepositoryCatalogDataResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryCatalogDataNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedCommandException)
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
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedCommandException)
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
        o.errors << Shapes::ShapeRef.new(shape: RegistryNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedCommandException)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedCommandException)
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
        o.errors << Shapes::ShapeRef.new(shape: RegistryNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedCommandException)
      end)

      api.add_operation(:put_registry_catalog_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutRegistryCatalogData"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutRegistryCatalogDataRequest)
        o.output = Shapes::ShapeRef.new(shape: PutRegistryCatalogDataResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedCommandException)
      end)

      api.add_operation(:put_repository_catalog_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutRepositoryCatalogData"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutRepositoryCatalogDataRequest)
        o.output = Shapes::ShapeRef.new(shape: PutRepositoryCatalogDataResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedCommandException)
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
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedCommandException)
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
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedCommandException)
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
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedCommandException)
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
        o.errors << Shapes::ShapeRef.new(shape: RegistryNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedCommandException)
      end)
    end

  end
end
