# frozen_string_literal: true

# This is generated code!

module Aws::ECR
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccountSettingName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#AccountSettingName", name: "AccountSettingName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    AccountSettingValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#AccountSettingValue", name: "AccountSettingValue")
    Arch = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#Arch", name: "Arch")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#Arn", name: "Arn")
    Attribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#Attribute", name: "Attribute")
    AttributeKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#AttributeKey", name: "AttributeKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    AttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#AttributeList", name: "AttributeList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    AttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#AttributeValue", name: "AttributeValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Author = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#Author", name: "Author")
    AuthorizationData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#AuthorizationData", name: "AuthorizationData")
    AuthorizationDataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#AuthorizationDataList", name: "AuthorizationDataList")
    AwsEcrContainerImageDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#AwsEcrContainerImageDetails", name: "AwsEcrContainerImageDetails")
    Base64 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#Base64", name: "Base64", traits: {"smithy.api#pattern" => "^\\S+$"})
    BaseScore = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.ecr#BaseScore", name: "BaseScore", traits: {"smithy.api#default" => 0})
    BatchCheckLayerAvailabilityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#BatchCheckLayerAvailabilityRequest", name: "BatchCheckLayerAvailabilityRequest")
    BatchCheckLayerAvailabilityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#BatchCheckLayerAvailabilityResponse", name: "BatchCheckLayerAvailabilityResponse")
    BatchDeleteImageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#BatchDeleteImageRequest", name: "BatchDeleteImageRequest")
    BatchDeleteImageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#BatchDeleteImageResponse", name: "BatchDeleteImageResponse")
    BatchGetImageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#BatchGetImageRequest", name: "BatchGetImageRequest")
    BatchGetImageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#BatchGetImageResponse", name: "BatchGetImageResponse")
    BatchGetRepositoryScanningConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#BatchGetRepositoryScanningConfigurationRequest", name: "BatchGetRepositoryScanningConfigurationRequest")
    BatchGetRepositoryScanningConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#BatchGetRepositoryScanningConfigurationResponse", name: "BatchGetRepositoryScanningConfigurationResponse")
    BatchedOperationLayerDigest = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#BatchedOperationLayerDigest", name: "BatchedOperationLayerDigest", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    BatchedOperationLayerDigestList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#BatchedOperationLayerDigestList", name: "BatchedOperationLayerDigestList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    CompleteLayerUploadRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#CompleteLayerUploadRequest", name: "CompleteLayerUploadRequest")
    CompleteLayerUploadResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#CompleteLayerUploadResponse", name: "CompleteLayerUploadResponse")
    CreatePullThroughCacheRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#CreatePullThroughCacheRuleRequest", name: "CreatePullThroughCacheRuleRequest")
    CreatePullThroughCacheRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#CreatePullThroughCacheRuleResponse", name: "CreatePullThroughCacheRuleResponse")
    CreateRepositoryCreationTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#CreateRepositoryCreationTemplateRequest", name: "CreateRepositoryCreationTemplateRequest")
    CreateRepositoryCreationTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#CreateRepositoryCreationTemplateResponse", name: "CreateRepositoryCreationTemplateResponse")
    CreateRepositoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#CreateRepositoryRequest", name: "CreateRepositoryRequest")
    CreateRepositoryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#CreateRepositoryResponse", name: "CreateRepositoryResponse")
    CreationTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.ecr#CreationTimestamp", name: "CreationTimestamp")
    CredentialArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#CredentialArn", name: "CredentialArn", traits: {"smithy.api#length" => {"min" => 50, "max" => 612}, "smithy.api#pattern" => "^arn:aws:secretsmanager:[a-zA-Z0-9-:]+:secret:ecr\\-pullthroughcache\\/[a-zA-Z0-9\\/_+=.@-]+$"})
    CustomRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#CustomRoleArn", name: "CustomRoleArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    CvssScore = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#CvssScore", name: "CvssScore")
    CvssScoreAdjustment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#CvssScoreAdjustment", name: "CvssScoreAdjustment")
    CvssScoreAdjustmentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#CvssScoreAdjustmentList", name: "CvssScoreAdjustmentList")
    CvssScoreDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#CvssScoreDetails", name: "CvssScoreDetails")
    CvssScoreList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#CvssScoreList", name: "CvssScoreList")
    Date = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.ecr#Date", name: "Date")
    DeleteLifecyclePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#DeleteLifecyclePolicyRequest", name: "DeleteLifecyclePolicyRequest")
    DeleteLifecyclePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#DeleteLifecyclePolicyResponse", name: "DeleteLifecyclePolicyResponse")
    DeletePullThroughCacheRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#DeletePullThroughCacheRuleRequest", name: "DeletePullThroughCacheRuleRequest")
    DeletePullThroughCacheRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#DeletePullThroughCacheRuleResponse", name: "DeletePullThroughCacheRuleResponse")
    DeleteRegistryPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#DeleteRegistryPolicyRequest", name: "DeleteRegistryPolicyRequest")
    DeleteRegistryPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#DeleteRegistryPolicyResponse", name: "DeleteRegistryPolicyResponse")
    DeleteRepositoryCreationTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#DeleteRepositoryCreationTemplateRequest", name: "DeleteRepositoryCreationTemplateRequest")
    DeleteRepositoryCreationTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#DeleteRepositoryCreationTemplateResponse", name: "DeleteRepositoryCreationTemplateResponse")
    DeleteRepositoryPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#DeleteRepositoryPolicyRequest", name: "DeleteRepositoryPolicyRequest")
    DeleteRepositoryPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#DeleteRepositoryPolicyResponse", name: "DeleteRepositoryPolicyResponse")
    DeleteRepositoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#DeleteRepositoryRequest", name: "DeleteRepositoryRequest")
    DeleteRepositoryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#DeleteRepositoryResponse", name: "DeleteRepositoryResponse")
    DescribeImageReplicationStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#DescribeImageReplicationStatusRequest", name: "DescribeImageReplicationStatusRequest")
    DescribeImageReplicationStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#DescribeImageReplicationStatusResponse", name: "DescribeImageReplicationStatusResponse")
    DescribeImageScanFindingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#DescribeImageScanFindingsRequest", name: "DescribeImageScanFindingsRequest")
    DescribeImageScanFindingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#DescribeImageScanFindingsResponse", name: "DescribeImageScanFindingsResponse")
    DescribeImagesFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#DescribeImagesFilter", name: "DescribeImagesFilter")
    DescribeImagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#DescribeImagesRequest", name: "DescribeImagesRequest")
    DescribeImagesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#DescribeImagesResponse", name: "DescribeImagesResponse")
    DescribePullThroughCacheRulesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#DescribePullThroughCacheRulesRequest", name: "DescribePullThroughCacheRulesRequest")
    DescribePullThroughCacheRulesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#DescribePullThroughCacheRulesResponse", name: "DescribePullThroughCacheRulesResponse")
    DescribeRegistryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#DescribeRegistryRequest", name: "DescribeRegistryRequest")
    DescribeRegistryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#DescribeRegistryResponse", name: "DescribeRegistryResponse")
    DescribeRepositoriesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#DescribeRepositoriesRequest", name: "DescribeRepositoriesRequest")
    DescribeRepositoriesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#DescribeRepositoriesResponse", name: "DescribeRepositoriesResponse")
    DescribeRepositoryCreationTemplatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#DescribeRepositoryCreationTemplatesRequest", name: "DescribeRepositoryCreationTemplatesRequest")
    DescribeRepositoryCreationTemplatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#DescribeRepositoryCreationTemplatesResponse", name: "DescribeRepositoryCreationTemplatesResponse")
    EmptyUploadException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#EmptyUploadException", name: "EmptyUploadException", traits: {"smithy.api#error" => "client"})
    EncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#EncryptionConfiguration", name: "EncryptionConfiguration")
    EncryptionConfigurationForRepositoryCreationTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#EncryptionConfigurationForRepositoryCreationTemplate", name: "EncryptionConfigurationForRepositoryCreationTemplate")
    EncryptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecr#EncryptionType", name: "EncryptionType")
    EnhancedImageScanFinding = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#EnhancedImageScanFinding", name: "EnhancedImageScanFinding")
    EnhancedImageScanFindingList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#EnhancedImageScanFindingList", name: "EnhancedImageScanFindingList")
    Epoch = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ecr#Epoch", name: "Epoch")
    EvaluationTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.ecr#EvaluationTimestamp", name: "EvaluationTimestamp")
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#ExceptionMessage", name: "ExceptionMessage")
    ExpirationTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.ecr#ExpirationTimestamp", name: "ExpirationTimestamp")
    ExploitAvailable = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#ExploitAvailable", name: "ExploitAvailable")
    FilePath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#FilePath", name: "FilePath")
    FindingArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#FindingArn", name: "FindingArn")
    FindingDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#FindingDescription", name: "FindingDescription")
    FindingName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#FindingName", name: "FindingName")
    FindingSeverity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecr#FindingSeverity", name: "FindingSeverity")
    FindingSeverityCounts = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ecr#FindingSeverityCounts", name: "FindingSeverityCounts")
    FixAvailable = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#FixAvailable", name: "FixAvailable")
    FixedInVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#FixedInVersion", name: "FixedInVersion")
    ForceFlag = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.ecr#ForceFlag", name: "ForceFlag", traits: {"smithy.api#default" => false})
    GetAccountSettingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#GetAccountSettingRequest", name: "GetAccountSettingRequest")
    GetAccountSettingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#GetAccountSettingResponse", name: "GetAccountSettingResponse")
    GetAuthorizationTokenRegistryIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#GetAuthorizationTokenRegistryIdList", name: "GetAuthorizationTokenRegistryIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    GetAuthorizationTokenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#GetAuthorizationTokenRequest", name: "GetAuthorizationTokenRequest")
    GetAuthorizationTokenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#GetAuthorizationTokenResponse", name: "GetAuthorizationTokenResponse")
    GetDownloadUrlForLayerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#GetDownloadUrlForLayerRequest", name: "GetDownloadUrlForLayerRequest")
    GetDownloadUrlForLayerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#GetDownloadUrlForLayerResponse", name: "GetDownloadUrlForLayerResponse")
    GetLifecyclePolicyPreviewRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#GetLifecyclePolicyPreviewRequest", name: "GetLifecyclePolicyPreviewRequest")
    GetLifecyclePolicyPreviewResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#GetLifecyclePolicyPreviewResponse", name: "GetLifecyclePolicyPreviewResponse")
    GetLifecyclePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#GetLifecyclePolicyRequest", name: "GetLifecyclePolicyRequest")
    GetLifecyclePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#GetLifecyclePolicyResponse", name: "GetLifecyclePolicyResponse")
    GetRegistryPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#GetRegistryPolicyRequest", name: "GetRegistryPolicyRequest")
    GetRegistryPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#GetRegistryPolicyResponse", name: "GetRegistryPolicyResponse")
    GetRegistryScanningConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#GetRegistryScanningConfigurationRequest", name: "GetRegistryScanningConfigurationRequest")
    GetRegistryScanningConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#GetRegistryScanningConfigurationResponse", name: "GetRegistryScanningConfigurationResponse")
    GetRepositoryPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#GetRepositoryPolicyRequest", name: "GetRepositoryPolicyRequest")
    GetRepositoryPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#GetRepositoryPolicyResponse", name: "GetRepositoryPolicyResponse")
    Image = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#Image", name: "Image")
    ImageActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecr#ImageActionType", name: "ImageActionType")
    ImageAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#ImageAlreadyExistsException", name: "ImageAlreadyExistsException", traits: {"smithy.api#error" => "client"})
    ImageCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ecr#ImageCount", name: "ImageCount", traits: {"smithy.api#range" => {"min" => 0}})
    ImageDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#ImageDetail", name: "ImageDetail")
    ImageDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#ImageDetailList", name: "ImageDetailList")
    ImageDigest = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#ImageDigest", name: "ImageDigest")
    ImageDigestDoesNotMatchException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#ImageDigestDoesNotMatchException", name: "ImageDigestDoesNotMatchException", traits: {"smithy.api#error" => "client"})
    ImageFailure = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#ImageFailure", name: "ImageFailure")
    ImageFailureCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecr#ImageFailureCode", name: "ImageFailureCode")
    ImageFailureList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#ImageFailureList", name: "ImageFailureList")
    ImageFailureReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#ImageFailureReason", name: "ImageFailureReason")
    ImageIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#ImageIdentifier", name: "ImageIdentifier")
    ImageIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#ImageIdentifierList", name: "ImageIdentifierList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ImageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#ImageList", name: "ImageList")
    ImageManifest = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#ImageManifest", name: "ImageManifest", traits: {"smithy.api#length" => {"min" => 1, "max" => 4194304}})
    ImageNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#ImageNotFoundException", name: "ImageNotFoundException", traits: {"smithy.api#error" => "client"})
    ImageReplicationStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#ImageReplicationStatus", name: "ImageReplicationStatus")
    ImageReplicationStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#ImageReplicationStatusList", name: "ImageReplicationStatusList")
    ImageScanFinding = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#ImageScanFinding", name: "ImageScanFinding")
    ImageScanFindingList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#ImageScanFindingList", name: "ImageScanFindingList")
    ImageScanFindings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#ImageScanFindings", name: "ImageScanFindings")
    ImageScanFindingsSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#ImageScanFindingsSummary", name: "ImageScanFindingsSummary")
    ImageScanStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#ImageScanStatus", name: "ImageScanStatus")
    ImageScanningConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#ImageScanningConfiguration", name: "ImageScanningConfiguration")
    ImageSizeInBytes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ecr#ImageSizeInBytes", name: "ImageSizeInBytes")
    ImageTag = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#ImageTag", name: "ImageTag", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    ImageTagAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#ImageTagAlreadyExistsException", name: "ImageTagAlreadyExistsException", traits: {"smithy.api#error" => "client"})
    ImageTagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#ImageTagList", name: "ImageTagList")
    ImageTagMutability = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecr#ImageTagMutability", name: "ImageTagMutability")
    ImageTagMutabilityExclusionFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#ImageTagMutabilityExclusionFilter", name: "ImageTagMutabilityExclusionFilter")
    ImageTagMutabilityExclusionFilterType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecr#ImageTagMutabilityExclusionFilterType", name: "ImageTagMutabilityExclusionFilterType")
    ImageTagMutabilityExclusionFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#ImageTagMutabilityExclusionFilterValue", name: "ImageTagMutabilityExclusionFilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[0-9a-zA-Z._*-]{1,128}$"})
    ImageTagMutabilityExclusionFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#ImageTagMutabilityExclusionFilters", name: "ImageTagMutabilityExclusionFilters", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ImageTagsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#ImageTagsList", name: "ImageTagsList")
    InUseCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ecr#InUseCount", name: "InUseCount", traits: {"smithy.api#range" => {"min" => 0}})
    InitiateLayerUploadRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#InitiateLayerUploadRequest", name: "InitiateLayerUploadRequest")
    InitiateLayerUploadResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#InitiateLayerUploadResponse", name: "InitiateLayerUploadResponse")
    InvalidLayerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#InvalidLayerException", name: "InvalidLayerException", traits: {"smithy.api#error" => "client"})
    InvalidLayerPartException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#InvalidLayerPartException", name: "InvalidLayerPartException", traits: {"smithy.api#error" => "client"})
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#InvalidParameterException", name: "InvalidParameterException", traits: {"smithy.api#error" => "client"})
    InvalidTagParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#InvalidTagParameterException", name: "InvalidTagParameterException", traits: {"smithy.api#error" => "client"})
    IsPTCRuleValid = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.ecr#IsPTCRuleValid", name: "IsPTCRuleValid", traits: {"smithy.api#default" => false})
    KmsError = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#KmsError", name: "KmsError")
    KmsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#KmsException", name: "KmsException", traits: {"smithy.api#error" => "client"})
    KmsKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#KmsKey", name: "KmsKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    KmsKeyForRepositoryCreationTemplate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#KmsKeyForRepositoryCreationTemplate", name: "KmsKeyForRepositoryCreationTemplate", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^$|arn:aws:kms:[a-z0-9-]+:[0-9]{12}:key\\/[a-z0-9-]+$"})
    Layer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#Layer", name: "Layer")
    LayerAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#LayerAlreadyExistsException", name: "LayerAlreadyExistsException", traits: {"smithy.api#error" => "client"})
    LayerAvailability = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecr#LayerAvailability", name: "LayerAvailability")
    LayerDigest = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#LayerDigest", name: "LayerDigest", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9-_+.]+:[a-fA-F0-9]+$"})
    LayerDigestList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#LayerDigestList", name: "LayerDigestList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    LayerFailure = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#LayerFailure", name: "LayerFailure")
    LayerFailureCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecr#LayerFailureCode", name: "LayerFailureCode")
    LayerFailureList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#LayerFailureList", name: "LayerFailureList")
    LayerFailureReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#LayerFailureReason", name: "LayerFailureReason")
    LayerInaccessibleException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#LayerInaccessibleException", name: "LayerInaccessibleException", traits: {"smithy.api#error" => "client"})
    LayerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#LayerList", name: "LayerList")
    LayerPartBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.ecr#LayerPartBlob", name: "LayerPartBlob", traits: {"smithy.api#length" => {"min" => 0, "max" => 20971520}})
    LayerPartTooSmallException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#LayerPartTooSmallException", name: "LayerPartTooSmallException", traits: {"smithy.api#error" => "client"})
    LayerSizeInBytes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ecr#LayerSizeInBytes", name: "LayerSizeInBytes")
    LayersNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#LayersNotFoundException", name: "LayersNotFoundException", traits: {"smithy.api#error" => "client"})
    LifecyclePolicyNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#LifecyclePolicyNotFoundException", name: "LifecyclePolicyNotFoundException", traits: {"smithy.api#error" => "client"})
    LifecyclePolicyPreviewFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#LifecyclePolicyPreviewFilter", name: "LifecyclePolicyPreviewFilter")
    LifecyclePolicyPreviewInProgressException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#LifecyclePolicyPreviewInProgressException", name: "LifecyclePolicyPreviewInProgressException", traits: {"smithy.api#error" => "client"})
    LifecyclePolicyPreviewNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#LifecyclePolicyPreviewNotFoundException", name: "LifecyclePolicyPreviewNotFoundException", traits: {"smithy.api#error" => "client"})
    LifecyclePolicyPreviewResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#LifecyclePolicyPreviewResult", name: "LifecyclePolicyPreviewResult")
    LifecyclePolicyPreviewResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#LifecyclePolicyPreviewResultList", name: "LifecyclePolicyPreviewResultList")
    LifecyclePolicyPreviewStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecr#LifecyclePolicyPreviewStatus", name: "LifecyclePolicyPreviewStatus")
    LifecyclePolicyPreviewSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#LifecyclePolicyPreviewSummary", name: "LifecyclePolicyPreviewSummary")
    LifecyclePolicyRuleAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#LifecyclePolicyRuleAction", name: "LifecyclePolicyRuleAction")
    LifecyclePolicyRulePriority = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ecr#LifecyclePolicyRulePriority", name: "LifecyclePolicyRulePriority", traits: {"smithy.api#range" => {"min" => 1}})
    LifecyclePolicyText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#LifecyclePolicyText", name: "LifecyclePolicyText", traits: {"smithy.api#length" => {"min" => 100, "max" => 30720}})
    LifecyclePolicyTextForRepositoryCreationTemplate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#LifecyclePolicyTextForRepositoryCreationTemplate", name: "LifecyclePolicyTextForRepositoryCreationTemplate", traits: {"smithy.api#length" => {"min" => 0, "max" => 30720}})
    LifecyclePreviewMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ecr#LifecyclePreviewMaxResults", name: "LifecyclePreviewMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client"})
    ListImagesFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#ListImagesFilter", name: "ListImagesFilter")
    ListImagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#ListImagesRequest", name: "ListImagesRequest")
    ListImagesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#ListImagesResponse", name: "ListImagesResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ecr#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MediaType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#MediaType", name: "MediaType")
    MediaTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#MediaTypeList", name: "MediaTypeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    Metric = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#Metric", name: "Metric")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#NextToken", name: "NextToken")
    PTCValidateFailure = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#PTCValidateFailure", name: "PTCValidateFailure")
    PackageManager = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#PackageManager", name: "PackageManager")
    PackageVulnerabilityDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#PackageVulnerabilityDetails", name: "PackageVulnerabilityDetails")
    PartSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ecr#PartSize", name: "PartSize", traits: {"smithy.api#range" => {"min" => 0}})
    Platform = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#Platform", name: "Platform")
    Prefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#Prefix", name: "Prefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^((?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*/?|ROOT)$"})
    PrefixList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#PrefixList", name: "PrefixList")
    ProxyEndpoint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#ProxyEndpoint", name: "ProxyEndpoint")
    PullThroughCacheRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#PullThroughCacheRule", name: "PullThroughCacheRule")
    PullThroughCacheRuleAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#PullThroughCacheRuleAlreadyExistsException", name: "PullThroughCacheRuleAlreadyExistsException", traits: {"smithy.api#error" => "client"})
    PullThroughCacheRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#PullThroughCacheRuleList", name: "PullThroughCacheRuleList")
    PullThroughCacheRuleNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#PullThroughCacheRuleNotFoundException", name: "PullThroughCacheRuleNotFoundException", traits: {"smithy.api#error" => "client"})
    PullThroughCacheRuleRepositoryPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#PullThroughCacheRuleRepositoryPrefix", name: "PullThroughCacheRuleRepositoryPrefix", traits: {"smithy.api#length" => {"min" => 2, "max" => 30}, "smithy.api#pattern" => "^((?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*/?|ROOT)$"})
    PullThroughCacheRuleRepositoryPrefixList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#PullThroughCacheRuleRepositoryPrefixList", name: "PullThroughCacheRuleRepositoryPrefixList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    PushTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.ecr#PushTimestamp", name: "PushTimestamp")
    PutAccountSettingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#PutAccountSettingRequest", name: "PutAccountSettingRequest")
    PutAccountSettingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#PutAccountSettingResponse", name: "PutAccountSettingResponse")
    PutImageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#PutImageRequest", name: "PutImageRequest")
    PutImageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#PutImageResponse", name: "PutImageResponse")
    PutImageScanningConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#PutImageScanningConfigurationRequest", name: "PutImageScanningConfigurationRequest")
    PutImageScanningConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#PutImageScanningConfigurationResponse", name: "PutImageScanningConfigurationResponse")
    PutImageTagMutabilityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#PutImageTagMutabilityRequest", name: "PutImageTagMutabilityRequest")
    PutImageTagMutabilityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#PutImageTagMutabilityResponse", name: "PutImageTagMutabilityResponse")
    PutLifecyclePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#PutLifecyclePolicyRequest", name: "PutLifecyclePolicyRequest")
    PutLifecyclePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#PutLifecyclePolicyResponse", name: "PutLifecyclePolicyResponse")
    PutRegistryPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#PutRegistryPolicyRequest", name: "PutRegistryPolicyRequest")
    PutRegistryPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#PutRegistryPolicyResponse", name: "PutRegistryPolicyResponse")
    PutRegistryScanningConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#PutRegistryScanningConfigurationRequest", name: "PutRegistryScanningConfigurationRequest")
    PutRegistryScanningConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#PutRegistryScanningConfigurationResponse", name: "PutRegistryScanningConfigurationResponse")
    PutReplicationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#PutReplicationConfigurationRequest", name: "PutReplicationConfigurationRequest")
    PutReplicationConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#PutReplicationConfigurationResponse", name: "PutReplicationConfigurationResponse")
    RCTAppliedFor = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecr#RCTAppliedFor", name: "RCTAppliedFor")
    RCTAppliedForList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#RCTAppliedForList", name: "RCTAppliedForList")
    Reason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#Reason", name: "Reason")
    Recommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#Recommendation", name: "Recommendation")
    RecommendationText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#RecommendationText", name: "RecommendationText")
    RecordedPullTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.ecr#RecordedPullTimestamp", name: "RecordedPullTimestamp")
    ReferenceUrlsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#ReferenceUrlsList", name: "ReferenceUrlsList")
    ReferencedImagesNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#ReferencedImagesNotFoundException", name: "ReferencedImagesNotFoundException", traits: {"smithy.api#error" => "client"})
    Region = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#Region", name: "Region", traits: {"smithy.api#length" => {"min" => 2, "max" => 25}, "smithy.api#pattern" => "^[0-9a-z-]{2,25}$"})
    RegistryId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#RegistryId", name: "RegistryId", traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    RegistryPolicyNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#RegistryPolicyNotFoundException", name: "RegistryPolicyNotFoundException", traits: {"smithy.api#error" => "client"})
    RegistryPolicyText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#RegistryPolicyText", name: "RegistryPolicyText", traits: {"smithy.api#length" => {"min" => 0, "max" => 10240}})
    RegistryScanningConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#RegistryScanningConfiguration", name: "RegistryScanningConfiguration")
    RegistryScanningRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#RegistryScanningRule", name: "RegistryScanningRule")
    RegistryScanningRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#RegistryScanningRuleList", name: "RegistryScanningRuleList", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    RelatedVulnerabilitiesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#RelatedVulnerabilitiesList", name: "RelatedVulnerabilitiesList")
    RelatedVulnerability = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#RelatedVulnerability", name: "RelatedVulnerability")
    Release = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#Release", name: "Release")
    Remediation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#Remediation", name: "Remediation")
    ReplicationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#ReplicationConfiguration", name: "ReplicationConfiguration")
    ReplicationDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#ReplicationDestination", name: "ReplicationDestination")
    ReplicationDestinationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#ReplicationDestinationList", name: "ReplicationDestinationList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ReplicationError = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#ReplicationError", name: "ReplicationError")
    ReplicationRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#ReplicationRule", name: "ReplicationRule")
    ReplicationRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#ReplicationRuleList", name: "ReplicationRuleList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ReplicationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecr#ReplicationStatus", name: "ReplicationStatus")
    Repository = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#Repository", name: "Repository")
    RepositoryAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#RepositoryAlreadyExistsException", name: "RepositoryAlreadyExistsException", traits: {"smithy.api#error" => "client"})
    RepositoryCreationTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#RepositoryCreationTemplate", name: "RepositoryCreationTemplate")
    RepositoryCreationTemplateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#RepositoryCreationTemplateList", name: "RepositoryCreationTemplateList")
    RepositoryFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#RepositoryFilter", name: "RepositoryFilter")
    RepositoryFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#RepositoryFilterList", name: "RepositoryFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    RepositoryFilterType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecr#RepositoryFilterType", name: "RepositoryFilterType")
    RepositoryFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#RepositoryFilterValue", name: "RepositoryFilterValue", traits: {"smithy.api#length" => {"min" => 2, "max" => 256}, "smithy.api#pattern" => "^(?:[a-z0-9]+(?:[._-][a-z0-9]*)*/)*[a-z0-9]*(?:[._-][a-z0-9]*)*$"})
    RepositoryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#RepositoryList", name: "RepositoryList")
    RepositoryName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#RepositoryName", name: "RepositoryName", traits: {"smithy.api#length" => {"min" => 2, "max" => 256}, "smithy.api#pattern" => "^(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*$"})
    RepositoryNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#RepositoryNameList", name: "RepositoryNameList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    RepositoryNotEmptyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#RepositoryNotEmptyException", name: "RepositoryNotEmptyException", traits: {"smithy.api#error" => "client"})
    RepositoryNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#RepositoryNotFoundException", name: "RepositoryNotFoundException", traits: {"smithy.api#error" => "client"})
    RepositoryPolicyNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#RepositoryPolicyNotFoundException", name: "RepositoryPolicyNotFoundException", traits: {"smithy.api#error" => "client"})
    RepositoryPolicyText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#RepositoryPolicyText", name: "RepositoryPolicyText", traits: {"smithy.api#length" => {"min" => 0, "max" => 10240}})
    RepositoryScanningConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#RepositoryScanningConfiguration", name: "RepositoryScanningConfiguration")
    RepositoryScanningConfigurationFailure = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#RepositoryScanningConfigurationFailure", name: "RepositoryScanningConfigurationFailure")
    RepositoryScanningConfigurationFailureList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#RepositoryScanningConfigurationFailureList", name: "RepositoryScanningConfigurationFailureList")
    RepositoryScanningConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#RepositoryScanningConfigurationList", name: "RepositoryScanningConfigurationList")
    RepositoryTemplateDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#RepositoryTemplateDescription", name: "RepositoryTemplateDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Resource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#Resource", name: "Resource")
    ResourceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#ResourceDetails", name: "ResourceDetails")
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#ResourceId", name: "ResourceId")
    ResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#ResourceList", name: "ResourceList")
    ScanFrequency = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecr#ScanFrequency", name: "ScanFrequency")
    ScanNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#ScanNotFoundException", name: "ScanNotFoundException", traits: {"smithy.api#error" => "client"})
    ScanOnPushFlag = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.ecr#ScanOnPushFlag", name: "ScanOnPushFlag", traits: {"smithy.api#default" => false})
    ScanStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecr#ScanStatus", name: "ScanStatus")
    ScanStatusDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#ScanStatusDescription", name: "ScanStatusDescription")
    ScanTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.ecr#ScanTimestamp", name: "ScanTimestamp")
    ScanType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecr#ScanType", name: "ScanType")
    ScanningConfigurationFailureCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecr#ScanningConfigurationFailureCode", name: "ScanningConfigurationFailureCode")
    ScanningConfigurationFailureReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#ScanningConfigurationFailureReason", name: "ScanningConfigurationFailureReason")
    ScanningConfigurationRepositoryNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#ScanningConfigurationRepositoryNameList", name: "ScanningConfigurationRepositoryNameList", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    ScanningRepositoryFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#ScanningRepositoryFilter", name: "ScanningRepositoryFilter")
    ScanningRepositoryFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#ScanningRepositoryFilterList", name: "ScanningRepositoryFilterList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ScanningRepositoryFilterType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecr#ScanningRepositoryFilterType", name: "ScanningRepositoryFilterType")
    ScanningRepositoryFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#ScanningRepositoryFilterValue", name: "ScanningRepositoryFilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-z0-9*](?:[._\\-/a-z0-9*]?[a-z0-9*]+)*$"})
    Score = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.ecr#Score", name: "Score", traits: {"smithy.api#default" => 0})
    ScoreDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#ScoreDetails", name: "ScoreDetails")
    ScoringVector = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#ScoringVector", name: "ScoringVector")
    SecretNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#SecretNotFoundException", name: "SecretNotFoundException", traits: {"smithy.api#error" => "client"})
    ServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#ServerException", name: "ServerException", traits: {"smithy.api#error" => "server"})
    SetRepositoryPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#SetRepositoryPolicyRequest", name: "SetRepositoryPolicyRequest")
    SetRepositoryPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#SetRepositoryPolicyResponse", name: "SetRepositoryPolicyResponse")
    Severity = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#Severity", name: "Severity")
    SeverityCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ecr#SeverityCount", name: "SeverityCount", traits: {"smithy.api#range" => {"min" => 0}})
    Source = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#Source", name: "Source")
    SourceLayerHash = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#SourceLayerHash", name: "SourceLayerHash")
    StartImageScanRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#StartImageScanRequest", name: "StartImageScanRequest")
    StartImageScanResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#StartImageScanResponse", name: "StartImageScanResponse")
    StartLifecyclePolicyPreviewRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#StartLifecyclePolicyPreviewRequest", name: "StartLifecyclePolicyPreviewRequest")
    StartLifecyclePolicyPreviewResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#StartLifecyclePolicyPreviewResponse", name: "StartLifecyclePolicyPreviewResponse")
    Status = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#Status", name: "Status")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#TagKey", name: "TagKey")
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#TagKeyList", name: "TagKeyList")
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#TagList", name: "TagList")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#TagResourceResponse", name: "TagResourceResponse")
    TagStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecr#TagStatus", name: "TagStatus")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#TagValue", name: "TagValue")
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ecr#Tags", name: "Tags")
    TemplateAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#TemplateAlreadyExistsException", name: "TemplateAlreadyExistsException", traits: {"smithy.api#error" => "client"})
    TemplateNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#TemplateNotFoundException", name: "TemplateNotFoundException", traits: {"smithy.api#error" => "client"})
    Title = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#Title", name: "Title")
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#TooManyTagsException", name: "TooManyTagsException", traits: {"smithy.api#error" => "client"})
    Type = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#Type", name: "Type")
    UnableToAccessSecretException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#UnableToAccessSecretException", name: "UnableToAccessSecretException", traits: {"smithy.api#error" => "client"})
    UnableToDecryptSecretValueException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#UnableToDecryptSecretValueException", name: "UnableToDecryptSecretValueException", traits: {"smithy.api#error" => "client"})
    UnableToGetUpstreamImageException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#UnableToGetUpstreamImageException", name: "UnableToGetUpstreamImageException", traits: {"smithy.api#error" => "client"})
    UnableToGetUpstreamLayerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#UnableToGetUpstreamLayerException", name: "UnableToGetUpstreamLayerException", traits: {"smithy.api#error" => "client"})
    UnsupportedImageTypeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#UnsupportedImageTypeException", name: "UnsupportedImageTypeException", traits: {"smithy.api#error" => "client"})
    UnsupportedUpstreamRegistryException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#UnsupportedUpstreamRegistryException", name: "UnsupportedUpstreamRegistryException", traits: {"smithy.api#error" => "client"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#UntagResourceResponse", name: "UntagResourceResponse")
    UpdatePullThroughCacheRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#UpdatePullThroughCacheRuleRequest", name: "UpdatePullThroughCacheRuleRequest")
    UpdatePullThroughCacheRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#UpdatePullThroughCacheRuleResponse", name: "UpdatePullThroughCacheRuleResponse")
    UpdateRepositoryCreationTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#UpdateRepositoryCreationTemplateRequest", name: "UpdateRepositoryCreationTemplateRequest")
    UpdateRepositoryCreationTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#UpdateRepositoryCreationTemplateResponse", name: "UpdateRepositoryCreationTemplateResponse")
    UpdatedTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.ecr#UpdatedTimestamp", name: "UpdatedTimestamp")
    UploadId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#UploadId", name: "UploadId", traits: {"smithy.api#pattern" => "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"})
    UploadLayerPartRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#UploadLayerPartRequest", name: "UploadLayerPartRequest")
    UploadLayerPartResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#UploadLayerPartResponse", name: "UploadLayerPartResponse")
    UploadNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#UploadNotFoundException", name: "UploadNotFoundException", traits: {"smithy.api#error" => "client"})
    UpstreamRegistry = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecr#UpstreamRegistry", name: "UpstreamRegistry")
    Url = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#Url", name: "Url")
    ValidatePullThroughCacheRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#ValidatePullThroughCacheRuleRequest", name: "ValidatePullThroughCacheRuleRequest")
    ValidatePullThroughCacheRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#ValidatePullThroughCacheRuleResponse", name: "ValidatePullThroughCacheRuleResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Version = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#Version", name: "Version")
    VulnerabilityId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#VulnerabilityId", name: "VulnerabilityId")
    VulnerabilitySourceUpdateTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.ecr#VulnerabilitySourceUpdateTimestamp", name: "VulnerabilitySourceUpdateTimestamp")
    VulnerablePackage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecr#VulnerablePackage", name: "VulnerablePackage")
    VulnerablePackageName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecr#VulnerablePackageName", name: "VulnerablePackageName")
    VulnerablePackagesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecr#VulnerablePackagesList", name: "VulnerablePackagesList")

    Attribute.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeKey, name: "key", traits: {"smithy.api#required" => {}}))
    Attribute.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "value"))
    Attribute.type = Types::Attribute
    AttributeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Attribute, name: "member"))
    AuthorizationData.add_member(:authorization_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Base64, name: "authorizationToken"))
    AuthorizationData.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationTimestamp, name: "expiresAt"))
    AuthorizationData.add_member(:proxy_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyEndpoint, name: "proxyEndpoint"))
    AuthorizationData.type = Types::AuthorizationData
    AuthorizationDataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizationData, name: "member"))
    AwsEcrContainerImageDetails.add_member(:architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: Arch, name: "architecture"))
    AwsEcrContainerImageDetails.add_member(:author, ::Smithy::Schema::Shapes::MemberShape.new(target: Author, name: "author"))
    AwsEcrContainerImageDetails.add_member(:image_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageDigest, name: "imageHash"))
    AwsEcrContainerImageDetails.add_member(:image_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageTagsList, name: "imageTags"))
    AwsEcrContainerImageDetails.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, name: "platform"))
    AwsEcrContainerImageDetails.add_member(:pushed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "pushedAt"))
    AwsEcrContainerImageDetails.add_member(:last_in_use_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "lastInUseAt"))
    AwsEcrContainerImageDetails.add_member(:in_use_count, ::Smithy::Schema::Shapes::MemberShape.new(target: InUseCount, name: "inUseCount"))
    AwsEcrContainerImageDetails.add_member(:registry, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registry"))
    AwsEcrContainerImageDetails.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    AwsEcrContainerImageDetails.type = Types::AwsEcrContainerImageDetails
    BatchCheckLayerAvailabilityRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    BatchCheckLayerAvailabilityRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    BatchCheckLayerAvailabilityRequest.add_member(:layer_digests, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchedOperationLayerDigestList, name: "layerDigests", traits: {"smithy.api#required" => {}}))
    BatchCheckLayerAvailabilityRequest.type = Types::BatchCheckLayerAvailabilityRequest
    BatchCheckLayerAvailabilityResponse.add_member(:layers, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerList, name: "layers"))
    BatchCheckLayerAvailabilityResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerFailureList, name: "failures"))
    BatchCheckLayerAvailabilityResponse.type = Types::BatchCheckLayerAvailabilityResponse
    BatchDeleteImageRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    BatchDeleteImageRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    BatchDeleteImageRequest.add_member(:image_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageIdentifierList, name: "imageIds", traits: {"smithy.api#required" => {}}))
    BatchDeleteImageRequest.type = Types::BatchDeleteImageRequest
    BatchDeleteImageResponse.add_member(:image_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageIdentifierList, name: "imageIds"))
    BatchDeleteImageResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageFailureList, name: "failures"))
    BatchDeleteImageResponse.type = Types::BatchDeleteImageResponse
    BatchGetImageRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    BatchGetImageRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    BatchGetImageRequest.add_member(:image_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageIdentifierList, name: "imageIds", traits: {"smithy.api#required" => {}}))
    BatchGetImageRequest.add_member(:accepted_media_types, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaTypeList, name: "acceptedMediaTypes"))
    BatchGetImageRequest.type = Types::BatchGetImageRequest
    BatchGetImageResponse.add_member(:images, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageList, name: "images"))
    BatchGetImageResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageFailureList, name: "failures"))
    BatchGetImageResponse.type = Types::BatchGetImageResponse
    BatchGetRepositoryScanningConfigurationRequest.add_member(:repository_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanningConfigurationRepositoryNameList, name: "repositoryNames", traits: {"smithy.api#required" => {}}))
    BatchGetRepositoryScanningConfigurationRequest.type = Types::BatchGetRepositoryScanningConfigurationRequest
    BatchGetRepositoryScanningConfigurationResponse.add_member(:scanning_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryScanningConfigurationList, name: "scanningConfigurations"))
    BatchGetRepositoryScanningConfigurationResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryScanningConfigurationFailureList, name: "failures"))
    BatchGetRepositoryScanningConfigurationResponse.type = Types::BatchGetRepositoryScanningConfigurationResponse
    BatchedOperationLayerDigestList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchedOperationLayerDigest, name: "member"))
    CompleteLayerUploadRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    CompleteLayerUploadRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    CompleteLayerUploadRequest.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadId, name: "uploadId", traits: {"smithy.api#required" => {}}))
    CompleteLayerUploadRequest.add_member(:layer_digests, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerDigestList, name: "layerDigests", traits: {"smithy.api#required" => {}}))
    CompleteLayerUploadRequest.type = Types::CompleteLayerUploadRequest
    CompleteLayerUploadResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    CompleteLayerUploadResponse.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    CompleteLayerUploadResponse.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadId, name: "uploadId"))
    CompleteLayerUploadResponse.add_member(:layer_digest, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerDigest, name: "layerDigest"))
    CompleteLayerUploadResponse.type = Types::CompleteLayerUploadResponse
    CreatePullThroughCacheRuleRequest.add_member(:ecr_repository_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: PullThroughCacheRuleRepositoryPrefix, name: "ecrRepositoryPrefix", traits: {"smithy.api#required" => {}}))
    CreatePullThroughCacheRuleRequest.add_member(:upstream_registry_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "upstreamRegistryUrl", traits: {"smithy.api#required" => {}}))
    CreatePullThroughCacheRuleRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    CreatePullThroughCacheRuleRequest.add_member(:upstream_registry, ::Smithy::Schema::Shapes::MemberShape.new(target: UpstreamRegistry, name: "upstreamRegistry"))
    CreatePullThroughCacheRuleRequest.add_member(:credential_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialArn, name: "credentialArn"))
    CreatePullThroughCacheRuleRequest.add_member(:custom_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomRoleArn, name: "customRoleArn"))
    CreatePullThroughCacheRuleRequest.add_member(:upstream_repository_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: PullThroughCacheRuleRepositoryPrefix, name: "upstreamRepositoryPrefix"))
    CreatePullThroughCacheRuleRequest.type = Types::CreatePullThroughCacheRuleRequest
    CreatePullThroughCacheRuleResponse.add_member(:ecr_repository_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: PullThroughCacheRuleRepositoryPrefix, name: "ecrRepositoryPrefix"))
    CreatePullThroughCacheRuleResponse.add_member(:upstream_registry_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "upstreamRegistryUrl"))
    CreatePullThroughCacheRuleResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTimestamp, name: "createdAt"))
    CreatePullThroughCacheRuleResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    CreatePullThroughCacheRuleResponse.add_member(:upstream_registry, ::Smithy::Schema::Shapes::MemberShape.new(target: UpstreamRegistry, name: "upstreamRegistry"))
    CreatePullThroughCacheRuleResponse.add_member(:credential_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialArn, name: "credentialArn"))
    CreatePullThroughCacheRuleResponse.add_member(:custom_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomRoleArn, name: "customRoleArn"))
    CreatePullThroughCacheRuleResponse.add_member(:upstream_repository_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: PullThroughCacheRuleRepositoryPrefix, name: "upstreamRepositoryPrefix"))
    CreatePullThroughCacheRuleResponse.type = Types::CreatePullThroughCacheRuleResponse
    CreateRepositoryCreationTemplateRequest.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "prefix", traits: {"smithy.api#required" => {}}))
    CreateRepositoryCreationTemplateRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryTemplateDescription, name: "description"))
    CreateRepositoryCreationTemplateRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfigurationForRepositoryCreationTemplate, name: "encryptionConfiguration"))
    CreateRepositoryCreationTemplateRequest.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "resourceTags"))
    CreateRepositoryCreationTemplateRequest.add_member(:image_tag_mutability, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageTagMutability, name: "imageTagMutability"))
    CreateRepositoryCreationTemplateRequest.add_member(:image_tag_mutability_exclusion_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageTagMutabilityExclusionFilters, name: "imageTagMutabilityExclusionFilters"))
    CreateRepositoryCreationTemplateRequest.add_member(:repository_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryPolicyText, name: "repositoryPolicy"))
    CreateRepositoryCreationTemplateRequest.add_member(:lifecycle_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyTextForRepositoryCreationTemplate, name: "lifecyclePolicy"))
    CreateRepositoryCreationTemplateRequest.add_member(:applied_for, ::Smithy::Schema::Shapes::MemberShape.new(target: RCTAppliedForList, name: "appliedFor", traits: {"smithy.api#required" => {}}))
    CreateRepositoryCreationTemplateRequest.add_member(:custom_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomRoleArn, name: "customRoleArn"))
    CreateRepositoryCreationTemplateRequest.type = Types::CreateRepositoryCreationTemplateRequest
    CreateRepositoryCreationTemplateResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    CreateRepositoryCreationTemplateResponse.add_member(:repository_creation_template, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryCreationTemplate, name: "repositoryCreationTemplate"))
    CreateRepositoryCreationTemplateResponse.type = Types::CreateRepositoryCreationTemplateResponse
    CreateRepositoryRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    CreateRepositoryRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    CreateRepositoryRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateRepositoryRequest.add_member(:image_tag_mutability, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageTagMutability, name: "imageTagMutability"))
    CreateRepositoryRequest.add_member(:image_tag_mutability_exclusion_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageTagMutabilityExclusionFilters, name: "imageTagMutabilityExclusionFilters"))
    CreateRepositoryRequest.add_member(:image_scanning_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanningConfiguration, name: "imageScanningConfiguration"))
    CreateRepositoryRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "encryptionConfiguration"))
    CreateRepositoryRequest.type = Types::CreateRepositoryRequest
    CreateRepositoryResponse.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: Repository, name: "repository"))
    CreateRepositoryResponse.type = Types::CreateRepositoryResponse
    CvssScore.add_member(:base_score, ::Smithy::Schema::Shapes::MemberShape.new(target: BaseScore, name: "baseScore", traits: {"smithy.api#default" => 0}))
    CvssScore.add_member(:scoring_vector, ::Smithy::Schema::Shapes::MemberShape.new(target: ScoringVector, name: "scoringVector"))
    CvssScore.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, name: "source"))
    CvssScore.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "version"))
    CvssScore.type = Types::CvssScore
    CvssScoreAdjustment.add_member(:metric, ::Smithy::Schema::Shapes::MemberShape.new(target: Metric, name: "metric"))
    CvssScoreAdjustment.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: Reason, name: "reason"))
    CvssScoreAdjustment.type = Types::CvssScoreAdjustment
    CvssScoreAdjustmentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CvssScoreAdjustment, name: "member"))
    CvssScoreDetails.add_member(:adjustments, ::Smithy::Schema::Shapes::MemberShape.new(target: CvssScoreAdjustmentList, name: "adjustments"))
    CvssScoreDetails.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: Score, name: "score", traits: {"smithy.api#default" => 0}))
    CvssScoreDetails.add_member(:score_source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, name: "scoreSource"))
    CvssScoreDetails.add_member(:scoring_vector, ::Smithy::Schema::Shapes::MemberShape.new(target: ScoringVector, name: "scoringVector"))
    CvssScoreDetails.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "version"))
    CvssScoreDetails.type = Types::CvssScoreDetails
    CvssScoreList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CvssScore, name: "member"))
    DeleteLifecyclePolicyRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    DeleteLifecyclePolicyRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    DeleteLifecyclePolicyRequest.type = Types::DeleteLifecyclePolicyRequest
    DeleteLifecyclePolicyResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    DeleteLifecyclePolicyResponse.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    DeleteLifecyclePolicyResponse.add_member(:lifecycle_policy_text, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyText, name: "lifecyclePolicyText"))
    DeleteLifecyclePolicyResponse.add_member(:last_evaluated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationTimestamp, name: "lastEvaluatedAt"))
    DeleteLifecyclePolicyResponse.type = Types::DeleteLifecyclePolicyResponse
    DeletePullThroughCacheRuleRequest.add_member(:ecr_repository_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: PullThroughCacheRuleRepositoryPrefix, name: "ecrRepositoryPrefix", traits: {"smithy.api#required" => {}}))
    DeletePullThroughCacheRuleRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    DeletePullThroughCacheRuleRequest.type = Types::DeletePullThroughCacheRuleRequest
    DeletePullThroughCacheRuleResponse.add_member(:ecr_repository_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: PullThroughCacheRuleRepositoryPrefix, name: "ecrRepositoryPrefix"))
    DeletePullThroughCacheRuleResponse.add_member(:upstream_registry_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "upstreamRegistryUrl"))
    DeletePullThroughCacheRuleResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTimestamp, name: "createdAt"))
    DeletePullThroughCacheRuleResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    DeletePullThroughCacheRuleResponse.add_member(:credential_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialArn, name: "credentialArn"))
    DeletePullThroughCacheRuleResponse.add_member(:custom_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomRoleArn, name: "customRoleArn"))
    DeletePullThroughCacheRuleResponse.add_member(:upstream_repository_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: PullThroughCacheRuleRepositoryPrefix, name: "upstreamRepositoryPrefix"))
    DeletePullThroughCacheRuleResponse.type = Types::DeletePullThroughCacheRuleResponse
    DeleteRegistryPolicyRequest.type = Types::DeleteRegistryPolicyRequest
    DeleteRegistryPolicyResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    DeleteRegistryPolicyResponse.add_member(:policy_text, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryPolicyText, name: "policyText"))
    DeleteRegistryPolicyResponse.type = Types::DeleteRegistryPolicyResponse
    DeleteRepositoryCreationTemplateRequest.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "prefix", traits: {"smithy.api#required" => {}}))
    DeleteRepositoryCreationTemplateRequest.type = Types::DeleteRepositoryCreationTemplateRequest
    DeleteRepositoryCreationTemplateResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    DeleteRepositoryCreationTemplateResponse.add_member(:repository_creation_template, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryCreationTemplate, name: "repositoryCreationTemplate"))
    DeleteRepositoryCreationTemplateResponse.type = Types::DeleteRepositoryCreationTemplateResponse
    DeleteRepositoryPolicyRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    DeleteRepositoryPolicyRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    DeleteRepositoryPolicyRequest.type = Types::DeleteRepositoryPolicyRequest
    DeleteRepositoryPolicyResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    DeleteRepositoryPolicyResponse.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    DeleteRepositoryPolicyResponse.add_member(:policy_text, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryPolicyText, name: "policyText"))
    DeleteRepositoryPolicyResponse.type = Types::DeleteRepositoryPolicyResponse
    DeleteRepositoryRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    DeleteRepositoryRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    DeleteRepositoryRequest.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: ForceFlag, name: "force", traits: {"smithy.api#default" => false}))
    DeleteRepositoryRequest.type = Types::DeleteRepositoryRequest
    DeleteRepositoryResponse.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: Repository, name: "repository"))
    DeleteRepositoryResponse.type = Types::DeleteRepositoryResponse
    DescribeImageReplicationStatusRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    DescribeImageReplicationStatusRequest.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageIdentifier, name: "imageId", traits: {"smithy.api#required" => {}}))
    DescribeImageReplicationStatusRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    DescribeImageReplicationStatusRequest.type = Types::DescribeImageReplicationStatusRequest
    DescribeImageReplicationStatusResponse.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    DescribeImageReplicationStatusResponse.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageIdentifier, name: "imageId"))
    DescribeImageReplicationStatusResponse.add_member(:replication_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageReplicationStatusList, name: "replicationStatuses"))
    DescribeImageReplicationStatusResponse.type = Types::DescribeImageReplicationStatusResponse
    DescribeImageScanFindingsRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    DescribeImageScanFindingsRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    DescribeImageScanFindingsRequest.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageIdentifier, name: "imageId", traits: {"smithy.api#required" => {}}))
    DescribeImageScanFindingsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    DescribeImageScanFindingsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    DescribeImageScanFindingsRequest.type = Types::DescribeImageScanFindingsRequest
    DescribeImageScanFindingsResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    DescribeImageScanFindingsResponse.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    DescribeImageScanFindingsResponse.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageIdentifier, name: "imageId"))
    DescribeImageScanFindingsResponse.add_member(:image_scan_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanStatus, name: "imageScanStatus"))
    DescribeImageScanFindingsResponse.add_member(:image_scan_findings, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanFindings, name: "imageScanFindings"))
    DescribeImageScanFindingsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    DescribeImageScanFindingsResponse.type = Types::DescribeImageScanFindingsResponse
    DescribeImagesFilter.add_member(:tag_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TagStatus, name: "tagStatus"))
    DescribeImagesFilter.type = Types::DescribeImagesFilter
    DescribeImagesRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    DescribeImagesRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    DescribeImagesRequest.add_member(:image_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageIdentifierList, name: "imageIds"))
    DescribeImagesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    DescribeImagesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    DescribeImagesRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeImagesFilter, name: "filter"))
    DescribeImagesRequest.type = Types::DescribeImagesRequest
    DescribeImagesResponse.add_member(:image_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageDetailList, name: "imageDetails"))
    DescribeImagesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    DescribeImagesResponse.type = Types::DescribeImagesResponse
    DescribePullThroughCacheRulesRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    DescribePullThroughCacheRulesRequest.add_member(:ecr_repository_prefixes, ::Smithy::Schema::Shapes::MemberShape.new(target: PullThroughCacheRuleRepositoryPrefixList, name: "ecrRepositoryPrefixes"))
    DescribePullThroughCacheRulesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    DescribePullThroughCacheRulesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    DescribePullThroughCacheRulesRequest.type = Types::DescribePullThroughCacheRulesRequest
    DescribePullThroughCacheRulesResponse.add_member(:pull_through_cache_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: PullThroughCacheRuleList, name: "pullThroughCacheRules"))
    DescribePullThroughCacheRulesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    DescribePullThroughCacheRulesResponse.type = Types::DescribePullThroughCacheRulesResponse
    DescribeRegistryRequest.type = Types::DescribeRegistryRequest
    DescribeRegistryResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    DescribeRegistryResponse.add_member(:replication_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfiguration, name: "replicationConfiguration"))
    DescribeRegistryResponse.type = Types::DescribeRegistryResponse
    DescribeRepositoriesRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    DescribeRepositoriesRequest.add_member(:repository_names, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryNameList, name: "repositoryNames"))
    DescribeRepositoriesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    DescribeRepositoriesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    DescribeRepositoriesRequest.type = Types::DescribeRepositoriesRequest
    DescribeRepositoriesResponse.add_member(:repositories, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryList, name: "repositories"))
    DescribeRepositoriesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    DescribeRepositoriesResponse.type = Types::DescribeRepositoriesResponse
    DescribeRepositoryCreationTemplatesRequest.add_member(:prefixes, ::Smithy::Schema::Shapes::MemberShape.new(target: PrefixList, name: "prefixes"))
    DescribeRepositoryCreationTemplatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    DescribeRepositoryCreationTemplatesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    DescribeRepositoryCreationTemplatesRequest.type = Types::DescribeRepositoryCreationTemplatesRequest
    DescribeRepositoryCreationTemplatesResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    DescribeRepositoryCreationTemplatesResponse.add_member(:repository_creation_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryCreationTemplateList, name: "repositoryCreationTemplates"))
    DescribeRepositoryCreationTemplatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    DescribeRepositoryCreationTemplatesResponse.type = Types::DescribeRepositoryCreationTemplatesResponse
    EmptyUploadException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    EmptyUploadException.type = Types::EmptyUploadException
    EncryptionConfiguration.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionType, name: "encryptionType", traits: {"smithy.api#required" => {}}))
    EncryptionConfiguration.add_member(:kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKey, name: "kmsKey"))
    EncryptionConfiguration.type = Types::EncryptionConfiguration
    EncryptionConfigurationForRepositoryCreationTemplate.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionType, name: "encryptionType", traits: {"smithy.api#required" => {}}))
    EncryptionConfigurationForRepositoryCreationTemplate.add_member(:kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyForRepositoryCreationTemplate, name: "kmsKey"))
    EncryptionConfigurationForRepositoryCreationTemplate.type = Types::EncryptionConfigurationForRepositoryCreationTemplate
    EncryptionType.add_member(:aes256, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AES256", traits: {"smithy.api#enumValue" => "AES256"}))
    EncryptionType.add_member(:kms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMS", traits: {"smithy.api#enumValue" => "KMS"}))
    EncryptionType.add_member(:kms_dsse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMS_DSSE", traits: {"smithy.api#enumValue" => "KMS_DSSE"}))
    EnhancedImageScanFinding.add_member(:aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "awsAccountId"))
    EnhancedImageScanFinding.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingDescription, name: "description"))
    EnhancedImageScanFinding.add_member(:finding_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingArn, name: "findingArn"))
    EnhancedImageScanFinding.add_member(:first_observed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "firstObservedAt"))
    EnhancedImageScanFinding.add_member(:last_observed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "lastObservedAt"))
    EnhancedImageScanFinding.add_member(:package_vulnerability_details, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVulnerabilityDetails, name: "packageVulnerabilityDetails"))
    EnhancedImageScanFinding.add_member(:remediation, ::Smithy::Schema::Shapes::MemberShape.new(target: Remediation, name: "remediation"))
    EnhancedImageScanFinding.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceList, name: "resources"))
    EnhancedImageScanFinding.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: Score, name: "score", traits: {"smithy.api#default" => 0}))
    EnhancedImageScanFinding.add_member(:score_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ScoreDetails, name: "scoreDetails"))
    EnhancedImageScanFinding.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: Severity, name: "severity"))
    EnhancedImageScanFinding.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status"))
    EnhancedImageScanFinding.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: Title, name: "title"))
    EnhancedImageScanFinding.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Type, name: "type"))
    EnhancedImageScanFinding.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "updatedAt"))
    EnhancedImageScanFinding.add_member(:fix_available, ::Smithy::Schema::Shapes::MemberShape.new(target: FixAvailable, name: "fixAvailable"))
    EnhancedImageScanFinding.add_member(:exploit_available, ::Smithy::Schema::Shapes::MemberShape.new(target: ExploitAvailable, name: "exploitAvailable"))
    EnhancedImageScanFinding.type = Types::EnhancedImageScanFinding
    EnhancedImageScanFindingList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EnhancedImageScanFinding, name: "member"))
    FindingSeverity.add_member(:informational, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFORMATIONAL", traits: {"smithy.api#enumValue" => "INFORMATIONAL"}))
    FindingSeverity.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "LOW"}))
    FindingSeverity.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    FindingSeverity.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    FindingSeverity.add_member(:critical, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CRITICAL", traits: {"smithy.api#enumValue" => "CRITICAL"}))
    FindingSeverity.add_member(:undefined, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNDEFINED", traits: {"smithy.api#enumValue" => "UNDEFINED"}))
    FindingSeverityCounts.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingSeverity, name: "key"))
    FindingSeverityCounts.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SeverityCount, name: "value"))
    GetAccountSettingRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountSettingName, name: "name", traits: {"smithy.api#required" => {}}))
    GetAccountSettingRequest.type = Types::GetAccountSettingRequest
    GetAccountSettingResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountSettingName, name: "name"))
    GetAccountSettingResponse.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountSettingName, name: "value"))
    GetAccountSettingResponse.type = Types::GetAccountSettingResponse
    GetAuthorizationTokenRegistryIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "member"))
    GetAuthorizationTokenRequest.add_member(:registry_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: GetAuthorizationTokenRegistryIdList, name: "registryIds", traits: {"smithy.api#deprecated" => {"message" => "This field is deprecated. The returned authorization token can be used to access any Amazon ECR registry that the IAM principal has access to, specifying a registry ID doesn't change the permissions scope of the authorization token."}}))
    GetAuthorizationTokenRequest.type = Types::GetAuthorizationTokenRequest
    GetAuthorizationTokenResponse.add_member(:authorization_data, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizationDataList, name: "authorizationData"))
    GetAuthorizationTokenResponse.type = Types::GetAuthorizationTokenResponse
    GetDownloadUrlForLayerRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    GetDownloadUrlForLayerRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    GetDownloadUrlForLayerRequest.add_member(:layer_digest, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerDigest, name: "layerDigest", traits: {"smithy.api#required" => {}}))
    GetDownloadUrlForLayerRequest.type = Types::GetDownloadUrlForLayerRequest
    GetDownloadUrlForLayerResponse.add_member(:download_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "downloadUrl"))
    GetDownloadUrlForLayerResponse.add_member(:layer_digest, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerDigest, name: "layerDigest"))
    GetDownloadUrlForLayerResponse.type = Types::GetDownloadUrlForLayerResponse
    GetLifecyclePolicyPreviewRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    GetLifecyclePolicyPreviewRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    GetLifecyclePolicyPreviewRequest.add_member(:image_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageIdentifierList, name: "imageIds"))
    GetLifecyclePolicyPreviewRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetLifecyclePolicyPreviewRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePreviewMaxResults, name: "maxResults"))
    GetLifecyclePolicyPreviewRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyPreviewFilter, name: "filter"))
    GetLifecyclePolicyPreviewRequest.type = Types::GetLifecyclePolicyPreviewRequest
    GetLifecyclePolicyPreviewResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    GetLifecyclePolicyPreviewResponse.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    GetLifecyclePolicyPreviewResponse.add_member(:lifecycle_policy_text, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyText, name: "lifecyclePolicyText"))
    GetLifecyclePolicyPreviewResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyPreviewStatus, name: "status"))
    GetLifecyclePolicyPreviewResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetLifecyclePolicyPreviewResponse.add_member(:preview_results, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyPreviewResultList, name: "previewResults"))
    GetLifecyclePolicyPreviewResponse.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyPreviewSummary, name: "summary"))
    GetLifecyclePolicyPreviewResponse.type = Types::GetLifecyclePolicyPreviewResponse
    GetLifecyclePolicyRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    GetLifecyclePolicyRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    GetLifecyclePolicyRequest.type = Types::GetLifecyclePolicyRequest
    GetLifecyclePolicyResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    GetLifecyclePolicyResponse.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    GetLifecyclePolicyResponse.add_member(:lifecycle_policy_text, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyText, name: "lifecyclePolicyText"))
    GetLifecyclePolicyResponse.add_member(:last_evaluated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationTimestamp, name: "lastEvaluatedAt"))
    GetLifecyclePolicyResponse.type = Types::GetLifecyclePolicyResponse
    GetRegistryPolicyRequest.type = Types::GetRegistryPolicyRequest
    GetRegistryPolicyResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    GetRegistryPolicyResponse.add_member(:policy_text, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryPolicyText, name: "policyText"))
    GetRegistryPolicyResponse.type = Types::GetRegistryPolicyResponse
    GetRegistryScanningConfigurationRequest.type = Types::GetRegistryScanningConfigurationRequest
    GetRegistryScanningConfigurationResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    GetRegistryScanningConfigurationResponse.add_member(:scanning_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryScanningConfiguration, name: "scanningConfiguration"))
    GetRegistryScanningConfigurationResponse.type = Types::GetRegistryScanningConfigurationResponse
    GetRepositoryPolicyRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    GetRepositoryPolicyRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    GetRepositoryPolicyRequest.type = Types::GetRepositoryPolicyRequest
    GetRepositoryPolicyResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    GetRepositoryPolicyResponse.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    GetRepositoryPolicyResponse.add_member(:policy_text, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryPolicyText, name: "policyText"))
    GetRepositoryPolicyResponse.type = Types::GetRepositoryPolicyResponse
    Image.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    Image.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    Image.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageIdentifier, name: "imageId"))
    Image.add_member(:image_manifest, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageManifest, name: "imageManifest"))
    Image.add_member(:image_manifest_media_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaType, name: "imageManifestMediaType"))
    Image.type = Types::Image
    ImageActionType.add_member(:expire, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRE", traits: {"smithy.api#enumValue" => "EXPIRE"}))
    ImageAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ImageAlreadyExistsException.type = Types::ImageAlreadyExistsException
    ImageDetail.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    ImageDetail.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    ImageDetail.add_member(:image_digest, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageDigest, name: "imageDigest"))
    ImageDetail.add_member(:image_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageTagList, name: "imageTags"))
    ImageDetail.add_member(:image_size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSizeInBytes, name: "imageSizeInBytes"))
    ImageDetail.add_member(:image_pushed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: PushTimestamp, name: "imagePushedAt"))
    ImageDetail.add_member(:image_scan_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanStatus, name: "imageScanStatus"))
    ImageDetail.add_member(:image_scan_findings_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanFindingsSummary, name: "imageScanFindingsSummary"))
    ImageDetail.add_member(:image_manifest_media_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaType, name: "imageManifestMediaType"))
    ImageDetail.add_member(:artifact_media_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaType, name: "artifactMediaType"))
    ImageDetail.add_member(:last_recorded_pull_time, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordedPullTimestamp, name: "lastRecordedPullTime"))
    ImageDetail.type = Types::ImageDetail
    ImageDetailList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageDetail, name: "member"))
    ImageDigestDoesNotMatchException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ImageDigestDoesNotMatchException.type = Types::ImageDigestDoesNotMatchException
    ImageFailure.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageIdentifier, name: "imageId"))
    ImageFailure.add_member(:failure_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageFailureCode, name: "failureCode"))
    ImageFailure.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageFailureReason, name: "failureReason"))
    ImageFailure.type = Types::ImageFailure
    ImageFailureCode.add_member(:invalid_image_digest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidImageDigest", traits: {"smithy.api#enumValue" => "InvalidImageDigest"}))
    ImageFailureCode.add_member(:invalid_image_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidImageTag", traits: {"smithy.api#enumValue" => "InvalidImageTag"}))
    ImageFailureCode.add_member(:image_tag_does_not_match_digest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ImageTagDoesNotMatchDigest", traits: {"smithy.api#enumValue" => "ImageTagDoesNotMatchDigest"}))
    ImageFailureCode.add_member(:image_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ImageNotFound", traits: {"smithy.api#enumValue" => "ImageNotFound"}))
    ImageFailureCode.add_member(:missing_digest_and_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MissingDigestAndTag", traits: {"smithy.api#enumValue" => "MissingDigestAndTag"}))
    ImageFailureCode.add_member(:image_referenced_by_manifest_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ImageReferencedByManifestList", traits: {"smithy.api#enumValue" => "ImageReferencedByManifestList"}))
    ImageFailureCode.add_member(:kms_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KmsError", traits: {"smithy.api#enumValue" => "KmsError"}))
    ImageFailureCode.add_member(:upstream_access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UpstreamAccessDenied", traits: {"smithy.api#enumValue" => "UpstreamAccessDenied"}))
    ImageFailureCode.add_member(:upstream_too_many_requests, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UpstreamTooManyRequests", traits: {"smithy.api#enumValue" => "UpstreamTooManyRequests"}))
    ImageFailureCode.add_member(:upstream_unavailable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UpstreamUnavailable", traits: {"smithy.api#enumValue" => "UpstreamUnavailable"}))
    ImageFailureList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageFailure, name: "member"))
    ImageIdentifier.add_member(:image_digest, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageDigest, name: "imageDigest"))
    ImageIdentifier.add_member(:image_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageTag, name: "imageTag"))
    ImageIdentifier.type = Types::ImageIdentifier
    ImageIdentifierList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageIdentifier, name: "member"))
    ImageList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Image, name: "member"))
    ImageNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ImageNotFoundException.type = Types::ImageNotFoundException
    ImageReplicationStatus.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "region"))
    ImageReplicationStatus.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    ImageReplicationStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationStatus, name: "status"))
    ImageReplicationStatus.add_member(:failure_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationError, name: "failureCode"))
    ImageReplicationStatus.type = Types::ImageReplicationStatus
    ImageReplicationStatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageReplicationStatus, name: "member"))
    ImageScanFinding.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingName, name: "name"))
    ImageScanFinding.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingDescription, name: "description"))
    ImageScanFinding.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "uri"))
    ImageScanFinding.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingSeverity, name: "severity"))
    ImageScanFinding.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeList, name: "attributes"))
    ImageScanFinding.type = Types::ImageScanFinding
    ImageScanFindingList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanFinding, name: "member"))
    ImageScanFindings.add_member(:image_scan_completed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanTimestamp, name: "imageScanCompletedAt"))
    ImageScanFindings.add_member(:vulnerability_source_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: VulnerabilitySourceUpdateTimestamp, name: "vulnerabilitySourceUpdatedAt"))
    ImageScanFindings.add_member(:finding_severity_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingSeverityCounts, name: "findingSeverityCounts"))
    ImageScanFindings.add_member(:findings, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanFindingList, name: "findings"))
    ImageScanFindings.add_member(:enhanced_findings, ::Smithy::Schema::Shapes::MemberShape.new(target: EnhancedImageScanFindingList, name: "enhancedFindings"))
    ImageScanFindings.type = Types::ImageScanFindings
    ImageScanFindingsSummary.add_member(:image_scan_completed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanTimestamp, name: "imageScanCompletedAt"))
    ImageScanFindingsSummary.add_member(:vulnerability_source_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: VulnerabilitySourceUpdateTimestamp, name: "vulnerabilitySourceUpdatedAt"))
    ImageScanFindingsSummary.add_member(:finding_severity_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingSeverityCounts, name: "findingSeverityCounts"))
    ImageScanFindingsSummary.type = Types::ImageScanFindingsSummary
    ImageScanStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanStatus, name: "status"))
    ImageScanStatus.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanStatusDescription, name: "description"))
    ImageScanStatus.type = Types::ImageScanStatus
    ImageScanningConfiguration.add_member(:scan_on_push, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanOnPushFlag, name: "scanOnPush", traits: {"smithy.api#default" => false}))
    ImageScanningConfiguration.type = Types::ImageScanningConfiguration
    ImageTagAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ImageTagAlreadyExistsException.type = Types::ImageTagAlreadyExistsException
    ImageTagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageTag, name: "member"))
    ImageTagMutability.add_member(:mutable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MUTABLE", traits: {"smithy.api#enumValue" => "MUTABLE"}))
    ImageTagMutability.add_member(:immutable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMMUTABLE", traits: {"smithy.api#enumValue" => "IMMUTABLE"}))
    ImageTagMutability.add_member(:immutable_with_exclusion, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMMUTABLE_WITH_EXCLUSION", traits: {"smithy.api#enumValue" => "IMMUTABLE_WITH_EXCLUSION"}))
    ImageTagMutability.add_member(:mutable_with_exclusion, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MUTABLE_WITH_EXCLUSION", traits: {"smithy.api#enumValue" => "MUTABLE_WITH_EXCLUSION"}))
    ImageTagMutabilityExclusionFilter.add_member(:filter_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageTagMutabilityExclusionFilterType, name: "filterType", traits: {"smithy.api#required" => {}}))
    ImageTagMutabilityExclusionFilter.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageTagMutabilityExclusionFilterValue, name: "filter", traits: {"smithy.api#required" => {}}))
    ImageTagMutabilityExclusionFilter.type = Types::ImageTagMutabilityExclusionFilter
    ImageTagMutabilityExclusionFilterType.add_member(:wildcard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WILDCARD", traits: {"smithy.api#enumValue" => "WILDCARD"}))
    ImageTagMutabilityExclusionFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageTagMutabilityExclusionFilter, name: "member"))
    ImageTagsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageTag, name: "member"))
    InitiateLayerUploadRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    InitiateLayerUploadRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    InitiateLayerUploadRequest.type = Types::InitiateLayerUploadRequest
    InitiateLayerUploadResponse.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadId, name: "uploadId"))
    InitiateLayerUploadResponse.add_member(:part_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PartSize, name: "partSize"))
    InitiateLayerUploadResponse.type = Types::InitiateLayerUploadResponse
    InvalidLayerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidLayerException.type = Types::InvalidLayerException
    InvalidLayerPartException.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    InvalidLayerPartException.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    InvalidLayerPartException.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadId, name: "uploadId"))
    InvalidLayerPartException.add_member(:last_valid_byte_received, ::Smithy::Schema::Shapes::MemberShape.new(target: PartSize, name: "lastValidByteReceived"))
    InvalidLayerPartException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidLayerPartException.type = Types::InvalidLayerPartException
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidParameterException.type = Types::InvalidParameterException
    InvalidTagParameterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidTagParameterException.type = Types::InvalidTagParameterException
    KmsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    KmsException.add_member(:kms_error, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsError, name: "kmsError"))
    KmsException.type = Types::KmsException
    Layer.add_member(:layer_digest, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerDigest, name: "layerDigest"))
    Layer.add_member(:layer_availability, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerAvailability, name: "layerAvailability"))
    Layer.add_member(:layer_size, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerSizeInBytes, name: "layerSize"))
    Layer.add_member(:media_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaType, name: "mediaType"))
    Layer.type = Types::Layer
    LayerAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    LayerAlreadyExistsException.type = Types::LayerAlreadyExistsException
    LayerAvailability.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    LayerAvailability.add_member(:unavailable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNAVAILABLE", traits: {"smithy.api#enumValue" => "UNAVAILABLE"}))
    LayerDigestList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerDigest, name: "member"))
    LayerFailure.add_member(:layer_digest, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchedOperationLayerDigest, name: "layerDigest"))
    LayerFailure.add_member(:failure_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerFailureCode, name: "failureCode"))
    LayerFailure.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerFailureReason, name: "failureReason"))
    LayerFailure.type = Types::LayerFailure
    LayerFailureCode.add_member(:invalid_layer_digest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidLayerDigest", traits: {"smithy.api#enumValue" => "InvalidLayerDigest"}))
    LayerFailureCode.add_member(:missing_layer_digest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MissingLayerDigest", traits: {"smithy.api#enumValue" => "MissingLayerDigest"}))
    LayerFailureList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerFailure, name: "member"))
    LayerInaccessibleException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    LayerInaccessibleException.type = Types::LayerInaccessibleException
    LayerList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Layer, name: "member"))
    LayerPartTooSmallException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    LayerPartTooSmallException.type = Types::LayerPartTooSmallException
    LayersNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    LayersNotFoundException.type = Types::LayersNotFoundException
    LifecyclePolicyNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    LifecyclePolicyNotFoundException.type = Types::LifecyclePolicyNotFoundException
    LifecyclePolicyPreviewFilter.add_member(:tag_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TagStatus, name: "tagStatus"))
    LifecyclePolicyPreviewFilter.type = Types::LifecyclePolicyPreviewFilter
    LifecyclePolicyPreviewInProgressException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    LifecyclePolicyPreviewInProgressException.type = Types::LifecyclePolicyPreviewInProgressException
    LifecyclePolicyPreviewNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    LifecyclePolicyPreviewNotFoundException.type = Types::LifecyclePolicyPreviewNotFoundException
    LifecyclePolicyPreviewResult.add_member(:image_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageTagList, name: "imageTags"))
    LifecyclePolicyPreviewResult.add_member(:image_digest, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageDigest, name: "imageDigest"))
    LifecyclePolicyPreviewResult.add_member(:image_pushed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: PushTimestamp, name: "imagePushedAt"))
    LifecyclePolicyPreviewResult.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyRuleAction, name: "action"))
    LifecyclePolicyPreviewResult.add_member(:applied_rule_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyRulePriority, name: "appliedRulePriority"))
    LifecyclePolicyPreviewResult.type = Types::LifecyclePolicyPreviewResult
    LifecyclePolicyPreviewResultList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyPreviewResult, name: "member"))
    LifecyclePolicyPreviewStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    LifecyclePolicyPreviewStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    LifecyclePolicyPreviewStatus.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRED", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    LifecyclePolicyPreviewStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    LifecyclePolicyPreviewSummary.add_member(:expiring_image_total_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageCount, name: "expiringImageTotalCount"))
    LifecyclePolicyPreviewSummary.type = Types::LifecyclePolicyPreviewSummary
    LifecyclePolicyRuleAction.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageActionType, name: "type"))
    LifecyclePolicyRuleAction.type = Types::LifecyclePolicyRuleAction
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    ListImagesFilter.add_member(:tag_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TagStatus, name: "tagStatus"))
    ListImagesFilter.type = Types::ListImagesFilter
    ListImagesRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    ListImagesRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    ListImagesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListImagesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListImagesRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ListImagesFilter, name: "filter"))
    ListImagesRequest.type = Types::ListImagesRequest
    ListImagesResponse.add_member(:image_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageIdentifierList, name: "imageIds"))
    ListImagesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListImagesResponse.type = Types::ListImagesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MediaTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaType, name: "member"))
    PackageVulnerabilityDetails.add_member(:cvss, ::Smithy::Schema::Shapes::MemberShape.new(target: CvssScoreList, name: "cvss"))
    PackageVulnerabilityDetails.add_member(:reference_urls, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceUrlsList, name: "referenceUrls"))
    PackageVulnerabilityDetails.add_member(:related_vulnerabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: RelatedVulnerabilitiesList, name: "relatedVulnerabilities"))
    PackageVulnerabilityDetails.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, name: "source"))
    PackageVulnerabilityDetails.add_member(:source_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "sourceUrl"))
    PackageVulnerabilityDetails.add_member(:vendor_created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "vendorCreatedAt"))
    PackageVulnerabilityDetails.add_member(:vendor_severity, ::Smithy::Schema::Shapes::MemberShape.new(target: Severity, name: "vendorSeverity"))
    PackageVulnerabilityDetails.add_member(:vendor_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "vendorUpdatedAt"))
    PackageVulnerabilityDetails.add_member(:vulnerability_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VulnerabilityId, name: "vulnerabilityId"))
    PackageVulnerabilityDetails.add_member(:vulnerable_packages, ::Smithy::Schema::Shapes::MemberShape.new(target: VulnerablePackagesList, name: "vulnerablePackages"))
    PackageVulnerabilityDetails.type = Types::PackageVulnerabilityDetails
    PrefixList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "member"))
    PullThroughCacheRule.add_member(:ecr_repository_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: PullThroughCacheRuleRepositoryPrefix, name: "ecrRepositoryPrefix"))
    PullThroughCacheRule.add_member(:upstream_registry_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "upstreamRegistryUrl"))
    PullThroughCacheRule.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTimestamp, name: "createdAt"))
    PullThroughCacheRule.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    PullThroughCacheRule.add_member(:credential_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialArn, name: "credentialArn"))
    PullThroughCacheRule.add_member(:custom_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomRoleArn, name: "customRoleArn"))
    PullThroughCacheRule.add_member(:upstream_repository_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: PullThroughCacheRuleRepositoryPrefix, name: "upstreamRepositoryPrefix"))
    PullThroughCacheRule.add_member(:upstream_registry, ::Smithy::Schema::Shapes::MemberShape.new(target: UpstreamRegistry, name: "upstreamRegistry"))
    PullThroughCacheRule.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedTimestamp, name: "updatedAt"))
    PullThroughCacheRule.type = Types::PullThroughCacheRule
    PullThroughCacheRuleAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    PullThroughCacheRuleAlreadyExistsException.type = Types::PullThroughCacheRuleAlreadyExistsException
    PullThroughCacheRuleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PullThroughCacheRule, name: "member"))
    PullThroughCacheRuleNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    PullThroughCacheRuleNotFoundException.type = Types::PullThroughCacheRuleNotFoundException
    PullThroughCacheRuleRepositoryPrefixList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PullThroughCacheRuleRepositoryPrefix, name: "member"))
    PutAccountSettingRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountSettingName, name: "name", traits: {"smithy.api#required" => {}}))
    PutAccountSettingRequest.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountSettingValue, name: "value", traits: {"smithy.api#required" => {}}))
    PutAccountSettingRequest.type = Types::PutAccountSettingRequest
    PutAccountSettingResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountSettingName, name: "name"))
    PutAccountSettingResponse.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountSettingValue, name: "value"))
    PutAccountSettingResponse.type = Types::PutAccountSettingResponse
    PutImageRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    PutImageRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    PutImageRequest.add_member(:image_manifest, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageManifest, name: "imageManifest", traits: {"smithy.api#required" => {}}))
    PutImageRequest.add_member(:image_manifest_media_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaType, name: "imageManifestMediaType"))
    PutImageRequest.add_member(:image_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageTag, name: "imageTag"))
    PutImageRequest.add_member(:image_digest, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageDigest, name: "imageDigest"))
    PutImageRequest.type = Types::PutImageRequest
    PutImageResponse.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: Image, name: "image"))
    PutImageResponse.type = Types::PutImageResponse
    PutImageScanningConfigurationRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    PutImageScanningConfigurationRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    PutImageScanningConfigurationRequest.add_member(:image_scanning_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanningConfiguration, name: "imageScanningConfiguration", traits: {"smithy.api#required" => {}}))
    PutImageScanningConfigurationRequest.type = Types::PutImageScanningConfigurationRequest
    PutImageScanningConfigurationResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    PutImageScanningConfigurationResponse.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    PutImageScanningConfigurationResponse.add_member(:image_scanning_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanningConfiguration, name: "imageScanningConfiguration"))
    PutImageScanningConfigurationResponse.type = Types::PutImageScanningConfigurationResponse
    PutImageTagMutabilityRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    PutImageTagMutabilityRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    PutImageTagMutabilityRequest.add_member(:image_tag_mutability, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageTagMutability, name: "imageTagMutability", traits: {"smithy.api#required" => {}}))
    PutImageTagMutabilityRequest.add_member(:image_tag_mutability_exclusion_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageTagMutabilityExclusionFilters, name: "imageTagMutabilityExclusionFilters"))
    PutImageTagMutabilityRequest.type = Types::PutImageTagMutabilityRequest
    PutImageTagMutabilityResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    PutImageTagMutabilityResponse.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    PutImageTagMutabilityResponse.add_member(:image_tag_mutability, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageTagMutability, name: "imageTagMutability"))
    PutImageTagMutabilityResponse.add_member(:image_tag_mutability_exclusion_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageTagMutabilityExclusionFilters, name: "imageTagMutabilityExclusionFilters"))
    PutImageTagMutabilityResponse.type = Types::PutImageTagMutabilityResponse
    PutLifecyclePolicyRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    PutLifecyclePolicyRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    PutLifecyclePolicyRequest.add_member(:lifecycle_policy_text, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyText, name: "lifecyclePolicyText", traits: {"smithy.api#required" => {}}))
    PutLifecyclePolicyRequest.type = Types::PutLifecyclePolicyRequest
    PutLifecyclePolicyResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    PutLifecyclePolicyResponse.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    PutLifecyclePolicyResponse.add_member(:lifecycle_policy_text, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyText, name: "lifecyclePolicyText"))
    PutLifecyclePolicyResponse.type = Types::PutLifecyclePolicyResponse
    PutRegistryPolicyRequest.add_member(:policy_text, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryPolicyText, name: "policyText", traits: {"smithy.api#required" => {}}))
    PutRegistryPolicyRequest.type = Types::PutRegistryPolicyRequest
    PutRegistryPolicyResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    PutRegistryPolicyResponse.add_member(:policy_text, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryPolicyText, name: "policyText"))
    PutRegistryPolicyResponse.type = Types::PutRegistryPolicyResponse
    PutRegistryScanningConfigurationRequest.add_member(:scan_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanType, name: "scanType"))
    PutRegistryScanningConfigurationRequest.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryScanningRuleList, name: "rules"))
    PutRegistryScanningConfigurationRequest.type = Types::PutRegistryScanningConfigurationRequest
    PutRegistryScanningConfigurationResponse.add_member(:registry_scanning_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryScanningConfiguration, name: "registryScanningConfiguration"))
    PutRegistryScanningConfigurationResponse.type = Types::PutRegistryScanningConfigurationResponse
    PutReplicationConfigurationRequest.add_member(:replication_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfiguration, name: "replicationConfiguration", traits: {"smithy.api#required" => {}}))
    PutReplicationConfigurationRequest.type = Types::PutReplicationConfigurationRequest
    PutReplicationConfigurationResponse.add_member(:replication_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfiguration, name: "replicationConfiguration"))
    PutReplicationConfigurationResponse.type = Types::PutReplicationConfigurationResponse
    RCTAppliedFor.add_member(:replication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLICATION", traits: {"smithy.api#enumValue" => "REPLICATION"}))
    RCTAppliedFor.add_member(:pull_through_cache, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PULL_THROUGH_CACHE", traits: {"smithy.api#enumValue" => "PULL_THROUGH_CACHE"}))
    RCTAppliedForList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RCTAppliedFor, name: "member"))
    Recommendation.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "url"))
    Recommendation.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationText, name: "text"))
    Recommendation.type = Types::Recommendation
    ReferenceUrlsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "member"))
    ReferencedImagesNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ReferencedImagesNotFoundException.type = Types::ReferencedImagesNotFoundException
    RegistryPolicyNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    RegistryPolicyNotFoundException.type = Types::RegistryPolicyNotFoundException
    RegistryScanningConfiguration.add_member(:scan_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanType, name: "scanType"))
    RegistryScanningConfiguration.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryScanningRuleList, name: "rules"))
    RegistryScanningConfiguration.type = Types::RegistryScanningConfiguration
    RegistryScanningRule.add_member(:scan_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanFrequency, name: "scanFrequency", traits: {"smithy.api#required" => {}}))
    RegistryScanningRule.add_member(:repository_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanningRepositoryFilterList, name: "repositoryFilters", traits: {"smithy.api#required" => {}}))
    RegistryScanningRule.type = Types::RegistryScanningRule
    RegistryScanningRuleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryScanningRule, name: "member"))
    RelatedVulnerabilitiesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RelatedVulnerability, name: "member"))
    Remediation.add_member(:recommendation, ::Smithy::Schema::Shapes::MemberShape.new(target: Recommendation, name: "recommendation"))
    Remediation.type = Types::Remediation
    ReplicationConfiguration.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationRuleList, name: "rules", traits: {"smithy.api#required" => {}}))
    ReplicationConfiguration.type = Types::ReplicationConfiguration
    ReplicationDestination.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "region", traits: {"smithy.api#required" => {}}))
    ReplicationDestination.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId", traits: {"smithy.api#required" => {}}))
    ReplicationDestination.type = Types::ReplicationDestination
    ReplicationDestinationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationDestination, name: "member"))
    ReplicationRule.add_member(:destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationDestinationList, name: "destinations", traits: {"smithy.api#required" => {}}))
    ReplicationRule.add_member(:repository_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryFilterList, name: "repositoryFilters"))
    ReplicationRule.type = Types::ReplicationRule
    ReplicationRuleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationRule, name: "member"))
    ReplicationStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ReplicationStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    ReplicationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    Repository.add_member(:repository_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "repositoryArn"))
    Repository.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    Repository.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    Repository.add_member(:repository_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "repositoryUri"))
    Repository.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTimestamp, name: "createdAt"))
    Repository.add_member(:image_tag_mutability, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageTagMutability, name: "imageTagMutability"))
    Repository.add_member(:image_tag_mutability_exclusion_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageTagMutabilityExclusionFilters, name: "imageTagMutabilityExclusionFilters"))
    Repository.add_member(:image_scanning_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanningConfiguration, name: "imageScanningConfiguration"))
    Repository.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "encryptionConfiguration"))
    Repository.type = Types::Repository
    RepositoryAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    RepositoryAlreadyExistsException.type = Types::RepositoryAlreadyExistsException
    RepositoryCreationTemplate.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "prefix"))
    RepositoryCreationTemplate.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryTemplateDescription, name: "description"))
    RepositoryCreationTemplate.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfigurationForRepositoryCreationTemplate, name: "encryptionConfiguration"))
    RepositoryCreationTemplate.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "resourceTags"))
    RepositoryCreationTemplate.add_member(:image_tag_mutability, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageTagMutability, name: "imageTagMutability"))
    RepositoryCreationTemplate.add_member(:image_tag_mutability_exclusion_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageTagMutabilityExclusionFilters, name: "imageTagMutabilityExclusionFilters"))
    RepositoryCreationTemplate.add_member(:repository_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryPolicyText, name: "repositoryPolicy"))
    RepositoryCreationTemplate.add_member(:lifecycle_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyTextForRepositoryCreationTemplate, name: "lifecyclePolicy"))
    RepositoryCreationTemplate.add_member(:applied_for, ::Smithy::Schema::Shapes::MemberShape.new(target: RCTAppliedForList, name: "appliedFor"))
    RepositoryCreationTemplate.add_member(:custom_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomRoleArn, name: "customRoleArn"))
    RepositoryCreationTemplate.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "createdAt"))
    RepositoryCreationTemplate.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "updatedAt"))
    RepositoryCreationTemplate.type = Types::RepositoryCreationTemplate
    RepositoryCreationTemplateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryCreationTemplate, name: "member"))
    RepositoryFilter.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryFilterValue, name: "filter", traits: {"smithy.api#required" => {}}))
    RepositoryFilter.add_member(:filter_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryFilterType, name: "filterType", traits: {"smithy.api#required" => {}}))
    RepositoryFilter.type = Types::RepositoryFilter
    RepositoryFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryFilter, name: "member"))
    RepositoryFilterType.add_member(:prefix_match, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PREFIX_MATCH", traits: {"smithy.api#enumValue" => "PREFIX_MATCH"}))
    RepositoryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Repository, name: "member"))
    RepositoryNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "member"))
    RepositoryNotEmptyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    RepositoryNotEmptyException.type = Types::RepositoryNotEmptyException
    RepositoryNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    RepositoryNotFoundException.type = Types::RepositoryNotFoundException
    RepositoryPolicyNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    RepositoryPolicyNotFoundException.type = Types::RepositoryPolicyNotFoundException
    RepositoryScanningConfiguration.add_member(:repository_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "repositoryArn"))
    RepositoryScanningConfiguration.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    RepositoryScanningConfiguration.add_member(:scan_on_push, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanOnPushFlag, name: "scanOnPush", traits: {"smithy.api#default" => false}))
    RepositoryScanningConfiguration.add_member(:scan_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanFrequency, name: "scanFrequency"))
    RepositoryScanningConfiguration.add_member(:applied_scan_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanningRepositoryFilterList, name: "appliedScanFilters"))
    RepositoryScanningConfiguration.type = Types::RepositoryScanningConfiguration
    RepositoryScanningConfigurationFailure.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    RepositoryScanningConfigurationFailure.add_member(:failure_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanningConfigurationFailureCode, name: "failureCode"))
    RepositoryScanningConfigurationFailure.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanningConfigurationFailureReason, name: "failureReason"))
    RepositoryScanningConfigurationFailure.type = Types::RepositoryScanningConfigurationFailure
    RepositoryScanningConfigurationFailureList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryScanningConfigurationFailure, name: "member"))
    RepositoryScanningConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryScanningConfiguration, name: "member"))
    Resource.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDetails, name: "details"))
    Resource.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id"))
    Resource.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    Resource.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Type, name: "type"))
    Resource.type = Types::Resource
    ResourceDetails.add_member(:aws_ecr_container_image, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsEcrContainerImageDetails, name: "awsEcrContainerImage"))
    ResourceDetails.type = Types::ResourceDetails
    ResourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "member"))
    ScanFrequency.add_member(:scan_on_push, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCAN_ON_PUSH", traits: {"smithy.api#enumValue" => "SCAN_ON_PUSH"}))
    ScanFrequency.add_member(:continuous_scan, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTINUOUS_SCAN", traits: {"smithy.api#enumValue" => "CONTINUOUS_SCAN"}))
    ScanFrequency.add_member(:manual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANUAL", traits: {"smithy.api#enumValue" => "MANUAL"}))
    ScanNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ScanNotFoundException.type = Types::ScanNotFoundException
    ScanStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ScanStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    ScanStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ScanStatus.add_member(:unsupported_image, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSUPPORTED_IMAGE", traits: {"smithy.api#enumValue" => "UNSUPPORTED_IMAGE"}))
    ScanStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ScanStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ScanStatus.add_member(:scan_eligibility_expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCAN_ELIGIBILITY_EXPIRED", traits: {"smithy.api#enumValue" => "SCAN_ELIGIBILITY_EXPIRED"}))
    ScanStatus.add_member(:findings_unavailable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FINDINGS_UNAVAILABLE", traits: {"smithy.api#enumValue" => "FINDINGS_UNAVAILABLE"}))
    ScanStatus.add_member(:limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "LIMIT_EXCEEDED"}))
    ScanType.add_member(:basic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BASIC", traits: {"smithy.api#enumValue" => "BASIC"}))
    ScanType.add_member(:enhanced, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENHANCED", traits: {"smithy.api#enumValue" => "ENHANCED"}))
    ScanningConfigurationFailureCode.add_member(:repository_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPOSITORY_NOT_FOUND", traits: {"smithy.api#enumValue" => "REPOSITORY_NOT_FOUND"}))
    ScanningConfigurationRepositoryNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "member"))
    ScanningRepositoryFilter.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanningRepositoryFilterValue, name: "filter", traits: {"smithy.api#required" => {}}))
    ScanningRepositoryFilter.add_member(:filter_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanningRepositoryFilterType, name: "filterType", traits: {"smithy.api#required" => {}}))
    ScanningRepositoryFilter.type = Types::ScanningRepositoryFilter
    ScanningRepositoryFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanningRepositoryFilter, name: "member"))
    ScanningRepositoryFilterType.add_member(:wildcard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WILDCARD", traits: {"smithy.api#enumValue" => "WILDCARD"}))
    ScoreDetails.add_member(:cvss, ::Smithy::Schema::Shapes::MemberShape.new(target: CvssScoreDetails, name: "cvss"))
    ScoreDetails.type = Types::ScoreDetails
    SecretNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SecretNotFoundException.type = Types::SecretNotFoundException
    ServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ServerException.type = Types::ServerException
    SetRepositoryPolicyRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    SetRepositoryPolicyRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    SetRepositoryPolicyRequest.add_member(:policy_text, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryPolicyText, name: "policyText", traits: {"smithy.api#required" => {}}))
    SetRepositoryPolicyRequest.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: ForceFlag, name: "force", traits: {"smithy.api#default" => false}))
    SetRepositoryPolicyRequest.type = Types::SetRepositoryPolicyRequest
    SetRepositoryPolicyResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    SetRepositoryPolicyResponse.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    SetRepositoryPolicyResponse.add_member(:policy_text, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryPolicyText, name: "policyText"))
    SetRepositoryPolicyResponse.type = Types::SetRepositoryPolicyResponse
    StartImageScanRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    StartImageScanRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    StartImageScanRequest.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageIdentifier, name: "imageId", traits: {"smithy.api#required" => {}}))
    StartImageScanRequest.type = Types::StartImageScanRequest
    StartImageScanResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    StartImageScanResponse.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    StartImageScanResponse.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageIdentifier, name: "imageId"))
    StartImageScanResponse.add_member(:image_scan_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanStatus, name: "imageScanStatus"))
    StartImageScanResponse.type = Types::StartImageScanResponse
    StartLifecyclePolicyPreviewRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    StartLifecyclePolicyPreviewRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    StartLifecyclePolicyPreviewRequest.add_member(:lifecycle_policy_text, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyText, name: "lifecyclePolicyText"))
    StartLifecyclePolicyPreviewRequest.type = Types::StartLifecyclePolicyPreviewRequest
    StartLifecyclePolicyPreviewResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    StartLifecyclePolicyPreviewResponse.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    StartLifecyclePolicyPreviewResponse.add_member(:lifecycle_policy_text, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyText, name: "lifecyclePolicyText"))
    StartLifecyclePolicyPreviewResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyPreviewStatus, name: "status"))
    StartLifecyclePolicyPreviewResponse.type = Types::StartLifecyclePolicyPreviewResponse
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TagStatus.add_member(:tagged, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAGGED", traits: {"smithy.api#enumValue" => "TAGGED"}))
    TagStatus.add_member(:untagged, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNTAGGED", traits: {"smithy.api#enumValue" => "UNTAGGED"}))
    TagStatus.add_member(:any, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANY", traits: {"smithy.api#enumValue" => "ANY"}))
    Tags.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    Tags.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TemplateAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    TemplateAlreadyExistsException.type = Types::TemplateAlreadyExistsException
    TemplateNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    TemplateNotFoundException.type = Types::TemplateNotFoundException
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    TooManyTagsException.type = Types::TooManyTagsException
    UnableToAccessSecretException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    UnableToAccessSecretException.type = Types::UnableToAccessSecretException
    UnableToDecryptSecretValueException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    UnableToDecryptSecretValueException.type = Types::UnableToDecryptSecretValueException
    UnableToGetUpstreamImageException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    UnableToGetUpstreamImageException.type = Types::UnableToGetUpstreamImageException
    UnableToGetUpstreamLayerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    UnableToGetUpstreamLayerException.type = Types::UnableToGetUpstreamLayerException
    UnsupportedImageTypeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    UnsupportedImageTypeException.type = Types::UnsupportedImageTypeException
    UnsupportedUpstreamRegistryException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    UnsupportedUpstreamRegistryException.type = Types::UnsupportedUpstreamRegistryException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdatePullThroughCacheRuleRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    UpdatePullThroughCacheRuleRequest.add_member(:ecr_repository_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: PullThroughCacheRuleRepositoryPrefix, name: "ecrRepositoryPrefix", traits: {"smithy.api#required" => {}}))
    UpdatePullThroughCacheRuleRequest.add_member(:credential_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialArn, name: "credentialArn"))
    UpdatePullThroughCacheRuleRequest.add_member(:custom_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomRoleArn, name: "customRoleArn"))
    UpdatePullThroughCacheRuleRequest.type = Types::UpdatePullThroughCacheRuleRequest
    UpdatePullThroughCacheRuleResponse.add_member(:ecr_repository_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: PullThroughCacheRuleRepositoryPrefix, name: "ecrRepositoryPrefix"))
    UpdatePullThroughCacheRuleResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    UpdatePullThroughCacheRuleResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedTimestamp, name: "updatedAt"))
    UpdatePullThroughCacheRuleResponse.add_member(:credential_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialArn, name: "credentialArn"))
    UpdatePullThroughCacheRuleResponse.add_member(:custom_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomRoleArn, name: "customRoleArn"))
    UpdatePullThroughCacheRuleResponse.add_member(:upstream_repository_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: PullThroughCacheRuleRepositoryPrefix, name: "upstreamRepositoryPrefix"))
    UpdatePullThroughCacheRuleResponse.type = Types::UpdatePullThroughCacheRuleResponse
    UpdateRepositoryCreationTemplateRequest.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "prefix", traits: {"smithy.api#required" => {}}))
    UpdateRepositoryCreationTemplateRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryTemplateDescription, name: "description"))
    UpdateRepositoryCreationTemplateRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfigurationForRepositoryCreationTemplate, name: "encryptionConfiguration"))
    UpdateRepositoryCreationTemplateRequest.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "resourceTags"))
    UpdateRepositoryCreationTemplateRequest.add_member(:image_tag_mutability, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageTagMutability, name: "imageTagMutability"))
    UpdateRepositoryCreationTemplateRequest.add_member(:image_tag_mutability_exclusion_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageTagMutabilityExclusionFilters, name: "imageTagMutabilityExclusionFilters"))
    UpdateRepositoryCreationTemplateRequest.add_member(:repository_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryPolicyText, name: "repositoryPolicy"))
    UpdateRepositoryCreationTemplateRequest.add_member(:lifecycle_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyTextForRepositoryCreationTemplate, name: "lifecyclePolicy"))
    UpdateRepositoryCreationTemplateRequest.add_member(:applied_for, ::Smithy::Schema::Shapes::MemberShape.new(target: RCTAppliedForList, name: "appliedFor"))
    UpdateRepositoryCreationTemplateRequest.add_member(:custom_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomRoleArn, name: "customRoleArn"))
    UpdateRepositoryCreationTemplateRequest.type = Types::UpdateRepositoryCreationTemplateRequest
    UpdateRepositoryCreationTemplateResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    UpdateRepositoryCreationTemplateResponse.add_member(:repository_creation_template, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryCreationTemplate, name: "repositoryCreationTemplate"))
    UpdateRepositoryCreationTemplateResponse.type = Types::UpdateRepositoryCreationTemplateResponse
    UploadLayerPartRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    UploadLayerPartRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    UploadLayerPartRequest.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadId, name: "uploadId", traits: {"smithy.api#required" => {}}))
    UploadLayerPartRequest.add_member(:part_first_byte, ::Smithy::Schema::Shapes::MemberShape.new(target: PartSize, name: "partFirstByte", traits: {"smithy.api#required" => {}}))
    UploadLayerPartRequest.add_member(:part_last_byte, ::Smithy::Schema::Shapes::MemberShape.new(target: PartSize, name: "partLastByte", traits: {"smithy.api#required" => {}}))
    UploadLayerPartRequest.add_member(:layer_part_blob, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerPartBlob, name: "layerPartBlob", traits: {"smithy.api#required" => {}}))
    UploadLayerPartRequest.type = Types::UploadLayerPartRequest
    UploadLayerPartResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    UploadLayerPartResponse.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    UploadLayerPartResponse.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadId, name: "uploadId"))
    UploadLayerPartResponse.add_member(:last_byte_received, ::Smithy::Schema::Shapes::MemberShape.new(target: PartSize, name: "lastByteReceived"))
    UploadLayerPartResponse.type = Types::UploadLayerPartResponse
    UploadNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    UploadNotFoundException.type = Types::UploadNotFoundException
    UpstreamRegistry.add_member(:ecr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Ecr", traits: {"smithy.api#enumValue" => "ecr"}))
    UpstreamRegistry.add_member(:ecr_public, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EcrPublic", traits: {"smithy.api#enumValue" => "ecr-public"}))
    UpstreamRegistry.add_member(:quay, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Quay", traits: {"smithy.api#enumValue" => "quay"}))
    UpstreamRegistry.add_member(:k8s, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "K8s", traits: {"smithy.api#enumValue" => "k8s"}))
    UpstreamRegistry.add_member(:docker_hub, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DockerHub", traits: {"smithy.api#enumValue" => "docker-hub"}))
    UpstreamRegistry.add_member(:git_hub_container_registry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GitHubContainerRegistry", traits: {"smithy.api#enumValue" => "github-container-registry"}))
    UpstreamRegistry.add_member(:azure_container_registry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AzureContainerRegistry", traits: {"smithy.api#enumValue" => "azure-container-registry"}))
    UpstreamRegistry.add_member(:git_lab_container_registry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GitLabContainerRegistry", traits: {"smithy.api#enumValue" => "gitlab-container-registry"}))
    ValidatePullThroughCacheRuleRequest.add_member(:ecr_repository_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: PullThroughCacheRuleRepositoryPrefix, name: "ecrRepositoryPrefix", traits: {"smithy.api#required" => {}}))
    ValidatePullThroughCacheRuleRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    ValidatePullThroughCacheRuleRequest.type = Types::ValidatePullThroughCacheRuleRequest
    ValidatePullThroughCacheRuleResponse.add_member(:ecr_repository_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: PullThroughCacheRuleRepositoryPrefix, name: "ecrRepositoryPrefix"))
    ValidatePullThroughCacheRuleResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId"))
    ValidatePullThroughCacheRuleResponse.add_member(:upstream_registry_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "upstreamRegistryUrl"))
    ValidatePullThroughCacheRuleResponse.add_member(:credential_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialArn, name: "credentialArn"))
    ValidatePullThroughCacheRuleResponse.add_member(:custom_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomRoleArn, name: "customRoleArn"))
    ValidatePullThroughCacheRuleResponse.add_member(:upstream_repository_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: PullThroughCacheRuleRepositoryPrefix, name: "upstreamRepositoryPrefix"))
    ValidatePullThroughCacheRuleResponse.add_member(:is_valid, ::Smithy::Schema::Shapes::MemberShape.new(target: IsPTCRuleValid, name: "isValid", traits: {"smithy.api#default" => false}))
    ValidatePullThroughCacheRuleResponse.add_member(:failure, ::Smithy::Schema::Shapes::MemberShape.new(target: PTCValidateFailure, name: "failure"))
    ValidatePullThroughCacheRuleResponse.type = Types::ValidatePullThroughCacheRuleResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ValidationException.type = Types::ValidationException
    VulnerablePackage.add_member(:arch, ::Smithy::Schema::Shapes::MemberShape.new(target: Arch, name: "arch"))
    VulnerablePackage.add_member(:epoch, ::Smithy::Schema::Shapes::MemberShape.new(target: Epoch, name: "epoch"))
    VulnerablePackage.add_member(:file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: FilePath, name: "filePath"))
    VulnerablePackage.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: VulnerablePackageName, name: "name"))
    VulnerablePackage.add_member(:package_manager, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageManager, name: "packageManager"))
    VulnerablePackage.add_member(:release, ::Smithy::Schema::Shapes::MemberShape.new(target: Release, name: "release"))
    VulnerablePackage.add_member(:source_layer_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceLayerHash, name: "sourceLayerHash"))
    VulnerablePackage.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "version"))
    VulnerablePackage.add_member(:fixed_in_version, ::Smithy::Schema::Shapes::MemberShape.new(target: FixedInVersion, name: "fixedInVersion"))
    VulnerablePackage.type = Types::VulnerablePackage
    VulnerablePackagesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VulnerablePackage, name: "member"))

    AmazonEC2ContainerRegistryV20150921 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.ecr#AmazonEC2ContainerRegistry_V20150921"
      service.name = "AmazonEC2ContainerRegistryV20150921"
      service.version = "2015-09-21"
      service.traits = {"aws.api#service" => {"sdkId" => "ECR", "arnNamespace" => "ecr", "cloudFormationName" => "ECR", "cloudTrailEventSource" => "ecr.amazonaws.com", "endpointPrefix" => "api.ecr"}, "aws.auth#sigv4" => {"name" => "ecr"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Elastic Container Registry", "smithy.api#xmlNamespace" => {"uri" => "http://ecr.amazonaws.com/doc/2015-09-21/"}}
      service.add_operation(:batch_check_layer_availability, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#BatchCheckLayerAvailability"
        operation.name = "BatchCheckLayerAvailability"
        operation.input = BatchCheckLayerAvailabilityRequest
        operation.output = BatchCheckLayerAvailabilityResponse
        operation.errors << InvalidParameterException
        operation.errors << RepositoryNotFoundException
        operation.errors << ServerException
        operation.traits = {}
      end)
      service.add_operation(:batch_delete_image, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#BatchDeleteImage"
        operation.name = "BatchDeleteImage"
        operation.input = BatchDeleteImageRequest
        operation.output = BatchDeleteImageResponse
        operation.errors << InvalidParameterException
        operation.errors << RepositoryNotFoundException
        operation.errors << ServerException
        operation.traits = {}
      end)
      service.add_operation(:batch_get_image, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#BatchGetImage"
        operation.name = "BatchGetImage"
        operation.input = BatchGetImageRequest
        operation.output = BatchGetImageResponse
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << RepositoryNotFoundException
        operation.errors << ServerException
        operation.errors << UnableToGetUpstreamImageException
        operation.traits = {}
      end)
      service.add_operation(:batch_get_repository_scanning_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#BatchGetRepositoryScanningConfiguration"
        operation.name = "BatchGetRepositoryScanningConfiguration"
        operation.input = BatchGetRepositoryScanningConfigurationRequest
        operation.output = BatchGetRepositoryScanningConfigurationResponse
        operation.errors << InvalidParameterException
        operation.errors << RepositoryNotFoundException
        operation.errors << ServerException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:complete_layer_upload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#CompleteLayerUpload"
        operation.name = "CompleteLayerUpload"
        operation.input = CompleteLayerUploadRequest
        operation.output = CompleteLayerUploadResponse
        operation.errors << EmptyUploadException
        operation.errors << InvalidLayerException
        operation.errors << InvalidParameterException
        operation.errors << KmsException
        operation.errors << LayerAlreadyExistsException
        operation.errors << LayerPartTooSmallException
        operation.errors << RepositoryNotFoundException
        operation.errors << ServerException
        operation.errors << UploadNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_pull_through_cache_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#CreatePullThroughCacheRule"
        operation.name = "CreatePullThroughCacheRule"
        operation.input = CreatePullThroughCacheRuleRequest
        operation.output = CreatePullThroughCacheRuleResponse
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << PullThroughCacheRuleAlreadyExistsException
        operation.errors << SecretNotFoundException
        operation.errors << ServerException
        operation.errors << UnableToAccessSecretException
        operation.errors << UnableToDecryptSecretValueException
        operation.errors << UnsupportedUpstreamRegistryException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_repository, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#CreateRepository"
        operation.name = "CreateRepository"
        operation.input = CreateRepositoryRequest
        operation.output = CreateRepositoryResponse
        operation.errors << InvalidParameterException
        operation.errors << InvalidTagParameterException
        operation.errors << KmsException
        operation.errors << LimitExceededException
        operation.errors << RepositoryAlreadyExistsException
        operation.errors << ServerException
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:create_repository_creation_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#CreateRepositoryCreationTemplate"
        operation.name = "CreateRepositoryCreationTemplate"
        operation.input = CreateRepositoryCreationTemplateRequest
        operation.output = CreateRepositoryCreationTemplateResponse
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << ServerException
        operation.errors << TemplateAlreadyExistsException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_lifecycle_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DeleteLifecyclePolicy"
        operation.name = "DeleteLifecyclePolicy"
        operation.input = DeleteLifecyclePolicyRequest
        operation.output = DeleteLifecyclePolicyResponse
        operation.errors << InvalidParameterException
        operation.errors << LifecyclePolicyNotFoundException
        operation.errors << RepositoryNotFoundException
        operation.errors << ServerException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_pull_through_cache_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DeletePullThroughCacheRule"
        operation.name = "DeletePullThroughCacheRule"
        operation.input = DeletePullThroughCacheRuleRequest
        operation.output = DeletePullThroughCacheRuleResponse
        operation.errors << InvalidParameterException
        operation.errors << PullThroughCacheRuleNotFoundException
        operation.errors << ServerException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_registry_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DeleteRegistryPolicy"
        operation.name = "DeleteRegistryPolicy"
        operation.input = DeleteRegistryPolicyRequest
        operation.output = DeleteRegistryPolicyResponse
        operation.errors << InvalidParameterException
        operation.errors << RegistryPolicyNotFoundException
        operation.errors << ServerException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_repository, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DeleteRepository"
        operation.name = "DeleteRepository"
        operation.input = DeleteRepositoryRequest
        operation.output = DeleteRepositoryResponse
        operation.errors << InvalidParameterException
        operation.errors << KmsException
        operation.errors << RepositoryNotEmptyException
        operation.errors << RepositoryNotFoundException
        operation.errors << ServerException
        operation.traits = {}
      end)
      service.add_operation(:delete_repository_creation_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DeleteRepositoryCreationTemplate"
        operation.name = "DeleteRepositoryCreationTemplate"
        operation.input = DeleteRepositoryCreationTemplateRequest
        operation.output = DeleteRepositoryCreationTemplateResponse
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << TemplateNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_repository_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DeleteRepositoryPolicy"
        operation.name = "DeleteRepositoryPolicy"
        operation.input = DeleteRepositoryPolicyRequest
        operation.output = DeleteRepositoryPolicyResponse
        operation.errors << InvalidParameterException
        operation.errors << RepositoryNotFoundException
        operation.errors << RepositoryPolicyNotFoundException
        operation.errors << ServerException
        operation.traits = {}
      end)
      service.add_operation(:describe_image_replication_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DescribeImageReplicationStatus"
        operation.name = "DescribeImageReplicationStatus"
        operation.input = DescribeImageReplicationStatusRequest
        operation.output = DescribeImageReplicationStatusResponse
        operation.errors << ImageNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << RepositoryNotFoundException
        operation.errors << ServerException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_image_scan_findings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DescribeImageScanFindings"
        operation.name = "DescribeImageScanFindings"
        operation.input = DescribeImageScanFindingsRequest
        operation.output = DescribeImageScanFindingsResponse
        operation.errors << ImageNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << RepositoryNotFoundException
        operation.errors << ScanNotFoundException
        operation.errors << ServerException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeImageScanFindings.new
      end)
      service.add_operation(:describe_images, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DescribeImages"
        operation.name = "DescribeImages"
        operation.input = DescribeImagesRequest
        operation.output = DescribeImagesResponse
        operation.errors << ImageNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << RepositoryNotFoundException
        operation.errors << ServerException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeImages.new
      end)
      service.add_operation(:describe_pull_through_cache_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DescribePullThroughCacheRules"
        operation.name = "DescribePullThroughCacheRules"
        operation.input = DescribePullThroughCacheRulesRequest
        operation.output = DescribePullThroughCacheRulesResponse
        operation.errors << InvalidParameterException
        operation.errors << PullThroughCacheRuleNotFoundException
        operation.errors << ServerException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribePullThroughCacheRules.new
      end)
      service.add_operation(:describe_registry, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DescribeRegistry"
        operation.name = "DescribeRegistry"
        operation.input = DescribeRegistryRequest
        operation.output = DescribeRegistryResponse
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_repositories, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DescribeRepositories"
        operation.name = "DescribeRepositories"
        operation.input = DescribeRepositoriesRequest
        operation.output = DescribeRepositoriesResponse
        operation.errors << InvalidParameterException
        operation.errors << RepositoryNotFoundException
        operation.errors << ServerException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "DescribeRepositoriesSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::DescribeRepositories.new
      end)
      service.add_operation(:describe_repository_creation_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DescribeRepositoryCreationTemplates"
        operation.name = "DescribeRepositoryCreationTemplates"
        operation.input = DescribeRepositoryCreationTemplatesRequest
        operation.output = DescribeRepositoryCreationTemplatesResponse
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeRepositoryCreationTemplates.new
      end)
      service.add_operation(:get_account_setting, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#GetAccountSetting"
        operation.name = "GetAccountSetting"
        operation.input = GetAccountSettingRequest
        operation.output = GetAccountSettingResponse
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_authorization_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#GetAuthorizationToken"
        operation.name = "GetAuthorizationToken"
        operation.input = GetAuthorizationTokenRequest
        operation.output = GetAuthorizationTokenResponse
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {}
      end)
      service.add_operation(:get_download_url_for_layer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#GetDownloadUrlForLayer"
        operation.name = "GetDownloadUrlForLayer"
        operation.input = GetDownloadUrlForLayerRequest
        operation.output = GetDownloadUrlForLayerResponse
        operation.errors << InvalidParameterException
        operation.errors << LayerInaccessibleException
        operation.errors << LayersNotFoundException
        operation.errors << RepositoryNotFoundException
        operation.errors << ServerException
        operation.errors << UnableToGetUpstreamLayerException
        operation.traits = {}
      end)
      service.add_operation(:get_lifecycle_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#GetLifecyclePolicy"
        operation.name = "GetLifecyclePolicy"
        operation.input = GetLifecyclePolicyRequest
        operation.output = GetLifecyclePolicyResponse
        operation.errors << InvalidParameterException
        operation.errors << LifecyclePolicyNotFoundException
        operation.errors << RepositoryNotFoundException
        operation.errors << ServerException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_lifecycle_policy_preview, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#GetLifecyclePolicyPreview"
        operation.name = "GetLifecyclePolicyPreview"
        operation.input = GetLifecyclePolicyPreviewRequest
        operation.output = GetLifecyclePolicyPreviewResponse
        operation.errors << InvalidParameterException
        operation.errors << LifecyclePolicyPreviewNotFoundException
        operation.errors << RepositoryNotFoundException
        operation.errors << ServerException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::GetLifecyclePolicyPreview.new
      end)
      service.add_operation(:get_registry_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#GetRegistryPolicy"
        operation.name = "GetRegistryPolicy"
        operation.input = GetRegistryPolicyRequest
        operation.output = GetRegistryPolicyResponse
        operation.errors << InvalidParameterException
        operation.errors << RegistryPolicyNotFoundException
        operation.errors << ServerException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_registry_scanning_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#GetRegistryScanningConfiguration"
        operation.name = "GetRegistryScanningConfiguration"
        operation.input = GetRegistryScanningConfigurationRequest
        operation.output = GetRegistryScanningConfigurationResponse
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_repository_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#GetRepositoryPolicy"
        operation.name = "GetRepositoryPolicy"
        operation.input = GetRepositoryPolicyRequest
        operation.output = GetRepositoryPolicyResponse
        operation.errors << InvalidParameterException
        operation.errors << RepositoryNotFoundException
        operation.errors << RepositoryPolicyNotFoundException
        operation.errors << ServerException
        operation.traits = {}
      end)
      service.add_operation(:initiate_layer_upload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#InitiateLayerUpload"
        operation.name = "InitiateLayerUpload"
        operation.input = InitiateLayerUploadRequest
        operation.output = InitiateLayerUploadResponse
        operation.errors << InvalidParameterException
        operation.errors << KmsException
        operation.errors << RepositoryNotFoundException
        operation.errors << ServerException
        operation.traits = {}
      end)
      service.add_operation(:list_images, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#ListImages"
        operation.name = "ListImages"
        operation.input = ListImagesRequest
        operation.output = ListImagesResponse
        operation.errors << InvalidParameterException
        operation.errors << RepositoryNotFoundException
        operation.errors << ServerException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListImagesFailure", "params" => {"repositoryName" => "not-a-real-repository"}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"failure" => {}}}]}
        operation[:paginator] = Paginators::ListImages.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InvalidParameterException
        operation.errors << RepositoryNotFoundException
        operation.errors << ServerException
        operation.traits = {}
      end)
      service.add_operation(:put_account_setting, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#PutAccountSetting"
        operation.name = "PutAccountSetting"
        operation.input = PutAccountSettingRequest
        operation.output = PutAccountSettingResponse
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << ServerException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:put_image, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#PutImage"
        operation.name = "PutImage"
        operation.input = PutImageRequest
        operation.output = PutImageResponse
        operation.errors << ImageAlreadyExistsException
        operation.errors << ImageDigestDoesNotMatchException
        operation.errors << ImageTagAlreadyExistsException
        operation.errors << InvalidParameterException
        operation.errors << KmsException
        operation.errors << LayersNotFoundException
        operation.errors << LimitExceededException
        operation.errors << ReferencedImagesNotFoundException
        operation.errors << RepositoryNotFoundException
        operation.errors << ServerException
        operation.traits = {}
      end)
      service.add_operation(:put_image_scanning_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#PutImageScanningConfiguration"
        operation.name = "PutImageScanningConfiguration"
        operation.input = PutImageScanningConfigurationRequest
        operation.output = PutImageScanningConfigurationResponse
        operation.errors << InvalidParameterException
        operation.errors << RepositoryNotFoundException
        operation.errors << ServerException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:put_image_tag_mutability, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#PutImageTagMutability"
        operation.name = "PutImageTagMutability"
        operation.input = PutImageTagMutabilityRequest
        operation.output = PutImageTagMutabilityResponse
        operation.errors << InvalidParameterException
        operation.errors << RepositoryNotFoundException
        operation.errors << ServerException
        operation.traits = {}
      end)
      service.add_operation(:put_lifecycle_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#PutLifecyclePolicy"
        operation.name = "PutLifecyclePolicy"
        operation.input = PutLifecyclePolicyRequest
        operation.output = PutLifecyclePolicyResponse
        operation.errors << InvalidParameterException
        operation.errors << RepositoryNotFoundException
        operation.errors << ServerException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:put_registry_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#PutRegistryPolicy"
        operation.name = "PutRegistryPolicy"
        operation.input = PutRegistryPolicyRequest
        operation.output = PutRegistryPolicyResponse
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:put_registry_scanning_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#PutRegistryScanningConfiguration"
        operation.name = "PutRegistryScanningConfiguration"
        operation.input = PutRegistryScanningConfigurationRequest
        operation.output = PutRegistryScanningConfigurationResponse
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:put_replication_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#PutReplicationConfiguration"
        operation.name = "PutReplicationConfiguration"
        operation.input = PutReplicationConfigurationRequest
        operation.output = PutReplicationConfigurationResponse
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:set_repository_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#SetRepositoryPolicy"
        operation.name = "SetRepositoryPolicy"
        operation.input = SetRepositoryPolicyRequest
        operation.output = SetRepositoryPolicyResponse
        operation.errors << InvalidParameterException
        operation.errors << RepositoryNotFoundException
        operation.errors << ServerException
        operation.traits = {}
      end)
      service.add_operation(:start_image_scan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#StartImageScan"
        operation.name = "StartImageScan"
        operation.input = StartImageScanRequest
        operation.output = StartImageScanResponse
        operation.errors << ImageNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << RepositoryNotFoundException
        operation.errors << ServerException
        operation.errors << UnsupportedImageTypeException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:start_lifecycle_policy_preview, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#StartLifecyclePolicyPreview"
        operation.name = "StartLifecyclePolicyPreview"
        operation.input = StartLifecyclePolicyPreviewRequest
        operation.output = StartLifecyclePolicyPreviewResponse
        operation.errors << InvalidParameterException
        operation.errors << LifecyclePolicyNotFoundException
        operation.errors << LifecyclePolicyPreviewInProgressException
        operation.errors << RepositoryNotFoundException
        operation.errors << ServerException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InvalidParameterException
        operation.errors << InvalidTagParameterException
        operation.errors << RepositoryNotFoundException
        operation.errors << ServerException
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InvalidParameterException
        operation.errors << InvalidTagParameterException
        operation.errors << RepositoryNotFoundException
        operation.errors << ServerException
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:update_pull_through_cache_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#UpdatePullThroughCacheRule"
        operation.name = "UpdatePullThroughCacheRule"
        operation.input = UpdatePullThroughCacheRuleRequest
        operation.output = UpdatePullThroughCacheRuleResponse
        operation.errors << InvalidParameterException
        operation.errors << PullThroughCacheRuleNotFoundException
        operation.errors << SecretNotFoundException
        operation.errors << ServerException
        operation.errors << UnableToAccessSecretException
        operation.errors << UnableToDecryptSecretValueException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_repository_creation_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#UpdateRepositoryCreationTemplate"
        operation.name = "UpdateRepositoryCreationTemplate"
        operation.input = UpdateRepositoryCreationTemplateRequest
        operation.output = UpdateRepositoryCreationTemplateResponse
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << TemplateNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:upload_layer_part, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#UploadLayerPart"
        operation.name = "UploadLayerPart"
        operation.input = UploadLayerPartRequest
        operation.output = UploadLayerPartResponse
        operation.errors << InvalidLayerPartException
        operation.errors << InvalidParameterException
        operation.errors << KmsException
        operation.errors << LimitExceededException
        operation.errors << RepositoryNotFoundException
        operation.errors << ServerException
        operation.errors << UploadNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:validate_pull_through_cache_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#ValidatePullThroughCacheRule"
        operation.name = "ValidatePullThroughCacheRule"
        operation.input = ValidatePullThroughCacheRuleRequest
        operation.output = ValidatePullThroughCacheRuleResponse
        operation.errors << InvalidParameterException
        operation.errors << PullThroughCacheRuleNotFoundException
        operation.errors << ServerException
        operation.errors << ValidationException
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
