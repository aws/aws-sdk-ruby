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

    Attribute.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeKey, location_name: "key", traits: {"smithy.api#required" => {}}))
    Attribute.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue, location_name: "value"))
    Attribute.type = Types::Attribute
    AttributeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Attribute)
    AuthorizationData.add_member(:authorization_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Base64, location_name: "authorizationToken"))
    AuthorizationData.add_member(:expires_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpirationTimestamp, location_name: "expiresAt"))
    AuthorizationData.add_member(:proxy_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProxyEndpoint, location_name: "proxyEndpoint"))
    AuthorizationData.type = Types::AuthorizationData
    AuthorizationDataList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationData)
    AwsEcrContainerImageDetails.add_member(:architecture, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arch, location_name: "architecture"))
    AwsEcrContainerImageDetails.add_member(:author, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Author, location_name: "author"))
    AwsEcrContainerImageDetails.add_member(:image_hash, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageDigest, location_name: "imageHash"))
    AwsEcrContainerImageDetails.add_member(:image_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagsList, location_name: "imageTags"))
    AwsEcrContainerImageDetails.add_member(:platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Platform, location_name: "platform"))
    AwsEcrContainerImageDetails.add_member(:pushed_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: "pushedAt"))
    AwsEcrContainerImageDetails.add_member(:last_in_use_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: "lastInUseAt"))
    AwsEcrContainerImageDetails.add_member(:in_use_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InUseCount, location_name: "inUseCount"))
    AwsEcrContainerImageDetails.add_member(:registry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registry"))
    AwsEcrContainerImageDetails.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    AwsEcrContainerImageDetails.type = Types::AwsEcrContainerImageDetails
    BatchCheckLayerAvailabilityRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    BatchCheckLayerAvailabilityRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName", traits: {"smithy.api#required" => {}}))
    BatchCheckLayerAvailabilityRequest.add_member(:layer_digests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchedOperationLayerDigestList, location_name: "layerDigests", traits: {"smithy.api#required" => {}}))
    BatchCheckLayerAvailabilityRequest.type = Types::BatchCheckLayerAvailabilityRequest
    BatchCheckLayerAvailabilityResponse.add_member(:layers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayerList, location_name: "layers"))
    BatchCheckLayerAvailabilityResponse.add_member(:failures, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayerFailureList, location_name: "failures"))
    BatchCheckLayerAvailabilityResponse.type = Types::BatchCheckLayerAvailabilityResponse
    BatchDeleteImageRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    BatchDeleteImageRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName", traits: {"smithy.api#required" => {}}))
    BatchDeleteImageRequest.add_member(:image_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageIdentifierList, location_name: "imageIds", traits: {"smithy.api#required" => {}}))
    BatchDeleteImageRequest.type = Types::BatchDeleteImageRequest
    BatchDeleteImageResponse.add_member(:image_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageIdentifierList, location_name: "imageIds"))
    BatchDeleteImageResponse.add_member(:failures, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageFailureList, location_name: "failures"))
    BatchDeleteImageResponse.type = Types::BatchDeleteImageResponse
    BatchGetImageRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    BatchGetImageRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName", traits: {"smithy.api#required" => {}}))
    BatchGetImageRequest.add_member(:image_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageIdentifierList, location_name: "imageIds", traits: {"smithy.api#required" => {}}))
    BatchGetImageRequest.add_member(:accepted_media_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaTypeList, location_name: "acceptedMediaTypes"))
    BatchGetImageRequest.type = Types::BatchGetImageRequest
    BatchGetImageResponse.add_member(:images, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageList, location_name: "images"))
    BatchGetImageResponse.add_member(:failures, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageFailureList, location_name: "failures"))
    BatchGetImageResponse.type = Types::BatchGetImageResponse
    BatchGetRepositoryScanningConfigurationRequest.add_member(:repository_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanningConfigurationRepositoryNameList, location_name: "repositoryNames", traits: {"smithy.api#required" => {}}))
    BatchGetRepositoryScanningConfigurationRequest.type = Types::BatchGetRepositoryScanningConfigurationRequest
    BatchGetRepositoryScanningConfigurationResponse.add_member(:scanning_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryScanningConfigurationList, location_name: "scanningConfigurations"))
    BatchGetRepositoryScanningConfigurationResponse.add_member(:failures, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryScanningConfigurationFailureList, location_name: "failures"))
    BatchGetRepositoryScanningConfigurationResponse.type = Types::BatchGetRepositoryScanningConfigurationResponse
    BatchedOperationLayerDigestList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchedOperationLayerDigest)
    CompleteLayerUploadRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    CompleteLayerUploadRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName", traits: {"smithy.api#required" => {}}))
    CompleteLayerUploadRequest.add_member(:upload_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: "uploadId", traits: {"smithy.api#required" => {}}))
    CompleteLayerUploadRequest.add_member(:layer_digests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayerDigestList, location_name: "layerDigests", traits: {"smithy.api#required" => {}}))
    CompleteLayerUploadRequest.type = Types::CompleteLayerUploadRequest
    CompleteLayerUploadResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    CompleteLayerUploadResponse.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    CompleteLayerUploadResponse.add_member(:upload_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: "uploadId"))
    CompleteLayerUploadResponse.add_member(:layer_digest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayerDigest, location_name: "layerDigest"))
    CompleteLayerUploadResponse.type = Types::CompleteLayerUploadResponse
    CreatePullThroughCacheRuleRequest.add_member(:ecr_repository_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleRepositoryPrefix, location_name: "ecrRepositoryPrefix", traits: {"smithy.api#required" => {}}))
    CreatePullThroughCacheRuleRequest.add_member(:upstream_registry_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: "upstreamRegistryUrl", traits: {"smithy.api#required" => {}}))
    CreatePullThroughCacheRuleRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    CreatePullThroughCacheRuleRequest.add_member(:upstream_registry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpstreamRegistry, location_name: "upstreamRegistry"))
    CreatePullThroughCacheRuleRequest.add_member(:credential_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialArn, location_name: "credentialArn"))
    CreatePullThroughCacheRuleRequest.add_member(:custom_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoleArn, location_name: "customRoleArn"))
    CreatePullThroughCacheRuleRequest.add_member(:upstream_repository_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleRepositoryPrefix, location_name: "upstreamRepositoryPrefix"))
    CreatePullThroughCacheRuleRequest.type = Types::CreatePullThroughCacheRuleRequest
    CreatePullThroughCacheRuleResponse.add_member(:ecr_repository_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleRepositoryPrefix, location_name: "ecrRepositoryPrefix"))
    CreatePullThroughCacheRuleResponse.add_member(:upstream_registry_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: "upstreamRegistryUrl"))
    CreatePullThroughCacheRuleResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTimestamp, location_name: "createdAt"))
    CreatePullThroughCacheRuleResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    CreatePullThroughCacheRuleResponse.add_member(:upstream_registry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpstreamRegistry, location_name: "upstreamRegistry"))
    CreatePullThroughCacheRuleResponse.add_member(:credential_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialArn, location_name: "credentialArn"))
    CreatePullThroughCacheRuleResponse.add_member(:custom_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoleArn, location_name: "customRoleArn"))
    CreatePullThroughCacheRuleResponse.add_member(:upstream_repository_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleRepositoryPrefix, location_name: "upstreamRepositoryPrefix"))
    CreatePullThroughCacheRuleResponse.type = Types::CreatePullThroughCacheRuleResponse
    CreateRepositoryCreationTemplateRequest.add_member(:prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prefix, location_name: "prefix", traits: {"smithy.api#required" => {}}))
    CreateRepositoryCreationTemplateRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryTemplateDescription, location_name: "description"))
    CreateRepositoryCreationTemplateRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfigurationForRepositoryCreationTemplate, location_name: "encryptionConfiguration"))
    CreateRepositoryCreationTemplateRequest.add_member(:resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "resourceTags"))
    CreateRepositoryCreationTemplateRequest.add_member(:image_tag_mutability, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagMutability, location_name: "imageTagMutability"))
    CreateRepositoryCreationTemplateRequest.add_member(:image_tag_mutability_exclusion_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagMutabilityExclusionFilters, location_name: "imageTagMutabilityExclusionFilters"))
    CreateRepositoryCreationTemplateRequest.add_member(:repository_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryPolicyText, location_name: "repositoryPolicy"))
    CreateRepositoryCreationTemplateRequest.add_member(:lifecycle_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyTextForRepositoryCreationTemplate, location_name: "lifecyclePolicy"))
    CreateRepositoryCreationTemplateRequest.add_member(:applied_for, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RCTAppliedForList, location_name: "appliedFor", traits: {"smithy.api#required" => {}}))
    CreateRepositoryCreationTemplateRequest.add_member(:custom_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoleArn, location_name: "customRoleArn"))
    CreateRepositoryCreationTemplateRequest.type = Types::CreateRepositoryCreationTemplateRequest
    CreateRepositoryCreationTemplateResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    CreateRepositoryCreationTemplateResponse.add_member(:repository_creation_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryCreationTemplate, location_name: "repositoryCreationTemplate"))
    CreateRepositoryCreationTemplateResponse.type = Types::CreateRepositoryCreationTemplateResponse
    CreateRepositoryRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    CreateRepositoryRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName", traits: {"smithy.api#required" => {}}))
    CreateRepositoryRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateRepositoryRequest.add_member(:image_tag_mutability, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagMutability, location_name: "imageTagMutability"))
    CreateRepositoryRequest.add_member(:image_tag_mutability_exclusion_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagMutabilityExclusionFilters, location_name: "imageTagMutabilityExclusionFilters"))
    CreateRepositoryRequest.add_member(:image_scanning_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageScanningConfiguration, location_name: "imageScanningConfiguration"))
    CreateRepositoryRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    CreateRepositoryRequest.type = Types::CreateRepositoryRequest
    CreateRepositoryResponse.add_member(:repository, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Repository, location_name: "repository"))
    CreateRepositoryResponse.type = Types::CreateRepositoryResponse
    CvssScore.add_member(:base_score, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseScore, location_name: "baseScore", traits: {"smithy.api#default" => 0}))
    CvssScore.add_member(:scoring_vector, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScoringVector, location_name: "scoringVector"))
    CvssScore.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: "source"))
    CvssScore.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    CvssScore.type = Types::CvssScore
    CvssScoreAdjustment.add_member(:metric, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Metric, location_name: "metric"))
    CvssScoreAdjustment.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Reason, location_name: "reason"))
    CvssScoreAdjustment.type = Types::CvssScoreAdjustment
    CvssScoreAdjustmentList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CvssScoreAdjustment)
    CvssScoreDetails.add_member(:adjustments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CvssScoreAdjustmentList, location_name: "adjustments"))
    CvssScoreDetails.add_member(:score, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Score, location_name: "score", traits: {"smithy.api#default" => 0}))
    CvssScoreDetails.add_member(:score_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: "scoreSource"))
    CvssScoreDetails.add_member(:scoring_vector, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScoringVector, location_name: "scoringVector"))
    CvssScoreDetails.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    CvssScoreDetails.type = Types::CvssScoreDetails
    CvssScoreList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CvssScore)
    DeleteLifecyclePolicyRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    DeleteLifecyclePolicyRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName", traits: {"smithy.api#required" => {}}))
    DeleteLifecyclePolicyRequest.type = Types::DeleteLifecyclePolicyRequest
    DeleteLifecyclePolicyResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    DeleteLifecyclePolicyResponse.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    DeleteLifecyclePolicyResponse.add_member(:lifecycle_policy_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyText, location_name: "lifecyclePolicyText"))
    DeleteLifecyclePolicyResponse.add_member(:last_evaluated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationTimestamp, location_name: "lastEvaluatedAt"))
    DeleteLifecyclePolicyResponse.type = Types::DeleteLifecyclePolicyResponse
    DeletePullThroughCacheRuleRequest.add_member(:ecr_repository_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleRepositoryPrefix, location_name: "ecrRepositoryPrefix", traits: {"smithy.api#required" => {}}))
    DeletePullThroughCacheRuleRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    DeletePullThroughCacheRuleRequest.type = Types::DeletePullThroughCacheRuleRequest
    DeletePullThroughCacheRuleResponse.add_member(:ecr_repository_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleRepositoryPrefix, location_name: "ecrRepositoryPrefix"))
    DeletePullThroughCacheRuleResponse.add_member(:upstream_registry_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: "upstreamRegistryUrl"))
    DeletePullThroughCacheRuleResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTimestamp, location_name: "createdAt"))
    DeletePullThroughCacheRuleResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    DeletePullThroughCacheRuleResponse.add_member(:credential_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialArn, location_name: "credentialArn"))
    DeletePullThroughCacheRuleResponse.add_member(:custom_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoleArn, location_name: "customRoleArn"))
    DeletePullThroughCacheRuleResponse.add_member(:upstream_repository_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleRepositoryPrefix, location_name: "upstreamRepositoryPrefix"))
    DeletePullThroughCacheRuleResponse.type = Types::DeletePullThroughCacheRuleResponse
    DeleteRegistryPolicyRequest.type = Types::DeleteRegistryPolicyRequest
    DeleteRegistryPolicyResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    DeleteRegistryPolicyResponse.add_member(:policy_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryPolicyText, location_name: "policyText"))
    DeleteRegistryPolicyResponse.type = Types::DeleteRegistryPolicyResponse
    DeleteRepositoryCreationTemplateRequest.add_member(:prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prefix, location_name: "prefix", traits: {"smithy.api#required" => {}}))
    DeleteRepositoryCreationTemplateRequest.type = Types::DeleteRepositoryCreationTemplateRequest
    DeleteRepositoryCreationTemplateResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    DeleteRepositoryCreationTemplateResponse.add_member(:repository_creation_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryCreationTemplate, location_name: "repositoryCreationTemplate"))
    DeleteRepositoryCreationTemplateResponse.type = Types::DeleteRepositoryCreationTemplateResponse
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
    DescribeImageReplicationStatusRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName", traits: {"smithy.api#required" => {}}))
    DescribeImageReplicationStatusRequest.add_member(:image_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageIdentifier, location_name: "imageId", traits: {"smithy.api#required" => {}}))
    DescribeImageReplicationStatusRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    DescribeImageReplicationStatusRequest.type = Types::DescribeImageReplicationStatusRequest
    DescribeImageReplicationStatusResponse.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    DescribeImageReplicationStatusResponse.add_member(:image_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageIdentifier, location_name: "imageId"))
    DescribeImageReplicationStatusResponse.add_member(:replication_statuses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageReplicationStatusList, location_name: "replicationStatuses"))
    DescribeImageReplicationStatusResponse.type = Types::DescribeImageReplicationStatusResponse
    DescribeImageScanFindingsRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    DescribeImageScanFindingsRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName", traits: {"smithy.api#required" => {}}))
    DescribeImageScanFindingsRequest.add_member(:image_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageIdentifier, location_name: "imageId", traits: {"smithy.api#required" => {}}))
    DescribeImageScanFindingsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeImageScanFindingsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    DescribeImageScanFindingsRequest.type = Types::DescribeImageScanFindingsRequest
    DescribeImageScanFindingsResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    DescribeImageScanFindingsResponse.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    DescribeImageScanFindingsResponse.add_member(:image_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageIdentifier, location_name: "imageId"))
    DescribeImageScanFindingsResponse.add_member(:image_scan_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageScanStatus, location_name: "imageScanStatus"))
    DescribeImageScanFindingsResponse.add_member(:image_scan_findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageScanFindings, location_name: "imageScanFindings"))
    DescribeImageScanFindingsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeImageScanFindingsResponse.type = Types::DescribeImageScanFindingsResponse
    DescribeImagesFilter.add_member(:tag_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagStatus, location_name: "tagStatus"))
    DescribeImagesFilter.type = Types::DescribeImagesFilter
    DescribeImagesRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    DescribeImagesRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName", traits: {"smithy.api#required" => {}}))
    DescribeImagesRequest.add_member(:image_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageIdentifierList, location_name: "imageIds"))
    DescribeImagesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeImagesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    DescribeImagesRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeImagesFilter, location_name: "filter"))
    DescribeImagesRequest.type = Types::DescribeImagesRequest
    DescribeImagesResponse.add_member(:image_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageDetailList, location_name: "imageDetails"))
    DescribeImagesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeImagesResponse.type = Types::DescribeImagesResponse
    DescribePullThroughCacheRulesRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    DescribePullThroughCacheRulesRequest.add_member(:ecr_repository_prefixes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleRepositoryPrefixList, location_name: "ecrRepositoryPrefixes"))
    DescribePullThroughCacheRulesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribePullThroughCacheRulesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    DescribePullThroughCacheRulesRequest.type = Types::DescribePullThroughCacheRulesRequest
    DescribePullThroughCacheRulesResponse.add_member(:pull_through_cache_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleList, location_name: "pullThroughCacheRules"))
    DescribePullThroughCacheRulesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribePullThroughCacheRulesResponse.type = Types::DescribePullThroughCacheRulesResponse
    DescribeRegistryRequest.type = Types::DescribeRegistryRequest
    DescribeRegistryResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    DescribeRegistryResponse.add_member(:replication_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfiguration, location_name: "replicationConfiguration"))
    DescribeRegistryResponse.type = Types::DescribeRegistryResponse
    DescribeRepositoriesRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    DescribeRepositoriesRequest.add_member(:repository_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameList, location_name: "repositoryNames"))
    DescribeRepositoriesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeRepositoriesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    DescribeRepositoriesRequest.type = Types::DescribeRepositoriesRequest
    DescribeRepositoriesResponse.add_member(:repositories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryList, location_name: "repositories"))
    DescribeRepositoriesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeRepositoriesResponse.type = Types::DescribeRepositoriesResponse
    DescribeRepositoryCreationTemplatesRequest.add_member(:prefixes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrefixList, location_name: "prefixes"))
    DescribeRepositoryCreationTemplatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeRepositoryCreationTemplatesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    DescribeRepositoryCreationTemplatesRequest.type = Types::DescribeRepositoryCreationTemplatesRequest
    DescribeRepositoryCreationTemplatesResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    DescribeRepositoryCreationTemplatesResponse.add_member(:repository_creation_templates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryCreationTemplateList, location_name: "repositoryCreationTemplates"))
    DescribeRepositoryCreationTemplatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeRepositoryCreationTemplatesResponse.type = Types::DescribeRepositoryCreationTemplatesResponse
    EmptyUploadException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    EmptyUploadException.type = Types::EmptyUploadException
    EncryptionConfiguration.add_member(:encryption_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionType, location_name: "encryptionType", traits: {"smithy.api#required" => {}}))
    EncryptionConfiguration.add_member(:kms_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKey, location_name: "kmsKey"))
    EncryptionConfiguration.type = Types::EncryptionConfiguration
    EncryptionConfigurationForRepositoryCreationTemplate.add_member(:encryption_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionType, location_name: "encryptionType", traits: {"smithy.api#required" => {}}))
    EncryptionConfigurationForRepositoryCreationTemplate.add_member(:kms_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyForRepositoryCreationTemplate, location_name: "kmsKey"))
    EncryptionConfigurationForRepositoryCreationTemplate.type = Types::EncryptionConfigurationForRepositoryCreationTemplate
    EncryptionType.add_member(:aes256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AES256", traits: {"smithy.api#enumValue" => "AES256"}))
    EncryptionType.add_member(:kms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KMS", traits: {"smithy.api#enumValue" => "KMS"}))
    EncryptionType.add_member(:kms_dsse, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KMS_DSSE", traits: {"smithy.api#enumValue" => "KMS_DSSE"}))
    EnhancedImageScanFinding.add_member(:aws_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "awsAccountId"))
    EnhancedImageScanFinding.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingDescription, location_name: "description"))
    EnhancedImageScanFinding.add_member(:finding_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingArn, location_name: "findingArn"))
    EnhancedImageScanFinding.add_member(:first_observed_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: "firstObservedAt"))
    EnhancedImageScanFinding.add_member(:last_observed_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: "lastObservedAt"))
    EnhancedImageScanFinding.add_member(:package_vulnerability_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVulnerabilityDetails, location_name: "packageVulnerabilityDetails"))
    EnhancedImageScanFinding.add_member(:remediation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Remediation, location_name: "remediation"))
    EnhancedImageScanFinding.add_member(:resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceList, location_name: "resources"))
    EnhancedImageScanFinding.add_member(:score, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Score, location_name: "score", traits: {"smithy.api#default" => 0}))
    EnhancedImageScanFinding.add_member(:score_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScoreDetails, location_name: "scoreDetails"))
    EnhancedImageScanFinding.add_member(:severity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Severity, location_name: "severity"))
    EnhancedImageScanFinding.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    EnhancedImageScanFinding.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Title, location_name: "title"))
    EnhancedImageScanFinding.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: "type"))
    EnhancedImageScanFinding.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: "updatedAt"))
    EnhancedImageScanFinding.add_member(:fix_available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FixAvailable, location_name: "fixAvailable"))
    EnhancedImageScanFinding.add_member(:exploit_available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExploitAvailable, location_name: "exploitAvailable"))
    EnhancedImageScanFinding.type = Types::EnhancedImageScanFinding
    EnhancedImageScanFindingList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnhancedImageScanFinding)
    FindingSeverity.add_member(:informational, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INFORMATIONAL", traits: {"smithy.api#enumValue" => "INFORMATIONAL"}))
    FindingSeverity.add_member(:low, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOW", traits: {"smithy.api#enumValue" => "LOW"}))
    FindingSeverity.add_member(:medium, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    FindingSeverity.add_member(:high, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    FindingSeverity.add_member(:critical, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CRITICAL", traits: {"smithy.api#enumValue" => "CRITICAL"}))
    FindingSeverity.add_member(:undefined, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNDEFINED", traits: {"smithy.api#enumValue" => "UNDEFINED"}))
    FindingSeverityCounts.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingSeverity)
    FindingSeverityCounts.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SeverityCount)
    GetAccountSettingRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSettingName, location_name: "name", traits: {"smithy.api#required" => {}}))
    GetAccountSettingRequest.type = Types::GetAccountSettingRequest
    GetAccountSettingResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSettingName, location_name: "name"))
    GetAccountSettingResponse.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSettingName, location_name: "value"))
    GetAccountSettingResponse.type = Types::GetAccountSettingResponse
    GetAuthorizationTokenRegistryIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId)
    GetAuthorizationTokenRequest.add_member(:registry_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAuthorizationTokenRegistryIdList, location_name: "registryIds", traits: {"smithy.api#deprecated" => {"message" => "This field is deprecated. The returned authorization token can be used to access any Amazon ECR registry that the IAM principal has access to, specifying a registry ID doesn't change the permissions scope of the authorization token."}}))
    GetAuthorizationTokenRequest.type = Types::GetAuthorizationTokenRequest
    GetAuthorizationTokenResponse.add_member(:authorization_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationDataList, location_name: "authorizationData"))
    GetAuthorizationTokenResponse.type = Types::GetAuthorizationTokenResponse
    GetDownloadUrlForLayerRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    GetDownloadUrlForLayerRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName", traits: {"smithy.api#required" => {}}))
    GetDownloadUrlForLayerRequest.add_member(:layer_digest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayerDigest, location_name: "layerDigest", traits: {"smithy.api#required" => {}}))
    GetDownloadUrlForLayerRequest.type = Types::GetDownloadUrlForLayerRequest
    GetDownloadUrlForLayerResponse.add_member(:download_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: "downloadUrl"))
    GetDownloadUrlForLayerResponse.add_member(:layer_digest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayerDigest, location_name: "layerDigest"))
    GetDownloadUrlForLayerResponse.type = Types::GetDownloadUrlForLayerResponse
    GetLifecyclePolicyPreviewRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    GetLifecyclePolicyPreviewRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName", traits: {"smithy.api#required" => {}}))
    GetLifecyclePolicyPreviewRequest.add_member(:image_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageIdentifierList, location_name: "imageIds"))
    GetLifecyclePolicyPreviewRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetLifecyclePolicyPreviewRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePreviewMaxResults, location_name: "maxResults"))
    GetLifecyclePolicyPreviewRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyPreviewFilter, location_name: "filter"))
    GetLifecyclePolicyPreviewRequest.type = Types::GetLifecyclePolicyPreviewRequest
    GetLifecyclePolicyPreviewResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    GetLifecyclePolicyPreviewResponse.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    GetLifecyclePolicyPreviewResponse.add_member(:lifecycle_policy_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyText, location_name: "lifecyclePolicyText"))
    GetLifecyclePolicyPreviewResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyPreviewStatus, location_name: "status"))
    GetLifecyclePolicyPreviewResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetLifecyclePolicyPreviewResponse.add_member(:preview_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyPreviewResultList, location_name: "previewResults"))
    GetLifecyclePolicyPreviewResponse.add_member(:summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyPreviewSummary, location_name: "summary"))
    GetLifecyclePolicyPreviewResponse.type = Types::GetLifecyclePolicyPreviewResponse
    GetLifecyclePolicyRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    GetLifecyclePolicyRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName", traits: {"smithy.api#required" => {}}))
    GetLifecyclePolicyRequest.type = Types::GetLifecyclePolicyRequest
    GetLifecyclePolicyResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    GetLifecyclePolicyResponse.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    GetLifecyclePolicyResponse.add_member(:lifecycle_policy_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyText, location_name: "lifecyclePolicyText"))
    GetLifecyclePolicyResponse.add_member(:last_evaluated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationTimestamp, location_name: "lastEvaluatedAt"))
    GetLifecyclePolicyResponse.type = Types::GetLifecyclePolicyResponse
    GetRegistryPolicyRequest.type = Types::GetRegistryPolicyRequest
    GetRegistryPolicyResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    GetRegistryPolicyResponse.add_member(:policy_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryPolicyText, location_name: "policyText"))
    GetRegistryPolicyResponse.type = Types::GetRegistryPolicyResponse
    GetRegistryScanningConfigurationRequest.type = Types::GetRegistryScanningConfigurationRequest
    GetRegistryScanningConfigurationResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    GetRegistryScanningConfigurationResponse.add_member(:scanning_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryScanningConfiguration, location_name: "scanningConfiguration"))
    GetRegistryScanningConfigurationResponse.type = Types::GetRegistryScanningConfigurationResponse
    GetRepositoryPolicyRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    GetRepositoryPolicyRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName", traits: {"smithy.api#required" => {}}))
    GetRepositoryPolicyRequest.type = Types::GetRepositoryPolicyRequest
    GetRepositoryPolicyResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    GetRepositoryPolicyResponse.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    GetRepositoryPolicyResponse.add_member(:policy_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryPolicyText, location_name: "policyText"))
    GetRepositoryPolicyResponse.type = Types::GetRepositoryPolicyResponse
    Image.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    Image.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    Image.add_member(:image_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageIdentifier, location_name: "imageId"))
    Image.add_member(:image_manifest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageManifest, location_name: "imageManifest"))
    Image.add_member(:image_manifest_media_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaType, location_name: "imageManifestMediaType"))
    Image.type = Types::Image
    ImageActionType.add_member(:expire, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXPIRE", traits: {"smithy.api#enumValue" => "EXPIRE"}))
    ImageAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ImageAlreadyExistsException.type = Types::ImageAlreadyExistsException
    ImageDetail.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    ImageDetail.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    ImageDetail.add_member(:image_digest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageDigest, location_name: "imageDigest"))
    ImageDetail.add_member(:image_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagList, location_name: "imageTags"))
    ImageDetail.add_member(:image_size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSizeInBytes, location_name: "imageSizeInBytes"))
    ImageDetail.add_member(:image_pushed_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PushTimestamp, location_name: "imagePushedAt"))
    ImageDetail.add_member(:image_scan_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageScanStatus, location_name: "imageScanStatus"))
    ImageDetail.add_member(:image_scan_findings_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageScanFindingsSummary, location_name: "imageScanFindingsSummary"))
    ImageDetail.add_member(:image_manifest_media_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaType, location_name: "imageManifestMediaType"))
    ImageDetail.add_member(:artifact_media_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaType, location_name: "artifactMediaType"))
    ImageDetail.add_member(:last_recorded_pull_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordedPullTimestamp, location_name: "lastRecordedPullTime"))
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
    ImageFailureCode.add_member(:upstream_access_denied, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UpstreamAccessDenied", traits: {"smithy.api#enumValue" => "UpstreamAccessDenied"}))
    ImageFailureCode.add_member(:upstream_too_many_requests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UpstreamTooManyRequests", traits: {"smithy.api#enumValue" => "UpstreamTooManyRequests"}))
    ImageFailureCode.add_member(:upstream_unavailable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UpstreamUnavailable", traits: {"smithy.api#enumValue" => "UpstreamUnavailable"}))
    ImageFailureList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageFailure)
    ImageIdentifier.add_member(:image_digest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageDigest, location_name: "imageDigest"))
    ImageIdentifier.add_member(:image_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTag, location_name: "imageTag"))
    ImageIdentifier.type = Types::ImageIdentifier
    ImageIdentifierList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageIdentifier)
    ImageList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Image)
    ImageNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ImageNotFoundException.type = Types::ImageNotFoundException
    ImageReplicationStatus.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: "region"))
    ImageReplicationStatus.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    ImageReplicationStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationStatus, location_name: "status"))
    ImageReplicationStatus.add_member(:failure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationError, location_name: "failureCode"))
    ImageReplicationStatus.type = Types::ImageReplicationStatus
    ImageReplicationStatusList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageReplicationStatus)
    ImageScanFinding.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingName, location_name: "name"))
    ImageScanFinding.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingDescription, location_name: "description"))
    ImageScanFinding.add_member(:uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: "uri"))
    ImageScanFinding.add_member(:severity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingSeverity, location_name: "severity"))
    ImageScanFinding.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeList, location_name: "attributes"))
    ImageScanFinding.type = Types::ImageScanFinding
    ImageScanFindingList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageScanFinding)
    ImageScanFindings.add_member(:image_scan_completed_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanTimestamp, location_name: "imageScanCompletedAt"))
    ImageScanFindings.add_member(:vulnerability_source_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VulnerabilitySourceUpdateTimestamp, location_name: "vulnerabilitySourceUpdatedAt"))
    ImageScanFindings.add_member(:finding_severity_counts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingSeverityCounts, location_name: "findingSeverityCounts"))
    ImageScanFindings.add_member(:findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageScanFindingList, location_name: "findings"))
    ImageScanFindings.add_member(:enhanced_findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnhancedImageScanFindingList, location_name: "enhancedFindings"))
    ImageScanFindings.type = Types::ImageScanFindings
    ImageScanFindingsSummary.add_member(:image_scan_completed_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanTimestamp, location_name: "imageScanCompletedAt"))
    ImageScanFindingsSummary.add_member(:vulnerability_source_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VulnerabilitySourceUpdateTimestamp, location_name: "vulnerabilitySourceUpdatedAt"))
    ImageScanFindingsSummary.add_member(:finding_severity_counts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingSeverityCounts, location_name: "findingSeverityCounts"))
    ImageScanFindingsSummary.type = Types::ImageScanFindingsSummary
    ImageScanStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanStatus, location_name: "status"))
    ImageScanStatus.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanStatusDescription, location_name: "description"))
    ImageScanStatus.type = Types::ImageScanStatus
    ImageScanningConfiguration.add_member(:scan_on_push, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanOnPushFlag, location_name: "scanOnPush", traits: {"smithy.api#default" => false}))
    ImageScanningConfiguration.type = Types::ImageScanningConfiguration
    ImageTagAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ImageTagAlreadyExistsException.type = Types::ImageTagAlreadyExistsException
    ImageTagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTag)
    ImageTagMutability.add_member(:mutable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MUTABLE", traits: {"smithy.api#enumValue" => "MUTABLE"}))
    ImageTagMutability.add_member(:immutable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMMUTABLE", traits: {"smithy.api#enumValue" => "IMMUTABLE"}))
    ImageTagMutability.add_member(:immutable_with_exclusion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMMUTABLE_WITH_EXCLUSION", traits: {"smithy.api#enumValue" => "IMMUTABLE_WITH_EXCLUSION"}))
    ImageTagMutability.add_member(:mutable_with_exclusion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MUTABLE_WITH_EXCLUSION", traits: {"smithy.api#enumValue" => "MUTABLE_WITH_EXCLUSION"}))
    ImageTagMutabilityExclusionFilter.add_member(:filter_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagMutabilityExclusionFilterType, location_name: "filterType", traits: {"smithy.api#required" => {}}))
    ImageTagMutabilityExclusionFilter.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagMutabilityExclusionFilterValue, location_name: "filter", traits: {"smithy.api#required" => {}}))
    ImageTagMutabilityExclusionFilter.type = Types::ImageTagMutabilityExclusionFilter
    ImageTagMutabilityExclusionFilterType.add_member(:wildcard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WILDCARD", traits: {"smithy.api#enumValue" => "WILDCARD"}))
    ImageTagMutabilityExclusionFilters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagMutabilityExclusionFilter)
    ImageTagsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTag)
    InitiateLayerUploadRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
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
    KmsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    KmsException.add_member(:kms_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsError, location_name: "kmsError"))
    KmsException.type = Types::KmsException
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
    LayerInaccessibleException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    LayerInaccessibleException.type = Types::LayerInaccessibleException
    LayerList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Layer)
    LayerPartTooSmallException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    LayerPartTooSmallException.type = Types::LayerPartTooSmallException
    LayersNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    LayersNotFoundException.type = Types::LayersNotFoundException
    LifecyclePolicyNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    LifecyclePolicyNotFoundException.type = Types::LifecyclePolicyNotFoundException
    LifecyclePolicyPreviewFilter.add_member(:tag_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagStatus, location_name: "tagStatus"))
    LifecyclePolicyPreviewFilter.type = Types::LifecyclePolicyPreviewFilter
    LifecyclePolicyPreviewInProgressException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    LifecyclePolicyPreviewInProgressException.type = Types::LifecyclePolicyPreviewInProgressException
    LifecyclePolicyPreviewNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    LifecyclePolicyPreviewNotFoundException.type = Types::LifecyclePolicyPreviewNotFoundException
    LifecyclePolicyPreviewResult.add_member(:image_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagList, location_name: "imageTags"))
    LifecyclePolicyPreviewResult.add_member(:image_digest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageDigest, location_name: "imageDigest"))
    LifecyclePolicyPreviewResult.add_member(:image_pushed_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PushTimestamp, location_name: "imagePushedAt"))
    LifecyclePolicyPreviewResult.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyRuleAction, location_name: "action"))
    LifecyclePolicyPreviewResult.add_member(:applied_rule_priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyRulePriority, location_name: "appliedRulePriority"))
    LifecyclePolicyPreviewResult.type = Types::LifecyclePolicyPreviewResult
    LifecyclePolicyPreviewResultList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyPreviewResult)
    LifecyclePolicyPreviewStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    LifecyclePolicyPreviewStatus.add_member(:complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    LifecyclePolicyPreviewStatus.add_member(:expired, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXPIRED", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    LifecyclePolicyPreviewStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    LifecyclePolicyPreviewSummary.add_member(:expiring_image_total_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageCount, location_name: "expiringImageTotalCount"))
    LifecyclePolicyPreviewSummary.type = Types::LifecyclePolicyPreviewSummary
    LifecyclePolicyRuleAction.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageActionType, location_name: "type"))
    LifecyclePolicyRuleAction.type = Types::LifecyclePolicyRuleAction
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    ListImagesFilter.add_member(:tag_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagStatus, location_name: "tagStatus"))
    ListImagesFilter.type = Types::ListImagesFilter
    ListImagesRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    ListImagesRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName", traits: {"smithy.api#required" => {}}))
    ListImagesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListImagesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListImagesRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListImagesFilter, location_name: "filter"))
    ListImagesRequest.type = Types::ListImagesRequest
    ListImagesResponse.add_member(:image_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageIdentifierList, location_name: "imageIds"))
    ListImagesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListImagesResponse.type = Types::ListImagesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MediaTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaType)
    PackageVulnerabilityDetails.add_member(:cvss, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CvssScoreList, location_name: "cvss"))
    PackageVulnerabilityDetails.add_member(:reference_urls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceUrlsList, location_name: "referenceUrls"))
    PackageVulnerabilityDetails.add_member(:related_vulnerabilities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelatedVulnerabilitiesList, location_name: "relatedVulnerabilities"))
    PackageVulnerabilityDetails.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: "source"))
    PackageVulnerabilityDetails.add_member(:source_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: "sourceUrl"))
    PackageVulnerabilityDetails.add_member(:vendor_created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: "vendorCreatedAt"))
    PackageVulnerabilityDetails.add_member(:vendor_severity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Severity, location_name: "vendorSeverity"))
    PackageVulnerabilityDetails.add_member(:vendor_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: "vendorUpdatedAt"))
    PackageVulnerabilityDetails.add_member(:vulnerability_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VulnerabilityId, location_name: "vulnerabilityId"))
    PackageVulnerabilityDetails.add_member(:vulnerable_packages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VulnerablePackagesList, location_name: "vulnerablePackages"))
    PackageVulnerabilityDetails.type = Types::PackageVulnerabilityDetails
    PrefixList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prefix)
    PullThroughCacheRule.add_member(:ecr_repository_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleRepositoryPrefix, location_name: "ecrRepositoryPrefix"))
    PullThroughCacheRule.add_member(:upstream_registry_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: "upstreamRegistryUrl"))
    PullThroughCacheRule.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTimestamp, location_name: "createdAt"))
    PullThroughCacheRule.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    PullThroughCacheRule.add_member(:credential_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialArn, location_name: "credentialArn"))
    PullThroughCacheRule.add_member(:custom_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoleArn, location_name: "customRoleArn"))
    PullThroughCacheRule.add_member(:upstream_repository_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleRepositoryPrefix, location_name: "upstreamRepositoryPrefix"))
    PullThroughCacheRule.add_member(:upstream_registry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpstreamRegistry, location_name: "upstreamRegistry"))
    PullThroughCacheRule.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedTimestamp, location_name: "updatedAt"))
    PullThroughCacheRule.type = Types::PullThroughCacheRule
    PullThroughCacheRuleAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    PullThroughCacheRuleAlreadyExistsException.type = Types::PullThroughCacheRuleAlreadyExistsException
    PullThroughCacheRuleList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRule)
    PullThroughCacheRuleNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    PullThroughCacheRuleNotFoundException.type = Types::PullThroughCacheRuleNotFoundException
    PullThroughCacheRuleRepositoryPrefixList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleRepositoryPrefix)
    PutAccountSettingRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSettingName, location_name: "name", traits: {"smithy.api#required" => {}}))
    PutAccountSettingRequest.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSettingValue, location_name: "value", traits: {"smithy.api#required" => {}}))
    PutAccountSettingRequest.type = Types::PutAccountSettingRequest
    PutAccountSettingResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSettingName, location_name: "name"))
    PutAccountSettingResponse.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSettingValue, location_name: "value"))
    PutAccountSettingResponse.type = Types::PutAccountSettingResponse
    PutImageRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    PutImageRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName", traits: {"smithy.api#required" => {}}))
    PutImageRequest.add_member(:image_manifest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageManifest, location_name: "imageManifest", traits: {"smithy.api#required" => {}}))
    PutImageRequest.add_member(:image_manifest_media_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MediaType, location_name: "imageManifestMediaType"))
    PutImageRequest.add_member(:image_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTag, location_name: "imageTag"))
    PutImageRequest.add_member(:image_digest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageDigest, location_name: "imageDigest"))
    PutImageRequest.type = Types::PutImageRequest
    PutImageResponse.add_member(:image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Image, location_name: "image"))
    PutImageResponse.type = Types::PutImageResponse
    PutImageScanningConfigurationRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    PutImageScanningConfigurationRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName", traits: {"smithy.api#required" => {}}))
    PutImageScanningConfigurationRequest.add_member(:image_scanning_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageScanningConfiguration, location_name: "imageScanningConfiguration", traits: {"smithy.api#required" => {}}))
    PutImageScanningConfigurationRequest.type = Types::PutImageScanningConfigurationRequest
    PutImageScanningConfigurationResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    PutImageScanningConfigurationResponse.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    PutImageScanningConfigurationResponse.add_member(:image_scanning_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageScanningConfiguration, location_name: "imageScanningConfiguration"))
    PutImageScanningConfigurationResponse.type = Types::PutImageScanningConfigurationResponse
    PutImageTagMutabilityRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    PutImageTagMutabilityRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName", traits: {"smithy.api#required" => {}}))
    PutImageTagMutabilityRequest.add_member(:image_tag_mutability, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagMutability, location_name: "imageTagMutability", traits: {"smithy.api#required" => {}}))
    PutImageTagMutabilityRequest.add_member(:image_tag_mutability_exclusion_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagMutabilityExclusionFilters, location_name: "imageTagMutabilityExclusionFilters"))
    PutImageTagMutabilityRequest.type = Types::PutImageTagMutabilityRequest
    PutImageTagMutabilityResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    PutImageTagMutabilityResponse.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    PutImageTagMutabilityResponse.add_member(:image_tag_mutability, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagMutability, location_name: "imageTagMutability"))
    PutImageTagMutabilityResponse.add_member(:image_tag_mutability_exclusion_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagMutabilityExclusionFilters, location_name: "imageTagMutabilityExclusionFilters"))
    PutImageTagMutabilityResponse.type = Types::PutImageTagMutabilityResponse
    PutLifecyclePolicyRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    PutLifecyclePolicyRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName", traits: {"smithy.api#required" => {}}))
    PutLifecyclePolicyRequest.add_member(:lifecycle_policy_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyText, location_name: "lifecyclePolicyText", traits: {"smithy.api#required" => {}}))
    PutLifecyclePolicyRequest.type = Types::PutLifecyclePolicyRequest
    PutLifecyclePolicyResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    PutLifecyclePolicyResponse.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    PutLifecyclePolicyResponse.add_member(:lifecycle_policy_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyText, location_name: "lifecyclePolicyText"))
    PutLifecyclePolicyResponse.type = Types::PutLifecyclePolicyResponse
    PutRegistryPolicyRequest.add_member(:policy_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryPolicyText, location_name: "policyText", traits: {"smithy.api#required" => {}}))
    PutRegistryPolicyRequest.type = Types::PutRegistryPolicyRequest
    PutRegistryPolicyResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    PutRegistryPolicyResponse.add_member(:policy_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryPolicyText, location_name: "policyText"))
    PutRegistryPolicyResponse.type = Types::PutRegistryPolicyResponse
    PutRegistryScanningConfigurationRequest.add_member(:scan_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanType, location_name: "scanType"))
    PutRegistryScanningConfigurationRequest.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryScanningRuleList, location_name: "rules"))
    PutRegistryScanningConfigurationRequest.type = Types::PutRegistryScanningConfigurationRequest
    PutRegistryScanningConfigurationResponse.add_member(:registry_scanning_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryScanningConfiguration, location_name: "registryScanningConfiguration"))
    PutRegistryScanningConfigurationResponse.type = Types::PutRegistryScanningConfigurationResponse
    PutReplicationConfigurationRequest.add_member(:replication_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfiguration, location_name: "replicationConfiguration", traits: {"smithy.api#required" => {}}))
    PutReplicationConfigurationRequest.type = Types::PutReplicationConfigurationRequest
    PutReplicationConfigurationResponse.add_member(:replication_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfiguration, location_name: "replicationConfiguration"))
    PutReplicationConfigurationResponse.type = Types::PutReplicationConfigurationResponse
    RCTAppliedFor.add_member(:replication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REPLICATION", traits: {"smithy.api#enumValue" => "REPLICATION"}))
    RCTAppliedFor.add_member(:pull_through_cache, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PULL_THROUGH_CACHE", traits: {"smithy.api#enumValue" => "PULL_THROUGH_CACHE"}))
    RCTAppliedForList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RCTAppliedFor)
    Recommendation.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: "url"))
    Recommendation.add_member(:text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationText, location_name: "text"))
    Recommendation.type = Types::Recommendation
    ReferenceUrlsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url)
    ReferencedImagesNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ReferencedImagesNotFoundException.type = Types::ReferencedImagesNotFoundException
    RegistryPolicyNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    RegistryPolicyNotFoundException.type = Types::RegistryPolicyNotFoundException
    RegistryScanningConfiguration.add_member(:scan_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanType, location_name: "scanType"))
    RegistryScanningConfiguration.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryScanningRuleList, location_name: "rules"))
    RegistryScanningConfiguration.type = Types::RegistryScanningConfiguration
    RegistryScanningRule.add_member(:scan_frequency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanFrequency, location_name: "scanFrequency", traits: {"smithy.api#required" => {}}))
    RegistryScanningRule.add_member(:repository_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanningRepositoryFilterList, location_name: "repositoryFilters", traits: {"smithy.api#required" => {}}))
    RegistryScanningRule.type = Types::RegistryScanningRule
    RegistryScanningRuleList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryScanningRule)
    RelatedVulnerabilitiesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelatedVulnerability)
    Remediation.add_member(:recommendation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Recommendation, location_name: "recommendation"))
    Remediation.type = Types::Remediation
    ReplicationConfiguration.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationRuleList, location_name: "rules", traits: {"smithy.api#required" => {}}))
    ReplicationConfiguration.type = Types::ReplicationConfiguration
    ReplicationDestination.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: "region", traits: {"smithy.api#required" => {}}))
    ReplicationDestination.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId", traits: {"smithy.api#required" => {}}))
    ReplicationDestination.type = Types::ReplicationDestination
    ReplicationDestinationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationDestination)
    ReplicationRule.add_member(:destinations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationDestinationList, location_name: "destinations", traits: {"smithy.api#required" => {}}))
    ReplicationRule.add_member(:repository_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryFilterList, location_name: "repositoryFilters"))
    ReplicationRule.type = Types::ReplicationRule
    ReplicationRuleList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationRule)
    ReplicationStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ReplicationStatus.add_member(:complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    ReplicationStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    Repository.add_member(:repository_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "repositoryArn"))
    Repository.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    Repository.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    Repository.add_member(:repository_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: "repositoryUri"))
    Repository.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTimestamp, location_name: "createdAt"))
    Repository.add_member(:image_tag_mutability, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagMutability, location_name: "imageTagMutability"))
    Repository.add_member(:image_tag_mutability_exclusion_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagMutabilityExclusionFilters, location_name: "imageTagMutabilityExclusionFilters"))
    Repository.add_member(:image_scanning_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageScanningConfiguration, location_name: "imageScanningConfiguration"))
    Repository.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    Repository.type = Types::Repository
    RepositoryAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    RepositoryAlreadyExistsException.type = Types::RepositoryAlreadyExistsException
    RepositoryCreationTemplate.add_member(:prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prefix, location_name: "prefix"))
    RepositoryCreationTemplate.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryTemplateDescription, location_name: "description"))
    RepositoryCreationTemplate.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfigurationForRepositoryCreationTemplate, location_name: "encryptionConfiguration"))
    RepositoryCreationTemplate.add_member(:resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "resourceTags"))
    RepositoryCreationTemplate.add_member(:image_tag_mutability, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagMutability, location_name: "imageTagMutability"))
    RepositoryCreationTemplate.add_member(:image_tag_mutability_exclusion_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagMutabilityExclusionFilters, location_name: "imageTagMutabilityExclusionFilters"))
    RepositoryCreationTemplate.add_member(:repository_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryPolicyText, location_name: "repositoryPolicy"))
    RepositoryCreationTemplate.add_member(:lifecycle_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyTextForRepositoryCreationTemplate, location_name: "lifecyclePolicy"))
    RepositoryCreationTemplate.add_member(:applied_for, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RCTAppliedForList, location_name: "appliedFor"))
    RepositoryCreationTemplate.add_member(:custom_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoleArn, location_name: "customRoleArn"))
    RepositoryCreationTemplate.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: "createdAt"))
    RepositoryCreationTemplate.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: "updatedAt"))
    RepositoryCreationTemplate.type = Types::RepositoryCreationTemplate
    RepositoryCreationTemplateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryCreationTemplate)
    RepositoryFilter.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryFilterValue, location_name: "filter", traits: {"smithy.api#required" => {}}))
    RepositoryFilter.add_member(:filter_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryFilterType, location_name: "filterType", traits: {"smithy.api#required" => {}}))
    RepositoryFilter.type = Types::RepositoryFilter
    RepositoryFilterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryFilter)
    RepositoryFilterType.add_member(:prefix_match, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PREFIX_MATCH", traits: {"smithy.api#enumValue" => "PREFIX_MATCH"}))
    RepositoryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Repository)
    RepositoryNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName)
    RepositoryNotEmptyException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    RepositoryNotEmptyException.type = Types::RepositoryNotEmptyException
    RepositoryNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    RepositoryNotFoundException.type = Types::RepositoryNotFoundException
    RepositoryPolicyNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    RepositoryPolicyNotFoundException.type = Types::RepositoryPolicyNotFoundException
    RepositoryScanningConfiguration.add_member(:repository_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "repositoryArn"))
    RepositoryScanningConfiguration.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    RepositoryScanningConfiguration.add_member(:scan_on_push, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanOnPushFlag, location_name: "scanOnPush", traits: {"smithy.api#default" => false}))
    RepositoryScanningConfiguration.add_member(:scan_frequency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanFrequency, location_name: "scanFrequency"))
    RepositoryScanningConfiguration.add_member(:applied_scan_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanningRepositoryFilterList, location_name: "appliedScanFilters"))
    RepositoryScanningConfiguration.type = Types::RepositoryScanningConfiguration
    RepositoryScanningConfigurationFailure.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    RepositoryScanningConfigurationFailure.add_member(:failure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanningConfigurationFailureCode, location_name: "failureCode"))
    RepositoryScanningConfigurationFailure.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanningConfigurationFailureReason, location_name: "failureReason"))
    RepositoryScanningConfigurationFailure.type = Types::RepositoryScanningConfigurationFailure
    RepositoryScanningConfigurationFailureList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryScanningConfigurationFailure)
    RepositoryScanningConfigurationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryScanningConfiguration)
    Resource.add_member(:details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDetails, location_name: "details"))
    Resource.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "id"))
    Resource.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    Resource.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: "type"))
    Resource.type = Types::Resource
    ResourceDetails.add_member(:aws_ecr_container_image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsEcrContainerImageDetails, location_name: "awsEcrContainerImage"))
    ResourceDetails.type = Types::ResourceDetails
    ResourceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resource)
    ScanFrequency.add_member(:scan_on_push, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SCAN_ON_PUSH", traits: {"smithy.api#enumValue" => "SCAN_ON_PUSH"}))
    ScanFrequency.add_member(:continuous_scan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTINUOUS_SCAN", traits: {"smithy.api#enumValue" => "CONTINUOUS_SCAN"}))
    ScanFrequency.add_member(:manual, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MANUAL", traits: {"smithy.api#enumValue" => "MANUAL"}))
    ScanNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ScanNotFoundException.type = Types::ScanNotFoundException
    ScanStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ScanStatus.add_member(:complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    ScanStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ScanStatus.add_member(:unsupported_image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNSUPPORTED_IMAGE", traits: {"smithy.api#enumValue" => "UNSUPPORTED_IMAGE"}))
    ScanStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ScanStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ScanStatus.add_member(:scan_eligibility_expired, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SCAN_ELIGIBILITY_EXPIRED", traits: {"smithy.api#enumValue" => "SCAN_ELIGIBILITY_EXPIRED"}))
    ScanStatus.add_member(:findings_unavailable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FINDINGS_UNAVAILABLE", traits: {"smithy.api#enumValue" => "FINDINGS_UNAVAILABLE"}))
    ScanStatus.add_member(:limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "LIMIT_EXCEEDED"}))
    ScanType.add_member(:basic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BASIC", traits: {"smithy.api#enumValue" => "BASIC"}))
    ScanType.add_member(:enhanced, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENHANCED", traits: {"smithy.api#enumValue" => "ENHANCED"}))
    ScanningConfigurationFailureCode.add_member(:repository_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REPOSITORY_NOT_FOUND", traits: {"smithy.api#enumValue" => "REPOSITORY_NOT_FOUND"}))
    ScanningConfigurationRepositoryNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName)
    ScanningRepositoryFilter.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanningRepositoryFilterValue, location_name: "filter", traits: {"smithy.api#required" => {}}))
    ScanningRepositoryFilter.add_member(:filter_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanningRepositoryFilterType, location_name: "filterType", traits: {"smithy.api#required" => {}}))
    ScanningRepositoryFilter.type = Types::ScanningRepositoryFilter
    ScanningRepositoryFilterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanningRepositoryFilter)
    ScanningRepositoryFilterType.add_member(:wildcard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WILDCARD", traits: {"smithy.api#enumValue" => "WILDCARD"}))
    ScoreDetails.add_member(:cvss, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CvssScoreDetails, location_name: "cvss"))
    ScoreDetails.type = Types::ScoreDetails
    SecretNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    SecretNotFoundException.type = Types::SecretNotFoundException
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
    StartImageScanRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    StartImageScanRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName", traits: {"smithy.api#required" => {}}))
    StartImageScanRequest.add_member(:image_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageIdentifier, location_name: "imageId", traits: {"smithy.api#required" => {}}))
    StartImageScanRequest.type = Types::StartImageScanRequest
    StartImageScanResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    StartImageScanResponse.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    StartImageScanResponse.add_member(:image_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageIdentifier, location_name: "imageId"))
    StartImageScanResponse.add_member(:image_scan_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageScanStatus, location_name: "imageScanStatus"))
    StartImageScanResponse.type = Types::StartImageScanResponse
    StartLifecyclePolicyPreviewRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    StartLifecyclePolicyPreviewRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName", traits: {"smithy.api#required" => {}}))
    StartLifecyclePolicyPreviewRequest.add_member(:lifecycle_policy_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyText, location_name: "lifecyclePolicyText"))
    StartLifecyclePolicyPreviewRequest.type = Types::StartLifecyclePolicyPreviewRequest
    StartLifecyclePolicyPreviewResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    StartLifecyclePolicyPreviewResponse.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    StartLifecyclePolicyPreviewResponse.add_member(:lifecycle_policy_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyText, location_name: "lifecyclePolicyText"))
    StartLifecyclePolicyPreviewResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyPreviewStatus, location_name: "status"))
    StartLifecyclePolicyPreviewResponse.type = Types::StartLifecyclePolicyPreviewResponse
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TagStatus.add_member(:tagged, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TAGGED", traits: {"smithy.api#enumValue" => "TAGGED"}))
    TagStatus.add_member(:untagged, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNTAGGED", traits: {"smithy.api#enumValue" => "UNTAGGED"}))
    TagStatus.add_member(:any, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ANY", traits: {"smithy.api#enumValue" => "ANY"}))
    Tags.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TemplateAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    TemplateAlreadyExistsException.type = Types::TemplateAlreadyExistsException
    TemplateNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    TemplateNotFoundException.type = Types::TemplateNotFoundException
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    TooManyTagsException.type = Types::TooManyTagsException
    UnableToAccessSecretException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    UnableToAccessSecretException.type = Types::UnableToAccessSecretException
    UnableToDecryptSecretValueException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    UnableToDecryptSecretValueException.type = Types::UnableToDecryptSecretValueException
    UnableToGetUpstreamImageException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    UnableToGetUpstreamImageException.type = Types::UnableToGetUpstreamImageException
    UnableToGetUpstreamLayerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    UnableToGetUpstreamLayerException.type = Types::UnableToGetUpstreamLayerException
    UnsupportedImageTypeException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    UnsupportedImageTypeException.type = Types::UnsupportedImageTypeException
    UnsupportedUpstreamRegistryException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    UnsupportedUpstreamRegistryException.type = Types::UnsupportedUpstreamRegistryException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: "tagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdatePullThroughCacheRuleRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    UpdatePullThroughCacheRuleRequest.add_member(:ecr_repository_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleRepositoryPrefix, location_name: "ecrRepositoryPrefix", traits: {"smithy.api#required" => {}}))
    UpdatePullThroughCacheRuleRequest.add_member(:credential_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialArn, location_name: "credentialArn"))
    UpdatePullThroughCacheRuleRequest.add_member(:custom_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoleArn, location_name: "customRoleArn"))
    UpdatePullThroughCacheRuleRequest.type = Types::UpdatePullThroughCacheRuleRequest
    UpdatePullThroughCacheRuleResponse.add_member(:ecr_repository_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleRepositoryPrefix, location_name: "ecrRepositoryPrefix"))
    UpdatePullThroughCacheRuleResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    UpdatePullThroughCacheRuleResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedTimestamp, location_name: "updatedAt"))
    UpdatePullThroughCacheRuleResponse.add_member(:credential_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialArn, location_name: "credentialArn"))
    UpdatePullThroughCacheRuleResponse.add_member(:custom_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoleArn, location_name: "customRoleArn"))
    UpdatePullThroughCacheRuleResponse.add_member(:upstream_repository_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleRepositoryPrefix, location_name: "upstreamRepositoryPrefix"))
    UpdatePullThroughCacheRuleResponse.type = Types::UpdatePullThroughCacheRuleResponse
    UpdateRepositoryCreationTemplateRequest.add_member(:prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prefix, location_name: "prefix", traits: {"smithy.api#required" => {}}))
    UpdateRepositoryCreationTemplateRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryTemplateDescription, location_name: "description"))
    UpdateRepositoryCreationTemplateRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfigurationForRepositoryCreationTemplate, location_name: "encryptionConfiguration"))
    UpdateRepositoryCreationTemplateRequest.add_member(:resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "resourceTags"))
    UpdateRepositoryCreationTemplateRequest.add_member(:image_tag_mutability, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagMutability, location_name: "imageTagMutability"))
    UpdateRepositoryCreationTemplateRequest.add_member(:image_tag_mutability_exclusion_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagMutabilityExclusionFilters, location_name: "imageTagMutabilityExclusionFilters"))
    UpdateRepositoryCreationTemplateRequest.add_member(:repository_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryPolicyText, location_name: "repositoryPolicy"))
    UpdateRepositoryCreationTemplateRequest.add_member(:lifecycle_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyTextForRepositoryCreationTemplate, location_name: "lifecyclePolicy"))
    UpdateRepositoryCreationTemplateRequest.add_member(:applied_for, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RCTAppliedForList, location_name: "appliedFor"))
    UpdateRepositoryCreationTemplateRequest.add_member(:custom_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoleArn, location_name: "customRoleArn"))
    UpdateRepositoryCreationTemplateRequest.type = Types::UpdateRepositoryCreationTemplateRequest
    UpdateRepositoryCreationTemplateResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    UpdateRepositoryCreationTemplateResponse.add_member(:repository_creation_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryCreationTemplate, location_name: "repositoryCreationTemplate"))
    UpdateRepositoryCreationTemplateResponse.type = Types::UpdateRepositoryCreationTemplateResponse
    UploadLayerPartRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
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
    UpstreamRegistry.add_member(:ecr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Ecr", traits: {"smithy.api#enumValue" => "ecr"}))
    UpstreamRegistry.add_member(:ecr_public, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EcrPublic", traits: {"smithy.api#enumValue" => "ecr-public"}))
    UpstreamRegistry.add_member(:quay, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Quay", traits: {"smithy.api#enumValue" => "quay"}))
    UpstreamRegistry.add_member(:k8s, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "K8s", traits: {"smithy.api#enumValue" => "k8s"}))
    UpstreamRegistry.add_member(:docker_hub, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DockerHub", traits: {"smithy.api#enumValue" => "docker-hub"}))
    UpstreamRegistry.add_member(:git_hub_container_registry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GitHubContainerRegistry", traits: {"smithy.api#enumValue" => "github-container-registry"}))
    UpstreamRegistry.add_member(:azure_container_registry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AzureContainerRegistry", traits: {"smithy.api#enumValue" => "azure-container-registry"}))
    UpstreamRegistry.add_member(:git_lab_container_registry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GitLabContainerRegistry", traits: {"smithy.api#enumValue" => "gitlab-container-registry"}))
    ValidatePullThroughCacheRuleRequest.add_member(:ecr_repository_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleRepositoryPrefix, location_name: "ecrRepositoryPrefix", traits: {"smithy.api#required" => {}}))
    ValidatePullThroughCacheRuleRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    ValidatePullThroughCacheRuleRequest.type = Types::ValidatePullThroughCacheRuleRequest
    ValidatePullThroughCacheRuleResponse.add_member(:ecr_repository_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleRepositoryPrefix, location_name: "ecrRepositoryPrefix"))
    ValidatePullThroughCacheRuleResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: "registryId"))
    ValidatePullThroughCacheRuleResponse.add_member(:upstream_registry_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: "upstreamRegistryUrl"))
    ValidatePullThroughCacheRuleResponse.add_member(:credential_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialArn, location_name: "credentialArn"))
    ValidatePullThroughCacheRuleResponse.add_member(:custom_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoleArn, location_name: "customRoleArn"))
    ValidatePullThroughCacheRuleResponse.add_member(:upstream_repository_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleRepositoryPrefix, location_name: "upstreamRepositoryPrefix"))
    ValidatePullThroughCacheRuleResponse.add_member(:is_valid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsPTCRuleValid, location_name: "isValid", traits: {"smithy.api#default" => false}))
    ValidatePullThroughCacheRuleResponse.add_member(:failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PTCValidateFailure, location_name: "failure"))
    ValidatePullThroughCacheRuleResponse.type = Types::ValidatePullThroughCacheRuleResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ValidationException.type = Types::ValidationException
    VulnerablePackage.add_member(:arch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arch, location_name: "arch"))
    VulnerablePackage.add_member(:epoch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Epoch, location_name: "epoch"))
    VulnerablePackage.add_member(:file_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilePath, location_name: "filePath"))
    VulnerablePackage.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VulnerablePackageName, location_name: "name"))
    VulnerablePackage.add_member(:package_manager, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageManager, location_name: "packageManager"))
    VulnerablePackage.add_member(:release, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Release, location_name: "release"))
    VulnerablePackage.add_member(:source_layer_hash, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceLayerHash, location_name: "sourceLayerHash"))
    VulnerablePackage.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    VulnerablePackage.add_member(:fixed_in_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FixedInVersion, location_name: "fixedInVersion"))
    VulnerablePackage.type = Types::VulnerablePackage
    VulnerablePackagesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VulnerablePackage)

    AmazonEC2ContainerRegistryV20150921 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.ecr#AmazonEC2ContainerRegistry_V20150921"
      service.name = "AmazonEC2ContainerRegistryV20150921"
      service.version = "2015-09-21"
      service.traits = {"aws.api#service" => {"sdkId" => "ECR", "arnNamespace" => "ecr", "cloudFormationName" => "ECR", "cloudTrailEventSource" => "ecr.amazonaws.com", "endpointPrefix" => "api.ecr"}, "aws.auth#sigv4" => {"name" => "ecr"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Elastic Container Registry", "smithy.api#xmlNamespace" => {"uri" => "http://ecr.amazonaws.com/doc/2015-09-21/"}}
      service.add_operation(:batch_check_layer_availability, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#BatchCheckLayerAvailability"
        operation.name = "BatchCheckLayerAvailability"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCheckLayerAvailabilityRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCheckLayerAvailabilityResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {}
      end)
      service.add_operation(:batch_delete_image, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#BatchDeleteImage"
        operation.name = "BatchDeleteImage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteImageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteImageResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {}
      end)
      service.add_operation(:batch_get_image, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#BatchGetImage"
        operation.name = "BatchGetImage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetImageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetImageResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnableToGetUpstreamImageException)
        operation.traits = {}
      end)
      service.add_operation(:batch_get_repository_scanning_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#BatchGetRepositoryScanningConfiguration"
        operation.name = "BatchGetRepositoryScanningConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetRepositoryScanningConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetRepositoryScanningConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:complete_layer_upload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#CompleteLayerUpload"
        operation.name = "CompleteLayerUpload"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompleteLayerUploadRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompleteLayerUploadResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyUploadException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLayerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayerAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayerPartTooSmallException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_pull_through_cache_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#CreatePullThroughCacheRule"
        operation.name = "CreatePullThroughCacheRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePullThroughCacheRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePullThroughCacheRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnableToAccessSecretException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnableToDecryptSecretValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedUpstreamRegistryException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_repository, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#CreateRepository"
        operation.name = "CreateRepository"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRepositoryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRepositoryResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:create_repository_creation_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#CreateRepositoryCreationTemplate"
        operation.name = "CreateRepositoryCreationTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRepositoryCreationTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRepositoryCreationTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_lifecycle_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DeleteLifecyclePolicy"
        operation.name = "DeleteLifecyclePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLifecyclePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLifecyclePolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_pull_through_cache_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DeletePullThroughCacheRule"
        operation.name = "DeletePullThroughCacheRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePullThroughCacheRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePullThroughCacheRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_registry_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DeleteRegistryPolicy"
        operation.name = "DeleteRegistryPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRegistryPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRegistryPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryPolicyNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_repository, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DeleteRepository"
        operation.name = "DeleteRepository"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRepositoryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRepositoryResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotEmptyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {}
      end)
      service.add_operation(:delete_repository_creation_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DeleteRepositoryCreationTemplate"
        operation.name = "DeleteRepositoryCreationTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRepositoryCreationTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRepositoryCreationTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_repository_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DeleteRepositoryPolicy"
        operation.name = "DeleteRepositoryPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRepositoryPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRepositoryPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryPolicyNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {}
      end)
      service.add_operation(:describe_image_replication_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DescribeImageReplicationStatus"
        operation.name = "DescribeImageReplicationStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeImageReplicationStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeImageReplicationStatusResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_image_scan_findings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DescribeImageScanFindings"
        operation.name = "DescribeImageScanFindings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeImageScanFindingsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeImageScanFindingsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeImageScanFindings.new
      end)
      service.add_operation(:describe_images, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DescribeImages"
        operation.name = "DescribeImages"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeImagesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeImagesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeImages.new
      end)
      service.add_operation(:describe_pull_through_cache_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DescribePullThroughCacheRules"
        operation.name = "DescribePullThroughCacheRules"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePullThroughCacheRulesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePullThroughCacheRulesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribePullThroughCacheRules.new
      end)
      service.add_operation(:describe_registry, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DescribeRegistry"
        operation.name = "DescribeRegistry"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRegistryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRegistryResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_repositories, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DescribeRepositories"
        operation.name = "DescribeRepositories"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRepositoriesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRepositoriesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "DescribeRepositoriesSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::DescribeRepositories.new
      end)
      service.add_operation(:describe_repository_creation_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DescribeRepositoryCreationTemplates"
        operation.name = "DescribeRepositoryCreationTemplates"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRepositoryCreationTemplatesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRepositoryCreationTemplatesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeRepositoryCreationTemplates.new
      end)
      service.add_operation(:get_account_setting, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#GetAccountSetting"
        operation.name = "GetAccountSetting"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountSettingRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountSettingResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_authorization_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#GetAuthorizationToken"
        operation.name = "GetAuthorizationToken"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAuthorizationTokenRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAuthorizationTokenResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {}
      end)
      service.add_operation(:get_download_url_for_layer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#GetDownloadUrlForLayer"
        operation.name = "GetDownloadUrlForLayer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDownloadUrlForLayerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDownloadUrlForLayerResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayerInaccessibleException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayersNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnableToGetUpstreamLayerException)
        operation.traits = {}
      end)
      service.add_operation(:get_lifecycle_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#GetLifecyclePolicy"
        operation.name = "GetLifecyclePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLifecyclePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLifecyclePolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_lifecycle_policy_preview, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#GetLifecyclePolicyPreview"
        operation.name = "GetLifecyclePolicyPreview"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLifecyclePolicyPreviewRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLifecyclePolicyPreviewResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyPreviewNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetLifecyclePolicyPreview.new
      end)
      service.add_operation(:get_registry_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#GetRegistryPolicy"
        operation.name = "GetRegistryPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRegistryPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRegistryPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryPolicyNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_registry_scanning_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#GetRegistryScanningConfiguration"
        operation.name = "GetRegistryScanningConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRegistryScanningConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRegistryScanningConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_repository_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#GetRepositoryPolicy"
        operation.name = "GetRepositoryPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRepositoryPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRepositoryPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryPolicyNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {}
      end)
      service.add_operation(:initiate_layer_upload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#InitiateLayerUpload"
        operation.name = "InitiateLayerUpload"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InitiateLayerUploadRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InitiateLayerUploadResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {}
      end)
      service.add_operation(:list_images, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#ListImages"
        operation.name = "ListImages"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListImagesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListImagesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListImagesFailure", "params" => {"repositoryName" => "not-a-real-repository"}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"failure" => {}}}]}
        operation[:paginator] = Paginators::ListImages.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {}
      end)
      service.add_operation(:put_account_setting, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#PutAccountSetting"
        operation.name = "PutAccountSetting"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutAccountSettingRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutAccountSettingResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:put_image, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#PutImage"
        operation.name = "PutImage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutImageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutImageResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageDigestDoesNotMatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayersNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReferencedImagesNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {}
      end)
      service.add_operation(:put_image_scanning_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#PutImageScanningConfiguration"
        operation.name = "PutImageScanningConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutImageScanningConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutImageScanningConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:put_image_tag_mutability, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#PutImageTagMutability"
        operation.name = "PutImageTagMutability"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutImageTagMutabilityRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutImageTagMutabilityResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {}
      end)
      service.add_operation(:put_lifecycle_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#PutLifecyclePolicy"
        operation.name = "PutLifecyclePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutLifecyclePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutLifecyclePolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:put_registry_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#PutRegistryPolicy"
        operation.name = "PutRegistryPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutRegistryPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutRegistryPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:put_registry_scanning_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#PutRegistryScanningConfiguration"
        operation.name = "PutRegistryScanningConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutRegistryScanningConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutRegistryScanningConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:put_replication_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#PutReplicationConfiguration"
        operation.name = "PutReplicationConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutReplicationConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutReplicationConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:set_repository_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#SetRepositoryPolicy"
        operation.name = "SetRepositoryPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetRepositoryPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetRepositoryPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {}
      end)
      service.add_operation(:start_image_scan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#StartImageScan"
        operation.name = "StartImageScan"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartImageScanRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartImageScanResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedImageTypeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:start_lifecycle_policy_preview, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#StartLifecyclePolicyPreview"
        operation.name = "StartLifecyclePolicyPreview"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartLifecyclePolicyPreviewRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartLifecyclePolicyPreviewResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyPreviewInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:update_pull_through_cache_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#UpdatePullThroughCacheRule"
        operation.name = "UpdatePullThroughCacheRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePullThroughCacheRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePullThroughCacheRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnableToAccessSecretException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnableToDecryptSecretValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_repository_creation_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#UpdateRepositoryCreationTemplate"
        operation.name = "UpdateRepositoryCreationTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRepositoryCreationTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRepositoryCreationTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:upload_layer_part, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#UploadLayerPart"
        operation.name = "UploadLayerPart"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadLayerPartRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadLayerPartResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLayerPartException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:validate_pull_through_cache_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#ValidatePullThroughCacheRule"
        operation.name = "ValidatePullThroughCacheRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatePullThroughCacheRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatePullThroughCacheRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
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
