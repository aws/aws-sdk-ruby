# frozen_string_literal: true

# This is generated code!

module Aws::ECR
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccountSettingName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#AccountSettingName', name: 'AccountSettingName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    AccountSettingValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#AccountSettingValue', name: 'AccountSettingValue')
    Arch = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#Arch', name: 'Arch')
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#Arn', name: 'Arn')
    Attribute = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#Attribute', name: 'Attribute')
    AttributeKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#AttributeKey', name: 'AttributeKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    AttributeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#AttributeList', name: 'AttributeList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    AttributeValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#AttributeValue', name: 'AttributeValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Author = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#Author', name: 'Author')
    AuthorizationData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#AuthorizationData', name: 'AuthorizationData')
    AuthorizationDataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#AuthorizationDataList', name: 'AuthorizationDataList')
    AwsEcrContainerImageDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#AwsEcrContainerImageDetails', name: 'AwsEcrContainerImageDetails')
    Base64 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#Base64', name: 'Base64', traits: {"smithy.api#pattern" => "^\\S+$"})
    BaseScore = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.ecr#BaseScore', name: 'BaseScore', traits: {"smithy.api#default" => 0})
    BatchCheckLayerAvailabilityRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#BatchCheckLayerAvailabilityRequest', name: 'BatchCheckLayerAvailabilityRequest')
    BatchCheckLayerAvailabilityResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#BatchCheckLayerAvailabilityResponse', name: 'BatchCheckLayerAvailabilityResponse')
    BatchDeleteImageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#BatchDeleteImageRequest', name: 'BatchDeleteImageRequest')
    BatchDeleteImageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#BatchDeleteImageResponse', name: 'BatchDeleteImageResponse')
    BatchGetImageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#BatchGetImageRequest', name: 'BatchGetImageRequest')
    BatchGetImageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#BatchGetImageResponse', name: 'BatchGetImageResponse')
    BatchGetRepositoryScanningConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#BatchGetRepositoryScanningConfigurationRequest', name: 'BatchGetRepositoryScanningConfigurationRequest')
    BatchGetRepositoryScanningConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#BatchGetRepositoryScanningConfigurationResponse', name: 'BatchGetRepositoryScanningConfigurationResponse')
    BatchedOperationLayerDigest = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#BatchedOperationLayerDigest', name: 'BatchedOperationLayerDigest', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    BatchedOperationLayerDigestList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#BatchedOperationLayerDigestList', name: 'BatchedOperationLayerDigestList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    CompleteLayerUploadRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#CompleteLayerUploadRequest', name: 'CompleteLayerUploadRequest')
    CompleteLayerUploadResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#CompleteLayerUploadResponse', name: 'CompleteLayerUploadResponse')
    CreatePullThroughCacheRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#CreatePullThroughCacheRuleRequest', name: 'CreatePullThroughCacheRuleRequest')
    CreatePullThroughCacheRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#CreatePullThroughCacheRuleResponse', name: 'CreatePullThroughCacheRuleResponse')
    CreateRepositoryCreationTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#CreateRepositoryCreationTemplateRequest', name: 'CreateRepositoryCreationTemplateRequest')
    CreateRepositoryCreationTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#CreateRepositoryCreationTemplateResponse', name: 'CreateRepositoryCreationTemplateResponse')
    CreateRepositoryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#CreateRepositoryRequest', name: 'CreateRepositoryRequest')
    CreateRepositoryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#CreateRepositoryResponse', name: 'CreateRepositoryResponse')
    CreationTimestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.ecr#CreationTimestamp', name: 'CreationTimestamp')
    CredentialArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#CredentialArn', name: 'CredentialArn', traits: {"smithy.api#length" => {"min" => 50, "max" => 612}, "smithy.api#pattern" => "^arn:aws:secretsmanager:[a-zA-Z0-9-:]+:secret:ecr\\-pullthroughcache\\/[a-zA-Z0-9\\/_+=.@-]+$"})
    CustomRoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#CustomRoleArn', name: 'CustomRoleArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    CvssScore = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#CvssScore', name: 'CvssScore')
    CvssScoreAdjustment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#CvssScoreAdjustment', name: 'CvssScoreAdjustment')
    CvssScoreAdjustmentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#CvssScoreAdjustmentList', name: 'CvssScoreAdjustmentList')
    CvssScoreDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#CvssScoreDetails', name: 'CvssScoreDetails')
    CvssScoreList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#CvssScoreList', name: 'CvssScoreList')
    Date = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.ecr#Date', name: 'Date')
    DeleteLifecyclePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#DeleteLifecyclePolicyRequest', name: 'DeleteLifecyclePolicyRequest')
    DeleteLifecyclePolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#DeleteLifecyclePolicyResponse', name: 'DeleteLifecyclePolicyResponse')
    DeletePullThroughCacheRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#DeletePullThroughCacheRuleRequest', name: 'DeletePullThroughCacheRuleRequest')
    DeletePullThroughCacheRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#DeletePullThroughCacheRuleResponse', name: 'DeletePullThroughCacheRuleResponse')
    DeleteRegistryPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#DeleteRegistryPolicyRequest', name: 'DeleteRegistryPolicyRequest')
    DeleteRegistryPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#DeleteRegistryPolicyResponse', name: 'DeleteRegistryPolicyResponse')
    DeleteRepositoryCreationTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#DeleteRepositoryCreationTemplateRequest', name: 'DeleteRepositoryCreationTemplateRequest')
    DeleteRepositoryCreationTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#DeleteRepositoryCreationTemplateResponse', name: 'DeleteRepositoryCreationTemplateResponse')
    DeleteRepositoryPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#DeleteRepositoryPolicyRequest', name: 'DeleteRepositoryPolicyRequest')
    DeleteRepositoryPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#DeleteRepositoryPolicyResponse', name: 'DeleteRepositoryPolicyResponse')
    DeleteRepositoryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#DeleteRepositoryRequest', name: 'DeleteRepositoryRequest')
    DeleteRepositoryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#DeleteRepositoryResponse', name: 'DeleteRepositoryResponse')
    DescribeImageReplicationStatusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#DescribeImageReplicationStatusRequest', name: 'DescribeImageReplicationStatusRequest')
    DescribeImageReplicationStatusResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#DescribeImageReplicationStatusResponse', name: 'DescribeImageReplicationStatusResponse')
    DescribeImageScanFindingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#DescribeImageScanFindingsRequest', name: 'DescribeImageScanFindingsRequest')
    DescribeImageScanFindingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#DescribeImageScanFindingsResponse', name: 'DescribeImageScanFindingsResponse')
    DescribeImagesFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#DescribeImagesFilter', name: 'DescribeImagesFilter')
    DescribeImagesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#DescribeImagesRequest', name: 'DescribeImagesRequest')
    DescribeImagesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#DescribeImagesResponse', name: 'DescribeImagesResponse')
    DescribePullThroughCacheRulesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#DescribePullThroughCacheRulesRequest', name: 'DescribePullThroughCacheRulesRequest')
    DescribePullThroughCacheRulesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#DescribePullThroughCacheRulesResponse', name: 'DescribePullThroughCacheRulesResponse')
    DescribeRegistryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#DescribeRegistryRequest', name: 'DescribeRegistryRequest')
    DescribeRegistryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#DescribeRegistryResponse', name: 'DescribeRegistryResponse')
    DescribeRepositoriesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#DescribeRepositoriesRequest', name: 'DescribeRepositoriesRequest')
    DescribeRepositoriesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#DescribeRepositoriesResponse', name: 'DescribeRepositoriesResponse')
    DescribeRepositoryCreationTemplatesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#DescribeRepositoryCreationTemplatesRequest', name: 'DescribeRepositoryCreationTemplatesRequest')
    DescribeRepositoryCreationTemplatesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#DescribeRepositoryCreationTemplatesResponse', name: 'DescribeRepositoryCreationTemplatesResponse')
    EmptyUploadException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#EmptyUploadException', name: 'EmptyUploadException', traits: {"smithy.api#error" => "client"})
    EncryptionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#EncryptionConfiguration', name: 'EncryptionConfiguration')
    EncryptionConfigurationForRepositoryCreationTemplate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#EncryptionConfigurationForRepositoryCreationTemplate', name: 'EncryptionConfigurationForRepositoryCreationTemplate')
    EncryptionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ecr#EncryptionType', name: 'EncryptionType')
    EnhancedImageScanFinding = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#EnhancedImageScanFinding', name: 'EnhancedImageScanFinding')
    EnhancedImageScanFindingList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#EnhancedImageScanFindingList', name: 'EnhancedImageScanFindingList')
    Epoch = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ecr#Epoch', name: 'Epoch')
    EvaluationTimestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.ecr#EvaluationTimestamp', name: 'EvaluationTimestamp')
    ExceptionMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#ExceptionMessage', name: 'ExceptionMessage')
    ExpirationTimestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.ecr#ExpirationTimestamp', name: 'ExpirationTimestamp')
    ExploitAvailable = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#ExploitAvailable', name: 'ExploitAvailable')
    FilePath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#FilePath', name: 'FilePath')
    FindingArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#FindingArn', name: 'FindingArn')
    FindingDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#FindingDescription', name: 'FindingDescription')
    FindingName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#FindingName', name: 'FindingName')
    FindingSeverity = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ecr#FindingSeverity', name: 'FindingSeverity')
    FindingSeverityCounts = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.ecr#FindingSeverityCounts', name: 'FindingSeverityCounts')
    FixAvailable = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#FixAvailable', name: 'FixAvailable')
    FixedInVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#FixedInVersion', name: 'FixedInVersion')
    ForceFlag = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.ecr#ForceFlag', name: 'ForceFlag', traits: {"smithy.api#default" => false})
    GetAccountSettingRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#GetAccountSettingRequest', name: 'GetAccountSettingRequest')
    GetAccountSettingResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#GetAccountSettingResponse', name: 'GetAccountSettingResponse')
    GetAuthorizationTokenRegistryIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#GetAuthorizationTokenRegistryIdList', name: 'GetAuthorizationTokenRegistryIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    GetAuthorizationTokenRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#GetAuthorizationTokenRequest', name: 'GetAuthorizationTokenRequest')
    GetAuthorizationTokenResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#GetAuthorizationTokenResponse', name: 'GetAuthorizationTokenResponse')
    GetDownloadUrlForLayerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#GetDownloadUrlForLayerRequest', name: 'GetDownloadUrlForLayerRequest')
    GetDownloadUrlForLayerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#GetDownloadUrlForLayerResponse', name: 'GetDownloadUrlForLayerResponse')
    GetLifecyclePolicyPreviewRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#GetLifecyclePolicyPreviewRequest', name: 'GetLifecyclePolicyPreviewRequest')
    GetLifecyclePolicyPreviewResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#GetLifecyclePolicyPreviewResponse', name: 'GetLifecyclePolicyPreviewResponse')
    GetLifecyclePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#GetLifecyclePolicyRequest', name: 'GetLifecyclePolicyRequest')
    GetLifecyclePolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#GetLifecyclePolicyResponse', name: 'GetLifecyclePolicyResponse')
    GetRegistryPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#GetRegistryPolicyRequest', name: 'GetRegistryPolicyRequest')
    GetRegistryPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#GetRegistryPolicyResponse', name: 'GetRegistryPolicyResponse')
    GetRegistryScanningConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#GetRegistryScanningConfigurationRequest', name: 'GetRegistryScanningConfigurationRequest')
    GetRegistryScanningConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#GetRegistryScanningConfigurationResponse', name: 'GetRegistryScanningConfigurationResponse')
    GetRepositoryPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#GetRepositoryPolicyRequest', name: 'GetRepositoryPolicyRequest')
    GetRepositoryPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#GetRepositoryPolicyResponse', name: 'GetRepositoryPolicyResponse')
    Image = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#Image', name: 'Image')
    ImageActionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ecr#ImageActionType', name: 'ImageActionType')
    ImageAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#ImageAlreadyExistsException', name: 'ImageAlreadyExistsException', traits: {"smithy.api#error" => "client"})
    ImageCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ecr#ImageCount', name: 'ImageCount', traits: {"smithy.api#range" => {"min" => 0}})
    ImageDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#ImageDetail', name: 'ImageDetail')
    ImageDetailList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#ImageDetailList', name: 'ImageDetailList')
    ImageDigest = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#ImageDigest', name: 'ImageDigest')
    ImageDigestDoesNotMatchException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#ImageDigestDoesNotMatchException', name: 'ImageDigestDoesNotMatchException', traits: {"smithy.api#error" => "client"})
    ImageFailure = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#ImageFailure', name: 'ImageFailure')
    ImageFailureCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ecr#ImageFailureCode', name: 'ImageFailureCode')
    ImageFailureList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#ImageFailureList', name: 'ImageFailureList')
    ImageFailureReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#ImageFailureReason', name: 'ImageFailureReason')
    ImageIdentifier = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#ImageIdentifier', name: 'ImageIdentifier')
    ImageIdentifierList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#ImageIdentifierList', name: 'ImageIdentifierList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ImageList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#ImageList', name: 'ImageList')
    ImageManifest = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#ImageManifest', name: 'ImageManifest', traits: {"smithy.api#length" => {"min" => 1, "max" => 4194304}})
    ImageNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#ImageNotFoundException', name: 'ImageNotFoundException', traits: {"smithy.api#error" => "client"})
    ImageReplicationStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#ImageReplicationStatus', name: 'ImageReplicationStatus')
    ImageReplicationStatusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#ImageReplicationStatusList', name: 'ImageReplicationStatusList')
    ImageScanFinding = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#ImageScanFinding', name: 'ImageScanFinding')
    ImageScanFindingList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#ImageScanFindingList', name: 'ImageScanFindingList')
    ImageScanFindings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#ImageScanFindings', name: 'ImageScanFindings')
    ImageScanFindingsSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#ImageScanFindingsSummary', name: 'ImageScanFindingsSummary')
    ImageScanStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#ImageScanStatus', name: 'ImageScanStatus')
    ImageScanningConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#ImageScanningConfiguration', name: 'ImageScanningConfiguration')
    ImageSizeInBytes = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ecr#ImageSizeInBytes', name: 'ImageSizeInBytes')
    ImageTag = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#ImageTag', name: 'ImageTag', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    ImageTagAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#ImageTagAlreadyExistsException', name: 'ImageTagAlreadyExistsException', traits: {"smithy.api#error" => "client"})
    ImageTagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#ImageTagList', name: 'ImageTagList')
    ImageTagMutability = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ecr#ImageTagMutability', name: 'ImageTagMutability')
    ImageTagMutabilityExclusionFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#ImageTagMutabilityExclusionFilter', name: 'ImageTagMutabilityExclusionFilter')
    ImageTagMutabilityExclusionFilterType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ecr#ImageTagMutabilityExclusionFilterType', name: 'ImageTagMutabilityExclusionFilterType')
    ImageTagMutabilityExclusionFilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#ImageTagMutabilityExclusionFilterValue', name: 'ImageTagMutabilityExclusionFilterValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[0-9a-zA-Z._*-]{1,128}$"})
    ImageTagMutabilityExclusionFilters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#ImageTagMutabilityExclusionFilters', name: 'ImageTagMutabilityExclusionFilters', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ImageTagsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#ImageTagsList', name: 'ImageTagsList')
    InUseCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ecr#InUseCount', name: 'InUseCount', traits: {"smithy.api#range" => {"min" => 0}})
    InitiateLayerUploadRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#InitiateLayerUploadRequest', name: 'InitiateLayerUploadRequest')
    InitiateLayerUploadResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#InitiateLayerUploadResponse', name: 'InitiateLayerUploadResponse')
    InvalidLayerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#InvalidLayerException', name: 'InvalidLayerException', traits: {"smithy.api#error" => "client"})
    InvalidLayerPartException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#InvalidLayerPartException', name: 'InvalidLayerPartException', traits: {"smithy.api#error" => "client"})
    InvalidParameterException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#InvalidParameterException', name: 'InvalidParameterException', traits: {"smithy.api#error" => "client"})
    InvalidTagParameterException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#InvalidTagParameterException', name: 'InvalidTagParameterException', traits: {"smithy.api#error" => "client"})
    IsPTCRuleValid = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.ecr#IsPTCRuleValid', name: 'IsPTCRuleValid', traits: {"smithy.api#default" => false})
    KmsError = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#KmsError', name: 'KmsError')
    KmsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#KmsException', name: 'KmsException', traits: {"smithy.api#error" => "client"})
    KmsKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#KmsKey', name: 'KmsKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    KmsKeyForRepositoryCreationTemplate = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#KmsKeyForRepositoryCreationTemplate', name: 'KmsKeyForRepositoryCreationTemplate', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^$|arn:aws:kms:[a-z0-9-]+:[0-9]{12}:key\\/[a-z0-9-]+$"})
    Layer = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#Layer', name: 'Layer')
    LayerAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#LayerAlreadyExistsException', name: 'LayerAlreadyExistsException', traits: {"smithy.api#error" => "client"})
    LayerAvailability = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ecr#LayerAvailability', name: 'LayerAvailability')
    LayerDigest = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#LayerDigest', name: 'LayerDigest', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9-_+.]+:[a-fA-F0-9]+$"})
    LayerDigestList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#LayerDigestList', name: 'LayerDigestList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    LayerFailure = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#LayerFailure', name: 'LayerFailure')
    LayerFailureCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ecr#LayerFailureCode', name: 'LayerFailureCode')
    LayerFailureList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#LayerFailureList', name: 'LayerFailureList')
    LayerFailureReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#LayerFailureReason', name: 'LayerFailureReason')
    LayerInaccessibleException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#LayerInaccessibleException', name: 'LayerInaccessibleException', traits: {"smithy.api#error" => "client"})
    LayerList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#LayerList', name: 'LayerList')
    LayerPartBlob = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.ecr#LayerPartBlob', name: 'LayerPartBlob', traits: {"smithy.api#length" => {"min" => 0, "max" => 20971520}})
    LayerPartTooSmallException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#LayerPartTooSmallException', name: 'LayerPartTooSmallException', traits: {"smithy.api#error" => "client"})
    LayerSizeInBytes = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ecr#LayerSizeInBytes', name: 'LayerSizeInBytes')
    LayersNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#LayersNotFoundException', name: 'LayersNotFoundException', traits: {"smithy.api#error" => "client"})
    LifecyclePolicyNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#LifecyclePolicyNotFoundException', name: 'LifecyclePolicyNotFoundException', traits: {"smithy.api#error" => "client"})
    LifecyclePolicyPreviewFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#LifecyclePolicyPreviewFilter', name: 'LifecyclePolicyPreviewFilter')
    LifecyclePolicyPreviewInProgressException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#LifecyclePolicyPreviewInProgressException', name: 'LifecyclePolicyPreviewInProgressException', traits: {"smithy.api#error" => "client"})
    LifecyclePolicyPreviewNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#LifecyclePolicyPreviewNotFoundException', name: 'LifecyclePolicyPreviewNotFoundException', traits: {"smithy.api#error" => "client"})
    LifecyclePolicyPreviewResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#LifecyclePolicyPreviewResult', name: 'LifecyclePolicyPreviewResult')
    LifecyclePolicyPreviewResultList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#LifecyclePolicyPreviewResultList', name: 'LifecyclePolicyPreviewResultList')
    LifecyclePolicyPreviewStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ecr#LifecyclePolicyPreviewStatus', name: 'LifecyclePolicyPreviewStatus')
    LifecyclePolicyPreviewSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#LifecyclePolicyPreviewSummary', name: 'LifecyclePolicyPreviewSummary')
    LifecyclePolicyRuleAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#LifecyclePolicyRuleAction', name: 'LifecyclePolicyRuleAction')
    LifecyclePolicyRulePriority = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ecr#LifecyclePolicyRulePriority', name: 'LifecyclePolicyRulePriority', traits: {"smithy.api#range" => {"min" => 1}})
    LifecyclePolicyText = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#LifecyclePolicyText', name: 'LifecyclePolicyText', traits: {"smithy.api#length" => {"min" => 100, "max" => 30720}})
    LifecyclePolicyTextForRepositoryCreationTemplate = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#LifecyclePolicyTextForRepositoryCreationTemplate', name: 'LifecyclePolicyTextForRepositoryCreationTemplate', traits: {"smithy.api#length" => {"min" => 0, "max" => 30720}})
    LifecyclePreviewMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ecr#LifecyclePreviewMaxResults', name: 'LifecyclePreviewMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client"})
    ListImagesFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#ListImagesFilter', name: 'ListImagesFilter')
    ListImagesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#ListImagesRequest', name: 'ListImagesRequest')
    ListImagesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#ListImagesResponse', name: 'ListImagesResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ecr#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MediaType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#MediaType', name: 'MediaType')
    MediaTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#MediaTypeList', name: 'MediaTypeList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    Metric = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#Metric', name: 'Metric')
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#NextToken', name: 'NextToken')
    PTCValidateFailure = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#PTCValidateFailure', name: 'PTCValidateFailure')
    PackageManager = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#PackageManager', name: 'PackageManager')
    PackageVulnerabilityDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#PackageVulnerabilityDetails', name: 'PackageVulnerabilityDetails')
    PartSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ecr#PartSize', name: 'PartSize', traits: {"smithy.api#range" => {"min" => 0}})
    Platform = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#Platform', name: 'Platform')
    Prefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#Prefix', name: 'Prefix', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^((?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*/?|ROOT)$"})
    PrefixList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#PrefixList', name: 'PrefixList')
    ProxyEndpoint = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#ProxyEndpoint', name: 'ProxyEndpoint')
    PullThroughCacheRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#PullThroughCacheRule', name: 'PullThroughCacheRule')
    PullThroughCacheRuleAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#PullThroughCacheRuleAlreadyExistsException', name: 'PullThroughCacheRuleAlreadyExistsException', traits: {"smithy.api#error" => "client"})
    PullThroughCacheRuleList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#PullThroughCacheRuleList', name: 'PullThroughCacheRuleList')
    PullThroughCacheRuleNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#PullThroughCacheRuleNotFoundException', name: 'PullThroughCacheRuleNotFoundException', traits: {"smithy.api#error" => "client"})
    PullThroughCacheRuleRepositoryPrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#PullThroughCacheRuleRepositoryPrefix', name: 'PullThroughCacheRuleRepositoryPrefix', traits: {"smithy.api#length" => {"min" => 2, "max" => 30}, "smithy.api#pattern" => "^((?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*/?|ROOT)$"})
    PullThroughCacheRuleRepositoryPrefixList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#PullThroughCacheRuleRepositoryPrefixList', name: 'PullThroughCacheRuleRepositoryPrefixList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    PushTimestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.ecr#PushTimestamp', name: 'PushTimestamp')
    PutAccountSettingRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#PutAccountSettingRequest', name: 'PutAccountSettingRequest')
    PutAccountSettingResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#PutAccountSettingResponse', name: 'PutAccountSettingResponse')
    PutImageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#PutImageRequest', name: 'PutImageRequest')
    PutImageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#PutImageResponse', name: 'PutImageResponse')
    PutImageScanningConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#PutImageScanningConfigurationRequest', name: 'PutImageScanningConfigurationRequest')
    PutImageScanningConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#PutImageScanningConfigurationResponse', name: 'PutImageScanningConfigurationResponse')
    PutImageTagMutabilityRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#PutImageTagMutabilityRequest', name: 'PutImageTagMutabilityRequest')
    PutImageTagMutabilityResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#PutImageTagMutabilityResponse', name: 'PutImageTagMutabilityResponse')
    PutLifecyclePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#PutLifecyclePolicyRequest', name: 'PutLifecyclePolicyRequest')
    PutLifecyclePolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#PutLifecyclePolicyResponse', name: 'PutLifecyclePolicyResponse')
    PutRegistryPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#PutRegistryPolicyRequest', name: 'PutRegistryPolicyRequest')
    PutRegistryPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#PutRegistryPolicyResponse', name: 'PutRegistryPolicyResponse')
    PutRegistryScanningConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#PutRegistryScanningConfigurationRequest', name: 'PutRegistryScanningConfigurationRequest')
    PutRegistryScanningConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#PutRegistryScanningConfigurationResponse', name: 'PutRegistryScanningConfigurationResponse')
    PutReplicationConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#PutReplicationConfigurationRequest', name: 'PutReplicationConfigurationRequest')
    PutReplicationConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#PutReplicationConfigurationResponse', name: 'PutReplicationConfigurationResponse')
    RCTAppliedFor = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ecr#RCTAppliedFor', name: 'RCTAppliedFor')
    RCTAppliedForList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#RCTAppliedForList', name: 'RCTAppliedForList')
    Reason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#Reason', name: 'Reason')
    Recommendation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#Recommendation', name: 'Recommendation')
    RecommendationText = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#RecommendationText', name: 'RecommendationText')
    RecordedPullTimestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.ecr#RecordedPullTimestamp', name: 'RecordedPullTimestamp')
    ReferenceUrlsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#ReferenceUrlsList', name: 'ReferenceUrlsList')
    ReferencedImagesNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#ReferencedImagesNotFoundException', name: 'ReferencedImagesNotFoundException', traits: {"smithy.api#error" => "client"})
    Region = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#Region', name: 'Region', traits: {"smithy.api#length" => {"min" => 2, "max" => 25}, "smithy.api#pattern" => "^[0-9a-z-]{2,25}$"})
    RegistryId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#RegistryId', name: 'RegistryId', traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    RegistryPolicyNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#RegistryPolicyNotFoundException', name: 'RegistryPolicyNotFoundException', traits: {"smithy.api#error" => "client"})
    RegistryPolicyText = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#RegistryPolicyText', name: 'RegistryPolicyText', traits: {"smithy.api#length" => {"min" => 0, "max" => 10240}})
    RegistryScanningConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#RegistryScanningConfiguration', name: 'RegistryScanningConfiguration')
    RegistryScanningRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#RegistryScanningRule', name: 'RegistryScanningRule')
    RegistryScanningRuleList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#RegistryScanningRuleList', name: 'RegistryScanningRuleList', traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    RelatedVulnerabilitiesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#RelatedVulnerabilitiesList', name: 'RelatedVulnerabilitiesList')
    RelatedVulnerability = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#RelatedVulnerability', name: 'RelatedVulnerability')
    Release = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#Release', name: 'Release')
    Remediation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#Remediation', name: 'Remediation')
    ReplicationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#ReplicationConfiguration', name: 'ReplicationConfiguration')
    ReplicationDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#ReplicationDestination', name: 'ReplicationDestination')
    ReplicationDestinationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#ReplicationDestinationList', name: 'ReplicationDestinationList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ReplicationError = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#ReplicationError', name: 'ReplicationError')
    ReplicationRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#ReplicationRule', name: 'ReplicationRule')
    ReplicationRuleList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#ReplicationRuleList', name: 'ReplicationRuleList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ReplicationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ecr#ReplicationStatus', name: 'ReplicationStatus')
    Repository = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#Repository', name: 'Repository')
    RepositoryAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#RepositoryAlreadyExistsException', name: 'RepositoryAlreadyExistsException', traits: {"smithy.api#error" => "client"})
    RepositoryCreationTemplate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#RepositoryCreationTemplate', name: 'RepositoryCreationTemplate')
    RepositoryCreationTemplateList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#RepositoryCreationTemplateList', name: 'RepositoryCreationTemplateList')
    RepositoryFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#RepositoryFilter', name: 'RepositoryFilter')
    RepositoryFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#RepositoryFilterList', name: 'RepositoryFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    RepositoryFilterType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ecr#RepositoryFilterType', name: 'RepositoryFilterType')
    RepositoryFilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#RepositoryFilterValue', name: 'RepositoryFilterValue', traits: {"smithy.api#length" => {"min" => 2, "max" => 256}, "smithy.api#pattern" => "^(?:[a-z0-9]+(?:[._-][a-z0-9]*)*/)*[a-z0-9]*(?:[._-][a-z0-9]*)*$"})
    RepositoryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#RepositoryList', name: 'RepositoryList')
    RepositoryName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#RepositoryName', name: 'RepositoryName', traits: {"smithy.api#length" => {"min" => 2, "max" => 256}, "smithy.api#pattern" => "^(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*$"})
    RepositoryNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#RepositoryNameList', name: 'RepositoryNameList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    RepositoryNotEmptyException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#RepositoryNotEmptyException', name: 'RepositoryNotEmptyException', traits: {"smithy.api#error" => "client"})
    RepositoryNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#RepositoryNotFoundException', name: 'RepositoryNotFoundException', traits: {"smithy.api#error" => "client"})
    RepositoryPolicyNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#RepositoryPolicyNotFoundException', name: 'RepositoryPolicyNotFoundException', traits: {"smithy.api#error" => "client"})
    RepositoryPolicyText = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#RepositoryPolicyText', name: 'RepositoryPolicyText', traits: {"smithy.api#length" => {"min" => 0, "max" => 10240}})
    RepositoryScanningConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#RepositoryScanningConfiguration', name: 'RepositoryScanningConfiguration')
    RepositoryScanningConfigurationFailure = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#RepositoryScanningConfigurationFailure', name: 'RepositoryScanningConfigurationFailure')
    RepositoryScanningConfigurationFailureList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#RepositoryScanningConfigurationFailureList', name: 'RepositoryScanningConfigurationFailureList')
    RepositoryScanningConfigurationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#RepositoryScanningConfigurationList', name: 'RepositoryScanningConfigurationList')
    RepositoryTemplateDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#RepositoryTemplateDescription', name: 'RepositoryTemplateDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Resource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#Resource', name: 'Resource')
    ResourceDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#ResourceDetails', name: 'ResourceDetails')
    ResourceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#ResourceId', name: 'ResourceId')
    ResourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#ResourceList', name: 'ResourceList')
    ScanFrequency = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ecr#ScanFrequency', name: 'ScanFrequency')
    ScanNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#ScanNotFoundException', name: 'ScanNotFoundException', traits: {"smithy.api#error" => "client"})
    ScanOnPushFlag = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.ecr#ScanOnPushFlag', name: 'ScanOnPushFlag', traits: {"smithy.api#default" => false})
    ScanStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ecr#ScanStatus', name: 'ScanStatus')
    ScanStatusDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#ScanStatusDescription', name: 'ScanStatusDescription')
    ScanTimestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.ecr#ScanTimestamp', name: 'ScanTimestamp')
    ScanType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ecr#ScanType', name: 'ScanType')
    ScanningConfigurationFailureCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ecr#ScanningConfigurationFailureCode', name: 'ScanningConfigurationFailureCode')
    ScanningConfigurationFailureReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#ScanningConfigurationFailureReason', name: 'ScanningConfigurationFailureReason')
    ScanningConfigurationRepositoryNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#ScanningConfigurationRepositoryNameList', name: 'ScanningConfigurationRepositoryNameList', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    ScanningRepositoryFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#ScanningRepositoryFilter', name: 'ScanningRepositoryFilter')
    ScanningRepositoryFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#ScanningRepositoryFilterList', name: 'ScanningRepositoryFilterList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ScanningRepositoryFilterType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ecr#ScanningRepositoryFilterType', name: 'ScanningRepositoryFilterType')
    ScanningRepositoryFilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#ScanningRepositoryFilterValue', name: 'ScanningRepositoryFilterValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-z0-9*](?:[._\\-/a-z0-9*]?[a-z0-9*]+)*$"})
    Score = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.ecr#Score', name: 'Score', traits: {"smithy.api#default" => 0})
    ScoreDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#ScoreDetails', name: 'ScoreDetails')
    ScoringVector = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#ScoringVector', name: 'ScoringVector')
    SecretNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#SecretNotFoundException', name: 'SecretNotFoundException', traits: {"smithy.api#error" => "client"})
    ServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#ServerException', name: 'ServerException', traits: {"smithy.api#error" => "server"})
    SetRepositoryPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#SetRepositoryPolicyRequest', name: 'SetRepositoryPolicyRequest')
    SetRepositoryPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#SetRepositoryPolicyResponse', name: 'SetRepositoryPolicyResponse')
    Severity = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#Severity', name: 'Severity')
    SeverityCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ecr#SeverityCount', name: 'SeverityCount', traits: {"smithy.api#range" => {"min" => 0}})
    Source = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#Source', name: 'Source')
    SourceLayerHash = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#SourceLayerHash', name: 'SourceLayerHash')
    StartImageScanRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#StartImageScanRequest', name: 'StartImageScanRequest')
    StartImageScanResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#StartImageScanResponse', name: 'StartImageScanResponse')
    StartLifecyclePolicyPreviewRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#StartLifecyclePolicyPreviewRequest', name: 'StartLifecyclePolicyPreviewRequest')
    StartLifecyclePolicyPreviewResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#StartLifecyclePolicyPreviewResponse', name: 'StartLifecyclePolicyPreviewResponse')
    Status = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#Status', name: 'Status')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#TagKey', name: 'TagKey')
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#TagKeyList', name: 'TagKeyList')
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#TagList', name: 'TagList')
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#TagResourceResponse', name: 'TagResourceResponse')
    TagStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ecr#TagStatus', name: 'TagStatus')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#TagValue', name: 'TagValue')
    Tags = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.ecr#Tags', name: 'Tags')
    TemplateAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#TemplateAlreadyExistsException', name: 'TemplateAlreadyExistsException', traits: {"smithy.api#error" => "client"})
    TemplateNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#TemplateNotFoundException', name: 'TemplateNotFoundException', traits: {"smithy.api#error" => "client"})
    Title = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#Title', name: 'Title')
    TooManyTagsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client"})
    Type = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#Type', name: 'Type')
    UnableToAccessSecretException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#UnableToAccessSecretException', name: 'UnableToAccessSecretException', traits: {"smithy.api#error" => "client"})
    UnableToDecryptSecretValueException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#UnableToDecryptSecretValueException', name: 'UnableToDecryptSecretValueException', traits: {"smithy.api#error" => "client"})
    UnableToGetUpstreamImageException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#UnableToGetUpstreamImageException', name: 'UnableToGetUpstreamImageException', traits: {"smithy.api#error" => "client"})
    UnableToGetUpstreamLayerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#UnableToGetUpstreamLayerException', name: 'UnableToGetUpstreamLayerException', traits: {"smithy.api#error" => "client"})
    UnsupportedImageTypeException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#UnsupportedImageTypeException', name: 'UnsupportedImageTypeException', traits: {"smithy.api#error" => "client"})
    UnsupportedUpstreamRegistryException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#UnsupportedUpstreamRegistryException', name: 'UnsupportedUpstreamRegistryException', traits: {"smithy.api#error" => "client"})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdatePullThroughCacheRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#UpdatePullThroughCacheRuleRequest', name: 'UpdatePullThroughCacheRuleRequest')
    UpdatePullThroughCacheRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#UpdatePullThroughCacheRuleResponse', name: 'UpdatePullThroughCacheRuleResponse')
    UpdateRepositoryCreationTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#UpdateRepositoryCreationTemplateRequest', name: 'UpdateRepositoryCreationTemplateRequest')
    UpdateRepositoryCreationTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#UpdateRepositoryCreationTemplateResponse', name: 'UpdateRepositoryCreationTemplateResponse')
    UpdatedTimestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.ecr#UpdatedTimestamp', name: 'UpdatedTimestamp')
    UploadId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#UploadId', name: 'UploadId', traits: {"smithy.api#pattern" => "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"})
    UploadLayerPartRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#UploadLayerPartRequest', name: 'UploadLayerPartRequest')
    UploadLayerPartResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#UploadLayerPartResponse', name: 'UploadLayerPartResponse')
    UploadNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#UploadNotFoundException', name: 'UploadNotFoundException', traits: {"smithy.api#error" => "client"})
    UpstreamRegistry = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ecr#UpstreamRegistry', name: 'UpstreamRegistry')
    Url = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#Url', name: 'Url')
    ValidatePullThroughCacheRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#ValidatePullThroughCacheRuleRequest', name: 'ValidatePullThroughCacheRuleRequest')
    ValidatePullThroughCacheRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#ValidatePullThroughCacheRuleResponse', name: 'ValidatePullThroughCacheRuleResponse')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Version = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#Version', name: 'Version')
    VulnerabilityId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#VulnerabilityId', name: 'VulnerabilityId')
    VulnerabilitySourceUpdateTimestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.ecr#VulnerabilitySourceUpdateTimestamp', name: 'VulnerabilitySourceUpdateTimestamp')
    VulnerablePackage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ecr#VulnerablePackage', name: 'VulnerablePackage')
    VulnerablePackageName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ecr#VulnerablePackageName', name: 'VulnerablePackageName')
    VulnerablePackagesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ecr#VulnerablePackagesList', name: 'VulnerablePackagesList')

    Attribute.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The attribute key.</p>", "smithy.api#required" => {}}))
    Attribute.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value assigned to the attribute key.</p>"}))
    Attribute.type = Types::Attribute
    AttributeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Attribute)
    AuthorizationData.add_member(:authorization_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Base64, location_name: 'authorizationToken', traits: {"smithy.api#documentation" => "<p>A base64-encoded string that contains authorization data for the specified Amazon ECR\n            registry. When the string is decoded, it is presented in the format\n                <code>user:password</code> for private registry authentication using <code>docker\n                login</code>.</p>"}))
    AuthorizationData.add_member(:expires_at, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpirationTimestamp, location_name: 'expiresAt', traits: {"smithy.api#documentation" => "<p>The Unix time in seconds and milliseconds when the authorization token expires.\n            Authorization tokens are valid for 12 hours.</p>"}))
    AuthorizationData.add_member(:proxy_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: ProxyEndpoint, location_name: 'proxyEndpoint', traits: {"smithy.api#documentation" => "<p>The registry URL to use for this authorization token in a <code>docker login</code>\n            command. The Amazon ECR registry URL format is\n        <code>https://aws_account_id.dkr.ecr.region.amazonaws.com</code>. For example,\n        <code>https://012345678910.dkr.ecr.us-east-1.amazonaws.com</code>.. </p>"}))
    AuthorizationData.type = Types::AuthorizationData
    AuthorizationDataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationData)
    AwsEcrContainerImageDetails.add_member(:architecture, Smithy::Schema::Shapes::ShapeRef.new(shape: Arch, location_name: 'architecture', traits: {"smithy.api#documentation" => "<p>The architecture of the Amazon ECR container image.</p>"}))
    AwsEcrContainerImageDetails.add_member(:author, Smithy::Schema::Shapes::ShapeRef.new(shape: Author, location_name: 'author', traits: {"smithy.api#documentation" => "<p>The image author of the Amazon ECR container image.</p>"}))
    AwsEcrContainerImageDetails.add_member(:image_hash, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageDigest, location_name: 'imageHash', traits: {"smithy.api#documentation" => "<p>The image hash of the Amazon ECR container image.</p>"}))
    AwsEcrContainerImageDetails.add_member(:image_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagsList, location_name: 'imageTags', traits: {"smithy.api#documentation" => "<p>The image tags attached to the Amazon ECR container image.</p>"}))
    AwsEcrContainerImageDetails.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: Platform, location_name: 'platform', traits: {"smithy.api#documentation" => "<p>The platform of the Amazon ECR container image.</p>"}))
    AwsEcrContainerImageDetails.add_member(:pushed_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'pushedAt', traits: {"smithy.api#documentation" => "<p>The date and time the Amazon ECR container image was pushed.</p>"}))
    AwsEcrContainerImageDetails.add_member(:last_in_use_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastInUseAt', traits: {"smithy.api#documentation" => "<p>The most recent date and time a cluster was running the image.</p>"}))
    AwsEcrContainerImageDetails.add_member(:in_use_count, Smithy::Schema::Shapes::ShapeRef.new(shape: InUseCount, location_name: 'inUseCount', traits: {"smithy.api#documentation" => "<p>The number of Amazon ECS or Amazon EKS clusters currently running the\n            image.</p>"}))
    AwsEcrContainerImageDetails.add_member(:registry, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registry', traits: {"smithy.api#documentation" => "<p>The registry the Amazon ECR container image belongs to.</p>"}))
    AwsEcrContainerImageDetails.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository the Amazon ECR container image resides in.</p>"}))
    AwsEcrContainerImageDetails.type = Types::AwsEcrContainerImageDetails
    BatchCheckLayerAvailabilityRequest.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the registry that contains the image layers to\n            check. If you do not specify a registry, the default registry is assumed.</p>"}))
    BatchCheckLayerAvailabilityRequest.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository that is associated with the image layers to check.</p>", "smithy.api#required" => {}}))
    BatchCheckLayerAvailabilityRequest.add_member(:layer_digests, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchedOperationLayerDigestList, location_name: 'layerDigests', traits: {"smithy.api#documentation" => "<p>The digests of the image layers to check.</p>", "smithy.api#required" => {}}))
    BatchCheckLayerAvailabilityRequest.type = Types::BatchCheckLayerAvailabilityRequest
    BatchCheckLayerAvailabilityResponse.add_member(:layers, Smithy::Schema::Shapes::ShapeRef.new(shape: LayerList, location_name: 'layers', traits: {"smithy.api#documentation" => "<p>A list of image layer objects corresponding to the image layer references in the\n            request.</p>"}))
    BatchCheckLayerAvailabilityResponse.add_member(:failures, Smithy::Schema::Shapes::ShapeRef.new(shape: LayerFailureList, location_name: 'failures', traits: {"smithy.api#documentation" => "<p>Any failures associated with the call.</p>"}))
    BatchCheckLayerAvailabilityResponse.type = Types::BatchCheckLayerAvailabilityResponse
    BatchDeleteImageRequest.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the registry that contains the image to delete.\n            If you do not specify a registry, the default registry is assumed.</p>"}))
    BatchDeleteImageRequest.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The repository that contains the image to delete.</p>", "smithy.api#required" => {}}))
    BatchDeleteImageRequest.add_member(:image_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageIdentifierList, location_name: 'imageIds', traits: {"smithy.api#documentation" => "<p>A list of image ID references that correspond to images to delete. The format of the\n                <code>imageIds</code> reference is <code>imageTag=tag</code> or\n                <code>imageDigest=digest</code>.</p>", "smithy.api#required" => {}}))
    BatchDeleteImageRequest.type = Types::BatchDeleteImageRequest
    BatchDeleteImageResponse.add_member(:image_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageIdentifierList, location_name: 'imageIds', traits: {"smithy.api#documentation" => "<p>The image IDs of the deleted images.</p>"}))
    BatchDeleteImageResponse.add_member(:failures, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageFailureList, location_name: 'failures', traits: {"smithy.api#documentation" => "<p>Any failures associated with the call.</p>"}))
    BatchDeleteImageResponse.type = Types::BatchDeleteImageResponse
    BatchGetImageRequest.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the registry that contains the images to\n            describe. If you do not specify a registry, the default registry is assumed.</p>"}))
    BatchGetImageRequest.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The repository that contains the images to describe.</p>", "smithy.api#required" => {}}))
    BatchGetImageRequest.add_member(:image_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageIdentifierList, location_name: 'imageIds', traits: {"smithy.api#documentation" => "<p>A list of image ID references that correspond to images to describe. The format of the\n                <code>imageIds</code> reference is <code>imageTag=tag</code> or\n                <code>imageDigest=digest</code>.</p>", "smithy.api#required" => {}}))
    BatchGetImageRequest.add_member(:accepted_media_types, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaTypeList, location_name: 'acceptedMediaTypes', traits: {"smithy.api#documentation" => "<p>The accepted media types for the request.</p>\n         <p>Valid values: <code>application/vnd.docker.distribution.manifest.v1+json</code> |\n                <code>application/vnd.docker.distribution.manifest.v2+json</code> |\n                <code>application/vnd.oci.image.manifest.v1+json</code>\n         </p>"}))
    BatchGetImageRequest.type = Types::BatchGetImageRequest
    BatchGetImageResponse.add_member(:images, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageList, location_name: 'images', traits: {"smithy.api#documentation" => "<p>A list of image objects corresponding to the image references in the request.</p>"}))
    BatchGetImageResponse.add_member(:failures, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageFailureList, location_name: 'failures', traits: {"smithy.api#documentation" => "<p>Any failures associated with the call.</p>"}))
    BatchGetImageResponse.type = Types::BatchGetImageResponse
    BatchGetRepositoryScanningConfigurationRequest.add_member(:repository_names, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanningConfigurationRepositoryNameList, location_name: 'repositoryNames', traits: {"smithy.api#documentation" => "<p>One or more repository names to get the scanning configuration for.</p>", "smithy.api#required" => {}}))
    BatchGetRepositoryScanningConfigurationRequest.type = Types::BatchGetRepositoryScanningConfigurationRequest
    BatchGetRepositoryScanningConfigurationResponse.add_member(:scanning_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryScanningConfigurationList, location_name: 'scanningConfigurations', traits: {"smithy.api#documentation" => "<p>The scanning configuration for the requested repositories.</p>"}))
    BatchGetRepositoryScanningConfigurationResponse.add_member(:failures, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryScanningConfigurationFailureList, location_name: 'failures', traits: {"smithy.api#documentation" => "<p>Any failures associated with the call.</p>"}))
    BatchGetRepositoryScanningConfigurationResponse.type = Types::BatchGetRepositoryScanningConfigurationResponse
    BatchedOperationLayerDigestList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchedOperationLayerDigest)
    CompleteLayerUploadRequest.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the registry to which to upload layers.\n            If you do not specify a registry, the default registry is assumed.</p>"}))
    CompleteLayerUploadRequest.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository to associate with the image layer.</p>", "smithy.api#required" => {}}))
    CompleteLayerUploadRequest.add_member(:upload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: 'uploadId', traits: {"smithy.api#documentation" => "<p>The upload ID from a previous <a>InitiateLayerUpload</a> operation to\n            associate with the image layer.</p>", "smithy.api#required" => {}}))
    CompleteLayerUploadRequest.add_member(:layer_digests, Smithy::Schema::Shapes::ShapeRef.new(shape: LayerDigestList, location_name: 'layerDigests', traits: {"smithy.api#documentation" => "<p>The <code>sha256</code> digest of the image layer.</p>", "smithy.api#required" => {}}))
    CompleteLayerUploadRequest.type = Types::CompleteLayerUploadRequest
    CompleteLayerUploadResponse.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The registry ID associated with the request.</p>"}))
    CompleteLayerUploadResponse.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The repository name associated with the request.</p>"}))
    CompleteLayerUploadResponse.add_member(:upload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: 'uploadId', traits: {"smithy.api#documentation" => "<p>The upload ID associated with the layer.</p>"}))
    CompleteLayerUploadResponse.add_member(:layer_digest, Smithy::Schema::Shapes::ShapeRef.new(shape: LayerDigest, location_name: 'layerDigest', traits: {"smithy.api#documentation" => "<p>The <code>sha256</code> digest of the image layer.</p>"}))
    CompleteLayerUploadResponse.type = Types::CompleteLayerUploadResponse
    CreatePullThroughCacheRuleRequest.add_member(:ecr_repository_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleRepositoryPrefix, location_name: 'ecrRepositoryPrefix', traits: {"smithy.api#documentation" => "<p>The repository name prefix to use when caching images from the source registry.</p>\n         <important>\n            <p>There is always an assumed <code>/</code> applied to the end of the prefix. If you\n                specify <code>ecr-public</code> as the prefix, Amazon ECR treats that as\n                    <code>ecr-public/</code>.</p>\n         </important>", "smithy.api#required" => {}}))
    CreatePullThroughCacheRuleRequest.add_member(:upstream_registry_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'upstreamRegistryUrl', traits: {"smithy.api#documentation" => "<p>The registry URL of the upstream public registry to use as the source for the pull\n            through cache rule. The following is the syntax to use for each supported upstream\n            registry.</p>\n         <ul>\n            <li>\n               <p>Amazon ECR (<code>ecr</code>) –\n                    <code><accountId>.dkr.ecr.<region>.amazonaws.com</code>\n               </p>\n            </li>\n            <li>\n               <p>Amazon ECR Public (<code>ecr-public</code>) – <code>public.ecr.aws</code>\n               </p>\n            </li>\n            <li>\n               <p>Docker Hub (<code>docker-hub</code>) –\n                    <code>registry-1.docker.io</code>\n               </p>\n            </li>\n            <li>\n               <p>GitHub Container Registry (<code>github-container-registry</code>) –\n                        <code>ghcr.io</code>\n               </p>\n            </li>\n            <li>\n               <p>GitLab Container Registry (<code>gitlab-container-registry</code>) –\n                        <code>registry.gitlab.com</code>\n               </p>\n            </li>\n            <li>\n               <p>Kubernetes (<code>k8s</code>) – <code>registry.k8s.io</code>\n               </p>\n            </li>\n            <li>\n               <p>Microsoft Azure Container Registry (<code>azure-container-registry</code>) –\n                        <code><custom>.azurecr.io</code>\n               </p>\n            </li>\n            <li>\n               <p>Quay (<code>quay</code>) – <code>quay.io</code>\n               </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreatePullThroughCacheRuleRequest.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the registry to create the pull through cache\n            rule for. If you do not specify a registry, the default registry is assumed.</p>"}))
    CreatePullThroughCacheRuleRequest.add_member(:upstream_registry, Smithy::Schema::Shapes::ShapeRef.new(shape: UpstreamRegistry, location_name: 'upstreamRegistry', traits: {"smithy.api#documentation" => "<p>The name of the upstream registry.</p>"}))
    CreatePullThroughCacheRuleRequest.add_member(:credential_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialArn, location_name: 'credentialArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Web Services Secrets Manager secret that identifies the credentials to authenticate\n            to the upstream registry.</p>"}))
    CreatePullThroughCacheRuleRequest.add_member(:custom_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoleArn, location_name: 'customRoleArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the IAM role to be assumed by Amazon ECR to authenticate to\n            the ECR upstream registry. This role must be in the same account as the registry that\n            you are configuring.</p>"}))
    CreatePullThroughCacheRuleRequest.add_member(:upstream_repository_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleRepositoryPrefix, location_name: 'upstreamRepositoryPrefix', traits: {"smithy.api#documentation" => "<p>The repository name prefix of the upstream registry to match with the upstream\n            repository name. When this field isn't specified, Amazon ECR will use the\n            <code>ROOT</code>.</p>"}))
    CreatePullThroughCacheRuleRequest.type = Types::CreatePullThroughCacheRuleRequest
    CreatePullThroughCacheRuleResponse.add_member(:ecr_repository_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleRepositoryPrefix, location_name: 'ecrRepositoryPrefix', traits: {"smithy.api#documentation" => "<p>The Amazon ECR repository prefix associated with the pull through cache rule.</p>"}))
    CreatePullThroughCacheRuleResponse.add_member(:upstream_registry_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'upstreamRegistryUrl', traits: {"smithy.api#documentation" => "<p>The upstream registry URL associated with the pull through cache rule.</p>"}))
    CreatePullThroughCacheRuleResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTimestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time, in JavaScript date format, when the pull through cache rule was\n            created.</p>"}))
    CreatePullThroughCacheRuleResponse.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The registry ID associated with the request.</p>"}))
    CreatePullThroughCacheRuleResponse.add_member(:upstream_registry, Smithy::Schema::Shapes::ShapeRef.new(shape: UpstreamRegistry, location_name: 'upstreamRegistry', traits: {"smithy.api#documentation" => "<p>The name of the upstream registry associated with the pull through cache rule.</p>"}))
    CreatePullThroughCacheRuleResponse.add_member(:credential_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialArn, location_name: 'credentialArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Web Services Secrets Manager secret associated with the pull through cache\n            rule.</p>"}))
    CreatePullThroughCacheRuleResponse.add_member(:custom_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoleArn, location_name: 'customRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role associated with the pull through cache rule.</p>"}))
    CreatePullThroughCacheRuleResponse.add_member(:upstream_repository_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleRepositoryPrefix, location_name: 'upstreamRepositoryPrefix', traits: {"smithy.api#documentation" => "<p>The upstream repository prefix associated with the pull through cache rule.</p>"}))
    CreatePullThroughCacheRuleResponse.type = Types::CreatePullThroughCacheRuleResponse
    CreateRepositoryCreationTemplateRequest.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: Prefix, location_name: 'prefix', traits: {"smithy.api#documentation" => "<p>The repository namespace prefix to associate with the template. All repositories\n            created using this namespace prefix will have the settings defined in this template\n            applied. For example, a prefix of <code>prod</code> would apply to all repositories\n            beginning with <code>prod/</code>. Similarly, a prefix of <code>prod/team</code> would\n            apply to all repositories beginning with <code>prod/team/</code>.</p>\n         <p>To apply a template to all repositories in your registry that don't have an associated\n            creation template, you can use <code>ROOT</code> as the prefix.</p>\n         <important>\n            <p>There is always an assumed <code>/</code> applied to the end of the prefix. If you\n                specify <code>ecr-public</code> as the prefix, Amazon ECR treats that as\n                    <code>ecr-public/</code>. When using a pull through cache rule, the repository\n                prefix you specify during rule creation is what you should specify as your\n                repository creation template prefix as well.</p>\n         </important>", "smithy.api#required" => {}}))
    CreateRepositoryCreationTemplateRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryTemplateDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for the repository creation template.</p>"}))
    CreateRepositoryCreationTemplateRequest.add_member(:encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfigurationForRepositoryCreationTemplate, location_name: 'encryptionConfiguration', traits: {"smithy.api#documentation" => "<p>The encryption configuration to use for repositories created using the\n            template.</p>"}))
    CreateRepositoryCreationTemplateRequest.add_member(:resource_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'resourceTags', traits: {"smithy.api#documentation" => "<p>The metadata to apply to the repository to help you categorize and organize. Each tag\n            consists of a key and an optional value, both of which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have\n            a maximum length of 256 characters.</p>"}))
    CreateRepositoryCreationTemplateRequest.add_member(:image_tag_mutability, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagMutability, location_name: 'imageTagMutability', traits: {"smithy.api#documentation" => "<p>The tag mutability setting for the repository. If this parameter is omitted, the\n            default setting of <code>MUTABLE</code> will be used which will allow image tags to be\n            overwritten. If <code>IMMUTABLE</code> is specified, all image tags within the\n            repository will be immutable which will prevent them from being overwritten.</p>"}))
    CreateRepositoryCreationTemplateRequest.add_member(:image_tag_mutability_exclusion_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagMutabilityExclusionFilters, location_name: 'imageTagMutabilityExclusionFilters', traits: {"smithy.api#documentation" => "<p>Creates a repository creation template with a list of filters that define which image tags can override the default image tag mutability setting.</p>"}))
    CreateRepositoryCreationTemplateRequest.add_member(:repository_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryPolicyText, location_name: 'repositoryPolicy', traits: {"smithy.api#documentation" => "<p>The repository policy to apply to repositories created using the template. A\n            repository policy is a permissions policy associated with a repository to control access\n            permissions. </p>"}))
    CreateRepositoryCreationTemplateRequest.add_member(:lifecycle_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyTextForRepositoryCreationTemplate, location_name: 'lifecyclePolicy', traits: {"smithy.api#documentation" => "<p>The lifecycle policy to use for repositories created using the template.</p>"}))
    CreateRepositoryCreationTemplateRequest.add_member(:applied_for, Smithy::Schema::Shapes::ShapeRef.new(shape: RCTAppliedForList, location_name: 'appliedFor', traits: {"smithy.api#documentation" => "<p>A list of enumerable strings representing the Amazon ECR repository creation scenarios that\n            this template will apply towards. The two supported scenarios are\n                <code>PULL_THROUGH_CACHE</code> and <code>REPLICATION</code>\n         </p>", "smithy.api#required" => {}}))
    CreateRepositoryCreationTemplateRequest.add_member(:custom_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoleArn, location_name: 'customRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the role to be assumed by Amazon ECR. This role must be in the same account as\n            the registry that you are configuring. Amazon ECR will assume your supplied role when the\n            customRoleArn is specified. When this field isn't specified, Amazon ECR will use the\n            service-linked role for the repository creation template.</p>"}))
    CreateRepositoryCreationTemplateRequest.type = Types::CreateRepositoryCreationTemplateRequest
    CreateRepositoryCreationTemplateResponse.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The registry ID associated with the request.</p>"}))
    CreateRepositoryCreationTemplateResponse.add_member(:repository_creation_template, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryCreationTemplate, location_name: 'repositoryCreationTemplate', traits: {"smithy.api#documentation" => "<p>The details of the repository creation template associated with the request.</p>"}))
    CreateRepositoryCreationTemplateResponse.type = Types::CreateRepositoryCreationTemplateResponse
    CreateRepositoryRequest.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the registry to create the repository.\n            If you do not specify a registry, the default registry is assumed.</p>"}))
    CreateRepositoryRequest.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name to use for the repository. The repository name may be specified on its own\n            (such as <code>nginx-web-app</code>) or it can be prepended with a namespace to group\n            the repository into a category (such as <code>project-a/nginx-web-app</code>).</p>\n         <p>The repository name must start with a letter and can only contain lowercase letters,\n            numbers, hyphens, underscores, and forward slashes.</p>", "smithy.api#required" => {}}))
    CreateRepositoryRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The metadata that you apply to the repository to help you categorize and organize\n            them. Each tag consists of a key and an optional value, both of which you define.\n            Tag keys can have a maximum character length of 128 characters, and tag values can have\n            a maximum length of 256 characters.</p>"}))
    CreateRepositoryRequest.add_member(:image_tag_mutability, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagMutability, location_name: 'imageTagMutability', traits: {"smithy.api#documentation" => "<p>The tag mutability setting for the repository. If this parameter is omitted, the\n            default setting of <code>MUTABLE</code> will be used which will allow image tags to be\n            overwritten. If <code>IMMUTABLE</code> is specified, all image tags within the\n            repository will be immutable which will prevent them from being overwritten.</p>"}))
    CreateRepositoryRequest.add_member(:image_tag_mutability_exclusion_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagMutabilityExclusionFilters, location_name: 'imageTagMutabilityExclusionFilters', traits: {"smithy.api#documentation" => "<p>Creates a repository with a list of filters that define which image tags can override the default image tag mutability setting.</p>"}))
    CreateRepositoryRequest.add_member(:image_scanning_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageScanningConfiguration, location_name: 'imageScanningConfiguration', traits: {"smithy.api#documentation" => "<p>The image scanning configuration for the repository. This determines whether images\n            are scanned for known vulnerabilities after being pushed to the repository.</p>"}))
    CreateRepositoryRequest.add_member(:encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: 'encryptionConfiguration', traits: {"smithy.api#documentation" => "<p>The encryption configuration for the repository. This determines how the contents of\n            your repository are encrypted at rest.</p>"}))
    CreateRepositoryRequest.type = Types::CreateRepositoryRequest
    CreateRepositoryResponse.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: Repository, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>The repository that was created.</p>"}))
    CreateRepositoryResponse.type = Types::CreateRepositoryResponse
    CvssScore.add_member(:base_score, Smithy::Schema::Shapes::ShapeRef.new(shape: BaseScore, location_name: 'baseScore', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The base CVSS score used for the finding.</p>"}))
    CvssScore.add_member(:scoring_vector, Smithy::Schema::Shapes::ShapeRef.new(shape: ScoringVector, location_name: 'scoringVector', traits: {"smithy.api#documentation" => "<p>The vector string of the CVSS score.</p>"}))
    CvssScore.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The source of the CVSS score.</p>"}))
    CvssScore.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of CVSS used for the score.</p>"}))
    CvssScore.type = Types::CvssScore
    CvssScoreAdjustment.add_member(:metric, Smithy::Schema::Shapes::ShapeRef.new(shape: Metric, location_name: 'metric', traits: {"smithy.api#documentation" => "<p>The metric used to adjust the CVSS score.</p>"}))
    CvssScoreAdjustment.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Reason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>The reason the CVSS score has been adjustment.</p>"}))
    CvssScoreAdjustment.type = Types::CvssScoreAdjustment
    CvssScoreAdjustmentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CvssScoreAdjustment)
    CvssScoreDetails.add_member(:adjustments, Smithy::Schema::Shapes::ShapeRef.new(shape: CvssScoreAdjustmentList, location_name: 'adjustments', traits: {"smithy.api#documentation" => "<p>An object that contains details about adjustment Amazon Inspector made to the CVSS score.</p>"}))
    CvssScoreDetails.add_member(:score, Smithy::Schema::Shapes::ShapeRef.new(shape: Score, location_name: 'score', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The CVSS score.</p>"}))
    CvssScoreDetails.add_member(:score_source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'scoreSource', traits: {"smithy.api#documentation" => "<p>The source for the CVSS score.</p>"}))
    CvssScoreDetails.add_member(:scoring_vector, Smithy::Schema::Shapes::ShapeRef.new(shape: ScoringVector, location_name: 'scoringVector', traits: {"smithy.api#documentation" => "<p>The vector for the CVSS score.</p>"}))
    CvssScoreDetails.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The CVSS version used in scoring.</p>"}))
    CvssScoreDetails.type = Types::CvssScoreDetails
    CvssScoreList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CvssScore)
    DeleteLifecyclePolicyRequest.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the registry that contains the repository.\n            If you do not specify a registry, the default registry is assumed.</p>"}))
    DeleteLifecyclePolicyRequest.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository.</p>", "smithy.api#required" => {}}))
    DeleteLifecyclePolicyRequest.type = Types::DeleteLifecyclePolicyRequest
    DeleteLifecyclePolicyResponse.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The registry ID associated with the request.</p>"}))
    DeleteLifecyclePolicyResponse.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The repository name associated with the request.</p>"}))
    DeleteLifecyclePolicyResponse.add_member(:lifecycle_policy_text, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyText, location_name: 'lifecyclePolicyText', traits: {"smithy.api#documentation" => "<p>The JSON lifecycle policy text.</p>"}))
    DeleteLifecyclePolicyResponse.add_member(:last_evaluated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationTimestamp, location_name: 'lastEvaluatedAt', traits: {"smithy.api#documentation" => "<p>The time stamp of the last time that the lifecycle policy was run.</p>"}))
    DeleteLifecyclePolicyResponse.type = Types::DeleteLifecyclePolicyResponse
    DeletePullThroughCacheRuleRequest.add_member(:ecr_repository_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleRepositoryPrefix, location_name: 'ecrRepositoryPrefix', traits: {"smithy.api#documentation" => "<p>The Amazon ECR repository prefix associated with the pull through cache rule to\n            delete.</p>", "smithy.api#required" => {}}))
    DeletePullThroughCacheRuleRequest.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the registry that contains the pull through cache\n            rule. If you do not specify a registry, the default registry is assumed.</p>"}))
    DeletePullThroughCacheRuleRequest.type = Types::DeletePullThroughCacheRuleRequest
    DeletePullThroughCacheRuleResponse.add_member(:ecr_repository_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleRepositoryPrefix, location_name: 'ecrRepositoryPrefix', traits: {"smithy.api#documentation" => "<p>The Amazon ECR repository prefix associated with the request.</p>"}))
    DeletePullThroughCacheRuleResponse.add_member(:upstream_registry_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'upstreamRegistryUrl', traits: {"smithy.api#documentation" => "<p>The upstream registry URL associated with the pull through cache rule.</p>"}))
    DeletePullThroughCacheRuleResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTimestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The timestamp associated with the pull through cache rule.</p>"}))
    DeletePullThroughCacheRuleResponse.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The registry ID associated with the request.</p>"}))
    DeletePullThroughCacheRuleResponse.add_member(:credential_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialArn, location_name: 'credentialArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Web Services Secrets Manager secret associated with the pull through cache\n            rule.</p>"}))
    DeletePullThroughCacheRuleResponse.add_member(:custom_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoleArn, location_name: 'customRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role associated with the pull through cache rule.</p>"}))
    DeletePullThroughCacheRuleResponse.add_member(:upstream_repository_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleRepositoryPrefix, location_name: 'upstreamRepositoryPrefix', traits: {"smithy.api#documentation" => "<p>The upstream repository prefix associated with the pull through cache rule.</p>"}))
    DeletePullThroughCacheRuleResponse.type = Types::DeletePullThroughCacheRuleResponse
    DeleteRegistryPolicyRequest.type = Types::DeleteRegistryPolicyRequest
    DeleteRegistryPolicyResponse.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The registry ID associated with the request.</p>"}))
    DeleteRegistryPolicyResponse.add_member(:policy_text, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryPolicyText, location_name: 'policyText', traits: {"smithy.api#documentation" => "<p>The contents of the registry permissions policy that was deleted.</p>"}))
    DeleteRegistryPolicyResponse.type = Types::DeleteRegistryPolicyResponse
    DeleteRepositoryCreationTemplateRequest.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: Prefix, location_name: 'prefix', traits: {"smithy.api#documentation" => "<p>The repository namespace prefix associated with the repository creation\n            template.</p>", "smithy.api#required" => {}}))
    DeleteRepositoryCreationTemplateRequest.type = Types::DeleteRepositoryCreationTemplateRequest
    DeleteRepositoryCreationTemplateResponse.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The registry ID associated with the request.</p>"}))
    DeleteRepositoryCreationTemplateResponse.add_member(:repository_creation_template, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryCreationTemplate, location_name: 'repositoryCreationTemplate', traits: {"smithy.api#documentation" => "<p>The details of the repository creation template that was deleted.</p>"}))
    DeleteRepositoryCreationTemplateResponse.type = Types::DeleteRepositoryCreationTemplateResponse
    DeleteRepositoryPolicyRequest.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the registry that contains the repository policy\n            to delete. If you do not specify a registry, the default registry is assumed.</p>"}))
    DeleteRepositoryPolicyRequest.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository that is associated with the repository policy to\n            delete.</p>", "smithy.api#required" => {}}))
    DeleteRepositoryPolicyRequest.type = Types::DeleteRepositoryPolicyRequest
    DeleteRepositoryPolicyResponse.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The registry ID associated with the request.</p>"}))
    DeleteRepositoryPolicyResponse.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The repository name associated with the request.</p>"}))
    DeleteRepositoryPolicyResponse.add_member(:policy_text, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryPolicyText, location_name: 'policyText', traits: {"smithy.api#documentation" => "<p>The JSON repository policy that was deleted from the repository.</p>"}))
    DeleteRepositoryPolicyResponse.type = Types::DeleteRepositoryPolicyResponse
    DeleteRepositoryRequest.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the registry that contains the repository to\n            delete. If you do not specify a registry, the default registry is assumed.</p>"}))
    DeleteRepositoryRequest.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository to delete.</p>", "smithy.api#required" => {}}))
    DeleteRepositoryRequest.add_member(:force, Smithy::Schema::Shapes::ShapeRef.new(shape: ForceFlag, location_name: 'force', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If true, deleting the repository force deletes the contents of the repository. If\n            false, the repository must be empty before attempting to delete it.</p>"}))
    DeleteRepositoryRequest.type = Types::DeleteRepositoryRequest
    DeleteRepositoryResponse.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: Repository, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>The repository that was deleted.</p>"}))
    DeleteRepositoryResponse.type = Types::DeleteRepositoryResponse
    DescribeImageReplicationStatusRequest.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository that the image is in.</p>", "smithy.api#required" => {}}))
    DescribeImageReplicationStatusRequest.add_member(:image_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageIdentifier, location_name: 'imageId', traits: {"smithy.api#required" => {}}))
    DescribeImageReplicationStatusRequest.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the registry. If you do not specify a registry, the default registry is assumed.</p>"}))
    DescribeImageReplicationStatusRequest.type = Types::DescribeImageReplicationStatusRequest
    DescribeImageReplicationStatusResponse.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The repository name associated with the request.</p>"}))
    DescribeImageReplicationStatusResponse.add_member(:image_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageIdentifier, location_name: 'imageId'))
    DescribeImageReplicationStatusResponse.add_member(:replication_statuses, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageReplicationStatusList, location_name: 'replicationStatuses', traits: {"smithy.api#documentation" => "<p>The replication status details for the images in the specified repository.</p>"}))
    DescribeImageReplicationStatusResponse.type = Types::DescribeImageReplicationStatusResponse
    DescribeImageScanFindingsRequest.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the registry that contains the repository in\n            which to describe the image scan findings for. If you do not specify a registry, the default registry is assumed.</p>"}))
    DescribeImageScanFindingsRequest.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The repository for the image for which to describe the scan findings.</p>", "smithy.api#required" => {}}))
    DescribeImageScanFindingsRequest.add_member(:image_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageIdentifier, location_name: 'imageId', traits: {"smithy.api#required" => {}}))
    DescribeImageScanFindingsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The <code>nextToken</code> value returned from a previous paginated\n                <code>DescribeImageScanFindings</code> request where <code>maxResults</code> was\n            used and the results exceeded the value of that parameter. Pagination continues from the\n            end of the previous results that returned the <code>nextToken</code> value. This value\n            is null when there are no more results to return.</p>"}))
    DescribeImageScanFindingsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of image scan results returned by\n                <code>DescribeImageScanFindings</code> in paginated output. When this parameter is\n            used, <code>DescribeImageScanFindings</code> only returns <code>maxResults</code>\n            results in a single page along with a <code>nextToken</code> response element. The\n            remaining results of the initial request can be seen by sending another\n                <code>DescribeImageScanFindings</code> request with the returned\n                <code>nextToken</code> value. This value can be between 1 and 1000. If this\n            parameter is not used, then <code>DescribeImageScanFindings</code> returns up to 100\n            results and a <code>nextToken</code> value, if applicable.</p>"}))
    DescribeImageScanFindingsRequest.type = Types::DescribeImageScanFindingsRequest
    DescribeImageScanFindingsResponse.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The registry ID associated with the request.</p>"}))
    DescribeImageScanFindingsResponse.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The repository name associated with the request.</p>"}))
    DescribeImageScanFindingsResponse.add_member(:image_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageIdentifier, location_name: 'imageId'))
    DescribeImageScanFindingsResponse.add_member(:image_scan_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageScanStatus, location_name: 'imageScanStatus', traits: {"smithy.api#documentation" => "<p>The current state of the scan.</p>"}))
    DescribeImageScanFindingsResponse.add_member(:image_scan_findings, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageScanFindings, location_name: 'imageScanFindings', traits: {"smithy.api#documentation" => "<p>The information contained in the image scan findings.</p>"}))
    DescribeImageScanFindingsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The <code>nextToken</code> value to include in a future\n                <code>DescribeImageScanFindings</code> request. When the results of a\n                <code>DescribeImageScanFindings</code> request exceed <code>maxResults</code>, this\n            value can be used to retrieve the next page of results. This value is null when there\n            are no more results to return.</p>"}))
    DescribeImageScanFindingsResponse.type = Types::DescribeImageScanFindingsResponse
    DescribeImagesFilter.add_member(:tag_status, Smithy::Schema::Shapes::ShapeRef.new(shape: TagStatus, location_name: 'tagStatus', traits: {"smithy.api#documentation" => "<p>The tag status with which to filter your <a>DescribeImages</a> results. You\n            can filter results based on whether they are <code>TAGGED</code> or\n                <code>UNTAGGED</code>.</p>"}))
    DescribeImagesFilter.type = Types::DescribeImagesFilter
    DescribeImagesRequest.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the registry that contains the repository in\n            which to describe images. If you do not specify a registry, the default registry is assumed.</p>"}))
    DescribeImagesRequest.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The repository that contains the images to describe.</p>", "smithy.api#required" => {}}))
    DescribeImagesRequest.add_member(:image_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageIdentifierList, location_name: 'imageIds', traits: {"smithy.api#documentation" => "<p>The list of image IDs for the requested repository.</p>"}))
    DescribeImagesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The <code>nextToken</code> value returned from a previous paginated\n                <code>DescribeImages</code> request where <code>maxResults</code> was used and the\n            results exceeded the value of that parameter. Pagination continues from the end of the\n            previous results that returned the <code>nextToken</code> value. This value is\n                <code>null</code> when there are no more results to return. This option cannot be\n            used when you specify images with <code>imageIds</code>.</p>"}))
    DescribeImagesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of repository results returned by <code>DescribeImages</code> in\n            paginated output. When this parameter is used, <code>DescribeImages</code> only returns\n                <code>maxResults</code> results in a single page along with a <code>nextToken</code>\n            response element. The remaining results of the initial request can be seen by sending\n            another <code>DescribeImages</code> request with the returned <code>nextToken</code>\n            value. This value can be between 1 and 1000. If this\n            parameter is not used, then <code>DescribeImages</code> returns up to\n            100 results and a <code>nextToken</code> value, if applicable. This\n            option cannot be used when you specify images with <code>imageIds</code>.</p>"}))
    DescribeImagesRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeImagesFilter, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>The filter key and value with which to filter your <code>DescribeImages</code>\n            results.</p>"}))
    DescribeImagesRequest.type = Types::DescribeImagesRequest
    DescribeImagesResponse.add_member(:image_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageDetailList, location_name: 'imageDetails', traits: {"smithy.api#documentation" => "<p>A list of <a>ImageDetail</a> objects that contain data about the\n            image.</p>"}))
    DescribeImagesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The <code>nextToken</code> value to include in a future <code>DescribeImages</code>\n            request. When the results of a <code>DescribeImages</code> request exceed\n                <code>maxResults</code>, this value can be used to retrieve the next page of\n            results. This value is <code>null</code> when there are no more results to\n            return.</p>"}))
    DescribeImagesResponse.type = Types::DescribeImagesResponse
    DescribePullThroughCacheRulesRequest.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the registry to return the pull through cache\n            rules for. If you do not specify a registry, the default registry is assumed.</p>"}))
    DescribePullThroughCacheRulesRequest.add_member(:ecr_repository_prefixes, Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleRepositoryPrefixList, location_name: 'ecrRepositoryPrefixes', traits: {"smithy.api#documentation" => "<p>The Amazon ECR repository prefixes associated with the pull through cache rules to return.\n            If no repository prefix value is specified, all pull through cache rules are\n            returned.</p>"}))
    DescribePullThroughCacheRulesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The <code>nextToken</code> value returned from a previous paginated\n                <code>DescribePullThroughCacheRulesRequest</code> request where\n                <code>maxResults</code> was used and the results exceeded the value of that\n            parameter. Pagination continues from the end of the previous results that returned the\n                <code>nextToken</code> value. This value is null when there are no more results to\n            return.</p>"}))
    DescribePullThroughCacheRulesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of pull through cache rules returned by\n                <code>DescribePullThroughCacheRulesRequest</code> in paginated output. When this\n            parameter is used, <code>DescribePullThroughCacheRulesRequest</code> only returns\n                <code>maxResults</code> results in a single page along with a <code>nextToken</code>\n            response element. The remaining results of the initial request can be seen by sending\n            another <code>DescribePullThroughCacheRulesRequest</code> request with the returned\n                <code>nextToken</code> value. This value can be between 1 and 1000. If this\n            parameter is not used, then <code>DescribePullThroughCacheRulesRequest</code> returns up\n            to 100 results and a <code>nextToken</code> value, if applicable.</p>"}))
    DescribePullThroughCacheRulesRequest.type = Types::DescribePullThroughCacheRulesRequest
    DescribePullThroughCacheRulesResponse.add_member(:pull_through_cache_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleList, location_name: 'pullThroughCacheRules', traits: {"smithy.api#documentation" => "<p>The details of the pull through cache rules.</p>"}))
    DescribePullThroughCacheRulesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The <code>nextToken</code> value to include in a future\n                <code>DescribePullThroughCacheRulesRequest</code> request. When the results of a\n                <code>DescribePullThroughCacheRulesRequest</code> request exceed\n                <code>maxResults</code>, this value can be used to retrieve the next page of\n            results. This value is null when there are no more results to return.</p>"}))
    DescribePullThroughCacheRulesResponse.type = Types::DescribePullThroughCacheRulesResponse
    DescribeRegistryRequest.type = Types::DescribeRegistryRequest
    DescribeRegistryResponse.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The registry ID associated with the request.</p>"}))
    DescribeRegistryResponse.add_member(:replication_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfiguration, location_name: 'replicationConfiguration', traits: {"smithy.api#documentation" => "<p>The replication configuration for the registry.</p>"}))
    DescribeRegistryResponse.type = Types::DescribeRegistryResponse
    DescribeRepositoriesRequest.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the registry that contains the repositories to be\n            described. If you do not specify a registry, the default registry is assumed.</p>"}))
    DescribeRepositoriesRequest.add_member(:repository_names, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameList, location_name: 'repositoryNames', traits: {"smithy.api#documentation" => "<p>A list of repositories to describe. If this parameter is omitted, then all\n            repositories in a registry are described.</p>"}))
    DescribeRepositoriesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The <code>nextToken</code> value returned from a previous paginated\n                <code>DescribeRepositories</code> request where <code>maxResults</code> was used and\n            the results exceeded the value of that parameter. Pagination continues from the end of\n            the previous results that returned the <code>nextToken</code> value. This value is\n                <code>null</code> when there are no more results to return. This option cannot be\n            used when you specify repositories with <code>repositoryNames</code>.</p>\n         <note>\n            <p>This token should be treated as an opaque identifier that is only used to\n                retrieve the next items in a list and not for other programmatic purposes.</p>\n         </note>"}))
    DescribeRepositoriesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of repository results returned by <code>DescribeRepositories</code>\n            in paginated output. When this parameter is used, <code>DescribeRepositories</code> only\n            returns <code>maxResults</code> results in a single page along with a\n                <code>nextToken</code> response element. The remaining results of the initial\n            request can be seen by sending another <code>DescribeRepositories</code> request with\n            the returned <code>nextToken</code> value. This value can be between 1\n            and 1000. If this parameter is not used, then\n                <code>DescribeRepositories</code> returns up to 100 results and a\n                <code>nextToken</code> value, if applicable. This option cannot be used when you\n            specify repositories with <code>repositoryNames</code>.</p>"}))
    DescribeRepositoriesRequest.type = Types::DescribeRepositoriesRequest
    DescribeRepositoriesResponse.add_member(:repositories, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryList, location_name: 'repositories', traits: {"smithy.api#documentation" => "<p>A list of repository objects corresponding to valid repositories.</p>"}))
    DescribeRepositoriesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The <code>nextToken</code> value to include in a future\n                <code>DescribeRepositories</code> request. When the results of a\n                <code>DescribeRepositories</code> request exceed <code>maxResults</code>, this value\n            can be used to retrieve the next page of results. This value is <code>null</code> when\n            there are no more results to return.</p>"}))
    DescribeRepositoriesResponse.type = Types::DescribeRepositoriesResponse
    DescribeRepositoryCreationTemplatesRequest.add_member(:prefixes, Smithy::Schema::Shapes::ShapeRef.new(shape: PrefixList, location_name: 'prefixes', traits: {"smithy.api#documentation" => "<p>The repository namespace prefixes associated with the repository creation templates to\n            describe. If this value is not specified, all repository creation templates are\n            returned.</p>"}))
    DescribeRepositoryCreationTemplatesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The <code>nextToken</code> value returned from a previous paginated\n                <code>DescribeRepositoryCreationTemplates</code> request where\n                <code>maxResults</code> was used and the results exceeded the value of that\n            parameter. Pagination continues from the end of the previous results that returned the\n                <code>nextToken</code> value. This value is <code>null</code> when there are no more\n            results to return.</p>\n         <note>\n            <p>This token should be treated as an opaque identifier that is only used to\n                retrieve the next items in a list and not for other programmatic purposes.</p>\n         </note>"}))
    DescribeRepositoryCreationTemplatesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of repository results returned by\n                <code>DescribeRepositoryCreationTemplatesRequest</code> in paginated output. When\n            this parameter is used, <code>DescribeRepositoryCreationTemplatesRequest</code> only\n            returns <code>maxResults</code> results in a single page along with a\n                <code>nextToken</code> response element. The remaining results of the initial\n            request can be seen by sending another\n                <code>DescribeRepositoryCreationTemplatesRequest</code> request with the returned\n                <code>nextToken</code> value. This value can be between 1 and\n            1000. If this parameter is not used, then\n                <code>DescribeRepositoryCreationTemplatesRequest</code> returns up to\n            100 results and a <code>nextToken</code> value, if applicable.</p>"}))
    DescribeRepositoryCreationTemplatesRequest.type = Types::DescribeRepositoryCreationTemplatesRequest
    DescribeRepositoryCreationTemplatesResponse.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The registry ID associated with the request.</p>"}))
    DescribeRepositoryCreationTemplatesResponse.add_member(:repository_creation_templates, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryCreationTemplateList, location_name: 'repositoryCreationTemplates', traits: {"smithy.api#documentation" => "<p>The details of the repository creation templates.</p>"}))
    DescribeRepositoryCreationTemplatesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The <code>nextToken</code> value to include in a future\n                <code>DescribeRepositoryCreationTemplates</code> request. When the results of a\n                <code>DescribeRepositoryCreationTemplates</code> request exceed\n                <code>maxResults</code>, this value can be used to retrieve the next page of\n            results. This value is <code>null</code> when there are no more results to\n            return.</p>"}))
    DescribeRepositoryCreationTemplatesResponse.type = Types::DescribeRepositoryCreationTemplatesResponse
    EmptyUploadException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The error message associated with the exception.</p>"}))
    EmptyUploadException.type = Types::EmptyUploadException
    EncryptionConfiguration.add_member(:encryption_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionType, location_name: 'encryptionType', traits: {"smithy.api#documentation" => "<p>The encryption type to use.</p>\n         <p>If you use the <code>KMS</code> encryption type, the contents of the repository will\n            be encrypted using server-side encryption with Key Management Service key stored in KMS. When you\n            use KMS to encrypt your data, you can either use the default Amazon Web Services managed KMS key\n            for Amazon ECR, or specify your own KMS key, which you already created.</p>\n         <p>If you use the <code>KMS_DSSE</code> encryption type, the contents of the repository\n            will be encrypted with two layers of encryption using server-side encryption with the\n            KMS Management Service key stored in KMS. Similar to the <code>KMS</code> encryption\n            type, you can either use the default Amazon Web Services managed KMS key for Amazon ECR, or specify your\n            own KMS key, which you've already created. </p>\n         <p>If you use the <code>AES256</code> encryption type, Amazon ECR uses server-side encryption\n            with Amazon S3-managed encryption keys which encrypts the images in the repository using an\n            AES256 encryption algorithm.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECR/latest/userguide/encryption-at-rest.html\">Amazon ECR encryption at\n                rest</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>", "smithy.api#required" => {}}))
    EncryptionConfiguration.add_member(:kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKey, location_name: 'kmsKey', traits: {"smithy.api#documentation" => "<p>If you use the <code>KMS</code> encryption type, specify the KMS key to use for\n            encryption. The alias, key ID, or full ARN of the KMS key can be specified. The key\n            must exist in the same Region as the repository. If no key is specified, the default\n            Amazon Web Services managed KMS key for Amazon ECR will be used.</p>"}))
    EncryptionConfiguration.type = Types::EncryptionConfiguration
    EncryptionConfigurationForRepositoryCreationTemplate.add_member(:encryption_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionType, location_name: 'encryptionType', traits: {"smithy.api#documentation" => "<p>The encryption type to use.</p>\n         <p>If you use the <code>KMS</code> encryption type, the contents of the repository will\n            be encrypted using server-side encryption with Key Management Service key stored in KMS. When you\n            use KMS to encrypt your data, you can either use the default Amazon Web Services managed KMS key\n            for Amazon ECR, or specify your own KMS key, which you already created. For more\n            information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingKMSEncryption.html\">Protecting data using server-side\n                encryption with an KMS key stored in Key Management Service (SSE-KMS)</a> in the\n                <i>Amazon Simple Storage Service Console Developer Guide</i>.</p>\n         <p>If you use the <code>AES256</code> encryption type, Amazon ECR uses server-side encryption\n            with Amazon S3-managed encryption keys which encrypts the images in the repository using an\n            AES256 encryption algorithm. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingServerSideEncryption.html\">Protecting data using\n                server-side encryption with Amazon S3-managed encryption keys (SSE-S3)</a> in the\n                <i>Amazon Simple Storage Service Console Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    EncryptionConfigurationForRepositoryCreationTemplate.add_member(:kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyForRepositoryCreationTemplate, location_name: 'kmsKey', traits: {"smithy.api#documentation" => "<p>If you use the <code>KMS</code> encryption type, specify the KMS key to use for\n            encryption. The full ARN of the KMS key must be specified. The key must exist in the\n            same Region as the repository. If no key is specified, the default Amazon Web Services managed KMS\n            key for Amazon ECR will be used.</p>"}))
    EncryptionConfigurationForRepositoryCreationTemplate.type = Types::EncryptionConfigurationForRepositoryCreationTemplate
    EncryptionType.add_member(:aes256, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AES256', traits: {"smithy.api#enumValue" => "AES256"}))
    EncryptionType.add_member(:kms, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KMS', traits: {"smithy.api#enumValue" => "KMS"}))
    EncryptionType.add_member(:kms_dsse, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KMS_DSSE', traits: {"smithy.api#enumValue" => "KMS_DSSE"}))
    EnhancedImageScanFinding.add_member(:aws_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'awsAccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the image.</p>"}))
    EnhancedImageScanFinding.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the finding.</p>"}))
    EnhancedImageScanFinding.add_member(:finding_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingArn, location_name: 'findingArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the finding.</p>"}))
    EnhancedImageScanFinding.add_member(:first_observed_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'firstObservedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the finding was first observed.</p>"}))
    EnhancedImageScanFinding.add_member(:last_observed_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'lastObservedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the finding was last observed.</p>"}))
    EnhancedImageScanFinding.add_member(:package_vulnerability_details, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVulnerabilityDetails, location_name: 'packageVulnerabilityDetails', traits: {"smithy.api#documentation" => "<p>An object that contains the details of a package vulnerability finding.</p>"}))
    EnhancedImageScanFinding.add_member(:remediation, Smithy::Schema::Shapes::ShapeRef.new(shape: Remediation, location_name: 'remediation', traits: {"smithy.api#documentation" => "<p>An object that contains the details about how to remediate a finding.</p>"}))
    EnhancedImageScanFinding.add_member(:resources, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceList, location_name: 'resources', traits: {"smithy.api#documentation" => "<p>Contains information on the resources involved in a finding.</p>"}))
    EnhancedImageScanFinding.add_member(:score, Smithy::Schema::Shapes::ShapeRef.new(shape: Score, location_name: 'score', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The Amazon Inspector score given to the finding.</p>"}))
    EnhancedImageScanFinding.add_member(:score_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ScoreDetails, location_name: 'scoreDetails', traits: {"smithy.api#documentation" => "<p>An object that contains details of the Amazon Inspector score.</p>"}))
    EnhancedImageScanFinding.add_member(:severity, Smithy::Schema::Shapes::ShapeRef.new(shape: Severity, location_name: 'severity', traits: {"smithy.api#documentation" => "<p>The severity of the finding.</p>"}))
    EnhancedImageScanFinding.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the finding.</p>"}))
    EnhancedImageScanFinding.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: Title, location_name: 'title', traits: {"smithy.api#documentation" => "<p>The title of the finding.</p>"}))
    EnhancedImageScanFinding.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the finding.</p>"}))
    EnhancedImageScanFinding.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time the finding was last updated at.</p>"}))
    EnhancedImageScanFinding.add_member(:fix_available, Smithy::Schema::Shapes::ShapeRef.new(shape: FixAvailable, location_name: 'fixAvailable', traits: {"smithy.api#documentation" => "<p>Details on whether a fix is available through a version update. This value can be\n                <code>YES</code>, <code>NO</code>, or <code>PARTIAL</code>. A <code>PARTIAL</code>\n            fix means that some, but not all, of the packages identified in the finding have fixes\n            available through updated versions.</p>"}))
    EnhancedImageScanFinding.add_member(:exploit_available, Smithy::Schema::Shapes::ShapeRef.new(shape: ExploitAvailable, location_name: 'exploitAvailable', traits: {"smithy.api#documentation" => "<p>If a finding discovered in your environment has an exploit available.</p>"}))
    EnhancedImageScanFinding.type = Types::EnhancedImageScanFinding
    EnhancedImageScanFindingList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EnhancedImageScanFinding)
    FindingSeverity.add_member(:informational, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INFORMATIONAL', traits: {"smithy.api#enumValue" => "INFORMATIONAL"}))
    FindingSeverity.add_member(:low, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW', traits: {"smithy.api#enumValue" => "LOW"}))
    FindingSeverity.add_member(:medium, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEDIUM', traits: {"smithy.api#enumValue" => "MEDIUM"}))
    FindingSeverity.add_member(:high, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIGH', traits: {"smithy.api#enumValue" => "HIGH"}))
    FindingSeverity.add_member(:critical, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CRITICAL', traits: {"smithy.api#enumValue" => "CRITICAL"}))
    FindingSeverity.add_member(:undefined, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNDEFINED', traits: {"smithy.api#enumValue" => "UNDEFINED"}))
    FindingSeverityCounts.key = Smithy::Schema::Shapes::ShapeRef.new(shape: FindingSeverity)
    FindingSeverityCounts.value = Smithy::Schema::Shapes::ShapeRef.new(shape: SeverityCount)
    GetAccountSettingRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSettingName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the account setting, such as <code>BASIC_SCAN_TYPE_VERSION</code> or\n                <code>REGISTRY_POLICY_SCOPE</code>. </p>", "smithy.api#required" => {}}))
    GetAccountSettingRequest.type = Types::GetAccountSettingRequest
    GetAccountSettingResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSettingName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Retrieves the name of the account setting.</p>"}))
    GetAccountSettingResponse.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSettingName, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The setting value for the setting name. The following are valid values for the basic\n            scan type being used: <code>AWS_NATIVE</code> or <code>CLAIR</code>. The following are\n            valid values for the registry policy scope being used: <code>V1</code> or\n                <code>V2</code>.</p>"}))
    GetAccountSettingResponse.type = Types::GetAccountSettingResponse
    GetAuthorizationTokenRegistryIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId)
    GetAuthorizationTokenRequest.add_member(:registry_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: GetAuthorizationTokenRegistryIdList, location_name: 'registryIds', traits: {"smithy.api#deprecated" => {"message" => "This field is deprecated. The returned authorization token can be used to access any Amazon ECR registry that the IAM principal has access to, specifying a registry ID doesn't change the permissions scope of the authorization token."}, "smithy.api#documentation" => "<p>A list of Amazon Web Services account IDs that are associated with the registries for which to get\n            AuthorizationData objects. If you do not specify a registry, the default registry is assumed.</p>"}))
    GetAuthorizationTokenRequest.type = Types::GetAuthorizationTokenRequest
    GetAuthorizationTokenResponse.add_member(:authorization_data, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationDataList, location_name: 'authorizationData', traits: {"smithy.api#documentation" => "<p>A list of authorization token data objects that correspond to the\n                <code>registryIds</code> values in the request.</p>\n         <note>\n            <p>The size of the authorization token returned by Amazon ECR is not fixed. We recommend\n                that you don't make assumptions about the maximum size.</p>\n         </note>"}))
    GetAuthorizationTokenResponse.type = Types::GetAuthorizationTokenResponse
    GetDownloadUrlForLayerRequest.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the registry that contains the image layer to\n            download. If you do not specify a registry, the default registry is assumed.</p>"}))
    GetDownloadUrlForLayerRequest.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository that is associated with the image layer to download.</p>", "smithy.api#required" => {}}))
    GetDownloadUrlForLayerRequest.add_member(:layer_digest, Smithy::Schema::Shapes::ShapeRef.new(shape: LayerDigest, location_name: 'layerDigest', traits: {"smithy.api#documentation" => "<p>The digest of the image layer to download.</p>", "smithy.api#required" => {}}))
    GetDownloadUrlForLayerRequest.type = Types::GetDownloadUrlForLayerRequest
    GetDownloadUrlForLayerResponse.add_member(:download_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'downloadUrl', traits: {"smithy.api#documentation" => "<p>The pre-signed Amazon S3 download URL for the requested layer.</p>"}))
    GetDownloadUrlForLayerResponse.add_member(:layer_digest, Smithy::Schema::Shapes::ShapeRef.new(shape: LayerDigest, location_name: 'layerDigest', traits: {"smithy.api#documentation" => "<p>The digest of the image layer to download.</p>"}))
    GetDownloadUrlForLayerResponse.type = Types::GetDownloadUrlForLayerResponse
    GetLifecyclePolicyPreviewRequest.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the registry that contains the repository.\n            If you do not specify a registry, the default registry is assumed.</p>"}))
    GetLifecyclePolicyPreviewRequest.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository.</p>", "smithy.api#required" => {}}))
    GetLifecyclePolicyPreviewRequest.add_member(:image_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageIdentifierList, location_name: 'imageIds', traits: {"smithy.api#documentation" => "<p>The list of imageIDs to be included.</p>"}))
    GetLifecyclePolicyPreviewRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The <code>nextToken</code> value returned from a previous paginated\u2028\n                <code>GetLifecyclePolicyPreviewRequest</code> request where <code>maxResults</code>\n            was used and the\u2028 results exceeded the value of that parameter. Pagination continues\n            from the end of the\u2028 previous results that returned the <code>nextToken</code> value.\n            This value is\u2028 <code>null</code> when there are no more results to return. This option\n            cannot be used when you specify images with <code>imageIds</code>.</p>"}))
    GetLifecyclePolicyPreviewRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePreviewMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of repository results returned by\n                <code>GetLifecyclePolicyPreviewRequest</code> in\u2028 paginated output. When this\n            parameter is used, <code>GetLifecyclePolicyPreviewRequest</code> only returns\u2028\n                <code>maxResults</code> results in a single page along with a\n            <code>nextToken</code>\u2028 response element. The remaining results of the initial request\n            can be seen by sending\u2028 another <code>GetLifecyclePolicyPreviewRequest</code> request\n            with the returned <code>nextToken</code>\u2028 value. This value can be between\n            1 and 100. If this\u2028 parameter is not used, then\n                <code>GetLifecyclePolicyPreviewRequest</code> returns up to\u2028100\n            results and a <code>nextToken</code> value, if\u2028 applicable. This option cannot be used\n            when you specify images with <code>imageIds</code>.</p>"}))
    GetLifecyclePolicyPreviewRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyPreviewFilter, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>An optional parameter that filters results based on image tag status and all tags, if\n            tagged.</p>"}))
    GetLifecyclePolicyPreviewRequest.type = Types::GetLifecyclePolicyPreviewRequest
    GetLifecyclePolicyPreviewResponse.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The registry ID associated with the request.</p>"}))
    GetLifecyclePolicyPreviewResponse.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The repository name associated with the request.</p>"}))
    GetLifecyclePolicyPreviewResponse.add_member(:lifecycle_policy_text, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyText, location_name: 'lifecyclePolicyText', traits: {"smithy.api#documentation" => "<p>The JSON lifecycle policy text.</p>"}))
    GetLifecyclePolicyPreviewResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyPreviewStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the lifecycle policy preview request.</p>"}))
    GetLifecyclePolicyPreviewResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The <code>nextToken</code> value to include in a future\n                <code>GetLifecyclePolicyPreview</code> request. When the results of a\n                <code>GetLifecyclePolicyPreview</code> request exceed <code>maxResults</code>, this\n            value can be used to retrieve the next page of results. This value is <code>null</code>\n            when there are no more results to return.</p>"}))
    GetLifecyclePolicyPreviewResponse.add_member(:preview_results, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyPreviewResultList, location_name: 'previewResults', traits: {"smithy.api#documentation" => "<p>The results of the lifecycle policy preview request.</p>"}))
    GetLifecyclePolicyPreviewResponse.add_member(:summary, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyPreviewSummary, location_name: 'summary', traits: {"smithy.api#documentation" => "<p>The list of images that is returned as a result of the action.</p>"}))
    GetLifecyclePolicyPreviewResponse.type = Types::GetLifecyclePolicyPreviewResponse
    GetLifecyclePolicyRequest.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the registry that contains the repository.\n            If you do not specify a registry, the default registry is assumed.</p>"}))
    GetLifecyclePolicyRequest.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository.</p>", "smithy.api#required" => {}}))
    GetLifecyclePolicyRequest.type = Types::GetLifecyclePolicyRequest
    GetLifecyclePolicyResponse.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The registry ID associated with the request.</p>"}))
    GetLifecyclePolicyResponse.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The repository name associated with the request.</p>"}))
    GetLifecyclePolicyResponse.add_member(:lifecycle_policy_text, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyText, location_name: 'lifecyclePolicyText', traits: {"smithy.api#documentation" => "<p>The JSON lifecycle policy text.</p>"}))
    GetLifecyclePolicyResponse.add_member(:last_evaluated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationTimestamp, location_name: 'lastEvaluatedAt', traits: {"smithy.api#documentation" => "<p>The time stamp of the last time that the lifecycle policy was run.</p>"}))
    GetLifecyclePolicyResponse.type = Types::GetLifecyclePolicyResponse
    GetRegistryPolicyRequest.type = Types::GetRegistryPolicyRequest
    GetRegistryPolicyResponse.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The registry ID associated with the request.</p>"}))
    GetRegistryPolicyResponse.add_member(:policy_text, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryPolicyText, location_name: 'policyText', traits: {"smithy.api#documentation" => "<p>The JSON text of the permissions policy for a registry.</p>"}))
    GetRegistryPolicyResponse.type = Types::GetRegistryPolicyResponse
    GetRegistryScanningConfigurationRequest.type = Types::GetRegistryScanningConfigurationRequest
    GetRegistryScanningConfigurationResponse.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The registry ID associated with the request.</p>"}))
    GetRegistryScanningConfigurationResponse.add_member(:scanning_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryScanningConfiguration, location_name: 'scanningConfiguration', traits: {"smithy.api#documentation" => "<p>The scanning configuration for the registry.</p>"}))
    GetRegistryScanningConfigurationResponse.type = Types::GetRegistryScanningConfigurationResponse
    GetRepositoryPolicyRequest.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the registry that contains the repository.\n            If you do not specify a registry, the default registry is assumed.</p>"}))
    GetRepositoryPolicyRequest.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository with the policy to retrieve.</p>", "smithy.api#required" => {}}))
    GetRepositoryPolicyRequest.type = Types::GetRepositoryPolicyRequest
    GetRepositoryPolicyResponse.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The registry ID associated with the request.</p>"}))
    GetRepositoryPolicyResponse.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The repository name associated with the request.</p>"}))
    GetRepositoryPolicyResponse.add_member(:policy_text, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryPolicyText, location_name: 'policyText', traits: {"smithy.api#documentation" => "<p>The JSON repository policy text associated with the repository.</p>"}))
    GetRepositoryPolicyResponse.type = Types::GetRepositoryPolicyResponse
    Image.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the registry containing the image.</p>"}))
    Image.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository associated with the image.</p>"}))
    Image.add_member(:image_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageIdentifier, location_name: 'imageId', traits: {"smithy.api#documentation" => "<p>An object containing the image tag and image digest associated with an image.</p>"}))
    Image.add_member(:image_manifest, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageManifest, location_name: 'imageManifest', traits: {"smithy.api#documentation" => "<p>The image manifest associated with the image.</p>"}))
    Image.add_member(:image_manifest_media_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaType, location_name: 'imageManifestMediaType', traits: {"smithy.api#documentation" => "<p>The manifest media type of the image.</p>"}))
    Image.type = Types::Image
    ImageActionType.add_member(:expire, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPIRE', traits: {"smithy.api#enumValue" => "EXPIRE"}))
    ImageAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The error message associated with the exception.</p>"}))
    ImageAlreadyExistsException.type = Types::ImageAlreadyExistsException
    ImageDetail.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the registry to which this image belongs.</p>"}))
    ImageDetail.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository to which this image belongs.</p>"}))
    ImageDetail.add_member(:image_digest, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageDigest, location_name: 'imageDigest', traits: {"smithy.api#documentation" => "<p>The <code>sha256</code> digest of the image manifest.</p>"}))
    ImageDetail.add_member(:image_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagList, location_name: 'imageTags', traits: {"smithy.api#documentation" => "<p>The list of tags associated with this image.</p>"}))
    ImageDetail.add_member(:image_size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSizeInBytes, location_name: 'imageSizeInBytes', traits: {"smithy.api#documentation" => "<p>The size, in bytes, of the image in the repository.</p>\n         <p>If the image is a manifest list, this will be the max size of all manifests in the\n            list.</p>\n         <note>\n            <p>Starting with Docker version 1.9, the Docker client compresses image layers before\n                pushing them to a V2 Docker registry. The output of the <code>docker images</code>\n                command shows the uncompressed image size. Therefore, Docker might return a larger\n                image than the image shown in the Amazon Web Services Management Console.</p>\n         </note>"}))
    ImageDetail.add_member(:image_pushed_at, Smithy::Schema::Shapes::ShapeRef.new(shape: PushTimestamp, location_name: 'imagePushedAt', traits: {"smithy.api#documentation" => "<p>The date and time, expressed in standard JavaScript date format, at which the current\n            image was pushed to the repository. </p>"}))
    ImageDetail.add_member(:image_scan_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageScanStatus, location_name: 'imageScanStatus', traits: {"smithy.api#documentation" => "<p>The current state of the scan.</p>"}))
    ImageDetail.add_member(:image_scan_findings_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageScanFindingsSummary, location_name: 'imageScanFindingsSummary', traits: {"smithy.api#documentation" => "<p>A summary of the last completed image scan.</p>"}))
    ImageDetail.add_member(:image_manifest_media_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaType, location_name: 'imageManifestMediaType', traits: {"smithy.api#documentation" => "<p>The media type of the image manifest.</p>"}))
    ImageDetail.add_member(:artifact_media_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaType, location_name: 'artifactMediaType', traits: {"smithy.api#documentation" => "<p>The artifact media type of the image.</p>"}))
    ImageDetail.add_member(:last_recorded_pull_time, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordedPullTimestamp, location_name: 'lastRecordedPullTime', traits: {"smithy.api#documentation" => "<p>The date and time, expressed in standard JavaScript date format, when Amazon ECR recorded\n            the last image pull.</p>\n         <note>\n            <p>Amazon ECR refreshes the last image pull timestamp at least once every 24 hours. For\n                example, if you pull an image once a day then the <code>lastRecordedPullTime</code>\n                timestamp will indicate the exact time that the image was last pulled. However, if\n                you pull an image once an hour, because Amazon ECR refreshes the\n                    <code>lastRecordedPullTime</code> timestamp at least once every 24 hours, the\n                result may not be the exact time that the image was last pulled.</p>\n         </note>"}))
    ImageDetail.type = Types::ImageDetail
    ImageDetailList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ImageDetail)
    ImageDigestDoesNotMatchException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ImageDigestDoesNotMatchException.type = Types::ImageDigestDoesNotMatchException
    ImageFailure.add_member(:image_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageIdentifier, location_name: 'imageId', traits: {"smithy.api#documentation" => "<p>The image ID associated with the failure.</p>"}))
    ImageFailure.add_member(:failure_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageFailureCode, location_name: 'failureCode', traits: {"smithy.api#documentation" => "<p>The code associated with the failure.</p>"}))
    ImageFailure.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageFailureReason, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>The reason for the failure.</p>"}))
    ImageFailure.type = Types::ImageFailure
    ImageFailureCode.add_member(:invalid_image_digest, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidImageDigest', traits: {"smithy.api#enumValue" => "InvalidImageDigest"}))
    ImageFailureCode.add_member(:invalid_image_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidImageTag', traits: {"smithy.api#enumValue" => "InvalidImageTag"}))
    ImageFailureCode.add_member(:image_tag_does_not_match_digest, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ImageTagDoesNotMatchDigest', traits: {"smithy.api#enumValue" => "ImageTagDoesNotMatchDigest"}))
    ImageFailureCode.add_member(:image_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ImageNotFound', traits: {"smithy.api#enumValue" => "ImageNotFound"}))
    ImageFailureCode.add_member(:missing_digest_and_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MissingDigestAndTag', traits: {"smithy.api#enumValue" => "MissingDigestAndTag"}))
    ImageFailureCode.add_member(:image_referenced_by_manifest_list, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ImageReferencedByManifestList', traits: {"smithy.api#enumValue" => "ImageReferencedByManifestList"}))
    ImageFailureCode.add_member(:kms_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KmsError', traits: {"smithy.api#enumValue" => "KmsError"}))
    ImageFailureCode.add_member(:upstream_access_denied, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UpstreamAccessDenied', traits: {"smithy.api#enumValue" => "UpstreamAccessDenied"}))
    ImageFailureCode.add_member(:upstream_too_many_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UpstreamTooManyRequests', traits: {"smithy.api#enumValue" => "UpstreamTooManyRequests"}))
    ImageFailureCode.add_member(:upstream_unavailable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UpstreamUnavailable', traits: {"smithy.api#enumValue" => "UpstreamUnavailable"}))
    ImageFailureList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ImageFailure)
    ImageIdentifier.add_member(:image_digest, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageDigest, location_name: 'imageDigest', traits: {"smithy.api#documentation" => "<p>The <code>sha256</code> digest of the image manifest.</p>"}))
    ImageIdentifier.add_member(:image_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTag, location_name: 'imageTag', traits: {"smithy.api#documentation" => "<p>The tag used for the image.</p>"}))
    ImageIdentifier.type = Types::ImageIdentifier
    ImageIdentifierList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ImageIdentifier)
    ImageList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Image)
    ImageNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ImageNotFoundException.type = Types::ImageNotFoundException
    ImageReplicationStatus.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region', traits: {"smithy.api#documentation" => "<p>The destination Region for the image replication.</p>"}))
    ImageReplicationStatus.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the registry to which the image belongs.</p>"}))
    ImageReplicationStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The image replication status.</p>"}))
    ImageReplicationStatus.add_member(:failure_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationError, location_name: 'failureCode', traits: {"smithy.api#documentation" => "<p>The failure code for a replication that has failed.</p>"}))
    ImageReplicationStatus.type = Types::ImageReplicationStatus
    ImageReplicationStatusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ImageReplicationStatus)
    ImageScanFinding.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name associated with the finding, usually a CVE number.</p>"}))
    ImageScanFinding.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the finding.</p>"}))
    ImageScanFinding.add_member(:uri, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'uri', traits: {"smithy.api#documentation" => "<p>A link containing additional details about the security vulnerability.</p>"}))
    ImageScanFinding.add_member(:severity, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingSeverity, location_name: 'severity', traits: {"smithy.api#documentation" => "<p>The finding severity.</p>"}))
    ImageScanFinding.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeList, location_name: 'attributes', traits: {"smithy.api#documentation" => "<p>A collection of attributes of the host from which the finding is generated.</p>"}))
    ImageScanFinding.type = Types::ImageScanFinding
    ImageScanFindingList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ImageScanFinding)
    ImageScanFindings.add_member(:image_scan_completed_at, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanTimestamp, location_name: 'imageScanCompletedAt', traits: {"smithy.api#documentation" => "<p>The time of the last completed image scan.</p>"}))
    ImageScanFindings.add_member(:vulnerability_source_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: VulnerabilitySourceUpdateTimestamp, location_name: 'vulnerabilitySourceUpdatedAt', traits: {"smithy.api#documentation" => "<p>The time when the vulnerability data was last scanned.</p>"}))
    ImageScanFindings.add_member(:finding_severity_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingSeverityCounts, location_name: 'findingSeverityCounts', traits: {"smithy.api#documentation" => "<p>The image vulnerability counts, sorted by severity.</p>"}))
    ImageScanFindings.add_member(:findings, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageScanFindingList, location_name: 'findings', traits: {"smithy.api#documentation" => "<p>The findings from the image scan.</p>"}))
    ImageScanFindings.add_member(:enhanced_findings, Smithy::Schema::Shapes::ShapeRef.new(shape: EnhancedImageScanFindingList, location_name: 'enhancedFindings', traits: {"smithy.api#documentation" => "<p>Details about the enhanced scan findings from Amazon Inspector.</p>"}))
    ImageScanFindings.type = Types::ImageScanFindings
    ImageScanFindingsSummary.add_member(:image_scan_completed_at, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanTimestamp, location_name: 'imageScanCompletedAt', traits: {"smithy.api#documentation" => "<p>The time of the last completed image scan.</p>"}))
    ImageScanFindingsSummary.add_member(:vulnerability_source_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: VulnerabilitySourceUpdateTimestamp, location_name: 'vulnerabilitySourceUpdatedAt', traits: {"smithy.api#documentation" => "<p>The time when the vulnerability data was last scanned.</p>"}))
    ImageScanFindingsSummary.add_member(:finding_severity_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingSeverityCounts, location_name: 'findingSeverityCounts', traits: {"smithy.api#documentation" => "<p>The image vulnerability counts, sorted by severity.</p>"}))
    ImageScanFindingsSummary.type = Types::ImageScanFindingsSummary
    ImageScanStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current state of an image scan.</p>"}))
    ImageScanStatus.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanStatusDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the image scan status.</p>"}))
    ImageScanStatus.type = Types::ImageScanStatus
    ImageScanningConfiguration.add_member(:scan_on_push, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanOnPushFlag, location_name: 'scanOnPush', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>The setting that determines whether images are scanned after being pushed to a\n            repository. If set to <code>true</code>, images will be scanned after being pushed. If\n            this parameter is not specified, it will default to <code>false</code> and images will\n            not be scanned unless a scan is manually started with the <a href=\"https://docs.aws.amazon.com/AmazonECR/latest/APIReference/API_StartImageScan.html\">API_StartImageScan</a> API.</p>"}))
    ImageScanningConfiguration.type = Types::ImageScanningConfiguration
    ImageTagAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ImageTagAlreadyExistsException.type = Types::ImageTagAlreadyExistsException
    ImageTagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTag)
    ImageTagMutability.add_member(:mutable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MUTABLE', traits: {"smithy.api#enumValue" => "MUTABLE"}))
    ImageTagMutability.add_member(:immutable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMMUTABLE', traits: {"smithy.api#enumValue" => "IMMUTABLE"}))
    ImageTagMutability.add_member(:immutable_with_exclusion, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMMUTABLE_WITH_EXCLUSION', traits: {"smithy.api#enumValue" => "IMMUTABLE_WITH_EXCLUSION"}))
    ImageTagMutability.add_member(:mutable_with_exclusion, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MUTABLE_WITH_EXCLUSION', traits: {"smithy.api#enumValue" => "MUTABLE_WITH_EXCLUSION"}))
    ImageTagMutabilityExclusionFilter.add_member(:filter_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagMutabilityExclusionFilterType, location_name: 'filterType', traits: {"smithy.api#documentation" => "<p>Specifies the type of filter to use for excluding image tags from the repository's mutability setting.</p>", "smithy.api#required" => {}}))
    ImageTagMutabilityExclusionFilter.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagMutabilityExclusionFilterValue, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>The value to use when filtering image tags. Must be either a regular expression pattern or a tag prefix value based on the specified filter type.</p>", "smithy.api#required" => {}}))
    ImageTagMutabilityExclusionFilter.type = Types::ImageTagMutabilityExclusionFilter
    ImageTagMutabilityExclusionFilterType.add_member(:wildcard, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WILDCARD', traits: {"smithy.api#enumValue" => "WILDCARD"}))
    ImageTagMutabilityExclusionFilters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagMutabilityExclusionFilter)
    ImageTagsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTag)
    InitiateLayerUploadRequest.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the registry to which you intend to upload\n            layers. If you do not specify a registry, the default registry is assumed.</p>"}))
    InitiateLayerUploadRequest.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository to which you intend to upload layers.</p>", "smithy.api#required" => {}}))
    InitiateLayerUploadRequest.type = Types::InitiateLayerUploadRequest
    InitiateLayerUploadResponse.add_member(:upload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: 'uploadId', traits: {"smithy.api#documentation" => "<p>The upload ID for the layer upload. This parameter is passed to further <a>UploadLayerPart</a> and <a>CompleteLayerUpload</a>\n            operations.</p>"}))
    InitiateLayerUploadResponse.add_member(:part_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PartSize, location_name: 'partSize', traits: {"smithy.api#documentation" => "<p>The size, in bytes, that Amazon ECR expects future layer part uploads to be.</p>"}))
    InitiateLayerUploadResponse.type = Types::InitiateLayerUploadResponse
    InvalidLayerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The error message associated with the exception.</p>"}))
    InvalidLayerException.type = Types::InvalidLayerException
    InvalidLayerPartException.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The registry ID associated with the exception.</p>"}))
    InvalidLayerPartException.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The repository name associated with the exception.</p>"}))
    InvalidLayerPartException.add_member(:upload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: 'uploadId', traits: {"smithy.api#documentation" => "<p>The upload ID associated with the exception.</p>"}))
    InvalidLayerPartException.add_member(:last_valid_byte_received, Smithy::Schema::Shapes::ShapeRef.new(shape: PartSize, location_name: 'lastValidByteReceived', traits: {"smithy.api#documentation" => "<p>The last valid byte received from the layer part upload that is associated with the\n            exception.</p>"}))
    InvalidLayerPartException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The error message associated with the exception.</p>"}))
    InvalidLayerPartException.type = Types::InvalidLayerPartException
    InvalidParameterException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The error message associated with the exception.</p>"}))
    InvalidParameterException.type = Types::InvalidParameterException
    InvalidTagParameterException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidTagParameterException.type = Types::InvalidTagParameterException
    KmsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    KmsException.add_member(:kms_error, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsError, location_name: 'kmsError', traits: {"smithy.api#documentation" => "<p>The error code returned by KMS.</p>"}))
    KmsException.type = Types::KmsException
    Layer.add_member(:layer_digest, Smithy::Schema::Shapes::ShapeRef.new(shape: LayerDigest, location_name: 'layerDigest', traits: {"smithy.api#documentation" => "<p>The <code>sha256</code> digest of the image layer.</p>"}))
    Layer.add_member(:layer_availability, Smithy::Schema::Shapes::ShapeRef.new(shape: LayerAvailability, location_name: 'layerAvailability', traits: {"smithy.api#documentation" => "<p>The availability status of the image layer.</p>"}))
    Layer.add_member(:layer_size, Smithy::Schema::Shapes::ShapeRef.new(shape: LayerSizeInBytes, location_name: 'layerSize', traits: {"smithy.api#documentation" => "<p>The size, in bytes, of the image layer.</p>"}))
    Layer.add_member(:media_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaType, location_name: 'mediaType', traits: {"smithy.api#documentation" => "<p>The media type of the layer, such as\n                <code>application/vnd.docker.image.rootfs.diff.tar.gzip</code> or\n                <code>application/vnd.oci.image.layer.v1.tar+gzip</code>.</p>"}))
    Layer.type = Types::Layer
    LayerAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The error message associated with the exception.</p>"}))
    LayerAlreadyExistsException.type = Types::LayerAlreadyExistsException
    LayerAvailability.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    LayerAvailability.add_member(:unavailable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNAVAILABLE', traits: {"smithy.api#enumValue" => "UNAVAILABLE"}))
    LayerDigestList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LayerDigest)
    LayerFailure.add_member(:layer_digest, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchedOperationLayerDigest, location_name: 'layerDigest', traits: {"smithy.api#documentation" => "<p>The layer digest associated with the failure.</p>"}))
    LayerFailure.add_member(:failure_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LayerFailureCode, location_name: 'failureCode', traits: {"smithy.api#documentation" => "<p>The failure code associated with the failure.</p>"}))
    LayerFailure.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: LayerFailureReason, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>The reason for the failure.</p>"}))
    LayerFailure.type = Types::LayerFailure
    LayerFailureCode.add_member(:invalid_layer_digest, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidLayerDigest', traits: {"smithy.api#enumValue" => "InvalidLayerDigest"}))
    LayerFailureCode.add_member(:missing_layer_digest, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MissingLayerDigest', traits: {"smithy.api#enumValue" => "MissingLayerDigest"}))
    LayerFailureList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LayerFailure)
    LayerInaccessibleException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The error message associated with the exception.</p>"}))
    LayerInaccessibleException.type = Types::LayerInaccessibleException
    LayerList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Layer)
    LayerPartTooSmallException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The error message associated with the exception.</p>"}))
    LayerPartTooSmallException.type = Types::LayerPartTooSmallException
    LayersNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The error message associated with the exception.</p>"}))
    LayersNotFoundException.type = Types::LayersNotFoundException
    LifecyclePolicyNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    LifecyclePolicyNotFoundException.type = Types::LifecyclePolicyNotFoundException
    LifecyclePolicyPreviewFilter.add_member(:tag_status, Smithy::Schema::Shapes::ShapeRef.new(shape: TagStatus, location_name: 'tagStatus', traits: {"smithy.api#documentation" => "<p>The tag status of the image.</p>"}))
    LifecyclePolicyPreviewFilter.type = Types::LifecyclePolicyPreviewFilter
    LifecyclePolicyPreviewInProgressException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    LifecyclePolicyPreviewInProgressException.type = Types::LifecyclePolicyPreviewInProgressException
    LifecyclePolicyPreviewNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    LifecyclePolicyPreviewNotFoundException.type = Types::LifecyclePolicyPreviewNotFoundException
    LifecyclePolicyPreviewResult.add_member(:image_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagList, location_name: 'imageTags', traits: {"smithy.api#documentation" => "<p>The list of tags associated with this image.</p>"}))
    LifecyclePolicyPreviewResult.add_member(:image_digest, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageDigest, location_name: 'imageDigest', traits: {"smithy.api#documentation" => "<p>The <code>sha256</code> digest of the image manifest.</p>"}))
    LifecyclePolicyPreviewResult.add_member(:image_pushed_at, Smithy::Schema::Shapes::ShapeRef.new(shape: PushTimestamp, location_name: 'imagePushedAt', traits: {"smithy.api#documentation" => "<p>The date and time, expressed in standard JavaScript date format, at which the current\n            image was pushed to the repository.</p>"}))
    LifecyclePolicyPreviewResult.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyRuleAction, location_name: 'action', traits: {"smithy.api#documentation" => "<p>The type of action to be taken.</p>"}))
    LifecyclePolicyPreviewResult.add_member(:applied_rule_priority, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyRulePriority, location_name: 'appliedRulePriority', traits: {"smithy.api#documentation" => "<p>The priority of the applied rule.</p>"}))
    LifecyclePolicyPreviewResult.type = Types::LifecyclePolicyPreviewResult
    LifecyclePolicyPreviewResultList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyPreviewResult)
    LifecyclePolicyPreviewStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    LifecyclePolicyPreviewStatus.add_member(:complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETE', traits: {"smithy.api#enumValue" => "COMPLETE"}))
    LifecyclePolicyPreviewStatus.add_member(:expired, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPIRED', traits: {"smithy.api#enumValue" => "EXPIRED"}))
    LifecyclePolicyPreviewStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    LifecyclePolicyPreviewSummary.add_member(:expiring_image_total_count, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageCount, location_name: 'expiringImageTotalCount', traits: {"smithy.api#documentation" => "<p>The number of expiring images.</p>"}))
    LifecyclePolicyPreviewSummary.type = Types::LifecyclePolicyPreviewSummary
    LifecyclePolicyRuleAction.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageActionType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of action to be taken.</p>"}))
    LifecyclePolicyRuleAction.type = Types::LifecyclePolicyRuleAction
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The error message associated with the exception.</p>"}))
    LimitExceededException.type = Types::LimitExceededException
    ListImagesFilter.add_member(:tag_status, Smithy::Schema::Shapes::ShapeRef.new(shape: TagStatus, location_name: 'tagStatus', traits: {"smithy.api#documentation" => "<p>The tag status with which to filter your <a>ListImages</a> results. You can\n            filter results based on whether they are <code>TAGGED</code> or\n            <code>UNTAGGED</code>.</p>"}))
    ListImagesFilter.type = Types::ListImagesFilter
    ListImagesRequest.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the registry that contains the repository in\n            which to list images. If you do not specify a registry, the default registry is assumed.</p>"}))
    ListImagesRequest.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The repository with image IDs to be listed.</p>", "smithy.api#required" => {}}))
    ListImagesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The <code>nextToken</code> value returned from a previous paginated\n                <code>ListImages</code> request where <code>maxResults</code> was used and the\n            results exceeded the value of that parameter. Pagination continues from the end of the\n            previous results that returned the <code>nextToken</code> value. This value is\n                <code>null</code> when there are no more results to return.</p>\n         <note>\n            <p>This token should be treated as an opaque identifier that is only used to\n                retrieve the next items in a list and not for other programmatic purposes.</p>\n         </note>"}))
    ListImagesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of image results returned by <code>ListImages</code> in paginated\n            output. When this parameter is used, <code>ListImages</code> only returns\n                <code>maxResults</code> results in a single page along with a <code>nextToken</code>\n            response element. The remaining results of the initial request can be seen by sending\n            another <code>ListImages</code> request with the returned <code>nextToken</code> value.\n            This value can be between 1 and 1000. If this parameter is\n            not used, then <code>ListImages</code> returns up to 100 results and a\n                <code>nextToken</code> value, if applicable.</p>"}))
    ListImagesRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ListImagesFilter, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>The filter key and value with which to filter your <code>ListImages</code>\n            results.</p>"}))
    ListImagesRequest.type = Types::ListImagesRequest
    ListImagesResponse.add_member(:image_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageIdentifierList, location_name: 'imageIds', traits: {"smithy.api#documentation" => "<p>The list of image IDs for the requested repository.</p>"}))
    ListImagesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The <code>nextToken</code> value to include in a future <code>ListImages</code>\n            request. When the results of a <code>ListImages</code> request exceed\n                <code>maxResults</code>, this value can be used to retrieve the next page of\n            results. This value is <code>null</code> when there are no more results to\n            return.</p>"}))
    ListImagesResponse.type = Types::ListImagesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. Currently, the\n            only supported resource is an Amazon ECR repository.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags for the resource.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MediaTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MediaType)
    PackageVulnerabilityDetails.add_member(:cvss, Smithy::Schema::Shapes::ShapeRef.new(shape: CvssScoreList, location_name: 'cvss', traits: {"smithy.api#documentation" => "<p>An object that contains details about the CVSS score of a finding.</p>"}))
    PackageVulnerabilityDetails.add_member(:reference_urls, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceUrlsList, location_name: 'referenceUrls', traits: {"smithy.api#documentation" => "<p>One or more URLs that contain details about this vulnerability type.</p>"}))
    PackageVulnerabilityDetails.add_member(:related_vulnerabilities, Smithy::Schema::Shapes::ShapeRef.new(shape: RelatedVulnerabilitiesList, location_name: 'relatedVulnerabilities', traits: {"smithy.api#documentation" => "<p>One or more vulnerabilities related to the one identified in this finding.</p>"}))
    PackageVulnerabilityDetails.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The source of the vulnerability information.</p>"}))
    PackageVulnerabilityDetails.add_member(:source_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'sourceUrl', traits: {"smithy.api#documentation" => "<p>A URL to the source of the vulnerability information.</p>"}))
    PackageVulnerabilityDetails.add_member(:vendor_created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'vendorCreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that this vulnerability was first added to the vendor's\n            database.</p>"}))
    PackageVulnerabilityDetails.add_member(:vendor_severity, Smithy::Schema::Shapes::ShapeRef.new(shape: Severity, location_name: 'vendorSeverity', traits: {"smithy.api#documentation" => "<p>The severity the vendor has given to this vulnerability type.</p>"}))
    PackageVulnerabilityDetails.add_member(:vendor_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'vendorUpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time the vendor last updated this vulnerability in their database.</p>"}))
    PackageVulnerabilityDetails.add_member(:vulnerability_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VulnerabilityId, location_name: 'vulnerabilityId', traits: {"smithy.api#documentation" => "<p>The ID given to this vulnerability.</p>"}))
    PackageVulnerabilityDetails.add_member(:vulnerable_packages, Smithy::Schema::Shapes::ShapeRef.new(shape: VulnerablePackagesList, location_name: 'vulnerablePackages', traits: {"smithy.api#documentation" => "<p>The packages impacted by this vulnerability.</p>"}))
    PackageVulnerabilityDetails.type = Types::PackageVulnerabilityDetails
    PrefixList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Prefix)
    PullThroughCacheRule.add_member(:ecr_repository_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleRepositoryPrefix, location_name: 'ecrRepositoryPrefix', traits: {"smithy.api#documentation" => "<p>The Amazon ECR repository prefix associated with the pull through cache rule.</p>"}))
    PullThroughCacheRule.add_member(:upstream_registry_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'upstreamRegistryUrl', traits: {"smithy.api#documentation" => "<p>The upstream registry URL associated with the pull through cache rule.</p>"}))
    PullThroughCacheRule.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTimestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time the pull through cache was created.</p>"}))
    PullThroughCacheRule.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the registry the pull through cache rule is\n            associated with.</p>"}))
    PullThroughCacheRule.add_member(:credential_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialArn, location_name: 'credentialArn', traits: {"smithy.api#documentation" => "<p>The ARN of the Secrets Manager secret associated with the pull through cache rule.</p>"}))
    PullThroughCacheRule.add_member(:custom_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoleArn, location_name: 'customRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role associated with the pull through cache rule.</p>"}))
    PullThroughCacheRule.add_member(:upstream_repository_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleRepositoryPrefix, location_name: 'upstreamRepositoryPrefix', traits: {"smithy.api#documentation" => "<p>The upstream repository prefix associated with the pull through cache rule.</p>"}))
    PullThroughCacheRule.add_member(:upstream_registry, Smithy::Schema::Shapes::ShapeRef.new(shape: UpstreamRegistry, location_name: 'upstreamRegistry', traits: {"smithy.api#documentation" => "<p>The name of the upstream source registry associated with the pull through cache\n            rule.</p>"}))
    PullThroughCacheRule.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedTimestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time, in JavaScript date format, when the pull through cache rule was\n            last updated.</p>"}))
    PullThroughCacheRule.type = Types::PullThroughCacheRule
    PullThroughCacheRuleAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    PullThroughCacheRuleAlreadyExistsException.type = Types::PullThroughCacheRuleAlreadyExistsException
    PullThroughCacheRuleList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRule)
    PullThroughCacheRuleNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    PullThroughCacheRuleNotFoundException.type = Types::PullThroughCacheRuleNotFoundException
    PullThroughCacheRuleRepositoryPrefixList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleRepositoryPrefix)
    PutAccountSettingRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSettingName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the account setting, such as <code>BASIC_SCAN_TYPE_VERSION</code> or\n                <code>REGISTRY_POLICY_SCOPE</code>. </p>", "smithy.api#required" => {}}))
    PutAccountSettingRequest.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSettingValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>Setting value that is specified. The following are valid values for the basic scan\n            type being used: <code>AWS_NATIVE</code> or <code>CLAIR</code>. The following are valid\n            values for the registry policy scope being used: <code>V1</code> or\n            <code>V2</code>.</p>", "smithy.api#required" => {}}))
    PutAccountSettingRequest.type = Types::PutAccountSettingRequest
    PutAccountSettingResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSettingName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Retrieves the name of the account setting.</p>"}))
    PutAccountSettingResponse.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSettingValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>Retrieves the value of the specified account setting.</p>"}))
    PutAccountSettingResponse.type = Types::PutAccountSettingResponse
    PutImageRequest.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the registry that contains the repository in\n            which to put the image. If you do not specify a registry, the default registry is assumed.</p>"}))
    PutImageRequest.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository in which to put the image.</p>", "smithy.api#required" => {}}))
    PutImageRequest.add_member(:image_manifest, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageManifest, location_name: 'imageManifest', traits: {"smithy.api#documentation" => "<p>The image manifest corresponding to the image to be uploaded.</p>", "smithy.api#required" => {}}))
    PutImageRequest.add_member(:image_manifest_media_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaType, location_name: 'imageManifestMediaType', traits: {"smithy.api#documentation" => "<p>The media type of the image manifest. If you push an image manifest that does not\n            contain the <code>mediaType</code> field, you must specify the\n                <code>imageManifestMediaType</code> in the request.</p>"}))
    PutImageRequest.add_member(:image_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTag, location_name: 'imageTag', traits: {"smithy.api#documentation" => "<p>The tag to associate with the image. This parameter is required for images that use\n            the Docker Image Manifest V2 Schema 2 or Open Container Initiative (OCI) formats.</p>"}))
    PutImageRequest.add_member(:image_digest, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageDigest, location_name: 'imageDigest', traits: {"smithy.api#documentation" => "<p>The image digest of the image manifest corresponding to the image.</p>"}))
    PutImageRequest.type = Types::PutImageRequest
    PutImageResponse.add_member(:image, Smithy::Schema::Shapes::ShapeRef.new(shape: Image, location_name: 'image', traits: {"smithy.api#documentation" => "<p>Details of the image uploaded.</p>"}))
    PutImageResponse.type = Types::PutImageResponse
    PutImageScanningConfigurationRequest.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the registry that contains the repository in\n            which to update the image scanning configuration setting.\n            If you do not specify a registry, the default registry is assumed.</p>"}))
    PutImageScanningConfigurationRequest.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository in which to update the image scanning configuration\n            setting.</p>", "smithy.api#required" => {}}))
    PutImageScanningConfigurationRequest.add_member(:image_scanning_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageScanningConfiguration, location_name: 'imageScanningConfiguration', traits: {"smithy.api#documentation" => "<p>The image scanning configuration for the repository. This setting determines whether\n            images are scanned for known vulnerabilities after being pushed to the\n            repository.</p>", "smithy.api#required" => {}}))
    PutImageScanningConfigurationRequest.type = Types::PutImageScanningConfigurationRequest
    PutImageScanningConfigurationResponse.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The registry ID associated with the request.</p>"}))
    PutImageScanningConfigurationResponse.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The repository name associated with the request.</p>"}))
    PutImageScanningConfigurationResponse.add_member(:image_scanning_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageScanningConfiguration, location_name: 'imageScanningConfiguration', traits: {"smithy.api#documentation" => "<p>The image scanning configuration setting for the repository.</p>"}))
    PutImageScanningConfigurationResponse.type = Types::PutImageScanningConfigurationResponse
    PutImageTagMutabilityRequest.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the registry that contains the repository in\n            which to update the image tag mutability settings. If you do not specify a registry, the default registry is assumed.</p>"}))
    PutImageTagMutabilityRequest.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository in which to update the image tag mutability\n            settings.</p>", "smithy.api#required" => {}}))
    PutImageTagMutabilityRequest.add_member(:image_tag_mutability, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagMutability, location_name: 'imageTagMutability', traits: {"smithy.api#documentation" => "<p>The tag mutability setting for the repository. If <code>MUTABLE</code> is specified,\n            image tags can be overwritten. If <code>IMMUTABLE</code> is specified, all image tags\n            within the repository will be immutable which will prevent them from being\n            overwritten.</p>", "smithy.api#required" => {}}))
    PutImageTagMutabilityRequest.add_member(:image_tag_mutability_exclusion_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagMutabilityExclusionFilters, location_name: 'imageTagMutabilityExclusionFilters', traits: {"smithy.api#documentation" => "<p>Creates or updates a repository with filters that define which image tags can override the default image tag mutability setting.</p>"}))
    PutImageTagMutabilityRequest.type = Types::PutImageTagMutabilityRequest
    PutImageTagMutabilityResponse.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The registry ID associated with the request.</p>"}))
    PutImageTagMutabilityResponse.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The repository name associated with the request.</p>"}))
    PutImageTagMutabilityResponse.add_member(:image_tag_mutability, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagMutability, location_name: 'imageTagMutability', traits: {"smithy.api#documentation" => "<p>The image tag mutability setting for the repository.</p>"}))
    PutImageTagMutabilityResponse.add_member(:image_tag_mutability_exclusion_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagMutabilityExclusionFilters, location_name: 'imageTagMutabilityExclusionFilters', traits: {"smithy.api#documentation" => "<p>Returns a list of filters that were defined for a repository. These filters determine which image tags can override the default image tag mutability setting of the repository.</p>"}))
    PutImageTagMutabilityResponse.type = Types::PutImageTagMutabilityResponse
    PutLifecyclePolicyRequest.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the registry that contains the repository. If you\n            do\u2028 not specify a registry, the default registry is assumed.</p>"}))
    PutLifecyclePolicyRequest.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository to receive the policy.</p>", "smithy.api#required" => {}}))
    PutLifecyclePolicyRequest.add_member(:lifecycle_policy_text, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyText, location_name: 'lifecyclePolicyText', traits: {"smithy.api#documentation" => "<p>The JSON repository policy text to apply to the repository.</p>", "smithy.api#required" => {}}))
    PutLifecyclePolicyRequest.type = Types::PutLifecyclePolicyRequest
    PutLifecyclePolicyResponse.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The registry ID associated with the request.</p>"}))
    PutLifecyclePolicyResponse.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The repository name associated with the request.</p>"}))
    PutLifecyclePolicyResponse.add_member(:lifecycle_policy_text, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyText, location_name: 'lifecyclePolicyText', traits: {"smithy.api#documentation" => "<p>The JSON repository policy text.</p>"}))
    PutLifecyclePolicyResponse.type = Types::PutLifecyclePolicyResponse
    PutRegistryPolicyRequest.add_member(:policy_text, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryPolicyText, location_name: 'policyText', traits: {"smithy.api#documentation" => "<p>The JSON policy text to apply to your registry. The policy text follows the same\n            format as IAM policy text. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECR/latest/userguide/registry-permissions.html\">Registry\n                permissions</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>", "smithy.api#required" => {}}))
    PutRegistryPolicyRequest.type = Types::PutRegistryPolicyRequest
    PutRegistryPolicyResponse.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The registry ID associated with the request.</p>"}))
    PutRegistryPolicyResponse.add_member(:policy_text, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryPolicyText, location_name: 'policyText', traits: {"smithy.api#documentation" => "<p>The JSON policy text for your registry.</p>"}))
    PutRegistryPolicyResponse.type = Types::PutRegistryPolicyResponse
    PutRegistryScanningConfigurationRequest.add_member(:scan_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanType, location_name: 'scanType', traits: {"smithy.api#documentation" => "<p>The scanning type to set for the registry.</p>\n         <p>When a registry scanning configuration is not defined, by default the\n                <code>BASIC</code> scan type is used. When basic scanning is used, you may specify\n            filters to determine which individual repositories, or all repositories, are scanned\n            when new images are pushed to those repositories. Alternatively, you can do manual scans\n            of images with basic scanning.</p>\n         <p>When the <code>ENHANCED</code> scan type is set, Amazon Inspector provides automated\n            vulnerability scanning. You may choose between continuous scanning or scan on push and\n            you may specify filters to determine which individual repositories, or all repositories,\n            are scanned.</p>"}))
    PutRegistryScanningConfigurationRequest.add_member(:rules, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryScanningRuleList, location_name: 'rules', traits: {"smithy.api#documentation" => "<p>The scanning rules to use for the registry. A scanning rule is used to determine which\n            repository filters are used and at what frequency scanning will occur.</p>"}))
    PutRegistryScanningConfigurationRequest.type = Types::PutRegistryScanningConfigurationRequest
    PutRegistryScanningConfigurationResponse.add_member(:registry_scanning_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryScanningConfiguration, location_name: 'registryScanningConfiguration', traits: {"smithy.api#documentation" => "<p>The scanning configuration for your registry.</p>"}))
    PutRegistryScanningConfigurationResponse.type = Types::PutRegistryScanningConfigurationResponse
    PutReplicationConfigurationRequest.add_member(:replication_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfiguration, location_name: 'replicationConfiguration', traits: {"smithy.api#documentation" => "<p>An object representing the replication configuration for a registry.</p>", "smithy.api#required" => {}}))
    PutReplicationConfigurationRequest.type = Types::PutReplicationConfigurationRequest
    PutReplicationConfigurationResponse.add_member(:replication_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfiguration, location_name: 'replicationConfiguration', traits: {"smithy.api#documentation" => "<p>The contents of the replication configuration for the registry.</p>"}))
    PutReplicationConfigurationResponse.type = Types::PutReplicationConfigurationResponse
    RCTAppliedFor.add_member(:replication, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REPLICATION', traits: {"smithy.api#enumValue" => "REPLICATION"}))
    RCTAppliedFor.add_member(:pull_through_cache, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PULL_THROUGH_CACHE', traits: {"smithy.api#enumValue" => "PULL_THROUGH_CACHE"}))
    RCTAppliedForList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RCTAppliedFor)
    Recommendation.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'url', traits: {"smithy.api#documentation" => "<p>The URL address to the CVE remediation recommendations.</p>"}))
    Recommendation.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationText, location_name: 'text', traits: {"smithy.api#documentation" => "<p>The recommended course of action to remediate the finding.</p>"}))
    Recommendation.type = Types::Recommendation
    ReferenceUrlsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Url)
    ReferencedImagesNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ReferencedImagesNotFoundException.type = Types::ReferencedImagesNotFoundException
    RegistryPolicyNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    RegistryPolicyNotFoundException.type = Types::RegistryPolicyNotFoundException
    RegistryScanningConfiguration.add_member(:scan_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanType, location_name: 'scanType', traits: {"smithy.api#documentation" => "<p>The type of scanning configured for the registry.</p>"}))
    RegistryScanningConfiguration.add_member(:rules, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryScanningRuleList, location_name: 'rules', traits: {"smithy.api#documentation" => "<p>The scanning rules associated with the registry.</p>"}))
    RegistryScanningConfiguration.type = Types::RegistryScanningConfiguration
    RegistryScanningRule.add_member(:scan_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanFrequency, location_name: 'scanFrequency', traits: {"smithy.api#documentation" => "<p>The frequency that scans are performed at for a private registry. When the\n                <code>ENHANCED</code> scan type is specified, the supported scan frequencies are\n                <code>CONTINUOUS_SCAN</code> and <code>SCAN_ON_PUSH</code>. When the\n                <code>BASIC</code> scan type is specified, the <code>SCAN_ON_PUSH</code> scan\n            frequency is supported. If scan on push is not specified, then the <code>MANUAL</code>\n            scan frequency is set by default.</p>", "smithy.api#required" => {}}))
    RegistryScanningRule.add_member(:repository_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanningRepositoryFilterList, location_name: 'repositoryFilters', traits: {"smithy.api#documentation" => "<p>The repository filters associated with the scanning configuration for a private\n            registry.</p>", "smithy.api#required" => {}}))
    RegistryScanningRule.type = Types::RegistryScanningRule
    RegistryScanningRuleList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryScanningRule)
    RelatedVulnerabilitiesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RelatedVulnerability)
    Remediation.add_member(:recommendation, Smithy::Schema::Shapes::ShapeRef.new(shape: Recommendation, location_name: 'recommendation', traits: {"smithy.api#documentation" => "<p>An object that contains information about the recommended course of action to\n            remediate the finding.</p>"}))
    Remediation.type = Types::Remediation
    ReplicationConfiguration.add_member(:rules, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationRuleList, location_name: 'rules', traits: {"smithy.api#documentation" => "<p>An array of objects representing the replication destinations and repository filters\n            for a replication configuration.</p>", "smithy.api#required" => {}}))
    ReplicationConfiguration.type = Types::ReplicationConfiguration
    ReplicationDestination.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region', traits: {"smithy.api#documentation" => "<p>The Region to replicate to.</p>", "smithy.api#required" => {}}))
    ReplicationDestination.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the Amazon ECR private registry to replicate to. When configuring\n            cross-Region replication within your own registry, specify your own account ID.</p>", "smithy.api#required" => {}}))
    ReplicationDestination.type = Types::ReplicationDestination
    ReplicationDestinationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationDestination)
    ReplicationRule.add_member(:destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationDestinationList, location_name: 'destinations', traits: {"smithy.api#documentation" => "<p>An array of objects representing the destination for a replication rule.</p>", "smithy.api#required" => {}}))
    ReplicationRule.add_member(:repository_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryFilterList, location_name: 'repositoryFilters', traits: {"smithy.api#documentation" => "<p>An array of objects representing the filters for a replication rule. Specifying a\n            repository filter for a replication rule provides a method for controlling which\n            repositories in a private registry are replicated.</p>"}))
    ReplicationRule.type = Types::ReplicationRule
    ReplicationRuleList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationRule)
    ReplicationStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ReplicationStatus.add_member(:complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETE', traits: {"smithy.api#enumValue" => "COMPLETE"}))
    ReplicationStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    Repository.add_member(:repository_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'repositoryArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the repository. The ARN contains the <code>arn:aws:ecr</code> namespace, followed by the region of the\n    repository, Amazon Web Services account ID of the repository owner, repository namespace, and repository name.\n    For example, <code>arn:aws:ecr:region:012345678910:repository-namespace/repository-name</code>.</p>"}))
    Repository.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the registry that contains the repository.</p>"}))
    Repository.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository.</p>"}))
    Repository.add_member(:repository_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'repositoryUri', traits: {"smithy.api#documentation" => "<p>The URI for the repository. You can use this URI for container image <code>push</code>\n            and <code>pull</code> operations.</p>"}))
    Repository.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTimestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time, in JavaScript date format, when the repository was created.</p>"}))
    Repository.add_member(:image_tag_mutability, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagMutability, location_name: 'imageTagMutability', traits: {"smithy.api#documentation" => "<p>The tag mutability setting for the repository.</p>"}))
    Repository.add_member(:image_tag_mutability_exclusion_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagMutabilityExclusionFilters, location_name: 'imageTagMutabilityExclusionFilters', traits: {"smithy.api#documentation" => "<p>The image tag mutability exclusion filters associated with the repository. These filters specify which image tags can override the repository's default image tag mutability setting.</p>"}))
    Repository.add_member(:image_scanning_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageScanningConfiguration, location_name: 'imageScanningConfiguration'))
    Repository.add_member(:encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: 'encryptionConfiguration', traits: {"smithy.api#documentation" => "<p>The encryption configuration for the repository. This determines how the contents of\n            your repository are encrypted at rest.</p>"}))
    Repository.type = Types::Repository
    RepositoryAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The error message associated with the exception.</p>"}))
    RepositoryAlreadyExistsException.type = Types::RepositoryAlreadyExistsException
    RepositoryCreationTemplate.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: Prefix, location_name: 'prefix', traits: {"smithy.api#documentation" => "<p>The repository namespace prefix associated with the repository creation\n            template.</p>"}))
    RepositoryCreationTemplate.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryTemplateDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description associated with the repository creation template.</p>"}))
    RepositoryCreationTemplate.add_member(:encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfigurationForRepositoryCreationTemplate, location_name: 'encryptionConfiguration', traits: {"smithy.api#documentation" => "<p>The encryption configuration associated with the repository creation template.</p>"}))
    RepositoryCreationTemplate.add_member(:resource_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'resourceTags', traits: {"smithy.api#documentation" => "<p>The metadata to apply to the repository to help you categorize and organize. Each tag\n            consists of a key and an optional value, both of which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have\n            a maximum length of 256 characters.</p>"}))
    RepositoryCreationTemplate.add_member(:image_tag_mutability, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagMutability, location_name: 'imageTagMutability', traits: {"smithy.api#documentation" => "<p>The tag mutability setting for the repository. If this parameter is omitted, the\n            default setting of <code>MUTABLE</code> will be used which will allow image tags to be overwritten.\n            If <code>IMMUTABLE</code> is specified, all image tags within the repository will be immutable which\n            will prevent them from being overwritten.</p>"}))
    RepositoryCreationTemplate.add_member(:image_tag_mutability_exclusion_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagMutabilityExclusionFilters, location_name: 'imageTagMutabilityExclusionFilters', traits: {"smithy.api#documentation" => "<p>Defines the image tag mutability exclusion filters to apply when creating repositories from this template. These filters specify which image tags can override the repository's default image tag mutability setting.</p>"}))
    RepositoryCreationTemplate.add_member(:repository_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryPolicyText, location_name: 'repositoryPolicy', traits: {"smithy.api#documentation" => "<p>The repository policy to apply to repositories created using the template. A\n            repository policy is a permissions policy associated with a repository to control access\n            permissions. </p>"}))
    RepositoryCreationTemplate.add_member(:lifecycle_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyTextForRepositoryCreationTemplate, location_name: 'lifecyclePolicy', traits: {"smithy.api#documentation" => "<p>The lifecycle policy to use for repositories created using the template.</p>"}))
    RepositoryCreationTemplate.add_member(:applied_for, Smithy::Schema::Shapes::ShapeRef.new(shape: RCTAppliedForList, location_name: 'appliedFor', traits: {"smithy.api#documentation" => "<p>A list of enumerable Strings representing the repository creation scenarios that this\n            template will apply towards. The two supported scenarios are PULL_THROUGH_CACHE and\n            REPLICATION</p>"}))
    RepositoryCreationTemplate.add_member(:custom_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoleArn, location_name: 'customRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the role to be assumed by Amazon ECR. Amazon ECR will assume your supplied role\n            when the customRoleArn is specified. When this field isn't specified, Amazon ECR will use the\n            service-linked role for the repository creation template.</p>"}))
    RepositoryCreationTemplate.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time, in JavaScript date format, when the repository creation template\n            was created.</p>"}))
    RepositoryCreationTemplate.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time, in JavaScript date format, when the repository creation template\n            was last updated.</p>"}))
    RepositoryCreationTemplate.type = Types::RepositoryCreationTemplate
    RepositoryCreationTemplateList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryCreationTemplate)
    RepositoryFilter.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryFilterValue, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>The repository filter details. When the <code>PREFIX_MATCH</code> filter type is\n            specified, this value is required and should be the repository name prefix to configure\n            replication for.</p>", "smithy.api#required" => {}}))
    RepositoryFilter.add_member(:filter_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryFilterType, location_name: 'filterType', traits: {"smithy.api#documentation" => "<p>The repository filter type. The only supported value is <code>PREFIX_MATCH</code>,\n            which is a repository name prefix specified with the <code>filter</code>\n            parameter.</p>", "smithy.api#required" => {}}))
    RepositoryFilter.type = Types::RepositoryFilter
    RepositoryFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryFilter)
    RepositoryFilterType.add_member(:prefix_match, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PREFIX_MATCH', traits: {"smithy.api#enumValue" => "PREFIX_MATCH"}))
    RepositoryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Repository)
    RepositoryNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName)
    RepositoryNotEmptyException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The error message associated with the exception.</p>"}))
    RepositoryNotEmptyException.type = Types::RepositoryNotEmptyException
    RepositoryNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The error message associated with the exception.</p>"}))
    RepositoryNotFoundException.type = Types::RepositoryNotFoundException
    RepositoryPolicyNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The error message associated with the exception.</p>"}))
    RepositoryPolicyNotFoundException.type = Types::RepositoryPolicyNotFoundException
    RepositoryScanningConfiguration.add_member(:repository_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'repositoryArn', traits: {"smithy.api#documentation" => "<p>The ARN of the repository.</p>"}))
    RepositoryScanningConfiguration.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository.</p>"}))
    RepositoryScanningConfiguration.add_member(:scan_on_push, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanOnPushFlag, location_name: 'scanOnPush', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether or not scan on push is configured for the repository.</p>"}))
    RepositoryScanningConfiguration.add_member(:scan_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanFrequency, location_name: 'scanFrequency', traits: {"smithy.api#documentation" => "<p>The scan frequency for the repository.</p>"}))
    RepositoryScanningConfiguration.add_member(:applied_scan_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanningRepositoryFilterList, location_name: 'appliedScanFilters', traits: {"smithy.api#documentation" => "<p>The scan filters applied to the repository.</p>"}))
    RepositoryScanningConfiguration.type = Types::RepositoryScanningConfiguration
    RepositoryScanningConfigurationFailure.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository.</p>"}))
    RepositoryScanningConfigurationFailure.add_member(:failure_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanningConfigurationFailureCode, location_name: 'failureCode', traits: {"smithy.api#documentation" => "<p>The failure code.</p>"}))
    RepositoryScanningConfigurationFailure.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanningConfigurationFailureReason, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>The reason for the failure.</p>"}))
    RepositoryScanningConfigurationFailure.type = Types::RepositoryScanningConfigurationFailure
    RepositoryScanningConfigurationFailureList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryScanningConfigurationFailure)
    RepositoryScanningConfigurationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryScanningConfiguration)
    Resource.add_member(:details, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDetails, location_name: 'details', traits: {"smithy.api#documentation" => "<p>An object that contains details about the resource involved in a finding.</p>"}))
    Resource.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the resource.</p>"}))
    Resource.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags attached to the resource.</p>"}))
    Resource.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of resource.</p>"}))
    Resource.type = Types::Resource
    ResourceDetails.add_member(:aws_ecr_container_image, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsEcrContainerImageDetails, location_name: 'awsEcrContainerImage', traits: {"smithy.api#documentation" => "<p>An object that contains details about the Amazon ECR container image involved in the\n            finding.</p>"}))
    ResourceDetails.type = Types::ResourceDetails
    ResourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Resource)
    ScanFrequency.add_member(:scan_on_push, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCAN_ON_PUSH', traits: {"smithy.api#enumValue" => "SCAN_ON_PUSH"}))
    ScanFrequency.add_member(:continuous_scan, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTINUOUS_SCAN', traits: {"smithy.api#enumValue" => "CONTINUOUS_SCAN"}))
    ScanFrequency.add_member(:manual, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANUAL', traits: {"smithy.api#enumValue" => "MANUAL"}))
    ScanNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ScanNotFoundException.type = Types::ScanNotFoundException
    ScanStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ScanStatus.add_member(:complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETE', traits: {"smithy.api#enumValue" => "COMPLETE"}))
    ScanStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ScanStatus.add_member(:unsupported_image, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSUPPORTED_IMAGE', traits: {"smithy.api#enumValue" => "UNSUPPORTED_IMAGE"}))
    ScanStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ScanStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    ScanStatus.add_member(:scan_eligibility_expired, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCAN_ELIGIBILITY_EXPIRED', traits: {"smithy.api#enumValue" => "SCAN_ELIGIBILITY_EXPIRED"}))
    ScanStatus.add_member(:findings_unavailable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FINDINGS_UNAVAILABLE', traits: {"smithy.api#enumValue" => "FINDINGS_UNAVAILABLE"}))
    ScanStatus.add_member(:limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "LIMIT_EXCEEDED"}))
    ScanType.add_member(:basic, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BASIC', traits: {"smithy.api#enumValue" => "BASIC"}))
    ScanType.add_member(:enhanced, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENHANCED', traits: {"smithy.api#enumValue" => "ENHANCED"}))
    ScanningConfigurationFailureCode.add_member(:repository_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REPOSITORY_NOT_FOUND', traits: {"smithy.api#enumValue" => "REPOSITORY_NOT_FOUND"}))
    ScanningConfigurationRepositoryNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName)
    ScanningRepositoryFilter.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanningRepositoryFilterValue, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>The filter to use when scanning.</p>", "smithy.api#required" => {}}))
    ScanningRepositoryFilter.add_member(:filter_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanningRepositoryFilterType, location_name: 'filterType', traits: {"smithy.api#documentation" => "<p>The type associated with the filter.</p>", "smithy.api#required" => {}}))
    ScanningRepositoryFilter.type = Types::ScanningRepositoryFilter
    ScanningRepositoryFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ScanningRepositoryFilter)
    ScanningRepositoryFilterType.add_member(:wildcard, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WILDCARD', traits: {"smithy.api#enumValue" => "WILDCARD"}))
    ScoreDetails.add_member(:cvss, Smithy::Schema::Shapes::ShapeRef.new(shape: CvssScoreDetails, location_name: 'cvss', traits: {"smithy.api#documentation" => "<p>An object that contains details about the CVSS score given to a finding.</p>"}))
    ScoreDetails.type = Types::ScoreDetails
    SecretNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SecretNotFoundException.type = Types::SecretNotFoundException
    ServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The error message associated with the exception.</p>"}))
    ServerException.type = Types::ServerException
    SetRepositoryPolicyRequest.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the registry that contains the repository.\n            If you do not specify a registry, the default registry is assumed.</p>"}))
    SetRepositoryPolicyRequest.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository to receive the policy.</p>", "smithy.api#required" => {}}))
    SetRepositoryPolicyRequest.add_member(:policy_text, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryPolicyText, location_name: 'policyText', traits: {"smithy.api#documentation" => "<p>The JSON repository policy text to apply to the repository. For more information, see\n                <a href=\"https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policy-examples.html\">Amazon ECR repository\n                policies</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>", "smithy.api#required" => {}}))
    SetRepositoryPolicyRequest.add_member(:force, Smithy::Schema::Shapes::ShapeRef.new(shape: ForceFlag, location_name: 'force', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If the policy you are attempting to set on a repository policy would prevent you from\n            setting another policy in the future, you must force the <a>SetRepositoryPolicy</a> operation. This is intended to prevent accidental\n            repository lock outs.</p>"}))
    SetRepositoryPolicyRequest.type = Types::SetRepositoryPolicyRequest
    SetRepositoryPolicyResponse.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The registry ID associated with the request.</p>"}))
    SetRepositoryPolicyResponse.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The repository name associated with the request.</p>"}))
    SetRepositoryPolicyResponse.add_member(:policy_text, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryPolicyText, location_name: 'policyText', traits: {"smithy.api#documentation" => "<p>The JSON repository policy text applied to the repository.</p>"}))
    SetRepositoryPolicyResponse.type = Types::SetRepositoryPolicyResponse
    StartImageScanRequest.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the registry that contains the repository in\n            which to start an image scan request. If you do not specify a registry, the default registry is assumed.</p>"}))
    StartImageScanRequest.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository that contains the images to scan.</p>", "smithy.api#required" => {}}))
    StartImageScanRequest.add_member(:image_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageIdentifier, location_name: 'imageId', traits: {"smithy.api#required" => {}}))
    StartImageScanRequest.type = Types::StartImageScanRequest
    StartImageScanResponse.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The registry ID associated with the request.</p>"}))
    StartImageScanResponse.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The repository name associated with the request.</p>"}))
    StartImageScanResponse.add_member(:image_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageIdentifier, location_name: 'imageId'))
    StartImageScanResponse.add_member(:image_scan_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageScanStatus, location_name: 'imageScanStatus', traits: {"smithy.api#documentation" => "<p>The current state of the scan.</p>"}))
    StartImageScanResponse.type = Types::StartImageScanResponse
    StartLifecyclePolicyPreviewRequest.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the registry that contains the repository.\n            If you do not specify a registry, the default registry is assumed.</p>"}))
    StartLifecyclePolicyPreviewRequest.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository to be evaluated.</p>", "smithy.api#required" => {}}))
    StartLifecyclePolicyPreviewRequest.add_member(:lifecycle_policy_text, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyText, location_name: 'lifecyclePolicyText', traits: {"smithy.api#documentation" => "<p>The policy to be evaluated against. If you do not specify a policy, the current policy\n            for the repository is used.</p>"}))
    StartLifecyclePolicyPreviewRequest.type = Types::StartLifecyclePolicyPreviewRequest
    StartLifecyclePolicyPreviewResponse.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The registry ID associated with the request.</p>"}))
    StartLifecyclePolicyPreviewResponse.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The repository name associated with the request.</p>"}))
    StartLifecyclePolicyPreviewResponse.add_member(:lifecycle_policy_text, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyText, location_name: 'lifecyclePolicyText', traits: {"smithy.api#documentation" => "<p>The JSON repository policy text.</p>"}))
    StartLifecyclePolicyPreviewResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyPreviewStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the lifecycle policy preview request.</p>"}))
    StartLifecyclePolicyPreviewResponse.type = Types::StartLifecyclePolicyPreviewResponse
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>One part of a key-value pair that make up a tag. A <code>key</code> is a general label\n            that acts like a category for more specific tag values.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>A <code>value</code> acts as a descriptor within a tag category (key).</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the the resource to which to add tags. Currently, the only supported\n            resource is an Amazon ECR repository.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags to add to the resource. A tag is an array of key-value pairs.\n            Tag keys can have a maximum character length of 128 characters, and tag values can have\n            a maximum length of 256 characters.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TagStatus.add_member(:tagged, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TAGGED', traits: {"smithy.api#enumValue" => "TAGGED"}))
    TagStatus.add_member(:untagged, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNTAGGED', traits: {"smithy.api#enumValue" => "UNTAGGED"}))
    TagStatus.add_member(:any, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANY', traits: {"smithy.api#enumValue" => "ANY"}))
    Tags.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TemplateAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    TemplateAlreadyExistsException.type = Types::TemplateAlreadyExistsException
    TemplateNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    TemplateNotFoundException.type = Types::TemplateNotFoundException
    TooManyTagsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    TooManyTagsException.type = Types::TooManyTagsException
    UnableToAccessSecretException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    UnableToAccessSecretException.type = Types::UnableToAccessSecretException
    UnableToDecryptSecretValueException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    UnableToDecryptSecretValueException.type = Types::UnableToDecryptSecretValueException
    UnableToGetUpstreamImageException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    UnableToGetUpstreamImageException.type = Types::UnableToGetUpstreamImageException
    UnableToGetUpstreamLayerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    UnableToGetUpstreamLayerException.type = Types::UnableToGetUpstreamLayerException
    UnsupportedImageTypeException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    UnsupportedImageTypeException.type = Types::UnsupportedImageTypeException
    UnsupportedUpstreamRegistryException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    UnsupportedUpstreamRegistryException.type = Types::UnsupportedUpstreamRegistryException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource from which to remove tags. Currently, the only supported\n            resource is an Amazon ECR repository.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>The keys of the tags to be removed.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdatePullThroughCacheRuleRequest.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the registry associated with the pull through\n            cache rule. If you do not specify a registry, the default registry is assumed.</p>"}))
    UpdatePullThroughCacheRuleRequest.add_member(:ecr_repository_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleRepositoryPrefix, location_name: 'ecrRepositoryPrefix', traits: {"smithy.api#documentation" => "<p>The repository name prefix to use when caching images from the source registry.</p>", "smithy.api#required" => {}}))
    UpdatePullThroughCacheRuleRequest.add_member(:credential_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialArn, location_name: 'credentialArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Web Services Secrets Manager secret that identifies the credentials to authenticate\n            to the upstream registry.</p>"}))
    UpdatePullThroughCacheRuleRequest.add_member(:custom_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoleArn, location_name: 'customRoleArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the IAM role to be assumed by Amazon ECR to authenticate to the\n            ECR upstream registry. This role must be in the same account as the registry that you\n            are configuring.</p>"}))
    UpdatePullThroughCacheRuleRequest.type = Types::UpdatePullThroughCacheRuleRequest
    UpdatePullThroughCacheRuleResponse.add_member(:ecr_repository_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleRepositoryPrefix, location_name: 'ecrRepositoryPrefix', traits: {"smithy.api#documentation" => "<p>The Amazon ECR repository prefix associated with the pull through cache rule.</p>"}))
    UpdatePullThroughCacheRuleResponse.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The registry ID associated with the request.</p>"}))
    UpdatePullThroughCacheRuleResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedTimestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time, in JavaScript date format, when the pull through cache rule was\n            updated.</p>"}))
    UpdatePullThroughCacheRuleResponse.add_member(:credential_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialArn, location_name: 'credentialArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Web Services Secrets Manager secret associated with the pull through cache\n            rule.</p>"}))
    UpdatePullThroughCacheRuleResponse.add_member(:custom_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoleArn, location_name: 'customRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role associated with the pull through cache rule.</p>"}))
    UpdatePullThroughCacheRuleResponse.add_member(:upstream_repository_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleRepositoryPrefix, location_name: 'upstreamRepositoryPrefix', traits: {"smithy.api#documentation" => "<p>The upstream repository prefix associated with the pull through cache rule.</p>"}))
    UpdatePullThroughCacheRuleResponse.type = Types::UpdatePullThroughCacheRuleResponse
    UpdateRepositoryCreationTemplateRequest.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: Prefix, location_name: 'prefix', traits: {"smithy.api#documentation" => "<p>The repository namespace prefix that matches an existing repository creation template\n            in the registry. All repositories created using this namespace prefix will have the\n            settings defined in this template applied. For example, a prefix of <code>prod</code>\n            would apply to all repositories beginning with <code>prod/</code>. This includes a\n            repository named <code>prod/team1</code> as well as a repository named\n                <code>prod/repository1</code>.</p>\n         <p>To apply a template to all repositories in your registry that don't have an associated\n            creation template, you can use <code>ROOT</code> as the prefix.</p>", "smithy.api#required" => {}}))
    UpdateRepositoryCreationTemplateRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryTemplateDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for the repository creation template.</p>"}))
    UpdateRepositoryCreationTemplateRequest.add_member(:encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfigurationForRepositoryCreationTemplate, location_name: 'encryptionConfiguration'))
    UpdateRepositoryCreationTemplateRequest.add_member(:resource_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'resourceTags', traits: {"smithy.api#documentation" => "<p>The metadata to apply to the repository to help you categorize and organize. Each tag\n            consists of a key and an optional value, both of which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have\n            a maximum length of 256 characters.</p>"}))
    UpdateRepositoryCreationTemplateRequest.add_member(:image_tag_mutability, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagMutability, location_name: 'imageTagMutability', traits: {"smithy.api#documentation" => "<p>Updates the tag mutability setting for the repository. If this parameter is omitted,\n            the default setting of <code>MUTABLE</code> will be used which will allow image tags to\n            be overwritten. If <code>IMMUTABLE</code> is specified, all image tags within the\n            repository will be immutable which will prevent them from being overwritten.</p>"}))
    UpdateRepositoryCreationTemplateRequest.add_member(:image_tag_mutability_exclusion_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagMutabilityExclusionFilters, location_name: 'imageTagMutabilityExclusionFilters', traits: {"smithy.api#documentation" => "<p>Updates a repository with filters that define which image tags can override the default image tag mutability setting.</p>"}))
    UpdateRepositoryCreationTemplateRequest.add_member(:repository_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryPolicyText, location_name: 'repositoryPolicy', traits: {"smithy.api#documentation" => "<p>Updates the repository policy created using the template. A repository policy is a\n            permissions policy associated with a repository to control access permissions. </p>"}))
    UpdateRepositoryCreationTemplateRequest.add_member(:lifecycle_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyTextForRepositoryCreationTemplate, location_name: 'lifecyclePolicy', traits: {"smithy.api#documentation" => "<p>Updates the lifecycle policy associated with the specified repository creation\n            template.</p>"}))
    UpdateRepositoryCreationTemplateRequest.add_member(:applied_for, Smithy::Schema::Shapes::ShapeRef.new(shape: RCTAppliedForList, location_name: 'appliedFor', traits: {"smithy.api#documentation" => "<p>Updates the list of enumerable strings representing the Amazon ECR repository creation\n            scenarios that this template will apply towards. The two supported scenarios are\n                <code>PULL_THROUGH_CACHE</code> and <code>REPLICATION</code>\n         </p>"}))
    UpdateRepositoryCreationTemplateRequest.add_member(:custom_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoleArn, location_name: 'customRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the role to be assumed by Amazon ECR. This role must be in the same account as\n            the registry that you are configuring. Amazon ECR will assume your supplied role when the\n            customRoleArn is specified. When this field isn't specified, Amazon ECR will use the\n            service-linked role for the repository creation template.</p>"}))
    UpdateRepositoryCreationTemplateRequest.type = Types::UpdateRepositoryCreationTemplateRequest
    UpdateRepositoryCreationTemplateResponse.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The registry ID associated with the request.</p>"}))
    UpdateRepositoryCreationTemplateResponse.add_member(:repository_creation_template, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryCreationTemplate, location_name: 'repositoryCreationTemplate', traits: {"smithy.api#documentation" => "<p>The details of the repository creation template associated with the request.</p>"}))
    UpdateRepositoryCreationTemplateResponse.type = Types::UpdateRepositoryCreationTemplateResponse
    UploadLayerPartRequest.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the registry to which you are uploading layer\n            parts. If you do not specify a registry, the default registry is assumed.</p>"}))
    UploadLayerPartRequest.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository to which you are uploading layer parts.</p>", "smithy.api#required" => {}}))
    UploadLayerPartRequest.add_member(:upload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: 'uploadId', traits: {"smithy.api#documentation" => "<p>The upload ID from a previous <a>InitiateLayerUpload</a> operation to\n            associate with the layer part upload.</p>", "smithy.api#required" => {}}))
    UploadLayerPartRequest.add_member(:part_first_byte, Smithy::Schema::Shapes::ShapeRef.new(shape: PartSize, location_name: 'partFirstByte', traits: {"smithy.api#documentation" => "<p>The position of the first byte of the layer part witin the overall image layer.</p>", "smithy.api#required" => {}}))
    UploadLayerPartRequest.add_member(:part_last_byte, Smithy::Schema::Shapes::ShapeRef.new(shape: PartSize, location_name: 'partLastByte', traits: {"smithy.api#documentation" => "<p>The position of the last byte of the layer part within the overall image layer.</p>", "smithy.api#required" => {}}))
    UploadLayerPartRequest.add_member(:layer_part_blob, Smithy::Schema::Shapes::ShapeRef.new(shape: LayerPartBlob, location_name: 'layerPartBlob', traits: {"smithy.api#documentation" => "<p>The base64-encoded layer part payload.</p>", "smithy.api#required" => {}}))
    UploadLayerPartRequest.type = Types::UploadLayerPartRequest
    UploadLayerPartResponse.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The registry ID associated with the request.</p>"}))
    UploadLayerPartResponse.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The repository name associated with the request.</p>"}))
    UploadLayerPartResponse.add_member(:upload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: 'uploadId', traits: {"smithy.api#documentation" => "<p>The upload ID associated with the request.</p>"}))
    UploadLayerPartResponse.add_member(:last_byte_received, Smithy::Schema::Shapes::ShapeRef.new(shape: PartSize, location_name: 'lastByteReceived', traits: {"smithy.api#documentation" => "<p>The integer value of the last byte received in the request.</p>"}))
    UploadLayerPartResponse.type = Types::UploadLayerPartResponse
    UploadNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The error message associated with the exception.</p>"}))
    UploadNotFoundException.type = Types::UploadNotFoundException
    UpstreamRegistry.add_member(:ecr, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Ecr', traits: {"smithy.api#enumValue" => "ecr"}))
    UpstreamRegistry.add_member(:ecr_public, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EcrPublic', traits: {"smithy.api#enumValue" => "ecr-public"}))
    UpstreamRegistry.add_member(:quay, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Quay', traits: {"smithy.api#enumValue" => "quay"}))
    UpstreamRegistry.add_member(:k8s, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'K8s', traits: {"smithy.api#enumValue" => "k8s"}))
    UpstreamRegistry.add_member(:docker_hub, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DockerHub', traits: {"smithy.api#enumValue" => "docker-hub"}))
    UpstreamRegistry.add_member(:git_hub_container_registry, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GitHubContainerRegistry', traits: {"smithy.api#enumValue" => "github-container-registry"}))
    UpstreamRegistry.add_member(:azure_container_registry, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AzureContainerRegistry', traits: {"smithy.api#enumValue" => "azure-container-registry"}))
    UpstreamRegistry.add_member(:git_lab_container_registry, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GitLabContainerRegistry', traits: {"smithy.api#enumValue" => "gitlab-container-registry"}))
    ValidatePullThroughCacheRuleRequest.add_member(:ecr_repository_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleRepositoryPrefix, location_name: 'ecrRepositoryPrefix', traits: {"smithy.api#documentation" => "<p>The repository name prefix associated with the pull through cache rule.</p>", "smithy.api#required" => {}}))
    ValidatePullThroughCacheRuleRequest.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The registry ID associated with the pull through cache rule.\n            If you do not specify a registry, the default registry is assumed.</p>"}))
    ValidatePullThroughCacheRuleRequest.type = Types::ValidatePullThroughCacheRuleRequest
    ValidatePullThroughCacheRuleResponse.add_member(:ecr_repository_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleRepositoryPrefix, location_name: 'ecrRepositoryPrefix', traits: {"smithy.api#documentation" => "<p>The Amazon ECR repository prefix associated with the pull through cache rule.</p>"}))
    ValidatePullThroughCacheRuleResponse.add_member(:registry_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryId, location_name: 'registryId', traits: {"smithy.api#documentation" => "<p>The registry ID associated with the request.</p>"}))
    ValidatePullThroughCacheRuleResponse.add_member(:upstream_registry_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'upstreamRegistryUrl', traits: {"smithy.api#documentation" => "<p>The upstream registry URL associated with the pull through cache rule.</p>"}))
    ValidatePullThroughCacheRuleResponse.add_member(:credential_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialArn, location_name: 'credentialArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Web Services Secrets Manager secret associated with the pull through cache\n            rule.</p>"}))
    ValidatePullThroughCacheRuleResponse.add_member(:custom_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoleArn, location_name: 'customRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role associated with the pull through cache rule.</p>"}))
    ValidatePullThroughCacheRuleResponse.add_member(:upstream_repository_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleRepositoryPrefix, location_name: 'upstreamRepositoryPrefix', traits: {"smithy.api#documentation" => "<p>The upstream repository prefix associated with the pull through cache rule.</p>"}))
    ValidatePullThroughCacheRuleResponse.add_member(:is_valid, Smithy::Schema::Shapes::ShapeRef.new(shape: IsPTCRuleValid, location_name: 'isValid', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether or not the pull through cache rule was validated. If <code>true</code>, Amazon ECR\n            was able to reach the upstream registry and authentication was successful. If\n                <code>false</code>, there was an issue and validation failed. The\n                <code>failure</code> reason indicates the cause.</p>"}))
    ValidatePullThroughCacheRuleResponse.add_member(:failure, Smithy::Schema::Shapes::ShapeRef.new(shape: PTCValidateFailure, location_name: 'failure', traits: {"smithy.api#documentation" => "<p>The reason the validation failed. For more details about possible causes and how to\n            address them, see <a href=\"https://docs.aws.amazon.com/AmazonECR/latest/userguide/pull-through-cache.html\">Using pull through cache\n                rules</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>"}))
    ValidatePullThroughCacheRuleResponse.type = Types::ValidatePullThroughCacheRuleResponse
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ValidationException.type = Types::ValidationException
    VulnerablePackage.add_member(:arch, Smithy::Schema::Shapes::ShapeRef.new(shape: Arch, location_name: 'arch', traits: {"smithy.api#documentation" => "<p>The architecture of the vulnerable package.</p>"}))
    VulnerablePackage.add_member(:epoch, Smithy::Schema::Shapes::ShapeRef.new(shape: Epoch, location_name: 'epoch', traits: {"smithy.api#documentation" => "<p>The epoch of the vulnerable package.</p>"}))
    VulnerablePackage.add_member(:file_path, Smithy::Schema::Shapes::ShapeRef.new(shape: FilePath, location_name: 'filePath', traits: {"smithy.api#documentation" => "<p>The file path of the vulnerable package.</p>"}))
    VulnerablePackage.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: VulnerablePackageName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the vulnerable package.</p>"}))
    VulnerablePackage.add_member(:package_manager, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageManager, location_name: 'packageManager', traits: {"smithy.api#documentation" => "<p>The package manager of the vulnerable package.</p>"}))
    VulnerablePackage.add_member(:release, Smithy::Schema::Shapes::ShapeRef.new(shape: Release, location_name: 'release', traits: {"smithy.api#documentation" => "<p>The release of the vulnerable package.</p>"}))
    VulnerablePackage.add_member(:source_layer_hash, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceLayerHash, location_name: 'sourceLayerHash', traits: {"smithy.api#documentation" => "<p>The source layer hash of the vulnerable package.</p>"}))
    VulnerablePackage.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the vulnerable package.</p>"}))
    VulnerablePackage.add_member(:fixed_in_version, Smithy::Schema::Shapes::ShapeRef.new(shape: FixedInVersion, location_name: 'fixedInVersion', traits: {"smithy.api#documentation" => "<p>The version of the package that contains the vulnerability fix.</p>"}))
    VulnerablePackage.type = Types::VulnerablePackage
    VulnerablePackagesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VulnerablePackage)

    AmazonEC2ContainerRegistryV20150921 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.ecr#AmazonEC2ContainerRegistry_V20150921"
      service.name = "AmazonEC2ContainerRegistryV20150921"
      service.version = "2015-09-21"
      service.traits = {"aws.api#service" => {"sdkId" => "ECR", "arnNamespace" => "ecr", "cloudFormationName" => "ECR", "cloudTrailEventSource" => "ecr.amazonaws.com", "endpointPrefix" => "api.ecr"}, "aws.auth#sigv4" => {"name" => "ecr"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Elastic Container Registry", "smithy.api#xmlNamespace" => {"uri" => "http://ecr.amazonaws.com/doc/2015-09-21/"}}
      service.add_operation(:batch_check_layer_availability, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#BatchCheckLayerAvailability"
        operation.name = "BatchCheckLayerAvailability"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCheckLayerAvailabilityRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCheckLayerAvailabilityResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {}
      end)
      service.add_operation(:batch_delete_image, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#BatchDeleteImage"
        operation.name = "BatchDeleteImage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteImageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteImageResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {}
      end)
      service.add_operation(:batch_get_image, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#BatchGetImage"
        operation.name = "BatchGetImage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetImageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetImageResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnableToGetUpstreamImageException)
        operation.traits = {}
      end)
      service.add_operation(:batch_get_repository_scanning_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#BatchGetRepositoryScanningConfiguration"
        operation.name = "BatchGetRepositoryScanningConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetRepositoryScanningConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetRepositoryScanningConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:complete_layer_upload, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#CompleteLayerUpload"
        operation.name = "CompleteLayerUpload"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CompleteLayerUploadRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CompleteLayerUploadResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EmptyUploadException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLayerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LayerAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LayerPartTooSmallException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UploadNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_pull_through_cache_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#CreatePullThroughCacheRule"
        operation.name = "CreatePullThroughCacheRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePullThroughCacheRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePullThroughCacheRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SecretNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnableToAccessSecretException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnableToDecryptSecretValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedUpstreamRegistryException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_repository, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#CreateRepository"
        operation.name = "CreateRepository"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRepositoryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRepositoryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:create_repository_creation_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#CreateRepositoryCreationTemplate"
        operation.name = "CreateRepositoryCreationTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRepositoryCreationTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRepositoryCreationTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_lifecycle_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DeleteLifecyclePolicy"
        operation.name = "DeleteLifecyclePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLifecyclePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLifecyclePolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_pull_through_cache_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DeletePullThroughCacheRule"
        operation.name = "DeletePullThroughCacheRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePullThroughCacheRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePullThroughCacheRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_registry_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DeleteRegistryPolicy"
        operation.name = "DeleteRegistryPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRegistryPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRegistryPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryPolicyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_repository, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DeleteRepository"
        operation.name = "DeleteRepository"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRepositoryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRepositoryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotEmptyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {}
      end)
      service.add_operation(:delete_repository_creation_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DeleteRepositoryCreationTemplate"
        operation.name = "DeleteRepositoryCreationTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRepositoryCreationTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRepositoryCreationTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_repository_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DeleteRepositoryPolicy"
        operation.name = "DeleteRepositoryPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRepositoryPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRepositoryPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryPolicyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {}
      end)
      service.add_operation(:describe_image_replication_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DescribeImageReplicationStatus"
        operation.name = "DescribeImageReplicationStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeImageReplicationStatusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeImageReplicationStatusResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ImageNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_image_scan_findings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DescribeImageScanFindings"
        operation.name = "DescribeImageScanFindings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeImageScanFindingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeImageScanFindingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ImageNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ScanNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeImageScanFindings.new
      end)
      service.add_operation(:describe_images, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DescribeImages"
        operation.name = "DescribeImages"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeImagesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeImagesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ImageNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeImages.new
      end)
      service.add_operation(:describe_pull_through_cache_rules, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DescribePullThroughCacheRules"
        operation.name = "DescribePullThroughCacheRules"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePullThroughCacheRulesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePullThroughCacheRulesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribePullThroughCacheRules.new
      end)
      service.add_operation(:describe_registry, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DescribeRegistry"
        operation.name = "DescribeRegistry"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRegistryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRegistryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_repositories, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DescribeRepositories"
        operation.name = "DescribeRepositories"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRepositoriesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRepositoriesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "DescribeRepositoriesSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::DescribeRepositories.new
      end)
      service.add_operation(:describe_repository_creation_templates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#DescribeRepositoryCreationTemplates"
        operation.name = "DescribeRepositoryCreationTemplates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRepositoryCreationTemplatesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRepositoryCreationTemplatesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeRepositoryCreationTemplates.new
      end)
      service.add_operation(:get_account_setting, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#GetAccountSetting"
        operation.name = "GetAccountSetting"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountSettingRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountSettingResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_authorization_token, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#GetAuthorizationToken"
        operation.name = "GetAuthorizationToken"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAuthorizationTokenRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAuthorizationTokenResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {}
      end)
      service.add_operation(:get_download_url_for_layer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#GetDownloadUrlForLayer"
        operation.name = "GetDownloadUrlForLayer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDownloadUrlForLayerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDownloadUrlForLayerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LayerInaccessibleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LayersNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnableToGetUpstreamLayerException)
        operation.traits = {}
      end)
      service.add_operation(:get_lifecycle_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#GetLifecyclePolicy"
        operation.name = "GetLifecyclePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLifecyclePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLifecyclePolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_lifecycle_policy_preview, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#GetLifecyclePolicyPreview"
        operation.name = "GetLifecyclePolicyPreview"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLifecyclePolicyPreviewRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLifecyclePolicyPreviewResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyPreviewNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetLifecyclePolicyPreview.new
      end)
      service.add_operation(:get_registry_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#GetRegistryPolicy"
        operation.name = "GetRegistryPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRegistryPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRegistryPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryPolicyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_registry_scanning_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#GetRegistryScanningConfiguration"
        operation.name = "GetRegistryScanningConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRegistryScanningConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRegistryScanningConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_repository_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#GetRepositoryPolicy"
        operation.name = "GetRepositoryPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRepositoryPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRepositoryPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryPolicyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {}
      end)
      service.add_operation(:initiate_layer_upload, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#InitiateLayerUpload"
        operation.name = "InitiateLayerUpload"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: InitiateLayerUploadRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: InitiateLayerUploadResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {}
      end)
      service.add_operation(:list_images, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#ListImages"
        operation.name = "ListImages"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListImagesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListImagesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListImagesFailure", "params" => {"repositoryName" => "not-a-real-repository"}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"failure" => {}}}]}
        operation[:paginator] = Paginators::ListImages.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {}
      end)
      service.add_operation(:put_account_setting, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#PutAccountSetting"
        operation.name = "PutAccountSetting"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAccountSettingRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAccountSettingResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:put_image, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#PutImage"
        operation.name = "PutImage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutImageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutImageResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ImageAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ImageDigestDoesNotMatchException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ImageTagAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LayersNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReferencedImagesNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {}
      end)
      service.add_operation(:put_image_scanning_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#PutImageScanningConfiguration"
        operation.name = "PutImageScanningConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutImageScanningConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutImageScanningConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:put_image_tag_mutability, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#PutImageTagMutability"
        operation.name = "PutImageTagMutability"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutImageTagMutabilityRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutImageTagMutabilityResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {}
      end)
      service.add_operation(:put_lifecycle_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#PutLifecyclePolicy"
        operation.name = "PutLifecyclePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutLifecyclePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutLifecyclePolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:put_registry_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#PutRegistryPolicy"
        operation.name = "PutRegistryPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutRegistryPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutRegistryPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:put_registry_scanning_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#PutRegistryScanningConfiguration"
        operation.name = "PutRegistryScanningConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutRegistryScanningConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutRegistryScanningConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:put_replication_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#PutReplicationConfiguration"
        operation.name = "PutReplicationConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutReplicationConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutReplicationConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:set_repository_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#SetRepositoryPolicy"
        operation.name = "SetRepositoryPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SetRepositoryPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SetRepositoryPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {}
      end)
      service.add_operation(:start_image_scan, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#StartImageScan"
        operation.name = "StartImageScan"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartImageScanRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartImageScanResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ImageNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedImageTypeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:start_lifecycle_policy_preview, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#StartLifecyclePolicyPreview"
        operation.name = "StartLifecyclePolicyPreview"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartLifecyclePolicyPreviewRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartLifecyclePolicyPreviewResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyPreviewInProgressException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:update_pull_through_cache_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#UpdatePullThroughCacheRule"
        operation.name = "UpdatePullThroughCacheRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePullThroughCacheRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePullThroughCacheRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SecretNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnableToAccessSecretException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnableToDecryptSecretValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_repository_creation_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#UpdateRepositoryCreationTemplate"
        operation.name = "UpdateRepositoryCreationTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRepositoryCreationTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRepositoryCreationTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:upload_layer_part, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#UploadLayerPart"
        operation.name = "UploadLayerPart"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UploadLayerPartRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UploadLayerPartResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLayerPartException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KmsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UploadNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:validate_pull_through_cache_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecr#ValidatePullThroughCacheRule"
        operation.name = "ValidatePullThroughCacheRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatePullThroughCacheRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatePullThroughCacheRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullThroughCacheRuleNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
