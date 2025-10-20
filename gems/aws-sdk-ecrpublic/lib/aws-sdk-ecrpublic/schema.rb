# frozen_string_literal: true

# This is generated code!

module Aws::ECRPUBLIC
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AboutText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecrpublic#AboutText", name: "AboutText", traits: {"smithy.api#length" => {"min" => 0, "max" => 25600}})
    Architecture = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecrpublic#Architecture", name: "Architecture", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ArchitectureList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecrpublic#ArchitectureList", name: "ArchitectureList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecrpublic#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    AuthorizationData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#AuthorizationData", name: "AuthorizationData")
    Base64 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecrpublic#Base64", name: "Base64", traits: {"smithy.api#pattern" => "^\\S+$"})
    BatchCheckLayerAvailabilityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#BatchCheckLayerAvailabilityRequest", name: "BatchCheckLayerAvailabilityRequest")
    BatchCheckLayerAvailabilityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#BatchCheckLayerAvailabilityResponse", name: "BatchCheckLayerAvailabilityResponse")
    BatchDeleteImageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#BatchDeleteImageRequest", name: "BatchDeleteImageRequest")
    BatchDeleteImageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#BatchDeleteImageResponse", name: "BatchDeleteImageResponse")
    BatchedOperationLayerDigest = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecrpublic#BatchedOperationLayerDigest", name: "BatchedOperationLayerDigest", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    BatchedOperationLayerDigestList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecrpublic#BatchedOperationLayerDigestList", name: "BatchedOperationLayerDigestList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    CompleteLayerUploadRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#CompleteLayerUploadRequest", name: "CompleteLayerUploadRequest")
    CompleteLayerUploadResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#CompleteLayerUploadResponse", name: "CompleteLayerUploadResponse")
    CreateRepositoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#CreateRepositoryRequest", name: "CreateRepositoryRequest")
    CreateRepositoryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#CreateRepositoryResponse", name: "CreateRepositoryResponse")
    CreationTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.ecrpublic#CreationTimestamp", name: "CreationTimestamp")
    DefaultRegistryAliasFlag = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.ecrpublic#DefaultRegistryAliasFlag", name: "DefaultRegistryAliasFlag", traits: {"smithy.api#default" => false})
    DeleteRepositoryPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#DeleteRepositoryPolicyRequest", name: "DeleteRepositoryPolicyRequest")
    DeleteRepositoryPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#DeleteRepositoryPolicyResponse", name: "DeleteRepositoryPolicyResponse")
    DeleteRepositoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#DeleteRepositoryRequest", name: "DeleteRepositoryRequest")
    DeleteRepositoryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#DeleteRepositoryResponse", name: "DeleteRepositoryResponse")
    DescribeImageTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#DescribeImageTagsRequest", name: "DescribeImageTagsRequest")
    DescribeImageTagsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#DescribeImageTagsResponse", name: "DescribeImageTagsResponse")
    DescribeImagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#DescribeImagesRequest", name: "DescribeImagesRequest")
    DescribeImagesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#DescribeImagesResponse", name: "DescribeImagesResponse")
    DescribeRegistriesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#DescribeRegistriesRequest", name: "DescribeRegistriesRequest")
    DescribeRegistriesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#DescribeRegistriesResponse", name: "DescribeRegistriesResponse")
    DescribeRepositoriesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#DescribeRepositoriesRequest", name: "DescribeRepositoriesRequest")
    DescribeRepositoriesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#DescribeRepositoriesResponse", name: "DescribeRepositoriesResponse")
    EmptyUploadException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#EmptyUploadException", name: "EmptyUploadException", traits: {"smithy.api#error" => "client"})
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecrpublic#ExceptionMessage", name: "ExceptionMessage")
    ExpirationTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.ecrpublic#ExpirationTimestamp", name: "ExpirationTimestamp")
    ForceFlag = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.ecrpublic#ForceFlag", name: "ForceFlag", traits: {"smithy.api#default" => false})
    GetAuthorizationTokenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#GetAuthorizationTokenRequest", name: "GetAuthorizationTokenRequest")
    GetAuthorizationTokenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#GetAuthorizationTokenResponse", name: "GetAuthorizationTokenResponse")
    GetRegistryCatalogDataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#GetRegistryCatalogDataRequest", name: "GetRegistryCatalogDataRequest")
    GetRegistryCatalogDataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#GetRegistryCatalogDataResponse", name: "GetRegistryCatalogDataResponse")
    GetRepositoryCatalogDataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#GetRepositoryCatalogDataRequest", name: "GetRepositoryCatalogDataRequest")
    GetRepositoryCatalogDataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#GetRepositoryCatalogDataResponse", name: "GetRepositoryCatalogDataResponse")
    GetRepositoryPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#GetRepositoryPolicyRequest", name: "GetRepositoryPolicyRequest")
    GetRepositoryPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#GetRepositoryPolicyResponse", name: "GetRepositoryPolicyResponse")
    Image = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#Image", name: "Image")
    ImageAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#ImageAlreadyExistsException", name: "ImageAlreadyExistsException", traits: {"smithy.api#error" => "client"})
    ImageDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#ImageDetail", name: "ImageDetail")
    ImageDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecrpublic#ImageDetailList", name: "ImageDetailList")
    ImageDigest = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecrpublic#ImageDigest", name: "ImageDigest")
    ImageDigestDoesNotMatchException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#ImageDigestDoesNotMatchException", name: "ImageDigestDoesNotMatchException", traits: {"smithy.api#error" => "client"})
    ImageFailure = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#ImageFailure", name: "ImageFailure")
    ImageFailureCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecrpublic#ImageFailureCode", name: "ImageFailureCode")
    ImageFailureList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecrpublic#ImageFailureList", name: "ImageFailureList")
    ImageFailureReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecrpublic#ImageFailureReason", name: "ImageFailureReason")
    ImageIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#ImageIdentifier", name: "ImageIdentifier")
    ImageIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecrpublic#ImageIdentifierList", name: "ImageIdentifierList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ImageManifest = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecrpublic#ImageManifest", name: "ImageManifest", traits: {"smithy.api#length" => {"min" => 1, "max" => 4194304}})
    ImageNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#ImageNotFoundException", name: "ImageNotFoundException", traits: {"smithy.api#error" => "client"})
    ImageSizeInBytes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ecrpublic#ImageSizeInBytes", name: "ImageSizeInBytes")
    ImageTag = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecrpublic#ImageTag", name: "ImageTag", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    ImageTagAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#ImageTagAlreadyExistsException", name: "ImageTagAlreadyExistsException", traits: {"smithy.api#error" => "client"})
    ImageTagDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#ImageTagDetail", name: "ImageTagDetail")
    ImageTagDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecrpublic#ImageTagDetailList", name: "ImageTagDetailList")
    ImageTagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecrpublic#ImageTagList", name: "ImageTagList")
    InitiateLayerUploadRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#InitiateLayerUploadRequest", name: "InitiateLayerUploadRequest")
    InitiateLayerUploadResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#InitiateLayerUploadResponse", name: "InitiateLayerUploadResponse")
    InvalidLayerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#InvalidLayerException", name: "InvalidLayerException", traits: {"smithy.api#error" => "client"})
    InvalidLayerPartException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#InvalidLayerPartException", name: "InvalidLayerPartException", traits: {"smithy.api#error" => "client"})
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#InvalidParameterException", name: "InvalidParameterException", traits: {"smithy.api#error" => "client"})
    InvalidTagParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#InvalidTagParameterException", name: "InvalidTagParameterException", traits: {"smithy.api#error" => "client"})
    Layer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#Layer", name: "Layer")
    LayerAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#LayerAlreadyExistsException", name: "LayerAlreadyExistsException", traits: {"smithy.api#error" => "client"})
    LayerAvailability = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecrpublic#LayerAvailability", name: "LayerAvailability")
    LayerDigest = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecrpublic#LayerDigest", name: "LayerDigest", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9-_+.]+:[a-fA-F0-9]+$"})
    LayerDigestList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecrpublic#LayerDigestList", name: "LayerDigestList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    LayerFailure = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#LayerFailure", name: "LayerFailure")
    LayerFailureCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecrpublic#LayerFailureCode", name: "LayerFailureCode")
    LayerFailureList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecrpublic#LayerFailureList", name: "LayerFailureList")
    LayerFailureReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecrpublic#LayerFailureReason", name: "LayerFailureReason")
    LayerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecrpublic#LayerList", name: "LayerList")
    LayerPartBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.ecrpublic#LayerPartBlob", name: "LayerPartBlob", traits: {"smithy.api#length" => {"min" => 0, "max" => 20971520}})
    LayerPartTooSmallException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#LayerPartTooSmallException", name: "LayerPartTooSmallException", traits: {"smithy.api#error" => "client"})
    LayerSizeInBytes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ecrpublic#LayerSizeInBytes", name: "LayerSizeInBytes")
    LayersNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#LayersNotFoundException", name: "LayersNotFoundException", traits: {"smithy.api#error" => "client"})
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client"})
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    LogoImageBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.ecrpublic#LogoImageBlob", name: "LogoImageBlob", traits: {"smithy.api#length" => {"min" => 0, "max" => 512000}})
    MarketplaceCertified = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.ecrpublic#MarketplaceCertified", name: "MarketplaceCertified")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ecrpublic#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MediaType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecrpublic#MediaType", name: "MediaType")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecrpublic#NextToken", name: "NextToken")
    OperatingSystem = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecrpublic#OperatingSystem", name: "OperatingSystem", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    OperatingSystemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecrpublic#OperatingSystemList", name: "OperatingSystemList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    PartSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ecrpublic#PartSize", name: "PartSize", traits: {"smithy.api#range" => {"min" => 0}})
    PrimaryRegistryAliasFlag = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.ecrpublic#PrimaryRegistryAliasFlag", name: "PrimaryRegistryAliasFlag", traits: {"smithy.api#default" => false})
    PushTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.ecrpublic#PushTimestamp", name: "PushTimestamp")
    PutImageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#PutImageRequest", name: "PutImageRequest")
    PutImageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#PutImageResponse", name: "PutImageResponse")
    PutRegistryCatalogDataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#PutRegistryCatalogDataRequest", name: "PutRegistryCatalogDataRequest")
    PutRegistryCatalogDataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#PutRegistryCatalogDataResponse", name: "PutRegistryCatalogDataResponse")
    PutRepositoryCatalogDataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#PutRepositoryCatalogDataRequest", name: "PutRepositoryCatalogDataRequest")
    PutRepositoryCatalogDataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#PutRepositoryCatalogDataResponse", name: "PutRepositoryCatalogDataResponse")
    ReferencedImageDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#ReferencedImageDetail", name: "ReferencedImageDetail")
    ReferencedImagesNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#ReferencedImagesNotFoundException", name: "ReferencedImagesNotFoundException", traits: {"smithy.api#error" => "client"})
    Registry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#Registry", name: "Registry")
    RegistryAlias = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#RegistryAlias", name: "RegistryAlias")
    RegistryAliasList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecrpublic#RegistryAliasList", name: "RegistryAliasList")
    RegistryAliasName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecrpublic#RegistryAliasName", name: "RegistryAliasName", traits: {"smithy.api#length" => {"min" => 2, "max" => 50}, "smithy.api#pattern" => "^[a-z][a-z0-9]+(?:[._-][a-z0-9]+)*$"})
    RegistryAliasStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecrpublic#RegistryAliasStatus", name: "RegistryAliasStatus")
    RegistryCatalogData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#RegistryCatalogData", name: "RegistryCatalogData")
    RegistryDisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecrpublic#RegistryDisplayName", name: "RegistryDisplayName", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    RegistryId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecrpublic#RegistryId", name: "RegistryId", traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    RegistryIdOrAlias = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecrpublic#RegistryIdOrAlias", name: "RegistryIdOrAlias", traits: {"smithy.api#length" => {"min" => 2, "max" => 50}})
    RegistryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecrpublic#RegistryList", name: "RegistryList")
    RegistryNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#RegistryNotFoundException", name: "RegistryNotFoundException", traits: {"smithy.api#error" => "client"})
    RegistryVerified = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.ecrpublic#RegistryVerified", name: "RegistryVerified")
    Repository = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#Repository", name: "Repository")
    RepositoryAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#RepositoryAlreadyExistsException", name: "RepositoryAlreadyExistsException", traits: {"smithy.api#error" => "client"})
    RepositoryCatalogData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#RepositoryCatalogData", name: "RepositoryCatalogData")
    RepositoryCatalogDataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#RepositoryCatalogDataInput", name: "RepositoryCatalogDataInput")
    RepositoryCatalogDataNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#RepositoryCatalogDataNotFoundException", name: "RepositoryCatalogDataNotFoundException", traits: {"smithy.api#error" => "client"})
    RepositoryDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecrpublic#RepositoryDescription", name: "RepositoryDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    RepositoryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecrpublic#RepositoryList", name: "RepositoryList")
    RepositoryName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecrpublic#RepositoryName", name: "RepositoryName", traits: {"smithy.api#length" => {"min" => 2, "max" => 205}, "smithy.api#pattern" => "^(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*$"})
    RepositoryNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecrpublic#RepositoryNameList", name: "RepositoryNameList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    RepositoryNotEmptyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#RepositoryNotEmptyException", name: "RepositoryNotEmptyException", traits: {"smithy.api#error" => "client"})
    RepositoryNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#RepositoryNotFoundException", name: "RepositoryNotFoundException", traits: {"smithy.api#error" => "client"})
    RepositoryPolicyNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#RepositoryPolicyNotFoundException", name: "RepositoryPolicyNotFoundException", traits: {"smithy.api#error" => "client"})
    RepositoryPolicyText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecrpublic#RepositoryPolicyText", name: "RepositoryPolicyText", traits: {"smithy.api#length" => {"min" => 0, "max" => 10240}})
    ResourceUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecrpublic#ResourceUrl", name: "ResourceUrl", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    ServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#ServerException", name: "ServerException", traits: {"smithy.api#error" => "server"})
    SetRepositoryPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#SetRepositoryPolicyRequest", name: "SetRepositoryPolicyRequest")
    SetRepositoryPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#SetRepositoryPolicyResponse", name: "SetRepositoryPolicyResponse")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecrpublic#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecrpublic#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecrpublic#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecrpublic#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#TooManyTagsException", name: "TooManyTagsException", traits: {"smithy.api#error" => "client"})
    UnsupportedCommandException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#UnsupportedCommandException", name: "UnsupportedCommandException", traits: {"smithy.api#error" => "client"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#UntagResourceResponse", name: "UntagResourceResponse")
    UploadId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecrpublic#UploadId", name: "UploadId", traits: {"smithy.api#pattern" => "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"})
    UploadLayerPartRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#UploadLayerPartRequest", name: "UploadLayerPartRequest")
    UploadLayerPartResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#UploadLayerPartResponse", name: "UploadLayerPartResponse")
    UploadNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecrpublic#UploadNotFoundException", name: "UploadNotFoundException", traits: {"smithy.api#error" => "client"})
    Url = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecrpublic#Url", name: "Url")
    UsageText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecrpublic#UsageText", name: "UsageText", traits: {"smithy.api#length" => {"min" => 0, "max" => 25600}})

    ArchitectureList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Architecture)
    AuthorizationData.add_member(:authorization_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Base64, location_name: "authorizationToken"))
    AuthorizationData.add_member(:expires_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpirationTimestamp, location_name: "expiresAt"))
    AuthorizationData.type = Types::AuthorizationData
    BatchCheckLayerAvailabilityRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryIdOrAlias, location_name: "registryId"))
    BatchCheckLayerAvailabilityRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName", traits: {"smithy.api#required" => {}}))
    BatchCheckLayerAvailabilityRequest.add_member(:layer_digests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchedOperationLayerDigestList, location_name: "layerDigests", traits: {"smithy.api#required" => {}}))
    BatchCheckLayerAvailabilityRequest.type = Types::BatchCheckLayerAvailabilityRequest
    BatchCheckLayerAvailabilityResponse.add_member(:layers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayerList, location_name: "layers"))
    BatchCheckLayerAvailabilityResponse.add_member(:failures, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayerFailureList, location_name: "failures"))
    BatchCheckLayerAvailabilityResponse.type = Types::BatchCheckLayerAvailabilityResponse
    BatchDeleteImageRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryIdOrAlias, location_name: "registryId"))
    BatchDeleteImageRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName", traits: {"smithy.api#required" => {}}))
    BatchDeleteImageRequest.add_member(:image_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageIdentifierList, location_name: "imageIds", traits: {"smithy.api#required" => {}}))
    BatchDeleteImageRequest.type = Types::BatchDeleteImageRequest
    BatchDeleteImageResponse.add_member(:image_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageIdentifierList, location_name: "imageIds"))
    BatchDeleteImageResponse.add_member(:failures, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageFailureList, location_name: "failures"))
    BatchDeleteImageResponse.type = Types::BatchDeleteImageResponse
    BatchedOperationLayerDigestList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchedOperationLayerDigest)
    CompleteLayerUploadRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryIdOrAlias, location_name: "registryId"))
    CompleteLayerUploadRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName", traits: {"smithy.api#required" => {}}))
    CompleteLayerUploadRequest.add_member(:upload_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: "uploadId", traits: {"smithy.api#required" => {}}))
    CompleteLayerUploadRequest.add_member(:layer_digests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayerDigestList, location_name: "layerDigests", traits: {"smithy.api#required" => {}}))
    CompleteLayerUploadRequest.type = Types::CompleteLayerUploadRequest
    CompleteLayerUploadResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    CompleteLayerUploadResponse.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    CompleteLayerUploadResponse.add_member(:upload_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: "uploadId"))
    CompleteLayerUploadResponse.add_member(:layer_digest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayerDigest, location_name: "layerDigest"))
    CompleteLayerUploadResponse.type = Types::CompleteLayerUploadResponse
    CreateRepositoryRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName", traits: {"smithy.api#required" => {}}))
    CreateRepositoryRequest.add_member(:catalog_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryCatalogDataInput, location_name: "catalogData"))
    CreateRepositoryRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateRepositoryRequest.type = Types::CreateRepositoryRequest
    CreateRepositoryResponse.add_member(:repository, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Repository, location_name: "repository"))
    CreateRepositoryResponse.add_member(:catalog_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryCatalogData, location_name: "catalogData"))
    CreateRepositoryResponse.type = Types::CreateRepositoryResponse
    DeleteRepositoryPolicyRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    DeleteRepositoryPolicyRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName", traits: {"smithy.api#required" => {}}))
    DeleteRepositoryPolicyRequest.type = Types::DeleteRepositoryPolicyRequest
    DeleteRepositoryPolicyResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    DeleteRepositoryPolicyResponse.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    DeleteRepositoryPolicyResponse.add_member(:policy_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryPolicyText, location_name: "policyText"))
    DeleteRepositoryPolicyResponse.type = Types::DeleteRepositoryPolicyResponse
    DeleteRepositoryRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    DeleteRepositoryRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName", traits: {"smithy.api#required" => {}}))
    DeleteRepositoryRequest.add_member(:force, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForceFlag, location_name: "force", traits: {"smithy.api#default" => false}))
    DeleteRepositoryRequest.type = Types::DeleteRepositoryRequest
    DeleteRepositoryResponse.add_member(:repository, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Repository, location_name: "repository"))
    DeleteRepositoryResponse.type = Types::DeleteRepositoryResponse
    DescribeImageTagsRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    DescribeImageTagsRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName", traits: {"smithy.api#required" => {}}))
    DescribeImageTagsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeImageTagsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    DescribeImageTagsRequest.type = Types::DescribeImageTagsRequest
    DescribeImageTagsResponse.add_member(:image_tag_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagDetailList, location_name: "imageTagDetails"))
    DescribeImageTagsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeImageTagsResponse.type = Types::DescribeImageTagsResponse
    DescribeImagesRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    DescribeImagesRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName", traits: {"smithy.api#required" => {}}))
    DescribeImagesRequest.add_member(:image_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageIdentifierList, location_name: "imageIds"))
    DescribeImagesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeImagesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    DescribeImagesRequest.type = Types::DescribeImagesRequest
    DescribeImagesResponse.add_member(:image_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageDetailList, location_name: "imageDetails"))
    DescribeImagesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeImagesResponse.type = Types::DescribeImagesResponse
    DescribeRegistriesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeRegistriesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    DescribeRegistriesRequest.type = Types::DescribeRegistriesRequest
    DescribeRegistriesResponse.add_member(:registries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryList, location_name: "registries", traits: {"smithy.api#required" => {}}))
    DescribeRegistriesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeRegistriesResponse.type = Types::DescribeRegistriesResponse
    DescribeRepositoriesRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    DescribeRepositoriesRequest.add_member(:repository_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameList, location_name: "repositoryNames"))
    DescribeRepositoriesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeRepositoriesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    DescribeRepositoriesRequest.type = Types::DescribeRepositoriesRequest
    DescribeRepositoriesResponse.add_member(:repositories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryList, location_name: "repositories"))
    DescribeRepositoriesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeRepositoriesResponse.type = Types::DescribeRepositoriesResponse
    EmptyUploadException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    EmptyUploadException.type = Types::EmptyUploadException
    GetAuthorizationTokenRequest.type = Types::GetAuthorizationTokenRequest
    GetAuthorizationTokenResponse.add_member(:authorization_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationData, location_name: "authorizationData"))
    GetAuthorizationTokenResponse.type = Types::GetAuthorizationTokenResponse
    GetRegistryCatalogDataRequest.type = Types::GetRegistryCatalogDataRequest
    GetRegistryCatalogDataResponse.add_member(:registry_catalog_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryCatalogData, location_name: "registryCatalogData", traits: {"smithy.api#required" => {}}))
    GetRegistryCatalogDataResponse.type = Types::GetRegistryCatalogDataResponse
    GetRepositoryCatalogDataRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    GetRepositoryCatalogDataRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName", traits: {"smithy.api#required" => {}}))
    GetRepositoryCatalogDataRequest.type = Types::GetRepositoryCatalogDataRequest
    GetRepositoryCatalogDataResponse.add_member(:catalog_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryCatalogData, location_name: "catalogData"))
    GetRepositoryCatalogDataResponse.type = Types::GetRepositoryCatalogDataResponse
    GetRepositoryPolicyRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    GetRepositoryPolicyRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName", traits: {"smithy.api#required" => {}}))
    GetRepositoryPolicyRequest.type = Types::GetRepositoryPolicyRequest
    GetRepositoryPolicyResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    GetRepositoryPolicyResponse.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    GetRepositoryPolicyResponse.add_member(:policy_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryPolicyText, location_name: "policyText"))
    GetRepositoryPolicyResponse.type = Types::GetRepositoryPolicyResponse
    Image.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryIdOrAlias, location_name: "registryId"))
    Image.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    Image.add_member(:image_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageIdentifier, location_name: "imageId"))
    Image.add_member(:image_manifest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageManifest, location_name: "imageManifest"))
    Image.add_member(:image_manifest_media_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaType, location_name: "imageManifestMediaType"))
    Image.type = Types::Image
    ImageAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ImageAlreadyExistsException.type = Types::ImageAlreadyExistsException
    ImageDetail.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    ImageDetail.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    ImageDetail.add_member(:image_digest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageDigest, location_name: "imageDigest"))
    ImageDetail.add_member(:image_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagList, location_name: "imageTags"))
    ImageDetail.add_member(:image_size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSizeInBytes, location_name: "imageSizeInBytes"))
    ImageDetail.add_member(:image_pushed_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PushTimestamp, location_name: "imagePushedAt"))
    ImageDetail.add_member(:image_manifest_media_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaType, location_name: "imageManifestMediaType"))
    ImageDetail.add_member(:artifact_media_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaType, location_name: "artifactMediaType"))
    ImageDetail.type = Types::ImageDetail
    ImageDetailList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageDetail)
    ImageDigestDoesNotMatchException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ImageDigestDoesNotMatchException.type = Types::ImageDigestDoesNotMatchException
    ImageFailure.add_member(:image_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageIdentifier, location_name: "imageId"))
    ImageFailure.add_member(:failure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageFailureCode, location_name: "failureCode"))
    ImageFailure.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageFailureReason, location_name: "failureReason"))
    ImageFailure.type = Types::ImageFailure
    ImageFailureCode.add_member(:invalid_image_digest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "InvalidImageDigest", traits: {"smithy.api#enumValue" => "InvalidImageDigest"}))
    ImageFailureCode.add_member(:invalid_image_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "InvalidImageTag", traits: {"smithy.api#enumValue" => "InvalidImageTag"}))
    ImageFailureCode.add_member(:image_tag_does_not_match_digest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ImageTagDoesNotMatchDigest", traits: {"smithy.api#enumValue" => "ImageTagDoesNotMatchDigest"}))
    ImageFailureCode.add_member(:image_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ImageNotFound", traits: {"smithy.api#enumValue" => "ImageNotFound"}))
    ImageFailureCode.add_member(:missing_digest_and_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MissingDigestAndTag", traits: {"smithy.api#enumValue" => "MissingDigestAndTag"}))
    ImageFailureCode.add_member(:image_referenced_by_manifest_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ImageReferencedByManifestList", traits: {"smithy.api#enumValue" => "ImageReferencedByManifestList"}))
    ImageFailureCode.add_member(:kms_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KmsError", traits: {"smithy.api#enumValue" => "KmsError"}))
    ImageFailureList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageFailure)
    ImageIdentifier.add_member(:image_digest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageDigest, location_name: "imageDigest"))
    ImageIdentifier.add_member(:image_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTag, location_name: "imageTag"))
    ImageIdentifier.type = Types::ImageIdentifier
    ImageIdentifierList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageIdentifier)
    ImageNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ImageNotFoundException.type = Types::ImageNotFoundException
    ImageTagAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ImageTagAlreadyExistsException.type = Types::ImageTagAlreadyExistsException
    ImageTagDetail.add_member(:image_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTag, location_name: "imageTag"))
    ImageTagDetail.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTimestamp, location_name: "createdAt"))
    ImageTagDetail.add_member(:image_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReferencedImageDetail, location_name: "imageDetail"))
    ImageTagDetail.type = Types::ImageTagDetail
    ImageTagDetailList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagDetail)
    ImageTagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTag)
    InitiateLayerUploadRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryIdOrAlias, location_name: "registryId"))
    InitiateLayerUploadRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName", traits: {"smithy.api#required" => {}}))
    InitiateLayerUploadRequest.type = Types::InitiateLayerUploadRequest
    InitiateLayerUploadResponse.add_member(:upload_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: "uploadId"))
    InitiateLayerUploadResponse.add_member(:part_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartSize, location_name: "partSize"))
    InitiateLayerUploadResponse.type = Types::InitiateLayerUploadResponse
    InvalidLayerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    InvalidLayerException.type = Types::InvalidLayerException
    InvalidLayerPartException.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    InvalidLayerPartException.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    InvalidLayerPartException.add_member(:upload_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: "uploadId"))
    InvalidLayerPartException.add_member(:last_valid_byte_received, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartSize, location_name: "lastValidByteReceived"))
    InvalidLayerPartException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    InvalidLayerPartException.type = Types::InvalidLayerPartException
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    InvalidParameterException.type = Types::InvalidParameterException
    InvalidTagParameterException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    InvalidTagParameterException.type = Types::InvalidTagParameterException
    Layer.add_member(:layer_digest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayerDigest, location_name: "layerDigest"))
    Layer.add_member(:layer_availability, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayerAvailability, location_name: "layerAvailability"))
    Layer.add_member(:layer_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayerSizeInBytes, location_name: "layerSize"))
    Layer.add_member(:media_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaType, location_name: "mediaType"))
    Layer.type = Types::Layer
    LayerAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    LayerAlreadyExistsException.type = Types::LayerAlreadyExistsException
    LayerAvailability.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    LayerAvailability.add_member(:unavailable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNAVAILABLE", traits: {"smithy.api#enumValue" => "UNAVAILABLE"}))
    LayerDigestList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayerDigest)
    LayerFailure.add_member(:layer_digest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchedOperationLayerDigest, location_name: "layerDigest"))
    LayerFailure.add_member(:failure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayerFailureCode, location_name: "failureCode"))
    LayerFailure.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayerFailureReason, location_name: "failureReason"))
    LayerFailure.type = Types::LayerFailure
    LayerFailureCode.add_member(:invalid_layer_digest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "InvalidLayerDigest", traits: {"smithy.api#enumValue" => "InvalidLayerDigest"}))
    LayerFailureCode.add_member(:missing_layer_digest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MissingLayerDigest", traits: {"smithy.api#enumValue" => "MissingLayerDigest"}))
    LayerFailureList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayerFailure)
    LayerList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Layer)
    LayerPartTooSmallException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    LayerPartTooSmallException.type = Types::LayerPartTooSmallException
    LayersNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    LayersNotFoundException.type = Types::LayersNotFoundException
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    OperatingSystemList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperatingSystem)
    PutImageRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryIdOrAlias, location_name: "registryId"))
    PutImageRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName", traits: {"smithy.api#required" => {}}))
    PutImageRequest.add_member(:image_manifest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageManifest, location_name: "imageManifest", traits: {"smithy.api#required" => {}}))
    PutImageRequest.add_member(:image_manifest_media_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaType, location_name: "imageManifestMediaType"))
    PutImageRequest.add_member(:image_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTag, location_name: "imageTag"))
    PutImageRequest.add_member(:image_digest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageDigest, location_name: "imageDigest"))
    PutImageRequest.type = Types::PutImageRequest
    PutImageResponse.add_member(:image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Image, location_name: "image"))
    PutImageResponse.type = Types::PutImageResponse
    PutRegistryCatalogDataRequest.add_member(:display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryDisplayName, location_name: "displayName"))
    PutRegistryCatalogDataRequest.type = Types::PutRegistryCatalogDataRequest
    PutRegistryCatalogDataResponse.add_member(:registry_catalog_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryCatalogData, location_name: "registryCatalogData", traits: {"smithy.api#required" => {}}))
    PutRegistryCatalogDataResponse.type = Types::PutRegistryCatalogDataResponse
    PutRepositoryCatalogDataRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    PutRepositoryCatalogDataRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName", traits: {"smithy.api#required" => {}}))
    PutRepositoryCatalogDataRequest.add_member(:catalog_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryCatalogDataInput, location_name: "catalogData", traits: {"smithy.api#required" => {}}))
    PutRepositoryCatalogDataRequest.type = Types::PutRepositoryCatalogDataRequest
    PutRepositoryCatalogDataResponse.add_member(:catalog_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryCatalogData, location_name: "catalogData"))
    PutRepositoryCatalogDataResponse.type = Types::PutRepositoryCatalogDataResponse
    ReferencedImageDetail.add_member(:image_digest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageDigest, location_name: "imageDigest"))
    ReferencedImageDetail.add_member(:image_size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSizeInBytes, location_name: "imageSizeInBytes"))
    ReferencedImageDetail.add_member(:image_pushed_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PushTimestamp, location_name: "imagePushedAt"))
    ReferencedImageDetail.add_member(:image_manifest_media_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaType, location_name: "imageManifestMediaType"))
    ReferencedImageDetail.add_member(:artifact_media_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaType, location_name: "artifactMediaType"))
    ReferencedImageDetail.type = Types::ReferencedImageDetail
    ReferencedImagesNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ReferencedImagesNotFoundException.type = Types::ReferencedImagesNotFoundException
    Registry.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId", traits: {"smithy.api#required" => {}}))
    Registry.add_member(:registry_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "registryArn", traits: {"smithy.api#required" => {}}))
    Registry.add_member(:registry_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: "registryUri", traits: {"smithy.api#required" => {}}))
    Registry.add_member(:verified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryVerified, location_name: "verified", traits: {"smithy.api#required" => {}}))
    Registry.add_member(:aliases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryAliasList, location_name: "aliases", traits: {"smithy.api#required" => {}}))
    Registry.type = Types::Registry
    RegistryAlias.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryAliasName, location_name: "name", traits: {"smithy.api#required" => {}}))
    RegistryAlias.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryAliasStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    RegistryAlias.add_member(:primary_registry_alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrimaryRegistryAliasFlag, location_name: "primaryRegistryAlias", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    RegistryAlias.add_member(:default_registry_alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultRegistryAliasFlag, location_name: "defaultRegistryAlias", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    RegistryAlias.type = Types::RegistryAlias
    RegistryAliasList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryAlias)
    RegistryAliasStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    RegistryAliasStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    RegistryAliasStatus.add_member(:rejected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REJECTED", traits: {"smithy.api#enumValue" => "REJECTED"}))
    RegistryCatalogData.add_member(:display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryDisplayName, location_name: "displayName"))
    RegistryCatalogData.type = Types::RegistryCatalogData
    RegistryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Registry)
    RegistryNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    RegistryNotFoundException.type = Types::RegistryNotFoundException
    Repository.add_member(:repository_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "repositoryArn"))
    Repository.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    Repository.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    Repository.add_member(:repository_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: "repositoryUri"))
    Repository.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTimestamp, location_name: "createdAt"))
    Repository.type = Types::Repository
    RepositoryAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    RepositoryAlreadyExistsException.type = Types::RepositoryAlreadyExistsException
    RepositoryCatalogData.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDescription, location_name: "description"))
    RepositoryCatalogData.add_member(:architectures, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArchitectureList, location_name: "architectures"))
    RepositoryCatalogData.add_member(:operating_systems, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperatingSystemList, location_name: "operatingSystems"))
    RepositoryCatalogData.add_member(:logo_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUrl, location_name: "logoUrl"))
    RepositoryCatalogData.add_member(:about_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AboutText, location_name: "aboutText"))
    RepositoryCatalogData.add_member(:usage_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageText, location_name: "usageText"))
    RepositoryCatalogData.add_member(:marketplace_certified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MarketplaceCertified, location_name: "marketplaceCertified"))
    RepositoryCatalogData.type = Types::RepositoryCatalogData
    RepositoryCatalogDataInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDescription, location_name: "description"))
    RepositoryCatalogDataInput.add_member(:architectures, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArchitectureList, location_name: "architectures"))
    RepositoryCatalogDataInput.add_member(:operating_systems, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperatingSystemList, location_name: "operatingSystems"))
    RepositoryCatalogDataInput.add_member(:logo_image_blob, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogoImageBlob, location_name: "logoImageBlob"))
    RepositoryCatalogDataInput.add_member(:about_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AboutText, location_name: "aboutText"))
    RepositoryCatalogDataInput.add_member(:usage_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageText, location_name: "usageText"))
    RepositoryCatalogDataInput.type = Types::RepositoryCatalogDataInput
    RepositoryCatalogDataNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    RepositoryCatalogDataNotFoundException.type = Types::RepositoryCatalogDataNotFoundException
    RepositoryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Repository)
    RepositoryNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName)
    RepositoryNotEmptyException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    RepositoryNotEmptyException.type = Types::RepositoryNotEmptyException
    RepositoryNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    RepositoryNotFoundException.type = Types::RepositoryNotFoundException
    RepositoryPolicyNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    RepositoryPolicyNotFoundException.type = Types::RepositoryPolicyNotFoundException
    ServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ServerException.type = Types::ServerException
    SetRepositoryPolicyRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    SetRepositoryPolicyRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName", traits: {"smithy.api#required" => {}}))
    SetRepositoryPolicyRequest.add_member(:policy_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryPolicyText, location_name: "policyText", traits: {"smithy.api#required" => {}}))
    SetRepositoryPolicyRequest.add_member(:force, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForceFlag, location_name: "force", traits: {"smithy.api#default" => false}))
    SetRepositoryPolicyRequest.type = Types::SetRepositoryPolicyRequest
    SetRepositoryPolicyResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    SetRepositoryPolicyResponse.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    SetRepositoryPolicyResponse.add_member(:policy_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryPolicyText, location_name: "policyText"))
    SetRepositoryPolicyResponse.type = Types::SetRepositoryPolicyResponse
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: "Key"))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    TooManyTagsException.type = Types::TooManyTagsException
    UnsupportedCommandException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    UnsupportedCommandException.type = Types::UnsupportedCommandException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: "tagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UploadLayerPartRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryIdOrAlias, location_name: "registryId"))
    UploadLayerPartRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName", traits: {"smithy.api#required" => {}}))
    UploadLayerPartRequest.add_member(:upload_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: "uploadId", traits: {"smithy.api#required" => {}}))
    UploadLayerPartRequest.add_member(:part_first_byte, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartSize, location_name: "partFirstByte", traits: {"smithy.api#required" => {}}))
    UploadLayerPartRequest.add_member(:part_last_byte, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartSize, location_name: "partLastByte", traits: {"smithy.api#required" => {}}))
    UploadLayerPartRequest.add_member(:layer_part_blob, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayerPartBlob, location_name: "layerPartBlob", traits: {"smithy.api#required" => {}}))
    UploadLayerPartRequest.type = Types::UploadLayerPartRequest
    UploadLayerPartResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    UploadLayerPartResponse.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    UploadLayerPartResponse.add_member(:upload_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: "uploadId"))
    UploadLayerPartResponse.add_member(:last_byte_received, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartSize, location_name: "lastByteReceived"))
    UploadLayerPartResponse.type = Types::UploadLayerPartResponse
    UploadNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    UploadNotFoundException.type = Types::UploadNotFoundException

    SpencerFrontendService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.ecrpublic#SpencerFrontendService"
      service.name = "SpencerFrontendService"
      service.version = "2020-10-30"
      service.traits = {"aws.api#service" => {"sdkId" => "ECR PUBLIC", "arnNamespace" => "ecr-public", "cloudFormationName" => "ECRPUBLIC", "cloudTrailEventSource" => "ecrpublic.amazonaws.com", "endpointPrefix" => "api.ecr-public"}, "aws.auth#sigv4" => {"name" => "ecr-public"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Elastic Container Registry Public", "smithy.api#xmlNamespace" => {"uri" => "http://ecr-public.amazonaws.com/doc/2020-12-02/"}}
      service.add_operation(:batch_check_layer_availability, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecrpublic#BatchCheckLayerAvailability"
        operation.name = "BatchCheckLayerAvailability"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCheckLayerAvailabilityRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCheckLayerAvailabilityResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedCommandException)
        operation.traits = {}
      end)
      service.add_operation(:batch_delete_image, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecrpublic#BatchDeleteImage"
        operation.name = "BatchDeleteImage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteImageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteImageResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedCommandException)
        operation.traits = {}
      end)
      service.add_operation(:complete_layer_upload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecrpublic#CompleteLayerUpload"
        operation.name = "CompleteLayerUpload"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompleteLayerUploadRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompleteLayerUploadResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyUploadException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLayerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayerAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayerPartTooSmallException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedCommandException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_repository, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecrpublic#CreateRepository"
        operation.name = "CreateRepository"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRepositoryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRepositoryResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedCommandException)
        operation.traits = {}
      end)
      service.add_operation(:delete_repository, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecrpublic#DeleteRepository"
        operation.name = "DeleteRepository"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRepositoryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRepositoryResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotEmptyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedCommandException)
        operation.traits = {}
      end)
      service.add_operation(:delete_repository_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecrpublic#DeleteRepositoryPolicy"
        operation.name = "DeleteRepositoryPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRepositoryPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRepositoryPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryPolicyNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedCommandException)
        operation.traits = {}
      end)
      service.add_operation(:describe_image_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecrpublic#DescribeImageTags"
        operation.name = "DescribeImageTags"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeImageTagsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeImageTagsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedCommandException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeImageTags.new
      end)
      service.add_operation(:describe_images, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecrpublic#DescribeImages"
        operation.name = "DescribeImages"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeImagesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeImagesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedCommandException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeImages.new
      end)
      service.add_operation(:describe_registries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecrpublic#DescribeRegistries"
        operation.name = "DescribeRegistries"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRegistriesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRegistriesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedCommandException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeRegistries.new
      end)
      service.add_operation(:describe_repositories, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecrpublic#DescribeRepositories"
        operation.name = "DescribeRepositories"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRepositoriesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRepositoriesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedCommandException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeRepositories.new
      end)
      service.add_operation(:get_authorization_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecrpublic#GetAuthorizationToken"
        operation.name = "GetAuthorizationToken"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAuthorizationTokenRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAuthorizationTokenResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedCommandException)
        operation.traits = {}
      end)
      service.add_operation(:get_registry_catalog_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecrpublic#GetRegistryCatalogData"
        operation.name = "GetRegistryCatalogData"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRegistryCatalogDataRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRegistryCatalogDataResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedCommandException)
        operation.traits = {}
      end)
      service.add_operation(:get_repository_catalog_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecrpublic#GetRepositoryCatalogData"
        operation.name = "GetRepositoryCatalogData"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRepositoryCatalogDataRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRepositoryCatalogDataResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryCatalogDataNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedCommandException)
        operation.traits = {}
      end)
      service.add_operation(:get_repository_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecrpublic#GetRepositoryPolicy"
        operation.name = "GetRepositoryPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRepositoryPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRepositoryPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryPolicyNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedCommandException)
        operation.traits = {}
      end)
      service.add_operation(:initiate_layer_upload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecrpublic#InitiateLayerUpload"
        operation.name = "InitiateLayerUpload"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InitiateLayerUploadRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InitiateLayerUploadResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedCommandException)
        operation.traits = {}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecrpublic#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedCommandException)
        operation.traits = {}
      end)
      service.add_operation(:put_image, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecrpublic#PutImage"
        operation.name = "PutImage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutImageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutImageResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageDigestDoesNotMatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayersNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReferencedImagesNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedCommandException)
        operation.traits = {}
      end)
      service.add_operation(:put_registry_catalog_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecrpublic#PutRegistryCatalogData"
        operation.name = "PutRegistryCatalogData"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutRegistryCatalogDataRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutRegistryCatalogDataResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedCommandException)
        operation.traits = {}
      end)
      service.add_operation(:put_repository_catalog_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecrpublic#PutRepositoryCatalogData"
        operation.name = "PutRepositoryCatalogData"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutRepositoryCatalogDataRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutRepositoryCatalogDataResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedCommandException)
        operation.traits = {}
      end)
      service.add_operation(:set_repository_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecrpublic#SetRepositoryPolicy"
        operation.name = "SetRepositoryPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetRepositoryPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetRepositoryPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedCommandException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecrpublic#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedCommandException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecrpublic#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedCommandException)
        operation.traits = {}
      end)
      service.add_operation(:upload_layer_part, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecrpublic#UploadLayerPart"
        operation.name = "UploadLayerPart"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadLayerPartRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadLayerPartResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLayerPartException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedCommandException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadNotFoundException)
        operation.traits = {}
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
