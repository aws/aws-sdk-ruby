# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudFront
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessControlAllowHeadersList = Shapes::ListShape.new(name: 'AccessControlAllowHeadersList')
    AccessControlAllowMethodsList = Shapes::ListShape.new(name: 'AccessControlAllowMethodsList')
    AccessControlAllowOriginsList = Shapes::ListShape.new(name: 'AccessControlAllowOriginsList')
    AccessControlExposeHeadersList = Shapes::ListShape.new(name: 'AccessControlExposeHeadersList')
    AccessDenied = Shapes::StructureShape.new(name: 'AccessDenied')
    ActiveTrustedKeyGroups = Shapes::StructureShape.new(name: 'ActiveTrustedKeyGroups')
    ActiveTrustedSigners = Shapes::StructureShape.new(name: 'ActiveTrustedSigners')
    AliasICPRecordal = Shapes::StructureShape.new(name: 'AliasICPRecordal')
    AliasICPRecordals = Shapes::ListShape.new(name: 'AliasICPRecordals')
    AliasList = Shapes::ListShape.new(name: 'AliasList')
    Aliases = Shapes::StructureShape.new(name: 'Aliases')
    AllowedMethods = Shapes::StructureShape.new(name: 'AllowedMethods')
    AssociateAliasRequest = Shapes::StructureShape.new(name: 'AssociateAliasRequest')
    AwsAccountNumberList = Shapes::ListShape.new(name: 'AwsAccountNumberList')
    BatchTooLarge = Shapes::StructureShape.new(name: 'BatchTooLarge')
    CNAMEAlreadyExists = Shapes::StructureShape.new(name: 'CNAMEAlreadyExists')
    CacheBehavior = Shapes::StructureShape.new(name: 'CacheBehavior')
    CacheBehaviorList = Shapes::ListShape.new(name: 'CacheBehaviorList')
    CacheBehaviors = Shapes::StructureShape.new(name: 'CacheBehaviors')
    CachePolicy = Shapes::StructureShape.new(name: 'CachePolicy')
    CachePolicyAlreadyExists = Shapes::StructureShape.new(name: 'CachePolicyAlreadyExists')
    CachePolicyConfig = Shapes::StructureShape.new(name: 'CachePolicyConfig')
    CachePolicyCookieBehavior = Shapes::StringShape.new(name: 'CachePolicyCookieBehavior')
    CachePolicyCookiesConfig = Shapes::StructureShape.new(name: 'CachePolicyCookiesConfig')
    CachePolicyHeaderBehavior = Shapes::StringShape.new(name: 'CachePolicyHeaderBehavior')
    CachePolicyHeadersConfig = Shapes::StructureShape.new(name: 'CachePolicyHeadersConfig')
    CachePolicyInUse = Shapes::StructureShape.new(name: 'CachePolicyInUse')
    CachePolicyList = Shapes::StructureShape.new(name: 'CachePolicyList')
    CachePolicyQueryStringBehavior = Shapes::StringShape.new(name: 'CachePolicyQueryStringBehavior')
    CachePolicyQueryStringsConfig = Shapes::StructureShape.new(name: 'CachePolicyQueryStringsConfig')
    CachePolicySummary = Shapes::StructureShape.new(name: 'CachePolicySummary')
    CachePolicySummaryList = Shapes::ListShape.new(name: 'CachePolicySummaryList')
    CachePolicyType = Shapes::StringShape.new(name: 'CachePolicyType')
    CachedMethods = Shapes::StructureShape.new(name: 'CachedMethods')
    CannotChangeImmutablePublicKeyFields = Shapes::StructureShape.new(name: 'CannotChangeImmutablePublicKeyFields')
    CannotDeleteEntityWhileInUse = Shapes::StructureShape.new(name: 'CannotDeleteEntityWhileInUse')
    CertificateSource = Shapes::StringShape.new(name: 'CertificateSource')
    CloudFrontOriginAccessIdentity = Shapes::StructureShape.new(name: 'CloudFrontOriginAccessIdentity')
    CloudFrontOriginAccessIdentityAlreadyExists = Shapes::StructureShape.new(name: 'CloudFrontOriginAccessIdentityAlreadyExists')
    CloudFrontOriginAccessIdentityConfig = Shapes::StructureShape.new(name: 'CloudFrontOriginAccessIdentityConfig')
    CloudFrontOriginAccessIdentityInUse = Shapes::StructureShape.new(name: 'CloudFrontOriginAccessIdentityInUse')
    CloudFrontOriginAccessIdentityList = Shapes::StructureShape.new(name: 'CloudFrontOriginAccessIdentityList')
    CloudFrontOriginAccessIdentitySummary = Shapes::StructureShape.new(name: 'CloudFrontOriginAccessIdentitySummary')
    CloudFrontOriginAccessIdentitySummaryList = Shapes::ListShape.new(name: 'CloudFrontOriginAccessIdentitySummaryList')
    CommentType = Shapes::StringShape.new(name: 'CommentType')
    ConflictingAlias = Shapes::StructureShape.new(name: 'ConflictingAlias')
    ConflictingAliases = Shapes::ListShape.new(name: 'ConflictingAliases')
    ConflictingAliasesList = Shapes::StructureShape.new(name: 'ConflictingAliasesList')
    ContentTypeProfile = Shapes::StructureShape.new(name: 'ContentTypeProfile')
    ContentTypeProfileConfig = Shapes::StructureShape.new(name: 'ContentTypeProfileConfig')
    ContentTypeProfileList = Shapes::ListShape.new(name: 'ContentTypeProfileList')
    ContentTypeProfiles = Shapes::StructureShape.new(name: 'ContentTypeProfiles')
    ContinuousDeploymentPolicy = Shapes::StructureShape.new(name: 'ContinuousDeploymentPolicy')
    ContinuousDeploymentPolicyAlreadyExists = Shapes::StructureShape.new(name: 'ContinuousDeploymentPolicyAlreadyExists')
    ContinuousDeploymentPolicyConfig = Shapes::StructureShape.new(name: 'ContinuousDeploymentPolicyConfig')
    ContinuousDeploymentPolicyInUse = Shapes::StructureShape.new(name: 'ContinuousDeploymentPolicyInUse')
    ContinuousDeploymentPolicyList = Shapes::StructureShape.new(name: 'ContinuousDeploymentPolicyList')
    ContinuousDeploymentPolicySummary = Shapes::StructureShape.new(name: 'ContinuousDeploymentPolicySummary')
    ContinuousDeploymentPolicySummaryList = Shapes::ListShape.new(name: 'ContinuousDeploymentPolicySummaryList')
    ContinuousDeploymentPolicyType = Shapes::StringShape.new(name: 'ContinuousDeploymentPolicyType')
    ContinuousDeploymentSingleHeaderConfig = Shapes::StructureShape.new(name: 'ContinuousDeploymentSingleHeaderConfig')
    ContinuousDeploymentSingleWeightConfig = Shapes::StructureShape.new(name: 'ContinuousDeploymentSingleWeightConfig')
    CookieNameList = Shapes::ListShape.new(name: 'CookieNameList')
    CookieNames = Shapes::StructureShape.new(name: 'CookieNames')
    CookiePreference = Shapes::StructureShape.new(name: 'CookiePreference')
    CopyDistributionRequest = Shapes::StructureShape.new(name: 'CopyDistributionRequest')
    CopyDistributionResult = Shapes::StructureShape.new(name: 'CopyDistributionResult')
    CreateCachePolicyRequest = Shapes::StructureShape.new(name: 'CreateCachePolicyRequest')
    CreateCachePolicyResult = Shapes::StructureShape.new(name: 'CreateCachePolicyResult')
    CreateCloudFrontOriginAccessIdentityRequest = Shapes::StructureShape.new(name: 'CreateCloudFrontOriginAccessIdentityRequest')
    CreateCloudFrontOriginAccessIdentityResult = Shapes::StructureShape.new(name: 'CreateCloudFrontOriginAccessIdentityResult')
    CreateContinuousDeploymentPolicyRequest = Shapes::StructureShape.new(name: 'CreateContinuousDeploymentPolicyRequest')
    CreateContinuousDeploymentPolicyResult = Shapes::StructureShape.new(name: 'CreateContinuousDeploymentPolicyResult')
    CreateDistributionRequest = Shapes::StructureShape.new(name: 'CreateDistributionRequest')
    CreateDistributionResult = Shapes::StructureShape.new(name: 'CreateDistributionResult')
    CreateDistributionWithTagsRequest = Shapes::StructureShape.new(name: 'CreateDistributionWithTagsRequest')
    CreateDistributionWithTagsResult = Shapes::StructureShape.new(name: 'CreateDistributionWithTagsResult')
    CreateFieldLevelEncryptionConfigRequest = Shapes::StructureShape.new(name: 'CreateFieldLevelEncryptionConfigRequest')
    CreateFieldLevelEncryptionConfigResult = Shapes::StructureShape.new(name: 'CreateFieldLevelEncryptionConfigResult')
    CreateFieldLevelEncryptionProfileRequest = Shapes::StructureShape.new(name: 'CreateFieldLevelEncryptionProfileRequest')
    CreateFieldLevelEncryptionProfileResult = Shapes::StructureShape.new(name: 'CreateFieldLevelEncryptionProfileResult')
    CreateFunctionRequest = Shapes::StructureShape.new(name: 'CreateFunctionRequest')
    CreateFunctionResult = Shapes::StructureShape.new(name: 'CreateFunctionResult')
    CreateInvalidationRequest = Shapes::StructureShape.new(name: 'CreateInvalidationRequest')
    CreateInvalidationResult = Shapes::StructureShape.new(name: 'CreateInvalidationResult')
    CreateKeyGroupRequest = Shapes::StructureShape.new(name: 'CreateKeyGroupRequest')
    CreateKeyGroupResult = Shapes::StructureShape.new(name: 'CreateKeyGroupResult')
    CreateKeyValueStoreRequest = Shapes::StructureShape.new(name: 'CreateKeyValueStoreRequest')
    CreateKeyValueStoreResult = Shapes::StructureShape.new(name: 'CreateKeyValueStoreResult')
    CreateMonitoringSubscriptionRequest = Shapes::StructureShape.new(name: 'CreateMonitoringSubscriptionRequest')
    CreateMonitoringSubscriptionResult = Shapes::StructureShape.new(name: 'CreateMonitoringSubscriptionResult')
    CreateOriginAccessControlRequest = Shapes::StructureShape.new(name: 'CreateOriginAccessControlRequest')
    CreateOriginAccessControlResult = Shapes::StructureShape.new(name: 'CreateOriginAccessControlResult')
    CreateOriginRequestPolicyRequest = Shapes::StructureShape.new(name: 'CreateOriginRequestPolicyRequest')
    CreateOriginRequestPolicyResult = Shapes::StructureShape.new(name: 'CreateOriginRequestPolicyResult')
    CreatePublicKeyRequest = Shapes::StructureShape.new(name: 'CreatePublicKeyRequest')
    CreatePublicKeyResult = Shapes::StructureShape.new(name: 'CreatePublicKeyResult')
    CreateRealtimeLogConfigRequest = Shapes::StructureShape.new(name: 'CreateRealtimeLogConfigRequest')
    CreateRealtimeLogConfigResult = Shapes::StructureShape.new(name: 'CreateRealtimeLogConfigResult')
    CreateResponseHeadersPolicyRequest = Shapes::StructureShape.new(name: 'CreateResponseHeadersPolicyRequest')
    CreateResponseHeadersPolicyResult = Shapes::StructureShape.new(name: 'CreateResponseHeadersPolicyResult')
    CreateStreamingDistributionRequest = Shapes::StructureShape.new(name: 'CreateStreamingDistributionRequest')
    CreateStreamingDistributionResult = Shapes::StructureShape.new(name: 'CreateStreamingDistributionResult')
    CreateStreamingDistributionWithTagsRequest = Shapes::StructureShape.new(name: 'CreateStreamingDistributionWithTagsRequest')
    CreateStreamingDistributionWithTagsResult = Shapes::StructureShape.new(name: 'CreateStreamingDistributionWithTagsResult')
    CustomErrorResponse = Shapes::StructureShape.new(name: 'CustomErrorResponse')
    CustomErrorResponseList = Shapes::ListShape.new(name: 'CustomErrorResponseList')
    CustomErrorResponses = Shapes::StructureShape.new(name: 'CustomErrorResponses')
    CustomHeaders = Shapes::StructureShape.new(name: 'CustomHeaders')
    CustomOriginConfig = Shapes::StructureShape.new(name: 'CustomOriginConfig')
    DefaultCacheBehavior = Shapes::StructureShape.new(name: 'DefaultCacheBehavior')
    DeleteCachePolicyRequest = Shapes::StructureShape.new(name: 'DeleteCachePolicyRequest')
    DeleteCloudFrontOriginAccessIdentityRequest = Shapes::StructureShape.new(name: 'DeleteCloudFrontOriginAccessIdentityRequest')
    DeleteContinuousDeploymentPolicyRequest = Shapes::StructureShape.new(name: 'DeleteContinuousDeploymentPolicyRequest')
    DeleteDistributionRequest = Shapes::StructureShape.new(name: 'DeleteDistributionRequest')
    DeleteFieldLevelEncryptionConfigRequest = Shapes::StructureShape.new(name: 'DeleteFieldLevelEncryptionConfigRequest')
    DeleteFieldLevelEncryptionProfileRequest = Shapes::StructureShape.new(name: 'DeleteFieldLevelEncryptionProfileRequest')
    DeleteFunctionRequest = Shapes::StructureShape.new(name: 'DeleteFunctionRequest')
    DeleteKeyGroupRequest = Shapes::StructureShape.new(name: 'DeleteKeyGroupRequest')
    DeleteKeyValueStoreRequest = Shapes::StructureShape.new(name: 'DeleteKeyValueStoreRequest')
    DeleteMonitoringSubscriptionRequest = Shapes::StructureShape.new(name: 'DeleteMonitoringSubscriptionRequest')
    DeleteMonitoringSubscriptionResult = Shapes::StructureShape.new(name: 'DeleteMonitoringSubscriptionResult')
    DeleteOriginAccessControlRequest = Shapes::StructureShape.new(name: 'DeleteOriginAccessControlRequest')
    DeleteOriginRequestPolicyRequest = Shapes::StructureShape.new(name: 'DeleteOriginRequestPolicyRequest')
    DeletePublicKeyRequest = Shapes::StructureShape.new(name: 'DeletePublicKeyRequest')
    DeleteRealtimeLogConfigRequest = Shapes::StructureShape.new(name: 'DeleteRealtimeLogConfigRequest')
    DeleteResponseHeadersPolicyRequest = Shapes::StructureShape.new(name: 'DeleteResponseHeadersPolicyRequest')
    DeleteStreamingDistributionRequest = Shapes::StructureShape.new(name: 'DeleteStreamingDistributionRequest')
    DescribeFunctionRequest = Shapes::StructureShape.new(name: 'DescribeFunctionRequest')
    DescribeFunctionResult = Shapes::StructureShape.new(name: 'DescribeFunctionResult')
    DescribeKeyValueStoreRequest = Shapes::StructureShape.new(name: 'DescribeKeyValueStoreRequest')
    DescribeKeyValueStoreResult = Shapes::StructureShape.new(name: 'DescribeKeyValueStoreResult')
    Distribution = Shapes::StructureShape.new(name: 'Distribution')
    DistributionAlreadyExists = Shapes::StructureShape.new(name: 'DistributionAlreadyExists')
    DistributionConfig = Shapes::StructureShape.new(name: 'DistributionConfig')
    DistributionConfigWithTags = Shapes::StructureShape.new(name: 'DistributionConfigWithTags')
    DistributionIdList = Shapes::StructureShape.new(name: 'DistributionIdList')
    DistributionIdListSummary = Shapes::ListShape.new(name: 'DistributionIdListSummary')
    DistributionList = Shapes::StructureShape.new(name: 'DistributionList')
    DistributionNotDisabled = Shapes::StructureShape.new(name: 'DistributionNotDisabled')
    DistributionSummary = Shapes::StructureShape.new(name: 'DistributionSummary')
    DistributionSummaryList = Shapes::ListShape.new(name: 'DistributionSummaryList')
    EncryptionEntities = Shapes::StructureShape.new(name: 'EncryptionEntities')
    EncryptionEntity = Shapes::StructureShape.new(name: 'EncryptionEntity')
    EncryptionEntityList = Shapes::ListShape.new(name: 'EncryptionEntityList')
    EndPoint = Shapes::StructureShape.new(name: 'EndPoint')
    EndPointList = Shapes::ListShape.new(name: 'EndPointList')
    EntityAlreadyExists = Shapes::StructureShape.new(name: 'EntityAlreadyExists')
    EntityLimitExceeded = Shapes::StructureShape.new(name: 'EntityLimitExceeded')
    EntityNotFound = Shapes::StructureShape.new(name: 'EntityNotFound')
    EntitySizeLimitExceeded = Shapes::StructureShape.new(name: 'EntitySizeLimitExceeded')
    EventType = Shapes::StringShape.new(name: 'EventType')
    FieldLevelEncryption = Shapes::StructureShape.new(name: 'FieldLevelEncryption')
    FieldLevelEncryptionConfig = Shapes::StructureShape.new(name: 'FieldLevelEncryptionConfig')
    FieldLevelEncryptionConfigAlreadyExists = Shapes::StructureShape.new(name: 'FieldLevelEncryptionConfigAlreadyExists')
    FieldLevelEncryptionConfigInUse = Shapes::StructureShape.new(name: 'FieldLevelEncryptionConfigInUse')
    FieldLevelEncryptionList = Shapes::StructureShape.new(name: 'FieldLevelEncryptionList')
    FieldLevelEncryptionProfile = Shapes::StructureShape.new(name: 'FieldLevelEncryptionProfile')
    FieldLevelEncryptionProfileAlreadyExists = Shapes::StructureShape.new(name: 'FieldLevelEncryptionProfileAlreadyExists')
    FieldLevelEncryptionProfileConfig = Shapes::StructureShape.new(name: 'FieldLevelEncryptionProfileConfig')
    FieldLevelEncryptionProfileInUse = Shapes::StructureShape.new(name: 'FieldLevelEncryptionProfileInUse')
    FieldLevelEncryptionProfileList = Shapes::StructureShape.new(name: 'FieldLevelEncryptionProfileList')
    FieldLevelEncryptionProfileSizeExceeded = Shapes::StructureShape.new(name: 'FieldLevelEncryptionProfileSizeExceeded')
    FieldLevelEncryptionProfileSummary = Shapes::StructureShape.new(name: 'FieldLevelEncryptionProfileSummary')
    FieldLevelEncryptionProfileSummaryList = Shapes::ListShape.new(name: 'FieldLevelEncryptionProfileSummaryList')
    FieldLevelEncryptionSummary = Shapes::StructureShape.new(name: 'FieldLevelEncryptionSummary')
    FieldLevelEncryptionSummaryList = Shapes::ListShape.new(name: 'FieldLevelEncryptionSummaryList')
    FieldList = Shapes::ListShape.new(name: 'FieldList')
    FieldPatternList = Shapes::ListShape.new(name: 'FieldPatternList')
    FieldPatterns = Shapes::StructureShape.new(name: 'FieldPatterns')
    Format = Shapes::StringShape.new(name: 'Format')
    ForwardedValues = Shapes::StructureShape.new(name: 'ForwardedValues')
    FrameOptionsList = Shapes::StringShape.new(name: 'FrameOptionsList')
    FunctionARN = Shapes::StringShape.new(name: 'FunctionARN')
    FunctionAlreadyExists = Shapes::StructureShape.new(name: 'FunctionAlreadyExists')
    FunctionAssociation = Shapes::StructureShape.new(name: 'FunctionAssociation')
    FunctionAssociationList = Shapes::ListShape.new(name: 'FunctionAssociationList')
    FunctionAssociations = Shapes::StructureShape.new(name: 'FunctionAssociations')
    FunctionBlob = Shapes::BlobShape.new(name: 'FunctionBlob')
    FunctionConfig = Shapes::StructureShape.new(name: 'FunctionConfig')
    FunctionEventObject = Shapes::BlobShape.new(name: 'FunctionEventObject')
    FunctionExecutionLogList = Shapes::ListShape.new(name: 'FunctionExecutionLogList')
    FunctionInUse = Shapes::StructureShape.new(name: 'FunctionInUse')
    FunctionList = Shapes::StructureShape.new(name: 'FunctionList')
    FunctionMetadata = Shapes::StructureShape.new(name: 'FunctionMetadata')
    FunctionName = Shapes::StringShape.new(name: 'FunctionName')
    FunctionRuntime = Shapes::StringShape.new(name: 'FunctionRuntime')
    FunctionSizeLimitExceeded = Shapes::StructureShape.new(name: 'FunctionSizeLimitExceeded')
    FunctionStage = Shapes::StringShape.new(name: 'FunctionStage')
    FunctionSummary = Shapes::StructureShape.new(name: 'FunctionSummary')
    FunctionSummaryList = Shapes::ListShape.new(name: 'FunctionSummaryList')
    GeoRestriction = Shapes::StructureShape.new(name: 'GeoRestriction')
    GeoRestrictionType = Shapes::StringShape.new(name: 'GeoRestrictionType')
    GetCachePolicyConfigRequest = Shapes::StructureShape.new(name: 'GetCachePolicyConfigRequest')
    GetCachePolicyConfigResult = Shapes::StructureShape.new(name: 'GetCachePolicyConfigResult')
    GetCachePolicyRequest = Shapes::StructureShape.new(name: 'GetCachePolicyRequest')
    GetCachePolicyResult = Shapes::StructureShape.new(name: 'GetCachePolicyResult')
    GetCloudFrontOriginAccessIdentityConfigRequest = Shapes::StructureShape.new(name: 'GetCloudFrontOriginAccessIdentityConfigRequest')
    GetCloudFrontOriginAccessIdentityConfigResult = Shapes::StructureShape.new(name: 'GetCloudFrontOriginAccessIdentityConfigResult')
    GetCloudFrontOriginAccessIdentityRequest = Shapes::StructureShape.new(name: 'GetCloudFrontOriginAccessIdentityRequest')
    GetCloudFrontOriginAccessIdentityResult = Shapes::StructureShape.new(name: 'GetCloudFrontOriginAccessIdentityResult')
    GetContinuousDeploymentPolicyConfigRequest = Shapes::StructureShape.new(name: 'GetContinuousDeploymentPolicyConfigRequest')
    GetContinuousDeploymentPolicyConfigResult = Shapes::StructureShape.new(name: 'GetContinuousDeploymentPolicyConfigResult')
    GetContinuousDeploymentPolicyRequest = Shapes::StructureShape.new(name: 'GetContinuousDeploymentPolicyRequest')
    GetContinuousDeploymentPolicyResult = Shapes::StructureShape.new(name: 'GetContinuousDeploymentPolicyResult')
    GetDistributionConfigRequest = Shapes::StructureShape.new(name: 'GetDistributionConfigRequest')
    GetDistributionConfigResult = Shapes::StructureShape.new(name: 'GetDistributionConfigResult')
    GetDistributionRequest = Shapes::StructureShape.new(name: 'GetDistributionRequest')
    GetDistributionResult = Shapes::StructureShape.new(name: 'GetDistributionResult')
    GetFieldLevelEncryptionConfigRequest = Shapes::StructureShape.new(name: 'GetFieldLevelEncryptionConfigRequest')
    GetFieldLevelEncryptionConfigResult = Shapes::StructureShape.new(name: 'GetFieldLevelEncryptionConfigResult')
    GetFieldLevelEncryptionProfileConfigRequest = Shapes::StructureShape.new(name: 'GetFieldLevelEncryptionProfileConfigRequest')
    GetFieldLevelEncryptionProfileConfigResult = Shapes::StructureShape.new(name: 'GetFieldLevelEncryptionProfileConfigResult')
    GetFieldLevelEncryptionProfileRequest = Shapes::StructureShape.new(name: 'GetFieldLevelEncryptionProfileRequest')
    GetFieldLevelEncryptionProfileResult = Shapes::StructureShape.new(name: 'GetFieldLevelEncryptionProfileResult')
    GetFieldLevelEncryptionRequest = Shapes::StructureShape.new(name: 'GetFieldLevelEncryptionRequest')
    GetFieldLevelEncryptionResult = Shapes::StructureShape.new(name: 'GetFieldLevelEncryptionResult')
    GetFunctionRequest = Shapes::StructureShape.new(name: 'GetFunctionRequest')
    GetFunctionResult = Shapes::StructureShape.new(name: 'GetFunctionResult')
    GetInvalidationRequest = Shapes::StructureShape.new(name: 'GetInvalidationRequest')
    GetInvalidationResult = Shapes::StructureShape.new(name: 'GetInvalidationResult')
    GetKeyGroupConfigRequest = Shapes::StructureShape.new(name: 'GetKeyGroupConfigRequest')
    GetKeyGroupConfigResult = Shapes::StructureShape.new(name: 'GetKeyGroupConfigResult')
    GetKeyGroupRequest = Shapes::StructureShape.new(name: 'GetKeyGroupRequest')
    GetKeyGroupResult = Shapes::StructureShape.new(name: 'GetKeyGroupResult')
    GetMonitoringSubscriptionRequest = Shapes::StructureShape.new(name: 'GetMonitoringSubscriptionRequest')
    GetMonitoringSubscriptionResult = Shapes::StructureShape.new(name: 'GetMonitoringSubscriptionResult')
    GetOriginAccessControlConfigRequest = Shapes::StructureShape.new(name: 'GetOriginAccessControlConfigRequest')
    GetOriginAccessControlConfigResult = Shapes::StructureShape.new(name: 'GetOriginAccessControlConfigResult')
    GetOriginAccessControlRequest = Shapes::StructureShape.new(name: 'GetOriginAccessControlRequest')
    GetOriginAccessControlResult = Shapes::StructureShape.new(name: 'GetOriginAccessControlResult')
    GetOriginRequestPolicyConfigRequest = Shapes::StructureShape.new(name: 'GetOriginRequestPolicyConfigRequest')
    GetOriginRequestPolicyConfigResult = Shapes::StructureShape.new(name: 'GetOriginRequestPolicyConfigResult')
    GetOriginRequestPolicyRequest = Shapes::StructureShape.new(name: 'GetOriginRequestPolicyRequest')
    GetOriginRequestPolicyResult = Shapes::StructureShape.new(name: 'GetOriginRequestPolicyResult')
    GetPublicKeyConfigRequest = Shapes::StructureShape.new(name: 'GetPublicKeyConfigRequest')
    GetPublicKeyConfigResult = Shapes::StructureShape.new(name: 'GetPublicKeyConfigResult')
    GetPublicKeyRequest = Shapes::StructureShape.new(name: 'GetPublicKeyRequest')
    GetPublicKeyResult = Shapes::StructureShape.new(name: 'GetPublicKeyResult')
    GetRealtimeLogConfigRequest = Shapes::StructureShape.new(name: 'GetRealtimeLogConfigRequest')
    GetRealtimeLogConfigResult = Shapes::StructureShape.new(name: 'GetRealtimeLogConfigResult')
    GetResponseHeadersPolicyConfigRequest = Shapes::StructureShape.new(name: 'GetResponseHeadersPolicyConfigRequest')
    GetResponseHeadersPolicyConfigResult = Shapes::StructureShape.new(name: 'GetResponseHeadersPolicyConfigResult')
    GetResponseHeadersPolicyRequest = Shapes::StructureShape.new(name: 'GetResponseHeadersPolicyRequest')
    GetResponseHeadersPolicyResult = Shapes::StructureShape.new(name: 'GetResponseHeadersPolicyResult')
    GetStreamingDistributionConfigRequest = Shapes::StructureShape.new(name: 'GetStreamingDistributionConfigRequest')
    GetStreamingDistributionConfigResult = Shapes::StructureShape.new(name: 'GetStreamingDistributionConfigResult')
    GetStreamingDistributionRequest = Shapes::StructureShape.new(name: 'GetStreamingDistributionRequest')
    GetStreamingDistributionResult = Shapes::StructureShape.new(name: 'GetStreamingDistributionResult')
    HeaderList = Shapes::ListShape.new(name: 'HeaderList')
    Headers = Shapes::StructureShape.new(name: 'Headers')
    HttpVersion = Shapes::StringShape.new(name: 'HttpVersion')
    ICPRecordalStatus = Shapes::StringShape.new(name: 'ICPRecordalStatus')
    IllegalDelete = Shapes::StructureShape.new(name: 'IllegalDelete')
    IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior = Shapes::StructureShape.new(name: 'IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior')
    IllegalOriginAccessConfiguration = Shapes::StructureShape.new(name: 'IllegalOriginAccessConfiguration')
    IllegalUpdate = Shapes::StructureShape.new(name: 'IllegalUpdate')
    ImportSource = Shapes::StructureShape.new(name: 'ImportSource')
    ImportSourceType = Shapes::StringShape.new(name: 'ImportSourceType')
    InconsistentQuantities = Shapes::StructureShape.new(name: 'InconsistentQuantities')
    InvalidArgument = Shapes::StructureShape.new(name: 'InvalidArgument')
    InvalidDefaultRootObject = Shapes::StructureShape.new(name: 'InvalidDefaultRootObject')
    InvalidDomainNameForOriginAccessControl = Shapes::StructureShape.new(name: 'InvalidDomainNameForOriginAccessControl')
    InvalidErrorCode = Shapes::StructureShape.new(name: 'InvalidErrorCode')
    InvalidForwardCookies = Shapes::StructureShape.new(name: 'InvalidForwardCookies')
    InvalidFunctionAssociation = Shapes::StructureShape.new(name: 'InvalidFunctionAssociation')
    InvalidGeoRestrictionParameter = Shapes::StructureShape.new(name: 'InvalidGeoRestrictionParameter')
    InvalidHeadersForS3Origin = Shapes::StructureShape.new(name: 'InvalidHeadersForS3Origin')
    InvalidIfMatchVersion = Shapes::StructureShape.new(name: 'InvalidIfMatchVersion')
    InvalidLambdaFunctionAssociation = Shapes::StructureShape.new(name: 'InvalidLambdaFunctionAssociation')
    InvalidLocationCode = Shapes::StructureShape.new(name: 'InvalidLocationCode')
    InvalidMinimumProtocolVersion = Shapes::StructureShape.new(name: 'InvalidMinimumProtocolVersion')
    InvalidOrigin = Shapes::StructureShape.new(name: 'InvalidOrigin')
    InvalidOriginAccessControl = Shapes::StructureShape.new(name: 'InvalidOriginAccessControl')
    InvalidOriginAccessIdentity = Shapes::StructureShape.new(name: 'InvalidOriginAccessIdentity')
    InvalidOriginKeepaliveTimeout = Shapes::StructureShape.new(name: 'InvalidOriginKeepaliveTimeout')
    InvalidOriginReadTimeout = Shapes::StructureShape.new(name: 'InvalidOriginReadTimeout')
    InvalidProtocolSettings = Shapes::StructureShape.new(name: 'InvalidProtocolSettings')
    InvalidQueryStringParameters = Shapes::StructureShape.new(name: 'InvalidQueryStringParameters')
    InvalidRelativePath = Shapes::StructureShape.new(name: 'InvalidRelativePath')
    InvalidRequiredProtocol = Shapes::StructureShape.new(name: 'InvalidRequiredProtocol')
    InvalidResponseCode = Shapes::StructureShape.new(name: 'InvalidResponseCode')
    InvalidTTLOrder = Shapes::StructureShape.new(name: 'InvalidTTLOrder')
    InvalidTagging = Shapes::StructureShape.new(name: 'InvalidTagging')
    InvalidViewerCertificate = Shapes::StructureShape.new(name: 'InvalidViewerCertificate')
    InvalidWebACLId = Shapes::StructureShape.new(name: 'InvalidWebACLId')
    Invalidation = Shapes::StructureShape.new(name: 'Invalidation')
    InvalidationBatch = Shapes::StructureShape.new(name: 'InvalidationBatch')
    InvalidationList = Shapes::StructureShape.new(name: 'InvalidationList')
    InvalidationSummary = Shapes::StructureShape.new(name: 'InvalidationSummary')
    InvalidationSummaryList = Shapes::ListShape.new(name: 'InvalidationSummaryList')
    ItemSelection = Shapes::StringShape.new(name: 'ItemSelection')
    KGKeyPairIds = Shapes::StructureShape.new(name: 'KGKeyPairIds')
    KGKeyPairIdsList = Shapes::ListShape.new(name: 'KGKeyPairIdsList')
    KeyGroup = Shapes::StructureShape.new(name: 'KeyGroup')
    KeyGroupAlreadyExists = Shapes::StructureShape.new(name: 'KeyGroupAlreadyExists')
    KeyGroupConfig = Shapes::StructureShape.new(name: 'KeyGroupConfig')
    KeyGroupList = Shapes::StructureShape.new(name: 'KeyGroupList')
    KeyGroupSummary = Shapes::StructureShape.new(name: 'KeyGroupSummary')
    KeyGroupSummaryList = Shapes::ListShape.new(name: 'KeyGroupSummaryList')
    KeyPairIdList = Shapes::ListShape.new(name: 'KeyPairIdList')
    KeyPairIds = Shapes::StructureShape.new(name: 'KeyPairIds')
    KeyValueStore = Shapes::StructureShape.new(name: 'KeyValueStore')
    KeyValueStoreARN = Shapes::StringShape.new(name: 'KeyValueStoreARN')
    KeyValueStoreAssociation = Shapes::StructureShape.new(name: 'KeyValueStoreAssociation')
    KeyValueStoreAssociationList = Shapes::ListShape.new(name: 'KeyValueStoreAssociationList')
    KeyValueStoreAssociations = Shapes::StructureShape.new(name: 'KeyValueStoreAssociations')
    KeyValueStoreComment = Shapes::StringShape.new(name: 'KeyValueStoreComment')
    KeyValueStoreList = Shapes::StructureShape.new(name: 'KeyValueStoreList')
    KeyValueStoreName = Shapes::StringShape.new(name: 'KeyValueStoreName')
    KeyValueStoreSummaryList = Shapes::ListShape.new(name: 'KeyValueStoreSummaryList')
    KinesisStreamConfig = Shapes::StructureShape.new(name: 'KinesisStreamConfig')
    LambdaFunctionARN = Shapes::StringShape.new(name: 'LambdaFunctionARN')
    LambdaFunctionAssociation = Shapes::StructureShape.new(name: 'LambdaFunctionAssociation')
    LambdaFunctionAssociationList = Shapes::ListShape.new(name: 'LambdaFunctionAssociationList')
    LambdaFunctionAssociations = Shapes::StructureShape.new(name: 'LambdaFunctionAssociations')
    ListCachePoliciesRequest = Shapes::StructureShape.new(name: 'ListCachePoliciesRequest')
    ListCachePoliciesResult = Shapes::StructureShape.new(name: 'ListCachePoliciesResult')
    ListCloudFrontOriginAccessIdentitiesRequest = Shapes::StructureShape.new(name: 'ListCloudFrontOriginAccessIdentitiesRequest')
    ListCloudFrontOriginAccessIdentitiesResult = Shapes::StructureShape.new(name: 'ListCloudFrontOriginAccessIdentitiesResult')
    ListConflictingAliasesRequest = Shapes::StructureShape.new(name: 'ListConflictingAliasesRequest')
    ListConflictingAliasesResult = Shapes::StructureShape.new(name: 'ListConflictingAliasesResult')
    ListContinuousDeploymentPoliciesRequest = Shapes::StructureShape.new(name: 'ListContinuousDeploymentPoliciesRequest')
    ListContinuousDeploymentPoliciesResult = Shapes::StructureShape.new(name: 'ListContinuousDeploymentPoliciesResult')
    ListDistributionsByCachePolicyIdRequest = Shapes::StructureShape.new(name: 'ListDistributionsByCachePolicyIdRequest')
    ListDistributionsByCachePolicyIdResult = Shapes::StructureShape.new(name: 'ListDistributionsByCachePolicyIdResult')
    ListDistributionsByKeyGroupRequest = Shapes::StructureShape.new(name: 'ListDistributionsByKeyGroupRequest')
    ListDistributionsByKeyGroupResult = Shapes::StructureShape.new(name: 'ListDistributionsByKeyGroupResult')
    ListDistributionsByOriginRequestPolicyIdRequest = Shapes::StructureShape.new(name: 'ListDistributionsByOriginRequestPolicyIdRequest')
    ListDistributionsByOriginRequestPolicyIdResult = Shapes::StructureShape.new(name: 'ListDistributionsByOriginRequestPolicyIdResult')
    ListDistributionsByRealtimeLogConfigRequest = Shapes::StructureShape.new(name: 'ListDistributionsByRealtimeLogConfigRequest')
    ListDistributionsByRealtimeLogConfigResult = Shapes::StructureShape.new(name: 'ListDistributionsByRealtimeLogConfigResult')
    ListDistributionsByResponseHeadersPolicyIdRequest = Shapes::StructureShape.new(name: 'ListDistributionsByResponseHeadersPolicyIdRequest')
    ListDistributionsByResponseHeadersPolicyIdResult = Shapes::StructureShape.new(name: 'ListDistributionsByResponseHeadersPolicyIdResult')
    ListDistributionsByWebACLIdRequest = Shapes::StructureShape.new(name: 'ListDistributionsByWebACLIdRequest')
    ListDistributionsByWebACLIdResult = Shapes::StructureShape.new(name: 'ListDistributionsByWebACLIdResult')
    ListDistributionsRequest = Shapes::StructureShape.new(name: 'ListDistributionsRequest')
    ListDistributionsResult = Shapes::StructureShape.new(name: 'ListDistributionsResult')
    ListFieldLevelEncryptionConfigsRequest = Shapes::StructureShape.new(name: 'ListFieldLevelEncryptionConfigsRequest')
    ListFieldLevelEncryptionConfigsResult = Shapes::StructureShape.new(name: 'ListFieldLevelEncryptionConfigsResult')
    ListFieldLevelEncryptionProfilesRequest = Shapes::StructureShape.new(name: 'ListFieldLevelEncryptionProfilesRequest')
    ListFieldLevelEncryptionProfilesResult = Shapes::StructureShape.new(name: 'ListFieldLevelEncryptionProfilesResult')
    ListFunctionsRequest = Shapes::StructureShape.new(name: 'ListFunctionsRequest')
    ListFunctionsResult = Shapes::StructureShape.new(name: 'ListFunctionsResult')
    ListInvalidationsRequest = Shapes::StructureShape.new(name: 'ListInvalidationsRequest')
    ListInvalidationsResult = Shapes::StructureShape.new(name: 'ListInvalidationsResult')
    ListKeyGroupsRequest = Shapes::StructureShape.new(name: 'ListKeyGroupsRequest')
    ListKeyGroupsResult = Shapes::StructureShape.new(name: 'ListKeyGroupsResult')
    ListKeyValueStoresRequest = Shapes::StructureShape.new(name: 'ListKeyValueStoresRequest')
    ListKeyValueStoresResult = Shapes::StructureShape.new(name: 'ListKeyValueStoresResult')
    ListOriginAccessControlsRequest = Shapes::StructureShape.new(name: 'ListOriginAccessControlsRequest')
    ListOriginAccessControlsResult = Shapes::StructureShape.new(name: 'ListOriginAccessControlsResult')
    ListOriginRequestPoliciesRequest = Shapes::StructureShape.new(name: 'ListOriginRequestPoliciesRequest')
    ListOriginRequestPoliciesResult = Shapes::StructureShape.new(name: 'ListOriginRequestPoliciesResult')
    ListPublicKeysRequest = Shapes::StructureShape.new(name: 'ListPublicKeysRequest')
    ListPublicKeysResult = Shapes::StructureShape.new(name: 'ListPublicKeysResult')
    ListRealtimeLogConfigsRequest = Shapes::StructureShape.new(name: 'ListRealtimeLogConfigsRequest')
    ListRealtimeLogConfigsResult = Shapes::StructureShape.new(name: 'ListRealtimeLogConfigsResult')
    ListResponseHeadersPoliciesRequest = Shapes::StructureShape.new(name: 'ListResponseHeadersPoliciesRequest')
    ListResponseHeadersPoliciesResult = Shapes::StructureShape.new(name: 'ListResponseHeadersPoliciesResult')
    ListStreamingDistributionsRequest = Shapes::StructureShape.new(name: 'ListStreamingDistributionsRequest')
    ListStreamingDistributionsResult = Shapes::StructureShape.new(name: 'ListStreamingDistributionsResult')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResult = Shapes::StructureShape.new(name: 'ListTagsForResourceResult')
    LocationList = Shapes::ListShape.new(name: 'LocationList')
    LoggingConfig = Shapes::StructureShape.new(name: 'LoggingConfig')
    Method = Shapes::StringShape.new(name: 'Method')
    MethodsList = Shapes::ListShape.new(name: 'MethodsList')
    MinimumProtocolVersion = Shapes::StringShape.new(name: 'MinimumProtocolVersion')
    MissingBody = Shapes::StructureShape.new(name: 'MissingBody')
    MonitoringSubscription = Shapes::StructureShape.new(name: 'MonitoringSubscription')
    MonitoringSubscriptionAlreadyExists = Shapes::StructureShape.new(name: 'MonitoringSubscriptionAlreadyExists')
    NoSuchCachePolicy = Shapes::StructureShape.new(name: 'NoSuchCachePolicy')
    NoSuchCloudFrontOriginAccessIdentity = Shapes::StructureShape.new(name: 'NoSuchCloudFrontOriginAccessIdentity')
    NoSuchContinuousDeploymentPolicy = Shapes::StructureShape.new(name: 'NoSuchContinuousDeploymentPolicy')
    NoSuchDistribution = Shapes::StructureShape.new(name: 'NoSuchDistribution')
    NoSuchFieldLevelEncryptionConfig = Shapes::StructureShape.new(name: 'NoSuchFieldLevelEncryptionConfig')
    NoSuchFieldLevelEncryptionProfile = Shapes::StructureShape.new(name: 'NoSuchFieldLevelEncryptionProfile')
    NoSuchFunctionExists = Shapes::StructureShape.new(name: 'NoSuchFunctionExists')
    NoSuchInvalidation = Shapes::StructureShape.new(name: 'NoSuchInvalidation')
    NoSuchMonitoringSubscription = Shapes::StructureShape.new(name: 'NoSuchMonitoringSubscription')
    NoSuchOrigin = Shapes::StructureShape.new(name: 'NoSuchOrigin')
    NoSuchOriginAccessControl = Shapes::StructureShape.new(name: 'NoSuchOriginAccessControl')
    NoSuchOriginRequestPolicy = Shapes::StructureShape.new(name: 'NoSuchOriginRequestPolicy')
    NoSuchPublicKey = Shapes::StructureShape.new(name: 'NoSuchPublicKey')
    NoSuchRealtimeLogConfig = Shapes::StructureShape.new(name: 'NoSuchRealtimeLogConfig')
    NoSuchResource = Shapes::StructureShape.new(name: 'NoSuchResource')
    NoSuchResponseHeadersPolicy = Shapes::StructureShape.new(name: 'NoSuchResponseHeadersPolicy')
    NoSuchStreamingDistribution = Shapes::StructureShape.new(name: 'NoSuchStreamingDistribution')
    Origin = Shapes::StructureShape.new(name: 'Origin')
    OriginAccessControl = Shapes::StructureShape.new(name: 'OriginAccessControl')
    OriginAccessControlAlreadyExists = Shapes::StructureShape.new(name: 'OriginAccessControlAlreadyExists')
    OriginAccessControlConfig = Shapes::StructureShape.new(name: 'OriginAccessControlConfig')
    OriginAccessControlInUse = Shapes::StructureShape.new(name: 'OriginAccessControlInUse')
    OriginAccessControlList = Shapes::StructureShape.new(name: 'OriginAccessControlList')
    OriginAccessControlOriginTypes = Shapes::StringShape.new(name: 'OriginAccessControlOriginTypes')
    OriginAccessControlSigningBehaviors = Shapes::StringShape.new(name: 'OriginAccessControlSigningBehaviors')
    OriginAccessControlSigningProtocols = Shapes::StringShape.new(name: 'OriginAccessControlSigningProtocols')
    OriginAccessControlSummary = Shapes::StructureShape.new(name: 'OriginAccessControlSummary')
    OriginAccessControlSummaryList = Shapes::ListShape.new(name: 'OriginAccessControlSummaryList')
    OriginCustomHeader = Shapes::StructureShape.new(name: 'OriginCustomHeader')
    OriginCustomHeadersList = Shapes::ListShape.new(name: 'OriginCustomHeadersList')
    OriginGroup = Shapes::StructureShape.new(name: 'OriginGroup')
    OriginGroupFailoverCriteria = Shapes::StructureShape.new(name: 'OriginGroupFailoverCriteria')
    OriginGroupList = Shapes::ListShape.new(name: 'OriginGroupList')
    OriginGroupMember = Shapes::StructureShape.new(name: 'OriginGroupMember')
    OriginGroupMemberList = Shapes::ListShape.new(name: 'OriginGroupMemberList')
    OriginGroupMembers = Shapes::StructureShape.new(name: 'OriginGroupMembers')
    OriginGroups = Shapes::StructureShape.new(name: 'OriginGroups')
    OriginList = Shapes::ListShape.new(name: 'OriginList')
    OriginProtocolPolicy = Shapes::StringShape.new(name: 'OriginProtocolPolicy')
    OriginRequestPolicy = Shapes::StructureShape.new(name: 'OriginRequestPolicy')
    OriginRequestPolicyAlreadyExists = Shapes::StructureShape.new(name: 'OriginRequestPolicyAlreadyExists')
    OriginRequestPolicyConfig = Shapes::StructureShape.new(name: 'OriginRequestPolicyConfig')
    OriginRequestPolicyCookieBehavior = Shapes::StringShape.new(name: 'OriginRequestPolicyCookieBehavior')
    OriginRequestPolicyCookiesConfig = Shapes::StructureShape.new(name: 'OriginRequestPolicyCookiesConfig')
    OriginRequestPolicyHeaderBehavior = Shapes::StringShape.new(name: 'OriginRequestPolicyHeaderBehavior')
    OriginRequestPolicyHeadersConfig = Shapes::StructureShape.new(name: 'OriginRequestPolicyHeadersConfig')
    OriginRequestPolicyInUse = Shapes::StructureShape.new(name: 'OriginRequestPolicyInUse')
    OriginRequestPolicyList = Shapes::StructureShape.new(name: 'OriginRequestPolicyList')
    OriginRequestPolicyQueryStringBehavior = Shapes::StringShape.new(name: 'OriginRequestPolicyQueryStringBehavior')
    OriginRequestPolicyQueryStringsConfig = Shapes::StructureShape.new(name: 'OriginRequestPolicyQueryStringsConfig')
    OriginRequestPolicySummary = Shapes::StructureShape.new(name: 'OriginRequestPolicySummary')
    OriginRequestPolicySummaryList = Shapes::ListShape.new(name: 'OriginRequestPolicySummaryList')
    OriginRequestPolicyType = Shapes::StringShape.new(name: 'OriginRequestPolicyType')
    OriginShield = Shapes::StructureShape.new(name: 'OriginShield')
    OriginShieldRegion = Shapes::StringShape.new(name: 'OriginShieldRegion')
    OriginSslProtocols = Shapes::StructureShape.new(name: 'OriginSslProtocols')
    Origins = Shapes::StructureShape.new(name: 'Origins')
    ParametersInCacheKeyAndForwardedToOrigin = Shapes::StructureShape.new(name: 'ParametersInCacheKeyAndForwardedToOrigin')
    PathList = Shapes::ListShape.new(name: 'PathList')
    Paths = Shapes::StructureShape.new(name: 'Paths')
    PreconditionFailed = Shapes::StructureShape.new(name: 'PreconditionFailed')
    PriceClass = Shapes::StringShape.new(name: 'PriceClass')
    PublicKey = Shapes::StructureShape.new(name: 'PublicKey')
    PublicKeyAlreadyExists = Shapes::StructureShape.new(name: 'PublicKeyAlreadyExists')
    PublicKeyConfig = Shapes::StructureShape.new(name: 'PublicKeyConfig')
    PublicKeyIdList = Shapes::ListShape.new(name: 'PublicKeyIdList')
    PublicKeyInUse = Shapes::StructureShape.new(name: 'PublicKeyInUse')
    PublicKeyList = Shapes::StructureShape.new(name: 'PublicKeyList')
    PublicKeySummary = Shapes::StructureShape.new(name: 'PublicKeySummary')
    PublicKeySummaryList = Shapes::ListShape.new(name: 'PublicKeySummaryList')
    PublishFunctionRequest = Shapes::StructureShape.new(name: 'PublishFunctionRequest')
    PublishFunctionResult = Shapes::StructureShape.new(name: 'PublishFunctionResult')
    QueryArgProfile = Shapes::StructureShape.new(name: 'QueryArgProfile')
    QueryArgProfileConfig = Shapes::StructureShape.new(name: 'QueryArgProfileConfig')
    QueryArgProfileEmpty = Shapes::StructureShape.new(name: 'QueryArgProfileEmpty')
    QueryArgProfileList = Shapes::ListShape.new(name: 'QueryArgProfileList')
    QueryArgProfiles = Shapes::StructureShape.new(name: 'QueryArgProfiles')
    QueryStringCacheKeys = Shapes::StructureShape.new(name: 'QueryStringCacheKeys')
    QueryStringCacheKeysList = Shapes::ListShape.new(name: 'QueryStringCacheKeysList')
    QueryStringNames = Shapes::StructureShape.new(name: 'QueryStringNames')
    QueryStringNamesList = Shapes::ListShape.new(name: 'QueryStringNamesList')
    RealtimeLogConfig = Shapes::StructureShape.new(name: 'RealtimeLogConfig')
    RealtimeLogConfigAlreadyExists = Shapes::StructureShape.new(name: 'RealtimeLogConfigAlreadyExists')
    RealtimeLogConfigInUse = Shapes::StructureShape.new(name: 'RealtimeLogConfigInUse')
    RealtimeLogConfigList = Shapes::ListShape.new(name: 'RealtimeLogConfigList')
    RealtimeLogConfigOwnerMismatch = Shapes::StructureShape.new(name: 'RealtimeLogConfigOwnerMismatch')
    RealtimeLogConfigs = Shapes::StructureShape.new(name: 'RealtimeLogConfigs')
    RealtimeMetricsSubscriptionConfig = Shapes::StructureShape.new(name: 'RealtimeMetricsSubscriptionConfig')
    RealtimeMetricsSubscriptionStatus = Shapes::StringShape.new(name: 'RealtimeMetricsSubscriptionStatus')
    ReferrerPolicyList = Shapes::StringShape.new(name: 'ReferrerPolicyList')
    ResourceARN = Shapes::StringShape.new(name: 'ResourceARN')
    ResourceInUse = Shapes::StructureShape.new(name: 'ResourceInUse')
    ResponseHeadersPolicy = Shapes::StructureShape.new(name: 'ResponseHeadersPolicy')
    ResponseHeadersPolicyAccessControlAllowHeaders = Shapes::StructureShape.new(name: 'ResponseHeadersPolicyAccessControlAllowHeaders')
    ResponseHeadersPolicyAccessControlAllowMethods = Shapes::StructureShape.new(name: 'ResponseHeadersPolicyAccessControlAllowMethods')
    ResponseHeadersPolicyAccessControlAllowMethodsValues = Shapes::StringShape.new(name: 'ResponseHeadersPolicyAccessControlAllowMethodsValues')
    ResponseHeadersPolicyAccessControlAllowOrigins = Shapes::StructureShape.new(name: 'ResponseHeadersPolicyAccessControlAllowOrigins')
    ResponseHeadersPolicyAccessControlExposeHeaders = Shapes::StructureShape.new(name: 'ResponseHeadersPolicyAccessControlExposeHeaders')
    ResponseHeadersPolicyAlreadyExists = Shapes::StructureShape.new(name: 'ResponseHeadersPolicyAlreadyExists')
    ResponseHeadersPolicyConfig = Shapes::StructureShape.new(name: 'ResponseHeadersPolicyConfig')
    ResponseHeadersPolicyContentSecurityPolicy = Shapes::StructureShape.new(name: 'ResponseHeadersPolicyContentSecurityPolicy')
    ResponseHeadersPolicyContentTypeOptions = Shapes::StructureShape.new(name: 'ResponseHeadersPolicyContentTypeOptions')
    ResponseHeadersPolicyCorsConfig = Shapes::StructureShape.new(name: 'ResponseHeadersPolicyCorsConfig')
    ResponseHeadersPolicyCustomHeader = Shapes::StructureShape.new(name: 'ResponseHeadersPolicyCustomHeader')
    ResponseHeadersPolicyCustomHeaderList = Shapes::ListShape.new(name: 'ResponseHeadersPolicyCustomHeaderList')
    ResponseHeadersPolicyCustomHeadersConfig = Shapes::StructureShape.new(name: 'ResponseHeadersPolicyCustomHeadersConfig')
    ResponseHeadersPolicyFrameOptions = Shapes::StructureShape.new(name: 'ResponseHeadersPolicyFrameOptions')
    ResponseHeadersPolicyInUse = Shapes::StructureShape.new(name: 'ResponseHeadersPolicyInUse')
    ResponseHeadersPolicyList = Shapes::StructureShape.new(name: 'ResponseHeadersPolicyList')
    ResponseHeadersPolicyReferrerPolicy = Shapes::StructureShape.new(name: 'ResponseHeadersPolicyReferrerPolicy')
    ResponseHeadersPolicyRemoveHeader = Shapes::StructureShape.new(name: 'ResponseHeadersPolicyRemoveHeader')
    ResponseHeadersPolicyRemoveHeaderList = Shapes::ListShape.new(name: 'ResponseHeadersPolicyRemoveHeaderList')
    ResponseHeadersPolicyRemoveHeadersConfig = Shapes::StructureShape.new(name: 'ResponseHeadersPolicyRemoveHeadersConfig')
    ResponseHeadersPolicySecurityHeadersConfig = Shapes::StructureShape.new(name: 'ResponseHeadersPolicySecurityHeadersConfig')
    ResponseHeadersPolicyServerTimingHeadersConfig = Shapes::StructureShape.new(name: 'ResponseHeadersPolicyServerTimingHeadersConfig')
    ResponseHeadersPolicyStrictTransportSecurity = Shapes::StructureShape.new(name: 'ResponseHeadersPolicyStrictTransportSecurity')
    ResponseHeadersPolicySummary = Shapes::StructureShape.new(name: 'ResponseHeadersPolicySummary')
    ResponseHeadersPolicySummaryList = Shapes::ListShape.new(name: 'ResponseHeadersPolicySummaryList')
    ResponseHeadersPolicyType = Shapes::StringShape.new(name: 'ResponseHeadersPolicyType')
    ResponseHeadersPolicyXSSProtection = Shapes::StructureShape.new(name: 'ResponseHeadersPolicyXSSProtection')
    Restrictions = Shapes::StructureShape.new(name: 'Restrictions')
    S3Origin = Shapes::StructureShape.new(name: 'S3Origin')
    S3OriginConfig = Shapes::StructureShape.new(name: 'S3OriginConfig')
    SSLSupportMethod = Shapes::StringShape.new(name: 'SSLSupportMethod')
    SamplingRate = Shapes::FloatShape.new(name: 'SamplingRate')
    SessionStickinessConfig = Shapes::StructureShape.new(name: 'SessionStickinessConfig')
    Signer = Shapes::StructureShape.new(name: 'Signer')
    SignerList = Shapes::ListShape.new(name: 'SignerList')
    SslProtocol = Shapes::StringShape.new(name: 'SslProtocol')
    SslProtocolsList = Shapes::ListShape.new(name: 'SslProtocolsList')
    StagingDistributionDnsNameList = Shapes::ListShape.new(name: 'StagingDistributionDnsNameList')
    StagingDistributionDnsNames = Shapes::StructureShape.new(name: 'StagingDistributionDnsNames')
    StagingDistributionInUse = Shapes::StructureShape.new(name: 'StagingDistributionInUse')
    StatusCodeList = Shapes::ListShape.new(name: 'StatusCodeList')
    StatusCodes = Shapes::StructureShape.new(name: 'StatusCodes')
    StreamingDistribution = Shapes::StructureShape.new(name: 'StreamingDistribution')
    StreamingDistributionAlreadyExists = Shapes::StructureShape.new(name: 'StreamingDistributionAlreadyExists')
    StreamingDistributionConfig = Shapes::StructureShape.new(name: 'StreamingDistributionConfig')
    StreamingDistributionConfigWithTags = Shapes::StructureShape.new(name: 'StreamingDistributionConfigWithTags')
    StreamingDistributionList = Shapes::StructureShape.new(name: 'StreamingDistributionList')
    StreamingDistributionNotDisabled = Shapes::StructureShape.new(name: 'StreamingDistributionNotDisabled')
    StreamingDistributionSummary = Shapes::StructureShape.new(name: 'StreamingDistributionSummary')
    StreamingDistributionSummaryList = Shapes::ListShape.new(name: 'StreamingDistributionSummaryList')
    StreamingLoggingConfig = Shapes::StructureShape.new(name: 'StreamingLoggingConfig')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagKeys = Shapes::StructureShape.new(name: 'TagKeys')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::StructureShape.new(name: 'Tags')
    TestFunctionFailed = Shapes::StructureShape.new(name: 'TestFunctionFailed')
    TestFunctionRequest = Shapes::StructureShape.new(name: 'TestFunctionRequest')
    TestFunctionResult = Shapes::StructureShape.new(name: 'TestFunctionResult')
    TestResult = Shapes::StructureShape.new(name: 'TestResult')
    TooLongCSPInResponseHeadersPolicy = Shapes::StructureShape.new(name: 'TooLongCSPInResponseHeadersPolicy')
    TooManyCacheBehaviors = Shapes::StructureShape.new(name: 'TooManyCacheBehaviors')
    TooManyCachePolicies = Shapes::StructureShape.new(name: 'TooManyCachePolicies')
    TooManyCertificates = Shapes::StructureShape.new(name: 'TooManyCertificates')
    TooManyCloudFrontOriginAccessIdentities = Shapes::StructureShape.new(name: 'TooManyCloudFrontOriginAccessIdentities')
    TooManyContinuousDeploymentPolicies = Shapes::StructureShape.new(name: 'TooManyContinuousDeploymentPolicies')
    TooManyCookieNamesInWhiteList = Shapes::StructureShape.new(name: 'TooManyCookieNamesInWhiteList')
    TooManyCookiesInCachePolicy = Shapes::StructureShape.new(name: 'TooManyCookiesInCachePolicy')
    TooManyCookiesInOriginRequestPolicy = Shapes::StructureShape.new(name: 'TooManyCookiesInOriginRequestPolicy')
    TooManyCustomHeadersInResponseHeadersPolicy = Shapes::StructureShape.new(name: 'TooManyCustomHeadersInResponseHeadersPolicy')
    TooManyDistributionCNAMEs = Shapes::StructureShape.new(name: 'TooManyDistributionCNAMEs')
    TooManyDistributions = Shapes::StructureShape.new(name: 'TooManyDistributions')
    TooManyDistributionsAssociatedToCachePolicy = Shapes::StructureShape.new(name: 'TooManyDistributionsAssociatedToCachePolicy')
    TooManyDistributionsAssociatedToFieldLevelEncryptionConfig = Shapes::StructureShape.new(name: 'TooManyDistributionsAssociatedToFieldLevelEncryptionConfig')
    TooManyDistributionsAssociatedToKeyGroup = Shapes::StructureShape.new(name: 'TooManyDistributionsAssociatedToKeyGroup')
    TooManyDistributionsAssociatedToOriginAccessControl = Shapes::StructureShape.new(name: 'TooManyDistributionsAssociatedToOriginAccessControl')
    TooManyDistributionsAssociatedToOriginRequestPolicy = Shapes::StructureShape.new(name: 'TooManyDistributionsAssociatedToOriginRequestPolicy')
    TooManyDistributionsAssociatedToResponseHeadersPolicy = Shapes::StructureShape.new(name: 'TooManyDistributionsAssociatedToResponseHeadersPolicy')
    TooManyDistributionsWithFunctionAssociations = Shapes::StructureShape.new(name: 'TooManyDistributionsWithFunctionAssociations')
    TooManyDistributionsWithLambdaAssociations = Shapes::StructureShape.new(name: 'TooManyDistributionsWithLambdaAssociations')
    TooManyDistributionsWithSingleFunctionARN = Shapes::StructureShape.new(name: 'TooManyDistributionsWithSingleFunctionARN')
    TooManyFieldLevelEncryptionConfigs = Shapes::StructureShape.new(name: 'TooManyFieldLevelEncryptionConfigs')
    TooManyFieldLevelEncryptionContentTypeProfiles = Shapes::StructureShape.new(name: 'TooManyFieldLevelEncryptionContentTypeProfiles')
    TooManyFieldLevelEncryptionEncryptionEntities = Shapes::StructureShape.new(name: 'TooManyFieldLevelEncryptionEncryptionEntities')
    TooManyFieldLevelEncryptionFieldPatterns = Shapes::StructureShape.new(name: 'TooManyFieldLevelEncryptionFieldPatterns')
    TooManyFieldLevelEncryptionProfiles = Shapes::StructureShape.new(name: 'TooManyFieldLevelEncryptionProfiles')
    TooManyFieldLevelEncryptionQueryArgProfiles = Shapes::StructureShape.new(name: 'TooManyFieldLevelEncryptionQueryArgProfiles')
    TooManyFunctionAssociations = Shapes::StructureShape.new(name: 'TooManyFunctionAssociations')
    TooManyFunctions = Shapes::StructureShape.new(name: 'TooManyFunctions')
    TooManyHeadersInCachePolicy = Shapes::StructureShape.new(name: 'TooManyHeadersInCachePolicy')
    TooManyHeadersInForwardedValues = Shapes::StructureShape.new(name: 'TooManyHeadersInForwardedValues')
    TooManyHeadersInOriginRequestPolicy = Shapes::StructureShape.new(name: 'TooManyHeadersInOriginRequestPolicy')
    TooManyInvalidationsInProgress = Shapes::StructureShape.new(name: 'TooManyInvalidationsInProgress')
    TooManyKeyGroups = Shapes::StructureShape.new(name: 'TooManyKeyGroups')
    TooManyKeyGroupsAssociatedToDistribution = Shapes::StructureShape.new(name: 'TooManyKeyGroupsAssociatedToDistribution')
    TooManyLambdaFunctionAssociations = Shapes::StructureShape.new(name: 'TooManyLambdaFunctionAssociations')
    TooManyOriginAccessControls = Shapes::StructureShape.new(name: 'TooManyOriginAccessControls')
    TooManyOriginCustomHeaders = Shapes::StructureShape.new(name: 'TooManyOriginCustomHeaders')
    TooManyOriginGroupsPerDistribution = Shapes::StructureShape.new(name: 'TooManyOriginGroupsPerDistribution')
    TooManyOriginRequestPolicies = Shapes::StructureShape.new(name: 'TooManyOriginRequestPolicies')
    TooManyOrigins = Shapes::StructureShape.new(name: 'TooManyOrigins')
    TooManyPublicKeys = Shapes::StructureShape.new(name: 'TooManyPublicKeys')
    TooManyPublicKeysInKeyGroup = Shapes::StructureShape.new(name: 'TooManyPublicKeysInKeyGroup')
    TooManyQueryStringParameters = Shapes::StructureShape.new(name: 'TooManyQueryStringParameters')
    TooManyQueryStringsInCachePolicy = Shapes::StructureShape.new(name: 'TooManyQueryStringsInCachePolicy')
    TooManyQueryStringsInOriginRequestPolicy = Shapes::StructureShape.new(name: 'TooManyQueryStringsInOriginRequestPolicy')
    TooManyRealtimeLogConfigs = Shapes::StructureShape.new(name: 'TooManyRealtimeLogConfigs')
    TooManyRemoveHeadersInResponseHeadersPolicy = Shapes::StructureShape.new(name: 'TooManyRemoveHeadersInResponseHeadersPolicy')
    TooManyResponseHeadersPolicies = Shapes::StructureShape.new(name: 'TooManyResponseHeadersPolicies')
    TooManyStreamingDistributionCNAMEs = Shapes::StructureShape.new(name: 'TooManyStreamingDistributionCNAMEs')
    TooManyStreamingDistributions = Shapes::StructureShape.new(name: 'TooManyStreamingDistributions')
    TooManyTrustedSigners = Shapes::StructureShape.new(name: 'TooManyTrustedSigners')
    TrafficConfig = Shapes::StructureShape.new(name: 'TrafficConfig')
    TrustedKeyGroupDoesNotExist = Shapes::StructureShape.new(name: 'TrustedKeyGroupDoesNotExist')
    TrustedKeyGroupIdList = Shapes::ListShape.new(name: 'TrustedKeyGroupIdList')
    TrustedKeyGroups = Shapes::StructureShape.new(name: 'TrustedKeyGroups')
    TrustedSignerDoesNotExist = Shapes::StructureShape.new(name: 'TrustedSignerDoesNotExist')
    TrustedSigners = Shapes::StructureShape.new(name: 'TrustedSigners')
    UnsupportedOperation = Shapes::StructureShape.new(name: 'UnsupportedOperation')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateCachePolicyRequest = Shapes::StructureShape.new(name: 'UpdateCachePolicyRequest')
    UpdateCachePolicyResult = Shapes::StructureShape.new(name: 'UpdateCachePolicyResult')
    UpdateCloudFrontOriginAccessIdentityRequest = Shapes::StructureShape.new(name: 'UpdateCloudFrontOriginAccessIdentityRequest')
    UpdateCloudFrontOriginAccessIdentityResult = Shapes::StructureShape.new(name: 'UpdateCloudFrontOriginAccessIdentityResult')
    UpdateContinuousDeploymentPolicyRequest = Shapes::StructureShape.new(name: 'UpdateContinuousDeploymentPolicyRequest')
    UpdateContinuousDeploymentPolicyResult = Shapes::StructureShape.new(name: 'UpdateContinuousDeploymentPolicyResult')
    UpdateDistributionRequest = Shapes::StructureShape.new(name: 'UpdateDistributionRequest')
    UpdateDistributionResult = Shapes::StructureShape.new(name: 'UpdateDistributionResult')
    UpdateDistributionWithStagingConfigRequest = Shapes::StructureShape.new(name: 'UpdateDistributionWithStagingConfigRequest')
    UpdateDistributionWithStagingConfigResult = Shapes::StructureShape.new(name: 'UpdateDistributionWithStagingConfigResult')
    UpdateFieldLevelEncryptionConfigRequest = Shapes::StructureShape.new(name: 'UpdateFieldLevelEncryptionConfigRequest')
    UpdateFieldLevelEncryptionConfigResult = Shapes::StructureShape.new(name: 'UpdateFieldLevelEncryptionConfigResult')
    UpdateFieldLevelEncryptionProfileRequest = Shapes::StructureShape.new(name: 'UpdateFieldLevelEncryptionProfileRequest')
    UpdateFieldLevelEncryptionProfileResult = Shapes::StructureShape.new(name: 'UpdateFieldLevelEncryptionProfileResult')
    UpdateFunctionRequest = Shapes::StructureShape.new(name: 'UpdateFunctionRequest')
    UpdateFunctionResult = Shapes::StructureShape.new(name: 'UpdateFunctionResult')
    UpdateKeyGroupRequest = Shapes::StructureShape.new(name: 'UpdateKeyGroupRequest')
    UpdateKeyGroupResult = Shapes::StructureShape.new(name: 'UpdateKeyGroupResult')
    UpdateKeyValueStoreRequest = Shapes::StructureShape.new(name: 'UpdateKeyValueStoreRequest')
    UpdateKeyValueStoreResult = Shapes::StructureShape.new(name: 'UpdateKeyValueStoreResult')
    UpdateOriginAccessControlRequest = Shapes::StructureShape.new(name: 'UpdateOriginAccessControlRequest')
    UpdateOriginAccessControlResult = Shapes::StructureShape.new(name: 'UpdateOriginAccessControlResult')
    UpdateOriginRequestPolicyRequest = Shapes::StructureShape.new(name: 'UpdateOriginRequestPolicyRequest')
    UpdateOriginRequestPolicyResult = Shapes::StructureShape.new(name: 'UpdateOriginRequestPolicyResult')
    UpdatePublicKeyRequest = Shapes::StructureShape.new(name: 'UpdatePublicKeyRequest')
    UpdatePublicKeyResult = Shapes::StructureShape.new(name: 'UpdatePublicKeyResult')
    UpdateRealtimeLogConfigRequest = Shapes::StructureShape.new(name: 'UpdateRealtimeLogConfigRequest')
    UpdateRealtimeLogConfigResult = Shapes::StructureShape.new(name: 'UpdateRealtimeLogConfigResult')
    UpdateResponseHeadersPolicyRequest = Shapes::StructureShape.new(name: 'UpdateResponseHeadersPolicyRequest')
    UpdateResponseHeadersPolicyResult = Shapes::StructureShape.new(name: 'UpdateResponseHeadersPolicyResult')
    UpdateStreamingDistributionRequest = Shapes::StructureShape.new(name: 'UpdateStreamingDistributionRequest')
    UpdateStreamingDistributionResult = Shapes::StructureShape.new(name: 'UpdateStreamingDistributionResult')
    ViewerCertificate = Shapes::StructureShape.new(name: 'ViewerCertificate')
    ViewerProtocolPolicy = Shapes::StringShape.new(name: 'ViewerProtocolPolicy')
    aliasString = Shapes::StringShape.new(name: 'aliasString')
    boolean = Shapes::BooleanShape.new(name: 'boolean')
    distributionIdString = Shapes::StringShape.new(name: 'distributionIdString')
    float = Shapes::FloatShape.new(name: 'float')
    integer = Shapes::IntegerShape.new(name: 'integer')
    listConflictingAliasesMaxItemsInteger = Shapes::IntegerShape.new(name: 'listConflictingAliasesMaxItemsInteger')
    long = Shapes::IntegerShape.new(name: 'long')
    sensitiveStringType = Shapes::StringShape.new(name: 'sensitiveStringType')
    string = Shapes::StringShape.new(name: 'string')
    timestamp = Shapes::TimestampShape.new(name: 'timestamp')

    AccessControlAllowHeadersList.member = Shapes::ShapeRef.new(shape: string, location_name: "Header")

    AccessControlAllowMethodsList.member = Shapes::ShapeRef.new(shape: ResponseHeadersPolicyAccessControlAllowMethodsValues, location_name: "Method")

    AccessControlAllowOriginsList.member = Shapes::ShapeRef.new(shape: string, location_name: "Origin")

    AccessControlExposeHeadersList.member = Shapes::ShapeRef.new(shape: string, location_name: "Header")

    AccessDenied.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    AccessDenied.struct_class = Types::AccessDenied

    ActiveTrustedKeyGroups.add_member(:enabled, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "Enabled"))
    ActiveTrustedKeyGroups.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    ActiveTrustedKeyGroups.add_member(:items, Shapes::ShapeRef.new(shape: KGKeyPairIdsList, location_name: "Items"))
    ActiveTrustedKeyGroups.struct_class = Types::ActiveTrustedKeyGroups

    ActiveTrustedSigners.add_member(:enabled, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "Enabled"))
    ActiveTrustedSigners.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    ActiveTrustedSigners.add_member(:items, Shapes::ShapeRef.new(shape: SignerList, location_name: "Items"))
    ActiveTrustedSigners.struct_class = Types::ActiveTrustedSigners

    AliasICPRecordal.add_member(:cname, Shapes::ShapeRef.new(shape: string, location_name: "CNAME"))
    AliasICPRecordal.add_member(:icp_recordal_status, Shapes::ShapeRef.new(shape: ICPRecordalStatus, location_name: "ICPRecordalStatus"))
    AliasICPRecordal.struct_class = Types::AliasICPRecordal

    AliasICPRecordals.member = Shapes::ShapeRef.new(shape: AliasICPRecordal, location_name: "AliasICPRecordal")

    AliasList.member = Shapes::ShapeRef.new(shape: string, location_name: "CNAME")

    Aliases.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    Aliases.add_member(:items, Shapes::ShapeRef.new(shape: AliasList, location_name: "Items"))
    Aliases.struct_class = Types::Aliases

    AllowedMethods.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    AllowedMethods.add_member(:items, Shapes::ShapeRef.new(shape: MethodsList, required: true, location_name: "Items"))
    AllowedMethods.add_member(:cached_methods, Shapes::ShapeRef.new(shape: CachedMethods, location_name: "CachedMethods"))
    AllowedMethods.struct_class = Types::AllowedMethods

    AssociateAliasRequest.add_member(:target_distribution_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "TargetDistributionId"))
    AssociateAliasRequest.add_member(:alias, Shapes::ShapeRef.new(shape: string, required: true, location: "querystring", location_name: "Alias"))
    AssociateAliasRequest.struct_class = Types::AssociateAliasRequest

    AwsAccountNumberList.member = Shapes::ShapeRef.new(shape: string, location_name: "AwsAccountNumber")

    BatchTooLarge.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    BatchTooLarge.struct_class = Types::BatchTooLarge

    CNAMEAlreadyExists.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    CNAMEAlreadyExists.struct_class = Types::CNAMEAlreadyExists

    CacheBehavior.add_member(:path_pattern, Shapes::ShapeRef.new(shape: string, required: true, location_name: "PathPattern"))
    CacheBehavior.add_member(:target_origin_id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "TargetOriginId"))
    CacheBehavior.add_member(:trusted_signers, Shapes::ShapeRef.new(shape: TrustedSigners, location_name: "TrustedSigners"))
    CacheBehavior.add_member(:trusted_key_groups, Shapes::ShapeRef.new(shape: TrustedKeyGroups, location_name: "TrustedKeyGroups"))
    CacheBehavior.add_member(:viewer_protocol_policy, Shapes::ShapeRef.new(shape: ViewerProtocolPolicy, required: true, location_name: "ViewerProtocolPolicy"))
    CacheBehavior.add_member(:allowed_methods, Shapes::ShapeRef.new(shape: AllowedMethods, location_name: "AllowedMethods"))
    CacheBehavior.add_member(:smooth_streaming, Shapes::ShapeRef.new(shape: boolean, location_name: "SmoothStreaming"))
    CacheBehavior.add_member(:compress, Shapes::ShapeRef.new(shape: boolean, location_name: "Compress"))
    CacheBehavior.add_member(:lambda_function_associations, Shapes::ShapeRef.new(shape: LambdaFunctionAssociations, location_name: "LambdaFunctionAssociations"))
    CacheBehavior.add_member(:function_associations, Shapes::ShapeRef.new(shape: FunctionAssociations, location_name: "FunctionAssociations"))
    CacheBehavior.add_member(:field_level_encryption_id, Shapes::ShapeRef.new(shape: string, location_name: "FieldLevelEncryptionId"))
    CacheBehavior.add_member(:realtime_log_config_arn, Shapes::ShapeRef.new(shape: string, location_name: "RealtimeLogConfigArn"))
    CacheBehavior.add_member(:cache_policy_id, Shapes::ShapeRef.new(shape: string, location_name: "CachePolicyId"))
    CacheBehavior.add_member(:origin_request_policy_id, Shapes::ShapeRef.new(shape: string, location_name: "OriginRequestPolicyId"))
    CacheBehavior.add_member(:response_headers_policy_id, Shapes::ShapeRef.new(shape: string, location_name: "ResponseHeadersPolicyId"))
    CacheBehavior.add_member(:forwarded_values, Shapes::ShapeRef.new(shape: ForwardedValues, deprecated: true, location_name: "ForwardedValues"))
    CacheBehavior.add_member(:min_ttl, Shapes::ShapeRef.new(shape: long, deprecated: true, location_name: "MinTTL"))
    CacheBehavior.add_member(:default_ttl, Shapes::ShapeRef.new(shape: long, deprecated: true, location_name: "DefaultTTL"))
    CacheBehavior.add_member(:max_ttl, Shapes::ShapeRef.new(shape: long, deprecated: true, location_name: "MaxTTL"))
    CacheBehavior.struct_class = Types::CacheBehavior

    CacheBehaviorList.member = Shapes::ShapeRef.new(shape: CacheBehavior, location_name: "CacheBehavior")

    CacheBehaviors.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    CacheBehaviors.add_member(:items, Shapes::ShapeRef.new(shape: CacheBehaviorList, location_name: "Items"))
    CacheBehaviors.struct_class = Types::CacheBehaviors

    CachePolicy.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Id"))
    CachePolicy.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "LastModifiedTime"))
    CachePolicy.add_member(:cache_policy_config, Shapes::ShapeRef.new(shape: CachePolicyConfig, required: true, location_name: "CachePolicyConfig"))
    CachePolicy.struct_class = Types::CachePolicy

    CachePolicyAlreadyExists.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    CachePolicyAlreadyExists.struct_class = Types::CachePolicyAlreadyExists

    CachePolicyConfig.add_member(:comment, Shapes::ShapeRef.new(shape: string, location_name: "Comment"))
    CachePolicyConfig.add_member(:name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Name"))
    CachePolicyConfig.add_member(:default_ttl, Shapes::ShapeRef.new(shape: long, location_name: "DefaultTTL"))
    CachePolicyConfig.add_member(:max_ttl, Shapes::ShapeRef.new(shape: long, location_name: "MaxTTL"))
    CachePolicyConfig.add_member(:min_ttl, Shapes::ShapeRef.new(shape: long, required: true, location_name: "MinTTL"))
    CachePolicyConfig.add_member(:parameters_in_cache_key_and_forwarded_to_origin, Shapes::ShapeRef.new(shape: ParametersInCacheKeyAndForwardedToOrigin, location_name: "ParametersInCacheKeyAndForwardedToOrigin"))
    CachePolicyConfig.struct_class = Types::CachePolicyConfig

    CachePolicyCookiesConfig.add_member(:cookie_behavior, Shapes::ShapeRef.new(shape: CachePolicyCookieBehavior, required: true, location_name: "CookieBehavior"))
    CachePolicyCookiesConfig.add_member(:cookies, Shapes::ShapeRef.new(shape: CookieNames, location_name: "Cookies"))
    CachePolicyCookiesConfig.struct_class = Types::CachePolicyCookiesConfig

    CachePolicyHeadersConfig.add_member(:header_behavior, Shapes::ShapeRef.new(shape: CachePolicyHeaderBehavior, required: true, location_name: "HeaderBehavior"))
    CachePolicyHeadersConfig.add_member(:headers, Shapes::ShapeRef.new(shape: Headers, location_name: "Headers"))
    CachePolicyHeadersConfig.struct_class = Types::CachePolicyHeadersConfig

    CachePolicyInUse.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    CachePolicyInUse.struct_class = Types::CachePolicyInUse

    CachePolicyList.add_member(:next_marker, Shapes::ShapeRef.new(shape: string, location_name: "NextMarker"))
    CachePolicyList.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "MaxItems"))
    CachePolicyList.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    CachePolicyList.add_member(:items, Shapes::ShapeRef.new(shape: CachePolicySummaryList, location_name: "Items"))
    CachePolicyList.struct_class = Types::CachePolicyList

    CachePolicyQueryStringsConfig.add_member(:query_string_behavior, Shapes::ShapeRef.new(shape: CachePolicyQueryStringBehavior, required: true, location_name: "QueryStringBehavior"))
    CachePolicyQueryStringsConfig.add_member(:query_strings, Shapes::ShapeRef.new(shape: QueryStringNames, location_name: "QueryStrings"))
    CachePolicyQueryStringsConfig.struct_class = Types::CachePolicyQueryStringsConfig

    CachePolicySummary.add_member(:type, Shapes::ShapeRef.new(shape: CachePolicyType, required: true, location_name: "Type"))
    CachePolicySummary.add_member(:cache_policy, Shapes::ShapeRef.new(shape: CachePolicy, required: true, location_name: "CachePolicy"))
    CachePolicySummary.struct_class = Types::CachePolicySummary

    CachePolicySummaryList.member = Shapes::ShapeRef.new(shape: CachePolicySummary, location_name: "CachePolicySummary")

    CachedMethods.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    CachedMethods.add_member(:items, Shapes::ShapeRef.new(shape: MethodsList, required: true, location_name: "Items"))
    CachedMethods.struct_class = Types::CachedMethods

    CannotChangeImmutablePublicKeyFields.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    CannotChangeImmutablePublicKeyFields.struct_class = Types::CannotChangeImmutablePublicKeyFields

    CannotDeleteEntityWhileInUse.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    CannotDeleteEntityWhileInUse.struct_class = Types::CannotDeleteEntityWhileInUse

    CloudFrontOriginAccessIdentity.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Id"))
    CloudFrontOriginAccessIdentity.add_member(:s3_canonical_user_id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "S3CanonicalUserId"))
    CloudFrontOriginAccessIdentity.add_member(:cloud_front_origin_access_identity_config, Shapes::ShapeRef.new(shape: CloudFrontOriginAccessIdentityConfig, location_name: "CloudFrontOriginAccessIdentityConfig"))
    CloudFrontOriginAccessIdentity.struct_class = Types::CloudFrontOriginAccessIdentity

    CloudFrontOriginAccessIdentityAlreadyExists.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    CloudFrontOriginAccessIdentityAlreadyExists.struct_class = Types::CloudFrontOriginAccessIdentityAlreadyExists

    CloudFrontOriginAccessIdentityConfig.add_member(:caller_reference, Shapes::ShapeRef.new(shape: string, required: true, location_name: "CallerReference"))
    CloudFrontOriginAccessIdentityConfig.add_member(:comment, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Comment"))
    CloudFrontOriginAccessIdentityConfig.struct_class = Types::CloudFrontOriginAccessIdentityConfig

    CloudFrontOriginAccessIdentityInUse.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    CloudFrontOriginAccessIdentityInUse.struct_class = Types::CloudFrontOriginAccessIdentityInUse

    CloudFrontOriginAccessIdentityList.add_member(:marker, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Marker"))
    CloudFrontOriginAccessIdentityList.add_member(:next_marker, Shapes::ShapeRef.new(shape: string, location_name: "NextMarker"))
    CloudFrontOriginAccessIdentityList.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "MaxItems"))
    CloudFrontOriginAccessIdentityList.add_member(:is_truncated, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "IsTruncated"))
    CloudFrontOriginAccessIdentityList.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    CloudFrontOriginAccessIdentityList.add_member(:items, Shapes::ShapeRef.new(shape: CloudFrontOriginAccessIdentitySummaryList, location_name: "Items"))
    CloudFrontOriginAccessIdentityList.struct_class = Types::CloudFrontOriginAccessIdentityList

    CloudFrontOriginAccessIdentitySummary.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Id"))
    CloudFrontOriginAccessIdentitySummary.add_member(:s3_canonical_user_id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "S3CanonicalUserId"))
    CloudFrontOriginAccessIdentitySummary.add_member(:comment, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Comment"))
    CloudFrontOriginAccessIdentitySummary.struct_class = Types::CloudFrontOriginAccessIdentitySummary

    CloudFrontOriginAccessIdentitySummaryList.member = Shapes::ShapeRef.new(shape: CloudFrontOriginAccessIdentitySummary, location_name: "CloudFrontOriginAccessIdentitySummary")

    ConflictingAlias.add_member(:alias, Shapes::ShapeRef.new(shape: string, location_name: "Alias"))
    ConflictingAlias.add_member(:distribution_id, Shapes::ShapeRef.new(shape: string, location_name: "DistributionId"))
    ConflictingAlias.add_member(:account_id, Shapes::ShapeRef.new(shape: string, location_name: "AccountId"))
    ConflictingAlias.struct_class = Types::ConflictingAlias

    ConflictingAliases.member = Shapes::ShapeRef.new(shape: ConflictingAlias, location_name: "ConflictingAlias")

    ConflictingAliasesList.add_member(:next_marker, Shapes::ShapeRef.new(shape: string, location_name: "NextMarker"))
    ConflictingAliasesList.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, location_name: "MaxItems"))
    ConflictingAliasesList.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, location_name: "Quantity"))
    ConflictingAliasesList.add_member(:items, Shapes::ShapeRef.new(shape: ConflictingAliases, location_name: "Items"))
    ConflictingAliasesList.struct_class = Types::ConflictingAliasesList

    ContentTypeProfile.add_member(:format, Shapes::ShapeRef.new(shape: Format, required: true, location_name: "Format"))
    ContentTypeProfile.add_member(:profile_id, Shapes::ShapeRef.new(shape: string, location_name: "ProfileId"))
    ContentTypeProfile.add_member(:content_type, Shapes::ShapeRef.new(shape: string, required: true, location_name: "ContentType"))
    ContentTypeProfile.struct_class = Types::ContentTypeProfile

    ContentTypeProfileConfig.add_member(:forward_when_content_type_is_unknown, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "ForwardWhenContentTypeIsUnknown"))
    ContentTypeProfileConfig.add_member(:content_type_profiles, Shapes::ShapeRef.new(shape: ContentTypeProfiles, location_name: "ContentTypeProfiles"))
    ContentTypeProfileConfig.struct_class = Types::ContentTypeProfileConfig

    ContentTypeProfileList.member = Shapes::ShapeRef.new(shape: ContentTypeProfile, location_name: "ContentTypeProfile")

    ContentTypeProfiles.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    ContentTypeProfiles.add_member(:items, Shapes::ShapeRef.new(shape: ContentTypeProfileList, location_name: "Items"))
    ContentTypeProfiles.struct_class = Types::ContentTypeProfiles

    ContinuousDeploymentPolicy.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Id"))
    ContinuousDeploymentPolicy.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "LastModifiedTime"))
    ContinuousDeploymentPolicy.add_member(:continuous_deployment_policy_config, Shapes::ShapeRef.new(shape: ContinuousDeploymentPolicyConfig, required: true, location_name: "ContinuousDeploymentPolicyConfig"))
    ContinuousDeploymentPolicy.struct_class = Types::ContinuousDeploymentPolicy

    ContinuousDeploymentPolicyAlreadyExists.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    ContinuousDeploymentPolicyAlreadyExists.struct_class = Types::ContinuousDeploymentPolicyAlreadyExists

    ContinuousDeploymentPolicyConfig.add_member(:staging_distribution_dns_names, Shapes::ShapeRef.new(shape: StagingDistributionDnsNames, required: true, location_name: "StagingDistributionDnsNames"))
    ContinuousDeploymentPolicyConfig.add_member(:enabled, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "Enabled"))
    ContinuousDeploymentPolicyConfig.add_member(:traffic_config, Shapes::ShapeRef.new(shape: TrafficConfig, location_name: "TrafficConfig"))
    ContinuousDeploymentPolicyConfig.struct_class = Types::ContinuousDeploymentPolicyConfig

    ContinuousDeploymentPolicyInUse.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    ContinuousDeploymentPolicyInUse.struct_class = Types::ContinuousDeploymentPolicyInUse

    ContinuousDeploymentPolicyList.add_member(:next_marker, Shapes::ShapeRef.new(shape: string, location_name: "NextMarker"))
    ContinuousDeploymentPolicyList.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "MaxItems"))
    ContinuousDeploymentPolicyList.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    ContinuousDeploymentPolicyList.add_member(:items, Shapes::ShapeRef.new(shape: ContinuousDeploymentPolicySummaryList, location_name: "Items"))
    ContinuousDeploymentPolicyList.struct_class = Types::ContinuousDeploymentPolicyList

    ContinuousDeploymentPolicySummary.add_member(:continuous_deployment_policy, Shapes::ShapeRef.new(shape: ContinuousDeploymentPolicy, required: true, location_name: "ContinuousDeploymentPolicy"))
    ContinuousDeploymentPolicySummary.struct_class = Types::ContinuousDeploymentPolicySummary

    ContinuousDeploymentPolicySummaryList.member = Shapes::ShapeRef.new(shape: ContinuousDeploymentPolicySummary, location_name: "ContinuousDeploymentPolicySummary")

    ContinuousDeploymentSingleHeaderConfig.add_member(:header, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Header"))
    ContinuousDeploymentSingleHeaderConfig.add_member(:value, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Value"))
    ContinuousDeploymentSingleHeaderConfig.struct_class = Types::ContinuousDeploymentSingleHeaderConfig

    ContinuousDeploymentSingleWeightConfig.add_member(:weight, Shapes::ShapeRef.new(shape: float, required: true, location_name: "Weight"))
    ContinuousDeploymentSingleWeightConfig.add_member(:session_stickiness_config, Shapes::ShapeRef.new(shape: SessionStickinessConfig, location_name: "SessionStickinessConfig"))
    ContinuousDeploymentSingleWeightConfig.struct_class = Types::ContinuousDeploymentSingleWeightConfig

    CookieNameList.member = Shapes::ShapeRef.new(shape: string, location_name: "Name")

    CookieNames.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    CookieNames.add_member(:items, Shapes::ShapeRef.new(shape: CookieNameList, location_name: "Items"))
    CookieNames.struct_class = Types::CookieNames

    CookiePreference.add_member(:forward, Shapes::ShapeRef.new(shape: ItemSelection, required: true, location_name: "Forward"))
    CookiePreference.add_member(:whitelisted_names, Shapes::ShapeRef.new(shape: CookieNames, location_name: "WhitelistedNames"))
    CookiePreference.struct_class = Types::CookiePreference

    CopyDistributionRequest.add_member(:primary_distribution_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "PrimaryDistributionId"))
    CopyDistributionRequest.add_member(:staging, Shapes::ShapeRef.new(shape: boolean, location: "header", location_name: "Staging"))
    CopyDistributionRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "If-Match"))
    CopyDistributionRequest.add_member(:caller_reference, Shapes::ShapeRef.new(shape: string, required: true, location_name: "CallerReference"))
    CopyDistributionRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: boolean, location_name: "Enabled"))
    CopyDistributionRequest.struct_class = Types::CopyDistributionRequest

    CopyDistributionResult.add_member(:distribution, Shapes::ShapeRef.new(shape: Distribution, location_name: "Distribution"))
    CopyDistributionResult.add_member(:location, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "Location"))
    CopyDistributionResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    CopyDistributionResult.struct_class = Types::CopyDistributionResult
    CopyDistributionResult[:payload] = :distribution
    CopyDistributionResult[:payload_member] = CopyDistributionResult.member(:distribution)

    CreateCachePolicyRequest.add_member(:cache_policy_config, Shapes::ShapeRef.new(shape: CachePolicyConfig, required: true, location_name: "CachePolicyConfig", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}}))
    CreateCachePolicyRequest.struct_class = Types::CreateCachePolicyRequest
    CreateCachePolicyRequest[:payload] = :cache_policy_config
    CreateCachePolicyRequest[:payload_member] = CreateCachePolicyRequest.member(:cache_policy_config)

    CreateCachePolicyResult.add_member(:cache_policy, Shapes::ShapeRef.new(shape: CachePolicy, location_name: "CachePolicy"))
    CreateCachePolicyResult.add_member(:location, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "Location"))
    CreateCachePolicyResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    CreateCachePolicyResult.struct_class = Types::CreateCachePolicyResult
    CreateCachePolicyResult[:payload] = :cache_policy
    CreateCachePolicyResult[:payload_member] = CreateCachePolicyResult.member(:cache_policy)

    CreateCloudFrontOriginAccessIdentityRequest.add_member(:cloud_front_origin_access_identity_config, Shapes::ShapeRef.new(shape: CloudFrontOriginAccessIdentityConfig, required: true, location_name: "CloudFrontOriginAccessIdentityConfig", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}}))
    CreateCloudFrontOriginAccessIdentityRequest.struct_class = Types::CreateCloudFrontOriginAccessIdentityRequest
    CreateCloudFrontOriginAccessIdentityRequest[:payload] = :cloud_front_origin_access_identity_config
    CreateCloudFrontOriginAccessIdentityRequest[:payload_member] = CreateCloudFrontOriginAccessIdentityRequest.member(:cloud_front_origin_access_identity_config)

    CreateCloudFrontOriginAccessIdentityResult.add_member(:cloud_front_origin_access_identity, Shapes::ShapeRef.new(shape: CloudFrontOriginAccessIdentity, location_name: "CloudFrontOriginAccessIdentity"))
    CreateCloudFrontOriginAccessIdentityResult.add_member(:location, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "Location"))
    CreateCloudFrontOriginAccessIdentityResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    CreateCloudFrontOriginAccessIdentityResult.struct_class = Types::CreateCloudFrontOriginAccessIdentityResult
    CreateCloudFrontOriginAccessIdentityResult[:payload] = :cloud_front_origin_access_identity
    CreateCloudFrontOriginAccessIdentityResult[:payload_member] = CreateCloudFrontOriginAccessIdentityResult.member(:cloud_front_origin_access_identity)

    CreateContinuousDeploymentPolicyRequest.add_member(:continuous_deployment_policy_config, Shapes::ShapeRef.new(shape: ContinuousDeploymentPolicyConfig, required: true, location_name: "ContinuousDeploymentPolicyConfig", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}}))
    CreateContinuousDeploymentPolicyRequest.struct_class = Types::CreateContinuousDeploymentPolicyRequest
    CreateContinuousDeploymentPolicyRequest[:payload] = :continuous_deployment_policy_config
    CreateContinuousDeploymentPolicyRequest[:payload_member] = CreateContinuousDeploymentPolicyRequest.member(:continuous_deployment_policy_config)

    CreateContinuousDeploymentPolicyResult.add_member(:continuous_deployment_policy, Shapes::ShapeRef.new(shape: ContinuousDeploymentPolicy, location_name: "ContinuousDeploymentPolicy"))
    CreateContinuousDeploymentPolicyResult.add_member(:location, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "Location"))
    CreateContinuousDeploymentPolicyResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    CreateContinuousDeploymentPolicyResult.struct_class = Types::CreateContinuousDeploymentPolicyResult
    CreateContinuousDeploymentPolicyResult[:payload] = :continuous_deployment_policy
    CreateContinuousDeploymentPolicyResult[:payload_member] = CreateContinuousDeploymentPolicyResult.member(:continuous_deployment_policy)

    CreateDistributionRequest.add_member(:distribution_config, Shapes::ShapeRef.new(shape: DistributionConfig, required: true, location_name: "DistributionConfig", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}}))
    CreateDistributionRequest.struct_class = Types::CreateDistributionRequest
    CreateDistributionRequest[:payload] = :distribution_config
    CreateDistributionRequest[:payload_member] = CreateDistributionRequest.member(:distribution_config)

    CreateDistributionResult.add_member(:distribution, Shapes::ShapeRef.new(shape: Distribution, location_name: "Distribution"))
    CreateDistributionResult.add_member(:location, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "Location"))
    CreateDistributionResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    CreateDistributionResult.struct_class = Types::CreateDistributionResult
    CreateDistributionResult[:payload] = :distribution
    CreateDistributionResult[:payload_member] = CreateDistributionResult.member(:distribution)

    CreateDistributionWithTagsRequest.add_member(:distribution_config_with_tags, Shapes::ShapeRef.new(shape: DistributionConfigWithTags, required: true, location_name: "DistributionConfigWithTags", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}}))
    CreateDistributionWithTagsRequest.struct_class = Types::CreateDistributionWithTagsRequest
    CreateDistributionWithTagsRequest[:payload] = :distribution_config_with_tags
    CreateDistributionWithTagsRequest[:payload_member] = CreateDistributionWithTagsRequest.member(:distribution_config_with_tags)

    CreateDistributionWithTagsResult.add_member(:distribution, Shapes::ShapeRef.new(shape: Distribution, location_name: "Distribution"))
    CreateDistributionWithTagsResult.add_member(:location, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "Location"))
    CreateDistributionWithTagsResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    CreateDistributionWithTagsResult.struct_class = Types::CreateDistributionWithTagsResult
    CreateDistributionWithTagsResult[:payload] = :distribution
    CreateDistributionWithTagsResult[:payload_member] = CreateDistributionWithTagsResult.member(:distribution)

    CreateFieldLevelEncryptionConfigRequest.add_member(:field_level_encryption_config, Shapes::ShapeRef.new(shape: FieldLevelEncryptionConfig, required: true, location_name: "FieldLevelEncryptionConfig", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}}))
    CreateFieldLevelEncryptionConfigRequest.struct_class = Types::CreateFieldLevelEncryptionConfigRequest
    CreateFieldLevelEncryptionConfigRequest[:payload] = :field_level_encryption_config
    CreateFieldLevelEncryptionConfigRequest[:payload_member] = CreateFieldLevelEncryptionConfigRequest.member(:field_level_encryption_config)

    CreateFieldLevelEncryptionConfigResult.add_member(:field_level_encryption, Shapes::ShapeRef.new(shape: FieldLevelEncryption, location_name: "FieldLevelEncryption"))
    CreateFieldLevelEncryptionConfigResult.add_member(:location, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "Location"))
    CreateFieldLevelEncryptionConfigResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    CreateFieldLevelEncryptionConfigResult.struct_class = Types::CreateFieldLevelEncryptionConfigResult
    CreateFieldLevelEncryptionConfigResult[:payload] = :field_level_encryption
    CreateFieldLevelEncryptionConfigResult[:payload_member] = CreateFieldLevelEncryptionConfigResult.member(:field_level_encryption)

    CreateFieldLevelEncryptionProfileRequest.add_member(:field_level_encryption_profile_config, Shapes::ShapeRef.new(shape: FieldLevelEncryptionProfileConfig, required: true, location_name: "FieldLevelEncryptionProfileConfig", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}}))
    CreateFieldLevelEncryptionProfileRequest.struct_class = Types::CreateFieldLevelEncryptionProfileRequest
    CreateFieldLevelEncryptionProfileRequest[:payload] = :field_level_encryption_profile_config
    CreateFieldLevelEncryptionProfileRequest[:payload_member] = CreateFieldLevelEncryptionProfileRequest.member(:field_level_encryption_profile_config)

    CreateFieldLevelEncryptionProfileResult.add_member(:field_level_encryption_profile, Shapes::ShapeRef.new(shape: FieldLevelEncryptionProfile, location_name: "FieldLevelEncryptionProfile"))
    CreateFieldLevelEncryptionProfileResult.add_member(:location, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "Location"))
    CreateFieldLevelEncryptionProfileResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    CreateFieldLevelEncryptionProfileResult.struct_class = Types::CreateFieldLevelEncryptionProfileResult
    CreateFieldLevelEncryptionProfileResult[:payload] = :field_level_encryption_profile
    CreateFieldLevelEncryptionProfileResult[:payload_member] = CreateFieldLevelEncryptionProfileResult.member(:field_level_encryption_profile)

    CreateFunctionRequest.add_member(:name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location_name: "Name"))
    CreateFunctionRequest.add_member(:function_config, Shapes::ShapeRef.new(shape: FunctionConfig, required: true, location_name: "FunctionConfig"))
    CreateFunctionRequest.add_member(:function_code, Shapes::ShapeRef.new(shape: FunctionBlob, required: true, location_name: "FunctionCode"))
    CreateFunctionRequest.struct_class = Types::CreateFunctionRequest

    CreateFunctionResult.add_member(:function_summary, Shapes::ShapeRef.new(shape: FunctionSummary, location_name: "FunctionSummary"))
    CreateFunctionResult.add_member(:location, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "Location"))
    CreateFunctionResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    CreateFunctionResult.struct_class = Types::CreateFunctionResult
    CreateFunctionResult[:payload] = :function_summary
    CreateFunctionResult[:payload_member] = CreateFunctionResult.member(:function_summary)

    CreateInvalidationRequest.add_member(:distribution_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "DistributionId"))
    CreateInvalidationRequest.add_member(:invalidation_batch, Shapes::ShapeRef.new(shape: InvalidationBatch, required: true, location_name: "InvalidationBatch", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}}))
    CreateInvalidationRequest.struct_class = Types::CreateInvalidationRequest
    CreateInvalidationRequest[:payload] = :invalidation_batch
    CreateInvalidationRequest[:payload_member] = CreateInvalidationRequest.member(:invalidation_batch)

    CreateInvalidationResult.add_member(:location, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "Location"))
    CreateInvalidationResult.add_member(:invalidation, Shapes::ShapeRef.new(shape: Invalidation, location_name: "Invalidation"))
    CreateInvalidationResult.struct_class = Types::CreateInvalidationResult
    CreateInvalidationResult[:payload] = :invalidation
    CreateInvalidationResult[:payload_member] = CreateInvalidationResult.member(:invalidation)

    CreateKeyGroupRequest.add_member(:key_group_config, Shapes::ShapeRef.new(shape: KeyGroupConfig, required: true, location_name: "KeyGroupConfig", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}}))
    CreateKeyGroupRequest.struct_class = Types::CreateKeyGroupRequest
    CreateKeyGroupRequest[:payload] = :key_group_config
    CreateKeyGroupRequest[:payload_member] = CreateKeyGroupRequest.member(:key_group_config)

    CreateKeyGroupResult.add_member(:key_group, Shapes::ShapeRef.new(shape: KeyGroup, location_name: "KeyGroup"))
    CreateKeyGroupResult.add_member(:location, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "Location"))
    CreateKeyGroupResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    CreateKeyGroupResult.struct_class = Types::CreateKeyGroupResult
    CreateKeyGroupResult[:payload] = :key_group
    CreateKeyGroupResult[:payload_member] = CreateKeyGroupResult.member(:key_group)

    CreateKeyValueStoreRequest.add_member(:name, Shapes::ShapeRef.new(shape: KeyValueStoreName, required: true, location_name: "Name"))
    CreateKeyValueStoreRequest.add_member(:comment, Shapes::ShapeRef.new(shape: KeyValueStoreComment, location_name: "Comment"))
    CreateKeyValueStoreRequest.add_member(:import_source, Shapes::ShapeRef.new(shape: ImportSource, location_name: "ImportSource"))
    CreateKeyValueStoreRequest.struct_class = Types::CreateKeyValueStoreRequest

    CreateKeyValueStoreResult.add_member(:key_value_store, Shapes::ShapeRef.new(shape: KeyValueStore, location_name: "KeyValueStore"))
    CreateKeyValueStoreResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    CreateKeyValueStoreResult.add_member(:location, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "Location"))
    CreateKeyValueStoreResult.struct_class = Types::CreateKeyValueStoreResult
    CreateKeyValueStoreResult[:payload] = :key_value_store
    CreateKeyValueStoreResult[:payload_member] = CreateKeyValueStoreResult.member(:key_value_store)

    CreateMonitoringSubscriptionRequest.add_member(:distribution_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "DistributionId"))
    CreateMonitoringSubscriptionRequest.add_member(:monitoring_subscription, Shapes::ShapeRef.new(shape: MonitoringSubscription, required: true, location_name: "MonitoringSubscription", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}}))
    CreateMonitoringSubscriptionRequest.struct_class = Types::CreateMonitoringSubscriptionRequest
    CreateMonitoringSubscriptionRequest[:payload] = :monitoring_subscription
    CreateMonitoringSubscriptionRequest[:payload_member] = CreateMonitoringSubscriptionRequest.member(:monitoring_subscription)

    CreateMonitoringSubscriptionResult.add_member(:monitoring_subscription, Shapes::ShapeRef.new(shape: MonitoringSubscription, location_name: "MonitoringSubscription"))
    CreateMonitoringSubscriptionResult.struct_class = Types::CreateMonitoringSubscriptionResult
    CreateMonitoringSubscriptionResult[:payload] = :monitoring_subscription
    CreateMonitoringSubscriptionResult[:payload_member] = CreateMonitoringSubscriptionResult.member(:monitoring_subscription)

    CreateOriginAccessControlRequest.add_member(:origin_access_control_config, Shapes::ShapeRef.new(shape: OriginAccessControlConfig, required: true, location_name: "OriginAccessControlConfig", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}}))
    CreateOriginAccessControlRequest.struct_class = Types::CreateOriginAccessControlRequest
    CreateOriginAccessControlRequest[:payload] = :origin_access_control_config
    CreateOriginAccessControlRequest[:payload_member] = CreateOriginAccessControlRequest.member(:origin_access_control_config)

    CreateOriginAccessControlResult.add_member(:origin_access_control, Shapes::ShapeRef.new(shape: OriginAccessControl, location_name: "OriginAccessControl"))
    CreateOriginAccessControlResult.add_member(:location, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "Location"))
    CreateOriginAccessControlResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    CreateOriginAccessControlResult.struct_class = Types::CreateOriginAccessControlResult
    CreateOriginAccessControlResult[:payload] = :origin_access_control
    CreateOriginAccessControlResult[:payload_member] = CreateOriginAccessControlResult.member(:origin_access_control)

    CreateOriginRequestPolicyRequest.add_member(:origin_request_policy_config, Shapes::ShapeRef.new(shape: OriginRequestPolicyConfig, required: true, location_name: "OriginRequestPolicyConfig", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}}))
    CreateOriginRequestPolicyRequest.struct_class = Types::CreateOriginRequestPolicyRequest
    CreateOriginRequestPolicyRequest[:payload] = :origin_request_policy_config
    CreateOriginRequestPolicyRequest[:payload_member] = CreateOriginRequestPolicyRequest.member(:origin_request_policy_config)

    CreateOriginRequestPolicyResult.add_member(:origin_request_policy, Shapes::ShapeRef.new(shape: OriginRequestPolicy, location_name: "OriginRequestPolicy"))
    CreateOriginRequestPolicyResult.add_member(:location, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "Location"))
    CreateOriginRequestPolicyResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    CreateOriginRequestPolicyResult.struct_class = Types::CreateOriginRequestPolicyResult
    CreateOriginRequestPolicyResult[:payload] = :origin_request_policy
    CreateOriginRequestPolicyResult[:payload_member] = CreateOriginRequestPolicyResult.member(:origin_request_policy)

    CreatePublicKeyRequest.add_member(:public_key_config, Shapes::ShapeRef.new(shape: PublicKeyConfig, required: true, location_name: "PublicKeyConfig", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}}))
    CreatePublicKeyRequest.struct_class = Types::CreatePublicKeyRequest
    CreatePublicKeyRequest[:payload] = :public_key_config
    CreatePublicKeyRequest[:payload_member] = CreatePublicKeyRequest.member(:public_key_config)

    CreatePublicKeyResult.add_member(:public_key, Shapes::ShapeRef.new(shape: PublicKey, location_name: "PublicKey"))
    CreatePublicKeyResult.add_member(:location, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "Location"))
    CreatePublicKeyResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    CreatePublicKeyResult.struct_class = Types::CreatePublicKeyResult
    CreatePublicKeyResult[:payload] = :public_key
    CreatePublicKeyResult[:payload_member] = CreatePublicKeyResult.member(:public_key)

    CreateRealtimeLogConfigRequest.add_member(:end_points, Shapes::ShapeRef.new(shape: EndPointList, required: true, location_name: "EndPoints"))
    CreateRealtimeLogConfigRequest.add_member(:fields, Shapes::ShapeRef.new(shape: FieldList, required: true, location_name: "Fields"))
    CreateRealtimeLogConfigRequest.add_member(:name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Name"))
    CreateRealtimeLogConfigRequest.add_member(:sampling_rate, Shapes::ShapeRef.new(shape: long, required: true, location_name: "SamplingRate"))
    CreateRealtimeLogConfigRequest.struct_class = Types::CreateRealtimeLogConfigRequest

    CreateRealtimeLogConfigResult.add_member(:realtime_log_config, Shapes::ShapeRef.new(shape: RealtimeLogConfig, location_name: "RealtimeLogConfig"))
    CreateRealtimeLogConfigResult.struct_class = Types::CreateRealtimeLogConfigResult

    CreateResponseHeadersPolicyRequest.add_member(:response_headers_policy_config, Shapes::ShapeRef.new(shape: ResponseHeadersPolicyConfig, required: true, location_name: "ResponseHeadersPolicyConfig", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}}))
    CreateResponseHeadersPolicyRequest.struct_class = Types::CreateResponseHeadersPolicyRequest
    CreateResponseHeadersPolicyRequest[:payload] = :response_headers_policy_config
    CreateResponseHeadersPolicyRequest[:payload_member] = CreateResponseHeadersPolicyRequest.member(:response_headers_policy_config)

    CreateResponseHeadersPolicyResult.add_member(:response_headers_policy, Shapes::ShapeRef.new(shape: ResponseHeadersPolicy, location_name: "ResponseHeadersPolicy"))
    CreateResponseHeadersPolicyResult.add_member(:location, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "Location"))
    CreateResponseHeadersPolicyResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    CreateResponseHeadersPolicyResult.struct_class = Types::CreateResponseHeadersPolicyResult
    CreateResponseHeadersPolicyResult[:payload] = :response_headers_policy
    CreateResponseHeadersPolicyResult[:payload_member] = CreateResponseHeadersPolicyResult.member(:response_headers_policy)

    CreateStreamingDistributionRequest.add_member(:streaming_distribution_config, Shapes::ShapeRef.new(shape: StreamingDistributionConfig, required: true, location_name: "StreamingDistributionConfig", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}}))
    CreateStreamingDistributionRequest.struct_class = Types::CreateStreamingDistributionRequest
    CreateStreamingDistributionRequest[:payload] = :streaming_distribution_config
    CreateStreamingDistributionRequest[:payload_member] = CreateStreamingDistributionRequest.member(:streaming_distribution_config)

    CreateStreamingDistributionResult.add_member(:streaming_distribution, Shapes::ShapeRef.new(shape: StreamingDistribution, location_name: "StreamingDistribution"))
    CreateStreamingDistributionResult.add_member(:location, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "Location"))
    CreateStreamingDistributionResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    CreateStreamingDistributionResult.struct_class = Types::CreateStreamingDistributionResult
    CreateStreamingDistributionResult[:payload] = :streaming_distribution
    CreateStreamingDistributionResult[:payload_member] = CreateStreamingDistributionResult.member(:streaming_distribution)

    CreateStreamingDistributionWithTagsRequest.add_member(:streaming_distribution_config_with_tags, Shapes::ShapeRef.new(shape: StreamingDistributionConfigWithTags, required: true, location_name: "StreamingDistributionConfigWithTags", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}}))
    CreateStreamingDistributionWithTagsRequest.struct_class = Types::CreateStreamingDistributionWithTagsRequest
    CreateStreamingDistributionWithTagsRequest[:payload] = :streaming_distribution_config_with_tags
    CreateStreamingDistributionWithTagsRequest[:payload_member] = CreateStreamingDistributionWithTagsRequest.member(:streaming_distribution_config_with_tags)

    CreateStreamingDistributionWithTagsResult.add_member(:streaming_distribution, Shapes::ShapeRef.new(shape: StreamingDistribution, location_name: "StreamingDistribution"))
    CreateStreamingDistributionWithTagsResult.add_member(:location, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "Location"))
    CreateStreamingDistributionWithTagsResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    CreateStreamingDistributionWithTagsResult.struct_class = Types::CreateStreamingDistributionWithTagsResult
    CreateStreamingDistributionWithTagsResult[:payload] = :streaming_distribution
    CreateStreamingDistributionWithTagsResult[:payload_member] = CreateStreamingDistributionWithTagsResult.member(:streaming_distribution)

    CustomErrorResponse.add_member(:error_code, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "ErrorCode"))
    CustomErrorResponse.add_member(:response_page_path, Shapes::ShapeRef.new(shape: string, location_name: "ResponsePagePath"))
    CustomErrorResponse.add_member(:response_code, Shapes::ShapeRef.new(shape: string, location_name: "ResponseCode"))
    CustomErrorResponse.add_member(:error_caching_min_ttl, Shapes::ShapeRef.new(shape: long, location_name: "ErrorCachingMinTTL"))
    CustomErrorResponse.struct_class = Types::CustomErrorResponse

    CustomErrorResponseList.member = Shapes::ShapeRef.new(shape: CustomErrorResponse, location_name: "CustomErrorResponse")

    CustomErrorResponses.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    CustomErrorResponses.add_member(:items, Shapes::ShapeRef.new(shape: CustomErrorResponseList, location_name: "Items"))
    CustomErrorResponses.struct_class = Types::CustomErrorResponses

    CustomHeaders.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    CustomHeaders.add_member(:items, Shapes::ShapeRef.new(shape: OriginCustomHeadersList, location_name: "Items"))
    CustomHeaders.struct_class = Types::CustomHeaders

    CustomOriginConfig.add_member(:http_port, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "HTTPPort"))
    CustomOriginConfig.add_member(:https_port, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "HTTPSPort"))
    CustomOriginConfig.add_member(:origin_protocol_policy, Shapes::ShapeRef.new(shape: OriginProtocolPolicy, required: true, location_name: "OriginProtocolPolicy"))
    CustomOriginConfig.add_member(:origin_ssl_protocols, Shapes::ShapeRef.new(shape: OriginSslProtocols, location_name: "OriginSslProtocols"))
    CustomOriginConfig.add_member(:origin_read_timeout, Shapes::ShapeRef.new(shape: integer, location_name: "OriginReadTimeout"))
    CustomOriginConfig.add_member(:origin_keepalive_timeout, Shapes::ShapeRef.new(shape: integer, location_name: "OriginKeepaliveTimeout"))
    CustomOriginConfig.struct_class = Types::CustomOriginConfig

    DefaultCacheBehavior.add_member(:target_origin_id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "TargetOriginId"))
    DefaultCacheBehavior.add_member(:trusted_signers, Shapes::ShapeRef.new(shape: TrustedSigners, location_name: "TrustedSigners"))
    DefaultCacheBehavior.add_member(:trusted_key_groups, Shapes::ShapeRef.new(shape: TrustedKeyGroups, location_name: "TrustedKeyGroups"))
    DefaultCacheBehavior.add_member(:viewer_protocol_policy, Shapes::ShapeRef.new(shape: ViewerProtocolPolicy, required: true, location_name: "ViewerProtocolPolicy"))
    DefaultCacheBehavior.add_member(:allowed_methods, Shapes::ShapeRef.new(shape: AllowedMethods, location_name: "AllowedMethods"))
    DefaultCacheBehavior.add_member(:smooth_streaming, Shapes::ShapeRef.new(shape: boolean, location_name: "SmoothStreaming"))
    DefaultCacheBehavior.add_member(:compress, Shapes::ShapeRef.new(shape: boolean, location_name: "Compress"))
    DefaultCacheBehavior.add_member(:lambda_function_associations, Shapes::ShapeRef.new(shape: LambdaFunctionAssociations, location_name: "LambdaFunctionAssociations"))
    DefaultCacheBehavior.add_member(:function_associations, Shapes::ShapeRef.new(shape: FunctionAssociations, location_name: "FunctionAssociations"))
    DefaultCacheBehavior.add_member(:field_level_encryption_id, Shapes::ShapeRef.new(shape: string, location_name: "FieldLevelEncryptionId"))
    DefaultCacheBehavior.add_member(:realtime_log_config_arn, Shapes::ShapeRef.new(shape: string, location_name: "RealtimeLogConfigArn"))
    DefaultCacheBehavior.add_member(:cache_policy_id, Shapes::ShapeRef.new(shape: string, location_name: "CachePolicyId"))
    DefaultCacheBehavior.add_member(:origin_request_policy_id, Shapes::ShapeRef.new(shape: string, location_name: "OriginRequestPolicyId"))
    DefaultCacheBehavior.add_member(:response_headers_policy_id, Shapes::ShapeRef.new(shape: string, location_name: "ResponseHeadersPolicyId"))
    DefaultCacheBehavior.add_member(:forwarded_values, Shapes::ShapeRef.new(shape: ForwardedValues, deprecated: true, location_name: "ForwardedValues"))
    DefaultCacheBehavior.add_member(:min_ttl, Shapes::ShapeRef.new(shape: long, deprecated: true, location_name: "MinTTL"))
    DefaultCacheBehavior.add_member(:default_ttl, Shapes::ShapeRef.new(shape: long, deprecated: true, location_name: "DefaultTTL"))
    DefaultCacheBehavior.add_member(:max_ttl, Shapes::ShapeRef.new(shape: long, deprecated: true, location_name: "MaxTTL"))
    DefaultCacheBehavior.struct_class = Types::DefaultCacheBehavior

    DeleteCachePolicyRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    DeleteCachePolicyRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "If-Match"))
    DeleteCachePolicyRequest.struct_class = Types::DeleteCachePolicyRequest

    DeleteCloudFrontOriginAccessIdentityRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    DeleteCloudFrontOriginAccessIdentityRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "If-Match"))
    DeleteCloudFrontOriginAccessIdentityRequest.struct_class = Types::DeleteCloudFrontOriginAccessIdentityRequest

    DeleteContinuousDeploymentPolicyRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    DeleteContinuousDeploymentPolicyRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "If-Match"))
    DeleteContinuousDeploymentPolicyRequest.struct_class = Types::DeleteContinuousDeploymentPolicyRequest

    DeleteDistributionRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    DeleteDistributionRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "If-Match"))
    DeleteDistributionRequest.struct_class = Types::DeleteDistributionRequest

    DeleteFieldLevelEncryptionConfigRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    DeleteFieldLevelEncryptionConfigRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "If-Match"))
    DeleteFieldLevelEncryptionConfigRequest.struct_class = Types::DeleteFieldLevelEncryptionConfigRequest

    DeleteFieldLevelEncryptionProfileRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    DeleteFieldLevelEncryptionProfileRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "If-Match"))
    DeleteFieldLevelEncryptionProfileRequest.struct_class = Types::DeleteFieldLevelEncryptionProfileRequest

    DeleteFunctionRequest.add_member(:name, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Name"))
    DeleteFunctionRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: string, required: true, location: "header", location_name: "If-Match"))
    DeleteFunctionRequest.struct_class = Types::DeleteFunctionRequest

    DeleteKeyGroupRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    DeleteKeyGroupRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "If-Match"))
    DeleteKeyGroupRequest.struct_class = Types::DeleteKeyGroupRequest

    DeleteKeyValueStoreRequest.add_member(:name, Shapes::ShapeRef.new(shape: KeyValueStoreName, required: true, location: "uri", location_name: "Name"))
    DeleteKeyValueStoreRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: string, required: true, location: "header", location_name: "If-Match"))
    DeleteKeyValueStoreRequest.struct_class = Types::DeleteKeyValueStoreRequest

    DeleteMonitoringSubscriptionRequest.add_member(:distribution_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "DistributionId"))
    DeleteMonitoringSubscriptionRequest.struct_class = Types::DeleteMonitoringSubscriptionRequest

    DeleteMonitoringSubscriptionResult.struct_class = Types::DeleteMonitoringSubscriptionResult

    DeleteOriginAccessControlRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    DeleteOriginAccessControlRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "If-Match"))
    DeleteOriginAccessControlRequest.struct_class = Types::DeleteOriginAccessControlRequest

    DeleteOriginRequestPolicyRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    DeleteOriginRequestPolicyRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "If-Match"))
    DeleteOriginRequestPolicyRequest.struct_class = Types::DeleteOriginRequestPolicyRequest

    DeletePublicKeyRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    DeletePublicKeyRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "If-Match"))
    DeletePublicKeyRequest.struct_class = Types::DeletePublicKeyRequest

    DeleteRealtimeLogConfigRequest.add_member(:name, Shapes::ShapeRef.new(shape: string, location_name: "Name"))
    DeleteRealtimeLogConfigRequest.add_member(:arn, Shapes::ShapeRef.new(shape: string, location_name: "ARN"))
    DeleteRealtimeLogConfigRequest.struct_class = Types::DeleteRealtimeLogConfigRequest

    DeleteResponseHeadersPolicyRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    DeleteResponseHeadersPolicyRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "If-Match"))
    DeleteResponseHeadersPolicyRequest.struct_class = Types::DeleteResponseHeadersPolicyRequest

    DeleteStreamingDistributionRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    DeleteStreamingDistributionRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "If-Match"))
    DeleteStreamingDistributionRequest.struct_class = Types::DeleteStreamingDistributionRequest

    DescribeFunctionRequest.add_member(:name, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Name"))
    DescribeFunctionRequest.add_member(:stage, Shapes::ShapeRef.new(shape: FunctionStage, location: "querystring", location_name: "Stage"))
    DescribeFunctionRequest.struct_class = Types::DescribeFunctionRequest

    DescribeFunctionResult.add_member(:function_summary, Shapes::ShapeRef.new(shape: FunctionSummary, location_name: "FunctionSummary"))
    DescribeFunctionResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    DescribeFunctionResult.struct_class = Types::DescribeFunctionResult
    DescribeFunctionResult[:payload] = :function_summary
    DescribeFunctionResult[:payload_member] = DescribeFunctionResult.member(:function_summary)

    DescribeKeyValueStoreRequest.add_member(:name, Shapes::ShapeRef.new(shape: KeyValueStoreName, required: true, location: "uri", location_name: "Name"))
    DescribeKeyValueStoreRequest.struct_class = Types::DescribeKeyValueStoreRequest

    DescribeKeyValueStoreResult.add_member(:key_value_store, Shapes::ShapeRef.new(shape: KeyValueStore, location_name: "KeyValueStore"))
    DescribeKeyValueStoreResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    DescribeKeyValueStoreResult.struct_class = Types::DescribeKeyValueStoreResult
    DescribeKeyValueStoreResult[:payload] = :key_value_store
    DescribeKeyValueStoreResult[:payload_member] = DescribeKeyValueStoreResult.member(:key_value_store)

    Distribution.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Id"))
    Distribution.add_member(:arn, Shapes::ShapeRef.new(shape: string, required: true, location_name: "ARN"))
    Distribution.add_member(:status, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Status"))
    Distribution.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "LastModifiedTime"))
    Distribution.add_member(:in_progress_invalidation_batches, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "InProgressInvalidationBatches"))
    Distribution.add_member(:domain_name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "DomainName"))
    Distribution.add_member(:active_trusted_signers, Shapes::ShapeRef.new(shape: ActiveTrustedSigners, location_name: "ActiveTrustedSigners"))
    Distribution.add_member(:active_trusted_key_groups, Shapes::ShapeRef.new(shape: ActiveTrustedKeyGroups, location_name: "ActiveTrustedKeyGroups"))
    Distribution.add_member(:distribution_config, Shapes::ShapeRef.new(shape: DistributionConfig, required: true, location_name: "DistributionConfig"))
    Distribution.add_member(:alias_icp_recordals, Shapes::ShapeRef.new(shape: AliasICPRecordals, location_name: "AliasICPRecordals"))
    Distribution.struct_class = Types::Distribution

    DistributionAlreadyExists.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    DistributionAlreadyExists.struct_class = Types::DistributionAlreadyExists

    DistributionConfig.add_member(:caller_reference, Shapes::ShapeRef.new(shape: string, required: true, location_name: "CallerReference"))
    DistributionConfig.add_member(:aliases, Shapes::ShapeRef.new(shape: Aliases, location_name: "Aliases"))
    DistributionConfig.add_member(:default_root_object, Shapes::ShapeRef.new(shape: string, location_name: "DefaultRootObject"))
    DistributionConfig.add_member(:origins, Shapes::ShapeRef.new(shape: Origins, required: true, location_name: "Origins"))
    DistributionConfig.add_member(:origin_groups, Shapes::ShapeRef.new(shape: OriginGroups, location_name: "OriginGroups"))
    DistributionConfig.add_member(:default_cache_behavior, Shapes::ShapeRef.new(shape: DefaultCacheBehavior, required: true, location_name: "DefaultCacheBehavior"))
    DistributionConfig.add_member(:cache_behaviors, Shapes::ShapeRef.new(shape: CacheBehaviors, location_name: "CacheBehaviors"))
    DistributionConfig.add_member(:custom_error_responses, Shapes::ShapeRef.new(shape: CustomErrorResponses, location_name: "CustomErrorResponses"))
    DistributionConfig.add_member(:comment, Shapes::ShapeRef.new(shape: CommentType, required: true, location_name: "Comment"))
    DistributionConfig.add_member(:logging, Shapes::ShapeRef.new(shape: LoggingConfig, location_name: "Logging"))
    DistributionConfig.add_member(:price_class, Shapes::ShapeRef.new(shape: PriceClass, location_name: "PriceClass"))
    DistributionConfig.add_member(:enabled, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "Enabled"))
    DistributionConfig.add_member(:viewer_certificate, Shapes::ShapeRef.new(shape: ViewerCertificate, location_name: "ViewerCertificate"))
    DistributionConfig.add_member(:restrictions, Shapes::ShapeRef.new(shape: Restrictions, location_name: "Restrictions"))
    DistributionConfig.add_member(:web_acl_id, Shapes::ShapeRef.new(shape: string, location_name: "WebACLId"))
    DistributionConfig.add_member(:http_version, Shapes::ShapeRef.new(shape: HttpVersion, location_name: "HttpVersion"))
    DistributionConfig.add_member(:is_ipv6_enabled, Shapes::ShapeRef.new(shape: boolean, location_name: "IsIPV6Enabled"))
    DistributionConfig.add_member(:continuous_deployment_policy_id, Shapes::ShapeRef.new(shape: string, location_name: "ContinuousDeploymentPolicyId"))
    DistributionConfig.add_member(:staging, Shapes::ShapeRef.new(shape: boolean, location_name: "Staging"))
    DistributionConfig.struct_class = Types::DistributionConfig

    DistributionConfigWithTags.add_member(:distribution_config, Shapes::ShapeRef.new(shape: DistributionConfig, required: true, location_name: "DistributionConfig"))
    DistributionConfigWithTags.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    DistributionConfigWithTags.struct_class = Types::DistributionConfigWithTags

    DistributionIdList.add_member(:marker, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Marker"))
    DistributionIdList.add_member(:next_marker, Shapes::ShapeRef.new(shape: string, location_name: "NextMarker"))
    DistributionIdList.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "MaxItems"))
    DistributionIdList.add_member(:is_truncated, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "IsTruncated"))
    DistributionIdList.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    DistributionIdList.add_member(:items, Shapes::ShapeRef.new(shape: DistributionIdListSummary, location_name: "Items"))
    DistributionIdList.struct_class = Types::DistributionIdList

    DistributionIdListSummary.member = Shapes::ShapeRef.new(shape: string, location_name: "DistributionId")

    DistributionList.add_member(:marker, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Marker"))
    DistributionList.add_member(:next_marker, Shapes::ShapeRef.new(shape: string, location_name: "NextMarker"))
    DistributionList.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "MaxItems"))
    DistributionList.add_member(:is_truncated, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "IsTruncated"))
    DistributionList.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    DistributionList.add_member(:items, Shapes::ShapeRef.new(shape: DistributionSummaryList, location_name: "Items"))
    DistributionList.struct_class = Types::DistributionList

    DistributionNotDisabled.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    DistributionNotDisabled.struct_class = Types::DistributionNotDisabled

    DistributionSummary.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Id"))
    DistributionSummary.add_member(:arn, Shapes::ShapeRef.new(shape: string, required: true, location_name: "ARN"))
    DistributionSummary.add_member(:status, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Status"))
    DistributionSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "LastModifiedTime"))
    DistributionSummary.add_member(:domain_name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "DomainName"))
    DistributionSummary.add_member(:aliases, Shapes::ShapeRef.new(shape: Aliases, required: true, location_name: "Aliases"))
    DistributionSummary.add_member(:origins, Shapes::ShapeRef.new(shape: Origins, required: true, location_name: "Origins"))
    DistributionSummary.add_member(:origin_groups, Shapes::ShapeRef.new(shape: OriginGroups, location_name: "OriginGroups"))
    DistributionSummary.add_member(:default_cache_behavior, Shapes::ShapeRef.new(shape: DefaultCacheBehavior, required: true, location_name: "DefaultCacheBehavior"))
    DistributionSummary.add_member(:cache_behaviors, Shapes::ShapeRef.new(shape: CacheBehaviors, required: true, location_name: "CacheBehaviors"))
    DistributionSummary.add_member(:custom_error_responses, Shapes::ShapeRef.new(shape: CustomErrorResponses, required: true, location_name: "CustomErrorResponses"))
    DistributionSummary.add_member(:comment, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Comment"))
    DistributionSummary.add_member(:price_class, Shapes::ShapeRef.new(shape: PriceClass, required: true, location_name: "PriceClass"))
    DistributionSummary.add_member(:enabled, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "Enabled"))
    DistributionSummary.add_member(:viewer_certificate, Shapes::ShapeRef.new(shape: ViewerCertificate, required: true, location_name: "ViewerCertificate"))
    DistributionSummary.add_member(:restrictions, Shapes::ShapeRef.new(shape: Restrictions, required: true, location_name: "Restrictions"))
    DistributionSummary.add_member(:web_acl_id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "WebACLId"))
    DistributionSummary.add_member(:http_version, Shapes::ShapeRef.new(shape: HttpVersion, required: true, location_name: "HttpVersion"))
    DistributionSummary.add_member(:is_ipv6_enabled, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "IsIPV6Enabled"))
    DistributionSummary.add_member(:alias_icp_recordals, Shapes::ShapeRef.new(shape: AliasICPRecordals, location_name: "AliasICPRecordals"))
    DistributionSummary.add_member(:staging, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "Staging"))
    DistributionSummary.struct_class = Types::DistributionSummary

    DistributionSummaryList.member = Shapes::ShapeRef.new(shape: DistributionSummary, location_name: "DistributionSummary")

    EncryptionEntities.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    EncryptionEntities.add_member(:items, Shapes::ShapeRef.new(shape: EncryptionEntityList, location_name: "Items"))
    EncryptionEntities.struct_class = Types::EncryptionEntities

    EncryptionEntity.add_member(:public_key_id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "PublicKeyId"))
    EncryptionEntity.add_member(:provider_id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "ProviderId"))
    EncryptionEntity.add_member(:field_patterns, Shapes::ShapeRef.new(shape: FieldPatterns, required: true, location_name: "FieldPatterns"))
    EncryptionEntity.struct_class = Types::EncryptionEntity

    EncryptionEntityList.member = Shapes::ShapeRef.new(shape: EncryptionEntity, location_name: "EncryptionEntity")

    EndPoint.add_member(:stream_type, Shapes::ShapeRef.new(shape: string, required: true, location_name: "StreamType"))
    EndPoint.add_member(:kinesis_stream_config, Shapes::ShapeRef.new(shape: KinesisStreamConfig, location_name: "KinesisStreamConfig"))
    EndPoint.struct_class = Types::EndPoint

    EndPointList.member = Shapes::ShapeRef.new(shape: EndPoint)

    EntityAlreadyExists.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    EntityAlreadyExists.struct_class = Types::EntityAlreadyExists

    EntityLimitExceeded.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    EntityLimitExceeded.struct_class = Types::EntityLimitExceeded

    EntityNotFound.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    EntityNotFound.struct_class = Types::EntityNotFound

    EntitySizeLimitExceeded.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    EntitySizeLimitExceeded.struct_class = Types::EntitySizeLimitExceeded

    FieldLevelEncryption.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Id"))
    FieldLevelEncryption.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "LastModifiedTime"))
    FieldLevelEncryption.add_member(:field_level_encryption_config, Shapes::ShapeRef.new(shape: FieldLevelEncryptionConfig, required: true, location_name: "FieldLevelEncryptionConfig"))
    FieldLevelEncryption.struct_class = Types::FieldLevelEncryption

    FieldLevelEncryptionConfig.add_member(:caller_reference, Shapes::ShapeRef.new(shape: string, required: true, location_name: "CallerReference"))
    FieldLevelEncryptionConfig.add_member(:comment, Shapes::ShapeRef.new(shape: string, location_name: "Comment"))
    FieldLevelEncryptionConfig.add_member(:query_arg_profile_config, Shapes::ShapeRef.new(shape: QueryArgProfileConfig, location_name: "QueryArgProfileConfig"))
    FieldLevelEncryptionConfig.add_member(:content_type_profile_config, Shapes::ShapeRef.new(shape: ContentTypeProfileConfig, location_name: "ContentTypeProfileConfig"))
    FieldLevelEncryptionConfig.struct_class = Types::FieldLevelEncryptionConfig

    FieldLevelEncryptionConfigAlreadyExists.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    FieldLevelEncryptionConfigAlreadyExists.struct_class = Types::FieldLevelEncryptionConfigAlreadyExists

    FieldLevelEncryptionConfigInUse.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    FieldLevelEncryptionConfigInUse.struct_class = Types::FieldLevelEncryptionConfigInUse

    FieldLevelEncryptionList.add_member(:next_marker, Shapes::ShapeRef.new(shape: string, location_name: "NextMarker"))
    FieldLevelEncryptionList.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "MaxItems"))
    FieldLevelEncryptionList.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    FieldLevelEncryptionList.add_member(:items, Shapes::ShapeRef.new(shape: FieldLevelEncryptionSummaryList, location_name: "Items"))
    FieldLevelEncryptionList.struct_class = Types::FieldLevelEncryptionList

    FieldLevelEncryptionProfile.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Id"))
    FieldLevelEncryptionProfile.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "LastModifiedTime"))
    FieldLevelEncryptionProfile.add_member(:field_level_encryption_profile_config, Shapes::ShapeRef.new(shape: FieldLevelEncryptionProfileConfig, required: true, location_name: "FieldLevelEncryptionProfileConfig"))
    FieldLevelEncryptionProfile.struct_class = Types::FieldLevelEncryptionProfile

    FieldLevelEncryptionProfileAlreadyExists.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    FieldLevelEncryptionProfileAlreadyExists.struct_class = Types::FieldLevelEncryptionProfileAlreadyExists

    FieldLevelEncryptionProfileConfig.add_member(:name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Name"))
    FieldLevelEncryptionProfileConfig.add_member(:caller_reference, Shapes::ShapeRef.new(shape: string, required: true, location_name: "CallerReference"))
    FieldLevelEncryptionProfileConfig.add_member(:comment, Shapes::ShapeRef.new(shape: string, location_name: "Comment"))
    FieldLevelEncryptionProfileConfig.add_member(:encryption_entities, Shapes::ShapeRef.new(shape: EncryptionEntities, required: true, location_name: "EncryptionEntities"))
    FieldLevelEncryptionProfileConfig.struct_class = Types::FieldLevelEncryptionProfileConfig

    FieldLevelEncryptionProfileInUse.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    FieldLevelEncryptionProfileInUse.struct_class = Types::FieldLevelEncryptionProfileInUse

    FieldLevelEncryptionProfileList.add_member(:next_marker, Shapes::ShapeRef.new(shape: string, location_name: "NextMarker"))
    FieldLevelEncryptionProfileList.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "MaxItems"))
    FieldLevelEncryptionProfileList.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    FieldLevelEncryptionProfileList.add_member(:items, Shapes::ShapeRef.new(shape: FieldLevelEncryptionProfileSummaryList, location_name: "Items"))
    FieldLevelEncryptionProfileList.struct_class = Types::FieldLevelEncryptionProfileList

    FieldLevelEncryptionProfileSizeExceeded.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    FieldLevelEncryptionProfileSizeExceeded.struct_class = Types::FieldLevelEncryptionProfileSizeExceeded

    FieldLevelEncryptionProfileSummary.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Id"))
    FieldLevelEncryptionProfileSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "LastModifiedTime"))
    FieldLevelEncryptionProfileSummary.add_member(:name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Name"))
    FieldLevelEncryptionProfileSummary.add_member(:encryption_entities, Shapes::ShapeRef.new(shape: EncryptionEntities, required: true, location_name: "EncryptionEntities"))
    FieldLevelEncryptionProfileSummary.add_member(:comment, Shapes::ShapeRef.new(shape: string, location_name: "Comment"))
    FieldLevelEncryptionProfileSummary.struct_class = Types::FieldLevelEncryptionProfileSummary

    FieldLevelEncryptionProfileSummaryList.member = Shapes::ShapeRef.new(shape: FieldLevelEncryptionProfileSummary, location_name: "FieldLevelEncryptionProfileSummary")

    FieldLevelEncryptionSummary.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Id"))
    FieldLevelEncryptionSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "LastModifiedTime"))
    FieldLevelEncryptionSummary.add_member(:comment, Shapes::ShapeRef.new(shape: string, location_name: "Comment"))
    FieldLevelEncryptionSummary.add_member(:query_arg_profile_config, Shapes::ShapeRef.new(shape: QueryArgProfileConfig, location_name: "QueryArgProfileConfig"))
    FieldLevelEncryptionSummary.add_member(:content_type_profile_config, Shapes::ShapeRef.new(shape: ContentTypeProfileConfig, location_name: "ContentTypeProfileConfig"))
    FieldLevelEncryptionSummary.struct_class = Types::FieldLevelEncryptionSummary

    FieldLevelEncryptionSummaryList.member = Shapes::ShapeRef.new(shape: FieldLevelEncryptionSummary, location_name: "FieldLevelEncryptionSummary")

    FieldList.member = Shapes::ShapeRef.new(shape: string, location_name: "Field")

    FieldPatternList.member = Shapes::ShapeRef.new(shape: string, location_name: "FieldPattern")

    FieldPatterns.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    FieldPatterns.add_member(:items, Shapes::ShapeRef.new(shape: FieldPatternList, location_name: "Items"))
    FieldPatterns.struct_class = Types::FieldPatterns

    ForwardedValues.add_member(:query_string, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "QueryString"))
    ForwardedValues.add_member(:cookies, Shapes::ShapeRef.new(shape: CookiePreference, required: true, location_name: "Cookies"))
    ForwardedValues.add_member(:headers, Shapes::ShapeRef.new(shape: Headers, location_name: "Headers"))
    ForwardedValues.add_member(:query_string_cache_keys, Shapes::ShapeRef.new(shape: QueryStringCacheKeys, location_name: "QueryStringCacheKeys"))
    ForwardedValues.struct_class = Types::ForwardedValues

    FunctionAlreadyExists.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    FunctionAlreadyExists.struct_class = Types::FunctionAlreadyExists

    FunctionAssociation.add_member(:function_arn, Shapes::ShapeRef.new(shape: FunctionARN, required: true, location_name: "FunctionARN"))
    FunctionAssociation.add_member(:event_type, Shapes::ShapeRef.new(shape: EventType, required: true, location_name: "EventType"))
    FunctionAssociation.struct_class = Types::FunctionAssociation

    FunctionAssociationList.member = Shapes::ShapeRef.new(shape: FunctionAssociation, location_name: "FunctionAssociation")

    FunctionAssociations.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    FunctionAssociations.add_member(:items, Shapes::ShapeRef.new(shape: FunctionAssociationList, location_name: "Items"))
    FunctionAssociations.struct_class = Types::FunctionAssociations

    FunctionConfig.add_member(:comment, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Comment"))
    FunctionConfig.add_member(:runtime, Shapes::ShapeRef.new(shape: FunctionRuntime, required: true, location_name: "Runtime"))
    FunctionConfig.add_member(:key_value_store_associations, Shapes::ShapeRef.new(shape: KeyValueStoreAssociations, location_name: "KeyValueStoreAssociations"))
    FunctionConfig.struct_class = Types::FunctionConfig

    FunctionExecutionLogList.member = Shapes::ShapeRef.new(shape: string)

    FunctionInUse.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    FunctionInUse.struct_class = Types::FunctionInUse

    FunctionList.add_member(:next_marker, Shapes::ShapeRef.new(shape: string, location_name: "NextMarker"))
    FunctionList.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "MaxItems"))
    FunctionList.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    FunctionList.add_member(:items, Shapes::ShapeRef.new(shape: FunctionSummaryList, location_name: "Items"))
    FunctionList.struct_class = Types::FunctionList

    FunctionMetadata.add_member(:function_arn, Shapes::ShapeRef.new(shape: string, required: true, location_name: "FunctionARN"))
    FunctionMetadata.add_member(:stage, Shapes::ShapeRef.new(shape: FunctionStage, location_name: "Stage"))
    FunctionMetadata.add_member(:created_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreatedTime"))
    FunctionMetadata.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "LastModifiedTime"))
    FunctionMetadata.struct_class = Types::FunctionMetadata

    FunctionSizeLimitExceeded.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    FunctionSizeLimitExceeded.struct_class = Types::FunctionSizeLimitExceeded

    FunctionSummary.add_member(:name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location_name: "Name"))
    FunctionSummary.add_member(:status, Shapes::ShapeRef.new(shape: string, location_name: "Status"))
    FunctionSummary.add_member(:function_config, Shapes::ShapeRef.new(shape: FunctionConfig, required: true, location_name: "FunctionConfig"))
    FunctionSummary.add_member(:function_metadata, Shapes::ShapeRef.new(shape: FunctionMetadata, required: true, location_name: "FunctionMetadata"))
    FunctionSummary.struct_class = Types::FunctionSummary

    FunctionSummaryList.member = Shapes::ShapeRef.new(shape: FunctionSummary, location_name: "FunctionSummary")

    GeoRestriction.add_member(:restriction_type, Shapes::ShapeRef.new(shape: GeoRestrictionType, required: true, location_name: "RestrictionType"))
    GeoRestriction.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    GeoRestriction.add_member(:items, Shapes::ShapeRef.new(shape: LocationList, location_name: "Items"))
    GeoRestriction.struct_class = Types::GeoRestriction

    GetCachePolicyConfigRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    GetCachePolicyConfigRequest.struct_class = Types::GetCachePolicyConfigRequest

    GetCachePolicyConfigResult.add_member(:cache_policy_config, Shapes::ShapeRef.new(shape: CachePolicyConfig, location_name: "CachePolicyConfig"))
    GetCachePolicyConfigResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    GetCachePolicyConfigResult.struct_class = Types::GetCachePolicyConfigResult
    GetCachePolicyConfigResult[:payload] = :cache_policy_config
    GetCachePolicyConfigResult[:payload_member] = GetCachePolicyConfigResult.member(:cache_policy_config)

    GetCachePolicyRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    GetCachePolicyRequest.struct_class = Types::GetCachePolicyRequest

    GetCachePolicyResult.add_member(:cache_policy, Shapes::ShapeRef.new(shape: CachePolicy, location_name: "CachePolicy"))
    GetCachePolicyResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    GetCachePolicyResult.struct_class = Types::GetCachePolicyResult
    GetCachePolicyResult[:payload] = :cache_policy
    GetCachePolicyResult[:payload_member] = GetCachePolicyResult.member(:cache_policy)

    GetCloudFrontOriginAccessIdentityConfigRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    GetCloudFrontOriginAccessIdentityConfigRequest.struct_class = Types::GetCloudFrontOriginAccessIdentityConfigRequest

    GetCloudFrontOriginAccessIdentityConfigResult.add_member(:cloud_front_origin_access_identity_config, Shapes::ShapeRef.new(shape: CloudFrontOriginAccessIdentityConfig, location_name: "CloudFrontOriginAccessIdentityConfig"))
    GetCloudFrontOriginAccessIdentityConfigResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    GetCloudFrontOriginAccessIdentityConfigResult.struct_class = Types::GetCloudFrontOriginAccessIdentityConfigResult
    GetCloudFrontOriginAccessIdentityConfigResult[:payload] = :cloud_front_origin_access_identity_config
    GetCloudFrontOriginAccessIdentityConfigResult[:payload_member] = GetCloudFrontOriginAccessIdentityConfigResult.member(:cloud_front_origin_access_identity_config)

    GetCloudFrontOriginAccessIdentityRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    GetCloudFrontOriginAccessIdentityRequest.struct_class = Types::GetCloudFrontOriginAccessIdentityRequest

    GetCloudFrontOriginAccessIdentityResult.add_member(:cloud_front_origin_access_identity, Shapes::ShapeRef.new(shape: CloudFrontOriginAccessIdentity, location_name: "CloudFrontOriginAccessIdentity"))
    GetCloudFrontOriginAccessIdentityResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    GetCloudFrontOriginAccessIdentityResult.struct_class = Types::GetCloudFrontOriginAccessIdentityResult
    GetCloudFrontOriginAccessIdentityResult[:payload] = :cloud_front_origin_access_identity
    GetCloudFrontOriginAccessIdentityResult[:payload_member] = GetCloudFrontOriginAccessIdentityResult.member(:cloud_front_origin_access_identity)

    GetContinuousDeploymentPolicyConfigRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    GetContinuousDeploymentPolicyConfigRequest.struct_class = Types::GetContinuousDeploymentPolicyConfigRequest

    GetContinuousDeploymentPolicyConfigResult.add_member(:continuous_deployment_policy_config, Shapes::ShapeRef.new(shape: ContinuousDeploymentPolicyConfig, location_name: "ContinuousDeploymentPolicyConfig"))
    GetContinuousDeploymentPolicyConfigResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    GetContinuousDeploymentPolicyConfigResult.struct_class = Types::GetContinuousDeploymentPolicyConfigResult
    GetContinuousDeploymentPolicyConfigResult[:payload] = :continuous_deployment_policy_config
    GetContinuousDeploymentPolicyConfigResult[:payload_member] = GetContinuousDeploymentPolicyConfigResult.member(:continuous_deployment_policy_config)

    GetContinuousDeploymentPolicyRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    GetContinuousDeploymentPolicyRequest.struct_class = Types::GetContinuousDeploymentPolicyRequest

    GetContinuousDeploymentPolicyResult.add_member(:continuous_deployment_policy, Shapes::ShapeRef.new(shape: ContinuousDeploymentPolicy, location_name: "ContinuousDeploymentPolicy"))
    GetContinuousDeploymentPolicyResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    GetContinuousDeploymentPolicyResult.struct_class = Types::GetContinuousDeploymentPolicyResult
    GetContinuousDeploymentPolicyResult[:payload] = :continuous_deployment_policy
    GetContinuousDeploymentPolicyResult[:payload_member] = GetContinuousDeploymentPolicyResult.member(:continuous_deployment_policy)

    GetDistributionConfigRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    GetDistributionConfigRequest.struct_class = Types::GetDistributionConfigRequest

    GetDistributionConfigResult.add_member(:distribution_config, Shapes::ShapeRef.new(shape: DistributionConfig, location_name: "DistributionConfig"))
    GetDistributionConfigResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    GetDistributionConfigResult.struct_class = Types::GetDistributionConfigResult
    GetDistributionConfigResult[:payload] = :distribution_config
    GetDistributionConfigResult[:payload_member] = GetDistributionConfigResult.member(:distribution_config)

    GetDistributionRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    GetDistributionRequest.struct_class = Types::GetDistributionRequest

    GetDistributionResult.add_member(:distribution, Shapes::ShapeRef.new(shape: Distribution, location_name: "Distribution"))
    GetDistributionResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    GetDistributionResult.struct_class = Types::GetDistributionResult
    GetDistributionResult[:payload] = :distribution
    GetDistributionResult[:payload_member] = GetDistributionResult.member(:distribution)

    GetFieldLevelEncryptionConfigRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    GetFieldLevelEncryptionConfigRequest.struct_class = Types::GetFieldLevelEncryptionConfigRequest

    GetFieldLevelEncryptionConfigResult.add_member(:field_level_encryption_config, Shapes::ShapeRef.new(shape: FieldLevelEncryptionConfig, location_name: "FieldLevelEncryptionConfig"))
    GetFieldLevelEncryptionConfigResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    GetFieldLevelEncryptionConfigResult.struct_class = Types::GetFieldLevelEncryptionConfigResult
    GetFieldLevelEncryptionConfigResult[:payload] = :field_level_encryption_config
    GetFieldLevelEncryptionConfigResult[:payload_member] = GetFieldLevelEncryptionConfigResult.member(:field_level_encryption_config)

    GetFieldLevelEncryptionProfileConfigRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    GetFieldLevelEncryptionProfileConfigRequest.struct_class = Types::GetFieldLevelEncryptionProfileConfigRequest

    GetFieldLevelEncryptionProfileConfigResult.add_member(:field_level_encryption_profile_config, Shapes::ShapeRef.new(shape: FieldLevelEncryptionProfileConfig, location_name: "FieldLevelEncryptionProfileConfig"))
    GetFieldLevelEncryptionProfileConfigResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    GetFieldLevelEncryptionProfileConfigResult.struct_class = Types::GetFieldLevelEncryptionProfileConfigResult
    GetFieldLevelEncryptionProfileConfigResult[:payload] = :field_level_encryption_profile_config
    GetFieldLevelEncryptionProfileConfigResult[:payload_member] = GetFieldLevelEncryptionProfileConfigResult.member(:field_level_encryption_profile_config)

    GetFieldLevelEncryptionProfileRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    GetFieldLevelEncryptionProfileRequest.struct_class = Types::GetFieldLevelEncryptionProfileRequest

    GetFieldLevelEncryptionProfileResult.add_member(:field_level_encryption_profile, Shapes::ShapeRef.new(shape: FieldLevelEncryptionProfile, location_name: "FieldLevelEncryptionProfile"))
    GetFieldLevelEncryptionProfileResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    GetFieldLevelEncryptionProfileResult.struct_class = Types::GetFieldLevelEncryptionProfileResult
    GetFieldLevelEncryptionProfileResult[:payload] = :field_level_encryption_profile
    GetFieldLevelEncryptionProfileResult[:payload_member] = GetFieldLevelEncryptionProfileResult.member(:field_level_encryption_profile)

    GetFieldLevelEncryptionRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    GetFieldLevelEncryptionRequest.struct_class = Types::GetFieldLevelEncryptionRequest

    GetFieldLevelEncryptionResult.add_member(:field_level_encryption, Shapes::ShapeRef.new(shape: FieldLevelEncryption, location_name: "FieldLevelEncryption"))
    GetFieldLevelEncryptionResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    GetFieldLevelEncryptionResult.struct_class = Types::GetFieldLevelEncryptionResult
    GetFieldLevelEncryptionResult[:payload] = :field_level_encryption
    GetFieldLevelEncryptionResult[:payload_member] = GetFieldLevelEncryptionResult.member(:field_level_encryption)

    GetFunctionRequest.add_member(:name, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Name"))
    GetFunctionRequest.add_member(:stage, Shapes::ShapeRef.new(shape: FunctionStage, location: "querystring", location_name: "Stage"))
    GetFunctionRequest.struct_class = Types::GetFunctionRequest

    GetFunctionResult.add_member(:function_code, Shapes::ShapeRef.new(shape: FunctionBlob, location_name: "FunctionCode"))
    GetFunctionResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    GetFunctionResult.add_member(:content_type, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "Content-Type"))
    GetFunctionResult.struct_class = Types::GetFunctionResult
    GetFunctionResult[:payload] = :function_code
    GetFunctionResult[:payload_member] = GetFunctionResult.member(:function_code)

    GetInvalidationRequest.add_member(:distribution_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "DistributionId"))
    GetInvalidationRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    GetInvalidationRequest.struct_class = Types::GetInvalidationRequest

    GetInvalidationResult.add_member(:invalidation, Shapes::ShapeRef.new(shape: Invalidation, location_name: "Invalidation"))
    GetInvalidationResult.struct_class = Types::GetInvalidationResult
    GetInvalidationResult[:payload] = :invalidation
    GetInvalidationResult[:payload_member] = GetInvalidationResult.member(:invalidation)

    GetKeyGroupConfigRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    GetKeyGroupConfigRequest.struct_class = Types::GetKeyGroupConfigRequest

    GetKeyGroupConfigResult.add_member(:key_group_config, Shapes::ShapeRef.new(shape: KeyGroupConfig, location_name: "KeyGroupConfig"))
    GetKeyGroupConfigResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    GetKeyGroupConfigResult.struct_class = Types::GetKeyGroupConfigResult
    GetKeyGroupConfigResult[:payload] = :key_group_config
    GetKeyGroupConfigResult[:payload_member] = GetKeyGroupConfigResult.member(:key_group_config)

    GetKeyGroupRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    GetKeyGroupRequest.struct_class = Types::GetKeyGroupRequest

    GetKeyGroupResult.add_member(:key_group, Shapes::ShapeRef.new(shape: KeyGroup, location_name: "KeyGroup"))
    GetKeyGroupResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    GetKeyGroupResult.struct_class = Types::GetKeyGroupResult
    GetKeyGroupResult[:payload] = :key_group
    GetKeyGroupResult[:payload_member] = GetKeyGroupResult.member(:key_group)

    GetMonitoringSubscriptionRequest.add_member(:distribution_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "DistributionId"))
    GetMonitoringSubscriptionRequest.struct_class = Types::GetMonitoringSubscriptionRequest

    GetMonitoringSubscriptionResult.add_member(:monitoring_subscription, Shapes::ShapeRef.new(shape: MonitoringSubscription, location_name: "MonitoringSubscription"))
    GetMonitoringSubscriptionResult.struct_class = Types::GetMonitoringSubscriptionResult
    GetMonitoringSubscriptionResult[:payload] = :monitoring_subscription
    GetMonitoringSubscriptionResult[:payload_member] = GetMonitoringSubscriptionResult.member(:monitoring_subscription)

    GetOriginAccessControlConfigRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    GetOriginAccessControlConfigRequest.struct_class = Types::GetOriginAccessControlConfigRequest

    GetOriginAccessControlConfigResult.add_member(:origin_access_control_config, Shapes::ShapeRef.new(shape: OriginAccessControlConfig, location_name: "OriginAccessControlConfig"))
    GetOriginAccessControlConfigResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    GetOriginAccessControlConfigResult.struct_class = Types::GetOriginAccessControlConfigResult
    GetOriginAccessControlConfigResult[:payload] = :origin_access_control_config
    GetOriginAccessControlConfigResult[:payload_member] = GetOriginAccessControlConfigResult.member(:origin_access_control_config)

    GetOriginAccessControlRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    GetOriginAccessControlRequest.struct_class = Types::GetOriginAccessControlRequest

    GetOriginAccessControlResult.add_member(:origin_access_control, Shapes::ShapeRef.new(shape: OriginAccessControl, location_name: "OriginAccessControl"))
    GetOriginAccessControlResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    GetOriginAccessControlResult.struct_class = Types::GetOriginAccessControlResult
    GetOriginAccessControlResult[:payload] = :origin_access_control
    GetOriginAccessControlResult[:payload_member] = GetOriginAccessControlResult.member(:origin_access_control)

    GetOriginRequestPolicyConfigRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    GetOriginRequestPolicyConfigRequest.struct_class = Types::GetOriginRequestPolicyConfigRequest

    GetOriginRequestPolicyConfigResult.add_member(:origin_request_policy_config, Shapes::ShapeRef.new(shape: OriginRequestPolicyConfig, location_name: "OriginRequestPolicyConfig"))
    GetOriginRequestPolicyConfigResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    GetOriginRequestPolicyConfigResult.struct_class = Types::GetOriginRequestPolicyConfigResult
    GetOriginRequestPolicyConfigResult[:payload] = :origin_request_policy_config
    GetOriginRequestPolicyConfigResult[:payload_member] = GetOriginRequestPolicyConfigResult.member(:origin_request_policy_config)

    GetOriginRequestPolicyRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    GetOriginRequestPolicyRequest.struct_class = Types::GetOriginRequestPolicyRequest

    GetOriginRequestPolicyResult.add_member(:origin_request_policy, Shapes::ShapeRef.new(shape: OriginRequestPolicy, location_name: "OriginRequestPolicy"))
    GetOriginRequestPolicyResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    GetOriginRequestPolicyResult.struct_class = Types::GetOriginRequestPolicyResult
    GetOriginRequestPolicyResult[:payload] = :origin_request_policy
    GetOriginRequestPolicyResult[:payload_member] = GetOriginRequestPolicyResult.member(:origin_request_policy)

    GetPublicKeyConfigRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    GetPublicKeyConfigRequest.struct_class = Types::GetPublicKeyConfigRequest

    GetPublicKeyConfigResult.add_member(:public_key_config, Shapes::ShapeRef.new(shape: PublicKeyConfig, location_name: "PublicKeyConfig"))
    GetPublicKeyConfigResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    GetPublicKeyConfigResult.struct_class = Types::GetPublicKeyConfigResult
    GetPublicKeyConfigResult[:payload] = :public_key_config
    GetPublicKeyConfigResult[:payload_member] = GetPublicKeyConfigResult.member(:public_key_config)

    GetPublicKeyRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    GetPublicKeyRequest.struct_class = Types::GetPublicKeyRequest

    GetPublicKeyResult.add_member(:public_key, Shapes::ShapeRef.new(shape: PublicKey, location_name: "PublicKey"))
    GetPublicKeyResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    GetPublicKeyResult.struct_class = Types::GetPublicKeyResult
    GetPublicKeyResult[:payload] = :public_key
    GetPublicKeyResult[:payload_member] = GetPublicKeyResult.member(:public_key)

    GetRealtimeLogConfigRequest.add_member(:name, Shapes::ShapeRef.new(shape: string, location_name: "Name"))
    GetRealtimeLogConfigRequest.add_member(:arn, Shapes::ShapeRef.new(shape: string, location_name: "ARN"))
    GetRealtimeLogConfigRequest.struct_class = Types::GetRealtimeLogConfigRequest

    GetRealtimeLogConfigResult.add_member(:realtime_log_config, Shapes::ShapeRef.new(shape: RealtimeLogConfig, location_name: "RealtimeLogConfig"))
    GetRealtimeLogConfigResult.struct_class = Types::GetRealtimeLogConfigResult

    GetResponseHeadersPolicyConfigRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    GetResponseHeadersPolicyConfigRequest.struct_class = Types::GetResponseHeadersPolicyConfigRequest

    GetResponseHeadersPolicyConfigResult.add_member(:response_headers_policy_config, Shapes::ShapeRef.new(shape: ResponseHeadersPolicyConfig, location_name: "ResponseHeadersPolicyConfig"))
    GetResponseHeadersPolicyConfigResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    GetResponseHeadersPolicyConfigResult.struct_class = Types::GetResponseHeadersPolicyConfigResult
    GetResponseHeadersPolicyConfigResult[:payload] = :response_headers_policy_config
    GetResponseHeadersPolicyConfigResult[:payload_member] = GetResponseHeadersPolicyConfigResult.member(:response_headers_policy_config)

    GetResponseHeadersPolicyRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    GetResponseHeadersPolicyRequest.struct_class = Types::GetResponseHeadersPolicyRequest

    GetResponseHeadersPolicyResult.add_member(:response_headers_policy, Shapes::ShapeRef.new(shape: ResponseHeadersPolicy, location_name: "ResponseHeadersPolicy"))
    GetResponseHeadersPolicyResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    GetResponseHeadersPolicyResult.struct_class = Types::GetResponseHeadersPolicyResult
    GetResponseHeadersPolicyResult[:payload] = :response_headers_policy
    GetResponseHeadersPolicyResult[:payload_member] = GetResponseHeadersPolicyResult.member(:response_headers_policy)

    GetStreamingDistributionConfigRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    GetStreamingDistributionConfigRequest.struct_class = Types::GetStreamingDistributionConfigRequest

    GetStreamingDistributionConfigResult.add_member(:streaming_distribution_config, Shapes::ShapeRef.new(shape: StreamingDistributionConfig, location_name: "StreamingDistributionConfig"))
    GetStreamingDistributionConfigResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    GetStreamingDistributionConfigResult.struct_class = Types::GetStreamingDistributionConfigResult
    GetStreamingDistributionConfigResult[:payload] = :streaming_distribution_config
    GetStreamingDistributionConfigResult[:payload_member] = GetStreamingDistributionConfigResult.member(:streaming_distribution_config)

    GetStreamingDistributionRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    GetStreamingDistributionRequest.struct_class = Types::GetStreamingDistributionRequest

    GetStreamingDistributionResult.add_member(:streaming_distribution, Shapes::ShapeRef.new(shape: StreamingDistribution, location_name: "StreamingDistribution"))
    GetStreamingDistributionResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    GetStreamingDistributionResult.struct_class = Types::GetStreamingDistributionResult
    GetStreamingDistributionResult[:payload] = :streaming_distribution
    GetStreamingDistributionResult[:payload_member] = GetStreamingDistributionResult.member(:streaming_distribution)

    HeaderList.member = Shapes::ShapeRef.new(shape: string, location_name: "Name")

    Headers.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    Headers.add_member(:items, Shapes::ShapeRef.new(shape: HeaderList, location_name: "Items"))
    Headers.struct_class = Types::Headers

    IllegalDelete.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    IllegalDelete.struct_class = Types::IllegalDelete

    IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior.struct_class = Types::IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior

    IllegalOriginAccessConfiguration.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    IllegalOriginAccessConfiguration.struct_class = Types::IllegalOriginAccessConfiguration

    IllegalUpdate.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    IllegalUpdate.struct_class = Types::IllegalUpdate

    ImportSource.add_member(:source_type, Shapes::ShapeRef.new(shape: ImportSourceType, required: true, location_name: "SourceType"))
    ImportSource.add_member(:source_arn, Shapes::ShapeRef.new(shape: string, required: true, location_name: "SourceARN"))
    ImportSource.struct_class = Types::ImportSource

    InconsistentQuantities.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    InconsistentQuantities.struct_class = Types::InconsistentQuantities

    InvalidArgument.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    InvalidArgument.struct_class = Types::InvalidArgument

    InvalidDefaultRootObject.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    InvalidDefaultRootObject.struct_class = Types::InvalidDefaultRootObject

    InvalidDomainNameForOriginAccessControl.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    InvalidDomainNameForOriginAccessControl.struct_class = Types::InvalidDomainNameForOriginAccessControl

    InvalidErrorCode.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    InvalidErrorCode.struct_class = Types::InvalidErrorCode

    InvalidForwardCookies.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    InvalidForwardCookies.struct_class = Types::InvalidForwardCookies

    InvalidFunctionAssociation.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    InvalidFunctionAssociation.struct_class = Types::InvalidFunctionAssociation

    InvalidGeoRestrictionParameter.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    InvalidGeoRestrictionParameter.struct_class = Types::InvalidGeoRestrictionParameter

    InvalidHeadersForS3Origin.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    InvalidHeadersForS3Origin.struct_class = Types::InvalidHeadersForS3Origin

    InvalidIfMatchVersion.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    InvalidIfMatchVersion.struct_class = Types::InvalidIfMatchVersion

    InvalidLambdaFunctionAssociation.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    InvalidLambdaFunctionAssociation.struct_class = Types::InvalidLambdaFunctionAssociation

    InvalidLocationCode.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    InvalidLocationCode.struct_class = Types::InvalidLocationCode

    InvalidMinimumProtocolVersion.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    InvalidMinimumProtocolVersion.struct_class = Types::InvalidMinimumProtocolVersion

    InvalidOrigin.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    InvalidOrigin.struct_class = Types::InvalidOrigin

    InvalidOriginAccessControl.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    InvalidOriginAccessControl.struct_class = Types::InvalidOriginAccessControl

    InvalidOriginAccessIdentity.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    InvalidOriginAccessIdentity.struct_class = Types::InvalidOriginAccessIdentity

    InvalidOriginKeepaliveTimeout.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    InvalidOriginKeepaliveTimeout.struct_class = Types::InvalidOriginKeepaliveTimeout

    InvalidOriginReadTimeout.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    InvalidOriginReadTimeout.struct_class = Types::InvalidOriginReadTimeout

    InvalidProtocolSettings.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    InvalidProtocolSettings.struct_class = Types::InvalidProtocolSettings

    InvalidQueryStringParameters.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    InvalidQueryStringParameters.struct_class = Types::InvalidQueryStringParameters

    InvalidRelativePath.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    InvalidRelativePath.struct_class = Types::InvalidRelativePath

    InvalidRequiredProtocol.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    InvalidRequiredProtocol.struct_class = Types::InvalidRequiredProtocol

    InvalidResponseCode.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    InvalidResponseCode.struct_class = Types::InvalidResponseCode

    InvalidTTLOrder.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    InvalidTTLOrder.struct_class = Types::InvalidTTLOrder

    InvalidTagging.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    InvalidTagging.struct_class = Types::InvalidTagging

    InvalidViewerCertificate.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    InvalidViewerCertificate.struct_class = Types::InvalidViewerCertificate

    InvalidWebACLId.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    InvalidWebACLId.struct_class = Types::InvalidWebACLId

    Invalidation.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Id"))
    Invalidation.add_member(:status, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Status"))
    Invalidation.add_member(:create_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "CreateTime"))
    Invalidation.add_member(:invalidation_batch, Shapes::ShapeRef.new(shape: InvalidationBatch, required: true, location_name: "InvalidationBatch"))
    Invalidation.struct_class = Types::Invalidation

    InvalidationBatch.add_member(:paths, Shapes::ShapeRef.new(shape: Paths, required: true, location_name: "Paths"))
    InvalidationBatch.add_member(:caller_reference, Shapes::ShapeRef.new(shape: string, required: true, location_name: "CallerReference"))
    InvalidationBatch.struct_class = Types::InvalidationBatch

    InvalidationList.add_member(:marker, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Marker"))
    InvalidationList.add_member(:next_marker, Shapes::ShapeRef.new(shape: string, location_name: "NextMarker"))
    InvalidationList.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "MaxItems"))
    InvalidationList.add_member(:is_truncated, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "IsTruncated"))
    InvalidationList.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    InvalidationList.add_member(:items, Shapes::ShapeRef.new(shape: InvalidationSummaryList, location_name: "Items"))
    InvalidationList.struct_class = Types::InvalidationList

    InvalidationSummary.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Id"))
    InvalidationSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "CreateTime"))
    InvalidationSummary.add_member(:status, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Status"))
    InvalidationSummary.struct_class = Types::InvalidationSummary

    InvalidationSummaryList.member = Shapes::ShapeRef.new(shape: InvalidationSummary, location_name: "InvalidationSummary")

    KGKeyPairIds.add_member(:key_group_id, Shapes::ShapeRef.new(shape: string, location_name: "KeyGroupId"))
    KGKeyPairIds.add_member(:key_pair_ids, Shapes::ShapeRef.new(shape: KeyPairIds, location_name: "KeyPairIds"))
    KGKeyPairIds.struct_class = Types::KGKeyPairIds

    KGKeyPairIdsList.member = Shapes::ShapeRef.new(shape: KGKeyPairIds, location_name: "KeyGroup")

    KeyGroup.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Id"))
    KeyGroup.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "LastModifiedTime"))
    KeyGroup.add_member(:key_group_config, Shapes::ShapeRef.new(shape: KeyGroupConfig, required: true, location_name: "KeyGroupConfig"))
    KeyGroup.struct_class = Types::KeyGroup

    KeyGroupAlreadyExists.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    KeyGroupAlreadyExists.struct_class = Types::KeyGroupAlreadyExists

    KeyGroupConfig.add_member(:name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Name"))
    KeyGroupConfig.add_member(:items, Shapes::ShapeRef.new(shape: PublicKeyIdList, required: true, location_name: "Items"))
    KeyGroupConfig.add_member(:comment, Shapes::ShapeRef.new(shape: string, location_name: "Comment"))
    KeyGroupConfig.struct_class = Types::KeyGroupConfig

    KeyGroupList.add_member(:next_marker, Shapes::ShapeRef.new(shape: string, location_name: "NextMarker"))
    KeyGroupList.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "MaxItems"))
    KeyGroupList.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    KeyGroupList.add_member(:items, Shapes::ShapeRef.new(shape: KeyGroupSummaryList, location_name: "Items"))
    KeyGroupList.struct_class = Types::KeyGroupList

    KeyGroupSummary.add_member(:key_group, Shapes::ShapeRef.new(shape: KeyGroup, required: true, location_name: "KeyGroup"))
    KeyGroupSummary.struct_class = Types::KeyGroupSummary

    KeyGroupSummaryList.member = Shapes::ShapeRef.new(shape: KeyGroupSummary, location_name: "KeyGroupSummary")

    KeyPairIdList.member = Shapes::ShapeRef.new(shape: string, location_name: "KeyPairId")

    KeyPairIds.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    KeyPairIds.add_member(:items, Shapes::ShapeRef.new(shape: KeyPairIdList, location_name: "Items"))
    KeyPairIds.struct_class = Types::KeyPairIds

    KeyValueStore.add_member(:name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Name"))
    KeyValueStore.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Id"))
    KeyValueStore.add_member(:comment, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Comment"))
    KeyValueStore.add_member(:arn, Shapes::ShapeRef.new(shape: string, required: true, location_name: "ARN"))
    KeyValueStore.add_member(:status, Shapes::ShapeRef.new(shape: string, location_name: "Status"))
    KeyValueStore.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "LastModifiedTime"))
    KeyValueStore.struct_class = Types::KeyValueStore

    KeyValueStoreAssociation.add_member(:key_value_store_arn, Shapes::ShapeRef.new(shape: KeyValueStoreARN, required: true, location_name: "KeyValueStoreARN"))
    KeyValueStoreAssociation.struct_class = Types::KeyValueStoreAssociation

    KeyValueStoreAssociationList.member = Shapes::ShapeRef.new(shape: KeyValueStoreAssociation, location_name: "KeyValueStoreAssociation")

    KeyValueStoreAssociations.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    KeyValueStoreAssociations.add_member(:items, Shapes::ShapeRef.new(shape: KeyValueStoreAssociationList, location_name: "Items"))
    KeyValueStoreAssociations.struct_class = Types::KeyValueStoreAssociations

    KeyValueStoreList.add_member(:next_marker, Shapes::ShapeRef.new(shape: string, location_name: "NextMarker"))
    KeyValueStoreList.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "MaxItems"))
    KeyValueStoreList.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    KeyValueStoreList.add_member(:items, Shapes::ShapeRef.new(shape: KeyValueStoreSummaryList, location_name: "Items"))
    KeyValueStoreList.struct_class = Types::KeyValueStoreList

    KeyValueStoreSummaryList.member = Shapes::ShapeRef.new(shape: KeyValueStore, location_name: "KeyValueStore")

    KinesisStreamConfig.add_member(:role_arn, Shapes::ShapeRef.new(shape: string, required: true, location_name: "RoleARN"))
    KinesisStreamConfig.add_member(:stream_arn, Shapes::ShapeRef.new(shape: string, required: true, location_name: "StreamARN"))
    KinesisStreamConfig.struct_class = Types::KinesisStreamConfig

    LambdaFunctionAssociation.add_member(:lambda_function_arn, Shapes::ShapeRef.new(shape: LambdaFunctionARN, required: true, location_name: "LambdaFunctionARN"))
    LambdaFunctionAssociation.add_member(:event_type, Shapes::ShapeRef.new(shape: EventType, required: true, location_name: "EventType"))
    LambdaFunctionAssociation.add_member(:include_body, Shapes::ShapeRef.new(shape: boolean, location_name: "IncludeBody"))
    LambdaFunctionAssociation.struct_class = Types::LambdaFunctionAssociation

    LambdaFunctionAssociationList.member = Shapes::ShapeRef.new(shape: LambdaFunctionAssociation, location_name: "LambdaFunctionAssociation")

    LambdaFunctionAssociations.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    LambdaFunctionAssociations.add_member(:items, Shapes::ShapeRef.new(shape: LambdaFunctionAssociationList, location_name: "Items"))
    LambdaFunctionAssociations.struct_class = Types::LambdaFunctionAssociations

    ListCachePoliciesRequest.add_member(:type, Shapes::ShapeRef.new(shape: CachePolicyType, location: "querystring", location_name: "Type"))
    ListCachePoliciesRequest.add_member(:marker, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "Marker"))
    ListCachePoliciesRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, location: "querystring", location_name: "MaxItems"))
    ListCachePoliciesRequest.struct_class = Types::ListCachePoliciesRequest

    ListCachePoliciesResult.add_member(:cache_policy_list, Shapes::ShapeRef.new(shape: CachePolicyList, location_name: "CachePolicyList"))
    ListCachePoliciesResult.struct_class = Types::ListCachePoliciesResult
    ListCachePoliciesResult[:payload] = :cache_policy_list
    ListCachePoliciesResult[:payload_member] = ListCachePoliciesResult.member(:cache_policy_list)

    ListCloudFrontOriginAccessIdentitiesRequest.add_member(:marker, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "Marker"))
    ListCloudFrontOriginAccessIdentitiesRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, location: "querystring", location_name: "MaxItems"))
    ListCloudFrontOriginAccessIdentitiesRequest.struct_class = Types::ListCloudFrontOriginAccessIdentitiesRequest

    ListCloudFrontOriginAccessIdentitiesResult.add_member(:cloud_front_origin_access_identity_list, Shapes::ShapeRef.new(shape: CloudFrontOriginAccessIdentityList, location_name: "CloudFrontOriginAccessIdentityList"))
    ListCloudFrontOriginAccessIdentitiesResult.struct_class = Types::ListCloudFrontOriginAccessIdentitiesResult
    ListCloudFrontOriginAccessIdentitiesResult[:payload] = :cloud_front_origin_access_identity_list
    ListCloudFrontOriginAccessIdentitiesResult[:payload_member] = ListCloudFrontOriginAccessIdentitiesResult.member(:cloud_front_origin_access_identity_list)

    ListConflictingAliasesRequest.add_member(:distribution_id, Shapes::ShapeRef.new(shape: distributionIdString, required: true, location: "querystring", location_name: "DistributionId"))
    ListConflictingAliasesRequest.add_member(:alias, Shapes::ShapeRef.new(shape: aliasString, required: true, location: "querystring", location_name: "Alias"))
    ListConflictingAliasesRequest.add_member(:marker, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "Marker"))
    ListConflictingAliasesRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, location: "querystring", location_name: "MaxItems"))
    ListConflictingAliasesRequest.struct_class = Types::ListConflictingAliasesRequest

    ListConflictingAliasesResult.add_member(:conflicting_aliases_list, Shapes::ShapeRef.new(shape: ConflictingAliasesList, location_name: "ConflictingAliasesList"))
    ListConflictingAliasesResult.struct_class = Types::ListConflictingAliasesResult
    ListConflictingAliasesResult[:payload] = :conflicting_aliases_list
    ListConflictingAliasesResult[:payload_member] = ListConflictingAliasesResult.member(:conflicting_aliases_list)

    ListContinuousDeploymentPoliciesRequest.add_member(:marker, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "Marker"))
    ListContinuousDeploymentPoliciesRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, location: "querystring", location_name: "MaxItems"))
    ListContinuousDeploymentPoliciesRequest.struct_class = Types::ListContinuousDeploymentPoliciesRequest

    ListContinuousDeploymentPoliciesResult.add_member(:continuous_deployment_policy_list, Shapes::ShapeRef.new(shape: ContinuousDeploymentPolicyList, location_name: "ContinuousDeploymentPolicyList"))
    ListContinuousDeploymentPoliciesResult.struct_class = Types::ListContinuousDeploymentPoliciesResult
    ListContinuousDeploymentPoliciesResult[:payload] = :continuous_deployment_policy_list
    ListContinuousDeploymentPoliciesResult[:payload_member] = ListContinuousDeploymentPoliciesResult.member(:continuous_deployment_policy_list)

    ListDistributionsByCachePolicyIdRequest.add_member(:marker, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "Marker"))
    ListDistributionsByCachePolicyIdRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, location: "querystring", location_name: "MaxItems"))
    ListDistributionsByCachePolicyIdRequest.add_member(:cache_policy_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "CachePolicyId"))
    ListDistributionsByCachePolicyIdRequest.struct_class = Types::ListDistributionsByCachePolicyIdRequest

    ListDistributionsByCachePolicyIdResult.add_member(:distribution_id_list, Shapes::ShapeRef.new(shape: DistributionIdList, location_name: "DistributionIdList"))
    ListDistributionsByCachePolicyIdResult.struct_class = Types::ListDistributionsByCachePolicyIdResult
    ListDistributionsByCachePolicyIdResult[:payload] = :distribution_id_list
    ListDistributionsByCachePolicyIdResult[:payload_member] = ListDistributionsByCachePolicyIdResult.member(:distribution_id_list)

    ListDistributionsByKeyGroupRequest.add_member(:marker, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "Marker"))
    ListDistributionsByKeyGroupRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, location: "querystring", location_name: "MaxItems"))
    ListDistributionsByKeyGroupRequest.add_member(:key_group_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "KeyGroupId"))
    ListDistributionsByKeyGroupRequest.struct_class = Types::ListDistributionsByKeyGroupRequest

    ListDistributionsByKeyGroupResult.add_member(:distribution_id_list, Shapes::ShapeRef.new(shape: DistributionIdList, location_name: "DistributionIdList"))
    ListDistributionsByKeyGroupResult.struct_class = Types::ListDistributionsByKeyGroupResult
    ListDistributionsByKeyGroupResult[:payload] = :distribution_id_list
    ListDistributionsByKeyGroupResult[:payload_member] = ListDistributionsByKeyGroupResult.member(:distribution_id_list)

    ListDistributionsByOriginRequestPolicyIdRequest.add_member(:marker, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "Marker"))
    ListDistributionsByOriginRequestPolicyIdRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, location: "querystring", location_name: "MaxItems"))
    ListDistributionsByOriginRequestPolicyIdRequest.add_member(:origin_request_policy_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "OriginRequestPolicyId"))
    ListDistributionsByOriginRequestPolicyIdRequest.struct_class = Types::ListDistributionsByOriginRequestPolicyIdRequest

    ListDistributionsByOriginRequestPolicyIdResult.add_member(:distribution_id_list, Shapes::ShapeRef.new(shape: DistributionIdList, location_name: "DistributionIdList"))
    ListDistributionsByOriginRequestPolicyIdResult.struct_class = Types::ListDistributionsByOriginRequestPolicyIdResult
    ListDistributionsByOriginRequestPolicyIdResult[:payload] = :distribution_id_list
    ListDistributionsByOriginRequestPolicyIdResult[:payload_member] = ListDistributionsByOriginRequestPolicyIdResult.member(:distribution_id_list)

    ListDistributionsByRealtimeLogConfigRequest.add_member(:marker, Shapes::ShapeRef.new(shape: string, location_name: "Marker"))
    ListDistributionsByRealtimeLogConfigRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, location_name: "MaxItems"))
    ListDistributionsByRealtimeLogConfigRequest.add_member(:realtime_log_config_name, Shapes::ShapeRef.new(shape: string, location_name: "RealtimeLogConfigName"))
    ListDistributionsByRealtimeLogConfigRequest.add_member(:realtime_log_config_arn, Shapes::ShapeRef.new(shape: string, location_name: "RealtimeLogConfigArn"))
    ListDistributionsByRealtimeLogConfigRequest.struct_class = Types::ListDistributionsByRealtimeLogConfigRequest

    ListDistributionsByRealtimeLogConfigResult.add_member(:distribution_list, Shapes::ShapeRef.new(shape: DistributionList, location_name: "DistributionList"))
    ListDistributionsByRealtimeLogConfigResult.struct_class = Types::ListDistributionsByRealtimeLogConfigResult
    ListDistributionsByRealtimeLogConfigResult[:payload] = :distribution_list
    ListDistributionsByRealtimeLogConfigResult[:payload_member] = ListDistributionsByRealtimeLogConfigResult.member(:distribution_list)

    ListDistributionsByResponseHeadersPolicyIdRequest.add_member(:marker, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "Marker"))
    ListDistributionsByResponseHeadersPolicyIdRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, location: "querystring", location_name: "MaxItems"))
    ListDistributionsByResponseHeadersPolicyIdRequest.add_member(:response_headers_policy_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "ResponseHeadersPolicyId"))
    ListDistributionsByResponseHeadersPolicyIdRequest.struct_class = Types::ListDistributionsByResponseHeadersPolicyIdRequest

    ListDistributionsByResponseHeadersPolicyIdResult.add_member(:distribution_id_list, Shapes::ShapeRef.new(shape: DistributionIdList, location_name: "DistributionIdList"))
    ListDistributionsByResponseHeadersPolicyIdResult.struct_class = Types::ListDistributionsByResponseHeadersPolicyIdResult
    ListDistributionsByResponseHeadersPolicyIdResult[:payload] = :distribution_id_list
    ListDistributionsByResponseHeadersPolicyIdResult[:payload_member] = ListDistributionsByResponseHeadersPolicyIdResult.member(:distribution_id_list)

    ListDistributionsByWebACLIdRequest.add_member(:marker, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "Marker"))
    ListDistributionsByWebACLIdRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, location: "querystring", location_name: "MaxItems"))
    ListDistributionsByWebACLIdRequest.add_member(:web_acl_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "WebACLId"))
    ListDistributionsByWebACLIdRequest.struct_class = Types::ListDistributionsByWebACLIdRequest

    ListDistributionsByWebACLIdResult.add_member(:distribution_list, Shapes::ShapeRef.new(shape: DistributionList, location_name: "DistributionList"))
    ListDistributionsByWebACLIdResult.struct_class = Types::ListDistributionsByWebACLIdResult
    ListDistributionsByWebACLIdResult[:payload] = :distribution_list
    ListDistributionsByWebACLIdResult[:payload_member] = ListDistributionsByWebACLIdResult.member(:distribution_list)

    ListDistributionsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "Marker"))
    ListDistributionsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, location: "querystring", location_name: "MaxItems"))
    ListDistributionsRequest.struct_class = Types::ListDistributionsRequest

    ListDistributionsResult.add_member(:distribution_list, Shapes::ShapeRef.new(shape: DistributionList, location_name: "DistributionList"))
    ListDistributionsResult.struct_class = Types::ListDistributionsResult
    ListDistributionsResult[:payload] = :distribution_list
    ListDistributionsResult[:payload_member] = ListDistributionsResult.member(:distribution_list)

    ListFieldLevelEncryptionConfigsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "Marker"))
    ListFieldLevelEncryptionConfigsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, location: "querystring", location_name: "MaxItems"))
    ListFieldLevelEncryptionConfigsRequest.struct_class = Types::ListFieldLevelEncryptionConfigsRequest

    ListFieldLevelEncryptionConfigsResult.add_member(:field_level_encryption_list, Shapes::ShapeRef.new(shape: FieldLevelEncryptionList, location_name: "FieldLevelEncryptionList"))
    ListFieldLevelEncryptionConfigsResult.struct_class = Types::ListFieldLevelEncryptionConfigsResult
    ListFieldLevelEncryptionConfigsResult[:payload] = :field_level_encryption_list
    ListFieldLevelEncryptionConfigsResult[:payload_member] = ListFieldLevelEncryptionConfigsResult.member(:field_level_encryption_list)

    ListFieldLevelEncryptionProfilesRequest.add_member(:marker, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "Marker"))
    ListFieldLevelEncryptionProfilesRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, location: "querystring", location_name: "MaxItems"))
    ListFieldLevelEncryptionProfilesRequest.struct_class = Types::ListFieldLevelEncryptionProfilesRequest

    ListFieldLevelEncryptionProfilesResult.add_member(:field_level_encryption_profile_list, Shapes::ShapeRef.new(shape: FieldLevelEncryptionProfileList, location_name: "FieldLevelEncryptionProfileList"))
    ListFieldLevelEncryptionProfilesResult.struct_class = Types::ListFieldLevelEncryptionProfilesResult
    ListFieldLevelEncryptionProfilesResult[:payload] = :field_level_encryption_profile_list
    ListFieldLevelEncryptionProfilesResult[:payload_member] = ListFieldLevelEncryptionProfilesResult.member(:field_level_encryption_profile_list)

    ListFunctionsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "Marker"))
    ListFunctionsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, location: "querystring", location_name: "MaxItems"))
    ListFunctionsRequest.add_member(:stage, Shapes::ShapeRef.new(shape: FunctionStage, location: "querystring", location_name: "Stage"))
    ListFunctionsRequest.struct_class = Types::ListFunctionsRequest

    ListFunctionsResult.add_member(:function_list, Shapes::ShapeRef.new(shape: FunctionList, location_name: "FunctionList"))
    ListFunctionsResult.struct_class = Types::ListFunctionsResult
    ListFunctionsResult[:payload] = :function_list
    ListFunctionsResult[:payload_member] = ListFunctionsResult.member(:function_list)

    ListInvalidationsRequest.add_member(:distribution_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "DistributionId"))
    ListInvalidationsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "Marker"))
    ListInvalidationsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, location: "querystring", location_name: "MaxItems"))
    ListInvalidationsRequest.struct_class = Types::ListInvalidationsRequest

    ListInvalidationsResult.add_member(:invalidation_list, Shapes::ShapeRef.new(shape: InvalidationList, location_name: "InvalidationList"))
    ListInvalidationsResult.struct_class = Types::ListInvalidationsResult
    ListInvalidationsResult[:payload] = :invalidation_list
    ListInvalidationsResult[:payload_member] = ListInvalidationsResult.member(:invalidation_list)

    ListKeyGroupsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "Marker"))
    ListKeyGroupsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, location: "querystring", location_name: "MaxItems"))
    ListKeyGroupsRequest.struct_class = Types::ListKeyGroupsRequest

    ListKeyGroupsResult.add_member(:key_group_list, Shapes::ShapeRef.new(shape: KeyGroupList, location_name: "KeyGroupList"))
    ListKeyGroupsResult.struct_class = Types::ListKeyGroupsResult
    ListKeyGroupsResult[:payload] = :key_group_list
    ListKeyGroupsResult[:payload_member] = ListKeyGroupsResult.member(:key_group_list)

    ListKeyValueStoresRequest.add_member(:marker, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "Marker"))
    ListKeyValueStoresRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, location: "querystring", location_name: "MaxItems"))
    ListKeyValueStoresRequest.add_member(:status, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "Status"))
    ListKeyValueStoresRequest.struct_class = Types::ListKeyValueStoresRequest

    ListKeyValueStoresResult.add_member(:key_value_store_list, Shapes::ShapeRef.new(shape: KeyValueStoreList, location_name: "KeyValueStoreList"))
    ListKeyValueStoresResult.struct_class = Types::ListKeyValueStoresResult
    ListKeyValueStoresResult[:payload] = :key_value_store_list
    ListKeyValueStoresResult[:payload_member] = ListKeyValueStoresResult.member(:key_value_store_list)

    ListOriginAccessControlsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "Marker"))
    ListOriginAccessControlsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, location: "querystring", location_name: "MaxItems"))
    ListOriginAccessControlsRequest.struct_class = Types::ListOriginAccessControlsRequest

    ListOriginAccessControlsResult.add_member(:origin_access_control_list, Shapes::ShapeRef.new(shape: OriginAccessControlList, location_name: "OriginAccessControlList"))
    ListOriginAccessControlsResult.struct_class = Types::ListOriginAccessControlsResult
    ListOriginAccessControlsResult[:payload] = :origin_access_control_list
    ListOriginAccessControlsResult[:payload_member] = ListOriginAccessControlsResult.member(:origin_access_control_list)

    ListOriginRequestPoliciesRequest.add_member(:type, Shapes::ShapeRef.new(shape: OriginRequestPolicyType, location: "querystring", location_name: "Type"))
    ListOriginRequestPoliciesRequest.add_member(:marker, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "Marker"))
    ListOriginRequestPoliciesRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, location: "querystring", location_name: "MaxItems"))
    ListOriginRequestPoliciesRequest.struct_class = Types::ListOriginRequestPoliciesRequest

    ListOriginRequestPoliciesResult.add_member(:origin_request_policy_list, Shapes::ShapeRef.new(shape: OriginRequestPolicyList, location_name: "OriginRequestPolicyList"))
    ListOriginRequestPoliciesResult.struct_class = Types::ListOriginRequestPoliciesResult
    ListOriginRequestPoliciesResult[:payload] = :origin_request_policy_list
    ListOriginRequestPoliciesResult[:payload_member] = ListOriginRequestPoliciesResult.member(:origin_request_policy_list)

    ListPublicKeysRequest.add_member(:marker, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "Marker"))
    ListPublicKeysRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, location: "querystring", location_name: "MaxItems"))
    ListPublicKeysRequest.struct_class = Types::ListPublicKeysRequest

    ListPublicKeysResult.add_member(:public_key_list, Shapes::ShapeRef.new(shape: PublicKeyList, location_name: "PublicKeyList"))
    ListPublicKeysResult.struct_class = Types::ListPublicKeysResult
    ListPublicKeysResult[:payload] = :public_key_list
    ListPublicKeysResult[:payload_member] = ListPublicKeysResult.member(:public_key_list)

    ListRealtimeLogConfigsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, location: "querystring", location_name: "MaxItems"))
    ListRealtimeLogConfigsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "Marker"))
    ListRealtimeLogConfigsRequest.struct_class = Types::ListRealtimeLogConfigsRequest

    ListRealtimeLogConfigsResult.add_member(:realtime_log_configs, Shapes::ShapeRef.new(shape: RealtimeLogConfigs, location_name: "RealtimeLogConfigs"))
    ListRealtimeLogConfigsResult.struct_class = Types::ListRealtimeLogConfigsResult
    ListRealtimeLogConfigsResult[:payload] = :realtime_log_configs
    ListRealtimeLogConfigsResult[:payload_member] = ListRealtimeLogConfigsResult.member(:realtime_log_configs)

    ListResponseHeadersPoliciesRequest.add_member(:type, Shapes::ShapeRef.new(shape: ResponseHeadersPolicyType, location: "querystring", location_name: "Type"))
    ListResponseHeadersPoliciesRequest.add_member(:marker, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "Marker"))
    ListResponseHeadersPoliciesRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, location: "querystring", location_name: "MaxItems"))
    ListResponseHeadersPoliciesRequest.struct_class = Types::ListResponseHeadersPoliciesRequest

    ListResponseHeadersPoliciesResult.add_member(:response_headers_policy_list, Shapes::ShapeRef.new(shape: ResponseHeadersPolicyList, location_name: "ResponseHeadersPolicyList"))
    ListResponseHeadersPoliciesResult.struct_class = Types::ListResponseHeadersPoliciesResult
    ListResponseHeadersPoliciesResult[:payload] = :response_headers_policy_list
    ListResponseHeadersPoliciesResult[:payload_member] = ListResponseHeadersPoliciesResult.member(:response_headers_policy_list)

    ListStreamingDistributionsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "Marker"))
    ListStreamingDistributionsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, location: "querystring", location_name: "MaxItems"))
    ListStreamingDistributionsRequest.struct_class = Types::ListStreamingDistributionsRequest

    ListStreamingDistributionsResult.add_member(:streaming_distribution_list, Shapes::ShapeRef.new(shape: StreamingDistributionList, location_name: "StreamingDistributionList"))
    ListStreamingDistributionsResult.struct_class = Types::ListStreamingDistributionsResult
    ListStreamingDistributionsResult[:payload] = :streaming_distribution_list
    ListStreamingDistributionsResult[:payload_member] = ListStreamingDistributionsResult.member(:streaming_distribution_list)

    ListTagsForResourceRequest.add_member(:resource, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location: "querystring", location_name: "Resource"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResult.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    ListTagsForResourceResult.struct_class = Types::ListTagsForResourceResult
    ListTagsForResourceResult[:payload] = :tags
    ListTagsForResourceResult[:payload_member] = ListTagsForResourceResult.member(:tags)

    LocationList.member = Shapes::ShapeRef.new(shape: string, location_name: "Location")

    LoggingConfig.add_member(:enabled, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "Enabled"))
    LoggingConfig.add_member(:include_cookies, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "IncludeCookies"))
    LoggingConfig.add_member(:bucket, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Bucket"))
    LoggingConfig.add_member(:prefix, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Prefix"))
    LoggingConfig.struct_class = Types::LoggingConfig

    MethodsList.member = Shapes::ShapeRef.new(shape: Method, location_name: "Method")

    MissingBody.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    MissingBody.struct_class = Types::MissingBody

    MonitoringSubscription.add_member(:realtime_metrics_subscription_config, Shapes::ShapeRef.new(shape: RealtimeMetricsSubscriptionConfig, location_name: "RealtimeMetricsSubscriptionConfig"))
    MonitoringSubscription.struct_class = Types::MonitoringSubscription

    MonitoringSubscriptionAlreadyExists.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    MonitoringSubscriptionAlreadyExists.struct_class = Types::MonitoringSubscriptionAlreadyExists

    NoSuchCachePolicy.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    NoSuchCachePolicy.struct_class = Types::NoSuchCachePolicy

    NoSuchCloudFrontOriginAccessIdentity.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    NoSuchCloudFrontOriginAccessIdentity.struct_class = Types::NoSuchCloudFrontOriginAccessIdentity

    NoSuchContinuousDeploymentPolicy.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    NoSuchContinuousDeploymentPolicy.struct_class = Types::NoSuchContinuousDeploymentPolicy

    NoSuchDistribution.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    NoSuchDistribution.struct_class = Types::NoSuchDistribution

    NoSuchFieldLevelEncryptionConfig.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    NoSuchFieldLevelEncryptionConfig.struct_class = Types::NoSuchFieldLevelEncryptionConfig

    NoSuchFieldLevelEncryptionProfile.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    NoSuchFieldLevelEncryptionProfile.struct_class = Types::NoSuchFieldLevelEncryptionProfile

    NoSuchFunctionExists.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    NoSuchFunctionExists.struct_class = Types::NoSuchFunctionExists

    NoSuchInvalidation.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    NoSuchInvalidation.struct_class = Types::NoSuchInvalidation

    NoSuchMonitoringSubscription.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    NoSuchMonitoringSubscription.struct_class = Types::NoSuchMonitoringSubscription

    NoSuchOrigin.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    NoSuchOrigin.struct_class = Types::NoSuchOrigin

    NoSuchOriginAccessControl.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    NoSuchOriginAccessControl.struct_class = Types::NoSuchOriginAccessControl

    NoSuchOriginRequestPolicy.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    NoSuchOriginRequestPolicy.struct_class = Types::NoSuchOriginRequestPolicy

    NoSuchPublicKey.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    NoSuchPublicKey.struct_class = Types::NoSuchPublicKey

    NoSuchRealtimeLogConfig.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    NoSuchRealtimeLogConfig.struct_class = Types::NoSuchRealtimeLogConfig

    NoSuchResource.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    NoSuchResource.struct_class = Types::NoSuchResource

    NoSuchResponseHeadersPolicy.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    NoSuchResponseHeadersPolicy.struct_class = Types::NoSuchResponseHeadersPolicy

    NoSuchStreamingDistribution.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    NoSuchStreamingDistribution.struct_class = Types::NoSuchStreamingDistribution

    Origin.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Id"))
    Origin.add_member(:domain_name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "DomainName"))
    Origin.add_member(:origin_path, Shapes::ShapeRef.new(shape: string, location_name: "OriginPath"))
    Origin.add_member(:custom_headers, Shapes::ShapeRef.new(shape: CustomHeaders, location_name: "CustomHeaders"))
    Origin.add_member(:s3_origin_config, Shapes::ShapeRef.new(shape: S3OriginConfig, location_name: "S3OriginConfig"))
    Origin.add_member(:custom_origin_config, Shapes::ShapeRef.new(shape: CustomOriginConfig, location_name: "CustomOriginConfig"))
    Origin.add_member(:connection_attempts, Shapes::ShapeRef.new(shape: integer, location_name: "ConnectionAttempts"))
    Origin.add_member(:connection_timeout, Shapes::ShapeRef.new(shape: integer, location_name: "ConnectionTimeout"))
    Origin.add_member(:origin_shield, Shapes::ShapeRef.new(shape: OriginShield, location_name: "OriginShield"))
    Origin.add_member(:origin_access_control_id, Shapes::ShapeRef.new(shape: string, location_name: "OriginAccessControlId"))
    Origin.struct_class = Types::Origin

    OriginAccessControl.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Id"))
    OriginAccessControl.add_member(:origin_access_control_config, Shapes::ShapeRef.new(shape: OriginAccessControlConfig, location_name: "OriginAccessControlConfig"))
    OriginAccessControl.struct_class = Types::OriginAccessControl

    OriginAccessControlAlreadyExists.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    OriginAccessControlAlreadyExists.struct_class = Types::OriginAccessControlAlreadyExists

    OriginAccessControlConfig.add_member(:name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Name"))
    OriginAccessControlConfig.add_member(:description, Shapes::ShapeRef.new(shape: string, location_name: "Description"))
    OriginAccessControlConfig.add_member(:signing_protocol, Shapes::ShapeRef.new(shape: OriginAccessControlSigningProtocols, required: true, location_name: "SigningProtocol"))
    OriginAccessControlConfig.add_member(:signing_behavior, Shapes::ShapeRef.new(shape: OriginAccessControlSigningBehaviors, required: true, location_name: "SigningBehavior"))
    OriginAccessControlConfig.add_member(:origin_access_control_origin_type, Shapes::ShapeRef.new(shape: OriginAccessControlOriginTypes, required: true, location_name: "OriginAccessControlOriginType"))
    OriginAccessControlConfig.struct_class = Types::OriginAccessControlConfig

    OriginAccessControlInUse.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    OriginAccessControlInUse.struct_class = Types::OriginAccessControlInUse

    OriginAccessControlList.add_member(:marker, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Marker"))
    OriginAccessControlList.add_member(:next_marker, Shapes::ShapeRef.new(shape: string, location_name: "NextMarker"))
    OriginAccessControlList.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "MaxItems"))
    OriginAccessControlList.add_member(:is_truncated, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "IsTruncated"))
    OriginAccessControlList.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    OriginAccessControlList.add_member(:items, Shapes::ShapeRef.new(shape: OriginAccessControlSummaryList, location_name: "Items"))
    OriginAccessControlList.struct_class = Types::OriginAccessControlList

    OriginAccessControlSummary.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Id"))
    OriginAccessControlSummary.add_member(:description, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Description"))
    OriginAccessControlSummary.add_member(:name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Name"))
    OriginAccessControlSummary.add_member(:signing_protocol, Shapes::ShapeRef.new(shape: OriginAccessControlSigningProtocols, required: true, location_name: "SigningProtocol"))
    OriginAccessControlSummary.add_member(:signing_behavior, Shapes::ShapeRef.new(shape: OriginAccessControlSigningBehaviors, required: true, location_name: "SigningBehavior"))
    OriginAccessControlSummary.add_member(:origin_access_control_origin_type, Shapes::ShapeRef.new(shape: OriginAccessControlOriginTypes, required: true, location_name: "OriginAccessControlOriginType"))
    OriginAccessControlSummary.struct_class = Types::OriginAccessControlSummary

    OriginAccessControlSummaryList.member = Shapes::ShapeRef.new(shape: OriginAccessControlSummary, location_name: "OriginAccessControlSummary")

    OriginCustomHeader.add_member(:header_name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "HeaderName"))
    OriginCustomHeader.add_member(:header_value, Shapes::ShapeRef.new(shape: sensitiveStringType, required: true, location_name: "HeaderValue"))
    OriginCustomHeader.struct_class = Types::OriginCustomHeader

    OriginCustomHeadersList.member = Shapes::ShapeRef.new(shape: OriginCustomHeader, location_name: "OriginCustomHeader")

    OriginGroup.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Id"))
    OriginGroup.add_member(:failover_criteria, Shapes::ShapeRef.new(shape: OriginGroupFailoverCriteria, required: true, location_name: "FailoverCriteria"))
    OriginGroup.add_member(:members, Shapes::ShapeRef.new(shape: OriginGroupMembers, required: true, location_name: "Members"))
    OriginGroup.struct_class = Types::OriginGroup

    OriginGroupFailoverCriteria.add_member(:status_codes, Shapes::ShapeRef.new(shape: StatusCodes, required: true, location_name: "StatusCodes"))
    OriginGroupFailoverCriteria.struct_class = Types::OriginGroupFailoverCriteria

    OriginGroupList.member = Shapes::ShapeRef.new(shape: OriginGroup, location_name: "OriginGroup")

    OriginGroupMember.add_member(:origin_id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "OriginId"))
    OriginGroupMember.struct_class = Types::OriginGroupMember

    OriginGroupMemberList.member = Shapes::ShapeRef.new(shape: OriginGroupMember, location_name: "OriginGroupMember")

    OriginGroupMembers.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    OriginGroupMembers.add_member(:items, Shapes::ShapeRef.new(shape: OriginGroupMemberList, required: true, location_name: "Items"))
    OriginGroupMembers.struct_class = Types::OriginGroupMembers

    OriginGroups.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    OriginGroups.add_member(:items, Shapes::ShapeRef.new(shape: OriginGroupList, location_name: "Items"))
    OriginGroups.struct_class = Types::OriginGroups

    OriginList.member = Shapes::ShapeRef.new(shape: Origin, location_name: "Origin")

    OriginRequestPolicy.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Id"))
    OriginRequestPolicy.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "LastModifiedTime"))
    OriginRequestPolicy.add_member(:origin_request_policy_config, Shapes::ShapeRef.new(shape: OriginRequestPolicyConfig, required: true, location_name: "OriginRequestPolicyConfig"))
    OriginRequestPolicy.struct_class = Types::OriginRequestPolicy

    OriginRequestPolicyAlreadyExists.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    OriginRequestPolicyAlreadyExists.struct_class = Types::OriginRequestPolicyAlreadyExists

    OriginRequestPolicyConfig.add_member(:comment, Shapes::ShapeRef.new(shape: string, location_name: "Comment"))
    OriginRequestPolicyConfig.add_member(:name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Name"))
    OriginRequestPolicyConfig.add_member(:headers_config, Shapes::ShapeRef.new(shape: OriginRequestPolicyHeadersConfig, required: true, location_name: "HeadersConfig"))
    OriginRequestPolicyConfig.add_member(:cookies_config, Shapes::ShapeRef.new(shape: OriginRequestPolicyCookiesConfig, required: true, location_name: "CookiesConfig"))
    OriginRequestPolicyConfig.add_member(:query_strings_config, Shapes::ShapeRef.new(shape: OriginRequestPolicyQueryStringsConfig, required: true, location_name: "QueryStringsConfig"))
    OriginRequestPolicyConfig.struct_class = Types::OriginRequestPolicyConfig

    OriginRequestPolicyCookiesConfig.add_member(:cookie_behavior, Shapes::ShapeRef.new(shape: OriginRequestPolicyCookieBehavior, required: true, location_name: "CookieBehavior"))
    OriginRequestPolicyCookiesConfig.add_member(:cookies, Shapes::ShapeRef.new(shape: CookieNames, location_name: "Cookies"))
    OriginRequestPolicyCookiesConfig.struct_class = Types::OriginRequestPolicyCookiesConfig

    OriginRequestPolicyHeadersConfig.add_member(:header_behavior, Shapes::ShapeRef.new(shape: OriginRequestPolicyHeaderBehavior, required: true, location_name: "HeaderBehavior"))
    OriginRequestPolicyHeadersConfig.add_member(:headers, Shapes::ShapeRef.new(shape: Headers, location_name: "Headers"))
    OriginRequestPolicyHeadersConfig.struct_class = Types::OriginRequestPolicyHeadersConfig

    OriginRequestPolicyInUse.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    OriginRequestPolicyInUse.struct_class = Types::OriginRequestPolicyInUse

    OriginRequestPolicyList.add_member(:next_marker, Shapes::ShapeRef.new(shape: string, location_name: "NextMarker"))
    OriginRequestPolicyList.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "MaxItems"))
    OriginRequestPolicyList.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    OriginRequestPolicyList.add_member(:items, Shapes::ShapeRef.new(shape: OriginRequestPolicySummaryList, location_name: "Items"))
    OriginRequestPolicyList.struct_class = Types::OriginRequestPolicyList

    OriginRequestPolicyQueryStringsConfig.add_member(:query_string_behavior, Shapes::ShapeRef.new(shape: OriginRequestPolicyQueryStringBehavior, required: true, location_name: "QueryStringBehavior"))
    OriginRequestPolicyQueryStringsConfig.add_member(:query_strings, Shapes::ShapeRef.new(shape: QueryStringNames, location_name: "QueryStrings"))
    OriginRequestPolicyQueryStringsConfig.struct_class = Types::OriginRequestPolicyQueryStringsConfig

    OriginRequestPolicySummary.add_member(:type, Shapes::ShapeRef.new(shape: OriginRequestPolicyType, required: true, location_name: "Type"))
    OriginRequestPolicySummary.add_member(:origin_request_policy, Shapes::ShapeRef.new(shape: OriginRequestPolicy, required: true, location_name: "OriginRequestPolicy"))
    OriginRequestPolicySummary.struct_class = Types::OriginRequestPolicySummary

    OriginRequestPolicySummaryList.member = Shapes::ShapeRef.new(shape: OriginRequestPolicySummary, location_name: "OriginRequestPolicySummary")

    OriginShield.add_member(:enabled, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "Enabled"))
    OriginShield.add_member(:origin_shield_region, Shapes::ShapeRef.new(shape: OriginShieldRegion, location_name: "OriginShieldRegion"))
    OriginShield.struct_class = Types::OriginShield

    OriginSslProtocols.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    OriginSslProtocols.add_member(:items, Shapes::ShapeRef.new(shape: SslProtocolsList, required: true, location_name: "Items"))
    OriginSslProtocols.struct_class = Types::OriginSslProtocols

    Origins.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    Origins.add_member(:items, Shapes::ShapeRef.new(shape: OriginList, required: true, location_name: "Items"))
    Origins.struct_class = Types::Origins

    ParametersInCacheKeyAndForwardedToOrigin.add_member(:enable_accept_encoding_gzip, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "EnableAcceptEncodingGzip"))
    ParametersInCacheKeyAndForwardedToOrigin.add_member(:enable_accept_encoding_brotli, Shapes::ShapeRef.new(shape: boolean, location_name: "EnableAcceptEncodingBrotli"))
    ParametersInCacheKeyAndForwardedToOrigin.add_member(:headers_config, Shapes::ShapeRef.new(shape: CachePolicyHeadersConfig, required: true, location_name: "HeadersConfig"))
    ParametersInCacheKeyAndForwardedToOrigin.add_member(:cookies_config, Shapes::ShapeRef.new(shape: CachePolicyCookiesConfig, required: true, location_name: "CookiesConfig"))
    ParametersInCacheKeyAndForwardedToOrigin.add_member(:query_strings_config, Shapes::ShapeRef.new(shape: CachePolicyQueryStringsConfig, required: true, location_name: "QueryStringsConfig"))
    ParametersInCacheKeyAndForwardedToOrigin.struct_class = Types::ParametersInCacheKeyAndForwardedToOrigin

    PathList.member = Shapes::ShapeRef.new(shape: string, location_name: "Path")

    Paths.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    Paths.add_member(:items, Shapes::ShapeRef.new(shape: PathList, location_name: "Items"))
    Paths.struct_class = Types::Paths

    PreconditionFailed.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    PreconditionFailed.struct_class = Types::PreconditionFailed

    PublicKey.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Id"))
    PublicKey.add_member(:created_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "CreatedTime"))
    PublicKey.add_member(:public_key_config, Shapes::ShapeRef.new(shape: PublicKeyConfig, required: true, location_name: "PublicKeyConfig"))
    PublicKey.struct_class = Types::PublicKey

    PublicKeyAlreadyExists.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    PublicKeyAlreadyExists.struct_class = Types::PublicKeyAlreadyExists

    PublicKeyConfig.add_member(:caller_reference, Shapes::ShapeRef.new(shape: string, required: true, location_name: "CallerReference"))
    PublicKeyConfig.add_member(:name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Name"))
    PublicKeyConfig.add_member(:encoded_key, Shapes::ShapeRef.new(shape: string, required: true, location_name: "EncodedKey"))
    PublicKeyConfig.add_member(:comment, Shapes::ShapeRef.new(shape: string, location_name: "Comment"))
    PublicKeyConfig.struct_class = Types::PublicKeyConfig

    PublicKeyIdList.member = Shapes::ShapeRef.new(shape: string, location_name: "PublicKey")

    PublicKeyInUse.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    PublicKeyInUse.struct_class = Types::PublicKeyInUse

    PublicKeyList.add_member(:next_marker, Shapes::ShapeRef.new(shape: string, location_name: "NextMarker"))
    PublicKeyList.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "MaxItems"))
    PublicKeyList.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    PublicKeyList.add_member(:items, Shapes::ShapeRef.new(shape: PublicKeySummaryList, location_name: "Items"))
    PublicKeyList.struct_class = Types::PublicKeyList

    PublicKeySummary.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Id"))
    PublicKeySummary.add_member(:name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Name"))
    PublicKeySummary.add_member(:created_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "CreatedTime"))
    PublicKeySummary.add_member(:encoded_key, Shapes::ShapeRef.new(shape: string, required: true, location_name: "EncodedKey"))
    PublicKeySummary.add_member(:comment, Shapes::ShapeRef.new(shape: string, location_name: "Comment"))
    PublicKeySummary.struct_class = Types::PublicKeySummary

    PublicKeySummaryList.member = Shapes::ShapeRef.new(shape: PublicKeySummary, location_name: "PublicKeySummary")

    PublishFunctionRequest.add_member(:name, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Name"))
    PublishFunctionRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: string, required: true, location: "header", location_name: "If-Match"))
    PublishFunctionRequest.struct_class = Types::PublishFunctionRequest

    PublishFunctionResult.add_member(:function_summary, Shapes::ShapeRef.new(shape: FunctionSummary, location_name: "FunctionSummary"))
    PublishFunctionResult.struct_class = Types::PublishFunctionResult
    PublishFunctionResult[:payload] = :function_summary
    PublishFunctionResult[:payload_member] = PublishFunctionResult.member(:function_summary)

    QueryArgProfile.add_member(:query_arg, Shapes::ShapeRef.new(shape: string, required: true, location_name: "QueryArg"))
    QueryArgProfile.add_member(:profile_id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "ProfileId"))
    QueryArgProfile.struct_class = Types::QueryArgProfile

    QueryArgProfileConfig.add_member(:forward_when_query_arg_profile_is_unknown, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "ForwardWhenQueryArgProfileIsUnknown"))
    QueryArgProfileConfig.add_member(:query_arg_profiles, Shapes::ShapeRef.new(shape: QueryArgProfiles, location_name: "QueryArgProfiles"))
    QueryArgProfileConfig.struct_class = Types::QueryArgProfileConfig

    QueryArgProfileEmpty.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    QueryArgProfileEmpty.struct_class = Types::QueryArgProfileEmpty

    QueryArgProfileList.member = Shapes::ShapeRef.new(shape: QueryArgProfile, location_name: "QueryArgProfile")

    QueryArgProfiles.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    QueryArgProfiles.add_member(:items, Shapes::ShapeRef.new(shape: QueryArgProfileList, location_name: "Items"))
    QueryArgProfiles.struct_class = Types::QueryArgProfiles

    QueryStringCacheKeys.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    QueryStringCacheKeys.add_member(:items, Shapes::ShapeRef.new(shape: QueryStringCacheKeysList, location_name: "Items"))
    QueryStringCacheKeys.struct_class = Types::QueryStringCacheKeys

    QueryStringCacheKeysList.member = Shapes::ShapeRef.new(shape: string, location_name: "Name")

    QueryStringNames.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    QueryStringNames.add_member(:items, Shapes::ShapeRef.new(shape: QueryStringNamesList, location_name: "Items"))
    QueryStringNames.struct_class = Types::QueryStringNames

    QueryStringNamesList.member = Shapes::ShapeRef.new(shape: string, location_name: "Name")

    RealtimeLogConfig.add_member(:arn, Shapes::ShapeRef.new(shape: string, required: true, location_name: "ARN"))
    RealtimeLogConfig.add_member(:name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Name"))
    RealtimeLogConfig.add_member(:sampling_rate, Shapes::ShapeRef.new(shape: long, required: true, location_name: "SamplingRate"))
    RealtimeLogConfig.add_member(:end_points, Shapes::ShapeRef.new(shape: EndPointList, required: true, location_name: "EndPoints"))
    RealtimeLogConfig.add_member(:fields, Shapes::ShapeRef.new(shape: FieldList, required: true, location_name: "Fields"))
    RealtimeLogConfig.struct_class = Types::RealtimeLogConfig

    RealtimeLogConfigAlreadyExists.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    RealtimeLogConfigAlreadyExists.struct_class = Types::RealtimeLogConfigAlreadyExists

    RealtimeLogConfigInUse.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    RealtimeLogConfigInUse.struct_class = Types::RealtimeLogConfigInUse

    RealtimeLogConfigList.member = Shapes::ShapeRef.new(shape: RealtimeLogConfig)

    RealtimeLogConfigOwnerMismatch.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    RealtimeLogConfigOwnerMismatch.struct_class = Types::RealtimeLogConfigOwnerMismatch

    RealtimeLogConfigs.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "MaxItems"))
    RealtimeLogConfigs.add_member(:items, Shapes::ShapeRef.new(shape: RealtimeLogConfigList, location_name: "Items"))
    RealtimeLogConfigs.add_member(:is_truncated, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "IsTruncated"))
    RealtimeLogConfigs.add_member(:marker, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Marker"))
    RealtimeLogConfigs.add_member(:next_marker, Shapes::ShapeRef.new(shape: string, location_name: "NextMarker"))
    RealtimeLogConfigs.struct_class = Types::RealtimeLogConfigs

    RealtimeMetricsSubscriptionConfig.add_member(:realtime_metrics_subscription_status, Shapes::ShapeRef.new(shape: RealtimeMetricsSubscriptionStatus, required: true, location_name: "RealtimeMetricsSubscriptionStatus"))
    RealtimeMetricsSubscriptionConfig.struct_class = Types::RealtimeMetricsSubscriptionConfig

    ResourceInUse.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    ResourceInUse.struct_class = Types::ResourceInUse

    ResponseHeadersPolicy.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Id"))
    ResponseHeadersPolicy.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "LastModifiedTime"))
    ResponseHeadersPolicy.add_member(:response_headers_policy_config, Shapes::ShapeRef.new(shape: ResponseHeadersPolicyConfig, required: true, location_name: "ResponseHeadersPolicyConfig"))
    ResponseHeadersPolicy.struct_class = Types::ResponseHeadersPolicy

    ResponseHeadersPolicyAccessControlAllowHeaders.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    ResponseHeadersPolicyAccessControlAllowHeaders.add_member(:items, Shapes::ShapeRef.new(shape: AccessControlAllowHeadersList, required: true, location_name: "Items"))
    ResponseHeadersPolicyAccessControlAllowHeaders.struct_class = Types::ResponseHeadersPolicyAccessControlAllowHeaders

    ResponseHeadersPolicyAccessControlAllowMethods.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    ResponseHeadersPolicyAccessControlAllowMethods.add_member(:items, Shapes::ShapeRef.new(shape: AccessControlAllowMethodsList, required: true, location_name: "Items"))
    ResponseHeadersPolicyAccessControlAllowMethods.struct_class = Types::ResponseHeadersPolicyAccessControlAllowMethods

    ResponseHeadersPolicyAccessControlAllowOrigins.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    ResponseHeadersPolicyAccessControlAllowOrigins.add_member(:items, Shapes::ShapeRef.new(shape: AccessControlAllowOriginsList, required: true, location_name: "Items"))
    ResponseHeadersPolicyAccessControlAllowOrigins.struct_class = Types::ResponseHeadersPolicyAccessControlAllowOrigins

    ResponseHeadersPolicyAccessControlExposeHeaders.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    ResponseHeadersPolicyAccessControlExposeHeaders.add_member(:items, Shapes::ShapeRef.new(shape: AccessControlExposeHeadersList, location_name: "Items"))
    ResponseHeadersPolicyAccessControlExposeHeaders.struct_class = Types::ResponseHeadersPolicyAccessControlExposeHeaders

    ResponseHeadersPolicyAlreadyExists.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    ResponseHeadersPolicyAlreadyExists.struct_class = Types::ResponseHeadersPolicyAlreadyExists

    ResponseHeadersPolicyConfig.add_member(:comment, Shapes::ShapeRef.new(shape: string, location_name: "Comment"))
    ResponseHeadersPolicyConfig.add_member(:name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Name"))
    ResponseHeadersPolicyConfig.add_member(:cors_config, Shapes::ShapeRef.new(shape: ResponseHeadersPolicyCorsConfig, location_name: "CorsConfig"))
    ResponseHeadersPolicyConfig.add_member(:security_headers_config, Shapes::ShapeRef.new(shape: ResponseHeadersPolicySecurityHeadersConfig, location_name: "SecurityHeadersConfig"))
    ResponseHeadersPolicyConfig.add_member(:server_timing_headers_config, Shapes::ShapeRef.new(shape: ResponseHeadersPolicyServerTimingHeadersConfig, location_name: "ServerTimingHeadersConfig"))
    ResponseHeadersPolicyConfig.add_member(:custom_headers_config, Shapes::ShapeRef.new(shape: ResponseHeadersPolicyCustomHeadersConfig, location_name: "CustomHeadersConfig"))
    ResponseHeadersPolicyConfig.add_member(:remove_headers_config, Shapes::ShapeRef.new(shape: ResponseHeadersPolicyRemoveHeadersConfig, location_name: "RemoveHeadersConfig"))
    ResponseHeadersPolicyConfig.struct_class = Types::ResponseHeadersPolicyConfig

    ResponseHeadersPolicyContentSecurityPolicy.add_member(:override, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "Override"))
    ResponseHeadersPolicyContentSecurityPolicy.add_member(:content_security_policy, Shapes::ShapeRef.new(shape: string, required: true, location_name: "ContentSecurityPolicy"))
    ResponseHeadersPolicyContentSecurityPolicy.struct_class = Types::ResponseHeadersPolicyContentSecurityPolicy

    ResponseHeadersPolicyContentTypeOptions.add_member(:override, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "Override"))
    ResponseHeadersPolicyContentTypeOptions.struct_class = Types::ResponseHeadersPolicyContentTypeOptions

    ResponseHeadersPolicyCorsConfig.add_member(:access_control_allow_origins, Shapes::ShapeRef.new(shape: ResponseHeadersPolicyAccessControlAllowOrigins, required: true, location_name: "AccessControlAllowOrigins"))
    ResponseHeadersPolicyCorsConfig.add_member(:access_control_allow_headers, Shapes::ShapeRef.new(shape: ResponseHeadersPolicyAccessControlAllowHeaders, required: true, location_name: "AccessControlAllowHeaders"))
    ResponseHeadersPolicyCorsConfig.add_member(:access_control_allow_methods, Shapes::ShapeRef.new(shape: ResponseHeadersPolicyAccessControlAllowMethods, required: true, location_name: "AccessControlAllowMethods"))
    ResponseHeadersPolicyCorsConfig.add_member(:access_control_allow_credentials, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "AccessControlAllowCredentials"))
    ResponseHeadersPolicyCorsConfig.add_member(:access_control_expose_headers, Shapes::ShapeRef.new(shape: ResponseHeadersPolicyAccessControlExposeHeaders, location_name: "AccessControlExposeHeaders"))
    ResponseHeadersPolicyCorsConfig.add_member(:access_control_max_age_sec, Shapes::ShapeRef.new(shape: integer, location_name: "AccessControlMaxAgeSec"))
    ResponseHeadersPolicyCorsConfig.add_member(:origin_override, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "OriginOverride"))
    ResponseHeadersPolicyCorsConfig.struct_class = Types::ResponseHeadersPolicyCorsConfig

    ResponseHeadersPolicyCustomHeader.add_member(:header, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Header"))
    ResponseHeadersPolicyCustomHeader.add_member(:value, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Value"))
    ResponseHeadersPolicyCustomHeader.add_member(:override, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "Override"))
    ResponseHeadersPolicyCustomHeader.struct_class = Types::ResponseHeadersPolicyCustomHeader

    ResponseHeadersPolicyCustomHeaderList.member = Shapes::ShapeRef.new(shape: ResponseHeadersPolicyCustomHeader, location_name: "ResponseHeadersPolicyCustomHeader")

    ResponseHeadersPolicyCustomHeadersConfig.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    ResponseHeadersPolicyCustomHeadersConfig.add_member(:items, Shapes::ShapeRef.new(shape: ResponseHeadersPolicyCustomHeaderList, location_name: "Items"))
    ResponseHeadersPolicyCustomHeadersConfig.struct_class = Types::ResponseHeadersPolicyCustomHeadersConfig

    ResponseHeadersPolicyFrameOptions.add_member(:override, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "Override"))
    ResponseHeadersPolicyFrameOptions.add_member(:frame_option, Shapes::ShapeRef.new(shape: FrameOptionsList, required: true, location_name: "FrameOption"))
    ResponseHeadersPolicyFrameOptions.struct_class = Types::ResponseHeadersPolicyFrameOptions

    ResponseHeadersPolicyInUse.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    ResponseHeadersPolicyInUse.struct_class = Types::ResponseHeadersPolicyInUse

    ResponseHeadersPolicyList.add_member(:next_marker, Shapes::ShapeRef.new(shape: string, location_name: "NextMarker"))
    ResponseHeadersPolicyList.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "MaxItems"))
    ResponseHeadersPolicyList.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    ResponseHeadersPolicyList.add_member(:items, Shapes::ShapeRef.new(shape: ResponseHeadersPolicySummaryList, location_name: "Items"))
    ResponseHeadersPolicyList.struct_class = Types::ResponseHeadersPolicyList

    ResponseHeadersPolicyReferrerPolicy.add_member(:override, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "Override"))
    ResponseHeadersPolicyReferrerPolicy.add_member(:referrer_policy, Shapes::ShapeRef.new(shape: ReferrerPolicyList, required: true, location_name: "ReferrerPolicy"))
    ResponseHeadersPolicyReferrerPolicy.struct_class = Types::ResponseHeadersPolicyReferrerPolicy

    ResponseHeadersPolicyRemoveHeader.add_member(:header, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Header"))
    ResponseHeadersPolicyRemoveHeader.struct_class = Types::ResponseHeadersPolicyRemoveHeader

    ResponseHeadersPolicyRemoveHeaderList.member = Shapes::ShapeRef.new(shape: ResponseHeadersPolicyRemoveHeader, location_name: "ResponseHeadersPolicyRemoveHeader")

    ResponseHeadersPolicyRemoveHeadersConfig.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    ResponseHeadersPolicyRemoveHeadersConfig.add_member(:items, Shapes::ShapeRef.new(shape: ResponseHeadersPolicyRemoveHeaderList, location_name: "Items"))
    ResponseHeadersPolicyRemoveHeadersConfig.struct_class = Types::ResponseHeadersPolicyRemoveHeadersConfig

    ResponseHeadersPolicySecurityHeadersConfig.add_member(:xss_protection, Shapes::ShapeRef.new(shape: ResponseHeadersPolicyXSSProtection, location_name: "XSSProtection"))
    ResponseHeadersPolicySecurityHeadersConfig.add_member(:frame_options, Shapes::ShapeRef.new(shape: ResponseHeadersPolicyFrameOptions, location_name: "FrameOptions"))
    ResponseHeadersPolicySecurityHeadersConfig.add_member(:referrer_policy, Shapes::ShapeRef.new(shape: ResponseHeadersPolicyReferrerPolicy, location_name: "ReferrerPolicy"))
    ResponseHeadersPolicySecurityHeadersConfig.add_member(:content_security_policy, Shapes::ShapeRef.new(shape: ResponseHeadersPolicyContentSecurityPolicy, location_name: "ContentSecurityPolicy"))
    ResponseHeadersPolicySecurityHeadersConfig.add_member(:content_type_options, Shapes::ShapeRef.new(shape: ResponseHeadersPolicyContentTypeOptions, location_name: "ContentTypeOptions"))
    ResponseHeadersPolicySecurityHeadersConfig.add_member(:strict_transport_security, Shapes::ShapeRef.new(shape: ResponseHeadersPolicyStrictTransportSecurity, location_name: "StrictTransportSecurity"))
    ResponseHeadersPolicySecurityHeadersConfig.struct_class = Types::ResponseHeadersPolicySecurityHeadersConfig

    ResponseHeadersPolicyServerTimingHeadersConfig.add_member(:enabled, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "Enabled"))
    ResponseHeadersPolicyServerTimingHeadersConfig.add_member(:sampling_rate, Shapes::ShapeRef.new(shape: SamplingRate, location_name: "SamplingRate"))
    ResponseHeadersPolicyServerTimingHeadersConfig.struct_class = Types::ResponseHeadersPolicyServerTimingHeadersConfig

    ResponseHeadersPolicyStrictTransportSecurity.add_member(:override, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "Override"))
    ResponseHeadersPolicyStrictTransportSecurity.add_member(:include_subdomains, Shapes::ShapeRef.new(shape: boolean, location_name: "IncludeSubdomains"))
    ResponseHeadersPolicyStrictTransportSecurity.add_member(:preload, Shapes::ShapeRef.new(shape: boolean, location_name: "Preload"))
    ResponseHeadersPolicyStrictTransportSecurity.add_member(:access_control_max_age_sec, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "AccessControlMaxAgeSec"))
    ResponseHeadersPolicyStrictTransportSecurity.struct_class = Types::ResponseHeadersPolicyStrictTransportSecurity

    ResponseHeadersPolicySummary.add_member(:type, Shapes::ShapeRef.new(shape: ResponseHeadersPolicyType, required: true, location_name: "Type"))
    ResponseHeadersPolicySummary.add_member(:response_headers_policy, Shapes::ShapeRef.new(shape: ResponseHeadersPolicy, required: true, location_name: "ResponseHeadersPolicy"))
    ResponseHeadersPolicySummary.struct_class = Types::ResponseHeadersPolicySummary

    ResponseHeadersPolicySummaryList.member = Shapes::ShapeRef.new(shape: ResponseHeadersPolicySummary, location_name: "ResponseHeadersPolicySummary")

    ResponseHeadersPolicyXSSProtection.add_member(:override, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "Override"))
    ResponseHeadersPolicyXSSProtection.add_member(:protection, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "Protection"))
    ResponseHeadersPolicyXSSProtection.add_member(:mode_block, Shapes::ShapeRef.new(shape: boolean, location_name: "ModeBlock"))
    ResponseHeadersPolicyXSSProtection.add_member(:report_uri, Shapes::ShapeRef.new(shape: string, location_name: "ReportUri"))
    ResponseHeadersPolicyXSSProtection.struct_class = Types::ResponseHeadersPolicyXSSProtection

    Restrictions.add_member(:geo_restriction, Shapes::ShapeRef.new(shape: GeoRestriction, required: true, location_name: "GeoRestriction"))
    Restrictions.struct_class = Types::Restrictions

    S3Origin.add_member(:domain_name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "DomainName"))
    S3Origin.add_member(:origin_access_identity, Shapes::ShapeRef.new(shape: string, required: true, location_name: "OriginAccessIdentity"))
    S3Origin.struct_class = Types::S3Origin

    S3OriginConfig.add_member(:origin_access_identity, Shapes::ShapeRef.new(shape: string, required: true, location_name: "OriginAccessIdentity"))
    S3OriginConfig.struct_class = Types::S3OriginConfig

    SessionStickinessConfig.add_member(:idle_ttl, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "IdleTTL"))
    SessionStickinessConfig.add_member(:maximum_ttl, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "MaximumTTL"))
    SessionStickinessConfig.struct_class = Types::SessionStickinessConfig

    Signer.add_member(:aws_account_number, Shapes::ShapeRef.new(shape: string, location_name: "AwsAccountNumber"))
    Signer.add_member(:key_pair_ids, Shapes::ShapeRef.new(shape: KeyPairIds, location_name: "KeyPairIds"))
    Signer.struct_class = Types::Signer

    SignerList.member = Shapes::ShapeRef.new(shape: Signer, location_name: "Signer")

    SslProtocolsList.member = Shapes::ShapeRef.new(shape: SslProtocol, location_name: "SslProtocol")

    StagingDistributionDnsNameList.member = Shapes::ShapeRef.new(shape: string, location_name: "DnsName")

    StagingDistributionDnsNames.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    StagingDistributionDnsNames.add_member(:items, Shapes::ShapeRef.new(shape: StagingDistributionDnsNameList, location_name: "Items"))
    StagingDistributionDnsNames.struct_class = Types::StagingDistributionDnsNames

    StagingDistributionInUse.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    StagingDistributionInUse.struct_class = Types::StagingDistributionInUse

    StatusCodeList.member = Shapes::ShapeRef.new(shape: integer, location_name: "StatusCode")

    StatusCodes.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    StatusCodes.add_member(:items, Shapes::ShapeRef.new(shape: StatusCodeList, required: true, location_name: "Items"))
    StatusCodes.struct_class = Types::StatusCodes

    StreamingDistribution.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Id"))
    StreamingDistribution.add_member(:arn, Shapes::ShapeRef.new(shape: string, required: true, location_name: "ARN"))
    StreamingDistribution.add_member(:status, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Status"))
    StreamingDistribution.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastModifiedTime"))
    StreamingDistribution.add_member(:domain_name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "DomainName"))
    StreamingDistribution.add_member(:active_trusted_signers, Shapes::ShapeRef.new(shape: ActiveTrustedSigners, required: true, location_name: "ActiveTrustedSigners"))
    StreamingDistribution.add_member(:streaming_distribution_config, Shapes::ShapeRef.new(shape: StreamingDistributionConfig, required: true, location_name: "StreamingDistributionConfig"))
    StreamingDistribution.struct_class = Types::StreamingDistribution

    StreamingDistributionAlreadyExists.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    StreamingDistributionAlreadyExists.struct_class = Types::StreamingDistributionAlreadyExists

    StreamingDistributionConfig.add_member(:caller_reference, Shapes::ShapeRef.new(shape: string, required: true, location_name: "CallerReference"))
    StreamingDistributionConfig.add_member(:s3_origin, Shapes::ShapeRef.new(shape: S3Origin, required: true, location_name: "S3Origin"))
    StreamingDistributionConfig.add_member(:aliases, Shapes::ShapeRef.new(shape: Aliases, location_name: "Aliases"))
    StreamingDistributionConfig.add_member(:comment, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Comment"))
    StreamingDistributionConfig.add_member(:logging, Shapes::ShapeRef.new(shape: StreamingLoggingConfig, location_name: "Logging"))
    StreamingDistributionConfig.add_member(:trusted_signers, Shapes::ShapeRef.new(shape: TrustedSigners, required: true, location_name: "TrustedSigners"))
    StreamingDistributionConfig.add_member(:price_class, Shapes::ShapeRef.new(shape: PriceClass, location_name: "PriceClass"))
    StreamingDistributionConfig.add_member(:enabled, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "Enabled"))
    StreamingDistributionConfig.struct_class = Types::StreamingDistributionConfig

    StreamingDistributionConfigWithTags.add_member(:streaming_distribution_config, Shapes::ShapeRef.new(shape: StreamingDistributionConfig, required: true, location_name: "StreamingDistributionConfig"))
    StreamingDistributionConfigWithTags.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    StreamingDistributionConfigWithTags.struct_class = Types::StreamingDistributionConfigWithTags

    StreamingDistributionList.add_member(:marker, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Marker"))
    StreamingDistributionList.add_member(:next_marker, Shapes::ShapeRef.new(shape: string, location_name: "NextMarker"))
    StreamingDistributionList.add_member(:max_items, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "MaxItems"))
    StreamingDistributionList.add_member(:is_truncated, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "IsTruncated"))
    StreamingDistributionList.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    StreamingDistributionList.add_member(:items, Shapes::ShapeRef.new(shape: StreamingDistributionSummaryList, location_name: "Items"))
    StreamingDistributionList.struct_class = Types::StreamingDistributionList

    StreamingDistributionNotDisabled.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    StreamingDistributionNotDisabled.struct_class = Types::StreamingDistributionNotDisabled

    StreamingDistributionSummary.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Id"))
    StreamingDistributionSummary.add_member(:arn, Shapes::ShapeRef.new(shape: string, required: true, location_name: "ARN"))
    StreamingDistributionSummary.add_member(:status, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Status"))
    StreamingDistributionSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "LastModifiedTime"))
    StreamingDistributionSummary.add_member(:domain_name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "DomainName"))
    StreamingDistributionSummary.add_member(:s3_origin, Shapes::ShapeRef.new(shape: S3Origin, required: true, location_name: "S3Origin"))
    StreamingDistributionSummary.add_member(:aliases, Shapes::ShapeRef.new(shape: Aliases, required: true, location_name: "Aliases"))
    StreamingDistributionSummary.add_member(:trusted_signers, Shapes::ShapeRef.new(shape: TrustedSigners, required: true, location_name: "TrustedSigners"))
    StreamingDistributionSummary.add_member(:comment, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Comment"))
    StreamingDistributionSummary.add_member(:price_class, Shapes::ShapeRef.new(shape: PriceClass, required: true, location_name: "PriceClass"))
    StreamingDistributionSummary.add_member(:enabled, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "Enabled"))
    StreamingDistributionSummary.struct_class = Types::StreamingDistributionSummary

    StreamingDistributionSummaryList.member = Shapes::ShapeRef.new(shape: StreamingDistributionSummary, location_name: "StreamingDistributionSummary")

    StreamingLoggingConfig.add_member(:enabled, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "Enabled"))
    StreamingLoggingConfig.add_member(:bucket, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Bucket"))
    StreamingLoggingConfig.add_member(:prefix, Shapes::ShapeRef.new(shape: string, required: true, location_name: "Prefix"))
    StreamingLoggingConfig.struct_class = Types::StreamingLoggingConfig

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey, location_name: "Key")

    TagKeys.add_member(:items, Shapes::ShapeRef.new(shape: TagKeyList, location_name: "Items"))
    TagKeys.struct_class = Types::TagKeys

    TagList.member = Shapes::ShapeRef.new(shape: Tag, location_name: "Tag")

    TagResourceRequest.add_member(:resource, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location: "querystring", location_name: "Resource"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}}))
    TagResourceRequest.struct_class = Types::TagResourceRequest
    TagResourceRequest[:payload] = :tags
    TagResourceRequest[:payload_member] = TagResourceRequest.member(:tags)

    Tags.add_member(:items, Shapes::ShapeRef.new(shape: TagList, location_name: "Items"))
    Tags.struct_class = Types::Tags

    TestFunctionFailed.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TestFunctionFailed.struct_class = Types::TestFunctionFailed

    TestFunctionRequest.add_member(:name, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Name"))
    TestFunctionRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: string, required: true, location: "header", location_name: "If-Match"))
    TestFunctionRequest.add_member(:stage, Shapes::ShapeRef.new(shape: FunctionStage, location_name: "Stage"))
    TestFunctionRequest.add_member(:event_object, Shapes::ShapeRef.new(shape: FunctionEventObject, required: true, location_name: "EventObject"))
    TestFunctionRequest.struct_class = Types::TestFunctionRequest

    TestFunctionResult.add_member(:test_result, Shapes::ShapeRef.new(shape: TestResult, location_name: "TestResult"))
    TestFunctionResult.struct_class = Types::TestFunctionResult
    TestFunctionResult[:payload] = :test_result
    TestFunctionResult[:payload_member] = TestFunctionResult.member(:test_result)

    TestResult.add_member(:function_summary, Shapes::ShapeRef.new(shape: FunctionSummary, location_name: "FunctionSummary"))
    TestResult.add_member(:compute_utilization, Shapes::ShapeRef.new(shape: string, location_name: "ComputeUtilization"))
    TestResult.add_member(:function_execution_logs, Shapes::ShapeRef.new(shape: FunctionExecutionLogList, location_name: "FunctionExecutionLogs"))
    TestResult.add_member(:function_error_message, Shapes::ShapeRef.new(shape: sensitiveStringType, location_name: "FunctionErrorMessage"))
    TestResult.add_member(:function_output, Shapes::ShapeRef.new(shape: sensitiveStringType, location_name: "FunctionOutput"))
    TestResult.struct_class = Types::TestResult

    TooLongCSPInResponseHeadersPolicy.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooLongCSPInResponseHeadersPolicy.struct_class = Types::TooLongCSPInResponseHeadersPolicy

    TooManyCacheBehaviors.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyCacheBehaviors.struct_class = Types::TooManyCacheBehaviors

    TooManyCachePolicies.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyCachePolicies.struct_class = Types::TooManyCachePolicies

    TooManyCertificates.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyCertificates.struct_class = Types::TooManyCertificates

    TooManyCloudFrontOriginAccessIdentities.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyCloudFrontOriginAccessIdentities.struct_class = Types::TooManyCloudFrontOriginAccessIdentities

    TooManyContinuousDeploymentPolicies.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyContinuousDeploymentPolicies.struct_class = Types::TooManyContinuousDeploymentPolicies

    TooManyCookieNamesInWhiteList.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyCookieNamesInWhiteList.struct_class = Types::TooManyCookieNamesInWhiteList

    TooManyCookiesInCachePolicy.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyCookiesInCachePolicy.struct_class = Types::TooManyCookiesInCachePolicy

    TooManyCookiesInOriginRequestPolicy.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyCookiesInOriginRequestPolicy.struct_class = Types::TooManyCookiesInOriginRequestPolicy

    TooManyCustomHeadersInResponseHeadersPolicy.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyCustomHeadersInResponseHeadersPolicy.struct_class = Types::TooManyCustomHeadersInResponseHeadersPolicy

    TooManyDistributionCNAMEs.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyDistributionCNAMEs.struct_class = Types::TooManyDistributionCNAMEs

    TooManyDistributions.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyDistributions.struct_class = Types::TooManyDistributions

    TooManyDistributionsAssociatedToCachePolicy.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyDistributionsAssociatedToCachePolicy.struct_class = Types::TooManyDistributionsAssociatedToCachePolicy

    TooManyDistributionsAssociatedToFieldLevelEncryptionConfig.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyDistributionsAssociatedToFieldLevelEncryptionConfig.struct_class = Types::TooManyDistributionsAssociatedToFieldLevelEncryptionConfig

    TooManyDistributionsAssociatedToKeyGroup.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyDistributionsAssociatedToKeyGroup.struct_class = Types::TooManyDistributionsAssociatedToKeyGroup

    TooManyDistributionsAssociatedToOriginAccessControl.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyDistributionsAssociatedToOriginAccessControl.struct_class = Types::TooManyDistributionsAssociatedToOriginAccessControl

    TooManyDistributionsAssociatedToOriginRequestPolicy.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyDistributionsAssociatedToOriginRequestPolicy.struct_class = Types::TooManyDistributionsAssociatedToOriginRequestPolicy

    TooManyDistributionsAssociatedToResponseHeadersPolicy.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyDistributionsAssociatedToResponseHeadersPolicy.struct_class = Types::TooManyDistributionsAssociatedToResponseHeadersPolicy

    TooManyDistributionsWithFunctionAssociations.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyDistributionsWithFunctionAssociations.struct_class = Types::TooManyDistributionsWithFunctionAssociations

    TooManyDistributionsWithLambdaAssociations.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyDistributionsWithLambdaAssociations.struct_class = Types::TooManyDistributionsWithLambdaAssociations

    TooManyDistributionsWithSingleFunctionARN.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyDistributionsWithSingleFunctionARN.struct_class = Types::TooManyDistributionsWithSingleFunctionARN

    TooManyFieldLevelEncryptionConfigs.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyFieldLevelEncryptionConfigs.struct_class = Types::TooManyFieldLevelEncryptionConfigs

    TooManyFieldLevelEncryptionContentTypeProfiles.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyFieldLevelEncryptionContentTypeProfiles.struct_class = Types::TooManyFieldLevelEncryptionContentTypeProfiles

    TooManyFieldLevelEncryptionEncryptionEntities.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyFieldLevelEncryptionEncryptionEntities.struct_class = Types::TooManyFieldLevelEncryptionEncryptionEntities

    TooManyFieldLevelEncryptionFieldPatterns.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyFieldLevelEncryptionFieldPatterns.struct_class = Types::TooManyFieldLevelEncryptionFieldPatterns

    TooManyFieldLevelEncryptionProfiles.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyFieldLevelEncryptionProfiles.struct_class = Types::TooManyFieldLevelEncryptionProfiles

    TooManyFieldLevelEncryptionQueryArgProfiles.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyFieldLevelEncryptionQueryArgProfiles.struct_class = Types::TooManyFieldLevelEncryptionQueryArgProfiles

    TooManyFunctionAssociations.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyFunctionAssociations.struct_class = Types::TooManyFunctionAssociations

    TooManyFunctions.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyFunctions.struct_class = Types::TooManyFunctions

    TooManyHeadersInCachePolicy.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyHeadersInCachePolicy.struct_class = Types::TooManyHeadersInCachePolicy

    TooManyHeadersInForwardedValues.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyHeadersInForwardedValues.struct_class = Types::TooManyHeadersInForwardedValues

    TooManyHeadersInOriginRequestPolicy.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyHeadersInOriginRequestPolicy.struct_class = Types::TooManyHeadersInOriginRequestPolicy

    TooManyInvalidationsInProgress.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyInvalidationsInProgress.struct_class = Types::TooManyInvalidationsInProgress

    TooManyKeyGroups.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyKeyGroups.struct_class = Types::TooManyKeyGroups

    TooManyKeyGroupsAssociatedToDistribution.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyKeyGroupsAssociatedToDistribution.struct_class = Types::TooManyKeyGroupsAssociatedToDistribution

    TooManyLambdaFunctionAssociations.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyLambdaFunctionAssociations.struct_class = Types::TooManyLambdaFunctionAssociations

    TooManyOriginAccessControls.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyOriginAccessControls.struct_class = Types::TooManyOriginAccessControls

    TooManyOriginCustomHeaders.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyOriginCustomHeaders.struct_class = Types::TooManyOriginCustomHeaders

    TooManyOriginGroupsPerDistribution.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyOriginGroupsPerDistribution.struct_class = Types::TooManyOriginGroupsPerDistribution

    TooManyOriginRequestPolicies.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyOriginRequestPolicies.struct_class = Types::TooManyOriginRequestPolicies

    TooManyOrigins.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyOrigins.struct_class = Types::TooManyOrigins

    TooManyPublicKeys.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyPublicKeys.struct_class = Types::TooManyPublicKeys

    TooManyPublicKeysInKeyGroup.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyPublicKeysInKeyGroup.struct_class = Types::TooManyPublicKeysInKeyGroup

    TooManyQueryStringParameters.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyQueryStringParameters.struct_class = Types::TooManyQueryStringParameters

    TooManyQueryStringsInCachePolicy.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyQueryStringsInCachePolicy.struct_class = Types::TooManyQueryStringsInCachePolicy

    TooManyQueryStringsInOriginRequestPolicy.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyQueryStringsInOriginRequestPolicy.struct_class = Types::TooManyQueryStringsInOriginRequestPolicy

    TooManyRealtimeLogConfigs.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyRealtimeLogConfigs.struct_class = Types::TooManyRealtimeLogConfigs

    TooManyRemoveHeadersInResponseHeadersPolicy.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyRemoveHeadersInResponseHeadersPolicy.struct_class = Types::TooManyRemoveHeadersInResponseHeadersPolicy

    TooManyResponseHeadersPolicies.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyResponseHeadersPolicies.struct_class = Types::TooManyResponseHeadersPolicies

    TooManyStreamingDistributionCNAMEs.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyStreamingDistributionCNAMEs.struct_class = Types::TooManyStreamingDistributionCNAMEs

    TooManyStreamingDistributions.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyStreamingDistributions.struct_class = Types::TooManyStreamingDistributions

    TooManyTrustedSigners.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TooManyTrustedSigners.struct_class = Types::TooManyTrustedSigners

    TrafficConfig.add_member(:single_weight_config, Shapes::ShapeRef.new(shape: ContinuousDeploymentSingleWeightConfig, location_name: "SingleWeightConfig"))
    TrafficConfig.add_member(:single_header_config, Shapes::ShapeRef.new(shape: ContinuousDeploymentSingleHeaderConfig, location_name: "SingleHeaderConfig"))
    TrafficConfig.add_member(:type, Shapes::ShapeRef.new(shape: ContinuousDeploymentPolicyType, required: true, location_name: "Type"))
    TrafficConfig.struct_class = Types::TrafficConfig

    TrustedKeyGroupDoesNotExist.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TrustedKeyGroupDoesNotExist.struct_class = Types::TrustedKeyGroupDoesNotExist

    TrustedKeyGroupIdList.member = Shapes::ShapeRef.new(shape: string, location_name: "KeyGroup")

    TrustedKeyGroups.add_member(:enabled, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "Enabled"))
    TrustedKeyGroups.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    TrustedKeyGroups.add_member(:items, Shapes::ShapeRef.new(shape: TrustedKeyGroupIdList, location_name: "Items"))
    TrustedKeyGroups.struct_class = Types::TrustedKeyGroups

    TrustedSignerDoesNotExist.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    TrustedSignerDoesNotExist.struct_class = Types::TrustedSignerDoesNotExist

    TrustedSigners.add_member(:enabled, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "Enabled"))
    TrustedSigners.add_member(:quantity, Shapes::ShapeRef.new(shape: integer, required: true, location_name: "Quantity"))
    TrustedSigners.add_member(:items, Shapes::ShapeRef.new(shape: AwsAccountNumberList, location_name: "Items"))
    TrustedSigners.struct_class = Types::TrustedSigners

    UnsupportedOperation.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    UnsupportedOperation.struct_class = Types::UnsupportedOperation

    UntagResourceRequest.add_member(:resource, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location: "querystring", location_name: "Resource"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location_name: "TagKeys", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}}))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest
    UntagResourceRequest[:payload] = :tag_keys
    UntagResourceRequest[:payload_member] = UntagResourceRequest.member(:tag_keys)

    UpdateCachePolicyRequest.add_member(:cache_policy_config, Shapes::ShapeRef.new(shape: CachePolicyConfig, required: true, location_name: "CachePolicyConfig", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}}))
    UpdateCachePolicyRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    UpdateCachePolicyRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "If-Match"))
    UpdateCachePolicyRequest.struct_class = Types::UpdateCachePolicyRequest
    UpdateCachePolicyRequest[:payload] = :cache_policy_config
    UpdateCachePolicyRequest[:payload_member] = UpdateCachePolicyRequest.member(:cache_policy_config)

    UpdateCachePolicyResult.add_member(:cache_policy, Shapes::ShapeRef.new(shape: CachePolicy, location_name: "CachePolicy"))
    UpdateCachePolicyResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    UpdateCachePolicyResult.struct_class = Types::UpdateCachePolicyResult
    UpdateCachePolicyResult[:payload] = :cache_policy
    UpdateCachePolicyResult[:payload_member] = UpdateCachePolicyResult.member(:cache_policy)

    UpdateCloudFrontOriginAccessIdentityRequest.add_member(:cloud_front_origin_access_identity_config, Shapes::ShapeRef.new(shape: CloudFrontOriginAccessIdentityConfig, required: true, location_name: "CloudFrontOriginAccessIdentityConfig", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}}))
    UpdateCloudFrontOriginAccessIdentityRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    UpdateCloudFrontOriginAccessIdentityRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "If-Match"))
    UpdateCloudFrontOriginAccessIdentityRequest.struct_class = Types::UpdateCloudFrontOriginAccessIdentityRequest
    UpdateCloudFrontOriginAccessIdentityRequest[:payload] = :cloud_front_origin_access_identity_config
    UpdateCloudFrontOriginAccessIdentityRequest[:payload_member] = UpdateCloudFrontOriginAccessIdentityRequest.member(:cloud_front_origin_access_identity_config)

    UpdateCloudFrontOriginAccessIdentityResult.add_member(:cloud_front_origin_access_identity, Shapes::ShapeRef.new(shape: CloudFrontOriginAccessIdentity, location_name: "CloudFrontOriginAccessIdentity"))
    UpdateCloudFrontOriginAccessIdentityResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    UpdateCloudFrontOriginAccessIdentityResult.struct_class = Types::UpdateCloudFrontOriginAccessIdentityResult
    UpdateCloudFrontOriginAccessIdentityResult[:payload] = :cloud_front_origin_access_identity
    UpdateCloudFrontOriginAccessIdentityResult[:payload_member] = UpdateCloudFrontOriginAccessIdentityResult.member(:cloud_front_origin_access_identity)

    UpdateContinuousDeploymentPolicyRequest.add_member(:continuous_deployment_policy_config, Shapes::ShapeRef.new(shape: ContinuousDeploymentPolicyConfig, required: true, location_name: "ContinuousDeploymentPolicyConfig", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}}))
    UpdateContinuousDeploymentPolicyRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    UpdateContinuousDeploymentPolicyRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "If-Match"))
    UpdateContinuousDeploymentPolicyRequest.struct_class = Types::UpdateContinuousDeploymentPolicyRequest
    UpdateContinuousDeploymentPolicyRequest[:payload] = :continuous_deployment_policy_config
    UpdateContinuousDeploymentPolicyRequest[:payload_member] = UpdateContinuousDeploymentPolicyRequest.member(:continuous_deployment_policy_config)

    UpdateContinuousDeploymentPolicyResult.add_member(:continuous_deployment_policy, Shapes::ShapeRef.new(shape: ContinuousDeploymentPolicy, location_name: "ContinuousDeploymentPolicy"))
    UpdateContinuousDeploymentPolicyResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    UpdateContinuousDeploymentPolicyResult.struct_class = Types::UpdateContinuousDeploymentPolicyResult
    UpdateContinuousDeploymentPolicyResult[:payload] = :continuous_deployment_policy
    UpdateContinuousDeploymentPolicyResult[:payload_member] = UpdateContinuousDeploymentPolicyResult.member(:continuous_deployment_policy)

    UpdateDistributionRequest.add_member(:distribution_config, Shapes::ShapeRef.new(shape: DistributionConfig, required: true, location_name: "DistributionConfig", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}}))
    UpdateDistributionRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    UpdateDistributionRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "If-Match"))
    UpdateDistributionRequest.struct_class = Types::UpdateDistributionRequest
    UpdateDistributionRequest[:payload] = :distribution_config
    UpdateDistributionRequest[:payload_member] = UpdateDistributionRequest.member(:distribution_config)

    UpdateDistributionResult.add_member(:distribution, Shapes::ShapeRef.new(shape: Distribution, location_name: "Distribution"))
    UpdateDistributionResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    UpdateDistributionResult.struct_class = Types::UpdateDistributionResult
    UpdateDistributionResult[:payload] = :distribution
    UpdateDistributionResult[:payload_member] = UpdateDistributionResult.member(:distribution)

    UpdateDistributionWithStagingConfigRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    UpdateDistributionWithStagingConfigRequest.add_member(:staging_distribution_id, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "StagingDistributionId"))
    UpdateDistributionWithStagingConfigRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "If-Match"))
    UpdateDistributionWithStagingConfigRequest.struct_class = Types::UpdateDistributionWithStagingConfigRequest

    UpdateDistributionWithStagingConfigResult.add_member(:distribution, Shapes::ShapeRef.new(shape: Distribution, location_name: "Distribution"))
    UpdateDistributionWithStagingConfigResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    UpdateDistributionWithStagingConfigResult.struct_class = Types::UpdateDistributionWithStagingConfigResult
    UpdateDistributionWithStagingConfigResult[:payload] = :distribution
    UpdateDistributionWithStagingConfigResult[:payload_member] = UpdateDistributionWithStagingConfigResult.member(:distribution)

    UpdateFieldLevelEncryptionConfigRequest.add_member(:field_level_encryption_config, Shapes::ShapeRef.new(shape: FieldLevelEncryptionConfig, required: true, location_name: "FieldLevelEncryptionConfig", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}}))
    UpdateFieldLevelEncryptionConfigRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    UpdateFieldLevelEncryptionConfigRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "If-Match"))
    UpdateFieldLevelEncryptionConfigRequest.struct_class = Types::UpdateFieldLevelEncryptionConfigRequest
    UpdateFieldLevelEncryptionConfigRequest[:payload] = :field_level_encryption_config
    UpdateFieldLevelEncryptionConfigRequest[:payload_member] = UpdateFieldLevelEncryptionConfigRequest.member(:field_level_encryption_config)

    UpdateFieldLevelEncryptionConfigResult.add_member(:field_level_encryption, Shapes::ShapeRef.new(shape: FieldLevelEncryption, location_name: "FieldLevelEncryption"))
    UpdateFieldLevelEncryptionConfigResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    UpdateFieldLevelEncryptionConfigResult.struct_class = Types::UpdateFieldLevelEncryptionConfigResult
    UpdateFieldLevelEncryptionConfigResult[:payload] = :field_level_encryption
    UpdateFieldLevelEncryptionConfigResult[:payload_member] = UpdateFieldLevelEncryptionConfigResult.member(:field_level_encryption)

    UpdateFieldLevelEncryptionProfileRequest.add_member(:field_level_encryption_profile_config, Shapes::ShapeRef.new(shape: FieldLevelEncryptionProfileConfig, required: true, location_name: "FieldLevelEncryptionProfileConfig", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}}))
    UpdateFieldLevelEncryptionProfileRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    UpdateFieldLevelEncryptionProfileRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "If-Match"))
    UpdateFieldLevelEncryptionProfileRequest.struct_class = Types::UpdateFieldLevelEncryptionProfileRequest
    UpdateFieldLevelEncryptionProfileRequest[:payload] = :field_level_encryption_profile_config
    UpdateFieldLevelEncryptionProfileRequest[:payload_member] = UpdateFieldLevelEncryptionProfileRequest.member(:field_level_encryption_profile_config)

    UpdateFieldLevelEncryptionProfileResult.add_member(:field_level_encryption_profile, Shapes::ShapeRef.new(shape: FieldLevelEncryptionProfile, location_name: "FieldLevelEncryptionProfile"))
    UpdateFieldLevelEncryptionProfileResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    UpdateFieldLevelEncryptionProfileResult.struct_class = Types::UpdateFieldLevelEncryptionProfileResult
    UpdateFieldLevelEncryptionProfileResult[:payload] = :field_level_encryption_profile
    UpdateFieldLevelEncryptionProfileResult[:payload_member] = UpdateFieldLevelEncryptionProfileResult.member(:field_level_encryption_profile)

    UpdateFunctionRequest.add_member(:name, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Name"))
    UpdateFunctionRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: string, required: true, location: "header", location_name: "If-Match"))
    UpdateFunctionRequest.add_member(:function_config, Shapes::ShapeRef.new(shape: FunctionConfig, required: true, location_name: "FunctionConfig"))
    UpdateFunctionRequest.add_member(:function_code, Shapes::ShapeRef.new(shape: FunctionBlob, required: true, location_name: "FunctionCode"))
    UpdateFunctionRequest.struct_class = Types::UpdateFunctionRequest

    UpdateFunctionResult.add_member(:function_summary, Shapes::ShapeRef.new(shape: FunctionSummary, location_name: "FunctionSummary"))
    UpdateFunctionResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETtag"))
    UpdateFunctionResult.struct_class = Types::UpdateFunctionResult
    UpdateFunctionResult[:payload] = :function_summary
    UpdateFunctionResult[:payload_member] = UpdateFunctionResult.member(:function_summary)

    UpdateKeyGroupRequest.add_member(:key_group_config, Shapes::ShapeRef.new(shape: KeyGroupConfig, required: true, location_name: "KeyGroupConfig", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}}))
    UpdateKeyGroupRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    UpdateKeyGroupRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "If-Match"))
    UpdateKeyGroupRequest.struct_class = Types::UpdateKeyGroupRequest
    UpdateKeyGroupRequest[:payload] = :key_group_config
    UpdateKeyGroupRequest[:payload_member] = UpdateKeyGroupRequest.member(:key_group_config)

    UpdateKeyGroupResult.add_member(:key_group, Shapes::ShapeRef.new(shape: KeyGroup, location_name: "KeyGroup"))
    UpdateKeyGroupResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    UpdateKeyGroupResult.struct_class = Types::UpdateKeyGroupResult
    UpdateKeyGroupResult[:payload] = :key_group
    UpdateKeyGroupResult[:payload_member] = UpdateKeyGroupResult.member(:key_group)

    UpdateKeyValueStoreRequest.add_member(:name, Shapes::ShapeRef.new(shape: KeyValueStoreName, required: true, location: "uri", location_name: "Name"))
    UpdateKeyValueStoreRequest.add_member(:comment, Shapes::ShapeRef.new(shape: KeyValueStoreComment, required: true, location_name: "Comment"))
    UpdateKeyValueStoreRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: string, required: true, location: "header", location_name: "If-Match"))
    UpdateKeyValueStoreRequest.struct_class = Types::UpdateKeyValueStoreRequest

    UpdateKeyValueStoreResult.add_member(:key_value_store, Shapes::ShapeRef.new(shape: KeyValueStore, location_name: "KeyValueStore"))
    UpdateKeyValueStoreResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    UpdateKeyValueStoreResult.struct_class = Types::UpdateKeyValueStoreResult
    UpdateKeyValueStoreResult[:payload] = :key_value_store
    UpdateKeyValueStoreResult[:payload_member] = UpdateKeyValueStoreResult.member(:key_value_store)

    UpdateOriginAccessControlRequest.add_member(:origin_access_control_config, Shapes::ShapeRef.new(shape: OriginAccessControlConfig, required: true, location_name: "OriginAccessControlConfig", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}}))
    UpdateOriginAccessControlRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    UpdateOriginAccessControlRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "If-Match"))
    UpdateOriginAccessControlRequest.struct_class = Types::UpdateOriginAccessControlRequest
    UpdateOriginAccessControlRequest[:payload] = :origin_access_control_config
    UpdateOriginAccessControlRequest[:payload_member] = UpdateOriginAccessControlRequest.member(:origin_access_control_config)

    UpdateOriginAccessControlResult.add_member(:origin_access_control, Shapes::ShapeRef.new(shape: OriginAccessControl, location_name: "OriginAccessControl"))
    UpdateOriginAccessControlResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    UpdateOriginAccessControlResult.struct_class = Types::UpdateOriginAccessControlResult
    UpdateOriginAccessControlResult[:payload] = :origin_access_control
    UpdateOriginAccessControlResult[:payload_member] = UpdateOriginAccessControlResult.member(:origin_access_control)

    UpdateOriginRequestPolicyRequest.add_member(:origin_request_policy_config, Shapes::ShapeRef.new(shape: OriginRequestPolicyConfig, required: true, location_name: "OriginRequestPolicyConfig", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}}))
    UpdateOriginRequestPolicyRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    UpdateOriginRequestPolicyRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "If-Match"))
    UpdateOriginRequestPolicyRequest.struct_class = Types::UpdateOriginRequestPolicyRequest
    UpdateOriginRequestPolicyRequest[:payload] = :origin_request_policy_config
    UpdateOriginRequestPolicyRequest[:payload_member] = UpdateOriginRequestPolicyRequest.member(:origin_request_policy_config)

    UpdateOriginRequestPolicyResult.add_member(:origin_request_policy, Shapes::ShapeRef.new(shape: OriginRequestPolicy, location_name: "OriginRequestPolicy"))
    UpdateOriginRequestPolicyResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    UpdateOriginRequestPolicyResult.struct_class = Types::UpdateOriginRequestPolicyResult
    UpdateOriginRequestPolicyResult[:payload] = :origin_request_policy
    UpdateOriginRequestPolicyResult[:payload_member] = UpdateOriginRequestPolicyResult.member(:origin_request_policy)

    UpdatePublicKeyRequest.add_member(:public_key_config, Shapes::ShapeRef.new(shape: PublicKeyConfig, required: true, location_name: "PublicKeyConfig", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}}))
    UpdatePublicKeyRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    UpdatePublicKeyRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "If-Match"))
    UpdatePublicKeyRequest.struct_class = Types::UpdatePublicKeyRequest
    UpdatePublicKeyRequest[:payload] = :public_key_config
    UpdatePublicKeyRequest[:payload_member] = UpdatePublicKeyRequest.member(:public_key_config)

    UpdatePublicKeyResult.add_member(:public_key, Shapes::ShapeRef.new(shape: PublicKey, location_name: "PublicKey"))
    UpdatePublicKeyResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    UpdatePublicKeyResult.struct_class = Types::UpdatePublicKeyResult
    UpdatePublicKeyResult[:payload] = :public_key
    UpdatePublicKeyResult[:payload_member] = UpdatePublicKeyResult.member(:public_key)

    UpdateRealtimeLogConfigRequest.add_member(:end_points, Shapes::ShapeRef.new(shape: EndPointList, location_name: "EndPoints"))
    UpdateRealtimeLogConfigRequest.add_member(:fields, Shapes::ShapeRef.new(shape: FieldList, location_name: "Fields"))
    UpdateRealtimeLogConfigRequest.add_member(:name, Shapes::ShapeRef.new(shape: string, location_name: "Name"))
    UpdateRealtimeLogConfigRequest.add_member(:arn, Shapes::ShapeRef.new(shape: string, location_name: "ARN"))
    UpdateRealtimeLogConfigRequest.add_member(:sampling_rate, Shapes::ShapeRef.new(shape: long, location_name: "SamplingRate"))
    UpdateRealtimeLogConfigRequest.struct_class = Types::UpdateRealtimeLogConfigRequest

    UpdateRealtimeLogConfigResult.add_member(:realtime_log_config, Shapes::ShapeRef.new(shape: RealtimeLogConfig, location_name: "RealtimeLogConfig"))
    UpdateRealtimeLogConfigResult.struct_class = Types::UpdateRealtimeLogConfigResult

    UpdateResponseHeadersPolicyRequest.add_member(:response_headers_policy_config, Shapes::ShapeRef.new(shape: ResponseHeadersPolicyConfig, required: true, location_name: "ResponseHeadersPolicyConfig", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}}))
    UpdateResponseHeadersPolicyRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    UpdateResponseHeadersPolicyRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "If-Match"))
    UpdateResponseHeadersPolicyRequest.struct_class = Types::UpdateResponseHeadersPolicyRequest
    UpdateResponseHeadersPolicyRequest[:payload] = :response_headers_policy_config
    UpdateResponseHeadersPolicyRequest[:payload_member] = UpdateResponseHeadersPolicyRequest.member(:response_headers_policy_config)

    UpdateResponseHeadersPolicyResult.add_member(:response_headers_policy, Shapes::ShapeRef.new(shape: ResponseHeadersPolicy, location_name: "ResponseHeadersPolicy"))
    UpdateResponseHeadersPolicyResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    UpdateResponseHeadersPolicyResult.struct_class = Types::UpdateResponseHeadersPolicyResult
    UpdateResponseHeadersPolicyResult[:payload] = :response_headers_policy
    UpdateResponseHeadersPolicyResult[:payload_member] = UpdateResponseHeadersPolicyResult.member(:response_headers_policy)

    UpdateStreamingDistributionRequest.add_member(:streaming_distribution_config, Shapes::ShapeRef.new(shape: StreamingDistributionConfig, required: true, location_name: "StreamingDistributionConfig", metadata: {"xmlNamespace"=>{"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}}))
    UpdateStreamingDistributionRequest.add_member(:id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "Id"))
    UpdateStreamingDistributionRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "If-Match"))
    UpdateStreamingDistributionRequest.struct_class = Types::UpdateStreamingDistributionRequest
    UpdateStreamingDistributionRequest[:payload] = :streaming_distribution_config
    UpdateStreamingDistributionRequest[:payload_member] = UpdateStreamingDistributionRequest.member(:streaming_distribution_config)

    UpdateStreamingDistributionResult.add_member(:streaming_distribution, Shapes::ShapeRef.new(shape: StreamingDistribution, location_name: "StreamingDistribution"))
    UpdateStreamingDistributionResult.add_member(:etag, Shapes::ShapeRef.new(shape: string, location: "header", location_name: "ETag"))
    UpdateStreamingDistributionResult.struct_class = Types::UpdateStreamingDistributionResult
    UpdateStreamingDistributionResult[:payload] = :streaming_distribution
    UpdateStreamingDistributionResult[:payload_member] = UpdateStreamingDistributionResult.member(:streaming_distribution)

    ViewerCertificate.add_member(:cloud_front_default_certificate, Shapes::ShapeRef.new(shape: boolean, location_name: "CloudFrontDefaultCertificate"))
    ViewerCertificate.add_member(:iam_certificate_id, Shapes::ShapeRef.new(shape: string, location_name: "IAMCertificateId"))
    ViewerCertificate.add_member(:acm_certificate_arn, Shapes::ShapeRef.new(shape: string, location_name: "ACMCertificateArn"))
    ViewerCertificate.add_member(:ssl_support_method, Shapes::ShapeRef.new(shape: SSLSupportMethod, location_name: "SSLSupportMethod"))
    ViewerCertificate.add_member(:minimum_protocol_version, Shapes::ShapeRef.new(shape: MinimumProtocolVersion, location_name: "MinimumProtocolVersion"))
    ViewerCertificate.add_member(:certificate, Shapes::ShapeRef.new(shape: string, deprecated: true, location_name: "Certificate"))
    ViewerCertificate.add_member(:certificate_source, Shapes::ShapeRef.new(shape: CertificateSource, deprecated: true, location_name: "CertificateSource"))
    ViewerCertificate.struct_class = Types::ViewerCertificate


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-05-31"

      api.metadata = {
        "apiVersion" => "2020-05-31",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "cloudfront",
        "globalEndpoint" => "cloudfront.amazonaws.com",
        "protocol" => "rest-xml",
        "protocols" => ["rest-xml"],
        "serviceAbbreviation" => "CloudFront",
        "serviceFullName" => "Amazon CloudFront",
        "serviceId" => "CloudFront",
        "signatureVersion" => "v4",
        "uid" => "cloudfront-2020-05-31",
      }

      api.add_operation(:associate_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateAlias2020_05_31"
        o.http_method = "PUT"
        o.http_request_uri = "/2020-05-31/distribution/{TargetDistributionId}/associate-alias"
        o.input = Shapes::ShapeRef.new(shape: AssociateAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchDistribution)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionCNAMEs)
        o.errors << Shapes::ShapeRef.new(shape: IllegalUpdate)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
      end)

      api.add_operation(:copy_distribution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CopyDistribution2020_05_31"
        o.http_method = "POST"
        o.http_request_uri = "/2020-05-31/distribution/{PrimaryDistributionId}/copy"
        o.input = Shapes::ShapeRef.new(shape: CopyDistributionRequest,
          location_name: "CopyDistributionRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: CopyDistributionResult)
        o.errors << Shapes::ShapeRef.new(shape: CNAMEAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: DistributionAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOrigin)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOriginAccessIdentity)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOriginAccessControl)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchDistribution)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailed)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTrustedSigners)
        o.errors << Shapes::ShapeRef.new(shape: TrustedSignerDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InvalidViewerCertificate)
        o.errors << Shapes::ShapeRef.new(shape: InvalidMinimumProtocolVersion)
        o.errors << Shapes::ShapeRef.new(shape: MissingBody)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionCNAMEs)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributions)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDefaultRootObject)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRelativePath)
        o.errors << Shapes::ShapeRef.new(shape: InvalidErrorCode)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResponseCode)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequiredProtocol)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchOrigin)
        o.errors << Shapes::ShapeRef.new(shape: TooManyOrigins)
        o.errors << Shapes::ShapeRef.new(shape: TooManyOriginGroupsPerDistribution)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCacheBehaviors)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCookieNamesInWhiteList)
        o.errors << Shapes::ShapeRef.new(shape: InvalidForwardCookies)
        o.errors << Shapes::ShapeRef.new(shape: TooManyHeadersInForwardedValues)
        o.errors << Shapes::ShapeRef.new(shape: InvalidHeadersForS3Origin)
        o.errors << Shapes::ShapeRef.new(shape: InconsistentQuantities)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCertificates)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLocationCode)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGeoRestrictionParameter)
        o.errors << Shapes::ShapeRef.new(shape: InvalidProtocolSettings)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTTLOrder)
        o.errors << Shapes::ShapeRef.new(shape: InvalidWebACLId)
        o.errors << Shapes::ShapeRef.new(shape: TooManyOriginCustomHeaders)
        o.errors << Shapes::ShapeRef.new(shape: TooManyQueryStringParameters)
        o.errors << Shapes::ShapeRef.new(shape: InvalidQueryStringParameters)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsWithLambdaAssociations)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsWithSingleFunctionARN)
        o.errors << Shapes::ShapeRef.new(shape: TooManyLambdaFunctionAssociations)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLambdaFunctionAssociation)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsWithFunctionAssociations)
        o.errors << Shapes::ShapeRef.new(shape: TooManyFunctionAssociations)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFunctionAssociation)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOriginReadTimeout)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOriginKeepaliveTimeout)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchFieldLevelEncryptionConfig)
        o.errors << Shapes::ShapeRef.new(shape: IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToFieldLevelEncryptionConfig)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchCachePolicy)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToCachePolicy)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToOriginAccessControl)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchResponseHeadersPolicy)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToResponseHeadersPolicy)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchOriginRequestPolicy)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToOriginRequestPolicy)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToKeyGroup)
        o.errors << Shapes::ShapeRef.new(shape: TooManyKeyGroupsAssociatedToDistribution)
        o.errors << Shapes::ShapeRef.new(shape: TrustedKeyGroupDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchRealtimeLogConfig)
        o.errors << Shapes::ShapeRef.new(shape: RealtimeLogConfigOwnerMismatch)
      end)

      api.add_operation(:create_cache_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCachePolicy2020_05_31"
        o.http_method = "POST"
        o.http_request_uri = "/2020-05-31/cache-policy"
        o.input = Shapes::ShapeRef.new(shape: CreateCachePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCachePolicyResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: InconsistentQuantities)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: CachePolicyAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCachePolicies)
        o.errors << Shapes::ShapeRef.new(shape: TooManyHeadersInCachePolicy)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCookiesInCachePolicy)
        o.errors << Shapes::ShapeRef.new(shape: TooManyQueryStringsInCachePolicy)
      end)

      api.add_operation(:create_cloud_front_origin_access_identity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCloudFrontOriginAccessIdentity2020_05_31"
        o.http_method = "POST"
        o.http_request_uri = "/2020-05-31/origin-access-identity/cloudfront"
        o.input = Shapes::ShapeRef.new(shape: CreateCloudFrontOriginAccessIdentityRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCloudFrontOriginAccessIdentityResult)
        o.errors << Shapes::ShapeRef.new(shape: CloudFrontOriginAccessIdentityAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: MissingBody)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCloudFrontOriginAccessIdentities)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: InconsistentQuantities)
      end)

      api.add_operation(:create_continuous_deployment_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateContinuousDeploymentPolicy2020_05_31"
        o.http_method = "POST"
        o.http_request_uri = "/2020-05-31/continuous-deployment-policy"
        o.input = Shapes::ShapeRef.new(shape: CreateContinuousDeploymentPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateContinuousDeploymentPolicyResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: InconsistentQuantities)
        o.errors << Shapes::ShapeRef.new(shape: ContinuousDeploymentPolicyAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: TooManyContinuousDeploymentPolicies)
        o.errors << Shapes::ShapeRef.new(shape: StagingDistributionInUse)
      end)

      api.add_operation(:create_distribution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDistribution2020_05_31"
        o.http_method = "POST"
        o.http_request_uri = "/2020-05-31/distribution"
        o.input = Shapes::ShapeRef.new(shape: CreateDistributionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDistributionResult)
        o.errors << Shapes::ShapeRef.new(shape: CNAMEAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: DistributionAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOrigin)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOriginAccessIdentity)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOriginAccessControl)
        o.errors << Shapes::ShapeRef.new(shape: IllegalOriginAccessConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToOriginAccessControl)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTrustedSigners)
        o.errors << Shapes::ShapeRef.new(shape: TrustedSignerDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InvalidViewerCertificate)
        o.errors << Shapes::ShapeRef.new(shape: InvalidMinimumProtocolVersion)
        o.errors << Shapes::ShapeRef.new(shape: MissingBody)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionCNAMEs)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributions)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDefaultRootObject)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRelativePath)
        o.errors << Shapes::ShapeRef.new(shape: InvalidErrorCode)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResponseCode)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequiredProtocol)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchOrigin)
        o.errors << Shapes::ShapeRef.new(shape: TooManyOrigins)
        o.errors << Shapes::ShapeRef.new(shape: TooManyOriginGroupsPerDistribution)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCacheBehaviors)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCookieNamesInWhiteList)
        o.errors << Shapes::ShapeRef.new(shape: InvalidForwardCookies)
        o.errors << Shapes::ShapeRef.new(shape: TooManyHeadersInForwardedValues)
        o.errors << Shapes::ShapeRef.new(shape: InvalidHeadersForS3Origin)
        o.errors << Shapes::ShapeRef.new(shape: InconsistentQuantities)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCertificates)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLocationCode)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGeoRestrictionParameter)
        o.errors << Shapes::ShapeRef.new(shape: InvalidProtocolSettings)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTTLOrder)
        o.errors << Shapes::ShapeRef.new(shape: InvalidWebACLId)
        o.errors << Shapes::ShapeRef.new(shape: TooManyOriginCustomHeaders)
        o.errors << Shapes::ShapeRef.new(shape: TooManyQueryStringParameters)
        o.errors << Shapes::ShapeRef.new(shape: InvalidQueryStringParameters)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsWithLambdaAssociations)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsWithSingleFunctionARN)
        o.errors << Shapes::ShapeRef.new(shape: TooManyLambdaFunctionAssociations)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLambdaFunctionAssociation)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsWithFunctionAssociations)
        o.errors << Shapes::ShapeRef.new(shape: TooManyFunctionAssociations)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFunctionAssociation)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOriginReadTimeout)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOriginKeepaliveTimeout)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchFieldLevelEncryptionConfig)
        o.errors << Shapes::ShapeRef.new(shape: IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToFieldLevelEncryptionConfig)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchCachePolicy)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToCachePolicy)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchResponseHeadersPolicy)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToResponseHeadersPolicy)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchOriginRequestPolicy)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToOriginRequestPolicy)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToKeyGroup)
        o.errors << Shapes::ShapeRef.new(shape: TooManyKeyGroupsAssociatedToDistribution)
        o.errors << Shapes::ShapeRef.new(shape: TrustedKeyGroupDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchRealtimeLogConfig)
        o.errors << Shapes::ShapeRef.new(shape: RealtimeLogConfigOwnerMismatch)
        o.errors << Shapes::ShapeRef.new(shape: ContinuousDeploymentPolicyInUse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchContinuousDeploymentPolicy)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDomainNameForOriginAccessControl)
      end)

      api.add_operation(:create_distribution_with_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDistributionWithTags2020_05_31"
        o.http_method = "POST"
        o.http_request_uri = "/2020-05-31/distribution?WithTags"
        o.input = Shapes::ShapeRef.new(shape: CreateDistributionWithTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDistributionWithTagsResult)
        o.errors << Shapes::ShapeRef.new(shape: CNAMEAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: DistributionAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOrigin)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOriginAccessIdentity)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOriginAccessControl)
        o.errors << Shapes::ShapeRef.new(shape: IllegalOriginAccessConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTrustedSigners)
        o.errors << Shapes::ShapeRef.new(shape: TrustedSignerDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InvalidViewerCertificate)
        o.errors << Shapes::ShapeRef.new(shape: InvalidMinimumProtocolVersion)
        o.errors << Shapes::ShapeRef.new(shape: MissingBody)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionCNAMEs)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributions)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDefaultRootObject)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRelativePath)
        o.errors << Shapes::ShapeRef.new(shape: InvalidErrorCode)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResponseCode)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequiredProtocol)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchOrigin)
        o.errors << Shapes::ShapeRef.new(shape: TooManyOrigins)
        o.errors << Shapes::ShapeRef.new(shape: TooManyOriginGroupsPerDistribution)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCacheBehaviors)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCookieNamesInWhiteList)
        o.errors << Shapes::ShapeRef.new(shape: InvalidForwardCookies)
        o.errors << Shapes::ShapeRef.new(shape: TooManyHeadersInForwardedValues)
        o.errors << Shapes::ShapeRef.new(shape: InvalidHeadersForS3Origin)
        o.errors << Shapes::ShapeRef.new(shape: InconsistentQuantities)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCertificates)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLocationCode)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGeoRestrictionParameter)
        o.errors << Shapes::ShapeRef.new(shape: InvalidProtocolSettings)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTTLOrder)
        o.errors << Shapes::ShapeRef.new(shape: InvalidWebACLId)
        o.errors << Shapes::ShapeRef.new(shape: TooManyOriginCustomHeaders)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagging)
        o.errors << Shapes::ShapeRef.new(shape: TooManyQueryStringParameters)
        o.errors << Shapes::ShapeRef.new(shape: InvalidQueryStringParameters)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsWithLambdaAssociations)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsWithSingleFunctionARN)
        o.errors << Shapes::ShapeRef.new(shape: TooManyLambdaFunctionAssociations)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLambdaFunctionAssociation)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsWithFunctionAssociations)
        o.errors << Shapes::ShapeRef.new(shape: TooManyFunctionAssociations)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFunctionAssociation)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOriginReadTimeout)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOriginKeepaliveTimeout)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchFieldLevelEncryptionConfig)
        o.errors << Shapes::ShapeRef.new(shape: IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToFieldLevelEncryptionConfig)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchCachePolicy)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToCachePolicy)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToOriginAccessControl)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchResponseHeadersPolicy)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToResponseHeadersPolicy)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchOriginRequestPolicy)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToOriginRequestPolicy)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToKeyGroup)
        o.errors << Shapes::ShapeRef.new(shape: TooManyKeyGroupsAssociatedToDistribution)
        o.errors << Shapes::ShapeRef.new(shape: TrustedKeyGroupDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchRealtimeLogConfig)
        o.errors << Shapes::ShapeRef.new(shape: RealtimeLogConfigOwnerMismatch)
        o.errors << Shapes::ShapeRef.new(shape: ContinuousDeploymentPolicyInUse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchContinuousDeploymentPolicy)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDomainNameForOriginAccessControl)
      end)

      api.add_operation(:create_field_level_encryption_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFieldLevelEncryptionConfig2020_05_31"
        o.http_method = "POST"
        o.http_request_uri = "/2020-05-31/field-level-encryption"
        o.input = Shapes::ShapeRef.new(shape: CreateFieldLevelEncryptionConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFieldLevelEncryptionConfigResult)
        o.errors << Shapes::ShapeRef.new(shape: InconsistentQuantities)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchFieldLevelEncryptionProfile)
        o.errors << Shapes::ShapeRef.new(shape: FieldLevelEncryptionConfigAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: TooManyFieldLevelEncryptionConfigs)
        o.errors << Shapes::ShapeRef.new(shape: TooManyFieldLevelEncryptionQueryArgProfiles)
        o.errors << Shapes::ShapeRef.new(shape: TooManyFieldLevelEncryptionContentTypeProfiles)
        o.errors << Shapes::ShapeRef.new(shape: QueryArgProfileEmpty)
      end)

      api.add_operation(:create_field_level_encryption_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFieldLevelEncryptionProfile2020_05_31"
        o.http_method = "POST"
        o.http_request_uri = "/2020-05-31/field-level-encryption-profile"
        o.input = Shapes::ShapeRef.new(shape: CreateFieldLevelEncryptionProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFieldLevelEncryptionProfileResult)
        o.errors << Shapes::ShapeRef.new(shape: InconsistentQuantities)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchPublicKey)
        o.errors << Shapes::ShapeRef.new(shape: FieldLevelEncryptionProfileAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: FieldLevelEncryptionProfileSizeExceeded)
        o.errors << Shapes::ShapeRef.new(shape: TooManyFieldLevelEncryptionProfiles)
        o.errors << Shapes::ShapeRef.new(shape: TooManyFieldLevelEncryptionEncryptionEntities)
        o.errors << Shapes::ShapeRef.new(shape: TooManyFieldLevelEncryptionFieldPatterns)
      end)

      api.add_operation(:create_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFunction2020_05_31"
        o.http_method = "POST"
        o.http_request_uri = "/2020-05-31/function"
        o.input = Shapes::ShapeRef.new(shape: CreateFunctionRequest,
          location_name: "CreateFunctionRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: CreateFunctionResult)
        o.errors << Shapes::ShapeRef.new(shape: TooManyFunctions)
        o.errors << Shapes::ShapeRef.new(shape: FunctionAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: FunctionSizeLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
      end)

      api.add_operation(:create_invalidation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateInvalidation2020_05_31"
        o.http_method = "POST"
        o.http_request_uri = "/2020-05-31/distribution/{DistributionId}/invalidation"
        o.input = Shapes::ShapeRef.new(shape: CreateInvalidationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateInvalidationResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: MissingBody)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchDistribution)
        o.errors << Shapes::ShapeRef.new(shape: BatchTooLarge)
        o.errors << Shapes::ShapeRef.new(shape: TooManyInvalidationsInProgress)
        o.errors << Shapes::ShapeRef.new(shape: InconsistentQuantities)
      end)

      api.add_operation(:create_key_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateKeyGroup2020_05_31"
        o.http_method = "POST"
        o.http_request_uri = "/2020-05-31/key-group"
        o.input = Shapes::ShapeRef.new(shape: CreateKeyGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateKeyGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: KeyGroupAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: TooManyKeyGroups)
        o.errors << Shapes::ShapeRef.new(shape: TooManyPublicKeysInKeyGroup)
      end)

      api.add_operation(:create_key_value_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateKeyValueStore2020_05_31"
        o.http_method = "POST"
        o.http_request_uri = "/2020-05-31/key-value-store/"
        o.input = Shapes::ShapeRef.new(shape: CreateKeyValueStoreRequest,
          location_name: "CreateKeyValueStoreRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: CreateKeyValueStoreResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: EntityLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: EntityAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: EntitySizeLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
      end)

      api.add_operation(:create_monitoring_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMonitoringSubscription2020_05_31"
        o.http_method = "POST"
        o.http_request_uri = "/2020-05-31/distributions/{DistributionId}/monitoring-subscription/"
        o.input = Shapes::ShapeRef.new(shape: CreateMonitoringSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMonitoringSubscriptionResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchDistribution)
        o.errors << Shapes::ShapeRef.new(shape: MonitoringSubscriptionAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
      end)

      api.add_operation(:create_origin_access_control, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateOriginAccessControl2020_05_31"
        o.http_method = "POST"
        o.http_request_uri = "/2020-05-31/origin-access-control"
        o.input = Shapes::ShapeRef.new(shape: CreateOriginAccessControlRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateOriginAccessControlResult)
        o.errors << Shapes::ShapeRef.new(shape: OriginAccessControlAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: TooManyOriginAccessControls)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
      end)

      api.add_operation(:create_origin_request_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateOriginRequestPolicy2020_05_31"
        o.http_method = "POST"
        o.http_request_uri = "/2020-05-31/origin-request-policy"
        o.input = Shapes::ShapeRef.new(shape: CreateOriginRequestPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateOriginRequestPolicyResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: InconsistentQuantities)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: OriginRequestPolicyAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: TooManyOriginRequestPolicies)
        o.errors << Shapes::ShapeRef.new(shape: TooManyHeadersInOriginRequestPolicy)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCookiesInOriginRequestPolicy)
        o.errors << Shapes::ShapeRef.new(shape: TooManyQueryStringsInOriginRequestPolicy)
      end)

      api.add_operation(:create_public_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePublicKey2020_05_31"
        o.http_method = "POST"
        o.http_request_uri = "/2020-05-31/public-key"
        o.input = Shapes::ShapeRef.new(shape: CreatePublicKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePublicKeyResult)
        o.errors << Shapes::ShapeRef.new(shape: PublicKeyAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: TooManyPublicKeys)
      end)

      api.add_operation(:create_realtime_log_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRealtimeLogConfig2020_05_31"
        o.http_method = "POST"
        o.http_request_uri = "/2020-05-31/realtime-log-config"
        o.input = Shapes::ShapeRef.new(shape: CreateRealtimeLogConfigRequest,
          location_name: "CreateRealtimeLogConfigRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: CreateRealtimeLogConfigResult)
        o.errors << Shapes::ShapeRef.new(shape: RealtimeLogConfigAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRealtimeLogConfigs)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
      end)

      api.add_operation(:create_response_headers_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateResponseHeadersPolicy2020_05_31"
        o.http_method = "POST"
        o.http_request_uri = "/2020-05-31/response-headers-policy"
        o.input = Shapes::ShapeRef.new(shape: CreateResponseHeadersPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateResponseHeadersPolicyResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: InconsistentQuantities)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: ResponseHeadersPolicyAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: TooManyResponseHeadersPolicies)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCustomHeadersInResponseHeadersPolicy)
        o.errors << Shapes::ShapeRef.new(shape: TooLongCSPInResponseHeadersPolicy)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRemoveHeadersInResponseHeadersPolicy)
      end)

      api.add_operation(:create_streaming_distribution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStreamingDistribution2020_05_31"
        o.http_method = "POST"
        o.http_request_uri = "/2020-05-31/streaming-distribution"
        o.input = Shapes::ShapeRef.new(shape: CreateStreamingDistributionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateStreamingDistributionResult)
        o.errors << Shapes::ShapeRef.new(shape: CNAMEAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: StreamingDistributionAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOrigin)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOriginAccessIdentity)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOriginAccessControl)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTrustedSigners)
        o.errors << Shapes::ShapeRef.new(shape: TrustedSignerDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: MissingBody)
        o.errors << Shapes::ShapeRef.new(shape: TooManyStreamingDistributionCNAMEs)
        o.errors << Shapes::ShapeRef.new(shape: TooManyStreamingDistributions)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: InconsistentQuantities)
      end)

      api.add_operation(:create_streaming_distribution_with_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStreamingDistributionWithTags2020_05_31"
        o.http_method = "POST"
        o.http_request_uri = "/2020-05-31/streaming-distribution?WithTags"
        o.input = Shapes::ShapeRef.new(shape: CreateStreamingDistributionWithTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateStreamingDistributionWithTagsResult)
        o.errors << Shapes::ShapeRef.new(shape: CNAMEAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: StreamingDistributionAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOrigin)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOriginAccessIdentity)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOriginAccessControl)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTrustedSigners)
        o.errors << Shapes::ShapeRef.new(shape: TrustedSignerDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: MissingBody)
        o.errors << Shapes::ShapeRef.new(shape: TooManyStreamingDistributionCNAMEs)
        o.errors << Shapes::ShapeRef.new(shape: TooManyStreamingDistributions)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: InconsistentQuantities)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagging)
      end)

      api.add_operation(:delete_cache_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCachePolicy2020_05_31"
        o.http_method = "DELETE"
        o.http_request_uri = "/2020-05-31/cache-policy/{Id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteCachePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchCachePolicy)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailed)
        o.errors << Shapes::ShapeRef.new(shape: IllegalDelete)
        o.errors << Shapes::ShapeRef.new(shape: CachePolicyInUse)
      end)

      api.add_operation(:delete_cloud_front_origin_access_identity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCloudFrontOriginAccessIdentity2020_05_31"
        o.http_method = "DELETE"
        o.http_request_uri = "/2020-05-31/origin-access-identity/cloudfront/{Id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteCloudFrontOriginAccessIdentityRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchCloudFrontOriginAccessIdentity)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailed)
        o.errors << Shapes::ShapeRef.new(shape: CloudFrontOriginAccessIdentityInUse)
      end)

      api.add_operation(:delete_continuous_deployment_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteContinuousDeploymentPolicy2020_05_31"
        o.http_method = "DELETE"
        o.http_request_uri = "/2020-05-31/continuous-deployment-policy/{Id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteContinuousDeploymentPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailed)
        o.errors << Shapes::ShapeRef.new(shape: ContinuousDeploymentPolicyInUse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchContinuousDeploymentPolicy)
      end)

      api.add_operation(:delete_distribution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDistribution2020_05_31"
        o.http_method = "DELETE"
        o.http_request_uri = "/2020-05-31/distribution/{Id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDistributionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: DistributionNotDisabled)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchDistribution)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailed)
      end)

      api.add_operation(:delete_field_level_encryption_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFieldLevelEncryptionConfig2020_05_31"
        o.http_method = "DELETE"
        o.http_request_uri = "/2020-05-31/field-level-encryption/{Id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteFieldLevelEncryptionConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchFieldLevelEncryptionConfig)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailed)
        o.errors << Shapes::ShapeRef.new(shape: FieldLevelEncryptionConfigInUse)
      end)

      api.add_operation(:delete_field_level_encryption_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFieldLevelEncryptionProfile2020_05_31"
        o.http_method = "DELETE"
        o.http_request_uri = "/2020-05-31/field-level-encryption-profile/{Id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteFieldLevelEncryptionProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchFieldLevelEncryptionProfile)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailed)
        o.errors << Shapes::ShapeRef.new(shape: FieldLevelEncryptionProfileInUse)
      end)

      api.add_operation(:delete_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFunction2020_05_31"
        o.http_method = "DELETE"
        o.http_request_uri = "/2020-05-31/function/{Name}"
        o.input = Shapes::ShapeRef.new(shape: DeleteFunctionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchFunctionExists)
        o.errors << Shapes::ShapeRef.new(shape: FunctionInUse)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailed)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
      end)

      api.add_operation(:delete_key_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteKeyGroup2020_05_31"
        o.http_method = "DELETE"
        o.http_request_uri = "/2020-05-31/key-group/{Id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteKeyGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchResource)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailed)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
      end)

      api.add_operation(:delete_key_value_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteKeyValueStore2020_05_31"
        o.http_method = "DELETE"
        o.http_request_uri = "/2020-05-31/key-value-store/{Name}"
        o.input = Shapes::ShapeRef.new(shape: DeleteKeyValueStoreRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFound)
        o.errors << Shapes::ShapeRef.new(shape: CannotDeleteEntityWhileInUse)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailed)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
      end)

      api.add_operation(:delete_monitoring_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMonitoringSubscription2020_05_31"
        o.http_method = "DELETE"
        o.http_request_uri = "/2020-05-31/distributions/{DistributionId}/monitoring-subscription/"
        o.input = Shapes::ShapeRef.new(shape: DeleteMonitoringSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteMonitoringSubscriptionResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchDistribution)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchMonitoringSubscription)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
      end)

      api.add_operation(:delete_origin_access_control, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteOriginAccessControl2020_05_31"
        o.http_method = "DELETE"
        o.http_request_uri = "/2020-05-31/origin-access-control/{Id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteOriginAccessControlRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchOriginAccessControl)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailed)
        o.errors << Shapes::ShapeRef.new(shape: OriginAccessControlInUse)
      end)

      api.add_operation(:delete_origin_request_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteOriginRequestPolicy2020_05_31"
        o.http_method = "DELETE"
        o.http_request_uri = "/2020-05-31/origin-request-policy/{Id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteOriginRequestPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchOriginRequestPolicy)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailed)
        o.errors << Shapes::ShapeRef.new(shape: IllegalDelete)
        o.errors << Shapes::ShapeRef.new(shape: OriginRequestPolicyInUse)
      end)

      api.add_operation(:delete_public_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePublicKey2020_05_31"
        o.http_method = "DELETE"
        o.http_request_uri = "/2020-05-31/public-key/{Id}"
        o.input = Shapes::ShapeRef.new(shape: DeletePublicKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: PublicKeyInUse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchPublicKey)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailed)
      end)

      api.add_operation(:delete_realtime_log_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRealtimeLogConfig2020_05_31"
        o.http_method = "POST"
        o.http_request_uri = "/2020-05-31/delete-realtime-log-config/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRealtimeLogConfigRequest,
          location_name: "DeleteRealtimeLogConfigRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchRealtimeLogConfig)
        o.errors << Shapes::ShapeRef.new(shape: RealtimeLogConfigInUse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
      end)

      api.add_operation(:delete_response_headers_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResponseHeadersPolicy2020_05_31"
        o.http_method = "DELETE"
        o.http_request_uri = "/2020-05-31/response-headers-policy/{Id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteResponseHeadersPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchResponseHeadersPolicy)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailed)
        o.errors << Shapes::ShapeRef.new(shape: IllegalDelete)
        o.errors << Shapes::ShapeRef.new(shape: ResponseHeadersPolicyInUse)
      end)

      api.add_operation(:delete_streaming_distribution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStreamingDistribution2020_05_31"
        o.http_method = "DELETE"
        o.http_request_uri = "/2020-05-31/streaming-distribution/{Id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteStreamingDistributionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: StreamingDistributionNotDisabled)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchStreamingDistribution)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailed)
      end)

      api.add_operation(:describe_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFunction2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/function/{Name}/describe"
        o.input = Shapes::ShapeRef.new(shape: DescribeFunctionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFunctionResult)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchFunctionExists)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
      end)

      api.add_operation(:describe_key_value_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeKeyValueStore2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/key-value-store/{Name}"
        o.input = Shapes::ShapeRef.new(shape: DescribeKeyValueStoreRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeKeyValueStoreResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFound)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
      end)

      api.add_operation(:get_cache_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCachePolicy2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/cache-policy/{Id}"
        o.input = Shapes::ShapeRef.new(shape: GetCachePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCachePolicyResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchCachePolicy)
      end)

      api.add_operation(:get_cache_policy_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCachePolicyConfig2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/cache-policy/{Id}/config"
        o.input = Shapes::ShapeRef.new(shape: GetCachePolicyConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCachePolicyConfigResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchCachePolicy)
      end)

      api.add_operation(:get_cloud_front_origin_access_identity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCloudFrontOriginAccessIdentity2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/origin-access-identity/cloudfront/{Id}"
        o.input = Shapes::ShapeRef.new(shape: GetCloudFrontOriginAccessIdentityRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCloudFrontOriginAccessIdentityResult)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchCloudFrontOriginAccessIdentity)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
      end)

      api.add_operation(:get_cloud_front_origin_access_identity_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCloudFrontOriginAccessIdentityConfig2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/origin-access-identity/cloudfront/{Id}/config"
        o.input = Shapes::ShapeRef.new(shape: GetCloudFrontOriginAccessIdentityConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCloudFrontOriginAccessIdentityConfigResult)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchCloudFrontOriginAccessIdentity)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
      end)

      api.add_operation(:get_continuous_deployment_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetContinuousDeploymentPolicy2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/continuous-deployment-policy/{Id}"
        o.input = Shapes::ShapeRef.new(shape: GetContinuousDeploymentPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetContinuousDeploymentPolicyResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchContinuousDeploymentPolicy)
      end)

      api.add_operation(:get_continuous_deployment_policy_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetContinuousDeploymentPolicyConfig2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/continuous-deployment-policy/{Id}/config"
        o.input = Shapes::ShapeRef.new(shape: GetContinuousDeploymentPolicyConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: GetContinuousDeploymentPolicyConfigResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchContinuousDeploymentPolicy)
      end)

      api.add_operation(:get_distribution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDistribution2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/distribution/{Id}"
        o.input = Shapes::ShapeRef.new(shape: GetDistributionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDistributionResult)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchDistribution)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
      end)

      api.add_operation(:get_distribution_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDistributionConfig2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/distribution/{Id}/config"
        o.input = Shapes::ShapeRef.new(shape: GetDistributionConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDistributionConfigResult)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchDistribution)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
      end)

      api.add_operation(:get_field_level_encryption, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFieldLevelEncryption2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/field-level-encryption/{Id}"
        o.input = Shapes::ShapeRef.new(shape: GetFieldLevelEncryptionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFieldLevelEncryptionResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchFieldLevelEncryptionConfig)
      end)

      api.add_operation(:get_field_level_encryption_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFieldLevelEncryptionConfig2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/field-level-encryption/{Id}/config"
        o.input = Shapes::ShapeRef.new(shape: GetFieldLevelEncryptionConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFieldLevelEncryptionConfigResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchFieldLevelEncryptionConfig)
      end)

      api.add_operation(:get_field_level_encryption_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFieldLevelEncryptionProfile2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/field-level-encryption-profile/{Id}"
        o.input = Shapes::ShapeRef.new(shape: GetFieldLevelEncryptionProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFieldLevelEncryptionProfileResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchFieldLevelEncryptionProfile)
      end)

      api.add_operation(:get_field_level_encryption_profile_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFieldLevelEncryptionProfileConfig2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/field-level-encryption-profile/{Id}/config"
        o.input = Shapes::ShapeRef.new(shape: GetFieldLevelEncryptionProfileConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFieldLevelEncryptionProfileConfigResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchFieldLevelEncryptionProfile)
      end)

      api.add_operation(:get_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFunction2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/function/{Name}"
        o.input = Shapes::ShapeRef.new(shape: GetFunctionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFunctionResult)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchFunctionExists)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
      end)

      api.add_operation(:get_invalidation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInvalidation2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/distribution/{DistributionId}/invalidation/{Id}"
        o.input = Shapes::ShapeRef.new(shape: GetInvalidationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInvalidationResult)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchInvalidation)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchDistribution)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
      end)

      api.add_operation(:get_key_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetKeyGroup2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/key-group/{Id}"
        o.input = Shapes::ShapeRef.new(shape: GetKeyGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: GetKeyGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchResource)
      end)

      api.add_operation(:get_key_group_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetKeyGroupConfig2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/key-group/{Id}/config"
        o.input = Shapes::ShapeRef.new(shape: GetKeyGroupConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: GetKeyGroupConfigResult)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchResource)
      end)

      api.add_operation(:get_monitoring_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMonitoringSubscription2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/distributions/{DistributionId}/monitoring-subscription/"
        o.input = Shapes::ShapeRef.new(shape: GetMonitoringSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMonitoringSubscriptionResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchDistribution)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchMonitoringSubscription)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
      end)

      api.add_operation(:get_origin_access_control, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOriginAccessControl2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/origin-access-control/{Id}"
        o.input = Shapes::ShapeRef.new(shape: GetOriginAccessControlRequest)
        o.output = Shapes::ShapeRef.new(shape: GetOriginAccessControlResult)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchOriginAccessControl)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
      end)

      api.add_operation(:get_origin_access_control_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOriginAccessControlConfig2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/origin-access-control/{Id}/config"
        o.input = Shapes::ShapeRef.new(shape: GetOriginAccessControlConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: GetOriginAccessControlConfigResult)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchOriginAccessControl)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
      end)

      api.add_operation(:get_origin_request_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOriginRequestPolicy2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/origin-request-policy/{Id}"
        o.input = Shapes::ShapeRef.new(shape: GetOriginRequestPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetOriginRequestPolicyResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchOriginRequestPolicy)
      end)

      api.add_operation(:get_origin_request_policy_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOriginRequestPolicyConfig2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/origin-request-policy/{Id}/config"
        o.input = Shapes::ShapeRef.new(shape: GetOriginRequestPolicyConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: GetOriginRequestPolicyConfigResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchOriginRequestPolicy)
      end)

      api.add_operation(:get_public_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPublicKey2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/public-key/{Id}"
        o.input = Shapes::ShapeRef.new(shape: GetPublicKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPublicKeyResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchPublicKey)
      end)

      api.add_operation(:get_public_key_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPublicKeyConfig2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/public-key/{Id}/config"
        o.input = Shapes::ShapeRef.new(shape: GetPublicKeyConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPublicKeyConfigResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchPublicKey)
      end)

      api.add_operation(:get_realtime_log_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRealtimeLogConfig2020_05_31"
        o.http_method = "POST"
        o.http_request_uri = "/2020-05-31/get-realtime-log-config/"
        o.input = Shapes::ShapeRef.new(shape: GetRealtimeLogConfigRequest,
          location_name: "GetRealtimeLogConfigRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: GetRealtimeLogConfigResult)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchRealtimeLogConfig)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
      end)

      api.add_operation(:get_response_headers_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResponseHeadersPolicy2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/response-headers-policy/{Id}"
        o.input = Shapes::ShapeRef.new(shape: GetResponseHeadersPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResponseHeadersPolicyResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchResponseHeadersPolicy)
      end)

      api.add_operation(:get_response_headers_policy_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResponseHeadersPolicyConfig2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/response-headers-policy/{Id}/config"
        o.input = Shapes::ShapeRef.new(shape: GetResponseHeadersPolicyConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResponseHeadersPolicyConfigResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchResponseHeadersPolicy)
      end)

      api.add_operation(:get_streaming_distribution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStreamingDistribution2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/streaming-distribution/{Id}"
        o.input = Shapes::ShapeRef.new(shape: GetStreamingDistributionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStreamingDistributionResult)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchStreamingDistribution)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
      end)

      api.add_operation(:get_streaming_distribution_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStreamingDistributionConfig2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/streaming-distribution/{Id}/config"
        o.input = Shapes::ShapeRef.new(shape: GetStreamingDistributionConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStreamingDistributionConfigResult)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchStreamingDistribution)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
      end)

      api.add_operation(:list_cache_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCachePolicies2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/cache-policy"
        o.input = Shapes::ShapeRef.new(shape: ListCachePoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCachePoliciesResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchCachePolicy)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
      end)

      api.add_operation(:list_cloud_front_origin_access_identities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCloudFrontOriginAccessIdentities2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/origin-access-identity/cloudfront"
        o.input = Shapes::ShapeRef.new(shape: ListCloudFrontOriginAccessIdentitiesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCloudFrontOriginAccessIdentitiesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o[:pager] = Aws::Pager.new(
          more_results: "cloud_front_origin_access_identity_list.is_truncated",
          limit_key: "max_items",
          tokens: {
            "cloud_front_origin_access_identity_list.next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_conflicting_aliases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConflictingAliases2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/conflicting-alias"
        o.input = Shapes::ShapeRef.new(shape: ListConflictingAliasesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListConflictingAliasesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchDistribution)
      end)

      api.add_operation(:list_continuous_deployment_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListContinuousDeploymentPolicies2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/continuous-deployment-policy"
        o.input = Shapes::ShapeRef.new(shape: ListContinuousDeploymentPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListContinuousDeploymentPoliciesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchContinuousDeploymentPolicy)
      end)

      api.add_operation(:list_distributions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDistributions2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/distribution"
        o.input = Shapes::ShapeRef.new(shape: ListDistributionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDistributionsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o[:pager] = Aws::Pager.new(
          more_results: "distribution_list.is_truncated",
          limit_key: "max_items",
          tokens: {
            "distribution_list.next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_distributions_by_cache_policy_id, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDistributionsByCachePolicyId2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/distributionsByCachePolicyId/{CachePolicyId}"
        o.input = Shapes::ShapeRef.new(shape: ListDistributionsByCachePolicyIdRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDistributionsByCachePolicyIdResult)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchCachePolicy)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
      end)

      api.add_operation(:list_distributions_by_key_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDistributionsByKeyGroup2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/distributionsByKeyGroupId/{KeyGroupId}"
        o.input = Shapes::ShapeRef.new(shape: ListDistributionsByKeyGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDistributionsByKeyGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchResource)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
      end)

      api.add_operation(:list_distributions_by_origin_request_policy_id, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDistributionsByOriginRequestPolicyId2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/distributionsByOriginRequestPolicyId/{OriginRequestPolicyId}"
        o.input = Shapes::ShapeRef.new(shape: ListDistributionsByOriginRequestPolicyIdRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDistributionsByOriginRequestPolicyIdResult)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchOriginRequestPolicy)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
      end)

      api.add_operation(:list_distributions_by_realtime_log_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDistributionsByRealtimeLogConfig2020_05_31"
        o.http_method = "POST"
        o.http_request_uri = "/2020-05-31/distributionsByRealtimeLogConfig/"
        o.input = Shapes::ShapeRef.new(shape: ListDistributionsByRealtimeLogConfigRequest,
          location_name: "ListDistributionsByRealtimeLogConfigRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: ListDistributionsByRealtimeLogConfigResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
      end)

      api.add_operation(:list_distributions_by_response_headers_policy_id, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDistributionsByResponseHeadersPolicyId2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/distributionsByResponseHeadersPolicyId/{ResponseHeadersPolicyId}"
        o.input = Shapes::ShapeRef.new(shape: ListDistributionsByResponseHeadersPolicyIdRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDistributionsByResponseHeadersPolicyIdResult)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchResponseHeadersPolicy)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
      end)

      api.add_operation(:list_distributions_by_web_acl_id, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDistributionsByWebACLId2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/distributionsByWebACLId/{WebACLId}"
        o.input = Shapes::ShapeRef.new(shape: ListDistributionsByWebACLIdRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDistributionsByWebACLIdResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidWebACLId)
      end)

      api.add_operation(:list_field_level_encryption_configs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFieldLevelEncryptionConfigs2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/field-level-encryption"
        o.input = Shapes::ShapeRef.new(shape: ListFieldLevelEncryptionConfigsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFieldLevelEncryptionConfigsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
      end)

      api.add_operation(:list_field_level_encryption_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFieldLevelEncryptionProfiles2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/field-level-encryption-profile"
        o.input = Shapes::ShapeRef.new(shape: ListFieldLevelEncryptionProfilesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFieldLevelEncryptionProfilesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
      end)

      api.add_operation(:list_functions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFunctions2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/function"
        o.input = Shapes::ShapeRef.new(shape: ListFunctionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFunctionsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
      end)

      api.add_operation(:list_invalidations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInvalidations2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/distribution/{DistributionId}/invalidation"
        o.input = Shapes::ShapeRef.new(shape: ListInvalidationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInvalidationsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchDistribution)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o[:pager] = Aws::Pager.new(
          more_results: "invalidation_list.is_truncated",
          limit_key: "max_items",
          tokens: {
            "invalidation_list.next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_key_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListKeyGroups2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/key-group"
        o.input = Shapes::ShapeRef.new(shape: ListKeyGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListKeyGroupsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
      end)

      api.add_operation(:list_key_value_stores, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListKeyValueStores2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/key-value-store"
        o.input = Shapes::ShapeRef.new(shape: ListKeyValueStoresRequest)
        o.output = Shapes::ShapeRef.new(shape: ListKeyValueStoresResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_items",
          tokens: {
            "key_value_store_list.next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_origin_access_controls, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOriginAccessControls2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/origin-access-control"
        o.input = Shapes::ShapeRef.new(shape: ListOriginAccessControlsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOriginAccessControlsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
      end)

      api.add_operation(:list_origin_request_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOriginRequestPolicies2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/origin-request-policy"
        o.input = Shapes::ShapeRef.new(shape: ListOriginRequestPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOriginRequestPoliciesResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchOriginRequestPolicy)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
      end)

      api.add_operation(:list_public_keys, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPublicKeys2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/public-key"
        o.input = Shapes::ShapeRef.new(shape: ListPublicKeysRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPublicKeysResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
      end)

      api.add_operation(:list_realtime_log_configs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRealtimeLogConfigs2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/realtime-log-config"
        o.input = Shapes::ShapeRef.new(shape: ListRealtimeLogConfigsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRealtimeLogConfigsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchRealtimeLogConfig)
      end)

      api.add_operation(:list_response_headers_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResponseHeadersPolicies2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/response-headers-policy"
        o.input = Shapes::ShapeRef.new(shape: ListResponseHeadersPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResponseHeadersPoliciesResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchResponseHeadersPolicy)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
      end)

      api.add_operation(:list_streaming_distributions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStreamingDistributions2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/streaming-distribution"
        o.input = Shapes::ShapeRef.new(shape: ListStreamingDistributionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListStreamingDistributionsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o[:pager] = Aws::Pager.new(
          more_results: "streaming_distribution_list.is_truncated",
          limit_key: "max_items",
          tokens: {
            "streaming_distribution_list.next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource2020_05_31"
        o.http_method = "GET"
        o.http_request_uri = "/2020-05-31/tagging"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagging)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchResource)
      end)

      api.add_operation(:publish_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PublishFunction2020_05_31"
        o.http_method = "POST"
        o.http_request_uri = "/2020-05-31/function/{Name}/publish"
        o.input = Shapes::ShapeRef.new(shape: PublishFunctionRequest)
        o.output = Shapes::ShapeRef.new(shape: PublishFunctionResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchFunctionExists)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailed)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource2020_05_31"
        o.http_method = "POST"
        o.http_request_uri = "/2020-05-31/tagging?Operation=Tag"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagging)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchResource)
      end)

      api.add_operation(:test_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TestFunction2020_05_31"
        o.http_method = "POST"
        o.http_request_uri = "/2020-05-31/function/{Name}/test"
        o.input = Shapes::ShapeRef.new(shape: TestFunctionRequest,
          location_name: "TestFunctionRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: TestFunctionResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchFunctionExists)
        o.errors << Shapes::ShapeRef.new(shape: TestFunctionFailed)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource2020_05_31"
        o.http_method = "POST"
        o.http_request_uri = "/2020-05-31/tagging?Operation=Untag"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagging)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchResource)
      end)

      api.add_operation(:update_cache_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCachePolicy2020_05_31"
        o.http_method = "PUT"
        o.http_request_uri = "/2020-05-31/cache-policy/{Id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateCachePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCachePolicyResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: IllegalUpdate)
        o.errors << Shapes::ShapeRef.new(shape: InconsistentQuantities)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchCachePolicy)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailed)
        o.errors << Shapes::ShapeRef.new(shape: CachePolicyAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: TooManyHeadersInCachePolicy)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCookiesInCachePolicy)
        o.errors << Shapes::ShapeRef.new(shape: TooManyQueryStringsInCachePolicy)
      end)

      api.add_operation(:update_cloud_front_origin_access_identity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCloudFrontOriginAccessIdentity2020_05_31"
        o.http_method = "PUT"
        o.http_request_uri = "/2020-05-31/origin-access-identity/cloudfront/{Id}/config"
        o.input = Shapes::ShapeRef.new(shape: UpdateCloudFrontOriginAccessIdentityRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCloudFrontOriginAccessIdentityResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: IllegalUpdate)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        o.errors << Shapes::ShapeRef.new(shape: MissingBody)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchCloudFrontOriginAccessIdentity)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailed)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: InconsistentQuantities)
      end)

      api.add_operation(:update_continuous_deployment_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateContinuousDeploymentPolicy2020_05_31"
        o.http_method = "PUT"
        o.http_request_uri = "/2020-05-31/continuous-deployment-policy/{Id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateContinuousDeploymentPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateContinuousDeploymentPolicyResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: InconsistentQuantities)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailed)
        o.errors << Shapes::ShapeRef.new(shape: StagingDistributionInUse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchContinuousDeploymentPolicy)
      end)

      api.add_operation(:update_distribution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDistribution2020_05_31"
        o.http_method = "PUT"
        o.http_request_uri = "/2020-05-31/distribution/{Id}/config"
        o.input = Shapes::ShapeRef.new(shape: UpdateDistributionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDistributionResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: CNAMEAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: IllegalUpdate)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        o.errors << Shapes::ShapeRef.new(shape: MissingBody)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchDistribution)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailed)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionCNAMEs)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDefaultRootObject)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRelativePath)
        o.errors << Shapes::ShapeRef.new(shape: InvalidErrorCode)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResponseCode)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOriginAccessIdentity)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOriginAccessControl)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTrustedSigners)
        o.errors << Shapes::ShapeRef.new(shape: TrustedSignerDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InvalidViewerCertificate)
        o.errors << Shapes::ShapeRef.new(shape: InvalidMinimumProtocolVersion)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequiredProtocol)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchOrigin)
        o.errors << Shapes::ShapeRef.new(shape: TooManyOrigins)
        o.errors << Shapes::ShapeRef.new(shape: TooManyOriginGroupsPerDistribution)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCacheBehaviors)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCookieNamesInWhiteList)
        o.errors << Shapes::ShapeRef.new(shape: InvalidForwardCookies)
        o.errors << Shapes::ShapeRef.new(shape: TooManyHeadersInForwardedValues)
        o.errors << Shapes::ShapeRef.new(shape: InvalidHeadersForS3Origin)
        o.errors << Shapes::ShapeRef.new(shape: InconsistentQuantities)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCertificates)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLocationCode)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGeoRestrictionParameter)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTTLOrder)
        o.errors << Shapes::ShapeRef.new(shape: InvalidWebACLId)
        o.errors << Shapes::ShapeRef.new(shape: TooManyOriginCustomHeaders)
        o.errors << Shapes::ShapeRef.new(shape: TooManyQueryStringParameters)
        o.errors << Shapes::ShapeRef.new(shape: InvalidQueryStringParameters)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsWithLambdaAssociations)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsWithSingleFunctionARN)
        o.errors << Shapes::ShapeRef.new(shape: TooManyLambdaFunctionAssociations)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLambdaFunctionAssociation)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsWithFunctionAssociations)
        o.errors << Shapes::ShapeRef.new(shape: TooManyFunctionAssociations)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFunctionAssociation)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOriginReadTimeout)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOriginKeepaliveTimeout)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchFieldLevelEncryptionConfig)
        o.errors << Shapes::ShapeRef.new(shape: IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToFieldLevelEncryptionConfig)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchCachePolicy)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToCachePolicy)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToOriginAccessControl)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchResponseHeadersPolicy)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToResponseHeadersPolicy)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchOriginRequestPolicy)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToOriginRequestPolicy)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToKeyGroup)
        o.errors << Shapes::ShapeRef.new(shape: TooManyKeyGroupsAssociatedToDistribution)
        o.errors << Shapes::ShapeRef.new(shape: TrustedKeyGroupDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchRealtimeLogConfig)
        o.errors << Shapes::ShapeRef.new(shape: RealtimeLogConfigOwnerMismatch)
        o.errors << Shapes::ShapeRef.new(shape: ContinuousDeploymentPolicyInUse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchContinuousDeploymentPolicy)
        o.errors << Shapes::ShapeRef.new(shape: StagingDistributionInUse)
        o.errors << Shapes::ShapeRef.new(shape: IllegalOriginAccessConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDomainNameForOriginAccessControl)
      end)

      api.add_operation(:update_distribution_with_staging_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDistributionWithStagingConfig2020_05_31"
        o.http_method = "PUT"
        o.http_request_uri = "/2020-05-31/distribution/{Id}/promote-staging-config"
        o.input = Shapes::ShapeRef.new(shape: UpdateDistributionWithStagingConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDistributionWithStagingConfigResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: CNAMEAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: IllegalUpdate)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        o.errors << Shapes::ShapeRef.new(shape: MissingBody)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchDistribution)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailed)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionCNAMEs)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDefaultRootObject)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRelativePath)
        o.errors << Shapes::ShapeRef.new(shape: InvalidErrorCode)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResponseCode)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOriginAccessIdentity)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOriginAccessControl)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTrustedSigners)
        o.errors << Shapes::ShapeRef.new(shape: TrustedSignerDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InvalidViewerCertificate)
        o.errors << Shapes::ShapeRef.new(shape: InvalidMinimumProtocolVersion)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequiredProtocol)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchOrigin)
        o.errors << Shapes::ShapeRef.new(shape: TooManyOrigins)
        o.errors << Shapes::ShapeRef.new(shape: TooManyOriginGroupsPerDistribution)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCacheBehaviors)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCookieNamesInWhiteList)
        o.errors << Shapes::ShapeRef.new(shape: InvalidForwardCookies)
        o.errors << Shapes::ShapeRef.new(shape: TooManyHeadersInForwardedValues)
        o.errors << Shapes::ShapeRef.new(shape: InvalidHeadersForS3Origin)
        o.errors << Shapes::ShapeRef.new(shape: InconsistentQuantities)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCertificates)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLocationCode)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGeoRestrictionParameter)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTTLOrder)
        o.errors << Shapes::ShapeRef.new(shape: InvalidWebACLId)
        o.errors << Shapes::ShapeRef.new(shape: TooManyOriginCustomHeaders)
        o.errors << Shapes::ShapeRef.new(shape: TooManyQueryStringParameters)
        o.errors << Shapes::ShapeRef.new(shape: InvalidQueryStringParameters)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsWithLambdaAssociations)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsWithSingleFunctionARN)
        o.errors << Shapes::ShapeRef.new(shape: TooManyLambdaFunctionAssociations)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLambdaFunctionAssociation)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsWithFunctionAssociations)
        o.errors << Shapes::ShapeRef.new(shape: TooManyFunctionAssociations)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFunctionAssociation)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOriginReadTimeout)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOriginKeepaliveTimeout)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchFieldLevelEncryptionConfig)
        o.errors << Shapes::ShapeRef.new(shape: IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToFieldLevelEncryptionConfig)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchCachePolicy)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToCachePolicy)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToOriginAccessControl)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchResponseHeadersPolicy)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToResponseHeadersPolicy)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchOriginRequestPolicy)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToOriginRequestPolicy)
        o.errors << Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToKeyGroup)
        o.errors << Shapes::ShapeRef.new(shape: TooManyKeyGroupsAssociatedToDistribution)
        o.errors << Shapes::ShapeRef.new(shape: TrustedKeyGroupDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchRealtimeLogConfig)
        o.errors << Shapes::ShapeRef.new(shape: RealtimeLogConfigOwnerMismatch)
      end)

      api.add_operation(:update_field_level_encryption_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFieldLevelEncryptionConfig2020_05_31"
        o.http_method = "PUT"
        o.http_request_uri = "/2020-05-31/field-level-encryption/{Id}/config"
        o.input = Shapes::ShapeRef.new(shape: UpdateFieldLevelEncryptionConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFieldLevelEncryptionConfigResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: IllegalUpdate)
        o.errors << Shapes::ShapeRef.new(shape: InconsistentQuantities)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchFieldLevelEncryptionProfile)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchFieldLevelEncryptionConfig)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailed)
        o.errors << Shapes::ShapeRef.new(shape: TooManyFieldLevelEncryptionQueryArgProfiles)
        o.errors << Shapes::ShapeRef.new(shape: TooManyFieldLevelEncryptionContentTypeProfiles)
        o.errors << Shapes::ShapeRef.new(shape: QueryArgProfileEmpty)
      end)

      api.add_operation(:update_field_level_encryption_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFieldLevelEncryptionProfile2020_05_31"
        o.http_method = "PUT"
        o.http_request_uri = "/2020-05-31/field-level-encryption-profile/{Id}/config"
        o.input = Shapes::ShapeRef.new(shape: UpdateFieldLevelEncryptionProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFieldLevelEncryptionProfileResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: FieldLevelEncryptionProfileAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: IllegalUpdate)
        o.errors << Shapes::ShapeRef.new(shape: InconsistentQuantities)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchPublicKey)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchFieldLevelEncryptionProfile)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailed)
        o.errors << Shapes::ShapeRef.new(shape: FieldLevelEncryptionProfileSizeExceeded)
        o.errors << Shapes::ShapeRef.new(shape: TooManyFieldLevelEncryptionEncryptionEntities)
        o.errors << Shapes::ShapeRef.new(shape: TooManyFieldLevelEncryptionFieldPatterns)
      end)

      api.add_operation(:update_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFunction2020_05_31"
        o.http_method = "PUT"
        o.http_request_uri = "/2020-05-31/function/{Name}"
        o.input = Shapes::ShapeRef.new(shape: UpdateFunctionRequest,
          location_name: "UpdateFunctionRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: UpdateFunctionResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchFunctionExists)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailed)
        o.errors << Shapes::ShapeRef.new(shape: FunctionSizeLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
      end)

      api.add_operation(:update_key_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateKeyGroup2020_05_31"
        o.http_method = "PUT"
        o.http_request_uri = "/2020-05-31/key-group/{Id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateKeyGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateKeyGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchResource)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailed)
        o.errors << Shapes::ShapeRef.new(shape: KeyGroupAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: TooManyPublicKeysInKeyGroup)
      end)

      api.add_operation(:update_key_value_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateKeyValueStore2020_05_31"
        o.http_method = "PUT"
        o.http_request_uri = "/2020-05-31/key-value-store/{Name}"
        o.input = Shapes::ShapeRef.new(shape: UpdateKeyValueStoreRequest,
          location_name: "UpdateKeyValueStoreRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: UpdateKeyValueStoreResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFound)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailed)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
      end)

      api.add_operation(:update_origin_access_control, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateOriginAccessControl2020_05_31"
        o.http_method = "PUT"
        o.http_request_uri = "/2020-05-31/origin-access-control/{Id}/config"
        o.input = Shapes::ShapeRef.new(shape: UpdateOriginAccessControlRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateOriginAccessControlResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: IllegalUpdate)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        o.errors << Shapes::ShapeRef.new(shape: OriginAccessControlAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchOriginAccessControl)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailed)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
      end)

      api.add_operation(:update_origin_request_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateOriginRequestPolicy2020_05_31"
        o.http_method = "PUT"
        o.http_request_uri = "/2020-05-31/origin-request-policy/{Id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateOriginRequestPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateOriginRequestPolicyResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: IllegalUpdate)
        o.errors << Shapes::ShapeRef.new(shape: InconsistentQuantities)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchOriginRequestPolicy)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailed)
        o.errors << Shapes::ShapeRef.new(shape: OriginRequestPolicyAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: TooManyHeadersInOriginRequestPolicy)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCookiesInOriginRequestPolicy)
        o.errors << Shapes::ShapeRef.new(shape: TooManyQueryStringsInOriginRequestPolicy)
      end)

      api.add_operation(:update_public_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePublicKey2020_05_31"
        o.http_method = "PUT"
        o.http_request_uri = "/2020-05-31/public-key/{Id}/config"
        o.input = Shapes::ShapeRef.new(shape: UpdatePublicKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePublicKeyResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: CannotChangeImmutablePublicKeyFields)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        o.errors << Shapes::ShapeRef.new(shape: IllegalUpdate)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchPublicKey)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailed)
      end)

      api.add_operation(:update_realtime_log_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRealtimeLogConfig2020_05_31"
        o.http_method = "PUT"
        o.http_request_uri = "/2020-05-31/realtime-log-config/"
        o.input = Shapes::ShapeRef.new(shape: UpdateRealtimeLogConfigRequest,
          location_name: "UpdateRealtimeLogConfigRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"http://cloudfront.amazonaws.com/doc/2020-05-31/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: UpdateRealtimeLogConfigResult)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchRealtimeLogConfig)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
      end)

      api.add_operation(:update_response_headers_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateResponseHeadersPolicy2020_05_31"
        o.http_method = "PUT"
        o.http_request_uri = "/2020-05-31/response-headers-policy/{Id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateResponseHeadersPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateResponseHeadersPolicyResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: IllegalUpdate)
        o.errors << Shapes::ShapeRef.new(shape: InconsistentQuantities)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchResponseHeadersPolicy)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailed)
        o.errors << Shapes::ShapeRef.new(shape: ResponseHeadersPolicyAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCustomHeadersInResponseHeadersPolicy)
        o.errors << Shapes::ShapeRef.new(shape: TooLongCSPInResponseHeadersPolicy)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRemoveHeadersInResponseHeadersPolicy)
      end)

      api.add_operation(:update_streaming_distribution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateStreamingDistribution2020_05_31"
        o.http_method = "PUT"
        o.http_request_uri = "/2020-05-31/streaming-distribution/{Id}/config"
        o.input = Shapes::ShapeRef.new(shape: UpdateStreamingDistributionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateStreamingDistributionResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDenied)
        o.errors << Shapes::ShapeRef.new(shape: CNAMEAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: IllegalUpdate)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        o.errors << Shapes::ShapeRef.new(shape: MissingBody)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchStreamingDistribution)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailed)
        o.errors << Shapes::ShapeRef.new(shape: TooManyStreamingDistributionCNAMEs)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOriginAccessIdentity)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOriginAccessControl)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTrustedSigners)
        o.errors << Shapes::ShapeRef.new(shape: TrustedSignerDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InconsistentQuantities)
      end)
    end

  end
end
