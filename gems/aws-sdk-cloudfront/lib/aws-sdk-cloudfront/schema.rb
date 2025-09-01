# frozen_string_literal: true

# This is generated code!

module Aws::CloudFront
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessControlAllowHeadersList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#AccessControlAllowHeadersList', name: 'AccessControlAllowHeadersList')
    AccessControlAllowMethodsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#AccessControlAllowMethodsList', name: 'AccessControlAllowMethodsList')
    AccessControlAllowOriginsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#AccessControlAllowOriginsList', name: 'AccessControlAllowOriginsList')
    AccessControlExposeHeadersList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#AccessControlExposeHeadersList', name: 'AccessControlExposeHeadersList')
    AccessDenied = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#AccessDenied', name: 'AccessDenied', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ActiveTrustedKeyGroups = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ActiveTrustedKeyGroups', name: 'ActiveTrustedKeyGroups')
    ActiveTrustedSigners = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ActiveTrustedSigners', name: 'ActiveTrustedSigners')
    AliasICPRecordal = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#AliasICPRecordal', name: 'AliasICPRecordal')
    AliasICPRecordals = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#AliasICPRecordals', name: 'AliasICPRecordals')
    AliasList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#AliasList', name: 'AliasList')
    Aliases = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#Aliases', name: 'Aliases')
    AllowedMethods = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#AllowedMethods', name: 'AllowedMethods')
    AnycastIpList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#AnycastIpList', name: 'AnycastIpList')
    AnycastIpListCollection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#AnycastIpListCollection', name: 'AnycastIpListCollection')
    AnycastIpListName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudfront#AnycastIpListName', name: 'AnycastIpListName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]{1,64}$"})
    AnycastIpListSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#AnycastIpListSummaries', name: 'AnycastIpListSummaries')
    AnycastIpListSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#AnycastIpListSummary', name: 'AnycastIpListSummary')
    AnycastIps = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#AnycastIps', name: 'AnycastIps')
    AssociateAliasRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#AssociateAliasRequest', name: 'AssociateAliasRequest')
    AssociateDistributionTenantWebACLRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#AssociateDistributionTenantWebACLRequest', name: 'AssociateDistributionTenantWebACLRequest')
    AssociateDistributionTenantWebACLResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#AssociateDistributionTenantWebACLResult', name: 'AssociateDistributionTenantWebACLResult')
    AssociateDistributionWebACLRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#AssociateDistributionWebACLRequest', name: 'AssociateDistributionWebACLRequest')
    AssociateDistributionWebACLResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#AssociateDistributionWebACLResult', name: 'AssociateDistributionWebACLResult')
    AwsAccountNumberList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#AwsAccountNumberList', name: 'AwsAccountNumberList')
    BatchTooLarge = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#BatchTooLarge', name: 'BatchTooLarge', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 413})
    CNAMEAlreadyExists = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CNAMEAlreadyExists', name: 'CNAMEAlreadyExists', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CacheBehavior = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CacheBehavior', name: 'CacheBehavior')
    CacheBehaviorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#CacheBehaviorList', name: 'CacheBehaviorList')
    CacheBehaviors = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CacheBehaviors', name: 'CacheBehaviors')
    CachePolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CachePolicy', name: 'CachePolicy')
    CachePolicyAlreadyExists = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CachePolicyAlreadyExists', name: 'CachePolicyAlreadyExists', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CachePolicyConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CachePolicyConfig', name: 'CachePolicyConfig')
    CachePolicyCookieBehavior = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#CachePolicyCookieBehavior', name: 'CachePolicyCookieBehavior')
    CachePolicyCookiesConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CachePolicyCookiesConfig', name: 'CachePolicyCookiesConfig')
    CachePolicyHeaderBehavior = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#CachePolicyHeaderBehavior', name: 'CachePolicyHeaderBehavior')
    CachePolicyHeadersConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CachePolicyHeadersConfig', name: 'CachePolicyHeadersConfig')
    CachePolicyInUse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CachePolicyInUse', name: 'CachePolicyInUse', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CachePolicyList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CachePolicyList', name: 'CachePolicyList')
    CachePolicyQueryStringBehavior = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#CachePolicyQueryStringBehavior', name: 'CachePolicyQueryStringBehavior')
    CachePolicyQueryStringsConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CachePolicyQueryStringsConfig', name: 'CachePolicyQueryStringsConfig')
    CachePolicySummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CachePolicySummary', name: 'CachePolicySummary')
    CachePolicySummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#CachePolicySummaryList', name: 'CachePolicySummaryList')
    CachePolicyType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#CachePolicyType', name: 'CachePolicyType')
    CachedMethods = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CachedMethods', name: 'CachedMethods')
    CannotChangeImmutablePublicKeyFields = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CannotChangeImmutablePublicKeyFields', name: 'CannotChangeImmutablePublicKeyFields', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CannotDeleteEntityWhileInUse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CannotDeleteEntityWhileInUse', name: 'CannotDeleteEntityWhileInUse', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CannotUpdateEntityWhileInUse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CannotUpdateEntityWhileInUse', name: 'CannotUpdateEntityWhileInUse', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    Certificate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#Certificate', name: 'Certificate')
    CertificateSource = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#CertificateSource', name: 'CertificateSource')
    CertificateTransparencyLoggingPreference = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#CertificateTransparencyLoggingPreference', name: 'CertificateTransparencyLoggingPreference')
    CloudFrontOriginAccessIdentity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CloudFrontOriginAccessIdentity', name: 'CloudFrontOriginAccessIdentity')
    CloudFrontOriginAccessIdentityAlreadyExists = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CloudFrontOriginAccessIdentityAlreadyExists', name: 'CloudFrontOriginAccessIdentityAlreadyExists', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CloudFrontOriginAccessIdentityConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CloudFrontOriginAccessIdentityConfig', name: 'CloudFrontOriginAccessIdentityConfig')
    CloudFrontOriginAccessIdentityInUse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CloudFrontOriginAccessIdentityInUse', name: 'CloudFrontOriginAccessIdentityInUse', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CloudFrontOriginAccessIdentityList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CloudFrontOriginAccessIdentityList', name: 'CloudFrontOriginAccessIdentityList')
    CloudFrontOriginAccessIdentitySummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CloudFrontOriginAccessIdentitySummary', name: 'CloudFrontOriginAccessIdentitySummary')
    CloudFrontOriginAccessIdentitySummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#CloudFrontOriginAccessIdentitySummaryList', name: 'CloudFrontOriginAccessIdentitySummaryList')
    CommentType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudfront#CommentType', name: 'CommentType', traits: {"smithy.api#sensitive" => {}})
    ConflictingAlias = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ConflictingAlias', name: 'ConflictingAlias')
    ConflictingAliases = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#ConflictingAliases', name: 'ConflictingAliases')
    ConflictingAliasesList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ConflictingAliasesList', name: 'ConflictingAliasesList')
    ConnectionGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ConnectionGroup', name: 'ConnectionGroup')
    ConnectionGroupAssociationFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ConnectionGroupAssociationFilter', name: 'ConnectionGroupAssociationFilter')
    ConnectionGroupSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ConnectionGroupSummary', name: 'ConnectionGroupSummary')
    ConnectionGroupSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#ConnectionGroupSummaryList', name: 'ConnectionGroupSummaryList')
    ConnectionMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#ConnectionMode', name: 'ConnectionMode')
    ContentTypeProfile = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ContentTypeProfile', name: 'ContentTypeProfile')
    ContentTypeProfileConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ContentTypeProfileConfig', name: 'ContentTypeProfileConfig')
    ContentTypeProfileList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#ContentTypeProfileList', name: 'ContentTypeProfileList')
    ContentTypeProfiles = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ContentTypeProfiles', name: 'ContentTypeProfiles')
    ContinuousDeploymentPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ContinuousDeploymentPolicy', name: 'ContinuousDeploymentPolicy')
    ContinuousDeploymentPolicyAlreadyExists = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ContinuousDeploymentPolicyAlreadyExists', name: 'ContinuousDeploymentPolicyAlreadyExists', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContinuousDeploymentPolicyConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ContinuousDeploymentPolicyConfig', name: 'ContinuousDeploymentPolicyConfig')
    ContinuousDeploymentPolicyInUse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ContinuousDeploymentPolicyInUse', name: 'ContinuousDeploymentPolicyInUse', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContinuousDeploymentPolicyList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ContinuousDeploymentPolicyList', name: 'ContinuousDeploymentPolicyList')
    ContinuousDeploymentPolicySummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ContinuousDeploymentPolicySummary', name: 'ContinuousDeploymentPolicySummary')
    ContinuousDeploymentPolicySummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#ContinuousDeploymentPolicySummaryList', name: 'ContinuousDeploymentPolicySummaryList')
    ContinuousDeploymentPolicyType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#ContinuousDeploymentPolicyType', name: 'ContinuousDeploymentPolicyType')
    ContinuousDeploymentSingleHeaderConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ContinuousDeploymentSingleHeaderConfig', name: 'ContinuousDeploymentSingleHeaderConfig')
    ContinuousDeploymentSingleWeightConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ContinuousDeploymentSingleWeightConfig', name: 'ContinuousDeploymentSingleWeightConfig')
    CookieNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#CookieNameList', name: 'CookieNameList')
    CookieNames = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CookieNames', name: 'CookieNames')
    CookiePreference = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CookiePreference', name: 'CookiePreference')
    CopyDistributionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CopyDistributionRequest', name: 'CopyDistributionRequest')
    CopyDistributionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CopyDistributionResult', name: 'CopyDistributionResult')
    CreateAnycastIpListRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateAnycastIpListRequest', name: 'CreateAnycastIpListRequest')
    CreateAnycastIpListResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateAnycastIpListResult', name: 'CreateAnycastIpListResult')
    CreateCachePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateCachePolicyRequest', name: 'CreateCachePolicyRequest')
    CreateCachePolicyResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateCachePolicyResult', name: 'CreateCachePolicyResult')
    CreateCloudFrontOriginAccessIdentityRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateCloudFrontOriginAccessIdentityRequest', name: 'CreateCloudFrontOriginAccessIdentityRequest')
    CreateCloudFrontOriginAccessIdentityResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateCloudFrontOriginAccessIdentityResult', name: 'CreateCloudFrontOriginAccessIdentityResult')
    CreateConnectionGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateConnectionGroupRequest', name: 'CreateConnectionGroupRequest')
    CreateConnectionGroupResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateConnectionGroupResult', name: 'CreateConnectionGroupResult')
    CreateContinuousDeploymentPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateContinuousDeploymentPolicyRequest', name: 'CreateContinuousDeploymentPolicyRequest')
    CreateContinuousDeploymentPolicyResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateContinuousDeploymentPolicyResult', name: 'CreateContinuousDeploymentPolicyResult')
    CreateDistributionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateDistributionRequest', name: 'CreateDistributionRequest')
    CreateDistributionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateDistributionResult', name: 'CreateDistributionResult')
    CreateDistributionTenantRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateDistributionTenantRequest', name: 'CreateDistributionTenantRequest')
    CreateDistributionTenantResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateDistributionTenantResult', name: 'CreateDistributionTenantResult')
    CreateDistributionWithTagsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateDistributionWithTagsRequest', name: 'CreateDistributionWithTagsRequest')
    CreateDistributionWithTagsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateDistributionWithTagsResult', name: 'CreateDistributionWithTagsResult')
    CreateFieldLevelEncryptionConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateFieldLevelEncryptionConfigRequest', name: 'CreateFieldLevelEncryptionConfigRequest')
    CreateFieldLevelEncryptionConfigResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateFieldLevelEncryptionConfigResult', name: 'CreateFieldLevelEncryptionConfigResult')
    CreateFieldLevelEncryptionProfileRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateFieldLevelEncryptionProfileRequest', name: 'CreateFieldLevelEncryptionProfileRequest')
    CreateFieldLevelEncryptionProfileResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateFieldLevelEncryptionProfileResult', name: 'CreateFieldLevelEncryptionProfileResult')
    CreateFunctionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateFunctionRequest', name: 'CreateFunctionRequest')
    CreateFunctionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateFunctionResult', name: 'CreateFunctionResult')
    CreateInvalidationForDistributionTenantRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateInvalidationForDistributionTenantRequest', name: 'CreateInvalidationForDistributionTenantRequest')
    CreateInvalidationForDistributionTenantResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateInvalidationForDistributionTenantResult', name: 'CreateInvalidationForDistributionTenantResult')
    CreateInvalidationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateInvalidationRequest', name: 'CreateInvalidationRequest')
    CreateInvalidationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateInvalidationResult', name: 'CreateInvalidationResult')
    CreateKeyGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateKeyGroupRequest', name: 'CreateKeyGroupRequest')
    CreateKeyGroupResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateKeyGroupResult', name: 'CreateKeyGroupResult')
    CreateKeyValueStoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateKeyValueStoreRequest', name: 'CreateKeyValueStoreRequest')
    CreateKeyValueStoreResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateKeyValueStoreResult', name: 'CreateKeyValueStoreResult')
    CreateMonitoringSubscriptionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateMonitoringSubscriptionRequest', name: 'CreateMonitoringSubscriptionRequest')
    CreateMonitoringSubscriptionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateMonitoringSubscriptionResult', name: 'CreateMonitoringSubscriptionResult')
    CreateOriginAccessControlRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateOriginAccessControlRequest', name: 'CreateOriginAccessControlRequest')
    CreateOriginAccessControlResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateOriginAccessControlResult', name: 'CreateOriginAccessControlResult')
    CreateOriginRequestPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateOriginRequestPolicyRequest', name: 'CreateOriginRequestPolicyRequest')
    CreateOriginRequestPolicyResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateOriginRequestPolicyResult', name: 'CreateOriginRequestPolicyResult')
    CreatePublicKeyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreatePublicKeyRequest', name: 'CreatePublicKeyRequest')
    CreatePublicKeyResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreatePublicKeyResult', name: 'CreatePublicKeyResult')
    CreateRealtimeLogConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateRealtimeLogConfigRequest', name: 'CreateRealtimeLogConfigRequest')
    CreateRealtimeLogConfigResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateRealtimeLogConfigResult', name: 'CreateRealtimeLogConfigResult')
    CreateResponseHeadersPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateResponseHeadersPolicyRequest', name: 'CreateResponseHeadersPolicyRequest')
    CreateResponseHeadersPolicyResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateResponseHeadersPolicyResult', name: 'CreateResponseHeadersPolicyResult')
    CreateStreamingDistributionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateStreamingDistributionRequest', name: 'CreateStreamingDistributionRequest')
    CreateStreamingDistributionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateStreamingDistributionResult', name: 'CreateStreamingDistributionResult')
    CreateStreamingDistributionWithTagsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateStreamingDistributionWithTagsRequest', name: 'CreateStreamingDistributionWithTagsRequest')
    CreateStreamingDistributionWithTagsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateStreamingDistributionWithTagsResult', name: 'CreateStreamingDistributionWithTagsResult')
    CreateVpcOriginRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateVpcOriginRequest', name: 'CreateVpcOriginRequest')
    CreateVpcOriginResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CreateVpcOriginResult', name: 'CreateVpcOriginResult')
    CustomErrorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CustomErrorResponse', name: 'CustomErrorResponse')
    CustomErrorResponseList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#CustomErrorResponseList', name: 'CustomErrorResponseList')
    CustomErrorResponses = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CustomErrorResponses', name: 'CustomErrorResponses')
    CustomHeaders = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CustomHeaders', name: 'CustomHeaders')
    CustomOriginConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#CustomOriginConfig', name: 'CustomOriginConfig')
    CustomizationActionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#CustomizationActionType', name: 'CustomizationActionType')
    Customizations = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#Customizations', name: 'Customizations')
    DefaultCacheBehavior = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DefaultCacheBehavior', name: 'DefaultCacheBehavior')
    DeleteAnycastIpListRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DeleteAnycastIpListRequest', name: 'DeleteAnycastIpListRequest')
    DeleteCachePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DeleteCachePolicyRequest', name: 'DeleteCachePolicyRequest')
    DeleteCloudFrontOriginAccessIdentityRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DeleteCloudFrontOriginAccessIdentityRequest', name: 'DeleteCloudFrontOriginAccessIdentityRequest')
    DeleteConnectionGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DeleteConnectionGroupRequest', name: 'DeleteConnectionGroupRequest')
    DeleteContinuousDeploymentPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DeleteContinuousDeploymentPolicyRequest', name: 'DeleteContinuousDeploymentPolicyRequest')
    DeleteDistributionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DeleteDistributionRequest', name: 'DeleteDistributionRequest')
    DeleteDistributionTenantRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DeleteDistributionTenantRequest', name: 'DeleteDistributionTenantRequest')
    DeleteFieldLevelEncryptionConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DeleteFieldLevelEncryptionConfigRequest', name: 'DeleteFieldLevelEncryptionConfigRequest')
    DeleteFieldLevelEncryptionProfileRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DeleteFieldLevelEncryptionProfileRequest', name: 'DeleteFieldLevelEncryptionProfileRequest')
    DeleteFunctionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DeleteFunctionRequest', name: 'DeleteFunctionRequest')
    DeleteKeyGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DeleteKeyGroupRequest', name: 'DeleteKeyGroupRequest')
    DeleteKeyValueStoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DeleteKeyValueStoreRequest', name: 'DeleteKeyValueStoreRequest')
    DeleteMonitoringSubscriptionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DeleteMonitoringSubscriptionRequest', name: 'DeleteMonitoringSubscriptionRequest')
    DeleteMonitoringSubscriptionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DeleteMonitoringSubscriptionResult', name: 'DeleteMonitoringSubscriptionResult')
    DeleteOriginAccessControlRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DeleteOriginAccessControlRequest', name: 'DeleteOriginAccessControlRequest')
    DeleteOriginRequestPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DeleteOriginRequestPolicyRequest', name: 'DeleteOriginRequestPolicyRequest')
    DeletePublicKeyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DeletePublicKeyRequest', name: 'DeletePublicKeyRequest')
    DeleteRealtimeLogConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DeleteRealtimeLogConfigRequest', name: 'DeleteRealtimeLogConfigRequest')
    DeleteResponseHeadersPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DeleteResponseHeadersPolicyRequest', name: 'DeleteResponseHeadersPolicyRequest')
    DeleteStreamingDistributionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DeleteStreamingDistributionRequest', name: 'DeleteStreamingDistributionRequest')
    DeleteVpcOriginRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DeleteVpcOriginRequest', name: 'DeleteVpcOriginRequest')
    DeleteVpcOriginResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DeleteVpcOriginResult', name: 'DeleteVpcOriginResult')
    DescribeFunctionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DescribeFunctionRequest', name: 'DescribeFunctionRequest')
    DescribeFunctionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DescribeFunctionResult', name: 'DescribeFunctionResult')
    DescribeKeyValueStoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DescribeKeyValueStoreRequest', name: 'DescribeKeyValueStoreRequest')
    DescribeKeyValueStoreResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DescribeKeyValueStoreResult', name: 'DescribeKeyValueStoreResult')
    DisassociateDistributionTenantWebACLRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DisassociateDistributionTenantWebACLRequest', name: 'DisassociateDistributionTenantWebACLRequest')
    DisassociateDistributionTenantWebACLResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DisassociateDistributionTenantWebACLResult', name: 'DisassociateDistributionTenantWebACLResult')
    DisassociateDistributionWebACLRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DisassociateDistributionWebACLRequest', name: 'DisassociateDistributionWebACLRequest')
    DisassociateDistributionWebACLResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DisassociateDistributionWebACLResult', name: 'DisassociateDistributionWebACLResult')
    Distribution = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#Distribution', name: 'Distribution')
    DistributionAlreadyExists = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DistributionAlreadyExists', name: 'DistributionAlreadyExists', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DistributionConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DistributionConfig', name: 'DistributionConfig')
    DistributionConfigWithTags = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DistributionConfigWithTags', name: 'DistributionConfigWithTags')
    DistributionIdList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DistributionIdList', name: 'DistributionIdList')
    DistributionIdListSummary = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#DistributionIdListSummary', name: 'DistributionIdListSummary')
    DistributionList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DistributionList', name: 'DistributionList')
    DistributionNotDisabled = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DistributionNotDisabled', name: 'DistributionNotDisabled', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DistributionResourceId = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DistributionResourceId', name: 'DistributionResourceId')
    DistributionResourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#DistributionResourceType', name: 'DistributionResourceType')
    DistributionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DistributionSummary', name: 'DistributionSummary')
    DistributionSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#DistributionSummaryList', name: 'DistributionSummaryList')
    DistributionTenant = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DistributionTenant', name: 'DistributionTenant')
    DistributionTenantAssociationFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DistributionTenantAssociationFilter', name: 'DistributionTenantAssociationFilter')
    DistributionTenantList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#DistributionTenantList', name: 'DistributionTenantList')
    DistributionTenantSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DistributionTenantSummary', name: 'DistributionTenantSummary')
    DnsConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DnsConfiguration', name: 'DnsConfiguration')
    DnsConfigurationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#DnsConfigurationList', name: 'DnsConfigurationList')
    DnsConfigurationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#DnsConfigurationStatus', name: 'DnsConfigurationStatus')
    DomainConflict = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DomainConflict', name: 'DomainConflict')
    DomainConflictsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#DomainConflictsList', name: 'DomainConflictsList')
    DomainItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DomainItem', name: 'DomainItem')
    DomainList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#DomainList', name: 'DomainList')
    DomainResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#DomainResult', name: 'DomainResult')
    DomainResultList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#DomainResultList', name: 'DomainResultList')
    DomainStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#DomainStatus', name: 'DomainStatus')
    EncryptionEntities = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#EncryptionEntities', name: 'EncryptionEntities')
    EncryptionEntity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#EncryptionEntity', name: 'EncryptionEntity')
    EncryptionEntityList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#EncryptionEntityList', name: 'EncryptionEntityList')
    EndPoint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#EndPoint', name: 'EndPoint')
    EndPointList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#EndPointList', name: 'EndPointList')
    EntityAlreadyExists = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#EntityAlreadyExists', name: 'EntityAlreadyExists', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    EntityLimitExceeded = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#EntityLimitExceeded', name: 'EntityLimitExceeded', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EntityNotFound = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#EntityNotFound', name: 'EntityNotFound', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    EntitySizeLimitExceeded = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#EntitySizeLimitExceeded', name: 'EntitySizeLimitExceeded', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 413})
    EventType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#EventType', name: 'EventType')
    FieldLevelEncryption = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#FieldLevelEncryption', name: 'FieldLevelEncryption')
    FieldLevelEncryptionConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#FieldLevelEncryptionConfig', name: 'FieldLevelEncryptionConfig')
    FieldLevelEncryptionConfigAlreadyExists = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#FieldLevelEncryptionConfigAlreadyExists', name: 'FieldLevelEncryptionConfigAlreadyExists', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    FieldLevelEncryptionConfigInUse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#FieldLevelEncryptionConfigInUse', name: 'FieldLevelEncryptionConfigInUse', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    FieldLevelEncryptionList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#FieldLevelEncryptionList', name: 'FieldLevelEncryptionList')
    FieldLevelEncryptionProfile = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#FieldLevelEncryptionProfile', name: 'FieldLevelEncryptionProfile')
    FieldLevelEncryptionProfileAlreadyExists = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#FieldLevelEncryptionProfileAlreadyExists', name: 'FieldLevelEncryptionProfileAlreadyExists', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    FieldLevelEncryptionProfileConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#FieldLevelEncryptionProfileConfig', name: 'FieldLevelEncryptionProfileConfig')
    FieldLevelEncryptionProfileInUse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#FieldLevelEncryptionProfileInUse', name: 'FieldLevelEncryptionProfileInUse', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    FieldLevelEncryptionProfileList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#FieldLevelEncryptionProfileList', name: 'FieldLevelEncryptionProfileList')
    FieldLevelEncryptionProfileSizeExceeded = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#FieldLevelEncryptionProfileSizeExceeded', name: 'FieldLevelEncryptionProfileSizeExceeded', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    FieldLevelEncryptionProfileSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#FieldLevelEncryptionProfileSummary', name: 'FieldLevelEncryptionProfileSummary')
    FieldLevelEncryptionProfileSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#FieldLevelEncryptionProfileSummaryList', name: 'FieldLevelEncryptionProfileSummaryList')
    FieldLevelEncryptionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#FieldLevelEncryptionSummary', name: 'FieldLevelEncryptionSummary')
    FieldLevelEncryptionSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#FieldLevelEncryptionSummaryList', name: 'FieldLevelEncryptionSummaryList')
    FieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#FieldList', name: 'FieldList')
    FieldPatternList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#FieldPatternList', name: 'FieldPatternList')
    FieldPatterns = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#FieldPatterns', name: 'FieldPatterns')
    Format = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#Format', name: 'Format')
    ForwardedValues = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ForwardedValues', name: 'ForwardedValues')
    FrameOptionsList = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#FrameOptionsList', name: 'FrameOptionsList')
    FunctionARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudfront#FunctionARN', name: 'FunctionARN', traits: {"smithy.api#length" => {"min" => 0, "max" => 108}, "smithy.api#pattern" => "^arn:aws:cloudfront::[0-9]{12}:function\\/[a-zA-Z0-9-_]{1,64}$"})
    FunctionAlreadyExists = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#FunctionAlreadyExists', name: 'FunctionAlreadyExists', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    FunctionAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#FunctionAssociation', name: 'FunctionAssociation')
    FunctionAssociationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#FunctionAssociationList', name: 'FunctionAssociationList')
    FunctionAssociations = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#FunctionAssociations', name: 'FunctionAssociations')
    FunctionBlob = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.cloudfront#FunctionBlob', name: 'FunctionBlob', traits: {"smithy.api#length" => {"min" => 1, "max" => 40960}, "smithy.api#sensitive" => {}})
    FunctionConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#FunctionConfig', name: 'FunctionConfig')
    FunctionEventObject = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.cloudfront#FunctionEventObject', name: 'FunctionEventObject', traits: {"smithy.api#length" => {"min" => 0, "max" => 40960}, "smithy.api#sensitive" => {}})
    FunctionExecutionLogList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#FunctionExecutionLogList', name: 'FunctionExecutionLogList', traits: {"smithy.api#sensitive" => {}})
    FunctionInUse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#FunctionInUse', name: 'FunctionInUse', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    FunctionList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#FunctionList', name: 'FunctionList')
    FunctionMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#FunctionMetadata', name: 'FunctionMetadata')
    FunctionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudfront#FunctionName', name: 'FunctionName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]{1,64}$"})
    FunctionRuntime = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#FunctionRuntime', name: 'FunctionRuntime')
    FunctionSizeLimitExceeded = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#FunctionSizeLimitExceeded', name: 'FunctionSizeLimitExceeded', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 413})
    FunctionStage = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#FunctionStage', name: 'FunctionStage')
    FunctionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#FunctionSummary', name: 'FunctionSummary')
    FunctionSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#FunctionSummaryList', name: 'FunctionSummaryList')
    GeoRestriction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GeoRestriction', name: 'GeoRestriction')
    GeoRestrictionCustomization = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GeoRestrictionCustomization', name: 'GeoRestrictionCustomization')
    GeoRestrictionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#GeoRestrictionType', name: 'GeoRestrictionType')
    GetAnycastIpListRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetAnycastIpListRequest', name: 'GetAnycastIpListRequest')
    GetAnycastIpListResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetAnycastIpListResult', name: 'GetAnycastIpListResult')
    GetCachePolicyConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetCachePolicyConfigRequest', name: 'GetCachePolicyConfigRequest')
    GetCachePolicyConfigResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetCachePolicyConfigResult', name: 'GetCachePolicyConfigResult')
    GetCachePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetCachePolicyRequest', name: 'GetCachePolicyRequest')
    GetCachePolicyResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetCachePolicyResult', name: 'GetCachePolicyResult')
    GetCloudFrontOriginAccessIdentityConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetCloudFrontOriginAccessIdentityConfigRequest', name: 'GetCloudFrontOriginAccessIdentityConfigRequest')
    GetCloudFrontOriginAccessIdentityConfigResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetCloudFrontOriginAccessIdentityConfigResult', name: 'GetCloudFrontOriginAccessIdentityConfigResult')
    GetCloudFrontOriginAccessIdentityRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetCloudFrontOriginAccessIdentityRequest', name: 'GetCloudFrontOriginAccessIdentityRequest')
    GetCloudFrontOriginAccessIdentityResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetCloudFrontOriginAccessIdentityResult', name: 'GetCloudFrontOriginAccessIdentityResult')
    GetConnectionGroupByRoutingEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetConnectionGroupByRoutingEndpointRequest', name: 'GetConnectionGroupByRoutingEndpointRequest')
    GetConnectionGroupByRoutingEndpointResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetConnectionGroupByRoutingEndpointResult', name: 'GetConnectionGroupByRoutingEndpointResult')
    GetConnectionGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetConnectionGroupRequest', name: 'GetConnectionGroupRequest')
    GetConnectionGroupResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetConnectionGroupResult', name: 'GetConnectionGroupResult')
    GetContinuousDeploymentPolicyConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetContinuousDeploymentPolicyConfigRequest', name: 'GetContinuousDeploymentPolicyConfigRequest')
    GetContinuousDeploymentPolicyConfigResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetContinuousDeploymentPolicyConfigResult', name: 'GetContinuousDeploymentPolicyConfigResult')
    GetContinuousDeploymentPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetContinuousDeploymentPolicyRequest', name: 'GetContinuousDeploymentPolicyRequest')
    GetContinuousDeploymentPolicyResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetContinuousDeploymentPolicyResult', name: 'GetContinuousDeploymentPolicyResult')
    GetDistributionConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetDistributionConfigRequest', name: 'GetDistributionConfigRequest')
    GetDistributionConfigResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetDistributionConfigResult', name: 'GetDistributionConfigResult')
    GetDistributionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetDistributionRequest', name: 'GetDistributionRequest')
    GetDistributionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetDistributionResult', name: 'GetDistributionResult')
    GetDistributionTenantByDomainRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetDistributionTenantByDomainRequest', name: 'GetDistributionTenantByDomainRequest')
    GetDistributionTenantByDomainResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetDistributionTenantByDomainResult', name: 'GetDistributionTenantByDomainResult')
    GetDistributionTenantRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetDistributionTenantRequest', name: 'GetDistributionTenantRequest')
    GetDistributionTenantResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetDistributionTenantResult', name: 'GetDistributionTenantResult')
    GetFieldLevelEncryptionConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetFieldLevelEncryptionConfigRequest', name: 'GetFieldLevelEncryptionConfigRequest')
    GetFieldLevelEncryptionConfigResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetFieldLevelEncryptionConfigResult', name: 'GetFieldLevelEncryptionConfigResult')
    GetFieldLevelEncryptionProfileConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetFieldLevelEncryptionProfileConfigRequest', name: 'GetFieldLevelEncryptionProfileConfigRequest')
    GetFieldLevelEncryptionProfileConfigResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetFieldLevelEncryptionProfileConfigResult', name: 'GetFieldLevelEncryptionProfileConfigResult')
    GetFieldLevelEncryptionProfileRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetFieldLevelEncryptionProfileRequest', name: 'GetFieldLevelEncryptionProfileRequest')
    GetFieldLevelEncryptionProfileResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetFieldLevelEncryptionProfileResult', name: 'GetFieldLevelEncryptionProfileResult')
    GetFieldLevelEncryptionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetFieldLevelEncryptionRequest', name: 'GetFieldLevelEncryptionRequest')
    GetFieldLevelEncryptionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetFieldLevelEncryptionResult', name: 'GetFieldLevelEncryptionResult')
    GetFunctionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetFunctionRequest', name: 'GetFunctionRequest')
    GetFunctionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetFunctionResult', name: 'GetFunctionResult')
    GetInvalidationForDistributionTenantRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetInvalidationForDistributionTenantRequest', name: 'GetInvalidationForDistributionTenantRequest')
    GetInvalidationForDistributionTenantResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetInvalidationForDistributionTenantResult', name: 'GetInvalidationForDistributionTenantResult')
    GetInvalidationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetInvalidationRequest', name: 'GetInvalidationRequest')
    GetInvalidationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetInvalidationResult', name: 'GetInvalidationResult')
    GetKeyGroupConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetKeyGroupConfigRequest', name: 'GetKeyGroupConfigRequest')
    GetKeyGroupConfigResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetKeyGroupConfigResult', name: 'GetKeyGroupConfigResult')
    GetKeyGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetKeyGroupRequest', name: 'GetKeyGroupRequest')
    GetKeyGroupResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetKeyGroupResult', name: 'GetKeyGroupResult')
    GetManagedCertificateDetailsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetManagedCertificateDetailsRequest', name: 'GetManagedCertificateDetailsRequest')
    GetManagedCertificateDetailsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetManagedCertificateDetailsResult', name: 'GetManagedCertificateDetailsResult')
    GetMonitoringSubscriptionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetMonitoringSubscriptionRequest', name: 'GetMonitoringSubscriptionRequest')
    GetMonitoringSubscriptionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetMonitoringSubscriptionResult', name: 'GetMonitoringSubscriptionResult')
    GetOriginAccessControlConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetOriginAccessControlConfigRequest', name: 'GetOriginAccessControlConfigRequest')
    GetOriginAccessControlConfigResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetOriginAccessControlConfigResult', name: 'GetOriginAccessControlConfigResult')
    GetOriginAccessControlRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetOriginAccessControlRequest', name: 'GetOriginAccessControlRequest')
    GetOriginAccessControlResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetOriginAccessControlResult', name: 'GetOriginAccessControlResult')
    GetOriginRequestPolicyConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetOriginRequestPolicyConfigRequest', name: 'GetOriginRequestPolicyConfigRequest')
    GetOriginRequestPolicyConfigResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetOriginRequestPolicyConfigResult', name: 'GetOriginRequestPolicyConfigResult')
    GetOriginRequestPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetOriginRequestPolicyRequest', name: 'GetOriginRequestPolicyRequest')
    GetOriginRequestPolicyResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetOriginRequestPolicyResult', name: 'GetOriginRequestPolicyResult')
    GetPublicKeyConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetPublicKeyConfigRequest', name: 'GetPublicKeyConfigRequest')
    GetPublicKeyConfigResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetPublicKeyConfigResult', name: 'GetPublicKeyConfigResult')
    GetPublicKeyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetPublicKeyRequest', name: 'GetPublicKeyRequest')
    GetPublicKeyResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetPublicKeyResult', name: 'GetPublicKeyResult')
    GetRealtimeLogConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetRealtimeLogConfigRequest', name: 'GetRealtimeLogConfigRequest')
    GetRealtimeLogConfigResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetRealtimeLogConfigResult', name: 'GetRealtimeLogConfigResult')
    GetResponseHeadersPolicyConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetResponseHeadersPolicyConfigRequest', name: 'GetResponseHeadersPolicyConfigRequest')
    GetResponseHeadersPolicyConfigResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetResponseHeadersPolicyConfigResult', name: 'GetResponseHeadersPolicyConfigResult')
    GetResponseHeadersPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetResponseHeadersPolicyRequest', name: 'GetResponseHeadersPolicyRequest')
    GetResponseHeadersPolicyResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetResponseHeadersPolicyResult', name: 'GetResponseHeadersPolicyResult')
    GetStreamingDistributionConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetStreamingDistributionConfigRequest', name: 'GetStreamingDistributionConfigRequest')
    GetStreamingDistributionConfigResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetStreamingDistributionConfigResult', name: 'GetStreamingDistributionConfigResult')
    GetStreamingDistributionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetStreamingDistributionRequest', name: 'GetStreamingDistributionRequest')
    GetStreamingDistributionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetStreamingDistributionResult', name: 'GetStreamingDistributionResult')
    GetVpcOriginRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetVpcOriginRequest', name: 'GetVpcOriginRequest')
    GetVpcOriginResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GetVpcOriginResult', name: 'GetVpcOriginResult')
    GrpcConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#GrpcConfig', name: 'GrpcConfig')
    HeaderList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#HeaderList', name: 'HeaderList')
    Headers = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#Headers', name: 'Headers')
    HttpVersion = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#HttpVersion', name: 'HttpVersion')
    ICPRecordalStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#ICPRecordalStatus', name: 'ICPRecordalStatus')
    IllegalDelete = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#IllegalDelete', name: 'IllegalDelete', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior', name: 'IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IllegalOriginAccessConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#IllegalOriginAccessConfiguration', name: 'IllegalOriginAccessConfiguration', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IllegalUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#IllegalUpdate', name: 'IllegalUpdate', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ImportSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ImportSource', name: 'ImportSource')
    ImportSourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#ImportSourceType', name: 'ImportSourceType')
    InconsistentQuantities = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#InconsistentQuantities', name: 'InconsistentQuantities', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidArgument = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#InvalidArgument', name: 'InvalidArgument', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#InvalidAssociation', name: 'InvalidAssociation', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    InvalidDefaultRootObject = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#InvalidDefaultRootObject', name: 'InvalidDefaultRootObject', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDomainNameForOriginAccessControl = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#InvalidDomainNameForOriginAccessControl', name: 'InvalidDomainNameForOriginAccessControl', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidErrorCode = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#InvalidErrorCode', name: 'InvalidErrorCode', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidForwardCookies = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#InvalidForwardCookies', name: 'InvalidForwardCookies', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidFunctionAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#InvalidFunctionAssociation', name: 'InvalidFunctionAssociation', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidGeoRestrictionParameter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#InvalidGeoRestrictionParameter', name: 'InvalidGeoRestrictionParameter', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidHeadersForS3Origin = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#InvalidHeadersForS3Origin', name: 'InvalidHeadersForS3Origin', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidIfMatchVersion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#InvalidIfMatchVersion', name: 'InvalidIfMatchVersion', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidLambdaFunctionAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#InvalidLambdaFunctionAssociation', name: 'InvalidLambdaFunctionAssociation', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidLocationCode = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#InvalidLocationCode', name: 'InvalidLocationCode', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidMinimumProtocolVersion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#InvalidMinimumProtocolVersion', name: 'InvalidMinimumProtocolVersion', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidOrigin = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#InvalidOrigin', name: 'InvalidOrigin', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidOriginAccessControl = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#InvalidOriginAccessControl', name: 'InvalidOriginAccessControl', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidOriginAccessIdentity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#InvalidOriginAccessIdentity', name: 'InvalidOriginAccessIdentity', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidOriginKeepaliveTimeout = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#InvalidOriginKeepaliveTimeout', name: 'InvalidOriginKeepaliveTimeout', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidOriginReadTimeout = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#InvalidOriginReadTimeout', name: 'InvalidOriginReadTimeout', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidProtocolSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#InvalidProtocolSettings', name: 'InvalidProtocolSettings', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidQueryStringParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#InvalidQueryStringParameters', name: 'InvalidQueryStringParameters', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRelativePath = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#InvalidRelativePath', name: 'InvalidRelativePath', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRequiredProtocol = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#InvalidRequiredProtocol', name: 'InvalidRequiredProtocol', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidResponseCode = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#InvalidResponseCode', name: 'InvalidResponseCode', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidTTLOrder = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#InvalidTTLOrder', name: 'InvalidTTLOrder', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidTagging = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#InvalidTagging', name: 'InvalidTagging', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidViewerCertificate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#InvalidViewerCertificate', name: 'InvalidViewerCertificate', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidWebACLId = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#InvalidWebACLId', name: 'InvalidWebACLId', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Invalidation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#Invalidation', name: 'Invalidation')
    InvalidationBatch = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#InvalidationBatch', name: 'InvalidationBatch')
    InvalidationList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#InvalidationList', name: 'InvalidationList')
    InvalidationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#InvalidationSummary', name: 'InvalidationSummary')
    InvalidationSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#InvalidationSummaryList', name: 'InvalidationSummaryList')
    ItemSelection = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#ItemSelection', name: 'ItemSelection')
    KGKeyPairIds = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#KGKeyPairIds', name: 'KGKeyPairIds')
    KGKeyPairIdsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#KGKeyPairIdsList', name: 'KGKeyPairIdsList')
    KeyGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#KeyGroup', name: 'KeyGroup')
    KeyGroupAlreadyExists = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#KeyGroupAlreadyExists', name: 'KeyGroupAlreadyExists', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    KeyGroupConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#KeyGroupConfig', name: 'KeyGroupConfig')
    KeyGroupList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#KeyGroupList', name: 'KeyGroupList')
    KeyGroupSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#KeyGroupSummary', name: 'KeyGroupSummary')
    KeyGroupSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#KeyGroupSummaryList', name: 'KeyGroupSummaryList')
    KeyPairIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#KeyPairIdList', name: 'KeyPairIdList')
    KeyPairIds = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#KeyPairIds', name: 'KeyPairIds')
    KeyValueStore = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#KeyValueStore', name: 'KeyValueStore')
    KeyValueStoreARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudfront#KeyValueStoreARN', name: 'KeyValueStoreARN', traits: {"smithy.api#length" => {"min" => 0, "max" => 85}, "smithy.api#pattern" => "^arn:aws:cloudfront::[0-9]{12}:key-value-store\\/[0-9a-fA-F-]{36}$"})
    KeyValueStoreAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#KeyValueStoreAssociation', name: 'KeyValueStoreAssociation')
    KeyValueStoreAssociationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#KeyValueStoreAssociationList', name: 'KeyValueStoreAssociationList')
    KeyValueStoreAssociations = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#KeyValueStoreAssociations', name: 'KeyValueStoreAssociations')
    KeyValueStoreComment = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudfront#KeyValueStoreComment', name: 'KeyValueStoreComment', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    KeyValueStoreList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#KeyValueStoreList', name: 'KeyValueStoreList')
    KeyValueStoreName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudfront#KeyValueStoreName', name: 'KeyValueStoreName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]{1,64}$"})
    KeyValueStoreSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#KeyValueStoreSummaryList', name: 'KeyValueStoreSummaryList')
    KinesisStreamConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#KinesisStreamConfig', name: 'KinesisStreamConfig')
    LambdaFunctionARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudfront#LambdaFunctionARN', name: 'LambdaFunctionARN')
    LambdaFunctionAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#LambdaFunctionAssociation', name: 'LambdaFunctionAssociation')
    LambdaFunctionAssociationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#LambdaFunctionAssociationList', name: 'LambdaFunctionAssociationList')
    LambdaFunctionAssociations = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#LambdaFunctionAssociations', name: 'LambdaFunctionAssociations')
    ListAnycastIpListsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListAnycastIpListsRequest', name: 'ListAnycastIpListsRequest')
    ListAnycastIpListsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListAnycastIpListsResult', name: 'ListAnycastIpListsResult')
    ListCachePoliciesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListCachePoliciesRequest', name: 'ListCachePoliciesRequest')
    ListCachePoliciesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListCachePoliciesResult', name: 'ListCachePoliciesResult')
    ListCloudFrontOriginAccessIdentitiesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListCloudFrontOriginAccessIdentitiesRequest', name: 'ListCloudFrontOriginAccessIdentitiesRequest')
    ListCloudFrontOriginAccessIdentitiesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListCloudFrontOriginAccessIdentitiesResult', name: 'ListCloudFrontOriginAccessIdentitiesResult')
    ListConflictingAliasesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListConflictingAliasesRequest', name: 'ListConflictingAliasesRequest')
    ListConflictingAliasesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListConflictingAliasesResult', name: 'ListConflictingAliasesResult')
    ListConnectionGroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListConnectionGroupsRequest', name: 'ListConnectionGroupsRequest')
    ListConnectionGroupsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListConnectionGroupsResult', name: 'ListConnectionGroupsResult')
    ListContinuousDeploymentPoliciesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListContinuousDeploymentPoliciesRequest', name: 'ListContinuousDeploymentPoliciesRequest')
    ListContinuousDeploymentPoliciesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListContinuousDeploymentPoliciesResult', name: 'ListContinuousDeploymentPoliciesResult')
    ListDistributionTenantsByCustomizationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListDistributionTenantsByCustomizationRequest', name: 'ListDistributionTenantsByCustomizationRequest')
    ListDistributionTenantsByCustomizationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListDistributionTenantsByCustomizationResult', name: 'ListDistributionTenantsByCustomizationResult')
    ListDistributionTenantsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListDistributionTenantsRequest', name: 'ListDistributionTenantsRequest')
    ListDistributionTenantsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListDistributionTenantsResult', name: 'ListDistributionTenantsResult')
    ListDistributionsByAnycastIpListIdRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListDistributionsByAnycastIpListIdRequest', name: 'ListDistributionsByAnycastIpListIdRequest')
    ListDistributionsByAnycastIpListIdResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListDistributionsByAnycastIpListIdResult', name: 'ListDistributionsByAnycastIpListIdResult')
    ListDistributionsByCachePolicyIdRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListDistributionsByCachePolicyIdRequest', name: 'ListDistributionsByCachePolicyIdRequest')
    ListDistributionsByCachePolicyIdResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListDistributionsByCachePolicyIdResult', name: 'ListDistributionsByCachePolicyIdResult')
    ListDistributionsByConnectionModeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListDistributionsByConnectionModeRequest', name: 'ListDistributionsByConnectionModeRequest')
    ListDistributionsByConnectionModeResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListDistributionsByConnectionModeResult', name: 'ListDistributionsByConnectionModeResult')
    ListDistributionsByKeyGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListDistributionsByKeyGroupRequest', name: 'ListDistributionsByKeyGroupRequest')
    ListDistributionsByKeyGroupResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListDistributionsByKeyGroupResult', name: 'ListDistributionsByKeyGroupResult')
    ListDistributionsByOriginRequestPolicyIdRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListDistributionsByOriginRequestPolicyIdRequest', name: 'ListDistributionsByOriginRequestPolicyIdRequest')
    ListDistributionsByOriginRequestPolicyIdResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListDistributionsByOriginRequestPolicyIdResult', name: 'ListDistributionsByOriginRequestPolicyIdResult')
    ListDistributionsByRealtimeLogConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListDistributionsByRealtimeLogConfigRequest', name: 'ListDistributionsByRealtimeLogConfigRequest')
    ListDistributionsByRealtimeLogConfigResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListDistributionsByRealtimeLogConfigResult', name: 'ListDistributionsByRealtimeLogConfigResult')
    ListDistributionsByResponseHeadersPolicyIdRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListDistributionsByResponseHeadersPolicyIdRequest', name: 'ListDistributionsByResponseHeadersPolicyIdRequest')
    ListDistributionsByResponseHeadersPolicyIdResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListDistributionsByResponseHeadersPolicyIdResult', name: 'ListDistributionsByResponseHeadersPolicyIdResult')
    ListDistributionsByVpcOriginIdRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListDistributionsByVpcOriginIdRequest', name: 'ListDistributionsByVpcOriginIdRequest')
    ListDistributionsByVpcOriginIdResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListDistributionsByVpcOriginIdResult', name: 'ListDistributionsByVpcOriginIdResult')
    ListDistributionsByWebACLIdRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListDistributionsByWebACLIdRequest', name: 'ListDistributionsByWebACLIdRequest')
    ListDistributionsByWebACLIdResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListDistributionsByWebACLIdResult', name: 'ListDistributionsByWebACLIdResult')
    ListDistributionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListDistributionsRequest', name: 'ListDistributionsRequest')
    ListDistributionsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListDistributionsResult', name: 'ListDistributionsResult')
    ListDomainConflictsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListDomainConflictsRequest', name: 'ListDomainConflictsRequest')
    ListDomainConflictsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListDomainConflictsResult', name: 'ListDomainConflictsResult')
    ListFieldLevelEncryptionConfigsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListFieldLevelEncryptionConfigsRequest', name: 'ListFieldLevelEncryptionConfigsRequest')
    ListFieldLevelEncryptionConfigsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListFieldLevelEncryptionConfigsResult', name: 'ListFieldLevelEncryptionConfigsResult')
    ListFieldLevelEncryptionProfilesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListFieldLevelEncryptionProfilesRequest', name: 'ListFieldLevelEncryptionProfilesRequest')
    ListFieldLevelEncryptionProfilesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListFieldLevelEncryptionProfilesResult', name: 'ListFieldLevelEncryptionProfilesResult')
    ListFunctionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListFunctionsRequest', name: 'ListFunctionsRequest')
    ListFunctionsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListFunctionsResult', name: 'ListFunctionsResult')
    ListInvalidationsForDistributionTenantRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListInvalidationsForDistributionTenantRequest', name: 'ListInvalidationsForDistributionTenantRequest')
    ListInvalidationsForDistributionTenantResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListInvalidationsForDistributionTenantResult', name: 'ListInvalidationsForDistributionTenantResult')
    ListInvalidationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListInvalidationsRequest', name: 'ListInvalidationsRequest')
    ListInvalidationsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListInvalidationsResult', name: 'ListInvalidationsResult')
    ListKeyGroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListKeyGroupsRequest', name: 'ListKeyGroupsRequest')
    ListKeyGroupsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListKeyGroupsResult', name: 'ListKeyGroupsResult')
    ListKeyValueStoresRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListKeyValueStoresRequest', name: 'ListKeyValueStoresRequest')
    ListKeyValueStoresResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListKeyValueStoresResult', name: 'ListKeyValueStoresResult')
    ListOriginAccessControlsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListOriginAccessControlsRequest', name: 'ListOriginAccessControlsRequest')
    ListOriginAccessControlsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListOriginAccessControlsResult', name: 'ListOriginAccessControlsResult')
    ListOriginRequestPoliciesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListOriginRequestPoliciesRequest', name: 'ListOriginRequestPoliciesRequest')
    ListOriginRequestPoliciesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListOriginRequestPoliciesResult', name: 'ListOriginRequestPoliciesResult')
    ListPublicKeysRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListPublicKeysRequest', name: 'ListPublicKeysRequest')
    ListPublicKeysResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListPublicKeysResult', name: 'ListPublicKeysResult')
    ListRealtimeLogConfigsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListRealtimeLogConfigsRequest', name: 'ListRealtimeLogConfigsRequest')
    ListRealtimeLogConfigsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListRealtimeLogConfigsResult', name: 'ListRealtimeLogConfigsResult')
    ListResponseHeadersPoliciesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListResponseHeadersPoliciesRequest', name: 'ListResponseHeadersPoliciesRequest')
    ListResponseHeadersPoliciesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListResponseHeadersPoliciesResult', name: 'ListResponseHeadersPoliciesResult')
    ListStreamingDistributionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListStreamingDistributionsRequest', name: 'ListStreamingDistributionsRequest')
    ListStreamingDistributionsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListStreamingDistributionsResult', name: 'ListStreamingDistributionsResult')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListTagsForResourceResult', name: 'ListTagsForResourceResult')
    ListVpcOriginsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListVpcOriginsRequest', name: 'ListVpcOriginsRequest')
    ListVpcOriginsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ListVpcOriginsResult', name: 'ListVpcOriginsResult')
    LocationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#LocationList', name: 'LocationList')
    LoggingConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#LoggingConfig', name: 'LoggingConfig')
    ManagedCertificateDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ManagedCertificateDetails', name: 'ManagedCertificateDetails')
    ManagedCertificateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ManagedCertificateRequest', name: 'ManagedCertificateRequest')
    ManagedCertificateStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#ManagedCertificateStatus', name: 'ManagedCertificateStatus')
    Method = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#Method', name: 'Method')
    MethodsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#MethodsList', name: 'MethodsList')
    MinimumProtocolVersion = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#MinimumProtocolVersion', name: 'MinimumProtocolVersion')
    MissingBody = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#MissingBody', name: 'MissingBody', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MonitoringSubscription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#MonitoringSubscription', name: 'MonitoringSubscription')
    MonitoringSubscriptionAlreadyExists = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#MonitoringSubscriptionAlreadyExists', name: 'MonitoringSubscriptionAlreadyExists', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    NoSuchCachePolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#NoSuchCachePolicy', name: 'NoSuchCachePolicy', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchCloudFrontOriginAccessIdentity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#NoSuchCloudFrontOriginAccessIdentity', name: 'NoSuchCloudFrontOriginAccessIdentity', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchContinuousDeploymentPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#NoSuchContinuousDeploymentPolicy', name: 'NoSuchContinuousDeploymentPolicy', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchDistribution = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#NoSuchDistribution', name: 'NoSuchDistribution', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchFieldLevelEncryptionConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#NoSuchFieldLevelEncryptionConfig', name: 'NoSuchFieldLevelEncryptionConfig', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchFieldLevelEncryptionProfile = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#NoSuchFieldLevelEncryptionProfile', name: 'NoSuchFieldLevelEncryptionProfile', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchFunctionExists = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#NoSuchFunctionExists', name: 'NoSuchFunctionExists', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchInvalidation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#NoSuchInvalidation', name: 'NoSuchInvalidation', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchMonitoringSubscription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#NoSuchMonitoringSubscription', name: 'NoSuchMonitoringSubscription', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchOrigin = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#NoSuchOrigin', name: 'NoSuchOrigin', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchOriginAccessControl = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#NoSuchOriginAccessControl', name: 'NoSuchOriginAccessControl', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchOriginRequestPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#NoSuchOriginRequestPolicy', name: 'NoSuchOriginRequestPolicy', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchPublicKey = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#NoSuchPublicKey', name: 'NoSuchPublicKey', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchRealtimeLogConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#NoSuchRealtimeLogConfig', name: 'NoSuchRealtimeLogConfig', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#NoSuchResource', name: 'NoSuchResource', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchResponseHeadersPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#NoSuchResponseHeadersPolicy', name: 'NoSuchResponseHeadersPolicy', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchStreamingDistribution = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#NoSuchStreamingDistribution', name: 'NoSuchStreamingDistribution', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Origin = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#Origin', name: 'Origin')
    OriginAccessControl = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#OriginAccessControl', name: 'OriginAccessControl')
    OriginAccessControlAlreadyExists = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#OriginAccessControlAlreadyExists', name: 'OriginAccessControlAlreadyExists', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    OriginAccessControlConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#OriginAccessControlConfig', name: 'OriginAccessControlConfig')
    OriginAccessControlInUse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#OriginAccessControlInUse', name: 'OriginAccessControlInUse', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    OriginAccessControlList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#OriginAccessControlList', name: 'OriginAccessControlList')
    OriginAccessControlOriginTypes = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#OriginAccessControlOriginTypes', name: 'OriginAccessControlOriginTypes')
    OriginAccessControlSigningBehaviors = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#OriginAccessControlSigningBehaviors', name: 'OriginAccessControlSigningBehaviors')
    OriginAccessControlSigningProtocols = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#OriginAccessControlSigningProtocols', name: 'OriginAccessControlSigningProtocols')
    OriginAccessControlSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#OriginAccessControlSummary', name: 'OriginAccessControlSummary')
    OriginAccessControlSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#OriginAccessControlSummaryList', name: 'OriginAccessControlSummaryList')
    OriginCustomHeader = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#OriginCustomHeader', name: 'OriginCustomHeader')
    OriginCustomHeadersList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#OriginCustomHeadersList', name: 'OriginCustomHeadersList')
    OriginGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#OriginGroup', name: 'OriginGroup')
    OriginGroupFailoverCriteria = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#OriginGroupFailoverCriteria', name: 'OriginGroupFailoverCriteria')
    OriginGroupList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#OriginGroupList', name: 'OriginGroupList')
    OriginGroupMember = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#OriginGroupMember', name: 'OriginGroupMember')
    OriginGroupMemberList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#OriginGroupMemberList', name: 'OriginGroupMemberList', traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    OriginGroupMembers = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#OriginGroupMembers', name: 'OriginGroupMembers')
    OriginGroupSelectionCriteria = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#OriginGroupSelectionCriteria', name: 'OriginGroupSelectionCriteria')
    OriginGroups = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#OriginGroups', name: 'OriginGroups')
    OriginList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#OriginList', name: 'OriginList', traits: {"smithy.api#length" => {"min" => 1}})
    OriginProtocolPolicy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#OriginProtocolPolicy', name: 'OriginProtocolPolicy')
    OriginRequestPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#OriginRequestPolicy', name: 'OriginRequestPolicy')
    OriginRequestPolicyAlreadyExists = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#OriginRequestPolicyAlreadyExists', name: 'OriginRequestPolicyAlreadyExists', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    OriginRequestPolicyConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#OriginRequestPolicyConfig', name: 'OriginRequestPolicyConfig')
    OriginRequestPolicyCookieBehavior = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#OriginRequestPolicyCookieBehavior', name: 'OriginRequestPolicyCookieBehavior')
    OriginRequestPolicyCookiesConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#OriginRequestPolicyCookiesConfig', name: 'OriginRequestPolicyCookiesConfig')
    OriginRequestPolicyHeaderBehavior = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#OriginRequestPolicyHeaderBehavior', name: 'OriginRequestPolicyHeaderBehavior')
    OriginRequestPolicyHeadersConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#OriginRequestPolicyHeadersConfig', name: 'OriginRequestPolicyHeadersConfig')
    OriginRequestPolicyInUse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#OriginRequestPolicyInUse', name: 'OriginRequestPolicyInUse', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    OriginRequestPolicyList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#OriginRequestPolicyList', name: 'OriginRequestPolicyList')
    OriginRequestPolicyQueryStringBehavior = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#OriginRequestPolicyQueryStringBehavior', name: 'OriginRequestPolicyQueryStringBehavior')
    OriginRequestPolicyQueryStringsConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#OriginRequestPolicyQueryStringsConfig', name: 'OriginRequestPolicyQueryStringsConfig')
    OriginRequestPolicySummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#OriginRequestPolicySummary', name: 'OriginRequestPolicySummary')
    OriginRequestPolicySummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#OriginRequestPolicySummaryList', name: 'OriginRequestPolicySummaryList')
    OriginRequestPolicyType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#OriginRequestPolicyType', name: 'OriginRequestPolicyType')
    OriginShield = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#OriginShield', name: 'OriginShield')
    OriginShieldRegion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudfront#OriginShieldRegion', name: 'OriginShieldRegion', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[a-z]{2}-[a-z]+-\\d$"})
    OriginSslProtocols = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#OriginSslProtocols', name: 'OriginSslProtocols')
    Origins = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#Origins', name: 'Origins')
    Parameter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#Parameter', name: 'Parameter')
    ParameterDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ParameterDefinition', name: 'ParameterDefinition')
    ParameterDefinitionSchema = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ParameterDefinitionSchema', name: 'ParameterDefinitionSchema')
    ParameterDefinitions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#ParameterDefinitions', name: 'ParameterDefinitions')
    ParameterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudfront#ParameterName', name: 'ParameterName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]+$"})
    ParameterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudfront#ParameterValue', name: 'ParameterValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Parameters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#Parameters', name: 'Parameters')
    ParametersInCacheKeyAndForwardedToOrigin = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ParametersInCacheKeyAndForwardedToOrigin', name: 'ParametersInCacheKeyAndForwardedToOrigin')
    PathList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#PathList', name: 'PathList')
    Paths = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#Paths', name: 'Paths')
    PreconditionFailed = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#PreconditionFailed', name: 'PreconditionFailed', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 412})
    PriceClass = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#PriceClass', name: 'PriceClass')
    PublicKey = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#PublicKey', name: 'PublicKey')
    PublicKeyAlreadyExists = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#PublicKeyAlreadyExists', name: 'PublicKeyAlreadyExists', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    PublicKeyConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#PublicKeyConfig', name: 'PublicKeyConfig')
    PublicKeyIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#PublicKeyIdList', name: 'PublicKeyIdList')
    PublicKeyInUse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#PublicKeyInUse', name: 'PublicKeyInUse', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    PublicKeyList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#PublicKeyList', name: 'PublicKeyList')
    PublicKeySummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#PublicKeySummary', name: 'PublicKeySummary')
    PublicKeySummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#PublicKeySummaryList', name: 'PublicKeySummaryList')
    PublishFunctionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#PublishFunctionRequest', name: 'PublishFunctionRequest')
    PublishFunctionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#PublishFunctionResult', name: 'PublishFunctionResult')
    QueryArgProfile = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#QueryArgProfile', name: 'QueryArgProfile')
    QueryArgProfileConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#QueryArgProfileConfig', name: 'QueryArgProfileConfig')
    QueryArgProfileEmpty = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#QueryArgProfileEmpty', name: 'QueryArgProfileEmpty', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    QueryArgProfileList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#QueryArgProfileList', name: 'QueryArgProfileList')
    QueryArgProfiles = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#QueryArgProfiles', name: 'QueryArgProfiles')
    QueryStringCacheKeys = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#QueryStringCacheKeys', name: 'QueryStringCacheKeys')
    QueryStringCacheKeysList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#QueryStringCacheKeysList', name: 'QueryStringCacheKeysList')
    QueryStringNames = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#QueryStringNames', name: 'QueryStringNames')
    QueryStringNamesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#QueryStringNamesList', name: 'QueryStringNamesList')
    RealtimeLogConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#RealtimeLogConfig', name: 'RealtimeLogConfig')
    RealtimeLogConfigAlreadyExists = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#RealtimeLogConfigAlreadyExists', name: 'RealtimeLogConfigAlreadyExists', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    RealtimeLogConfigInUse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#RealtimeLogConfigInUse', name: 'RealtimeLogConfigInUse', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RealtimeLogConfigList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#RealtimeLogConfigList', name: 'RealtimeLogConfigList')
    RealtimeLogConfigOwnerMismatch = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#RealtimeLogConfigOwnerMismatch', name: 'RealtimeLogConfigOwnerMismatch', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    RealtimeLogConfigs = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#RealtimeLogConfigs', name: 'RealtimeLogConfigs')
    RealtimeMetricsSubscriptionConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#RealtimeMetricsSubscriptionConfig', name: 'RealtimeMetricsSubscriptionConfig')
    RealtimeMetricsSubscriptionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#RealtimeMetricsSubscriptionStatus', name: 'RealtimeMetricsSubscriptionStatus')
    ReferrerPolicyList = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#ReferrerPolicyList', name: 'ReferrerPolicyList')
    ResourceARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudfront#ResourceARN', name: 'ResourceARN', traits: {"smithy.api#pattern" => "^arn:aws(-cn)?:cloudfront::[0-9]+:"})
    ResourceInUse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ResourceInUse', name: 'ResourceInUse', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceNotDisabled = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ResourceNotDisabled', name: 'ResourceNotDisabled', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResponseHeadersPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ResponseHeadersPolicy', name: 'ResponseHeadersPolicy')
    ResponseHeadersPolicyAccessControlAllowHeaders = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ResponseHeadersPolicyAccessControlAllowHeaders', name: 'ResponseHeadersPolicyAccessControlAllowHeaders')
    ResponseHeadersPolicyAccessControlAllowMethods = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ResponseHeadersPolicyAccessControlAllowMethods', name: 'ResponseHeadersPolicyAccessControlAllowMethods')
    ResponseHeadersPolicyAccessControlAllowMethodsValues = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#ResponseHeadersPolicyAccessControlAllowMethodsValues', name: 'ResponseHeadersPolicyAccessControlAllowMethodsValues')
    ResponseHeadersPolicyAccessControlAllowOrigins = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ResponseHeadersPolicyAccessControlAllowOrigins', name: 'ResponseHeadersPolicyAccessControlAllowOrigins')
    ResponseHeadersPolicyAccessControlExposeHeaders = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ResponseHeadersPolicyAccessControlExposeHeaders', name: 'ResponseHeadersPolicyAccessControlExposeHeaders')
    ResponseHeadersPolicyAlreadyExists = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ResponseHeadersPolicyAlreadyExists', name: 'ResponseHeadersPolicyAlreadyExists', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResponseHeadersPolicyConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ResponseHeadersPolicyConfig', name: 'ResponseHeadersPolicyConfig')
    ResponseHeadersPolicyContentSecurityPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ResponseHeadersPolicyContentSecurityPolicy', name: 'ResponseHeadersPolicyContentSecurityPolicy')
    ResponseHeadersPolicyContentTypeOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ResponseHeadersPolicyContentTypeOptions', name: 'ResponseHeadersPolicyContentTypeOptions')
    ResponseHeadersPolicyCorsConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ResponseHeadersPolicyCorsConfig', name: 'ResponseHeadersPolicyCorsConfig')
    ResponseHeadersPolicyCustomHeader = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ResponseHeadersPolicyCustomHeader', name: 'ResponseHeadersPolicyCustomHeader')
    ResponseHeadersPolicyCustomHeaderList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#ResponseHeadersPolicyCustomHeaderList', name: 'ResponseHeadersPolicyCustomHeaderList')
    ResponseHeadersPolicyCustomHeadersConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ResponseHeadersPolicyCustomHeadersConfig', name: 'ResponseHeadersPolicyCustomHeadersConfig')
    ResponseHeadersPolicyFrameOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ResponseHeadersPolicyFrameOptions', name: 'ResponseHeadersPolicyFrameOptions')
    ResponseHeadersPolicyInUse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ResponseHeadersPolicyInUse', name: 'ResponseHeadersPolicyInUse', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResponseHeadersPolicyList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ResponseHeadersPolicyList', name: 'ResponseHeadersPolicyList')
    ResponseHeadersPolicyReferrerPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ResponseHeadersPolicyReferrerPolicy', name: 'ResponseHeadersPolicyReferrerPolicy')
    ResponseHeadersPolicyRemoveHeader = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ResponseHeadersPolicyRemoveHeader', name: 'ResponseHeadersPolicyRemoveHeader')
    ResponseHeadersPolicyRemoveHeaderList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#ResponseHeadersPolicyRemoveHeaderList', name: 'ResponseHeadersPolicyRemoveHeaderList')
    ResponseHeadersPolicyRemoveHeadersConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ResponseHeadersPolicyRemoveHeadersConfig', name: 'ResponseHeadersPolicyRemoveHeadersConfig')
    ResponseHeadersPolicySecurityHeadersConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ResponseHeadersPolicySecurityHeadersConfig', name: 'ResponseHeadersPolicySecurityHeadersConfig')
    ResponseHeadersPolicyServerTimingHeadersConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ResponseHeadersPolicyServerTimingHeadersConfig', name: 'ResponseHeadersPolicyServerTimingHeadersConfig')
    ResponseHeadersPolicyStrictTransportSecurity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ResponseHeadersPolicyStrictTransportSecurity', name: 'ResponseHeadersPolicyStrictTransportSecurity')
    ResponseHeadersPolicySummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ResponseHeadersPolicySummary', name: 'ResponseHeadersPolicySummary')
    ResponseHeadersPolicySummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#ResponseHeadersPolicySummaryList', name: 'ResponseHeadersPolicySummaryList')
    ResponseHeadersPolicyType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#ResponseHeadersPolicyType', name: 'ResponseHeadersPolicyType')
    ResponseHeadersPolicyXSSProtection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ResponseHeadersPolicyXSSProtection', name: 'ResponseHeadersPolicyXSSProtection')
    Restrictions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#Restrictions', name: 'Restrictions')
    S3Origin = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#S3Origin', name: 'S3Origin')
    S3OriginConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#S3OriginConfig', name: 'S3OriginConfig')
    SSLSupportMethod = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#SSLSupportMethod', name: 'SSLSupportMethod')
    SamplingRate = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.cloudfront#SamplingRate', name: 'SamplingRate', traits: {"smithy.api#range" => {"min" => 0.0, "max" => 100.0}})
    ServerCertificateId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudfront#ServerCertificateId', name: 'ServerCertificateId', traits: {"smithy.api#length" => {"max" => 32}})
    SessionStickinessConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#SessionStickinessConfig', name: 'SessionStickinessConfig')
    Signer = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#Signer', name: 'Signer')
    SignerList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#SignerList', name: 'SignerList')
    SslProtocol = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#SslProtocol', name: 'SslProtocol')
    SslProtocolsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#SslProtocolsList', name: 'SslProtocolsList')
    StagingDistributionDnsNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#StagingDistributionDnsNameList', name: 'StagingDistributionDnsNameList')
    StagingDistributionDnsNames = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#StagingDistributionDnsNames', name: 'StagingDistributionDnsNames')
    StagingDistributionInUse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#StagingDistributionInUse', name: 'StagingDistributionInUse', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    StatusCodeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#StatusCodeList', name: 'StatusCodeList', traits: {"smithy.api#length" => {"min" => 1}})
    StatusCodes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#StatusCodes', name: 'StatusCodes')
    StreamingDistribution = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#StreamingDistribution', name: 'StreamingDistribution')
    StreamingDistributionAlreadyExists = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#StreamingDistributionAlreadyExists', name: 'StreamingDistributionAlreadyExists', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    StreamingDistributionConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#StreamingDistributionConfig', name: 'StreamingDistributionConfig')
    StreamingDistributionConfigWithTags = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#StreamingDistributionConfigWithTags', name: 'StreamingDistributionConfigWithTags')
    StreamingDistributionList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#StreamingDistributionList', name: 'StreamingDistributionList')
    StreamingDistributionNotDisabled = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#StreamingDistributionNotDisabled', name: 'StreamingDistributionNotDisabled', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    StreamingDistributionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#StreamingDistributionSummary', name: 'StreamingDistributionSummary')
    StreamingDistributionSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#StreamingDistributionSummaryList', name: 'StreamingDistributionSummaryList')
    StreamingLoggingConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#StreamingLoggingConfig', name: 'StreamingLoggingConfig')
    StringSchemaConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#StringSchemaConfig', name: 'StringSchemaConfig')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudfront#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#TagKeyList', name: 'TagKeyList')
    TagKeys = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TagKeys', name: 'TagKeys')
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#TagList', name: 'TagList')
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TagResourceRequest', name: 'TagResourceRequest')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudfront#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    Tags = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#Tags', name: 'Tags')
    TenantConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TenantConfig', name: 'TenantConfig')
    TestFunctionFailed = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TestFunctionFailed', name: 'TestFunctionFailed', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    TestFunctionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TestFunctionRequest', name: 'TestFunctionRequest')
    TestFunctionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TestFunctionResult', name: 'TestFunctionResult')
    TestResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TestResult', name: 'TestResult')
    TooLongCSPInResponseHeadersPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooLongCSPInResponseHeadersPolicy', name: 'TooLongCSPInResponseHeadersPolicy', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyCacheBehaviors = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyCacheBehaviors', name: 'TooManyCacheBehaviors', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyCachePolicies = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyCachePolicies', name: 'TooManyCachePolicies', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyCertificates = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyCertificates', name: 'TooManyCertificates', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyCloudFrontOriginAccessIdentities = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyCloudFrontOriginAccessIdentities', name: 'TooManyCloudFrontOriginAccessIdentities', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyContinuousDeploymentPolicies = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyContinuousDeploymentPolicies', name: 'TooManyContinuousDeploymentPolicies', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyCookieNamesInWhiteList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyCookieNamesInWhiteList', name: 'TooManyCookieNamesInWhiteList', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyCookiesInCachePolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyCookiesInCachePolicy', name: 'TooManyCookiesInCachePolicy', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyCookiesInOriginRequestPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyCookiesInOriginRequestPolicy', name: 'TooManyCookiesInOriginRequestPolicy', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyCustomHeadersInResponseHeadersPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyCustomHeadersInResponseHeadersPolicy', name: 'TooManyCustomHeadersInResponseHeadersPolicy', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyDistributionCNAMEs = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyDistributionCNAMEs', name: 'TooManyDistributionCNAMEs', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyDistributions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyDistributions', name: 'TooManyDistributions', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyDistributionsAssociatedToCachePolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyDistributionsAssociatedToCachePolicy', name: 'TooManyDistributionsAssociatedToCachePolicy', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyDistributionsAssociatedToFieldLevelEncryptionConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyDistributionsAssociatedToFieldLevelEncryptionConfig', name: 'TooManyDistributionsAssociatedToFieldLevelEncryptionConfig', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyDistributionsAssociatedToKeyGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyDistributionsAssociatedToKeyGroup', name: 'TooManyDistributionsAssociatedToKeyGroup', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyDistributionsAssociatedToOriginAccessControl = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyDistributionsAssociatedToOriginAccessControl', name: 'TooManyDistributionsAssociatedToOriginAccessControl', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyDistributionsAssociatedToOriginRequestPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyDistributionsAssociatedToOriginRequestPolicy', name: 'TooManyDistributionsAssociatedToOriginRequestPolicy', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyDistributionsAssociatedToResponseHeadersPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyDistributionsAssociatedToResponseHeadersPolicy', name: 'TooManyDistributionsAssociatedToResponseHeadersPolicy', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyDistributionsWithFunctionAssociations = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyDistributionsWithFunctionAssociations', name: 'TooManyDistributionsWithFunctionAssociations', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyDistributionsWithLambdaAssociations = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyDistributionsWithLambdaAssociations', name: 'TooManyDistributionsWithLambdaAssociations', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyDistributionsWithSingleFunctionARN = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyDistributionsWithSingleFunctionARN', name: 'TooManyDistributionsWithSingleFunctionARN', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyFieldLevelEncryptionConfigs = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyFieldLevelEncryptionConfigs', name: 'TooManyFieldLevelEncryptionConfigs', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyFieldLevelEncryptionContentTypeProfiles = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyFieldLevelEncryptionContentTypeProfiles', name: 'TooManyFieldLevelEncryptionContentTypeProfiles', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyFieldLevelEncryptionEncryptionEntities = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyFieldLevelEncryptionEncryptionEntities', name: 'TooManyFieldLevelEncryptionEncryptionEntities', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyFieldLevelEncryptionFieldPatterns = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyFieldLevelEncryptionFieldPatterns', name: 'TooManyFieldLevelEncryptionFieldPatterns', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyFieldLevelEncryptionProfiles = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyFieldLevelEncryptionProfiles', name: 'TooManyFieldLevelEncryptionProfiles', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyFieldLevelEncryptionQueryArgProfiles = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyFieldLevelEncryptionQueryArgProfiles', name: 'TooManyFieldLevelEncryptionQueryArgProfiles', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyFunctionAssociations = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyFunctionAssociations', name: 'TooManyFunctionAssociations', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyFunctions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyFunctions', name: 'TooManyFunctions', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyHeadersInCachePolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyHeadersInCachePolicy', name: 'TooManyHeadersInCachePolicy', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyHeadersInForwardedValues = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyHeadersInForwardedValues', name: 'TooManyHeadersInForwardedValues', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyHeadersInOriginRequestPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyHeadersInOriginRequestPolicy', name: 'TooManyHeadersInOriginRequestPolicy', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyInvalidationsInProgress = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyInvalidationsInProgress', name: 'TooManyInvalidationsInProgress', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyKeyGroups = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyKeyGroups', name: 'TooManyKeyGroups', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyKeyGroupsAssociatedToDistribution = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyKeyGroupsAssociatedToDistribution', name: 'TooManyKeyGroupsAssociatedToDistribution', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyLambdaFunctionAssociations = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyLambdaFunctionAssociations', name: 'TooManyLambdaFunctionAssociations', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyOriginAccessControls = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyOriginAccessControls', name: 'TooManyOriginAccessControls', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyOriginCustomHeaders = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyOriginCustomHeaders', name: 'TooManyOriginCustomHeaders', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyOriginGroupsPerDistribution = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyOriginGroupsPerDistribution', name: 'TooManyOriginGroupsPerDistribution', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyOriginRequestPolicies = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyOriginRequestPolicies', name: 'TooManyOriginRequestPolicies', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyOrigins = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyOrigins', name: 'TooManyOrigins', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyPublicKeys = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyPublicKeys', name: 'TooManyPublicKeys', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyPublicKeysInKeyGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyPublicKeysInKeyGroup', name: 'TooManyPublicKeysInKeyGroup', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyQueryStringParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyQueryStringParameters', name: 'TooManyQueryStringParameters', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyQueryStringsInCachePolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyQueryStringsInCachePolicy', name: 'TooManyQueryStringsInCachePolicy', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyQueryStringsInOriginRequestPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyQueryStringsInOriginRequestPolicy', name: 'TooManyQueryStringsInOriginRequestPolicy', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyRealtimeLogConfigs = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyRealtimeLogConfigs', name: 'TooManyRealtimeLogConfigs', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyRemoveHeadersInResponseHeadersPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyRemoveHeadersInResponseHeadersPolicy', name: 'TooManyRemoveHeadersInResponseHeadersPolicy', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyResponseHeadersPolicies = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyResponseHeadersPolicies', name: 'TooManyResponseHeadersPolicies', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyStreamingDistributionCNAMEs = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyStreamingDistributionCNAMEs', name: 'TooManyStreamingDistributionCNAMEs', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyStreamingDistributions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyStreamingDistributions', name: 'TooManyStreamingDistributions', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyTrustedSigners = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TooManyTrustedSigners', name: 'TooManyTrustedSigners', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TrafficConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TrafficConfig', name: 'TrafficConfig')
    TrustedKeyGroupDoesNotExist = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TrustedKeyGroupDoesNotExist', name: 'TrustedKeyGroupDoesNotExist', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TrustedKeyGroupIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#TrustedKeyGroupIdList', name: 'TrustedKeyGroupIdList')
    TrustedKeyGroups = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TrustedKeyGroups', name: 'TrustedKeyGroups')
    TrustedSignerDoesNotExist = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TrustedSignerDoesNotExist', name: 'TrustedSignerDoesNotExist', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TrustedSigners = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#TrustedSigners', name: 'TrustedSigners')
    UnsupportedOperation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UnsupportedOperation', name: 'UnsupportedOperation', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UntagResourceRequest', name: 'UntagResourceRequest')
    UpdateCachePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdateCachePolicyRequest', name: 'UpdateCachePolicyRequest')
    UpdateCachePolicyResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdateCachePolicyResult', name: 'UpdateCachePolicyResult')
    UpdateCloudFrontOriginAccessIdentityRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdateCloudFrontOriginAccessIdentityRequest', name: 'UpdateCloudFrontOriginAccessIdentityRequest')
    UpdateCloudFrontOriginAccessIdentityResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdateCloudFrontOriginAccessIdentityResult', name: 'UpdateCloudFrontOriginAccessIdentityResult')
    UpdateConnectionGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdateConnectionGroupRequest', name: 'UpdateConnectionGroupRequest')
    UpdateConnectionGroupResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdateConnectionGroupResult', name: 'UpdateConnectionGroupResult')
    UpdateContinuousDeploymentPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdateContinuousDeploymentPolicyRequest', name: 'UpdateContinuousDeploymentPolicyRequest')
    UpdateContinuousDeploymentPolicyResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdateContinuousDeploymentPolicyResult', name: 'UpdateContinuousDeploymentPolicyResult')
    UpdateDistributionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdateDistributionRequest', name: 'UpdateDistributionRequest')
    UpdateDistributionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdateDistributionResult', name: 'UpdateDistributionResult')
    UpdateDistributionTenantRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdateDistributionTenantRequest', name: 'UpdateDistributionTenantRequest')
    UpdateDistributionTenantResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdateDistributionTenantResult', name: 'UpdateDistributionTenantResult')
    UpdateDistributionWithStagingConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdateDistributionWithStagingConfigRequest', name: 'UpdateDistributionWithStagingConfigRequest')
    UpdateDistributionWithStagingConfigResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdateDistributionWithStagingConfigResult', name: 'UpdateDistributionWithStagingConfigResult')
    UpdateDomainAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdateDomainAssociationRequest', name: 'UpdateDomainAssociationRequest')
    UpdateDomainAssociationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdateDomainAssociationResult', name: 'UpdateDomainAssociationResult')
    UpdateFieldLevelEncryptionConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdateFieldLevelEncryptionConfigRequest', name: 'UpdateFieldLevelEncryptionConfigRequest')
    UpdateFieldLevelEncryptionConfigResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdateFieldLevelEncryptionConfigResult', name: 'UpdateFieldLevelEncryptionConfigResult')
    UpdateFieldLevelEncryptionProfileRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdateFieldLevelEncryptionProfileRequest', name: 'UpdateFieldLevelEncryptionProfileRequest')
    UpdateFieldLevelEncryptionProfileResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdateFieldLevelEncryptionProfileResult', name: 'UpdateFieldLevelEncryptionProfileResult')
    UpdateFunctionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdateFunctionRequest', name: 'UpdateFunctionRequest')
    UpdateFunctionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdateFunctionResult', name: 'UpdateFunctionResult')
    UpdateKeyGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdateKeyGroupRequest', name: 'UpdateKeyGroupRequest')
    UpdateKeyGroupResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdateKeyGroupResult', name: 'UpdateKeyGroupResult')
    UpdateKeyValueStoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdateKeyValueStoreRequest', name: 'UpdateKeyValueStoreRequest')
    UpdateKeyValueStoreResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdateKeyValueStoreResult', name: 'UpdateKeyValueStoreResult')
    UpdateOriginAccessControlRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdateOriginAccessControlRequest', name: 'UpdateOriginAccessControlRequest')
    UpdateOriginAccessControlResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdateOriginAccessControlResult', name: 'UpdateOriginAccessControlResult')
    UpdateOriginRequestPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdateOriginRequestPolicyRequest', name: 'UpdateOriginRequestPolicyRequest')
    UpdateOriginRequestPolicyResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdateOriginRequestPolicyResult', name: 'UpdateOriginRequestPolicyResult')
    UpdatePublicKeyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdatePublicKeyRequest', name: 'UpdatePublicKeyRequest')
    UpdatePublicKeyResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdatePublicKeyResult', name: 'UpdatePublicKeyResult')
    UpdateRealtimeLogConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdateRealtimeLogConfigRequest', name: 'UpdateRealtimeLogConfigRequest')
    UpdateRealtimeLogConfigResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdateRealtimeLogConfigResult', name: 'UpdateRealtimeLogConfigResult')
    UpdateResponseHeadersPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdateResponseHeadersPolicyRequest', name: 'UpdateResponseHeadersPolicyRequest')
    UpdateResponseHeadersPolicyResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdateResponseHeadersPolicyResult', name: 'UpdateResponseHeadersPolicyResult')
    UpdateStreamingDistributionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdateStreamingDistributionRequest', name: 'UpdateStreamingDistributionRequest')
    UpdateStreamingDistributionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdateStreamingDistributionResult', name: 'UpdateStreamingDistributionResult')
    UpdateVpcOriginRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdateVpcOriginRequest', name: 'UpdateVpcOriginRequest')
    UpdateVpcOriginResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#UpdateVpcOriginResult', name: 'UpdateVpcOriginResult')
    ValidationTokenDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ValidationTokenDetail', name: 'ValidationTokenDetail')
    ValidationTokenDetailList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#ValidationTokenDetailList', name: 'ValidationTokenDetailList')
    ValidationTokenHost = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#ValidationTokenHost', name: 'ValidationTokenHost')
    VerifyDnsConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#VerifyDnsConfigurationRequest', name: 'VerifyDnsConfigurationRequest')
    VerifyDnsConfigurationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#VerifyDnsConfigurationResult', name: 'VerifyDnsConfigurationResult')
    ViewerCertificate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#ViewerCertificate', name: 'ViewerCertificate')
    ViewerProtocolPolicy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudfront#ViewerProtocolPolicy', name: 'ViewerProtocolPolicy')
    VpcOrigin = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#VpcOrigin', name: 'VpcOrigin')
    VpcOriginConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#VpcOriginConfig', name: 'VpcOriginConfig')
    VpcOriginEndpointConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#VpcOriginEndpointConfig', name: 'VpcOriginEndpointConfig')
    VpcOriginList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#VpcOriginList', name: 'VpcOriginList')
    VpcOriginSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#VpcOriginSummary', name: 'VpcOriginSummary')
    VpcOriginSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudfront#VpcOriginSummaryList', name: 'VpcOriginSummaryList')
    WebAclCustomization = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudfront#WebAclCustomization', name: 'WebAclCustomization')
    AliasString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudfront#aliasString', name: 'AliasString', traits: {"smithy.api#length" => {"min" => 0, "max" => 253}})
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.cloudfront#boolean', name: 'Boolean')
    DistributionIdString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudfront#distributionIdString', name: 'DistributionIdString', traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    Float = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.cloudfront#float', name: 'Float')
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudfront#integer', name: 'Integer')
    ListConflictingAliasesMaxItemsInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudfront#listConflictingAliasesMaxItemsInteger', name: 'ListConflictingAliasesMaxItemsInteger', traits: {"smithy.api#range" => {"max" => 100}})
    Long = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudfront#long', name: 'Long')
    SensitiveStringType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudfront#sensitiveStringType', name: 'SensitiveStringType', traits: {"smithy.api#sensitive" => {}})
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudfront#string', name: 'String')
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.cloudfront#timestamp', name: 'Timestamp')

    AccessControlAllowHeadersList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "Header"})
    AccessControlAllowMethodsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseHeadersPolicyAccessControlAllowMethodsValues, traits: {"smithy.api#xmlName" => "Method"})
    AccessControlAllowOriginsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "Origin"})
    AccessControlExposeHeadersList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "Header"})
    AccessDenied.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    AccessDenied.type = Types::AccessDenied
    ActiveTrustedKeyGroups.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>This field is <code>true</code> if any of the key groups have public keys that CloudFront can use to verify the signatures of signed URLs and signed cookies. If not, this field is <code>false</code>.</p>", "smithy.api#required" => {}}))
    ActiveTrustedKeyGroups.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of key groups in the list.</p>", "smithy.api#required" => {}}))
    ActiveTrustedKeyGroups.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: KGKeyPairIdsList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>A list of key groups, including the identifiers of the public keys in each key group that CloudFront can use to verify the signatures of signed URLs and signed cookies.</p>"}))
    ActiveTrustedKeyGroups.type = Types::ActiveTrustedKeyGroups
    ActiveTrustedSigners.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>This field is <code>true</code> if any of the Amazon Web Services accounts in the list are configured as trusted signers. If not, this field is <code>false</code>.</p>", "smithy.api#required" => {}}))
    ActiveTrustedSigners.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of Amazon Web Services accounts in the list.</p>", "smithy.api#required" => {}}))
    ActiveTrustedSigners.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: SignerList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>A list of Amazon Web Services accounts and the identifiers of active CloudFront key pairs in each account that CloudFront can use to verify the signatures of signed URLs and signed cookies.</p>"}))
    ActiveTrustedSigners.type = Types::ActiveTrustedSigners
    AliasICPRecordal.add_member(:cname, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CNAME', traits: {"smithy.api#documentation" => "<p>A domain name associated with a distribution.</p>"}))
    AliasICPRecordal.add_member(:icp_recordal_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ICPRecordalStatus, location_name: 'ICPRecordalStatus', traits: {"smithy.api#documentation" => "<p>The Internet Content Provider (ICP) recordal status for a CNAME. The ICPRecordalStatus is set to APPROVED for all CNAMEs (aliases) in Amazon Web Services Regions outside of China.</p> <p>The status values returned are the following:</p> <ul> <li> <p> <b>APPROVED</b> indicates that the associated CNAME has a valid ICP recordal number. Multiple CNAMEs can be associated with a distribution, and CNAMEs can correspond to different ICP recordals. To be marked as APPROVED, that is, valid to use with the China Regions, a CNAME must have one ICP recordal number associated with it.</p> </li> <li> <p> <b>SUSPENDED</b> indicates that the associated CNAME does not have a valid ICP recordal number.</p> </li> <li> <p> <b>PENDING</b> indicates that CloudFront can't determine the ICP recordal status of the CNAME associated with the distribution because there was an error in trying to determine the status. You can try again to see if the error is resolved in which case CloudFront returns an APPROVED or SUSPENDED status.</p> </li> </ul>"}))
    AliasICPRecordal.type = Types::AliasICPRecordal
    AliasICPRecordals.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AliasICPRecordal, traits: {"smithy.api#xmlName" => "AliasICPRecordal"})
    AliasList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "CNAME"})
    Aliases.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of CNAME aliases, if any, that you want to associate with this distribution.</p>", "smithy.api#required" => {}}))
    Aliases.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: AliasList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>A complex type that contains the CNAME aliases, if any, that you want to associate with this distribution.</p>"}))
    Aliases.type = Types::Aliases
    AllowedMethods.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of HTTP methods that you want CloudFront to forward to your origin. Valid values are 2 (for <code>GET</code> and <code>HEAD</code> requests), 3 (for <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> requests) and 7 (for <code>GET, HEAD, OPTIONS, PUT, PATCH, POST</code>, and <code>DELETE</code> requests).</p>", "smithy.api#required" => {}}))
    AllowedMethods.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: MethodsList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>A complex type that contains the HTTP methods that you want CloudFront to process and forward to your origin.</p>", "smithy.api#required" => {}}))
    AllowedMethods.add_member(:cached_methods, Smithy::Schema::Shapes::ShapeRef.new(shape: CachedMethods, location_name: 'CachedMethods'))
    AllowedMethods.type = Types::AllowedMethods
    AnycastIpList.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the Anycast static IP list.</p>", "smithy.api#required" => {}}))
    AnycastIpList.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AnycastIpListName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the Anycast static IP list.</p>", "smithy.api#required" => {}}))
    AnycastIpList.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the Anycast static IP list. Valid values: <code>Deployed</code>, <code>Deploying</code>, or <code>Failed</code>.</p>", "smithy.api#required" => {}}))
    AnycastIpList.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Anycast static IP list.</p>", "smithy.api#required" => {}}))
    AnycastIpList.add_member(:anycast_ips, Smithy::Schema::Shapes::ShapeRef.new(shape: AnycastIps, location_name: 'AnycastIps', traits: {"smithy.api#documentation" => "<p>The static IP addresses that are allocated to the Anycast static IP list.</p>", "smithy.api#required" => {}}))
    AnycastIpList.add_member(:ip_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'IpCount', traits: {"smithy.api#documentation" => "<p>The number of IP addresses in the Anycast static IP list.</p>", "smithy.api#required" => {}}))
    AnycastIpList.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The last time the Anycast static IP list was modified.</p>", "smithy.api#required" => {}}))
    AnycastIpList.type = Types::AnycastIpList
    AnycastIpListCollection.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: AnycastIpListSummaries, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>Items in the Anycast static IP list collection. Each item is of the <a>AnycastIpListSummary</a> structure type.</p>"}))
    AnycastIpListCollection.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>Use this field when paginating results to indicate where to begin in your list. The response includes items in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>", "smithy.api#required" => {}}))
    AnycastIpListCollection.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>Indicates the next page of the Anycast static IP list collection. To get the next page of the list, use this value in the <code>Marker</code> field of your request.</p>"}))
    AnycastIpListCollection.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of Anycast static IP list collections that you want returned in the response.</p>", "smithy.api#required" => {}}))
    AnycastIpListCollection.add_member(:is_truncated, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsTruncated', traits: {"smithy.api#documentation" => "<p>If there are more items in the list collection than are in this response, this value is <code>true</code>.</p>", "smithy.api#required" => {}}))
    AnycastIpListCollection.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The quantity of Anycast static IP lists in the collection.</p>", "smithy.api#required" => {}}))
    AnycastIpListCollection.type = Types::AnycastIpListCollection
    AnycastIpListSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AnycastIpListSummary, traits: {"smithy.api#xmlName" => "AnycastIpListSummary"})
    AnycastIpListSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the Anycast static IP list.</p>", "smithy.api#required" => {}}))
    AnycastIpListSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AnycastIpListName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the Anycast static IP list.</p>", "smithy.api#required" => {}}))
    AnycastIpListSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The deployment status of the Anycast static IP list. Valid values: Deployed, Deploying, or Failed.</p>", "smithy.api#required" => {}}))
    AnycastIpListSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Anycast static IP list.</p>", "smithy.api#required" => {}}))
    AnycastIpListSummary.add_member(:ip_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'IpCount', traits: {"smithy.api#documentation" => "<p>The number of IP addresses in the Anycast static IP list.</p>", "smithy.api#required" => {}}))
    AnycastIpListSummary.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The last time the Anycast static IP list was modified.</p>", "smithy.api#required" => {}}))
    AnycastIpListSummary.type = Types::AnycastIpListSummary
    AnycastIps.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "AnycastIp"})
    AssociateAliasRequest.add_member(:target_distribution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetDistributionId', traits: {"smithy.api#documentation" => "<p>The ID of the standard distribution that you're associating the alias with.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateAliasRequest.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Alias', traits: {"smithy.api#documentation" => "<p>The alias (also known as a CNAME) to add to the target standard distribution.</p>", "smithy.api#httpQuery" => "Alias", "smithy.api#required" => {}}))
    AssociateAliasRequest.type = Types::AssociateAliasRequest
    AssociateDistributionTenantWebACLRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the distribution tenant.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateDistributionTenantWebACLRequest.add_member(:web_acl_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'WebACLArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the WAF web ACL to associate.</p>", "smithy.api#required" => {}}))
    AssociateDistributionTenantWebACLRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The current <code>ETag</code> of the distribution tenant. This value is returned in the response of the <code>GetDistributionTenant</code> API operation.</p>", "smithy.api#httpHeader" => "If-Match"}))
    AssociateDistributionTenantWebACLRequest.type = Types::AssociateDistributionTenantWebACLRequest
    AssociateDistributionTenantWebACLResult.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the distribution tenant.</p>"}))
    AssociateDistributionTenantWebACLResult.add_member(:web_acl_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'WebACLArn', traits: {"smithy.api#documentation" => "<p>The ARN of the WAF web ACL that you associated with the distribution tenant.</p>"}))
    AssociateDistributionTenantWebACLResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the distribution tenant.</p>", "smithy.api#httpHeader" => "ETag"}))
    AssociateDistributionTenantWebACLResult.type = Types::AssociateDistributionTenantWebACLResult
    AssociateDistributionWebACLRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the distribution.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateDistributionWebACLRequest.add_member(:web_acl_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'WebACLArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the WAF web ACL to associate.</p>", "smithy.api#required" => {}}))
    AssociateDistributionWebACLRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The value of the <code>ETag</code> header that you received when retrieving the distribution that you're associating with the WAF web ACL.</p>", "smithy.api#httpHeader" => "If-Match"}))
    AssociateDistributionWebACLRequest.type = Types::AssociateDistributionWebACLRequest
    AssociateDistributionWebACLResult.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the distribution.</p>"}))
    AssociateDistributionWebACLResult.add_member(:web_acl_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'WebACLArn', traits: {"smithy.api#documentation" => "<p>The ARN of the WAF web ACL that you associated with the distribution.</p>"}))
    AssociateDistributionWebACLResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the distribution.</p>", "smithy.api#httpHeader" => "ETag"}))
    AssociateDistributionWebACLResult.type = Types::AssociateDistributionWebACLResult
    AwsAccountNumberList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "AwsAccountNumber"})
    BatchTooLarge.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    BatchTooLarge.type = Types::BatchTooLarge
    CNAMEAlreadyExists.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    CNAMEAlreadyExists.type = Types::CNAMEAlreadyExists
    CacheBehavior.add_member(:path_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PathPattern', traits: {"smithy.api#documentation" => "<p>The pattern (for example, <code>images/*.jpg</code>) that specifies which requests to apply the behavior to. When CloudFront receives a viewer request, the requested path is compared with path patterns in the order in which cache behaviors are listed in the distribution.</p> <note> <p>You can optionally include a slash (<code>/</code>) at the beginning of the path pattern. For example, <code>/images/*.jpg</code>. CloudFront behavior is the same with or without the leading <code>/</code>.</p> </note> <p>The path pattern for the default cache behavior is <code>*</code> and cannot be changed. If the request for an object does not match the path pattern for any cache behaviors, CloudFront applies the behavior in the default cache behavior.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesPathPattern\">Path Pattern</a> in the <i> Amazon CloudFront Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    CacheBehavior.add_member(:target_origin_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetOriginId', traits: {"smithy.api#documentation" => "<p>The value of <code>ID</code> for the origin that you want CloudFront to route requests to when they match this cache behavior.</p>", "smithy.api#required" => {}}))
    CacheBehavior.add_member(:trusted_signers, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedSigners, location_name: 'TrustedSigners', traits: {"smithy.api#documentation" => "<important> <p>We recommend using <code>TrustedKeyGroups</code> instead of <code>TrustedSigners</code>.</p> </important> <note> <p>This field only supports standard distributions. You can't specify this field for multi-tenant distributions. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-config-options.html#unsupported-saas\">Unsupported features for SaaS Manager for Amazon CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note> <p>A list of Amazon Web Services account IDs whose public keys CloudFront can use to validate signed URLs or signed cookies.</p> <p>When a cache behavior contains trusted signers, CloudFront requires signed URLs or signed cookies for all requests that match the cache behavior. The URLs or cookies must be signed with the private key of a CloudFront key pair in the trusted signer's Amazon Web Services account. The signed URL or cookie contains information about which public key CloudFront should use to verify the signature. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving private content</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"}))
    CacheBehavior.add_member(:trusted_key_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedKeyGroups, location_name: 'TrustedKeyGroups', traits: {"smithy.api#documentation" => "<p>A list of key groups that CloudFront can use to validate signed URLs or signed cookies.</p> <p>When a cache behavior contains trusted key groups, CloudFront requires signed URLs or signed cookies for all requests that match the cache behavior. The URLs or cookies must be signed with a private key whose corresponding public key is in the key group. The signed URL or cookie contains information about which public key CloudFront should use to verify the signature. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving private content</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"}))
    CacheBehavior.add_member(:viewer_protocol_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ViewerProtocolPolicy, location_name: 'ViewerProtocolPolicy', traits: {"smithy.api#documentation" => "<p>The protocol that viewers can use to access the files in the origin specified by <code>TargetOriginId</code> when a request matches the path pattern in <code>PathPattern</code>. You can specify the following options:</p> <ul> <li> <p> <code>allow-all</code>: Viewers can use HTTP or HTTPS.</p> </li> <li> <p> <code>redirect-to-https</code>: If a viewer submits an HTTP request, CloudFront returns an HTTP status code of 301 (Moved Permanently) to the viewer along with the HTTPS URL. The viewer then resubmits the request using the new URL.</p> </li> <li> <p> <code>https-only</code>: If a viewer sends an HTTP request, CloudFront returns an HTTP status code of 403 (Forbidden).</p> </li> </ul> <p>For more information about requiring the HTTPS protocol, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-https-viewers-to-cloudfront.html\">Requiring HTTPS Between Viewers and CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <note> <p>The only way to guarantee that viewers retrieve an object that was fetched from the origin using HTTPS is never to use any other protocol to fetch the object. If you have recently changed from HTTP to HTTPS, we recommend that you clear your objects' cache because cached objects are protocol agnostic. That means that an edge location will return an object from the cache regardless of whether the current request protocol matches the protocol used previously. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Managing Cache Expiration</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note>", "smithy.api#required" => {}}))
    CacheBehavior.add_member(:allowed_methods, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedMethods, location_name: 'AllowedMethods'))
    CacheBehavior.add_member(:smooth_streaming, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SmoothStreaming', traits: {"smithy.api#documentation" => "<note> <p>This field only supports standard distributions. You can't specify this field for multi-tenant distributions. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-config-options.html#unsupported-saas\">Unsupported features for SaaS Manager for Amazon CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note> <p>Indicates whether you want to distribute media files in the Microsoft Smooth Streaming format using the origin that is associated with this cache behavior. If so, specify <code>true</code>; if not, specify <code>false</code>. If you specify <code>true</code> for <code>SmoothStreaming</code>, you can still distribute other content using this cache behavior if the content matches the value of <code>PathPattern</code>.</p>"}))
    CacheBehavior.add_member(:compress, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Compress', traits: {"smithy.api#documentation" => "<p>Whether you want CloudFront to automatically compress certain files for this cache behavior. If so, specify true; if not, specify false. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/ServingCompressedFiles.html\">Serving Compressed Files</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"}))
    CacheBehavior.add_member(:lambda_function_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaFunctionAssociations, location_name: 'LambdaFunctionAssociations', traits: {"smithy.api#documentation" => "<p>A complex type that contains zero or more Lambda@Edge function associations for a cache behavior.</p>"}))
    CacheBehavior.add_member(:function_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionAssociations, location_name: 'FunctionAssociations', traits: {"smithy.api#documentation" => "<p>A list of CloudFront functions that are associated with this cache behavior. CloudFront functions must be published to the <code>LIVE</code> stage to associate them with a cache behavior.</p>"}))
    CacheBehavior.add_member(:field_level_encryption_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FieldLevelEncryptionId', traits: {"smithy.api#documentation" => "<p>The value of <code>ID</code> for the field-level encryption configuration that you want CloudFront to use for encrypting specific fields of data for this cache behavior.</p>"}))
    CacheBehavior.add_member(:realtime_log_config_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RealtimeLogConfigArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the real-time log configuration that is attached to this cache behavior. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html\">Real-time logs</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"}))
    CacheBehavior.add_member(:cache_policy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CachePolicyId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the cache policy that is attached to this cache behavior. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html\">Using the managed cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>A <code>CacheBehavior</code> must include either a <code>CachePolicyId</code> or <code>ForwardedValues</code>. We recommend that you use a <code>CachePolicyId</code>.</p>"}))
    CacheBehavior.add_member(:origin_request_policy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OriginRequestPolicyId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the origin request policy that is attached to this cache behavior. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy\">Creating origin request policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-origin-request-policies.html\">Using the managed origin request policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"}))
    CacheBehavior.add_member(:response_headers_policy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResponseHeadersPolicyId', traits: {"smithy.api#documentation" => "<p>The identifier for a response headers policy.</p>"}))
    CacheBehavior.add_member(:grpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: GrpcConfig, location_name: 'GrpcConfig', traits: {"smithy.api#documentation" => "<p>The gRPC configuration for your cache behavior.</p>"}))
    CacheBehavior.add_member(:forwarded_values, Smithy::Schema::Shapes::ShapeRef.new(shape: ForwardedValues, location_name: 'ForwardedValues', traits: {"smithy.api#deprecated" => {}, "smithy.api#documentation" => "<p>This field is deprecated. We recommend that you use a cache policy or an origin request policy instead of this field. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/working-with-policies.html\">Working with policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you want to include values in the cache key, use a cache policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html\">Using the managed cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you want to send values to the origin but not include them in the cache key, use an origin request policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy\">Creating origin request policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-origin-request-policies.html\">Using the managed origin request policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>A <code>CacheBehavior</code> must include either a <code>CachePolicyId</code> or <code>ForwardedValues</code>. We recommend that you use a <code>CachePolicyId</code>.</p> <p>A complex type that specifies how CloudFront handles query strings, cookies, and HTTP headers.</p>"}))
    CacheBehavior.add_member(:min_ttl, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'MinTTL', traits: {"smithy.api#deprecated" => {}, "smithy.api#documentation" => "<note> <p>This field only supports standard distributions. You can't specify this field for multi-tenant distributions. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-config-options.html#unsupported-saas\">Unsupported features for SaaS Manager for Amazon CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note> <p>This field is deprecated. We recommend that you use the <code>MinTTL</code> field in a cache policy instead of this field. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html\">Using the managed cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>The minimum amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\"> Managing How Long Content Stays in an Edge Cache (Expiration)</a> in the <i> Amazon CloudFront Developer Guide</i>.</p> <p>You must specify <code>0</code> for <code>MinTTL</code> if you configure CloudFront to forward all headers to your origin (under <code>Headers</code>, if you specify <code>1</code> for <code>Quantity</code> and <code>*</code> for <code>Name</code>).</p>"}))
    CacheBehavior.add_member(:default_ttl, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'DefaultTTL', traits: {"smithy.api#deprecated" => {}, "smithy.api#documentation" => "<note> <p>This field only supports standard distributions. You can't specify this field for multi-tenant distributions. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-config-options.html#unsupported-saas\">Unsupported features for SaaS Manager for Amazon CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note> <p>This field is deprecated. We recommend that you use the <code>DefaultTTL</code> field in a cache policy instead of this field. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html\">Using the managed cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>The default amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. The value that you specify applies only when your origin does not add HTTP headers such as <code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and <code>Expires</code> to objects. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Managing How Long Content Stays in an Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"}))
    CacheBehavior.add_member(:max_ttl, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'MaxTTL', traits: {"smithy.api#deprecated" => {}, "smithy.api#documentation" => "<note> <p>This field only supports standard distributions. You can't specify this field for multi-tenant distributions. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-config-options.html#unsupported-saas\">Unsupported features for SaaS Manager for Amazon CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note> <p>This field is deprecated. We recommend that you use the <code>MaxTTL</code> field in a cache policy instead of this field. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html\">Using the managed cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>The maximum amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. The value that you specify applies only when your origin adds HTTP headers such as <code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and <code>Expires</code> to objects. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Managing How Long Content Stays in an Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"}))
    CacheBehavior.type = Types::CacheBehavior
    CacheBehaviorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CacheBehavior, traits: {"smithy.api#xmlName" => "CacheBehavior"})
    CacheBehaviors.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of cache behaviors for this distribution.</p>", "smithy.api#required" => {}}))
    CacheBehaviors.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheBehaviorList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>Optional: A complex type that contains cache behaviors for this distribution. If <code>Quantity</code> is <code>0</code>, you can omit <code>Items</code>.</p>"}))
    CacheBehaviors.type = Types::CacheBehaviors
    CachePolicy.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the cache policy.</p>", "smithy.api#required" => {}}))
    CachePolicy.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The date and time when the cache policy was last modified.</p>", "smithy.api#required" => {}}))
    CachePolicy.add_member(:cache_policy_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CachePolicyConfig, location_name: 'CachePolicyConfig', traits: {"smithy.api#documentation" => "<p>The cache policy configuration.</p>", "smithy.api#required" => {}}))
    CachePolicy.type = Types::CachePolicy
    CachePolicyAlreadyExists.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    CachePolicyAlreadyExists.type = Types::CachePolicyAlreadyExists
    CachePolicyConfig.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Comment', traits: {"smithy.api#documentation" => "<p>A comment to describe the cache policy. The comment cannot be longer than 128 characters.</p>"}))
    CachePolicyConfig.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A unique name to identify the cache policy.</p>", "smithy.api#required" => {}}))
    CachePolicyConfig.add_member(:default_ttl, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'DefaultTTL', traits: {"smithy.api#documentation" => "<p>The default amount of time, in seconds, that you want objects to stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated. CloudFront uses this value as the object's time to live (TTL) only when the origin does <i>not</i> send <code>Cache-Control</code> or <code>Expires</code> headers with the object. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Managing How Long Content Stays in an Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>The default value for this field is 86400 seconds (one day). If the value of <code>MinTTL</code> is more than 86400 seconds, then the default value for this field is the same as the value of <code>MinTTL</code>.</p>"}))
    CachePolicyConfig.add_member(:max_ttl, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'MaxTTL', traits: {"smithy.api#documentation" => "<p>The maximum amount of time, in seconds, that objects stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated. CloudFront uses this value only when the origin sends <code>Cache-Control</code> or <code>Expires</code> headers with the object. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Managing How Long Content Stays in an Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>The default value for this field is 31536000 seconds (one year). If the value of <code>MinTTL</code> or <code>DefaultTTL</code> is more than 31536000 seconds, then the default value for this field is the same as the value of <code>DefaultTTL</code>.</p>"}))
    CachePolicyConfig.add_member(:min_ttl, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'MinTTL', traits: {"smithy.api#documentation" => "<p>The minimum amount of time, in seconds, that you want objects to stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Managing How Long Content Stays in an Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    CachePolicyConfig.add_member(:parameters_in_cache_key_and_forwarded_to_origin, Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersInCacheKeyAndForwardedToOrigin, location_name: 'ParametersInCacheKeyAndForwardedToOrigin', traits: {"smithy.api#documentation" => "<p>The HTTP headers, cookies, and URL query strings to include in the cache key. The values included in the cache key are also included in requests that CloudFront sends to the origin.</p>"}))
    CachePolicyConfig.type = Types::CachePolicyConfig
    CachePolicyCookieBehavior.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'none', traits: {"smithy.api#enumValue" => "none"}))
    CachePolicyCookieBehavior.add_member(:whitelist, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'whitelist', traits: {"smithy.api#enumValue" => "whitelist"}))
    CachePolicyCookieBehavior.add_member(:all_except, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'allExcept', traits: {"smithy.api#enumValue" => "allExcept"}))
    CachePolicyCookieBehavior.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'all', traits: {"smithy.api#enumValue" => "all"}))
    CachePolicyCookiesConfig.add_member(:cookie_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: CachePolicyCookieBehavior, location_name: 'CookieBehavior', traits: {"smithy.api#documentation" => "<p>Determines whether any cookies in viewer requests are included in the cache key and in requests that CloudFront sends to the origin. Valid values are:</p> <ul> <li> <p> <code>none</code> – No cookies in viewer requests are included in the cache key or in requests that CloudFront sends to the origin. Even when this field is set to <code>none</code>, any cookies that are listed in an <code>OriginRequestPolicy</code> <i>are</i> included in origin requests.</p> </li> <li> <p> <code>whitelist</code> – Only the cookies in viewer requests that are listed in the <code>CookieNames</code> type are included in the cache key and in requests that CloudFront sends to the origin.</p> </li> <li> <p> <code>allExcept</code> – All cookies in viewer requests are included in the cache key and in requests that CloudFront sends to the origin, <i> <b>except</b> </i> for those that are listed in the <code>CookieNames</code> type, which are not included.</p> </li> <li> <p> <code>all</code> – All cookies in viewer requests are included in the cache key and in requests that CloudFront sends to the origin.</p> </li> </ul>", "smithy.api#required" => {}}))
    CachePolicyCookiesConfig.add_member(:cookies, Smithy::Schema::Shapes::ShapeRef.new(shape: CookieNames, location_name: 'Cookies'))
    CachePolicyCookiesConfig.type = Types::CachePolicyCookiesConfig
    CachePolicyHeaderBehavior.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'none', traits: {"smithy.api#enumValue" => "none"}))
    CachePolicyHeaderBehavior.add_member(:whitelist, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'whitelist', traits: {"smithy.api#enumValue" => "whitelist"}))
    CachePolicyHeadersConfig.add_member(:header_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: CachePolicyHeaderBehavior, location_name: 'HeaderBehavior', traits: {"smithy.api#documentation" => "<p>Determines whether any HTTP headers are included in the cache key and in requests that CloudFront sends to the origin. Valid values are:</p> <ul> <li> <p> <code>none</code> – No HTTP headers are included in the cache key or in requests that CloudFront sends to the origin. Even when this field is set to <code>none</code>, any headers that are listed in an <code>OriginRequestPolicy</code> <i>are</i> included in origin requests.</p> </li> <li> <p> <code>whitelist</code> – Only the HTTP headers that are listed in the <code>Headers</code> type are included in the cache key and in requests that CloudFront sends to the origin.</p> </li> </ul>", "smithy.api#required" => {}}))
    CachePolicyHeadersConfig.add_member(:headers, Smithy::Schema::Shapes::ShapeRef.new(shape: Headers, location_name: 'Headers'))
    CachePolicyHeadersConfig.type = Types::CachePolicyHeadersConfig
    CachePolicyInUse.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    CachePolicyInUse.type = Types::CachePolicyInUse
    CachePolicyList.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If there are more items in the list than are in this response, this element is present. It contains the value that you should use in the <code>Marker</code> field of a subsequent request to continue listing cache policies where you left off.</p>"}))
    CachePolicyList.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of cache policies requested.</p>", "smithy.api#required" => {}}))
    CachePolicyList.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The total number of cache policies returned in the response.</p>", "smithy.api#required" => {}}))
    CachePolicyList.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: CachePolicySummaryList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>Contains the cache policies in the list.</p>"}))
    CachePolicyList.type = Types::CachePolicyList
    CachePolicyQueryStringBehavior.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'none', traits: {"smithy.api#enumValue" => "none"}))
    CachePolicyQueryStringBehavior.add_member(:whitelist, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'whitelist', traits: {"smithy.api#enumValue" => "whitelist"}))
    CachePolicyQueryStringBehavior.add_member(:all_except, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'allExcept', traits: {"smithy.api#enumValue" => "allExcept"}))
    CachePolicyQueryStringBehavior.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'all', traits: {"smithy.api#enumValue" => "all"}))
    CachePolicyQueryStringsConfig.add_member(:query_string_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: CachePolicyQueryStringBehavior, location_name: 'QueryStringBehavior', traits: {"smithy.api#documentation" => "<p>Determines whether any URL query strings in viewer requests are included in the cache key and in requests that CloudFront sends to the origin. Valid values are:</p> <ul> <li> <p> <code>none</code> – No query strings in viewer requests are included in the cache key or in requests that CloudFront sends to the origin. Even when this field is set to <code>none</code>, any query strings that are listed in an <code>OriginRequestPolicy</code> <i>are</i> included in origin requests.</p> </li> <li> <p> <code>whitelist</code> – Only the query strings in viewer requests that are listed in the <code>QueryStringNames</code> type are included in the cache key and in requests that CloudFront sends to the origin.</p> </li> <li> <p> <code>allExcept</code> – All query strings in viewer requests are included in the cache key and in requests that CloudFront sends to the origin, <i> <b>except</b> </i> those that are listed in the <code>QueryStringNames</code> type, which are not included.</p> </li> <li> <p> <code>all</code> – All query strings in viewer requests are included in the cache key and in requests that CloudFront sends to the origin.</p> </li> </ul>", "smithy.api#required" => {}}))
    CachePolicyQueryStringsConfig.add_member(:query_strings, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStringNames, location_name: 'QueryStrings', traits: {"smithy.api#documentation" => "<p>Contains the specific query strings in viewer requests that either <i> <b>are</b> </i> or <i> <b>are not</b> </i> included in the cache key and in requests that CloudFront sends to the origin. The behavior depends on whether the <code>QueryStringBehavior</code> field in the <code>CachePolicyQueryStringsConfig</code> type is set to <code>whitelist</code> (the listed query strings <i> <b>are</b> </i> included) or <code>allExcept</code> (the listed query strings <i> <b>are not</b> </i> included, but all other query strings are).</p>"}))
    CachePolicyQueryStringsConfig.type = Types::CachePolicyQueryStringsConfig
    CachePolicySummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: CachePolicyType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of cache policy, either <code>managed</code> (created by Amazon Web Services) or <code>custom</code> (created in this Amazon Web Services account).</p>", "smithy.api#required" => {}}))
    CachePolicySummary.add_member(:cache_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: CachePolicy, location_name: 'CachePolicy', traits: {"smithy.api#documentation" => "<p>The cache policy.</p>", "smithy.api#required" => {}}))
    CachePolicySummary.type = Types::CachePolicySummary
    CachePolicySummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CachePolicySummary, traits: {"smithy.api#xmlName" => "CachePolicySummary"})
    CachePolicyType.add_member(:managed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'managed', traits: {"smithy.api#enumValue" => "managed"}))
    CachePolicyType.add_member(:custom, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'custom', traits: {"smithy.api#enumValue" => "custom"}))
    CachedMethods.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of HTTP methods for which you want CloudFront to cache responses. Valid values are <code>2</code> (for caching responses to <code>GET</code> and <code>HEAD</code> requests) and <code>3</code> (for caching responses to <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> requests).</p>", "smithy.api#required" => {}}))
    CachedMethods.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: MethodsList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>A complex type that contains the HTTP methods that you want CloudFront to cache responses to. Valid values for <code>CachedMethods</code> include <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code>, depending on which caching option you choose. For more information, see the preceding section.</p>", "smithy.api#required" => {}}))
    CachedMethods.type = Types::CachedMethods
    CannotChangeImmutablePublicKeyFields.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    CannotChangeImmutablePublicKeyFields.type = Types::CannotChangeImmutablePublicKeyFields
    CannotDeleteEntityWhileInUse.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    CannotDeleteEntityWhileInUse.type = Types::CannotDeleteEntityWhileInUse
    CannotUpdateEntityWhileInUse.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    CannotUpdateEntityWhileInUse.type = Types::CannotUpdateEntityWhileInUse
    Certificate.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the ACM certificate.</p>", "smithy.api#required" => {}}))
    Certificate.type = Types::Certificate
    CertificateSource.add_member(:cloudfront, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cloudfront', traits: {"smithy.api#enumValue" => "cloudfront"}))
    CertificateSource.add_member(:iam, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iam', traits: {"smithy.api#enumValue" => "iam"}))
    CertificateSource.add_member(:acm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'acm', traits: {"smithy.api#enumValue" => "acm"}))
    CertificateTransparencyLoggingPreference.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Enabled', traits: {"smithy.api#enumValue" => "enabled"}))
    CertificateTransparencyLoggingPreference.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Disabled', traits: {"smithy.api#enumValue" => "disabled"}))
    CloudFrontOriginAccessIdentity.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID for the origin access identity, for example, <code>E74FTE3AJFJ256A</code>. </p>", "smithy.api#required" => {}}))
    CloudFrontOriginAccessIdentity.add_member(:s3_canonical_user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3CanonicalUserId', traits: {"smithy.api#documentation" => "<p>The Amazon S3 canonical user ID for the origin access identity, used when giving the origin access identity read permission to an object in Amazon S3.</p>", "smithy.api#required" => {}}))
    CloudFrontOriginAccessIdentity.add_member(:cloud_front_origin_access_identity_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudFrontOriginAccessIdentityConfig, location_name: 'CloudFrontOriginAccessIdentityConfig', traits: {"smithy.api#documentation" => "<p>The current configuration information for the identity.</p>"}))
    CloudFrontOriginAccessIdentity.type = Types::CloudFrontOriginAccessIdentity
    CloudFrontOriginAccessIdentityAlreadyExists.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    CloudFrontOriginAccessIdentityAlreadyExists.type = Types::CloudFrontOriginAccessIdentityAlreadyExists
    CloudFrontOriginAccessIdentityConfig.add_member(:caller_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CallerReference', traits: {"smithy.api#documentation" => "<p>A unique value (for example, a date-time stamp) that ensures that the request can't be replayed.</p> <p>If the value of <code>CallerReference</code> is new (regardless of the content of the <code>CloudFrontOriginAccessIdentityConfig</code> object), a new origin access identity is created.</p> <p>If the <code>CallerReference</code> is a value already sent in a previous identity request, and the content of the <code>CloudFrontOriginAccessIdentityConfig</code> is identical to the original request (ignoring white space), the response includes the same information returned to the original request.</p> <p>If the <code>CallerReference</code> is a value you already sent in a previous request to create an identity, but the content of the <code>CloudFrontOriginAccessIdentityConfig</code> is different from the original request, CloudFront returns a <code>CloudFrontOriginAccessIdentityAlreadyExists</code> error. </p>", "smithy.api#required" => {}}))
    CloudFrontOriginAccessIdentityConfig.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Comment', traits: {"smithy.api#documentation" => "<p>A comment to describe the origin access identity. The comment cannot be longer than 128 characters.</p>", "smithy.api#required" => {}}))
    CloudFrontOriginAccessIdentityConfig.type = Types::CloudFrontOriginAccessIdentityConfig
    CloudFrontOriginAccessIdentityInUse.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    CloudFrontOriginAccessIdentityInUse.type = Types::CloudFrontOriginAccessIdentityInUse
    CloudFrontOriginAccessIdentityList.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>Use this when paginating results to indicate where to begin in your list of origin access identities. The results include identities in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last identity on that page).</p>", "smithy.api#required" => {}}))
    CloudFrontOriginAccessIdentityList.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value you can use for the <code>Marker</code> request parameter to continue listing your origin access identities where they left off.</p>"}))
    CloudFrontOriginAccessIdentityList.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of origin access identities you want in the response body.</p>", "smithy.api#required" => {}}))
    CloudFrontOriginAccessIdentityList.add_member(:is_truncated, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsTruncated', traits: {"smithy.api#documentation" => "<p>A flag that indicates whether more origin access identities remain to be listed. If your results were truncated, you can make a follow-up pagination request using the <code>Marker</code> request parameter to retrieve more items in the list.</p>", "smithy.api#required" => {}}))
    CloudFrontOriginAccessIdentityList.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of CloudFront origin access identities that were created by the current Amazon Web Services account.</p>", "smithy.api#required" => {}}))
    CloudFrontOriginAccessIdentityList.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudFrontOriginAccessIdentitySummaryList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>A complex type that contains one <code>CloudFrontOriginAccessIdentitySummary</code> element for each origin access identity that was created by the current Amazon Web Services account.</p>"}))
    CloudFrontOriginAccessIdentityList.type = Types::CloudFrontOriginAccessIdentityList
    CloudFrontOriginAccessIdentitySummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID for the origin access identity. For example: <code>E74FTE3AJFJ256A</code>.</p>", "smithy.api#required" => {}}))
    CloudFrontOriginAccessIdentitySummary.add_member(:s3_canonical_user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3CanonicalUserId', traits: {"smithy.api#documentation" => "<p>The Amazon S3 canonical user ID for the origin access identity, which you use when giving the origin access identity read permission to an object in Amazon S3.</p>", "smithy.api#required" => {}}))
    CloudFrontOriginAccessIdentitySummary.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Comment', traits: {"smithy.api#documentation" => "<p>The comment for this origin access identity, as originally specified when created.</p>", "smithy.api#required" => {}}))
    CloudFrontOriginAccessIdentitySummary.type = Types::CloudFrontOriginAccessIdentitySummary
    CloudFrontOriginAccessIdentitySummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CloudFrontOriginAccessIdentitySummary, traits: {"smithy.api#xmlName" => "CloudFrontOriginAccessIdentitySummary"})
    ConflictingAlias.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Alias', traits: {"smithy.api#documentation" => "<p>An alias (also called a CNAME).</p>"}))
    ConflictingAlias.add_member(:distribution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DistributionId', traits: {"smithy.api#documentation" => "<p>The (partially hidden) ID of the CloudFront standard distribution associated with the alias.</p>"}))
    ConflictingAlias.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The (partially hidden) ID of the Amazon Web Services account that owns the standard distribution that's associated with the alias.</p>"}))
    ConflictingAlias.type = Types::ConflictingAlias
    ConflictingAliases.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingAlias, traits: {"smithy.api#xmlName" => "ConflictingAlias"})
    ConflictingAliasesList.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If there are more items in the list than are in this response, this element is present. It contains the value that you should use in the <code>Marker</code> field of a subsequent request to continue listing conflicting aliases where you left off.</p>"}))
    ConflictingAliasesList.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of conflicting aliases requested.</p>"}))
    ConflictingAliasesList.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of conflicting aliases returned in the response.</p>"}))
    ConflictingAliasesList.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingAliases, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>Contains the conflicting aliases in the list.</p>"}))
    ConflictingAliasesList.type = Types::ConflictingAliasesList
    ConnectionGroup.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the connection group.</p>"}))
    ConnectionGroup.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the connection group.</p>"}))
    ConnectionGroup.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the connection group.</p>"}))
    ConnectionGroup.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The date and time when the connection group was created.</p>"}))
    ConnectionGroup.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The date and time when the connection group was updated.</p>"}))
    ConnectionGroup.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    ConnectionGroup.add_member(:ipv6_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Ipv6Enabled', traits: {"smithy.api#documentation" => "<p>IPv6 is enabled for the connection group.</p>"}))
    ConnectionGroup.add_member(:routing_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoutingEndpoint', traits: {"smithy.api#documentation" => "<p>The routing endpoint (also known as the DNS name) that is assigned to the connection group, such as d111111abcdef8.cloudfront.net.</p>"}))
    ConnectionGroup.add_member(:anycast_ip_list_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AnycastIpListId', traits: {"smithy.api#documentation" => "<p>The ID of the Anycast static IP list.</p>"}))
    ConnectionGroup.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the connection group.</p>"}))
    ConnectionGroup.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Whether the connection group is enabled.</p>"}))
    ConnectionGroup.add_member(:is_default, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsDefault', traits: {"smithy.api#documentation" => "<p>Whether the connection group is the default connection group for the distribution tenants.</p>"}))
    ConnectionGroup.type = Types::ConnectionGroup
    ConnectionGroupAssociationFilter.add_member(:anycast_ip_list_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AnycastIpListId', traits: {"smithy.api#documentation" => "<p>The ID of the Anycast static IP list.</p>"}))
    ConnectionGroupAssociationFilter.type = Types::ConnectionGroupAssociationFilter
    ConnectionGroupSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the connection group.</p>", "smithy.api#required" => {}}))
    ConnectionGroupSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the connection group.</p>", "smithy.api#required" => {}}))
    ConnectionGroupSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the connection group.</p>", "smithy.api#required" => {}}))
    ConnectionGroupSummary.add_member(:routing_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoutingEndpoint', traits: {"smithy.api#documentation" => "<p>The routing endpoint (also known as the DNS name) that is assigned to the connection group, such as d111111abcdef8.cloudfront.net.</p>", "smithy.api#required" => {}}))
    ConnectionGroupSummary.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The date and time when the connection group was created.</p>", "smithy.api#required" => {}}))
    ConnectionGroupSummary.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The date and time when the connection group was updated.</p>", "smithy.api#required" => {}}))
    ConnectionGroupSummary.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the connection group.</p>", "smithy.api#required" => {}}))
    ConnectionGroupSummary.add_member(:anycast_ip_list_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AnycastIpListId', traits: {"smithy.api#documentation" => "<p>The ID of the Anycast static IP list.</p>"}))
    ConnectionGroupSummary.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Whether the connection group is enabled</p>"}))
    ConnectionGroupSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the connection group.</p>"}))
    ConnectionGroupSummary.add_member(:is_default, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsDefault', traits: {"smithy.api#documentation" => "<p>Whether the connection group is the default connection group for the distribution tenants.</p>"}))
    ConnectionGroupSummary.type = Types::ConnectionGroupSummary
    ConnectionGroupSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionGroupSummary, traits: {"smithy.api#xmlName" => "ConnectionGroupSummary"})
    ConnectionMode.add_member(:direct, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Direct', traits: {"smithy.api#enumValue" => "direct"}))
    ConnectionMode.add_member(:tenant_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TenantOnly', traits: {"smithy.api#enumValue" => "tenant-only"}))
    ContentTypeProfile.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: Format, location_name: 'Format', traits: {"smithy.api#documentation" => "<p>The format for a field-level encryption content type-profile mapping.</p>", "smithy.api#required" => {}}))
    ContentTypeProfile.add_member(:profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProfileId', traits: {"smithy.api#documentation" => "<p>The profile ID for a field-level encryption content type-profile mapping.</p>"}))
    ContentTypeProfile.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ContentType', traits: {"smithy.api#documentation" => "<p>The content type for a field-level encryption content type-profile mapping.</p>", "smithy.api#required" => {}}))
    ContentTypeProfile.type = Types::ContentTypeProfile
    ContentTypeProfileConfig.add_member(:forward_when_content_type_is_unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ForwardWhenContentTypeIsUnknown', traits: {"smithy.api#documentation" => "<p>The setting in a field-level encryption content type-profile mapping that specifies what to do when an unknown content type is provided for the profile. If true, content is forwarded without being encrypted when the content type is unknown. If false (the default), an error is returned when the content type is unknown.</p>", "smithy.api#required" => {}}))
    ContentTypeProfileConfig.add_member(:content_type_profiles, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentTypeProfiles, location_name: 'ContentTypeProfiles', traits: {"smithy.api#documentation" => "<p>The configuration for a field-level encryption content type-profile.</p>"}))
    ContentTypeProfileConfig.type = Types::ContentTypeProfileConfig
    ContentTypeProfileList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ContentTypeProfile, traits: {"smithy.api#xmlName" => "ContentTypeProfile"})
    ContentTypeProfiles.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of field-level encryption content type-profile mappings.</p>", "smithy.api#required" => {}}))
    ContentTypeProfiles.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentTypeProfileList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>Items in a field-level encryption content type-profile mapping.</p>"}))
    ContentTypeProfiles.type = Types::ContentTypeProfiles
    ContinuousDeploymentPolicy.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the continuous deployment policy.</p>", "smithy.api#required" => {}}))
    ContinuousDeploymentPolicy.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The date and time the continuous deployment policy was last modified.</p>", "smithy.api#required" => {}}))
    ContinuousDeploymentPolicy.add_member(:continuous_deployment_policy_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousDeploymentPolicyConfig, location_name: 'ContinuousDeploymentPolicyConfig', traits: {"smithy.api#required" => {}}))
    ContinuousDeploymentPolicy.type = Types::ContinuousDeploymentPolicy
    ContinuousDeploymentPolicyAlreadyExists.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ContinuousDeploymentPolicyAlreadyExists.type = Types::ContinuousDeploymentPolicyAlreadyExists
    ContinuousDeploymentPolicyConfig.add_member(:staging_distribution_dns_names, Smithy::Schema::Shapes::ShapeRef.new(shape: StagingDistributionDnsNames, location_name: 'StagingDistributionDnsNames', traits: {"smithy.api#documentation" => "<p>The CloudFront domain name of the staging distribution. For example: <code>d111111abcdef8.cloudfront.net</code>.</p>", "smithy.api#required" => {}}))
    ContinuousDeploymentPolicyConfig.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>A Boolean that indicates whether this continuous deployment policy is enabled (in effect). When this value is <code>true</code>, this policy is enabled and in effect. When this value is <code>false</code>, this policy is not enabled and has no effect.</p>", "smithy.api#required" => {}}))
    ContinuousDeploymentPolicyConfig.add_member(:traffic_config, Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficConfig, location_name: 'TrafficConfig', traits: {"smithy.api#documentation" => "<p>Contains the parameters for routing production traffic from your primary to staging distributions.</p>"}))
    ContinuousDeploymentPolicyConfig.type = Types::ContinuousDeploymentPolicyConfig
    ContinuousDeploymentPolicyInUse.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ContinuousDeploymentPolicyInUse.type = Types::ContinuousDeploymentPolicyInUse
    ContinuousDeploymentPolicyList.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>Indicates the next page of continuous deployment policies. To get the next page of the list, use this value in the <code>Marker</code> field of your request.</p>"}))
    ContinuousDeploymentPolicyList.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of continuous deployment policies that were specified in your request.</p>", "smithy.api#required" => {}}))
    ContinuousDeploymentPolicyList.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The total number of continuous deployment policies in your Amazon Web Services account, regardless of the <code>MaxItems</code> value.</p>", "smithy.api#required" => {}}))
    ContinuousDeploymentPolicyList.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousDeploymentPolicySummaryList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>A list of continuous deployment policy items.</p>"}))
    ContinuousDeploymentPolicyList.type = Types::ContinuousDeploymentPolicyList
    ContinuousDeploymentPolicySummary.add_member(:continuous_deployment_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousDeploymentPolicy, location_name: 'ContinuousDeploymentPolicy', traits: {"smithy.api#documentation" => "<p>The continuous deployment policy.</p>", "smithy.api#required" => {}}))
    ContinuousDeploymentPolicySummary.type = Types::ContinuousDeploymentPolicySummary
    ContinuousDeploymentPolicySummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousDeploymentPolicySummary, traits: {"smithy.api#xmlName" => "ContinuousDeploymentPolicySummary"})
    ContinuousDeploymentPolicyType.add_member(:single_weight, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SingleWeight', traits: {"smithy.api#enumValue" => "SingleWeight"}))
    ContinuousDeploymentPolicyType.add_member(:single_header, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SingleHeader', traits: {"smithy.api#enumValue" => "SingleHeader"}))
    ContinuousDeploymentSingleHeaderConfig.add_member(:header, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Header', traits: {"smithy.api#documentation" => "<p>The request header name that you want CloudFront to send to your staging distribution. The header must contain the prefix <code>aws-cf-cd-</code>.</p>", "smithy.api#required" => {}}))
    ContinuousDeploymentSingleHeaderConfig.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The request header value.</p>", "smithy.api#required" => {}}))
    ContinuousDeploymentSingleHeaderConfig.type = Types::ContinuousDeploymentSingleHeaderConfig
    ContinuousDeploymentSingleWeightConfig.add_member(:weight, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Weight', traits: {"smithy.api#documentation" => "<p>The percentage of traffic to send to a staging distribution, expressed as a decimal number between 0 and 0.15. For example, a value of 0.10 means 10% of traffic is sent to the staging distribution.</p>", "smithy.api#required" => {}}))
    ContinuousDeploymentSingleWeightConfig.add_member(:session_stickiness_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionStickinessConfig, location_name: 'SessionStickinessConfig'))
    ContinuousDeploymentSingleWeightConfig.type = Types::ContinuousDeploymentSingleWeightConfig
    CookieNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "Name"})
    CookieNames.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of cookie names in the <code>Items</code> list.</p>", "smithy.api#required" => {}}))
    CookieNames.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: CookieNameList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>A list of cookie names.</p>"}))
    CookieNames.type = Types::CookieNames
    CookiePreference.add_member(:forward, Smithy::Schema::Shapes::ShapeRef.new(shape: ItemSelection, location_name: 'Forward', traits: {"smithy.api#documentation" => "<p>This field is deprecated. We recommend that you use a cache policy or an origin request policy instead of this field.</p> <p>If you want to include cookies in the cache key, use a cache policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you want to send cookies to the origin but not include them in the cache key, use origin request policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy\">Creating origin request policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>Specifies which cookies to forward to the origin for this cache behavior: all, none, or the list of cookies specified in the <code>WhitelistedNames</code> complex type.</p> <p>Amazon S3 doesn't process cookies. When the cache behavior is forwarding requests to an Amazon S3 origin, specify none for the <code>Forward</code> element.</p>", "smithy.api#required" => {}}))
    CookiePreference.add_member(:whitelisted_names, Smithy::Schema::Shapes::ShapeRef.new(shape: CookieNames, location_name: 'WhitelistedNames', traits: {"smithy.api#documentation" => "<p>This field is deprecated. We recommend that you use a cache policy or an origin request policy instead of this field.</p> <p>If you want to include cookies in the cache key, use a cache policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you want to send cookies to the origin but not include them in the cache key, use an origin request policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy\">Creating origin request policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>Required if you specify <code>whitelist</code> for the value of <code>Forward</code>. A complex type that specifies how many different cookies you want CloudFront to forward to the origin for this cache behavior and, if you want to forward selected cookies, the names of those cookies.</p> <p>If you specify <code>all</code> or <code>none</code> for the value of <code>Forward</code>, omit <code>WhitelistedNames</code>. If you change the value of <code>Forward</code> from <code>whitelist</code> to <code>all</code> or <code>none</code> and you don't delete the <code>WhitelistedNames</code> element and its child elements, CloudFront deletes them automatically.</p> <p>For the current limit on the number of cookie names that you can whitelist for each cache behavior, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/xrefaws_service_limits.html#limits_cloudfront\"> CloudFront Limits</a> in the <i>Amazon Web Services General Reference</i>.</p>"}))
    CookiePreference.type = Types::CookiePreference
    CopyDistributionRequest.add_member(:primary_distribution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrimaryDistributionId', traits: {"smithy.api#documentation" => "<p>The identifier of the primary distribution whose configuration you are copying. To get a distribution ID, use <code>ListDistributions</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CopyDistributionRequest.add_member(:staging, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Staging', traits: {"smithy.api#documentation" => "<p>The type of distribution that your primary distribution will be copied to. The only valid value is <code>True</code>, indicating that you are copying to a staging distribution.</p>", "smithy.api#httpHeader" => "Staging"}))
    CopyDistributionRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The version identifier of the primary distribution whose configuration you are copying. This is the <code>ETag</code> value returned in the response to <code>GetDistribution</code> and <code>GetDistributionConfig</code>.</p>", "smithy.api#httpHeader" => "If-Match"}))
    CopyDistributionRequest.add_member(:caller_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CallerReference', traits: {"smithy.api#documentation" => "<p>A value that uniquely identifies a request to create a resource. This helps to prevent CloudFront from creating a duplicate resource if you accidentally resubmit an identical request.</p>", "smithy.api#required" => {}}))
    CopyDistributionRequest.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>A Boolean flag to specify the state of the staging distribution when it's created. When you set this value to <code>True</code>, the staging distribution is enabled. When you set this value to <code>False</code>, the staging distribution is disabled.</p> <p>If you omit this field, the default value is <code>True</code>.</p>"}))
    CopyDistributionRequest.type = Types::CopyDistributionRequest
    CopyDistributionResult.add_member(:distribution, Smithy::Schema::Shapes::ShapeRef.new(shape: Distribution, location_name: 'Distribution', traits: {"smithy.api#httpPayload" => {}}))
    CopyDistributionResult.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Location', traits: {"smithy.api#documentation" => "<p>The URL of the staging distribution.</p>", "smithy.api#httpHeader" => "Location"}))
    CopyDistributionResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The version identifier for the current version of the staging distribution.</p>", "smithy.api#httpHeader" => "ETag"}))
    CopyDistributionResult[:http_payload] = :distribution
    CopyDistributionResult[:http_payload_member] = CopyDistributionResult.member(:distribution)
    CopyDistributionResult.type = Types::CopyDistributionResult
    CreateAnycastIpListRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AnycastIpListName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Name of the Anycast static IP list.</p>", "smithy.api#required" => {}}))
    CreateAnycastIpListRequest.add_member(:ip_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'IpCount', traits: {"smithy.api#documentation" => "<p>The number of static IP addresses that are allocated to the Anycast static IP list. Valid values: 21 or 3.</p>", "smithy.api#required" => {}}))
    CreateAnycastIpListRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    CreateAnycastIpListRequest.type = Types::CreateAnycastIpListRequest
    CreateAnycastIpListResult.add_member(:anycast_ip_list, Smithy::Schema::Shapes::ShapeRef.new(shape: AnycastIpList, location_name: 'AnycastIpList', traits: {"smithy.api#documentation" => "<p>A response structure that includes the version identifier (ETag) and the created <a>AnycastIpList</a> structure.</p>", "smithy.api#httpPayload" => {}}))
    CreateAnycastIpListResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The version identifier for the current version of the Anycast static IP list.</p>", "smithy.api#httpHeader" => "ETag"}))
    CreateAnycastIpListResult[:http_payload] = :anycast_ip_list
    CreateAnycastIpListResult[:http_payload_member] = CreateAnycastIpListResult.member(:anycast_ip_list)
    CreateAnycastIpListResult.type = Types::CreateAnycastIpListResult
    CreateCachePolicyRequest.add_member(:cache_policy_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CachePolicyConfig, location_name: 'CachePolicyConfig', traits: {"smithy.api#documentation" => "<p>A cache policy configuration.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "CachePolicyConfig"}))
    CreateCachePolicyRequest[:http_payload] = :cache_policy_config
    CreateCachePolicyRequest[:http_payload_member] = CreateCachePolicyRequest.member(:cache_policy_config)
    CreateCachePolicyRequest.type = Types::CreateCachePolicyRequest
    CreateCachePolicyResult.add_member(:cache_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: CachePolicy, location_name: 'CachePolicy', traits: {"smithy.api#documentation" => "<p>A cache policy.</p>", "smithy.api#httpPayload" => {}}))
    CreateCachePolicyResult.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Location', traits: {"smithy.api#documentation" => "<p>The fully qualified URI of the cache policy just created.</p>", "smithy.api#httpHeader" => "Location"}))
    CreateCachePolicyResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the cache policy.</p>", "smithy.api#httpHeader" => "ETag"}))
    CreateCachePolicyResult[:http_payload] = :cache_policy
    CreateCachePolicyResult[:http_payload_member] = CreateCachePolicyResult.member(:cache_policy)
    CreateCachePolicyResult.type = Types::CreateCachePolicyResult
    CreateCloudFrontOriginAccessIdentityRequest.add_member(:cloud_front_origin_access_identity_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudFrontOriginAccessIdentityConfig, location_name: 'CloudFrontOriginAccessIdentityConfig', traits: {"smithy.api#documentation" => "<p>The current configuration information for the identity.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "CloudFrontOriginAccessIdentityConfig"}))
    CreateCloudFrontOriginAccessIdentityRequest[:http_payload] = :cloud_front_origin_access_identity_config
    CreateCloudFrontOriginAccessIdentityRequest[:http_payload_member] = CreateCloudFrontOriginAccessIdentityRequest.member(:cloud_front_origin_access_identity_config)
    CreateCloudFrontOriginAccessIdentityRequest.type = Types::CreateCloudFrontOriginAccessIdentityRequest
    CreateCloudFrontOriginAccessIdentityResult.add_member(:cloud_front_origin_access_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudFrontOriginAccessIdentity, location_name: 'CloudFrontOriginAccessIdentity', traits: {"smithy.api#documentation" => "<p>The origin access identity's information.</p>", "smithy.api#httpPayload" => {}}))
    CreateCloudFrontOriginAccessIdentityResult.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Location', traits: {"smithy.api#documentation" => "<p>The fully qualified URI of the new origin access identity just created.</p>", "smithy.api#httpHeader" => "Location"}))
    CreateCloudFrontOriginAccessIdentityResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the origin access identity created.</p>", "smithy.api#httpHeader" => "ETag"}))
    CreateCloudFrontOriginAccessIdentityResult[:http_payload] = :cloud_front_origin_access_identity
    CreateCloudFrontOriginAccessIdentityResult[:http_payload_member] = CreateCloudFrontOriginAccessIdentityResult.member(:cloud_front_origin_access_identity)
    CreateCloudFrontOriginAccessIdentityResult.type = Types::CreateCloudFrontOriginAccessIdentityResult
    CreateConnectionGroupRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the connection group. Enter a friendly identifier that is unique within your Amazon Web Services account. This name can't be updated after you create the connection group.</p>", "smithy.api#required" => {}}))
    CreateConnectionGroupRequest.add_member(:ipv6_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Ipv6Enabled', traits: {"smithy.api#documentation" => "<p>Enable IPv6 for the connection group. The default is <code>true</code>. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesEnableIPv6\">Enable IPv6</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"}))
    CreateConnectionGroupRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    CreateConnectionGroupRequest.add_member(:anycast_ip_list_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AnycastIpListId', traits: {"smithy.api#documentation" => "<p>The ID of the Anycast static IP list.</p>"}))
    CreateConnectionGroupRequest.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Enable the connection group.</p>"}))
    CreateConnectionGroupRequest.type = Types::CreateConnectionGroupRequest
    CreateConnectionGroupResult.add_member(:connection_group, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionGroup, location_name: 'ConnectionGroup', traits: {"smithy.api#documentation" => "<p>The connection group that you created.</p>", "smithy.api#httpPayload" => {}}))
    CreateConnectionGroupResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the connection group.</p>", "smithy.api#httpHeader" => "ETag"}))
    CreateConnectionGroupResult[:http_payload] = :connection_group
    CreateConnectionGroupResult[:http_payload_member] = CreateConnectionGroupResult.member(:connection_group)
    CreateConnectionGroupResult.type = Types::CreateConnectionGroupResult
    CreateContinuousDeploymentPolicyRequest.add_member(:continuous_deployment_policy_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousDeploymentPolicyConfig, location_name: 'ContinuousDeploymentPolicyConfig', traits: {"smithy.api#documentation" => "<p>Contains the configuration for a continuous deployment policy.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "ContinuousDeploymentPolicyConfig"}))
    CreateContinuousDeploymentPolicyRequest[:http_payload] = :continuous_deployment_policy_config
    CreateContinuousDeploymentPolicyRequest[:http_payload_member] = CreateContinuousDeploymentPolicyRequest.member(:continuous_deployment_policy_config)
    CreateContinuousDeploymentPolicyRequest.type = Types::CreateContinuousDeploymentPolicyRequest
    CreateContinuousDeploymentPolicyResult.add_member(:continuous_deployment_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousDeploymentPolicy, location_name: 'ContinuousDeploymentPolicy', traits: {"smithy.api#documentation" => "<p>A continuous deployment policy.</p>", "smithy.api#httpPayload" => {}}))
    CreateContinuousDeploymentPolicyResult.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Location', traits: {"smithy.api#documentation" => "<p>The location of the continuous deployment policy.</p>", "smithy.api#httpHeader" => "Location"}))
    CreateContinuousDeploymentPolicyResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The version identifier for the current version of the continuous deployment policy.</p>", "smithy.api#httpHeader" => "ETag"}))
    CreateContinuousDeploymentPolicyResult[:http_payload] = :continuous_deployment_policy
    CreateContinuousDeploymentPolicyResult[:http_payload_member] = CreateContinuousDeploymentPolicyResult.member(:continuous_deployment_policy)
    CreateContinuousDeploymentPolicyResult.type = Types::CreateContinuousDeploymentPolicyResult
    CreateDistributionRequest.add_member(:distribution_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionConfig, location_name: 'DistributionConfig', traits: {"smithy.api#documentation" => "<p>The distribution's configuration information.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "DistributionConfig"}))
    CreateDistributionRequest[:http_payload] = :distribution_config
    CreateDistributionRequest[:http_payload_member] = CreateDistributionRequest.member(:distribution_config)
    CreateDistributionRequest.type = Types::CreateDistributionRequest
    CreateDistributionResult.add_member(:distribution, Smithy::Schema::Shapes::ShapeRef.new(shape: Distribution, location_name: 'Distribution', traits: {"smithy.api#documentation" => "<p>The distribution's information.</p>", "smithy.api#httpPayload" => {}}))
    CreateDistributionResult.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Location', traits: {"smithy.api#documentation" => "<p>The fully qualified URI of the new distribution resource just created.</p>", "smithy.api#httpHeader" => "Location"}))
    CreateDistributionResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the distribution created.</p>", "smithy.api#httpHeader" => "ETag"}))
    CreateDistributionResult[:http_payload] = :distribution
    CreateDistributionResult[:http_payload_member] = CreateDistributionResult.member(:distribution)
    CreateDistributionResult.type = Types::CreateDistributionResult
    CreateDistributionTenantRequest.add_member(:distribution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DistributionId', traits: {"smithy.api#documentation" => "<p>The ID of the multi-tenant distribution to use for creating the distribution tenant.</p>", "smithy.api#required" => {}}))
    CreateDistributionTenantRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the distribution tenant. Enter a friendly identifier that is unique within your Amazon Web Services account. This name can't be updated after you create the distribution tenant.</p>", "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-.]{1,126}[a-zA-Z0-9]$", "smithy.api#required" => {}}))
    CreateDistributionTenantRequest.add_member(:domains, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainList, location_name: 'Domains', traits: {"smithy.api#documentation" => "<p>The domains associated with the distribution tenant. You must specify at least one domain in the request.</p>", "smithy.api#required" => {}}))
    CreateDistributionTenantRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    CreateDistributionTenantRequest.add_member(:customizations, Smithy::Schema::Shapes::ShapeRef.new(shape: Customizations, location_name: 'Customizations', traits: {"smithy.api#documentation" => "<p>Customizations for the distribution tenant. For each distribution tenant, you can specify the geographic restrictions, and the Amazon Resource Names (ARNs) for the ACM certificate and WAF web ACL. These are specific values that you can override or disable from the multi-tenant distribution that was used to create the distribution tenant.</p>"}))
    CreateDistributionTenantRequest.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: Parameters, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>A list of parameter values to add to the resource. A parameter is specified as a key-value pair. A valid parameter value must exist for any parameter that is marked as required in the multi-tenant distribution.</p>"}))
    CreateDistributionTenantRequest.add_member(:connection_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConnectionGroupId', traits: {"smithy.api#documentation" => "<p>The ID of the connection group to associate with the distribution tenant.</p>"}))
    CreateDistributionTenantRequest.add_member(:managed_certificate_request, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedCertificateRequest, location_name: 'ManagedCertificateRequest', traits: {"smithy.api#documentation" => "<p>The configuration for the CloudFront managed ACM certificate request.</p>"}))
    CreateDistributionTenantRequest.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Indicates whether the distribution tenant should be enabled when created. If the distribution tenant is disabled, the distribution tenant won't serve traffic.</p>"}))
    CreateDistributionTenantRequest.type = Types::CreateDistributionTenantRequest
    CreateDistributionTenantResult.add_member(:distribution_tenant, Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionTenant, location_name: 'DistributionTenant', traits: {"smithy.api#documentation" => "<p>The distribution tenant that you created.</p>", "smithy.api#httpPayload" => {}}))
    CreateDistributionTenantResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the distribution tenant.</p>", "smithy.api#httpHeader" => "ETag"}))
    CreateDistributionTenantResult[:http_payload] = :distribution_tenant
    CreateDistributionTenantResult[:http_payload_member] = CreateDistributionTenantResult.member(:distribution_tenant)
    CreateDistributionTenantResult.type = Types::CreateDistributionTenantResult
    CreateDistributionWithTagsRequest.add_member(:distribution_config_with_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionConfigWithTags, location_name: 'DistributionConfigWithTags', traits: {"smithy.api#documentation" => "<p>The distribution's configuration information.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "DistributionConfigWithTags"}))
    CreateDistributionWithTagsRequest[:http_payload] = :distribution_config_with_tags
    CreateDistributionWithTagsRequest[:http_payload_member] = CreateDistributionWithTagsRequest.member(:distribution_config_with_tags)
    CreateDistributionWithTagsRequest.type = Types::CreateDistributionWithTagsRequest
    CreateDistributionWithTagsResult.add_member(:distribution, Smithy::Schema::Shapes::ShapeRef.new(shape: Distribution, location_name: 'Distribution', traits: {"smithy.api#documentation" => "<p>The distribution's information.</p>", "smithy.api#httpPayload" => {}}))
    CreateDistributionWithTagsResult.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Location', traits: {"smithy.api#documentation" => "<p>The fully qualified URI of the new distribution resource just created.</p>", "smithy.api#httpHeader" => "Location"}))
    CreateDistributionWithTagsResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the distribution created.</p>", "smithy.api#httpHeader" => "ETag"}))
    CreateDistributionWithTagsResult[:http_payload] = :distribution
    CreateDistributionWithTagsResult[:http_payload_member] = CreateDistributionWithTagsResult.member(:distribution)
    CreateDistributionWithTagsResult.type = Types::CreateDistributionWithTagsResult
    CreateFieldLevelEncryptionConfigRequest.add_member(:field_level_encryption_config, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldLevelEncryptionConfig, location_name: 'FieldLevelEncryptionConfig', traits: {"smithy.api#documentation" => "<p>The request to create a new field-level encryption configuration.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "FieldLevelEncryptionConfig"}))
    CreateFieldLevelEncryptionConfigRequest[:http_payload] = :field_level_encryption_config
    CreateFieldLevelEncryptionConfigRequest[:http_payload_member] = CreateFieldLevelEncryptionConfigRequest.member(:field_level_encryption_config)
    CreateFieldLevelEncryptionConfigRequest.type = Types::CreateFieldLevelEncryptionConfigRequest
    CreateFieldLevelEncryptionConfigResult.add_member(:field_level_encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldLevelEncryption, location_name: 'FieldLevelEncryption', traits: {"smithy.api#documentation" => "<p>Returned when you create a new field-level encryption configuration.</p>", "smithy.api#httpPayload" => {}}))
    CreateFieldLevelEncryptionConfigResult.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Location', traits: {"smithy.api#documentation" => "<p>The fully qualified URI of the new configuration resource just created.</p>", "smithy.api#httpHeader" => "Location"}))
    CreateFieldLevelEncryptionConfigResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the field level encryption configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>", "smithy.api#httpHeader" => "ETag"}))
    CreateFieldLevelEncryptionConfigResult[:http_payload] = :field_level_encryption
    CreateFieldLevelEncryptionConfigResult[:http_payload_member] = CreateFieldLevelEncryptionConfigResult.member(:field_level_encryption)
    CreateFieldLevelEncryptionConfigResult.type = Types::CreateFieldLevelEncryptionConfigResult
    CreateFieldLevelEncryptionProfileRequest.add_member(:field_level_encryption_profile_config, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldLevelEncryptionProfileConfig, location_name: 'FieldLevelEncryptionProfileConfig', traits: {"smithy.api#documentation" => "<p>The request to create a field-level encryption profile.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "FieldLevelEncryptionProfileConfig"}))
    CreateFieldLevelEncryptionProfileRequest[:http_payload] = :field_level_encryption_profile_config
    CreateFieldLevelEncryptionProfileRequest[:http_payload_member] = CreateFieldLevelEncryptionProfileRequest.member(:field_level_encryption_profile_config)
    CreateFieldLevelEncryptionProfileRequest.type = Types::CreateFieldLevelEncryptionProfileRequest
    CreateFieldLevelEncryptionProfileResult.add_member(:field_level_encryption_profile, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldLevelEncryptionProfile, location_name: 'FieldLevelEncryptionProfile', traits: {"smithy.api#documentation" => "<p>Returned when you create a new field-level encryption profile.</p>", "smithy.api#httpPayload" => {}}))
    CreateFieldLevelEncryptionProfileResult.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Location', traits: {"smithy.api#documentation" => "<p>The fully qualified URI of the new profile resource just created.</p>", "smithy.api#httpHeader" => "Location"}))
    CreateFieldLevelEncryptionProfileResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the field level encryption profile. For example: <code>E2QWRUHAPOMQZL</code>.</p>", "smithy.api#httpHeader" => "ETag"}))
    CreateFieldLevelEncryptionProfileResult[:http_payload] = :field_level_encryption_profile
    CreateFieldLevelEncryptionProfileResult[:http_payload_member] = CreateFieldLevelEncryptionProfileResult.member(:field_level_encryption_profile)
    CreateFieldLevelEncryptionProfileResult.type = Types::CreateFieldLevelEncryptionProfileResult
    CreateFunctionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A name to identify the function.</p>", "smithy.api#required" => {}}))
    CreateFunctionRequest.add_member(:function_config, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionConfig, location_name: 'FunctionConfig', traits: {"smithy.api#documentation" => "<p>Configuration information about the function, including an optional comment and the function's runtime.</p>", "smithy.api#required" => {}}))
    CreateFunctionRequest.add_member(:function_code, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionBlob, location_name: 'FunctionCode', traits: {"smithy.api#documentation" => "<p>The function code. For more information about writing a CloudFront function, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/writing-function-code.html\">Writing function code for CloudFront Functions</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    CreateFunctionRequest.type = Types::CreateFunctionRequest
    CreateFunctionResult.add_member(:function_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionSummary, location_name: 'FunctionSummary', traits: {"smithy.api#documentation" => "<p>Contains configuration information and metadata about a CloudFront function.</p>", "smithy.api#httpPayload" => {}}))
    CreateFunctionResult.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Location', traits: {"smithy.api#documentation" => "<p>The URL of the CloudFront function. Use the URL to manage the function with the CloudFront API.</p>", "smithy.api#httpHeader" => "Location"}))
    CreateFunctionResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The version identifier for the current version of the CloudFront function.</p>", "smithy.api#httpHeader" => "ETag"}))
    CreateFunctionResult[:http_payload] = :function_summary
    CreateFunctionResult[:http_payload_member] = CreateFunctionResult.member(:function_summary)
    CreateFunctionResult.type = Types::CreateFunctionResult
    CreateInvalidationForDistributionTenantRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the distribution tenant.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateInvalidationForDistributionTenantRequest.add_member(:invalidation_batch, Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidationBatch, location_name: 'InvalidationBatch', traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "InvalidationBatch"}))
    CreateInvalidationForDistributionTenantRequest[:http_payload] = :invalidation_batch
    CreateInvalidationForDistributionTenantRequest[:http_payload_member] = CreateInvalidationForDistributionTenantRequest.member(:invalidation_batch)
    CreateInvalidationForDistributionTenantRequest.type = Types::CreateInvalidationForDistributionTenantRequest
    CreateInvalidationForDistributionTenantResult.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Location', traits: {"smithy.api#documentation" => "<p>The location for the invalidation.</p>", "smithy.api#httpHeader" => "Location"}))
    CreateInvalidationForDistributionTenantResult.add_member(:invalidation, Smithy::Schema::Shapes::ShapeRef.new(shape: Invalidation, location_name: 'Invalidation', traits: {"smithy.api#httpPayload" => {}}))
    CreateInvalidationForDistributionTenantResult[:http_payload] = :invalidation
    CreateInvalidationForDistributionTenantResult[:http_payload_member] = CreateInvalidationForDistributionTenantResult.member(:invalidation)
    CreateInvalidationForDistributionTenantResult.type = Types::CreateInvalidationForDistributionTenantResult
    CreateInvalidationRequest.add_member(:distribution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DistributionId', traits: {"smithy.api#documentation" => "<p>The distribution's id.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateInvalidationRequest.add_member(:invalidation_batch, Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidationBatch, location_name: 'InvalidationBatch', traits: {"smithy.api#documentation" => "<p>The batch information for the invalidation.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "InvalidationBatch"}))
    CreateInvalidationRequest[:http_payload] = :invalidation_batch
    CreateInvalidationRequest[:http_payload_member] = CreateInvalidationRequest.member(:invalidation_batch)
    CreateInvalidationRequest.type = Types::CreateInvalidationRequest
    CreateInvalidationResult.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Location', traits: {"smithy.api#documentation" => "<p>The fully qualified URI of the distribution and invalidation batch request, including the <code>Invalidation ID</code>.</p>", "smithy.api#httpHeader" => "Location"}))
    CreateInvalidationResult.add_member(:invalidation, Smithy::Schema::Shapes::ShapeRef.new(shape: Invalidation, location_name: 'Invalidation', traits: {"smithy.api#documentation" => "<p>The invalidation's information.</p>", "smithy.api#httpPayload" => {}}))
    CreateInvalidationResult[:http_payload] = :invalidation
    CreateInvalidationResult[:http_payload_member] = CreateInvalidationResult.member(:invalidation)
    CreateInvalidationResult.type = Types::CreateInvalidationResult
    CreateKeyGroupRequest.add_member(:key_group_config, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyGroupConfig, location_name: 'KeyGroupConfig', traits: {"smithy.api#documentation" => "<p>A key group configuration.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "KeyGroupConfig"}))
    CreateKeyGroupRequest[:http_payload] = :key_group_config
    CreateKeyGroupRequest[:http_payload_member] = CreateKeyGroupRequest.member(:key_group_config)
    CreateKeyGroupRequest.type = Types::CreateKeyGroupRequest
    CreateKeyGroupResult.add_member(:key_group, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyGroup, location_name: 'KeyGroup', traits: {"smithy.api#documentation" => "<p>The key group that was just created.</p>", "smithy.api#httpPayload" => {}}))
    CreateKeyGroupResult.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Location', traits: {"smithy.api#documentation" => "<p>The URL of the key group.</p>", "smithy.api#httpHeader" => "Location"}))
    CreateKeyGroupResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The identifier for this version of the key group.</p>", "smithy.api#httpHeader" => "ETag"}))
    CreateKeyGroupResult[:http_payload] = :key_group
    CreateKeyGroupResult[:http_payload_member] = CreateKeyGroupResult.member(:key_group)
    CreateKeyGroupResult.type = Types::CreateKeyGroupResult
    CreateKeyValueStoreRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValueStoreName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the key value store. The minimum length is 1 character and the maximum length is 64 characters.</p>", "smithy.api#required" => {}}))
    CreateKeyValueStoreRequest.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValueStoreComment, location_name: 'Comment', traits: {"smithy.api#documentation" => "<p>The comment of the key value store.</p>"}))
    CreateKeyValueStoreRequest.add_member(:import_source, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportSource, location_name: 'ImportSource', traits: {"smithy.api#documentation" => "<p>The S3 bucket that provides the source for the import. The source must be in a valid JSON format.</p>"}))
    CreateKeyValueStoreRequest.type = Types::CreateKeyValueStoreRequest
    CreateKeyValueStoreResult.add_member(:key_value_store, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValueStore, location_name: 'KeyValueStore', traits: {"smithy.api#documentation" => "<p>The resulting key value store.</p>", "smithy.api#httpPayload" => {}}))
    CreateKeyValueStoreResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The <code>ETag</code> in the resulting key value store.</p>", "smithy.api#httpHeader" => "ETag"}))
    CreateKeyValueStoreResult.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Location', traits: {"smithy.api#documentation" => "<p>The location of the resulting key value store.</p>", "smithy.api#httpHeader" => "Location"}))
    CreateKeyValueStoreResult[:http_payload] = :key_value_store
    CreateKeyValueStoreResult[:http_payload_member] = CreateKeyValueStoreResult.member(:key_value_store)
    CreateKeyValueStoreResult.type = Types::CreateKeyValueStoreResult
    CreateMonitoringSubscriptionRequest.add_member(:distribution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DistributionId', traits: {"smithy.api#documentation" => "<p>The ID of the distribution that you are enabling metrics for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateMonitoringSubscriptionRequest.add_member(:monitoring_subscription, Smithy::Schema::Shapes::ShapeRef.new(shape: MonitoringSubscription, location_name: 'MonitoringSubscription', traits: {"smithy.api#documentation" => "<p>A monitoring subscription. This structure contains information about whether additional CloudWatch metrics are enabled for a given CloudFront distribution.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "MonitoringSubscription"}))
    CreateMonitoringSubscriptionRequest[:http_payload] = :monitoring_subscription
    CreateMonitoringSubscriptionRequest[:http_payload_member] = CreateMonitoringSubscriptionRequest.member(:monitoring_subscription)
    CreateMonitoringSubscriptionRequest.type = Types::CreateMonitoringSubscriptionRequest
    CreateMonitoringSubscriptionResult.add_member(:monitoring_subscription, Smithy::Schema::Shapes::ShapeRef.new(shape: MonitoringSubscription, location_name: 'MonitoringSubscription', traits: {"smithy.api#documentation" => "<p>A monitoring subscription. This structure contains information about whether additional CloudWatch metrics are enabled for a given CloudFront distribution.</p>", "smithy.api#httpPayload" => {}}))
    CreateMonitoringSubscriptionResult[:http_payload] = :monitoring_subscription
    CreateMonitoringSubscriptionResult[:http_payload_member] = CreateMonitoringSubscriptionResult.member(:monitoring_subscription)
    CreateMonitoringSubscriptionResult.type = Types::CreateMonitoringSubscriptionResult
    CreateOriginAccessControlRequest.add_member(:origin_access_control_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginAccessControlConfig, location_name: 'OriginAccessControlConfig', traits: {"smithy.api#documentation" => "<p>Contains the origin access control.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "OriginAccessControlConfig"}))
    CreateOriginAccessControlRequest[:http_payload] = :origin_access_control_config
    CreateOriginAccessControlRequest[:http_payload_member] = CreateOriginAccessControlRequest.member(:origin_access_control_config)
    CreateOriginAccessControlRequest.type = Types::CreateOriginAccessControlRequest
    CreateOriginAccessControlResult.add_member(:origin_access_control, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginAccessControl, location_name: 'OriginAccessControl', traits: {"smithy.api#documentation" => "<p>Contains an origin access control.</p>", "smithy.api#httpPayload" => {}}))
    CreateOriginAccessControlResult.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Location', traits: {"smithy.api#documentation" => "<p>The URL of the origin access control.</p>", "smithy.api#httpHeader" => "Location"}))
    CreateOriginAccessControlResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The version identifier for the current version of the origin access control.</p>", "smithy.api#httpHeader" => "ETag"}))
    CreateOriginAccessControlResult[:http_payload] = :origin_access_control
    CreateOriginAccessControlResult[:http_payload_member] = CreateOriginAccessControlResult.member(:origin_access_control)
    CreateOriginAccessControlResult.type = Types::CreateOriginAccessControlResult
    CreateOriginRequestPolicyRequest.add_member(:origin_request_policy_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginRequestPolicyConfig, location_name: 'OriginRequestPolicyConfig', traits: {"smithy.api#documentation" => "<p>An origin request policy configuration.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "OriginRequestPolicyConfig"}))
    CreateOriginRequestPolicyRequest[:http_payload] = :origin_request_policy_config
    CreateOriginRequestPolicyRequest[:http_payload_member] = CreateOriginRequestPolicyRequest.member(:origin_request_policy_config)
    CreateOriginRequestPolicyRequest.type = Types::CreateOriginRequestPolicyRequest
    CreateOriginRequestPolicyResult.add_member(:origin_request_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginRequestPolicy, location_name: 'OriginRequestPolicy', traits: {"smithy.api#documentation" => "<p>An origin request policy.</p>", "smithy.api#httpPayload" => {}}))
    CreateOriginRequestPolicyResult.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Location', traits: {"smithy.api#documentation" => "<p>The fully qualified URI of the origin request policy just created.</p>", "smithy.api#httpHeader" => "Location"}))
    CreateOriginRequestPolicyResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the origin request policy.</p>", "smithy.api#httpHeader" => "ETag"}))
    CreateOriginRequestPolicyResult[:http_payload] = :origin_request_policy
    CreateOriginRequestPolicyResult[:http_payload_member] = CreateOriginRequestPolicyResult.member(:origin_request_policy)
    CreateOriginRequestPolicyResult.type = Types::CreateOriginRequestPolicyResult
    CreatePublicKeyRequest.add_member(:public_key_config, Smithy::Schema::Shapes::ShapeRef.new(shape: PublicKeyConfig, location_name: 'PublicKeyConfig', traits: {"smithy.api#documentation" => "<p>A CloudFront public key configuration.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "PublicKeyConfig"}))
    CreatePublicKeyRequest[:http_payload] = :public_key_config
    CreatePublicKeyRequest[:http_payload_member] = CreatePublicKeyRequest.member(:public_key_config)
    CreatePublicKeyRequest.type = Types::CreatePublicKeyRequest
    CreatePublicKeyResult.add_member(:public_key, Smithy::Schema::Shapes::ShapeRef.new(shape: PublicKey, location_name: 'PublicKey', traits: {"smithy.api#documentation" => "<p>The public key.</p>", "smithy.api#httpPayload" => {}}))
    CreatePublicKeyResult.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Location', traits: {"smithy.api#documentation" => "<p>The URL of the public key.</p>", "smithy.api#httpHeader" => "Location"}))
    CreatePublicKeyResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The identifier for this version of the public key.</p>", "smithy.api#httpHeader" => "ETag"}))
    CreatePublicKeyResult[:http_payload] = :public_key
    CreatePublicKeyResult[:http_payload_member] = CreatePublicKeyResult.member(:public_key)
    CreatePublicKeyResult.type = Types::CreatePublicKeyResult
    CreateRealtimeLogConfigRequest.add_member(:end_points, Smithy::Schema::Shapes::ShapeRef.new(shape: EndPointList, location_name: 'EndPoints', traits: {"smithy.api#documentation" => "<p>Contains information about the Amazon Kinesis data stream where you are sending real-time log data.</p>", "smithy.api#required" => {}}))
    CreateRealtimeLogConfigRequest.add_member(:fields, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldList, location_name: 'Fields', traits: {"smithy.api#documentation" => "<p>A list of fields to include in each real-time log record.</p> <p>For more information about fields, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-fields\">Real-time log configuration fields</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    CreateRealtimeLogConfigRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A unique name to identify this real-time log configuration.</p>", "smithy.api#required" => {}}))
    CreateRealtimeLogConfigRequest.add_member(:sampling_rate, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'SamplingRate', traits: {"smithy.api#documentation" => "<p>The sampling rate for this real-time log configuration. You can specify a whole number between 1 and 100 (inclusive) to determine the percentage of viewer requests that are represented in the real-time log data.</p>", "smithy.api#required" => {}}))
    CreateRealtimeLogConfigRequest.type = Types::CreateRealtimeLogConfigRequest
    CreateRealtimeLogConfigResult.add_member(:realtime_log_config, Smithy::Schema::Shapes::ShapeRef.new(shape: RealtimeLogConfig, location_name: 'RealtimeLogConfig', traits: {"smithy.api#documentation" => "<p>A real-time log configuration.</p>"}))
    CreateRealtimeLogConfigResult.type = Types::CreateRealtimeLogConfigResult
    CreateResponseHeadersPolicyRequest.add_member(:response_headers_policy_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseHeadersPolicyConfig, location_name: 'ResponseHeadersPolicyConfig', traits: {"smithy.api#documentation" => "<p>Contains metadata about the response headers policy, and a set of configurations that specify the HTTP headers.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "ResponseHeadersPolicyConfig"}))
    CreateResponseHeadersPolicyRequest[:http_payload] = :response_headers_policy_config
    CreateResponseHeadersPolicyRequest[:http_payload_member] = CreateResponseHeadersPolicyRequest.member(:response_headers_policy_config)
    CreateResponseHeadersPolicyRequest.type = Types::CreateResponseHeadersPolicyRequest
    CreateResponseHeadersPolicyResult.add_member(:response_headers_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseHeadersPolicy, location_name: 'ResponseHeadersPolicy', traits: {"smithy.api#documentation" => "<p>Contains a response headers policy.</p>", "smithy.api#httpPayload" => {}}))
    CreateResponseHeadersPolicyResult.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Location', traits: {"smithy.api#documentation" => "<p>The URL of the response headers policy.</p>", "smithy.api#httpHeader" => "Location"}))
    CreateResponseHeadersPolicyResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The version identifier for the current version of the response headers policy.</p>", "smithy.api#httpHeader" => "ETag"}))
    CreateResponseHeadersPolicyResult[:http_payload] = :response_headers_policy
    CreateResponseHeadersPolicyResult[:http_payload_member] = CreateResponseHeadersPolicyResult.member(:response_headers_policy)
    CreateResponseHeadersPolicyResult.type = Types::CreateResponseHeadersPolicyResult
    CreateStreamingDistributionRequest.add_member(:streaming_distribution_config, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamingDistributionConfig, location_name: 'StreamingDistributionConfig', traits: {"smithy.api#documentation" => "<p>The streaming distribution's configuration information.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "StreamingDistributionConfig"}))
    CreateStreamingDistributionRequest[:http_payload] = :streaming_distribution_config
    CreateStreamingDistributionRequest[:http_payload_member] = CreateStreamingDistributionRequest.member(:streaming_distribution_config)
    CreateStreamingDistributionRequest.type = Types::CreateStreamingDistributionRequest
    CreateStreamingDistributionResult.add_member(:streaming_distribution, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamingDistribution, location_name: 'StreamingDistribution', traits: {"smithy.api#documentation" => "<p>The streaming distribution's information.</p>", "smithy.api#httpPayload" => {}}))
    CreateStreamingDistributionResult.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Location', traits: {"smithy.api#documentation" => "<p>The fully qualified URI of the new streaming distribution resource just created.</p>", "smithy.api#httpHeader" => "Location"}))
    CreateStreamingDistributionResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the streaming distribution created.</p>", "smithy.api#httpHeader" => "ETag"}))
    CreateStreamingDistributionResult[:http_payload] = :streaming_distribution
    CreateStreamingDistributionResult[:http_payload_member] = CreateStreamingDistributionResult.member(:streaming_distribution)
    CreateStreamingDistributionResult.type = Types::CreateStreamingDistributionResult
    CreateStreamingDistributionWithTagsRequest.add_member(:streaming_distribution_config_with_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamingDistributionConfigWithTags, location_name: 'StreamingDistributionConfigWithTags', traits: {"smithy.api#documentation" => "<p>The streaming distribution's configuration information.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "StreamingDistributionConfigWithTags"}))
    CreateStreamingDistributionWithTagsRequest[:http_payload] = :streaming_distribution_config_with_tags
    CreateStreamingDistributionWithTagsRequest[:http_payload_member] = CreateStreamingDistributionWithTagsRequest.member(:streaming_distribution_config_with_tags)
    CreateStreamingDistributionWithTagsRequest.type = Types::CreateStreamingDistributionWithTagsRequest
    CreateStreamingDistributionWithTagsResult.add_member(:streaming_distribution, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamingDistribution, location_name: 'StreamingDistribution', traits: {"smithy.api#documentation" => "<p>The streaming distribution's information.</p>", "smithy.api#httpPayload" => {}}))
    CreateStreamingDistributionWithTagsResult.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Location', traits: {"smithy.api#documentation" => "<p>The fully qualified URI of the new streaming distribution resource just created.</p>", "smithy.api#httpHeader" => "Location"}))
    CreateStreamingDistributionWithTagsResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the distribution created.</p>", "smithy.api#httpHeader" => "ETag"}))
    CreateStreamingDistributionWithTagsResult[:http_payload] = :streaming_distribution
    CreateStreamingDistributionWithTagsResult[:http_payload_member] = CreateStreamingDistributionWithTagsResult.member(:streaming_distribution)
    CreateStreamingDistributionWithTagsResult.type = Types::CreateStreamingDistributionWithTagsResult
    CreateVpcOriginRequest.add_member(:vpc_origin_endpoint_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcOriginEndpointConfig, location_name: 'VpcOriginEndpointConfig', traits: {"smithy.api#documentation" => "<p>The VPC origin endpoint configuration.</p>", "smithy.api#required" => {}}))
    CreateVpcOriginRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    CreateVpcOriginRequest.type = Types::CreateVpcOriginRequest
    CreateVpcOriginResult.add_member(:vpc_origin, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcOrigin, location_name: 'VpcOrigin', traits: {"smithy.api#documentation" => "<p>The VPC origin.</p>", "smithy.api#httpPayload" => {}}))
    CreateVpcOriginResult.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Location', traits: {"smithy.api#documentation" => "<p>The VPC origin location.</p>", "smithy.api#httpHeader" => "Location"}))
    CreateVpcOriginResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The VPC origin ETag.</p>", "smithy.api#httpHeader" => "ETag"}))
    CreateVpcOriginResult[:http_payload] = :vpc_origin
    CreateVpcOriginResult[:http_payload_member] = CreateVpcOriginResult.member(:vpc_origin)
    CreateVpcOriginResult.type = Types::CreateVpcOriginResult
    CustomErrorResponse.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The HTTP status code for which you want to specify a custom error page and/or a caching duration.</p>", "smithy.api#required" => {}}))
    CustomErrorResponse.add_member(:response_page_path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResponsePagePath', traits: {"smithy.api#documentation" => "<p>The path to the custom error page that you want CloudFront to return to a viewer when your origin returns the HTTP status code specified by <code>ErrorCode</code>, for example, <code>/4xx-errors/403-forbidden.html</code>. If you want to store your objects and your custom error pages in different locations, your distribution must include a cache behavior for which the following is true:</p> <ul> <li> <p>The value of <code>PathPattern</code> matches the path to your custom error messages. For example, suppose you saved custom error pages for 4xx errors in an Amazon S3 bucket in a directory named <code>/4xx-errors</code>. Your distribution must include a cache behavior for which the path pattern routes requests for your custom error pages to that location, for example, <code>/4xx-errors/*</code>.</p> </li> <li> <p>The value of <code>TargetOriginId</code> specifies the value of the <code>ID</code> element for the origin that contains your custom error pages.</p> </li> </ul> <p>If you specify a value for <code>ResponsePagePath</code>, you must also specify a value for <code>ResponseCode</code>.</p> <p>We recommend that you store custom error pages in an Amazon S3 bucket. If you store custom error pages on an HTTP server and the server starts to return 5xx errors, CloudFront can't get the files that you want to return to viewers because the origin server is unavailable.</p>"}))
    CustomErrorResponse.add_member(:response_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResponseCode', traits: {"smithy.api#documentation" => "<p>The HTTP status code that you want CloudFront to return to the viewer along with the custom error page. There are a variety of reasons that you might want CloudFront to return a status code different from the status code that your origin returned to CloudFront, for example:</p> <ul> <li> <p>Some Internet devices (some firewalls and corporate proxies, for example) intercept HTTP 4xx and 5xx and prevent the response from being returned to the viewer. If you substitute <code>200</code>, the response typically won't be intercepted.</p> </li> <li> <p>If you don't care about distinguishing among different client errors or server errors, you can specify <code>400</code> or <code>500</code> as the <code>ResponseCode</code> for all 4xx or 5xx errors.</p> </li> <li> <p>You might want to return a <code>200</code> status code (OK) and static website so your customers don't know that your website is down.</p> </li> </ul> <p>If you specify a value for <code>ResponseCode</code>, you must also specify a value for <code>ResponsePagePath</code>.</p>"}))
    CustomErrorResponse.add_member(:error_caching_min_ttl, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ErrorCachingMinTTL', traits: {"smithy.api#documentation" => "<p>The minimum amount of time, in seconds, that you want CloudFront to cache the HTTP status code specified in <code>ErrorCode</code>. When this time period has elapsed, CloudFront queries your origin to see whether the problem that caused the error has been resolved and the requested object is now available.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html\">Customizing Error Responses</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"}))
    CustomErrorResponse.type = Types::CustomErrorResponse
    CustomErrorResponseList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomErrorResponse, traits: {"smithy.api#xmlName" => "CustomErrorResponse"})
    CustomErrorResponses.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of HTTP status codes for which you want to specify a custom error page and/or a caching duration. If <code>Quantity</code> is <code>0</code>, you can omit <code>Items</code>.</p>", "smithy.api#required" => {}}))
    CustomErrorResponses.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomErrorResponseList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>A complex type that contains a <code>CustomErrorResponse</code> element for each HTTP status code for which you want to specify a custom error page and/or a caching duration. </p>"}))
    CustomErrorResponses.type = Types::CustomErrorResponses
    CustomHeaders.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of custom headers, if any, for this distribution.</p>", "smithy.api#required" => {}}))
    CustomHeaders.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginCustomHeadersList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p> <b>Optional</b>: A list that contains one <code>OriginCustomHeader</code> element for each custom header that you want CloudFront to forward to the origin. If Quantity is <code>0</code>, omit <code>Items</code>.</p>"}))
    CustomHeaders.type = Types::CustomHeaders
    CustomOriginConfig.add_member(:http_port, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'HTTPPort', traits: {"smithy.api#documentation" => "<p>The HTTP port that CloudFront uses to connect to the origin. Specify the HTTP port that the origin listens on.</p>", "smithy.api#required" => {}}))
    CustomOriginConfig.add_member(:https_port, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'HTTPSPort', traits: {"smithy.api#documentation" => "<p>The HTTPS port that CloudFront uses to connect to the origin. Specify the HTTPS port that the origin listens on.</p>", "smithy.api#required" => {}}))
    CustomOriginConfig.add_member(:origin_protocol_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginProtocolPolicy, location_name: 'OriginProtocolPolicy', traits: {"smithy.api#documentation" => "<p>Specifies the protocol (HTTP or HTTPS) that CloudFront uses to connect to the origin. Valid values are:</p> <ul> <li> <p> <code>http-only</code> – CloudFront always uses HTTP to connect to the origin.</p> </li> <li> <p> <code>match-viewer</code> – CloudFront connects to the origin using the same protocol that the viewer used to connect to CloudFront.</p> </li> <li> <p> <code>https-only</code> – CloudFront always uses HTTPS to connect to the origin.</p> </li> </ul>", "smithy.api#required" => {}}))
    CustomOriginConfig.add_member(:origin_ssl_protocols, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginSslProtocols, location_name: 'OriginSslProtocols', traits: {"smithy.api#documentation" => "<p>Specifies the minimum SSL/TLS protocol that CloudFront uses when connecting to your origin over HTTPS. Valid values include <code>SSLv3</code>, <code>TLSv1</code>, <code>TLSv1.1</code>, and <code>TLSv1.2</code>.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/DownloadDistValuesOrigin.html#DownloadDistValuesOriginSSLProtocols\">Minimum Origin SSL Protocol</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"}))
    CustomOriginConfig.add_member(:origin_read_timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'OriginReadTimeout', traits: {"smithy.api#documentation" => "<p>Specifies how long, in seconds, CloudFront waits for a response from the origin. This is also known as the <i>origin response timeout</i>. The minimum timeout is 1 second, the maximum is 120 seconds, and the default (if you don't specify otherwise) is 30 seconds.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/DownloadDistValuesOrigin.html#DownloadDistValuesOriginResponseTimeout\">Response timeout</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"}))
    CustomOriginConfig.add_member(:origin_keepalive_timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'OriginKeepaliveTimeout', traits: {"smithy.api#documentation" => "<p>Specifies how long, in seconds, CloudFront persists its connection to the origin. The minimum timeout is 1 second, the maximum is 120 seconds, and the default (if you don't specify otherwise) is 5 seconds.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/DownloadDistValuesOrigin.html#DownloadDistValuesOriginKeepaliveTimeout\">Keep-alive timeout (custom origins only)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"}))
    CustomOriginConfig.type = Types::CustomOriginConfig
    CustomizationActionType.add_member(:override, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'override', traits: {"smithy.api#enumValue" => "override"}))
    CustomizationActionType.add_member(:disable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'disable', traits: {"smithy.api#enumValue" => "disable"}))
    Customizations.add_member(:web_acl, Smithy::Schema::Shapes::ShapeRef.new(shape: WebAclCustomization, location_name: 'WebAcl', traits: {"smithy.api#documentation" => "<p>The WAF web ACL.</p>"}))
    Customizations.add_member(:certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: Certificate, location_name: 'Certificate', traits: {"smithy.api#documentation" => "<p>The Certificate Manager (ACM) certificate.</p>"}))
    Customizations.add_member(:geo_restrictions, Smithy::Schema::Shapes::ShapeRef.new(shape: GeoRestrictionCustomization, location_name: 'GeoRestrictions', traits: {"smithy.api#documentation" => "<p>The geographic restrictions.</p>"}))
    Customizations.type = Types::Customizations
    DefaultCacheBehavior.add_member(:target_origin_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetOriginId', traits: {"smithy.api#documentation" => "<p>The value of <code>ID</code> for the origin that you want CloudFront to route requests to when they use the default cache behavior.</p>", "smithy.api#required" => {}}))
    DefaultCacheBehavior.add_member(:trusted_signers, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedSigners, location_name: 'TrustedSigners', traits: {"smithy.api#documentation" => "<important> <p>We recommend using <code>TrustedKeyGroups</code> instead of <code>TrustedSigners</code>.</p> </important> <note> <p>This field only supports standard distributions. You can't specify this field for multi-tenant distributions. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-config-options.html#unsupported-saas\">Unsupported features for SaaS Manager for Amazon CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note> <p>A list of Amazon Web Services account IDs whose public keys CloudFront can use to validate signed URLs or signed cookies.</p> <p>When a cache behavior contains trusted signers, CloudFront requires signed URLs or signed cookies for all requests that match the cache behavior. The URLs or cookies must be signed with the private key of a CloudFront key pair in a trusted signer's Amazon Web Services account. The signed URL or cookie contains information about which public key CloudFront should use to verify the signature. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving private content</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"}))
    DefaultCacheBehavior.add_member(:trusted_key_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedKeyGroups, location_name: 'TrustedKeyGroups', traits: {"smithy.api#documentation" => "<p>A list of key groups that CloudFront can use to validate signed URLs or signed cookies.</p> <p>When a cache behavior contains trusted key groups, CloudFront requires signed URLs or signed cookies for all requests that match the cache behavior. The URLs or cookies must be signed with a private key whose corresponding public key is in the key group. The signed URL or cookie contains information about which public key CloudFront should use to verify the signature. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving private content</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"}))
    DefaultCacheBehavior.add_member(:viewer_protocol_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ViewerProtocolPolicy, location_name: 'ViewerProtocolPolicy', traits: {"smithy.api#documentation" => "<p>The protocol that viewers can use to access the files in the origin specified by <code>TargetOriginId</code> when a request matches the path pattern in <code>PathPattern</code>. You can specify the following options:</p> <ul> <li> <p> <code>allow-all</code>: Viewers can use HTTP or HTTPS.</p> </li> <li> <p> <code>redirect-to-https</code>: If a viewer submits an HTTP request, CloudFront returns an HTTP status code of 301 (Moved Permanently) to the viewer along with the HTTPS URL. The viewer then resubmits the request using the new URL.</p> </li> <li> <p> <code>https-only</code>: If a viewer sends an HTTP request, CloudFront returns an HTTP status code of 403 (Forbidden).</p> </li> </ul> <p>For more information about requiring the HTTPS protocol, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-https-viewers-to-cloudfront.html\">Requiring HTTPS Between Viewers and CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <note> <p>The only way to guarantee that viewers retrieve an object that was fetched from the origin using HTTPS is never to use any other protocol to fetch the object. If you have recently changed from HTTP to HTTPS, we recommend that you clear your objects' cache because cached objects are protocol agnostic. That means that an edge location will return an object from the cache regardless of whether the current request protocol matches the protocol used previously. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Managing Cache Expiration</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note>", "smithy.api#required" => {}}))
    DefaultCacheBehavior.add_member(:allowed_methods, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedMethods, location_name: 'AllowedMethods'))
    DefaultCacheBehavior.add_member(:smooth_streaming, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SmoothStreaming', traits: {"smithy.api#documentation" => "<note> <p>This field only supports standard distributions. You can't specify this field for multi-tenant distributions. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-config-options.html#unsupported-saas\">Unsupported features for SaaS Manager for Amazon CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note> <p>Indicates whether you want to distribute media files in the Microsoft Smooth Streaming format using the origin that is associated with this cache behavior. If so, specify <code>true</code>; if not, specify <code>false</code>. If you specify <code>true</code> for <code>SmoothStreaming</code>, you can still distribute other content using this cache behavior if the content matches the value of <code>PathPattern</code>.</p>"}))
    DefaultCacheBehavior.add_member(:compress, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Compress', traits: {"smithy.api#documentation" => "<p>Whether you want CloudFront to automatically compress certain files for this cache behavior. If so, specify <code>true</code>; if not, specify <code>false</code>. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/ServingCompressedFiles.html\">Serving Compressed Files</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"}))
    DefaultCacheBehavior.add_member(:lambda_function_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaFunctionAssociations, location_name: 'LambdaFunctionAssociations', traits: {"smithy.api#documentation" => "<p>A complex type that contains zero or more Lambda@Edge function associations for a cache behavior.</p>"}))
    DefaultCacheBehavior.add_member(:function_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionAssociations, location_name: 'FunctionAssociations', traits: {"smithy.api#documentation" => "<p>A list of CloudFront functions that are associated with this cache behavior. Your functions must be published to the <code>LIVE</code> stage to associate them with a cache behavior.</p>"}))
    DefaultCacheBehavior.add_member(:field_level_encryption_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FieldLevelEncryptionId', traits: {"smithy.api#documentation" => "<p>The value of <code>ID</code> for the field-level encryption configuration that you want CloudFront to use for encrypting specific fields of data for the default cache behavior.</p>"}))
    DefaultCacheBehavior.add_member(:realtime_log_config_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RealtimeLogConfigArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the real-time log configuration that is attached to this cache behavior. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html\">Real-time logs</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"}))
    DefaultCacheBehavior.add_member(:cache_policy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CachePolicyId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the cache policy that is attached to the default cache behavior. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html\">Using the managed cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>A <code>DefaultCacheBehavior</code> must include either a <code>CachePolicyId</code> or <code>ForwardedValues</code>. We recommend that you use a <code>CachePolicyId</code>.</p>"}))
    DefaultCacheBehavior.add_member(:origin_request_policy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OriginRequestPolicyId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the origin request policy that is attached to the default cache behavior. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy\">Creating origin request policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-origin-request-policies.html\">Using the managed origin request policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"}))
    DefaultCacheBehavior.add_member(:response_headers_policy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResponseHeadersPolicyId', traits: {"smithy.api#documentation" => "<p>The identifier for a response headers policy.</p>"}))
    DefaultCacheBehavior.add_member(:grpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: GrpcConfig, location_name: 'GrpcConfig', traits: {"smithy.api#documentation" => "<p>The gRPC configuration for your cache behavior.</p>"}))
    DefaultCacheBehavior.add_member(:forwarded_values, Smithy::Schema::Shapes::ShapeRef.new(shape: ForwardedValues, location_name: 'ForwardedValues', traits: {"smithy.api#deprecated" => {}, "smithy.api#documentation" => "<p>This field is deprecated. We recommend that you use a cache policy or an origin request policy instead of this field. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/working-with-policies.html\">Working with policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you want to include values in the cache key, use a cache policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html\">Using the managed cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you want to send values to the origin but not include them in the cache key, use an origin request policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy\">Creating origin request policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-origin-request-policies.html\">Using the managed origin request policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>A <code>DefaultCacheBehavior</code> must include either a <code>CachePolicyId</code> or <code>ForwardedValues</code>. We recommend that you use a <code>CachePolicyId</code>.</p> <p>A complex type that specifies how CloudFront handles query strings, cookies, and HTTP headers.</p>"}))
    DefaultCacheBehavior.add_member(:min_ttl, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'MinTTL', traits: {"smithy.api#deprecated" => {}, "smithy.api#documentation" => "<note> <p>This field only supports standard distributions. You can't specify this field for multi-tenant distributions. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-config-options.html#unsupported-saas\">Unsupported features for SaaS Manager for Amazon CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note> <p>This field is deprecated. We recommend that you use the <code>MinTTL</code> field in a cache policy instead of this field. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html\">Using the managed cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>The minimum amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Managing How Long Content Stays in an Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>You must specify <code>0</code> for <code>MinTTL</code> if you configure CloudFront to forward all headers to your origin (under <code>Headers</code>, if you specify <code>1</code> for <code>Quantity</code> and <code>*</code> for <code>Name</code>).</p>"}))
    DefaultCacheBehavior.add_member(:default_ttl, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'DefaultTTL', traits: {"smithy.api#deprecated" => {}, "smithy.api#documentation" => "<note> <p>This field only supports standard distributions. You can't specify this field for multi-tenant distributions. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-config-options.html#unsupported-saas\">Unsupported features for SaaS Manager for Amazon CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note> <p>This field is deprecated. We recommend that you use the <code>DefaultTTL</code> field in a cache policy instead of this field. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html\">Using the managed cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>The default amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. The value that you specify applies only when your origin does not add HTTP headers such as <code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and <code>Expires</code> to objects. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Managing How Long Content Stays in an Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"}))
    DefaultCacheBehavior.add_member(:max_ttl, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'MaxTTL', traits: {"smithy.api#deprecated" => {}, "smithy.api#documentation" => "<note> <p>This field only supports standard distributions. You can't specify this field for multi-tenant distributions. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-config-options.html#unsupported-saas\">Unsupported features for SaaS Manager for Amazon CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note> <p>This field is deprecated. We recommend that you use the <code>MaxTTL</code> field in a cache policy instead of this field. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html\">Using the managed cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>The maximum amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. The value that you specify applies only when your origin adds HTTP headers such as <code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and <code>Expires</code> to objects. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Managing How Long Content Stays in an Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"}))
    DefaultCacheBehavior.type = Types::DefaultCacheBehavior
    DeleteAnycastIpListRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the Anycast static IP list.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAnycastIpListRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The current version (<code>ETag</code> value) of the Anycast static IP list that you are deleting.</p>", "smithy.api#httpHeader" => "If-Match", "smithy.api#required" => {}}))
    DeleteAnycastIpListRequest.type = Types::DeleteAnycastIpListRequest
    DeleteCachePolicyRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the cache policy that you are deleting. To get the identifier, you can use <code>ListCachePolicies</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCachePolicyRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The version of the cache policy that you are deleting. The version is the cache policy's <code>ETag</code> value, which you can get using <code>ListCachePolicies</code>, <code>GetCachePolicy</code>, or <code>GetCachePolicyConfig</code>.</p>", "smithy.api#httpHeader" => "If-Match"}))
    DeleteCachePolicyRequest.type = Types::DeleteCachePolicyRequest
    DeleteCloudFrontOriginAccessIdentityRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The origin access identity's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCloudFrontOriginAccessIdentityRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The value of the <code>ETag</code> header you received from a previous <code>GET</code> or <code>PUT</code> request. For example: <code>E2QWRUHAPOMQZL</code>.</p>", "smithy.api#httpHeader" => "If-Match"}))
    DeleteCloudFrontOriginAccessIdentityRequest.type = Types::DeleteCloudFrontOriginAccessIdentityRequest
    DeleteConnectionGroupRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the connection group to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConnectionGroupRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The value of the <code>ETag</code> header that you received when retrieving the connection group to delete.</p>", "smithy.api#httpHeader" => "If-Match", "smithy.api#required" => {}}))
    DeleteConnectionGroupRequest.type = Types::DeleteConnectionGroupRequest
    DeleteContinuousDeploymentPolicyRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the continuous deployment policy that you are deleting.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteContinuousDeploymentPolicyRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The current version (<code>ETag</code> value) of the continuous deployment policy that you are deleting.</p>", "smithy.api#httpHeader" => "If-Match"}))
    DeleteContinuousDeploymentPolicyRequest.type = Types::DeleteContinuousDeploymentPolicyRequest
    DeleteDistributionRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The distribution ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDistributionRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The value of the <code>ETag</code> header that you received when you disabled the distribution. For example: <code>E2QWRUHAPOMQZL</code>.</p>", "smithy.api#httpHeader" => "If-Match"}))
    DeleteDistributionRequest.type = Types::DeleteDistributionRequest
    DeleteDistributionTenantRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the distribution tenant to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDistributionTenantRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The value of the <code>ETag</code> header that you received when retrieving the distribution tenant. This value is returned in the response of the <code>GetDistributionTenant</code> API operation.</p>", "smithy.api#httpHeader" => "If-Match", "smithy.api#required" => {}}))
    DeleteDistributionTenantRequest.type = Types::DeleteDistributionTenantRequest
    DeleteFieldLevelEncryptionConfigRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the configuration you want to delete from CloudFront.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFieldLevelEncryptionConfigRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The value of the <code>ETag</code> header that you received when retrieving the configuration identity to delete. For example: <code>E2QWRUHAPOMQZL</code>.</p>", "smithy.api#httpHeader" => "If-Match"}))
    DeleteFieldLevelEncryptionConfigRequest.type = Types::DeleteFieldLevelEncryptionConfigRequest
    DeleteFieldLevelEncryptionProfileRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>Request the ID of the profile you want to delete from CloudFront.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFieldLevelEncryptionProfileRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The value of the <code>ETag</code> header that you received when retrieving the profile to delete. For example: <code>E2QWRUHAPOMQZL</code>.</p>", "smithy.api#httpHeader" => "If-Match"}))
    DeleteFieldLevelEncryptionProfileRequest.type = Types::DeleteFieldLevelEncryptionProfileRequest
    DeleteFunctionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the function that you are deleting.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFunctionRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The current version (<code>ETag</code> value) of the function that you are deleting, which you can get using <code>DescribeFunction</code>.</p>", "smithy.api#httpHeader" => "If-Match", "smithy.api#required" => {}}))
    DeleteFunctionRequest.type = Types::DeleteFunctionRequest
    DeleteKeyGroupRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the key group that you are deleting. To get the identifier, use <code>ListKeyGroups</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteKeyGroupRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The version of the key group that you are deleting. The version is the key group's <code>ETag</code> value. To get the <code>ETag</code>, use <code>GetKeyGroup</code> or <code>GetKeyGroupConfig</code>.</p>", "smithy.api#httpHeader" => "If-Match"}))
    DeleteKeyGroupRequest.type = Types::DeleteKeyGroupRequest
    DeleteKeyValueStoreRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValueStoreName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the key value store.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteKeyValueStoreRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The key value store to delete, if a match occurs.</p>", "smithy.api#httpHeader" => "If-Match", "smithy.api#required" => {}}))
    DeleteKeyValueStoreRequest.type = Types::DeleteKeyValueStoreRequest
    DeleteMonitoringSubscriptionRequest.add_member(:distribution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DistributionId', traits: {"smithy.api#documentation" => "<p>The ID of the distribution that you are disabling metrics for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMonitoringSubscriptionRequest.type = Types::DeleteMonitoringSubscriptionRequest
    DeleteMonitoringSubscriptionResult.type = Types::DeleteMonitoringSubscriptionResult
    DeleteOriginAccessControlRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the origin access control that you are deleting.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteOriginAccessControlRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The current version (<code>ETag</code> value) of the origin access control that you are deleting.</p>", "smithy.api#httpHeader" => "If-Match"}))
    DeleteOriginAccessControlRequest.type = Types::DeleteOriginAccessControlRequest
    DeleteOriginRequestPolicyRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the origin request policy that you are deleting. To get the identifier, you can use <code>ListOriginRequestPolicies</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteOriginRequestPolicyRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The version of the origin request policy that you are deleting. The version is the origin request policy's <code>ETag</code> value, which you can get using <code>ListOriginRequestPolicies</code>, <code>GetOriginRequestPolicy</code>, or <code>GetOriginRequestPolicyConfig</code>.</p>", "smithy.api#httpHeader" => "If-Match"}))
    DeleteOriginRequestPolicyRequest.type = Types::DeleteOriginRequestPolicyRequest
    DeletePublicKeyRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the public key you want to remove from CloudFront.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePublicKeyRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The value of the <code>ETag</code> header that you received when retrieving the public key identity to delete. For example: <code>E2QWRUHAPOMQZL</code>.</p>", "smithy.api#httpHeader" => "If-Match"}))
    DeletePublicKeyRequest.type = Types::DeletePublicKeyRequest
    DeleteRealtimeLogConfigRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the real-time log configuration to delete.</p>"}))
    DeleteRealtimeLogConfigRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the real-time log configuration to delete.</p>"}))
    DeleteRealtimeLogConfigRequest.type = Types::DeleteRealtimeLogConfigRequest
    DeleteResponseHeadersPolicyRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier for the response headers policy that you are deleting.</p> <p>To get the identifier, you can use <code>ListResponseHeadersPolicies</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResponseHeadersPolicyRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The version of the response headers policy that you are deleting.</p> <p>The version is the response headers policy's <code>ETag</code> value, which you can get using <code>ListResponseHeadersPolicies</code>, <code>GetResponseHeadersPolicy</code>, or <code>GetResponseHeadersPolicyConfig</code>.</p>", "smithy.api#httpHeader" => "If-Match"}))
    DeleteResponseHeadersPolicyRequest.type = Types::DeleteResponseHeadersPolicyRequest
    DeleteStreamingDistributionRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The distribution ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteStreamingDistributionRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The value of the <code>ETag</code> header that you received when you disabled the streaming distribution. For example: <code>E2QWRUHAPOMQZL</code>.</p>", "smithy.api#httpHeader" => "If-Match"}))
    DeleteStreamingDistributionRequest.type = Types::DeleteStreamingDistributionRequest
    DeleteVpcOriginRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The VPC origin ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVpcOriginRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The version identifier of the VPC origin to delete. This is the <code>ETag</code> value returned in the response to <a>GetVpcOrigin</a>.</p>", "smithy.api#httpHeader" => "If-Match", "smithy.api#required" => {}}))
    DeleteVpcOriginRequest.type = Types::DeleteVpcOriginRequest
    DeleteVpcOriginResult.add_member(:vpc_origin, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcOrigin, location_name: 'VpcOrigin', traits: {"smithy.api#documentation" => "<p>The VPC origin.</p>", "smithy.api#httpPayload" => {}}))
    DeleteVpcOriginResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The VPC origin ETag.</p>", "smithy.api#httpHeader" => "ETag"}))
    DeleteVpcOriginResult[:http_payload] = :vpc_origin
    DeleteVpcOriginResult[:http_payload_member] = DeleteVpcOriginResult.member(:vpc_origin)
    DeleteVpcOriginResult.type = Types::DeleteVpcOriginResult
    DescribeFunctionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the function that you are getting information about.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeFunctionRequest.add_member(:stage, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionStage, location_name: 'Stage', traits: {"smithy.api#documentation" => "<p>The function's stage, either <code>DEVELOPMENT</code> or <code>LIVE</code>.</p>", "smithy.api#httpQuery" => "Stage"}))
    DescribeFunctionRequest.type = Types::DescribeFunctionRequest
    DescribeFunctionResult.add_member(:function_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionSummary, location_name: 'FunctionSummary', traits: {"smithy.api#documentation" => "<p>Contains configuration information and metadata about a CloudFront function.</p>", "smithy.api#httpPayload" => {}}))
    DescribeFunctionResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The version identifier for the current version of the CloudFront function.</p>", "smithy.api#httpHeader" => "ETag"}))
    DescribeFunctionResult[:http_payload] = :function_summary
    DescribeFunctionResult[:http_payload_member] = DescribeFunctionResult.member(:function_summary)
    DescribeFunctionResult.type = Types::DescribeFunctionResult
    DescribeKeyValueStoreRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValueStoreName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the key value store.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeKeyValueStoreRequest.type = Types::DescribeKeyValueStoreRequest
    DescribeKeyValueStoreResult.add_member(:key_value_store, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValueStore, location_name: 'KeyValueStore', traits: {"smithy.api#documentation" => "<p>The resulting key value store.</p>", "smithy.api#httpPayload" => {}}))
    DescribeKeyValueStoreResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The <code>ETag</code> of the resulting key value store.</p>", "smithy.api#httpHeader" => "ETag"}))
    DescribeKeyValueStoreResult[:http_payload] = :key_value_store
    DescribeKeyValueStoreResult[:http_payload_member] = DescribeKeyValueStoreResult.member(:key_value_store)
    DescribeKeyValueStoreResult.type = Types::DescribeKeyValueStoreResult
    DisassociateDistributionTenantWebACLRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the distribution tenant.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateDistributionTenantWebACLRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The current version of the distribution tenant that you're disassociating from the WAF web ACL. This is the <code>ETag</code> value returned in the response to the <code>GetDistributionTenant</code> API operation.</p>", "smithy.api#httpHeader" => "If-Match"}))
    DisassociateDistributionTenantWebACLRequest.type = Types::DisassociateDistributionTenantWebACLRequest
    DisassociateDistributionTenantWebACLResult.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the distribution tenant.</p>"}))
    DisassociateDistributionTenantWebACLResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the distribution tenant.</p>", "smithy.api#httpHeader" => "ETag"}))
    DisassociateDistributionTenantWebACLResult.type = Types::DisassociateDistributionTenantWebACLResult
    DisassociateDistributionWebACLRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the distribution.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateDistributionWebACLRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The value of the <code>ETag</code> header that you received when retrieving the distribution that you're disassociating from the WAF web ACL.</p>", "smithy.api#httpHeader" => "If-Match"}))
    DisassociateDistributionWebACLRequest.type = Types::DisassociateDistributionWebACLRequest
    DisassociateDistributionWebACLResult.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the distribution.</p>"}))
    DisassociateDistributionWebACLResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the distribution.</p>", "smithy.api#httpHeader" => "ETag"}))
    DisassociateDistributionWebACLResult.type = Types::DisassociateDistributionWebACLResult
    Distribution.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The distribution's identifier. For example: <code>E1U5RQF7T870K0</code>.</p>", "smithy.api#required" => {}}))
    Distribution.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ARN', traits: {"smithy.api#documentation" => "<p>The distribution's Amazon Resource Name (ARN).</p>", "smithy.api#required" => {}}))
    Distribution.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The distribution's status. When the status is <code>Deployed</code>, the distribution's information is fully propagated to all CloudFront edge locations.</p>", "smithy.api#required" => {}}))
    Distribution.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The date and time when the distribution was last modified.</p>", "smithy.api#required" => {}}))
    Distribution.add_member(:in_progress_invalidation_batches, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'InProgressInvalidationBatches', traits: {"smithy.api#documentation" => "<p>The number of invalidation batches currently in progress.</p>", "smithy.api#required" => {}}))
    Distribution.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The distribution's CloudFront domain name. For example: <code>d111111abcdef8.cloudfront.net</code>.</p>", "smithy.api#required" => {}}))
    Distribution.add_member(:active_trusted_signers, Smithy::Schema::Shapes::ShapeRef.new(shape: ActiveTrustedSigners, location_name: 'ActiveTrustedSigners', traits: {"smithy.api#documentation" => "<important> <p>We recommend using <code>TrustedKeyGroups</code> instead of <code>TrustedSigners</code>.</p> </important> <p>This field contains a list of Amazon Web Services account IDs and the active CloudFront key pairs in each account that CloudFront can use to verify the signatures of signed URLs or signed cookies.</p>"}))
    Distribution.add_member(:active_trusted_key_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ActiveTrustedKeyGroups, location_name: 'ActiveTrustedKeyGroups', traits: {"smithy.api#documentation" => "<p>This field contains a list of key groups and the public keys in each key group that CloudFront can use to verify the signatures of signed URLs or signed cookies.</p>"}))
    Distribution.add_member(:distribution_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionConfig, location_name: 'DistributionConfig', traits: {"smithy.api#documentation" => "<p>The distribution's configuration.</p>", "smithy.api#required" => {}}))
    Distribution.add_member(:alias_icp_recordals, Smithy::Schema::Shapes::ShapeRef.new(shape: AliasICPRecordals, location_name: 'AliasICPRecordals', traits: {"smithy.api#documentation" => "<p>Amazon Web Services services in China customers must file for an Internet Content Provider (ICP) recordal if they want to serve content publicly on an alternate domain name, also known as a CNAME, that they've added to CloudFront. AliasICPRecordal provides the ICP recordal status for CNAMEs associated with distributions.</p> <p>For more information about ICP recordals, see <a href=\"https://docs.amazonaws.cn/en_us/aws/latest/userguide/accounts-and-credentials.html\"> Signup, Accounts, and Credentials</a> in <i>Getting Started with Amazon Web Services services in China</i>.</p>"}))
    Distribution.type = Types::Distribution
    DistributionAlreadyExists.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    DistributionAlreadyExists.type = Types::DistributionAlreadyExists
    DistributionConfig.add_member(:caller_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CallerReference', traits: {"smithy.api#documentation" => "<p>A unique value (for example, a date-time stamp) that ensures that the request can't be replayed.</p> <p>If the value of <code>CallerReference</code> is new (regardless of the content of the <code>DistributionConfig</code> object), CloudFront creates a new distribution.</p> <p>If <code>CallerReference</code> is a value that you already sent in a previous request to create a distribution, CloudFront returns a <code>DistributionAlreadyExists</code> error.</p>", "smithy.api#required" => {}}))
    DistributionConfig.add_member(:aliases, Smithy::Schema::Shapes::ShapeRef.new(shape: Aliases, location_name: 'Aliases', traits: {"smithy.api#documentation" => "<note> <p>This field only supports standard distributions. You can't specify this field for multi-tenant distributions. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-config-options.html#unsupported-saas\">Unsupported features for SaaS Manager for Amazon CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note> <p>A complex type that contains information about CNAMEs (alternate domain names), if any, for this distribution.</p>"}))
    DistributionConfig.add_member(:default_root_object, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultRootObject', traits: {"smithy.api#documentation" => "<p>When a viewer requests the root URL for your distribution, the default root object is the object that you want CloudFront to request from your origin. For example, if your root URL is <code>https://www.example.com</code>, you can specify CloudFront to return the <code>index.html</code> file as the default root object. You can specify a default root object so that viewers see a specific file or object, instead of another object in your distribution (for example, <code>https://www.example.com/product-description.html</code>). A default root object avoids exposing the contents of your distribution.</p> <p>You can specify the object name or a path to the object name (for example, <code>index.html</code> or <code>exampleFolderName/index.html</code>). Your string can't begin with a forward slash (<code>/</code>). Only specify the object name or the path to the object.</p> <p>If you don't want to specify a default root object when you create a distribution, include an empty <code>DefaultRootObject</code> element.</p> <p>To delete the default root object from an existing distribution, update the distribution configuration and include an empty <code>DefaultRootObject</code> element.</p> <p>To replace the default root object, update the distribution configuration and specify the new object.</p> <p>For more information about the default root object, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/DefaultRootObject.html\">Specify a default root object</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"}))
    DistributionConfig.add_member(:origins, Smithy::Schema::Shapes::ShapeRef.new(shape: Origins, location_name: 'Origins', traits: {"smithy.api#documentation" => "<p>A complex type that contains information about origins for this distribution.</p>", "smithy.api#required" => {}}))
    DistributionConfig.add_member(:origin_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginGroups, location_name: 'OriginGroups', traits: {"smithy.api#documentation" => "<p>A complex type that contains information about origin groups for this distribution.</p>"}))
    DistributionConfig.add_member(:default_cache_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultCacheBehavior, location_name: 'DefaultCacheBehavior', traits: {"smithy.api#documentation" => "<p>A complex type that describes the default cache behavior if you don't specify a <code>CacheBehavior</code> element or if files don't match any of the values of <code>PathPattern</code> in <code>CacheBehavior</code> elements. You must create exactly one default cache behavior.</p>", "smithy.api#required" => {}}))
    DistributionConfig.add_member(:cache_behaviors, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheBehaviors, location_name: 'CacheBehaviors', traits: {"smithy.api#documentation" => "<p>A complex type that contains zero or more <code>CacheBehavior</code> elements.</p>"}))
    DistributionConfig.add_member(:custom_error_responses, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomErrorResponses, location_name: 'CustomErrorResponses', traits: {"smithy.api#documentation" => "<p>A complex type that controls the following:</p> <ul> <li> <p>Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with custom error messages before returning the response to the viewer.</p> </li> <li> <p>How long CloudFront caches HTTP status codes in the 4xx and 5xx range.</p> </li> </ul> <p>For more information about custom error pages, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html\">Customizing Error Responses</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"}))
    DistributionConfig.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: CommentType, location_name: 'Comment', traits: {"smithy.api#documentation" => "<p>A comment to describe the distribution. The comment cannot be longer than 128 characters.</p>", "smithy.api#required" => {}}))
    DistributionConfig.add_member(:logging, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfig, location_name: 'Logging', traits: {"smithy.api#documentation" => "<p>A complex type that controls whether access logs are written for the distribution.</p> <p>For more information about logging, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/AccessLogs.html\">Access Logs</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"}))
    DistributionConfig.add_member(:price_class, Smithy::Schema::Shapes::ShapeRef.new(shape: PriceClass, location_name: 'PriceClass', traits: {"smithy.api#documentation" => "<note> <p>This field only supports standard distributions. You can't specify this field for multi-tenant distributions. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-config-options.html#unsupported-saas\">Unsupported features for SaaS Manager for Amazon CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note> <p>The price class that corresponds with the maximum price that you want to pay for CloudFront service. If you specify <code>PriceClass_All</code>, CloudFront responds to requests for your objects from all CloudFront edge locations.</p> <p>If you specify a price class other than <code>PriceClass_All</code>, CloudFront serves your objects from the CloudFront edge location that has the lowest latency among the edge locations in your price class. Viewers who are in or near regions that are excluded from your specified price class may encounter slower performance.</p> <p>For more information about price classes, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PriceClass.html\">Choosing the Price Class for a CloudFront Distribution</a> in the <i>Amazon CloudFront Developer Guide</i>. For information about CloudFront pricing, including how price classes (such as Price Class 100) map to CloudFront regions, see <a href=\"http://aws.amazon.com/cloudfront/pricing/\">Amazon CloudFront Pricing</a>.</p>"}))
    DistributionConfig.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>From this field, you can enable or disable the selected distribution.</p>", "smithy.api#required" => {}}))
    DistributionConfig.add_member(:viewer_certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: ViewerCertificate, location_name: 'ViewerCertificate', traits: {"smithy.api#documentation" => "<p>A complex type that determines the distribution's SSL/TLS configuration for communicating with viewers.</p>"}))
    DistributionConfig.add_member(:restrictions, Smithy::Schema::Shapes::ShapeRef.new(shape: Restrictions, location_name: 'Restrictions', traits: {"smithy.api#documentation" => "<p>A complex type that identifies ways in which you want to restrict distribution of your content.</p>"}))
    DistributionConfig.add_member(:web_acl_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'WebACLId', traits: {"smithy.api#documentation" => "<note> <p>Multi-tenant distributions only support WAF V2 web ACLs.</p> </note> <p>A unique identifier that specifies the WAF web ACL, if any, to associate with this distribution. To specify a web ACL created using the latest version of WAF, use the ACL ARN, for example <code>arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111</code>. To specify a web ACL created using WAF Classic, use the ACL ID, for example <code>a1b2c3d4-5678-90ab-cdef-EXAMPLE11111</code>.</p> <p>WAF is a web application firewall that lets you monitor the HTTP and HTTPS requests that are forwarded to CloudFront, and lets you control access to your content. Based on conditions that you specify, such as the IP addresses that requests originate from or the values of query strings, CloudFront responds to requests either with the requested content or with an HTTP 403 status code (Forbidden). You can also configure CloudFront to return a custom error page when a request is blocked. For more information about WAF, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/what-is-aws-waf.html\">WAF Developer Guide</a>.</p>"}))
    DistributionConfig.add_member(:http_version, Smithy::Schema::Shapes::ShapeRef.new(shape: HttpVersion, location_name: 'HttpVersion', traits: {"smithy.api#documentation" => "<p>(Optional) Specify the HTTP version(s) that you want viewers to use to communicate with CloudFront. The default value for new web distributions is <code>http2</code>. Viewers that don't support HTTP/2 automatically use an earlier HTTP version.</p> <p>For viewers and CloudFront to use HTTP/2, viewers must support TLSv1.2 or later, and must support Server Name Indication (SNI).</p> <p>For viewers and CloudFront to use HTTP/3, viewers must support TLSv1.3 and Server Name Indication (SNI). CloudFront supports HTTP/3 connection migration to allow the viewer to switch networks without losing connection. For more information about connection migration, see <a href=\"https://www.rfc-editor.org/rfc/rfc9000.html#name-connection-migration\">Connection Migration</a> at RFC 9000. For more information about supported TLSv1.3 ciphers, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/secure-connections-supported-viewer-protocols-ciphers.html\">Supported protocols and ciphers between viewers and CloudFront</a>.</p>"}))
    DistributionConfig.add_member(:is_ipv6_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsIPV6Enabled', traits: {"smithy.api#documentation" => "<note> <p>To use this field for a multi-tenant distribution, use a connection group instead. For more information, see <a href=\"https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ConnectionGroup.html\">ConnectionGroup</a>.</p> </note> <p>If you want CloudFront to respond to IPv6 DNS requests with an IPv6 address for your distribution, specify <code>true</code>. If you specify <code>false</code>, CloudFront responds to IPv6 DNS requests with the DNS response code <code>NOERROR</code> and with no IP addresses. This allows viewers to submit a second request, for an IPv4 address for your distribution.</p> <p>In general, you should enable IPv6 if you have users on IPv6 networks who want to access your content. However, if you're using signed URLs or signed cookies to restrict access to your content, and if you're using a custom policy that includes the <code>IpAddress</code> parameter to restrict the IP addresses that can access your content, don't enable IPv6. If you want to restrict access to some content by IP address and not restrict access to other content (or restrict access but not by IP address), you can create two distributions. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-creating-signed-url-custom-policy.html\">Creating a Signed URL Using a Custom Policy</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you're using an Route 53 Amazon Web Services Integration alias resource record set to route traffic to your CloudFront distribution, you need to create a second alias resource record set when both of the following are true:</p> <ul> <li> <p>You enable IPv6 for the distribution</p> </li> <li> <p>You're using alternate domain names in the URLs for your objects</p> </li> </ul> <p>For more information, see <a href=\"https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-to-cloudfront-distribution.html\">Routing Traffic to an Amazon CloudFront Web Distribution by Using Your Domain Name</a> in the <i>Route 53 Amazon Web Services Integration Developer Guide</i>.</p> <p>If you created a CNAME resource record set, either with Route 53 Amazon Web Services Integration or with another DNS service, you don't need to make any changes. A CNAME record will route traffic to your distribution regardless of the IP address format of the viewer request.</p>"}))
    DistributionConfig.add_member(:continuous_deployment_policy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ContinuousDeploymentPolicyId', traits: {"smithy.api#documentation" => "<note> <p>This field only supports standard distributions. You can't specify this field for multi-tenant distributions. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-config-options.html#unsupported-saas\">Unsupported features for SaaS Manager for Amazon CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note> <p>The identifier of a continuous deployment policy. For more information, see <code>CreateContinuousDeploymentPolicy</code>.</p>"}))
    DistributionConfig.add_member(:staging, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Staging', traits: {"smithy.api#documentation" => "<note> <p>This field only supports standard distributions. You can't specify this field for multi-tenant distributions. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-config-options.html#unsupported-saas\">Unsupported features for SaaS Manager for Amazon CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note> <p>A Boolean that indicates whether this is a staging distribution. When this value is <code>true</code>, this is a staging distribution. When this value is <code>false</code>, this is not a staging distribution.</p>"}))
    DistributionConfig.add_member(:anycast_ip_list_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AnycastIpListId', traits: {"smithy.api#documentation" => "<note> <p>To use this field for a multi-tenant distribution, use a connection group instead. For more information, see <a href=\"https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ConnectionGroup.html\">ConnectionGroup</a>.</p> </note> <p>ID of the Anycast static IP list that is associated with the distribution.</p>"}))
    DistributionConfig.add_member(:tenant_config, Smithy::Schema::Shapes::ShapeRef.new(shape: TenantConfig, location_name: 'TenantConfig', traits: {"smithy.api#documentation" => "<note> <p>This field only supports multi-tenant distributions. You can't specify this field for standard distributions. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-config-options.html#unsupported-saas\">Unsupported features for SaaS Manager for Amazon CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note> <p>A distribution tenant configuration.</p>"}))
    DistributionConfig.add_member(:connection_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionMode, location_name: 'ConnectionMode', traits: {"smithy.api#documentation" => "<p>This field specifies whether the connection mode is through a standard distribution (direct) or a multi-tenant distribution with distribution tenants (tenant-only).</p>"}))
    DistributionConfig.type = Types::DistributionConfig
    DistributionConfigWithTags.add_member(:distribution_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionConfig, location_name: 'DistributionConfig', traits: {"smithy.api#documentation" => "<p>A distribution configuration.</p>", "smithy.api#required" => {}}))
    DistributionConfigWithTags.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A complex type that contains zero or more <code>Tag</code> elements.</p>", "smithy.api#required" => {}}))
    DistributionConfigWithTags.type = Types::DistributionConfigWithTags
    DistributionIdList.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>The value provided in the <code>Marker</code> request field.</p>", "smithy.api#required" => {}}))
    DistributionIdList.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>Contains the value that you should use in the <code>Marker</code> field of a subsequent request to continue listing distribution IDs where you left off.</p>"}))
    DistributionIdList.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of distribution IDs requested.</p>", "smithy.api#required" => {}}))
    DistributionIdList.add_member(:is_truncated, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsTruncated', traits: {"smithy.api#documentation" => "<p>A flag that indicates whether more distribution IDs remain to be listed. If your results were truncated, you can make a subsequent request using the <code>Marker</code> request field to retrieve more distribution IDs in the list.</p>", "smithy.api#required" => {}}))
    DistributionIdList.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The total number of distribution IDs returned in the response.</p>", "smithy.api#required" => {}}))
    DistributionIdList.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionIdListSummary, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>Contains the distribution IDs in the list.</p>"}))
    DistributionIdList.type = Types::DistributionIdList
    DistributionIdListSummary.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "DistributionId"})
    DistributionList.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>The value you provided for the <code>Marker</code> request parameter.</p>", "smithy.api#required" => {}}))
    DistributionList.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value you can use for the <code>Marker</code> request parameter to continue listing your distributions where they left off.</p>"}))
    DistributionList.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The value you provided for the <code>MaxItems</code> request parameter.</p>", "smithy.api#required" => {}}))
    DistributionList.add_member(:is_truncated, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsTruncated', traits: {"smithy.api#documentation" => "<p>A flag that indicates whether more distributions remain to be listed. If your results were truncated, you can make a follow-up pagination request using the <code>Marker</code> request parameter to retrieve more distributions in the list.</p>", "smithy.api#required" => {}}))
    DistributionList.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of distributions that were created by the current Amazon Web Services account.</p>", "smithy.api#required" => {}}))
    DistributionList.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionSummaryList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>A complex type that contains one <code>DistributionSummary</code> element for each distribution that was created by the current Amazon Web Services account.</p>"}))
    DistributionList.type = Types::DistributionList
    DistributionNotDisabled.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    DistributionNotDisabled.type = Types::DistributionNotDisabled
    DistributionResourceId.add_member(:distribution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DistributionId', traits: {"smithy.api#documentation" => "<p>The ID of the multi-tenant distribution.</p>"}))
    DistributionResourceId.add_member(:distribution_tenant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DistributionTenantId', traits: {"smithy.api#documentation" => "<p>The ID of the distribution tenant.</p>"}))
    DistributionResourceId.type = Types::DistributionResourceId
    DistributionResourceType.add_member(:distribution, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Distribution', traits: {"smithy.api#enumValue" => "distribution"}))
    DistributionResourceType.add_member(:distribution_tenant, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DistributionTenant', traits: {"smithy.api#enumValue" => "distribution-tenant"}))
    DistributionSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier for the distribution. For example: <code>EDFDVBD632BHDS5</code>.</p>", "smithy.api#required" => {}}))
    DistributionSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ARN', traits: {"smithy.api#documentation" => "<p>The ARN (Amazon Resource Name) for the distribution. For example: <code>arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5</code>, where <code>123456789012</code> is your Amazon Web Services account ID.</p>", "smithy.api#required" => {}}))
    DistributionSummary.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the distribution.</p>"}))
    DistributionSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the distribution. When the status is <code>Deployed</code>, the distribution's information is propagated to all CloudFront edge locations.</p>", "smithy.api#required" => {}}))
    DistributionSummary.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The date and time the distribution was last modified.</p>", "smithy.api#required" => {}}))
    DistributionSummary.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The domain name that corresponds to the distribution, for example, <code>d111111abcdef8.cloudfront.net</code>.</p>", "smithy.api#required" => {}}))
    DistributionSummary.add_member(:aliases, Smithy::Schema::Shapes::ShapeRef.new(shape: Aliases, location_name: 'Aliases', traits: {"smithy.api#documentation" => "<p>A complex type that contains information about CNAMEs (alternate domain names), if any, for this distribution.</p>", "smithy.api#required" => {}}))
    DistributionSummary.add_member(:origins, Smithy::Schema::Shapes::ShapeRef.new(shape: Origins, location_name: 'Origins', traits: {"smithy.api#documentation" => "<p>A complex type that contains information about origins for this distribution.</p>", "smithy.api#required" => {}}))
    DistributionSummary.add_member(:origin_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginGroups, location_name: 'OriginGroups', traits: {"smithy.api#documentation" => "<p>A complex type that contains information about origin groups for this distribution.</p>"}))
    DistributionSummary.add_member(:default_cache_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultCacheBehavior, location_name: 'DefaultCacheBehavior', traits: {"smithy.api#documentation" => "<p>A complex type that describes the default cache behavior if you don't specify a <code>CacheBehavior</code> element or if files don't match any of the values of <code>PathPattern</code> in <code>CacheBehavior</code> elements. You must create exactly one default cache behavior.</p>", "smithy.api#required" => {}}))
    DistributionSummary.add_member(:cache_behaviors, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheBehaviors, location_name: 'CacheBehaviors', traits: {"smithy.api#documentation" => "<p>A complex type that contains zero or more <code>CacheBehavior</code> elements.</p>", "smithy.api#required" => {}}))
    DistributionSummary.add_member(:custom_error_responses, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomErrorResponses, location_name: 'CustomErrorResponses', traits: {"smithy.api#documentation" => "<p>A complex type that contains zero or more <code>CustomErrorResponses</code> elements.</p>", "smithy.api#required" => {}}))
    DistributionSummary.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: 'Comment', traits: {"smithy.api#documentation" => "<p>The comment originally specified when this distribution was created.</p>", "smithy.api#required" => {}}))
    DistributionSummary.add_member(:price_class, Smithy::Schema::Shapes::ShapeRef.new(shape: PriceClass, location_name: 'PriceClass', traits: {"smithy.api#documentation" => "<note> <p>This field only supports standard distributions. You can't specify this field for multi-tenant distributions. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-config-options.html#unsupported-saas\">Unsupported features for SaaS Manager for Amazon CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note> <p>A complex type that contains information about price class for this streaming distribution.</p>", "smithy.api#required" => {}}))
    DistributionSummary.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Whether the distribution is enabled to accept user requests for content.</p>", "smithy.api#required" => {}}))
    DistributionSummary.add_member(:viewer_certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: ViewerCertificate, location_name: 'ViewerCertificate', traits: {"smithy.api#documentation" => "<p>A complex type that determines the distribution's SSL/TLS configuration for communicating with viewers.</p>", "smithy.api#required" => {}}))
    DistributionSummary.add_member(:restrictions, Smithy::Schema::Shapes::ShapeRef.new(shape: Restrictions, location_name: 'Restrictions', traits: {"smithy.api#documentation" => "<p>A complex type that identifies ways in which you want to restrict distribution of your content.</p>", "smithy.api#required" => {}}))
    DistributionSummary.add_member(:web_acl_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'WebACLId', traits: {"smithy.api#documentation" => "<p>The Web ACL Id (if any) associated with the distribution.</p>", "smithy.api#required" => {}}))
    DistributionSummary.add_member(:http_version, Smithy::Schema::Shapes::ShapeRef.new(shape: HttpVersion, location_name: 'HttpVersion', traits: {"smithy.api#documentation" => "<p>Specify the maximum HTTP version that you want viewers to use to communicate with CloudFront. The default value for new web distributions is <code>http2</code>. Viewers that don't support <code>HTTP/2</code> will automatically use an earlier version.</p>", "smithy.api#required" => {}}))
    DistributionSummary.add_member(:is_ipv6_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsIPV6Enabled', traits: {"smithy.api#documentation" => "<p>Whether CloudFront responds to IPv6 DNS requests with an IPv6 address for your distribution.</p>", "smithy.api#required" => {}}))
    DistributionSummary.add_member(:alias_icp_recordals, Smithy::Schema::Shapes::ShapeRef.new(shape: AliasICPRecordals, location_name: 'AliasICPRecordals', traits: {"smithy.api#documentation" => "<p>Amazon Web Services services in China customers must file for an Internet Content Provider (ICP) recordal if they want to serve content publicly on an alternate domain name, also known as a CNAME, that they've added to CloudFront. AliasICPRecordal provides the ICP recordal status for CNAMEs associated with distributions.</p> <p>For more information about ICP recordals, see <a href=\"https://docs.amazonaws.cn/en_us/aws/latest/userguide/accounts-and-credentials.html\"> Signup, Accounts, and Credentials</a> in <i>Getting Started with Amazon Web Services services in China</i>.</p>"}))
    DistributionSummary.add_member(:staging, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Staging', traits: {"smithy.api#documentation" => "<p>A Boolean that indicates whether this is a staging distribution. When this value is <code>true</code>, this is a staging distribution. When this value is <code>false</code>, this is not a staging distribution.</p>", "smithy.api#required" => {}}))
    DistributionSummary.add_member(:connection_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionMode, location_name: 'ConnectionMode', traits: {"smithy.api#documentation" => "<p>This field specifies whether the connection mode is through a standard distribution (direct) or a multi-tenant distribution with distribution tenants (tenant-only).</p>"}))
    DistributionSummary.add_member(:anycast_ip_list_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AnycastIpListId', traits: {"smithy.api#documentation" => "<p>ID of the Anycast static IP list that is associated with the distribution.</p>"}))
    DistributionSummary.type = Types::DistributionSummary
    DistributionSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionSummary, traits: {"smithy.api#xmlName" => "DistributionSummary"})
    DistributionTenant.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the distribution tenant.</p>"}))
    DistributionTenant.add_member(:distribution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DistributionId', traits: {"smithy.api#documentation" => "<p>The ID of the multi-tenant distribution.</p>"}))
    DistributionTenant.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the distribution tenant.</p>"}))
    DistributionTenant.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the distribution tenant.</p>"}))
    DistributionTenant.add_member(:domains, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainResultList, location_name: 'Domains', traits: {"smithy.api#documentation" => "<p>The domains associated with the distribution tenant.</p>"}))
    DistributionTenant.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    DistributionTenant.add_member(:customizations, Smithy::Schema::Shapes::ShapeRef.new(shape: Customizations, location_name: 'Customizations', traits: {"smithy.api#documentation" => "<p>Customizations for the distribution tenant. For each distribution tenant, you can specify the geographic restrictions, and the Amazon Resource Names (ARNs) for the ACM certificate and WAF web ACL. These are specific values that you can override or disable from the multi-tenant distribution that was used to create the distribution tenant.</p>"}))
    DistributionTenant.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: Parameters, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>A list of parameter values to add to the resource. A parameter is specified as a key-value pair. A valid parameter value must exist for any parameter that is marked as required in the multi-tenant distribution.</p>"}))
    DistributionTenant.add_member(:connection_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConnectionGroupId', traits: {"smithy.api#documentation" => "<p>The ID of the connection group for the distribution tenant. If you don't specify a connection group, CloudFront uses the default connection group.</p>"}))
    DistributionTenant.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The date and time when the distribution tenant was created.</p>"}))
    DistributionTenant.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The date and time when the distribution tenant was updated.</p>"}))
    DistributionTenant.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Indicates whether the distribution tenant is in an enabled state. If disabled, the distribution tenant won't serve traffic.</p>"}))
    DistributionTenant.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the distribution tenant.</p>"}))
    DistributionTenant.type = Types::DistributionTenant
    DistributionTenantAssociationFilter.add_member(:distribution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DistributionId', traits: {"smithy.api#documentation" => "<p>The distribution ID to filter by. You can find distribution tenants associated with a specific distribution.</p>"}))
    DistributionTenantAssociationFilter.add_member(:connection_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConnectionGroupId', traits: {"smithy.api#documentation" => "<p>The ID of the connection group to filter by. You can find distribution tenants associated with a specific connection group.</p>"}))
    DistributionTenantAssociationFilter.type = Types::DistributionTenantAssociationFilter
    DistributionTenantList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionTenantSummary, traits: {"smithy.api#xmlName" => "DistributionTenantSummary"})
    DistributionTenantSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the distribution tenant.</p>", "smithy.api#required" => {}}))
    DistributionTenantSummary.add_member(:distribution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DistributionId', traits: {"smithy.api#documentation" => "<p>The identifier for the multi-tenant distribution. For example: <code>EDFDVBD632BHDS5</code>.</p>", "smithy.api#required" => {}}))
    DistributionTenantSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the distribution tenant.</p>", "smithy.api#required" => {}}))
    DistributionTenantSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the distribution tenant.</p>", "smithy.api#required" => {}}))
    DistributionTenantSummary.add_member(:domains, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainResultList, location_name: 'Domains', traits: {"smithy.api#documentation" => "<p>The domains associated with the distribution tenant.</p>", "smithy.api#required" => {}}))
    DistributionTenantSummary.add_member(:connection_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConnectionGroupId', traits: {"smithy.api#documentation" => "<p>The ID of the connection group ID for the distribution tenant. If you don't specify a connection group, CloudFront uses the default connection group.</p>"}))
    DistributionTenantSummary.add_member(:customizations, Smithy::Schema::Shapes::ShapeRef.new(shape: Customizations, location_name: 'Customizations', traits: {"smithy.api#documentation" => "<p>Customizations for the distribution tenant. For each distribution tenant, you can specify the geographic restrictions, and the Amazon Resource Names (ARNs) for the ACM certificate and WAF web ACL. These are specific values that you can override or disable from the multi-tenant distribution that was used to create the distribution tenant.</p>"}))
    DistributionTenantSummary.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The date and time when the distribution tenant was created.</p>", "smithy.api#required" => {}}))
    DistributionTenantSummary.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The date and time when the distribution tenant was updated.</p>", "smithy.api#required" => {}}))
    DistributionTenantSummary.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the distribution tenant.</p>", "smithy.api#required" => {}}))
    DistributionTenantSummary.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Indicates whether the distribution tenants are in an enabled state. If disabled, the distribution tenant won't service traffic.</p>"}))
    DistributionTenantSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the distribution tenant.</p>"}))
    DistributionTenantSummary.type = Types::DistributionTenantSummary
    DnsConfiguration.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Domain', traits: {"smithy.api#documentation" => "<p>The domain name that you're verifying.</p>", "smithy.api#required" => {}}))
    DnsConfiguration.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DnsConfigurationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of your domain name.</p> <ul> <li> <p> <code>valid-configuration</code>: The domain name is correctly configured and points to the correct routing endpoint of the connection group.</p> </li> <li> <p> <code>invalid-configuration</code>: There is either a missing DNS record or the DNS record exists but it's using an incorrect routing endpoint. Update the DNS record to point to the correct routing endpoint.</p> </li> <li> <p> <code>unknown-configuration</code>: CloudFront can't validate your DNS configuration. This status can appear if CloudFront can't verify the DNS record, or the DNS lookup request failed or timed out.</p> </li> </ul>", "smithy.api#required" => {}}))
    DnsConfiguration.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>Explains the status of the DNS configuration.</p>"}))
    DnsConfiguration.type = Types::DnsConfiguration
    DnsConfigurationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DnsConfiguration, traits: {"smithy.api#xmlName" => "DnsConfiguration"})
    DnsConfigurationStatus.add_member(:valid, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Valid', traits: {"smithy.api#enumValue" => "valid-configuration"}))
    DnsConfigurationStatus.add_member(:invalid, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Invalid', traits: {"smithy.api#enumValue" => "invalid-configuration"}))
    DnsConfigurationStatus.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Unknown', traits: {"smithy.api#enumValue" => "unknown-configuration"}))
    DomainConflict.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Domain', traits: {"smithy.api#documentation" => "<p>The domain used to find existing conflicts for domain configurations.</p>", "smithy.api#required" => {}}))
    DomainConflict.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The CloudFront resource type that has a domain conflict.</p>", "smithy.api#required" => {}}))
    DomainConflict.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource that has a domain conflict.</p>", "smithy.api#required" => {}}))
    DomainConflict.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Web Services account for the domain conflict.</p>", "smithy.api#required" => {}}))
    DomainConflict.type = Types::DomainConflict
    DomainConflictsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DomainConflict, traits: {"smithy.api#xmlName" => "DomainConflicts"})
    DomainItem.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Domain', traits: {"smithy.api#documentation" => "<p>The domain name.</p>", "smithy.api#required" => {}}))
    DomainItem.type = Types::DomainItem
    DomainList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DomainItem)
    DomainResult.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Domain', traits: {"smithy.api#documentation" => "<p>The specified domain.</p>", "smithy.api#required" => {}}))
    DomainResult.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Whether the domain is active or inactive.</p>"}))
    DomainResult.type = Types::DomainResult
    DomainResultList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DomainResult)
    DomainStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Active', traits: {"smithy.api#enumValue" => "active"}))
    DomainStatus.add_member(:inactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Inactive', traits: {"smithy.api#enumValue" => "inactive"}))
    EncryptionEntities.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>Number of field pattern items in a field-level encryption content type-profile mapping.</p>", "smithy.api#required" => {}}))
    EncryptionEntities.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionEntityList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>An array of field patterns in a field-level encryption content type-profile mapping. </p>"}))
    EncryptionEntities.type = Types::EncryptionEntities
    EncryptionEntity.add_member(:public_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PublicKeyId', traits: {"smithy.api#documentation" => "<p>The public key associated with a set of field-level encryption patterns, to be used when encrypting the fields that match the patterns.</p>", "smithy.api#required" => {}}))
    EncryptionEntity.add_member(:provider_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProviderId', traits: {"smithy.api#documentation" => "<p>The provider associated with the public key being used for encryption. This value must also be provided with the private key for applications to be able to decrypt data.</p>", "smithy.api#required" => {}}))
    EncryptionEntity.add_member(:field_patterns, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldPatterns, location_name: 'FieldPatterns', traits: {"smithy.api#documentation" => "<p>Field patterns in a field-level encryption content type profile specify the fields that you want to be encrypted. You can provide the full field name, or any beginning characters followed by a wildcard (*). You can't overlap field patterns. For example, you can't have both ABC* and AB*. Note that field patterns are case-sensitive.</p>", "smithy.api#required" => {}}))
    EncryptionEntity.type = Types::EncryptionEntity
    EncryptionEntityList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionEntity, traits: {"smithy.api#xmlName" => "EncryptionEntity"})
    EndPoint.add_member(:stream_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StreamType', traits: {"smithy.api#documentation" => "<p>The type of data stream where you are sending real-time log data. The only valid value is <code>Kinesis</code>.</p>", "smithy.api#required" => {}}))
    EndPoint.add_member(:kinesis_stream_config, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisStreamConfig, location_name: 'KinesisStreamConfig', traits: {"smithy.api#documentation" => "<p>Contains information about the Amazon Kinesis data stream where you are sending real-time log data in a real-time log configuration.</p>"}))
    EndPoint.type = Types::EndPoint
    EndPointList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EndPoint)
    EntityAlreadyExists.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    EntityAlreadyExists.type = Types::EntityAlreadyExists
    EntityLimitExceeded.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    EntityLimitExceeded.type = Types::EntityLimitExceeded
    EntityNotFound.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    EntityNotFound.type = Types::EntityNotFound
    EntitySizeLimitExceeded.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    EntitySizeLimitExceeded.type = Types::EntitySizeLimitExceeded
    EventType.add_member(:viewer_request, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'viewer_request', traits: {"smithy.api#enumValue" => "viewer-request"}))
    EventType.add_member(:viewer_response, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'viewer_response', traits: {"smithy.api#enumValue" => "viewer-response"}))
    EventType.add_member(:origin_request, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'origin_request', traits: {"smithy.api#enumValue" => "origin-request"}))
    EventType.add_member(:origin_response, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'origin_response', traits: {"smithy.api#enumValue" => "origin-response"}))
    FieldLevelEncryption.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The configuration ID for a field-level encryption configuration which includes a set of profiles that specify certain selected data fields to be encrypted by specific public keys.</p>", "smithy.api#required" => {}}))
    FieldLevelEncryption.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The last time the field-level encryption configuration was changed.</p>", "smithy.api#required" => {}}))
    FieldLevelEncryption.add_member(:field_level_encryption_config, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldLevelEncryptionConfig, location_name: 'FieldLevelEncryptionConfig', traits: {"smithy.api#documentation" => "<p>A complex data type that includes the profile configurations specified for field-level encryption.</p>", "smithy.api#required" => {}}))
    FieldLevelEncryption.type = Types::FieldLevelEncryption
    FieldLevelEncryptionConfig.add_member(:caller_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CallerReference', traits: {"smithy.api#documentation" => "<p>A unique number that ensures the request can't be replayed.</p>", "smithy.api#required" => {}}))
    FieldLevelEncryptionConfig.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Comment', traits: {"smithy.api#documentation" => "<p>An optional comment about the configuration. The comment cannot be longer than 128 characters.</p>"}))
    FieldLevelEncryptionConfig.add_member(:query_arg_profile_config, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryArgProfileConfig, location_name: 'QueryArgProfileConfig', traits: {"smithy.api#documentation" => "<p>A complex data type that specifies when to forward content if a profile isn't found and the profile that can be provided as a query argument in a request.</p>"}))
    FieldLevelEncryptionConfig.add_member(:content_type_profile_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentTypeProfileConfig, location_name: 'ContentTypeProfileConfig', traits: {"smithy.api#documentation" => "<p>A complex data type that specifies when to forward content if a content type isn't recognized and profiles to use as by default in a request if a query argument doesn't specify a profile to use.</p>"}))
    FieldLevelEncryptionConfig.type = Types::FieldLevelEncryptionConfig
    FieldLevelEncryptionConfigAlreadyExists.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    FieldLevelEncryptionConfigAlreadyExists.type = Types::FieldLevelEncryptionConfigAlreadyExists
    FieldLevelEncryptionConfigInUse.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    FieldLevelEncryptionConfigInUse.type = Types::FieldLevelEncryptionConfigInUse
    FieldLevelEncryptionList.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If there are more elements to be listed, this element is present and contains the value that you can use for the <code>Marker</code> request parameter to continue listing your configurations where you left off.</p>"}))
    FieldLevelEncryptionList.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of elements you want in the response body.</p>", "smithy.api#required" => {}}))
    FieldLevelEncryptionList.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of field-level encryption items.</p>", "smithy.api#required" => {}}))
    FieldLevelEncryptionList.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldLevelEncryptionSummaryList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>An array of field-level encryption items.</p>"}))
    FieldLevelEncryptionList.type = Types::FieldLevelEncryptionList
    FieldLevelEncryptionProfile.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID for a field-level encryption profile configuration which includes a set of profiles that specify certain selected data fields to be encrypted by specific public keys.</p>", "smithy.api#required" => {}}))
    FieldLevelEncryptionProfile.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The last time the field-level encryption profile was updated.</p>", "smithy.api#required" => {}}))
    FieldLevelEncryptionProfile.add_member(:field_level_encryption_profile_config, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldLevelEncryptionProfileConfig, location_name: 'FieldLevelEncryptionProfileConfig', traits: {"smithy.api#documentation" => "<p>A complex data type that includes the profile name and the encryption entities for the field-level encryption profile.</p>", "smithy.api#required" => {}}))
    FieldLevelEncryptionProfile.type = Types::FieldLevelEncryptionProfile
    FieldLevelEncryptionProfileAlreadyExists.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    FieldLevelEncryptionProfileAlreadyExists.type = Types::FieldLevelEncryptionProfileAlreadyExists
    FieldLevelEncryptionProfileConfig.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Profile name for the field-level encryption profile.</p>", "smithy.api#required" => {}}))
    FieldLevelEncryptionProfileConfig.add_member(:caller_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CallerReference', traits: {"smithy.api#documentation" => "<p>A unique number that ensures that the request can't be replayed.</p>", "smithy.api#required" => {}}))
    FieldLevelEncryptionProfileConfig.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Comment', traits: {"smithy.api#documentation" => "<p>An optional comment for the field-level encryption profile. The comment cannot be longer than 128 characters.</p>"}))
    FieldLevelEncryptionProfileConfig.add_member(:encryption_entities, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionEntities, location_name: 'EncryptionEntities', traits: {"smithy.api#documentation" => "<p>A complex data type of encryption entities for the field-level encryption profile that include the public key ID, provider, and field patterns for specifying which fields to encrypt with this key.</p>", "smithy.api#required" => {}}))
    FieldLevelEncryptionProfileConfig.type = Types::FieldLevelEncryptionProfileConfig
    FieldLevelEncryptionProfileInUse.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    FieldLevelEncryptionProfileInUse.type = Types::FieldLevelEncryptionProfileInUse
    FieldLevelEncryptionProfileList.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If there are more elements to be listed, this element is present and contains the value that you can use for the <code>Marker</code> request parameter to continue listing your profiles where you left off.</p>"}))
    FieldLevelEncryptionProfileList.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of field-level encryption profiles you want in the response body. </p>", "smithy.api#required" => {}}))
    FieldLevelEncryptionProfileList.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of field-level encryption profiles.</p>", "smithy.api#required" => {}}))
    FieldLevelEncryptionProfileList.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldLevelEncryptionProfileSummaryList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>The field-level encryption profile items.</p>"}))
    FieldLevelEncryptionProfileList.type = Types::FieldLevelEncryptionProfileList
    FieldLevelEncryptionProfileSizeExceeded.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    FieldLevelEncryptionProfileSizeExceeded.type = Types::FieldLevelEncryptionProfileSizeExceeded
    FieldLevelEncryptionProfileSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>ID for the field-level encryption profile summary.</p>", "smithy.api#required" => {}}))
    FieldLevelEncryptionProfileSummary.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The time when the field-level encryption profile summary was last updated.</p>", "smithy.api#required" => {}}))
    FieldLevelEncryptionProfileSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Name for the field-level encryption profile summary.</p>", "smithy.api#required" => {}}))
    FieldLevelEncryptionProfileSummary.add_member(:encryption_entities, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionEntities, location_name: 'EncryptionEntities', traits: {"smithy.api#documentation" => "<p>A complex data type of encryption entities for the field-level encryption profile that include the public key ID, provider, and field patterns for specifying which fields to encrypt with this key.</p>", "smithy.api#required" => {}}))
    FieldLevelEncryptionProfileSummary.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Comment', traits: {"smithy.api#documentation" => "<p>An optional comment for the field-level encryption profile summary. The comment cannot be longer than 128 characters.</p>"}))
    FieldLevelEncryptionProfileSummary.type = Types::FieldLevelEncryptionProfileSummary
    FieldLevelEncryptionProfileSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FieldLevelEncryptionProfileSummary, traits: {"smithy.api#xmlName" => "FieldLevelEncryptionProfileSummary"})
    FieldLevelEncryptionSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique ID of a field-level encryption item.</p>", "smithy.api#required" => {}}))
    FieldLevelEncryptionSummary.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The last time that the summary of field-level encryption items was modified.</p>", "smithy.api#required" => {}}))
    FieldLevelEncryptionSummary.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Comment', traits: {"smithy.api#documentation" => "<p>An optional comment about the field-level encryption item. The comment cannot be longer than 128 characters.</p>"}))
    FieldLevelEncryptionSummary.add_member(:query_arg_profile_config, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryArgProfileConfig, location_name: 'QueryArgProfileConfig', traits: {"smithy.api#documentation" => "<p>A summary of a query argument-profile mapping.</p>"}))
    FieldLevelEncryptionSummary.add_member(:content_type_profile_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentTypeProfileConfig, location_name: 'ContentTypeProfileConfig', traits: {"smithy.api#documentation" => "<p>A summary of a content type-profile mapping.</p>"}))
    FieldLevelEncryptionSummary.type = Types::FieldLevelEncryptionSummary
    FieldLevelEncryptionSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FieldLevelEncryptionSummary, traits: {"smithy.api#xmlName" => "FieldLevelEncryptionSummary"})
    FieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "Field"})
    FieldPatternList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "FieldPattern"})
    FieldPatterns.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of field-level encryption field patterns.</p>", "smithy.api#required" => {}}))
    FieldPatterns.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldPatternList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>An array of the field-level encryption field patterns.</p>"}))
    FieldPatterns.type = Types::FieldPatterns
    Format.add_member(:url_encoded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'URLEncoded', traits: {"smithy.api#enumValue" => "URLEncoded"}))
    ForwardedValues.add_member(:query_string, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'QueryString', traits: {"smithy.api#documentation" => "<p>This field is deprecated. We recommend that you use a cache policy or an origin request policy instead of this field.</p> <p>If you want to include query strings in the cache key, use a cache policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you want to send query strings to the origin but not include them in the cache key, use an origin request policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy\">Creating origin request policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>Indicates whether you want CloudFront to forward query strings to the origin that is associated with this cache behavior and cache based on the query string parameters. CloudFront behavior depends on the value of <code>QueryString</code> and on the values that you specify for <code>QueryStringCacheKeys</code>, if any:</p> <p>If you specify true for <code>QueryString</code> and you don't specify any values for <code>QueryStringCacheKeys</code>, CloudFront forwards all query string parameters to the origin and caches based on all query string parameters. Depending on how many query string parameters and values you have, this can adversely affect performance because CloudFront must forward more requests to the origin.</p> <p>If you specify true for <code>QueryString</code> and you specify one or more values for <code>QueryStringCacheKeys</code>, CloudFront forwards all query string parameters to the origin, but it only caches based on the query string parameters that you specify.</p> <p>If you specify false for <code>QueryString</code>, CloudFront doesn't forward any query string parameters to the origin, and doesn't cache based on query string parameters.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/QueryStringParameters.html\">Configuring CloudFront to Cache Based on Query String Parameters</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    ForwardedValues.add_member(:cookies, Smithy::Schema::Shapes::ShapeRef.new(shape: CookiePreference, location_name: 'Cookies', traits: {"smithy.api#documentation" => "<p>This field is deprecated. We recommend that you use a cache policy or an origin request policy instead of this field.</p> <p>If you want to include cookies in the cache key, use a cache policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you want to send cookies to the origin but not include them in the cache key, use an origin request policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy\">Creating origin request policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>A complex type that specifies whether you want CloudFront to forward cookies to the origin and, if so, which ones. For more information about forwarding cookies to the origin, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html\">How CloudFront Forwards, Caches, and Logs Cookies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    ForwardedValues.add_member(:headers, Smithy::Schema::Shapes::ShapeRef.new(shape: Headers, location_name: 'Headers', traits: {"smithy.api#documentation" => "<p>This field is deprecated. We recommend that you use a cache policy or an origin request policy instead of this field.</p> <p>If you want to include headers in the cache key, use a cache policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you want to send headers to the origin but not include them in the cache key, use an origin request policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy\">Creating origin request policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>A complex type that specifies the <code>Headers</code>, if any, that you want CloudFront to forward to the origin for this cache behavior (whitelisted headers). For the headers that you specify, CloudFront also caches separate versions of a specified object that is based on the header values in viewer requests.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/header-caching.html\"> Caching Content Based on Request Headers</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"}))
    ForwardedValues.add_member(:query_string_cache_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStringCacheKeys, location_name: 'QueryStringCacheKeys', traits: {"smithy.api#documentation" => "<p>This field is deprecated. We recommend that you use a cache policy or an origin request policy instead of this field.</p> <p>If you want to include query strings in the cache key, use a cache policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you want to send query strings to the origin but not include them in the cache key, use an origin request policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy\">Creating origin request policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>A complex type that contains information about the query string parameters that you want CloudFront to use for caching for this cache behavior.</p>"}))
    ForwardedValues.type = Types::ForwardedValues
    FrameOptionsList.add_member(:deny, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DENY', traits: {"smithy.api#enumValue" => "DENY"}))
    FrameOptionsList.add_member(:sameorigin, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAMEORIGIN', traits: {"smithy.api#enumValue" => "SAMEORIGIN"}))
    FunctionAlreadyExists.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    FunctionAlreadyExists.type = Types::FunctionAlreadyExists
    FunctionAssociation.add_member(:function_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionARN, location_name: 'FunctionARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the function.</p>", "smithy.api#required" => {}}))
    FunctionAssociation.add_member(:event_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EventType, location_name: 'EventType', traits: {"smithy.api#documentation" => "<p>The event type of the function, either <code>viewer-request</code> or <code>viewer-response</code>. You cannot use origin-facing event types (<code>origin-request</code> and <code>origin-response</code>) with a CloudFront function.</p>", "smithy.api#required" => {}}))
    FunctionAssociation.type = Types::FunctionAssociation
    FunctionAssociationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionAssociation, traits: {"smithy.api#xmlName" => "FunctionAssociation"})
    FunctionAssociations.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of CloudFront functions in the list.</p>", "smithy.api#required" => {}}))
    FunctionAssociations.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionAssociationList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>The CloudFront functions that are associated with a cache behavior in a CloudFront distribution. Your functions must be published to the <code>LIVE</code> stage to associate them with a cache behavior.</p>"}))
    FunctionAssociations.type = Types::FunctionAssociations
    FunctionConfig.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Comment', traits: {"smithy.api#documentation" => "<p>A comment to describe the function.</p>", "smithy.api#required" => {}}))
    FunctionConfig.add_member(:runtime, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionRuntime, location_name: 'Runtime', traits: {"smithy.api#documentation" => "<p>The function's runtime environment version.</p>", "smithy.api#required" => {}}))
    FunctionConfig.add_member(:key_value_store_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValueStoreAssociations, location_name: 'KeyValueStoreAssociations', traits: {"smithy.api#documentation" => "<p>The configuration for the key value store associations.</p>"}))
    FunctionConfig.type = Types::FunctionConfig
    FunctionExecutionLogList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    FunctionInUse.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    FunctionInUse.type = Types::FunctionInUse
    FunctionList.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If there are more items in the list than are in this response, this element is present. It contains the value that you should use in the <code>Marker</code> field of a subsequent request to continue listing functions where you left off.</p>"}))
    FunctionList.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of functions requested.</p>", "smithy.api#required" => {}}))
    FunctionList.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of functions returned in the response.</p>", "smithy.api#required" => {}}))
    FunctionList.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionSummaryList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>Contains the functions in the list.</p>"}))
    FunctionList.type = Types::FunctionList
    FunctionMetadata.add_member(:function_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FunctionARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the function. The ARN uniquely identifies the function.</p>", "smithy.api#required" => {}}))
    FunctionMetadata.add_member(:stage, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionStage, location_name: 'Stage', traits: {"smithy.api#documentation" => "<p>The stage that the function is in, either <code>DEVELOPMENT</code> or <code>LIVE</code>.</p> <p>When a function is in the <code>DEVELOPMENT</code> stage, you can test the function with <code>TestFunction</code>, and update it with <code>UpdateFunction</code>.</p> <p>When a function is in the <code>LIVE</code> stage, you can attach the function to a distribution's cache behavior, using the function's ARN.</p>"}))
    FunctionMetadata.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The date and time when the function was created.</p>"}))
    FunctionMetadata.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The date and time when the function was most recently updated.</p>", "smithy.api#required" => {}}))
    FunctionMetadata.type = Types::FunctionMetadata
    FunctionRuntime.add_member(:cloudfront_js_1_0, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cloudfront_js_1_0', traits: {"smithy.api#enumValue" => "cloudfront-js-1.0"}))
    FunctionRuntime.add_member(:cloudfront_js_2_0, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cloudfront_js_2_0', traits: {"smithy.api#enumValue" => "cloudfront-js-2.0"}))
    FunctionSizeLimitExceeded.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    FunctionSizeLimitExceeded.type = Types::FunctionSizeLimitExceeded
    FunctionStage.add_member(:development, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEVELOPMENT', traits: {"smithy.api#enumValue" => "DEVELOPMENT"}))
    FunctionStage.add_member(:live, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LIVE', traits: {"smithy.api#enumValue" => "LIVE"}))
    FunctionSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the CloudFront function.</p>", "smithy.api#required" => {}}))
    FunctionSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the CloudFront function.</p>"}))
    FunctionSummary.add_member(:function_config, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionConfig, location_name: 'FunctionConfig', traits: {"smithy.api#documentation" => "<p>Contains configuration information about a CloudFront function.</p>", "smithy.api#required" => {}}))
    FunctionSummary.add_member(:function_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionMetadata, location_name: 'FunctionMetadata', traits: {"smithy.api#documentation" => "<p>Contains metadata about a CloudFront function.</p>", "smithy.api#required" => {}}))
    FunctionSummary.type = Types::FunctionSummary
    FunctionSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionSummary, traits: {"smithy.api#xmlName" => "FunctionSummary"})
    GeoRestriction.add_member(:restriction_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GeoRestrictionType, location_name: 'RestrictionType', traits: {"smithy.api#documentation" => "<p>The method that you want to use to restrict distribution of your content by country:</p> <ul> <li> <p> <code>none</code>: No geo restriction is enabled, meaning access to content is not restricted by client geo location.</p> </li> <li> <p> <code>blacklist</code>: The <code>Location</code> elements specify the countries in which you don't want CloudFront to distribute your content.</p> </li> <li> <p> <code>whitelist</code>: The <code>Location</code> elements specify the countries in which you want CloudFront to distribute your content.</p> </li> </ul>", "smithy.api#required" => {}}))
    GeoRestriction.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>When geo restriction is <code>enabled</code>, this is the number of countries in your <code>whitelist</code> or <code>blacklist</code>. Otherwise, when it is not enabled, <code>Quantity</code> is <code>0</code>, and you can omit <code>Items</code>.</p>", "smithy.api#required" => {}}))
    GeoRestriction.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: LocationList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>A complex type that contains a <code>Location</code> element for each country in which you want CloudFront either to distribute your content (<code>whitelist</code>) or not distribute your content (<code>blacklist</code>).</p> <p>The <code>Location</code> element is a two-letter, uppercase country code for a country that you want to include in your <code>blacklist</code> or <code>whitelist</code>. Include one <code>Location</code> element for each country.</p> <p>CloudFront and <code>MaxMind</code> both use <code>ISO 3166</code> country codes. For the current list of countries and the corresponding codes, see <code>ISO 3166-1-alpha-2</code> code on the <i>International Organization for Standardization</i> website. You can also refer to the country list on the CloudFront console, which includes both country names and codes.</p>"}))
    GeoRestriction.type = Types::GeoRestriction
    GeoRestrictionCustomization.add_member(:restriction_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GeoRestrictionType, location_name: 'RestrictionType', traits: {"smithy.api#documentation" => "<p>The method that you want to use to restrict distribution of your content by country:</p> <ul> <li> <p> <code>none</code>: No geographic restriction is enabled, meaning access to content is not restricted by client geo location.</p> </li> <li> <p> <code>blacklist</code>: The <code>Location</code> elements specify the countries in which you don't want CloudFront to distribute your content.</p> </li> <li> <p> <code>whitelist</code>: The <code>Location</code> elements specify the countries in which you want CloudFront to distribute your content.</p> </li> </ul>", "smithy.api#required" => {}}))
    GeoRestrictionCustomization.add_member(:locations, Smithy::Schema::Shapes::ShapeRef.new(shape: LocationList, location_name: 'Locations', traits: {"smithy.api#documentation" => "<p>The locations for geographic restrictions.</p>"}))
    GeoRestrictionCustomization.type = Types::GeoRestrictionCustomization
    GeoRestrictionType.add_member(:blacklist, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'blacklist', traits: {"smithy.api#enumValue" => "blacklist"}))
    GeoRestrictionType.add_member(:whitelist, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'whitelist', traits: {"smithy.api#enumValue" => "whitelist"}))
    GeoRestrictionType.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'none', traits: {"smithy.api#enumValue" => "none"}))
    GetAnycastIpListRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the Anycast static IP list.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAnycastIpListRequest.type = Types::GetAnycastIpListRequest
    GetAnycastIpListResult.add_member(:anycast_ip_list, Smithy::Schema::Shapes::ShapeRef.new(shape: AnycastIpList, location_name: 'AnycastIpList', traits: {"smithy.api#documentation" => "<p>The Anycast static IP list details.</p>", "smithy.api#httpPayload" => {}}))
    GetAnycastIpListResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The version identifier for the current version of the Anycast static IP list.</p>", "smithy.api#httpHeader" => "ETag"}))
    GetAnycastIpListResult[:http_payload] = :anycast_ip_list
    GetAnycastIpListResult[:http_payload_member] = GetAnycastIpListResult.member(:anycast_ip_list)
    GetAnycastIpListResult.type = Types::GetAnycastIpListResult
    GetCachePolicyConfigRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the cache policy. If the cache policy is attached to a distribution's cache behavior, you can get the policy's identifier using <code>ListDistributions</code> or <code>GetDistribution</code>. If the cache policy is not attached to a cache behavior, you can get the identifier using <code>ListCachePolicies</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCachePolicyConfigRequest.type = Types::GetCachePolicyConfigRequest
    GetCachePolicyConfigResult.add_member(:cache_policy_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CachePolicyConfig, location_name: 'CachePolicyConfig', traits: {"smithy.api#documentation" => "<p>The cache policy configuration.</p>", "smithy.api#httpPayload" => {}}))
    GetCachePolicyConfigResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the cache policy.</p>", "smithy.api#httpHeader" => "ETag"}))
    GetCachePolicyConfigResult[:http_payload] = :cache_policy_config
    GetCachePolicyConfigResult[:http_payload_member] = GetCachePolicyConfigResult.member(:cache_policy_config)
    GetCachePolicyConfigResult.type = Types::GetCachePolicyConfigResult
    GetCachePolicyRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the cache policy. If the cache policy is attached to a distribution's cache behavior, you can get the policy's identifier using <code>ListDistributions</code> or <code>GetDistribution</code>. If the cache policy is not attached to a cache behavior, you can get the identifier using <code>ListCachePolicies</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCachePolicyRequest.type = Types::GetCachePolicyRequest
    GetCachePolicyResult.add_member(:cache_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: CachePolicy, location_name: 'CachePolicy', traits: {"smithy.api#documentation" => "<p>The cache policy.</p>", "smithy.api#httpPayload" => {}}))
    GetCachePolicyResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the cache policy.</p>", "smithy.api#httpHeader" => "ETag"}))
    GetCachePolicyResult[:http_payload] = :cache_policy
    GetCachePolicyResult[:http_payload_member] = GetCachePolicyResult.member(:cache_policy)
    GetCachePolicyResult.type = Types::GetCachePolicyResult
    GetCloudFrontOriginAccessIdentityConfigRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identity's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCloudFrontOriginAccessIdentityConfigRequest.type = Types::GetCloudFrontOriginAccessIdentityConfigRequest
    GetCloudFrontOriginAccessIdentityConfigResult.add_member(:cloud_front_origin_access_identity_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudFrontOriginAccessIdentityConfig, location_name: 'CloudFrontOriginAccessIdentityConfig', traits: {"smithy.api#documentation" => "<p>The origin access identity's configuration information.</p>", "smithy.api#httpPayload" => {}}))
    GetCloudFrontOriginAccessIdentityConfigResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>", "smithy.api#httpHeader" => "ETag"}))
    GetCloudFrontOriginAccessIdentityConfigResult[:http_payload] = :cloud_front_origin_access_identity_config
    GetCloudFrontOriginAccessIdentityConfigResult[:http_payload_member] = GetCloudFrontOriginAccessIdentityConfigResult.member(:cloud_front_origin_access_identity_config)
    GetCloudFrontOriginAccessIdentityConfigResult.type = Types::GetCloudFrontOriginAccessIdentityConfigResult
    GetCloudFrontOriginAccessIdentityRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identity's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCloudFrontOriginAccessIdentityRequest.type = Types::GetCloudFrontOriginAccessIdentityRequest
    GetCloudFrontOriginAccessIdentityResult.add_member(:cloud_front_origin_access_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudFrontOriginAccessIdentity, location_name: 'CloudFrontOriginAccessIdentity', traits: {"smithy.api#documentation" => "<p>The origin access identity's information.</p>", "smithy.api#httpPayload" => {}}))
    GetCloudFrontOriginAccessIdentityResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the origin access identity's information. For example: <code>E2QWRUHAPOMQZL</code>.</p>", "smithy.api#httpHeader" => "ETag"}))
    GetCloudFrontOriginAccessIdentityResult[:http_payload] = :cloud_front_origin_access_identity
    GetCloudFrontOriginAccessIdentityResult[:http_payload_member] = GetCloudFrontOriginAccessIdentityResult.member(:cloud_front_origin_access_identity)
    GetCloudFrontOriginAccessIdentityResult.type = Types::GetCloudFrontOriginAccessIdentityResult
    GetConnectionGroupByRoutingEndpointRequest.add_member(:routing_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoutingEndpoint', traits: {"smithy.api#documentation" => "<p>The routing endpoint for the target connection group, such as d111111abcdef8.cloudfront.net.</p>", "smithy.api#httpQuery" => "RoutingEndpoint", "smithy.api#required" => {}}))
    GetConnectionGroupByRoutingEndpointRequest.type = Types::GetConnectionGroupByRoutingEndpointRequest
    GetConnectionGroupByRoutingEndpointResult.add_member(:connection_group, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionGroup, location_name: 'ConnectionGroup', traits: {"smithy.api#httpPayload" => {}}))
    GetConnectionGroupByRoutingEndpointResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the connection group.</p>", "smithy.api#httpHeader" => "ETag"}))
    GetConnectionGroupByRoutingEndpointResult[:http_payload] = :connection_group
    GetConnectionGroupByRoutingEndpointResult[:http_payload_member] = GetConnectionGroupByRoutingEndpointResult.member(:connection_group)
    GetConnectionGroupByRoutingEndpointResult.type = Types::GetConnectionGroupByRoutingEndpointResult
    GetConnectionGroupRequest.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>The ID, name, or Amazon Resource Name (ARN) of the connection group.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConnectionGroupRequest.type = Types::GetConnectionGroupRequest
    GetConnectionGroupResult.add_member(:connection_group, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionGroup, location_name: 'ConnectionGroup', traits: {"smithy.api#documentation" => "<p>The connection group that you retrieved.</p>", "smithy.api#httpPayload" => {}}))
    GetConnectionGroupResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the connection group.</p>", "smithy.api#httpHeader" => "ETag"}))
    GetConnectionGroupResult[:http_payload] = :connection_group
    GetConnectionGroupResult[:http_payload_member] = GetConnectionGroupResult.member(:connection_group)
    GetConnectionGroupResult.type = Types::GetConnectionGroupResult
    GetContinuousDeploymentPolicyConfigRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the continuous deployment policy whose configuration you are getting.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContinuousDeploymentPolicyConfigRequest.type = Types::GetContinuousDeploymentPolicyConfigRequest
    GetContinuousDeploymentPolicyConfigResult.add_member(:continuous_deployment_policy_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousDeploymentPolicyConfig, location_name: 'ContinuousDeploymentPolicyConfig', traits: {"smithy.api#httpPayload" => {}}))
    GetContinuousDeploymentPolicyConfigResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The version identifier for the current version of the continuous deployment policy.</p>", "smithy.api#httpHeader" => "ETag"}))
    GetContinuousDeploymentPolicyConfigResult[:http_payload] = :continuous_deployment_policy_config
    GetContinuousDeploymentPolicyConfigResult[:http_payload_member] = GetContinuousDeploymentPolicyConfigResult.member(:continuous_deployment_policy_config)
    GetContinuousDeploymentPolicyConfigResult.type = Types::GetContinuousDeploymentPolicyConfigResult
    GetContinuousDeploymentPolicyRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the continuous deployment policy that you are getting.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContinuousDeploymentPolicyRequest.type = Types::GetContinuousDeploymentPolicyRequest
    GetContinuousDeploymentPolicyResult.add_member(:continuous_deployment_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousDeploymentPolicy, location_name: 'ContinuousDeploymentPolicy', traits: {"smithy.api#documentation" => "<p>A continuous deployment policy.</p>", "smithy.api#httpPayload" => {}}))
    GetContinuousDeploymentPolicyResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The version identifier for the current version of the continuous deployment policy.</p>", "smithy.api#httpHeader" => "ETag"}))
    GetContinuousDeploymentPolicyResult[:http_payload] = :continuous_deployment_policy
    GetContinuousDeploymentPolicyResult[:http_payload_member] = GetContinuousDeploymentPolicyResult.member(:continuous_deployment_policy)
    GetContinuousDeploymentPolicyResult.type = Types::GetContinuousDeploymentPolicyResult
    GetDistributionConfigRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The distribution's ID. If the ID is empty, an empty distribution configuration is returned.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDistributionConfigRequest.type = Types::GetDistributionConfigRequest
    GetDistributionConfigResult.add_member(:distribution_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionConfig, location_name: 'DistributionConfig', traits: {"smithy.api#documentation" => "<p>The distribution's configuration information.</p>", "smithy.api#httpPayload" => {}}))
    GetDistributionConfigResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>", "smithy.api#httpHeader" => "ETag"}))
    GetDistributionConfigResult[:http_payload] = :distribution_config
    GetDistributionConfigResult[:http_payload_member] = GetDistributionConfigResult.member(:distribution_config)
    GetDistributionConfigResult.type = Types::GetDistributionConfigResult
    GetDistributionRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The distribution's ID. If the ID is empty, an empty distribution configuration is returned.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDistributionRequest.type = Types::GetDistributionRequest
    GetDistributionResult.add_member(:distribution, Smithy::Schema::Shapes::ShapeRef.new(shape: Distribution, location_name: 'Distribution', traits: {"smithy.api#documentation" => "<p>The distribution's information.</p>", "smithy.api#httpPayload" => {}}))
    GetDistributionResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the distribution's information. For example: <code>E2QWRUHAPOMQZL</code>.</p>", "smithy.api#httpHeader" => "ETag"}))
    GetDistributionResult[:http_payload] = :distribution
    GetDistributionResult[:http_payload_member] = GetDistributionResult.member(:distribution)
    GetDistributionResult.type = Types::GetDistributionResult
    GetDistributionTenantByDomainRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Domain', traits: {"smithy.api#documentation" => "<p>A domain name associated with the target distribution tenant.</p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    GetDistributionTenantByDomainRequest.type = Types::GetDistributionTenantByDomainRequest
    GetDistributionTenantByDomainResult.add_member(:distribution_tenant, Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionTenant, location_name: 'DistributionTenant', traits: {"smithy.api#httpPayload" => {}}))
    GetDistributionTenantByDomainResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the distribution tenant.</p>", "smithy.api#httpHeader" => "ETag"}))
    GetDistributionTenantByDomainResult[:http_payload] = :distribution_tenant
    GetDistributionTenantByDomainResult[:http_payload_member] = GetDistributionTenantByDomainResult.member(:distribution_tenant)
    GetDistributionTenantByDomainResult.type = Types::GetDistributionTenantByDomainResult
    GetDistributionTenantRequest.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>The identifier of the distribution tenant. You can specify the ARN, ID, or name of the distribution tenant.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDistributionTenantRequest.type = Types::GetDistributionTenantRequest
    GetDistributionTenantResult.add_member(:distribution_tenant, Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionTenant, location_name: 'DistributionTenant', traits: {"smithy.api#documentation" => "<p>The distribution tenant that you retrieved.</p>", "smithy.api#httpPayload" => {}}))
    GetDistributionTenantResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the distribution tenant.</p>", "smithy.api#httpHeader" => "ETag"}))
    GetDistributionTenantResult[:http_payload] = :distribution_tenant
    GetDistributionTenantResult[:http_payload_member] = GetDistributionTenantResult.member(:distribution_tenant)
    GetDistributionTenantResult.type = Types::GetDistributionTenantResult
    GetFieldLevelEncryptionConfigRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>Request the ID for the field-level encryption configuration information.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFieldLevelEncryptionConfigRequest.type = Types::GetFieldLevelEncryptionConfigRequest
    GetFieldLevelEncryptionConfigResult.add_member(:field_level_encryption_config, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldLevelEncryptionConfig, location_name: 'FieldLevelEncryptionConfig', traits: {"smithy.api#documentation" => "<p>Return the field-level encryption configuration information.</p>", "smithy.api#httpPayload" => {}}))
    GetFieldLevelEncryptionConfigResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the field level encryption configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>", "smithy.api#httpHeader" => "ETag"}))
    GetFieldLevelEncryptionConfigResult[:http_payload] = :field_level_encryption_config
    GetFieldLevelEncryptionConfigResult[:http_payload_member] = GetFieldLevelEncryptionConfigResult.member(:field_level_encryption_config)
    GetFieldLevelEncryptionConfigResult.type = Types::GetFieldLevelEncryptionConfigResult
    GetFieldLevelEncryptionProfileConfigRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>Get the ID for the field-level encryption profile configuration information.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFieldLevelEncryptionProfileConfigRequest.type = Types::GetFieldLevelEncryptionProfileConfigRequest
    GetFieldLevelEncryptionProfileConfigResult.add_member(:field_level_encryption_profile_config, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldLevelEncryptionProfileConfig, location_name: 'FieldLevelEncryptionProfileConfig', traits: {"smithy.api#documentation" => "<p>Return the field-level encryption profile configuration information.</p>", "smithy.api#httpPayload" => {}}))
    GetFieldLevelEncryptionProfileConfigResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the field-level encryption profile configuration result. For example: <code>E2QWRUHAPOMQZL</code>.</p>", "smithy.api#httpHeader" => "ETag"}))
    GetFieldLevelEncryptionProfileConfigResult[:http_payload] = :field_level_encryption_profile_config
    GetFieldLevelEncryptionProfileConfigResult[:http_payload_member] = GetFieldLevelEncryptionProfileConfigResult.member(:field_level_encryption_profile_config)
    GetFieldLevelEncryptionProfileConfigResult.type = Types::GetFieldLevelEncryptionProfileConfigResult
    GetFieldLevelEncryptionProfileRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>Get the ID for the field-level encryption profile information.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFieldLevelEncryptionProfileRequest.type = Types::GetFieldLevelEncryptionProfileRequest
    GetFieldLevelEncryptionProfileResult.add_member(:field_level_encryption_profile, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldLevelEncryptionProfile, location_name: 'FieldLevelEncryptionProfile', traits: {"smithy.api#documentation" => "<p>Return the field-level encryption profile information.</p>", "smithy.api#httpPayload" => {}}))
    GetFieldLevelEncryptionProfileResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the field level encryption profile. For example: <code>E2QWRUHAPOMQZL</code>.</p>", "smithy.api#httpHeader" => "ETag"}))
    GetFieldLevelEncryptionProfileResult[:http_payload] = :field_level_encryption_profile
    GetFieldLevelEncryptionProfileResult[:http_payload_member] = GetFieldLevelEncryptionProfileResult.member(:field_level_encryption_profile)
    GetFieldLevelEncryptionProfileResult.type = Types::GetFieldLevelEncryptionProfileResult
    GetFieldLevelEncryptionRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>Request the ID for the field-level encryption configuration information.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFieldLevelEncryptionRequest.type = Types::GetFieldLevelEncryptionRequest
    GetFieldLevelEncryptionResult.add_member(:field_level_encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldLevelEncryption, location_name: 'FieldLevelEncryption', traits: {"smithy.api#documentation" => "<p>Return the field-level encryption configuration information.</p>", "smithy.api#httpPayload" => {}}))
    GetFieldLevelEncryptionResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the field level encryption configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>", "smithy.api#httpHeader" => "ETag"}))
    GetFieldLevelEncryptionResult[:http_payload] = :field_level_encryption
    GetFieldLevelEncryptionResult[:http_payload_member] = GetFieldLevelEncryptionResult.member(:field_level_encryption)
    GetFieldLevelEncryptionResult.type = Types::GetFieldLevelEncryptionResult
    GetFunctionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the function whose code you are getting.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFunctionRequest.add_member(:stage, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionStage, location_name: 'Stage', traits: {"smithy.api#documentation" => "<p>The function's stage, either <code>DEVELOPMENT</code> or <code>LIVE</code>.</p>", "smithy.api#httpQuery" => "Stage"}))
    GetFunctionRequest.type = Types::GetFunctionRequest
    GetFunctionResult.add_member(:function_code, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionBlob, location_name: 'FunctionCode', traits: {"smithy.api#documentation" => "<p>The function code of a CloudFront function.</p>", "smithy.api#httpPayload" => {}}))
    GetFunctionResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The version identifier for the current version of the CloudFront function.</p>", "smithy.api#httpHeader" => "ETag"}))
    GetFunctionResult.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ContentType', traits: {"smithy.api#documentation" => "<p>The content type (media type) of the response.</p>", "smithy.api#httpHeader" => "Content-Type"}))
    GetFunctionResult[:http_payload] = :function_code
    GetFunctionResult[:http_payload_member] = GetFunctionResult.member(:function_code)
    GetFunctionResult.type = Types::GetFunctionResult
    GetInvalidationForDistributionTenantRequest.add_member(:distribution_tenant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DistributionTenantId', traits: {"smithy.api#documentation" => "<p>The ID of the distribution tenant.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetInvalidationForDistributionTenantRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the invalidation to retrieve.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetInvalidationForDistributionTenantRequest.type = Types::GetInvalidationForDistributionTenantRequest
    GetInvalidationForDistributionTenantResult.add_member(:invalidation, Smithy::Schema::Shapes::ShapeRef.new(shape: Invalidation, location_name: 'Invalidation', traits: {"smithy.api#httpPayload" => {}}))
    GetInvalidationForDistributionTenantResult[:http_payload] = :invalidation
    GetInvalidationForDistributionTenantResult[:http_payload_member] = GetInvalidationForDistributionTenantResult.member(:invalidation)
    GetInvalidationForDistributionTenantResult.type = Types::GetInvalidationForDistributionTenantResult
    GetInvalidationRequest.add_member(:distribution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DistributionId', traits: {"smithy.api#documentation" => "<p>The distribution's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetInvalidationRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier for the invalidation request, for example, <code>IDFDVBD632BHDS5</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetInvalidationRequest.type = Types::GetInvalidationRequest
    GetInvalidationResult.add_member(:invalidation, Smithy::Schema::Shapes::ShapeRef.new(shape: Invalidation, location_name: 'Invalidation', traits: {"smithy.api#documentation" => "<p>The invalidation's information. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/InvalidationDatatype.html\">Invalidation Complex Type</a>.</p>", "smithy.api#httpPayload" => {}}))
    GetInvalidationResult[:http_payload] = :invalidation
    GetInvalidationResult[:http_payload_member] = GetInvalidationResult.member(:invalidation)
    GetInvalidationResult.type = Types::GetInvalidationResult
    GetKeyGroupConfigRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the key group whose configuration you are getting. To get the identifier, use <code>ListKeyGroups</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetKeyGroupConfigRequest.type = Types::GetKeyGroupConfigRequest
    GetKeyGroupConfigResult.add_member(:key_group_config, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyGroupConfig, location_name: 'KeyGroupConfig', traits: {"smithy.api#documentation" => "<p>The key group configuration.</p>", "smithy.api#httpPayload" => {}}))
    GetKeyGroupConfigResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The identifier for this version of the key group.</p>", "smithy.api#httpHeader" => "ETag"}))
    GetKeyGroupConfigResult[:http_payload] = :key_group_config
    GetKeyGroupConfigResult[:http_payload_member] = GetKeyGroupConfigResult.member(:key_group_config)
    GetKeyGroupConfigResult.type = Types::GetKeyGroupConfigResult
    GetKeyGroupRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the key group that you are getting. To get the identifier, use <code>ListKeyGroups</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetKeyGroupRequest.type = Types::GetKeyGroupRequest
    GetKeyGroupResult.add_member(:key_group, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyGroup, location_name: 'KeyGroup', traits: {"smithy.api#documentation" => "<p>The key group.</p>", "smithy.api#httpPayload" => {}}))
    GetKeyGroupResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The identifier for this version of the key group.</p>", "smithy.api#httpHeader" => "ETag"}))
    GetKeyGroupResult[:http_payload] = :key_group
    GetKeyGroupResult[:http_payload_member] = GetKeyGroupResult.member(:key_group)
    GetKeyGroupResult.type = Types::GetKeyGroupResult
    GetManagedCertificateDetailsRequest.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>The identifier of the distribution tenant. You can specify the ARN, ID, or name of the distribution tenant.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetManagedCertificateDetailsRequest.type = Types::GetManagedCertificateDetailsRequest
    GetManagedCertificateDetailsResult.add_member(:managed_certificate_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedCertificateDetails, location_name: 'ManagedCertificateDetails', traits: {"smithy.api#documentation" => "<p>Contains details about the CloudFront managed ACM certificate.</p>", "smithy.api#httpPayload" => {}}))
    GetManagedCertificateDetailsResult[:http_payload] = :managed_certificate_details
    GetManagedCertificateDetailsResult[:http_payload_member] = GetManagedCertificateDetailsResult.member(:managed_certificate_details)
    GetManagedCertificateDetailsResult.type = Types::GetManagedCertificateDetailsResult
    GetMonitoringSubscriptionRequest.add_member(:distribution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DistributionId', traits: {"smithy.api#documentation" => "<p>The ID of the distribution that you are getting metrics information for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMonitoringSubscriptionRequest.type = Types::GetMonitoringSubscriptionRequest
    GetMonitoringSubscriptionResult.add_member(:monitoring_subscription, Smithy::Schema::Shapes::ShapeRef.new(shape: MonitoringSubscription, location_name: 'MonitoringSubscription', traits: {"smithy.api#documentation" => "<p>A monitoring subscription. This structure contains information about whether additional CloudWatch metrics are enabled for a given CloudFront distribution.</p>", "smithy.api#httpPayload" => {}}))
    GetMonitoringSubscriptionResult[:http_payload] = :monitoring_subscription
    GetMonitoringSubscriptionResult[:http_payload_member] = GetMonitoringSubscriptionResult.member(:monitoring_subscription)
    GetMonitoringSubscriptionResult.type = Types::GetMonitoringSubscriptionResult
    GetOriginAccessControlConfigRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the origin access control.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetOriginAccessControlConfigRequest.type = Types::GetOriginAccessControlConfigRequest
    GetOriginAccessControlConfigResult.add_member(:origin_access_control_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginAccessControlConfig, location_name: 'OriginAccessControlConfig', traits: {"smithy.api#documentation" => "<p>Contains an origin access control configuration.</p>", "smithy.api#httpPayload" => {}}))
    GetOriginAccessControlConfigResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The version identifier for the current version of the origin access control.</p>", "smithy.api#httpHeader" => "ETag"}))
    GetOriginAccessControlConfigResult[:http_payload] = :origin_access_control_config
    GetOriginAccessControlConfigResult[:http_payload_member] = GetOriginAccessControlConfigResult.member(:origin_access_control_config)
    GetOriginAccessControlConfigResult.type = Types::GetOriginAccessControlConfigResult
    GetOriginAccessControlRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the origin access control.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetOriginAccessControlRequest.type = Types::GetOriginAccessControlRequest
    GetOriginAccessControlResult.add_member(:origin_access_control, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginAccessControl, location_name: 'OriginAccessControl', traits: {"smithy.api#documentation" => "<p>Contains an origin access control, including its unique identifier.</p>", "smithy.api#httpPayload" => {}}))
    GetOriginAccessControlResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The version identifier for the current version of the origin access control.</p>", "smithy.api#httpHeader" => "ETag"}))
    GetOriginAccessControlResult[:http_payload] = :origin_access_control
    GetOriginAccessControlResult[:http_payload_member] = GetOriginAccessControlResult.member(:origin_access_control)
    GetOriginAccessControlResult.type = Types::GetOriginAccessControlResult
    GetOriginRequestPolicyConfigRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the origin request policy. If the origin request policy is attached to a distribution's cache behavior, you can get the policy's identifier using <code>ListDistributions</code> or <code>GetDistribution</code>. If the origin request policy is not attached to a cache behavior, you can get the identifier using <code>ListOriginRequestPolicies</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetOriginRequestPolicyConfigRequest.type = Types::GetOriginRequestPolicyConfigRequest
    GetOriginRequestPolicyConfigResult.add_member(:origin_request_policy_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginRequestPolicyConfig, location_name: 'OriginRequestPolicyConfig', traits: {"smithy.api#documentation" => "<p>The origin request policy configuration.</p>", "smithy.api#httpPayload" => {}}))
    GetOriginRequestPolicyConfigResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the origin request policy.</p>", "smithy.api#httpHeader" => "ETag"}))
    GetOriginRequestPolicyConfigResult[:http_payload] = :origin_request_policy_config
    GetOriginRequestPolicyConfigResult[:http_payload_member] = GetOriginRequestPolicyConfigResult.member(:origin_request_policy_config)
    GetOriginRequestPolicyConfigResult.type = Types::GetOriginRequestPolicyConfigResult
    GetOriginRequestPolicyRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the origin request policy. If the origin request policy is attached to a distribution's cache behavior, you can get the policy's identifier using <code>ListDistributions</code> or <code>GetDistribution</code>. If the origin request policy is not attached to a cache behavior, you can get the identifier using <code>ListOriginRequestPolicies</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetOriginRequestPolicyRequest.type = Types::GetOriginRequestPolicyRequest
    GetOriginRequestPolicyResult.add_member(:origin_request_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginRequestPolicy, location_name: 'OriginRequestPolicy', traits: {"smithy.api#documentation" => "<p>The origin request policy.</p>", "smithy.api#httpPayload" => {}}))
    GetOriginRequestPolicyResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the origin request policy.</p>", "smithy.api#httpHeader" => "ETag"}))
    GetOriginRequestPolicyResult[:http_payload] = :origin_request_policy
    GetOriginRequestPolicyResult[:http_payload_member] = GetOriginRequestPolicyResult.member(:origin_request_policy)
    GetOriginRequestPolicyResult.type = Types::GetOriginRequestPolicyResult
    GetPublicKeyConfigRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the public key whose configuration you are getting.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPublicKeyConfigRequest.type = Types::GetPublicKeyConfigRequest
    GetPublicKeyConfigResult.add_member(:public_key_config, Smithy::Schema::Shapes::ShapeRef.new(shape: PublicKeyConfig, location_name: 'PublicKeyConfig', traits: {"smithy.api#documentation" => "<p>A public key configuration.</p>", "smithy.api#httpPayload" => {}}))
    GetPublicKeyConfigResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The identifier for this version of the public key configuration.</p>", "smithy.api#httpHeader" => "ETag"}))
    GetPublicKeyConfigResult[:http_payload] = :public_key_config
    GetPublicKeyConfigResult[:http_payload_member] = GetPublicKeyConfigResult.member(:public_key_config)
    GetPublicKeyConfigResult.type = Types::GetPublicKeyConfigResult
    GetPublicKeyRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the public key you are getting.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPublicKeyRequest.type = Types::GetPublicKeyRequest
    GetPublicKeyResult.add_member(:public_key, Smithy::Schema::Shapes::ShapeRef.new(shape: PublicKey, location_name: 'PublicKey', traits: {"smithy.api#documentation" => "<p>The public key.</p>", "smithy.api#httpPayload" => {}}))
    GetPublicKeyResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The identifier for this version of the public key.</p>", "smithy.api#httpHeader" => "ETag"}))
    GetPublicKeyResult[:http_payload] = :public_key
    GetPublicKeyResult[:http_payload_member] = GetPublicKeyResult.member(:public_key)
    GetPublicKeyResult.type = Types::GetPublicKeyResult
    GetRealtimeLogConfigRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the real-time log configuration to get.</p>"}))
    GetRealtimeLogConfigRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the real-time log configuration to get.</p>"}))
    GetRealtimeLogConfigRequest.type = Types::GetRealtimeLogConfigRequest
    GetRealtimeLogConfigResult.add_member(:realtime_log_config, Smithy::Schema::Shapes::ShapeRef.new(shape: RealtimeLogConfig, location_name: 'RealtimeLogConfig', traits: {"smithy.api#documentation" => "<p>A real-time log configuration.</p>"}))
    GetRealtimeLogConfigResult.type = Types::GetRealtimeLogConfigResult
    GetResponseHeadersPolicyConfigRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier for the response headers policy.</p> <p>If the response headers policy is attached to a distribution's cache behavior, you can get the policy's identifier using <code>ListDistributions</code> or <code>GetDistribution</code>. If the response headers policy is not attached to a cache behavior, you can get the identifier using <code>ListResponseHeadersPolicies</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResponseHeadersPolicyConfigRequest.type = Types::GetResponseHeadersPolicyConfigRequest
    GetResponseHeadersPolicyConfigResult.add_member(:response_headers_policy_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseHeadersPolicyConfig, location_name: 'ResponseHeadersPolicyConfig', traits: {"smithy.api#documentation" => "<p>Contains a response headers policy.</p>", "smithy.api#httpPayload" => {}}))
    GetResponseHeadersPolicyConfigResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The version identifier for the current version of the response headers policy.</p>", "smithy.api#httpHeader" => "ETag"}))
    GetResponseHeadersPolicyConfigResult[:http_payload] = :response_headers_policy_config
    GetResponseHeadersPolicyConfigResult[:http_payload_member] = GetResponseHeadersPolicyConfigResult.member(:response_headers_policy_config)
    GetResponseHeadersPolicyConfigResult.type = Types::GetResponseHeadersPolicyConfigResult
    GetResponseHeadersPolicyRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier for the response headers policy.</p> <p>If the response headers policy is attached to a distribution's cache behavior, you can get the policy's identifier using <code>ListDistributions</code> or <code>GetDistribution</code>. If the response headers policy is not attached to a cache behavior, you can get the identifier using <code>ListResponseHeadersPolicies</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResponseHeadersPolicyRequest.type = Types::GetResponseHeadersPolicyRequest
    GetResponseHeadersPolicyResult.add_member(:response_headers_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseHeadersPolicy, location_name: 'ResponseHeadersPolicy', traits: {"smithy.api#documentation" => "<p>Contains a response headers policy.</p>", "smithy.api#httpPayload" => {}}))
    GetResponseHeadersPolicyResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The version identifier for the current version of the response headers policy.</p>", "smithy.api#httpHeader" => "ETag"}))
    GetResponseHeadersPolicyResult[:http_payload] = :response_headers_policy
    GetResponseHeadersPolicyResult[:http_payload_member] = GetResponseHeadersPolicyResult.member(:response_headers_policy)
    GetResponseHeadersPolicyResult.type = Types::GetResponseHeadersPolicyResult
    GetStreamingDistributionConfigRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The streaming distribution's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStreamingDistributionConfigRequest.type = Types::GetStreamingDistributionConfigRequest
    GetStreamingDistributionConfigResult.add_member(:streaming_distribution_config, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamingDistributionConfig, location_name: 'StreamingDistributionConfig', traits: {"smithy.api#documentation" => "<p>The streaming distribution's configuration information.</p>", "smithy.api#httpPayload" => {}}))
    GetStreamingDistributionConfigResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>. </p>", "smithy.api#httpHeader" => "ETag"}))
    GetStreamingDistributionConfigResult[:http_payload] = :streaming_distribution_config
    GetStreamingDistributionConfigResult[:http_payload_member] = GetStreamingDistributionConfigResult.member(:streaming_distribution_config)
    GetStreamingDistributionConfigResult.type = Types::GetStreamingDistributionConfigResult
    GetStreamingDistributionRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The streaming distribution's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStreamingDistributionRequest.type = Types::GetStreamingDistributionRequest
    GetStreamingDistributionResult.add_member(:streaming_distribution, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamingDistribution, location_name: 'StreamingDistribution', traits: {"smithy.api#documentation" => "<p>The streaming distribution's information.</p>", "smithy.api#httpPayload" => {}}))
    GetStreamingDistributionResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the streaming distribution's information. For example: <code>E2QWRUHAPOMQZL</code>.</p>", "smithy.api#httpHeader" => "ETag"}))
    GetStreamingDistributionResult[:http_payload] = :streaming_distribution
    GetStreamingDistributionResult[:http_payload_member] = GetStreamingDistributionResult.member(:streaming_distribution)
    GetStreamingDistributionResult.type = Types::GetStreamingDistributionResult
    GetVpcOriginRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The VPC origin ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVpcOriginRequest.type = Types::GetVpcOriginRequest
    GetVpcOriginResult.add_member(:vpc_origin, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcOrigin, location_name: 'VpcOrigin', traits: {"smithy.api#documentation" => "<p>The VPC origin.</p>", "smithy.api#httpPayload" => {}}))
    GetVpcOriginResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The VPC origin ETag.</p>", "smithy.api#httpHeader" => "ETag"}))
    GetVpcOriginResult[:http_payload] = :vpc_origin
    GetVpcOriginResult[:http_payload_member] = GetVpcOriginResult.member(:vpc_origin)
    GetVpcOriginResult.type = Types::GetVpcOriginResult
    GrpcConfig.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Enables your CloudFront distribution to receive gRPC requests and to proxy them directly to your origins.</p>", "smithy.api#required" => {}}))
    GrpcConfig.type = Types::GrpcConfig
    HeaderList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "Name"})
    Headers.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of header names in the <code>Items</code> list.</p>", "smithy.api#required" => {}}))
    Headers.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: HeaderList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>A list of HTTP header names.</p>"}))
    Headers.type = Types::Headers
    HttpVersion.add_member(:http1_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'http1_1', traits: {"smithy.api#enumValue" => "http1.1"}))
    HttpVersion.add_member(:http2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'http2', traits: {"smithy.api#enumValue" => "http2"}))
    HttpVersion.add_member(:http3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'http3', traits: {"smithy.api#enumValue" => "http3"}))
    HttpVersion.add_member(:http2and3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'http2and3', traits: {"smithy.api#enumValue" => "http2and3"}))
    ICPRecordalStatus.add_member(:approved, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPROVED', traits: {"smithy.api#enumValue" => "APPROVED"}))
    ICPRecordalStatus.add_member(:suspended, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUSPENDED', traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    ICPRecordalStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    IllegalDelete.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    IllegalDelete.type = Types::IllegalDelete
    IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior.type = Types::IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior
    IllegalOriginAccessConfiguration.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    IllegalOriginAccessConfiguration.type = Types::IllegalOriginAccessConfiguration
    IllegalUpdate.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    IllegalUpdate.type = Types::IllegalUpdate
    ImportSource.add_member(:source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportSourceType, location_name: 'SourceType', traits: {"smithy.api#documentation" => "<p>The source type of the import source for the key value store.</p>", "smithy.api#required" => {}}))
    ImportSource.add_member(:source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the import source for the key value store.</p>", "smithy.api#required" => {}}))
    ImportSource.type = Types::ImportSource
    ImportSourceType.add_member(:s3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3', traits: {"smithy.api#enumValue" => "S3"}))
    InconsistentQuantities.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InconsistentQuantities.type = Types::InconsistentQuantities
    InvalidArgument.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidArgument.type = Types::InvalidArgument
    InvalidAssociation.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidAssociation.type = Types::InvalidAssociation
    InvalidDefaultRootObject.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidDefaultRootObject.type = Types::InvalidDefaultRootObject
    InvalidDomainNameForOriginAccessControl.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidDomainNameForOriginAccessControl.type = Types::InvalidDomainNameForOriginAccessControl
    InvalidErrorCode.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidErrorCode.type = Types::InvalidErrorCode
    InvalidForwardCookies.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidForwardCookies.type = Types::InvalidForwardCookies
    InvalidFunctionAssociation.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidFunctionAssociation.type = Types::InvalidFunctionAssociation
    InvalidGeoRestrictionParameter.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidGeoRestrictionParameter.type = Types::InvalidGeoRestrictionParameter
    InvalidHeadersForS3Origin.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidHeadersForS3Origin.type = Types::InvalidHeadersForS3Origin
    InvalidIfMatchVersion.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidIfMatchVersion.type = Types::InvalidIfMatchVersion
    InvalidLambdaFunctionAssociation.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidLambdaFunctionAssociation.type = Types::InvalidLambdaFunctionAssociation
    InvalidLocationCode.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidLocationCode.type = Types::InvalidLocationCode
    InvalidMinimumProtocolVersion.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidMinimumProtocolVersion.type = Types::InvalidMinimumProtocolVersion
    InvalidOrigin.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidOrigin.type = Types::InvalidOrigin
    InvalidOriginAccessControl.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidOriginAccessControl.type = Types::InvalidOriginAccessControl
    InvalidOriginAccessIdentity.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidOriginAccessIdentity.type = Types::InvalidOriginAccessIdentity
    InvalidOriginKeepaliveTimeout.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidOriginKeepaliveTimeout.type = Types::InvalidOriginKeepaliveTimeout
    InvalidOriginReadTimeout.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidOriginReadTimeout.type = Types::InvalidOriginReadTimeout
    InvalidProtocolSettings.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidProtocolSettings.type = Types::InvalidProtocolSettings
    InvalidQueryStringParameters.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidQueryStringParameters.type = Types::InvalidQueryStringParameters
    InvalidRelativePath.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidRelativePath.type = Types::InvalidRelativePath
    InvalidRequiredProtocol.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidRequiredProtocol.type = Types::InvalidRequiredProtocol
    InvalidResponseCode.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidResponseCode.type = Types::InvalidResponseCode
    InvalidTTLOrder.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidTTLOrder.type = Types::InvalidTTLOrder
    InvalidTagging.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidTagging.type = Types::InvalidTagging
    InvalidViewerCertificate.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidViewerCertificate.type = Types::InvalidViewerCertificate
    InvalidWebACLId.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidWebACLId.type = Types::InvalidWebACLId
    Invalidation.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier for the invalidation request. For example: <code>IDFDVBD632BHDS5</code>.</p>", "smithy.api#required" => {}}))
    Invalidation.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the invalidation request. When the invalidation batch is finished, the status is <code>Completed</code>.</p>", "smithy.api#required" => {}}))
    Invalidation.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateTime', traits: {"smithy.api#documentation" => "<p>The date and time the invalidation request was first made.</p>", "smithy.api#required" => {}}))
    Invalidation.add_member(:invalidation_batch, Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidationBatch, location_name: 'InvalidationBatch', traits: {"smithy.api#documentation" => "<p>The current invalidation information for the batch request.</p>", "smithy.api#required" => {}}))
    Invalidation.type = Types::Invalidation
    InvalidationBatch.add_member(:paths, Smithy::Schema::Shapes::ShapeRef.new(shape: Paths, location_name: 'Paths', traits: {"smithy.api#documentation" => "<p>A complex type that contains information about the objects that you want to invalidate. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html#invalidation-specifying-objects\">Specifying the Objects to Invalidate</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    InvalidationBatch.add_member(:caller_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CallerReference', traits: {"smithy.api#documentation" => "<p>A value that you specify to uniquely identify an invalidation request. CloudFront uses the value to prevent you from accidentally resubmitting an identical request. Whenever you create a new invalidation request, you must specify a new value for <code>CallerReference</code> and change other values in the request as applicable. One way to ensure that the value of <code>CallerReference</code> is unique is to use a <code>timestamp</code>, for example, <code>20120301090000</code>.</p> <p>If you make a second invalidation request with the same value for <code>CallerReference</code>, and if the rest of the request is the same, CloudFront doesn't create a new invalidation request. Instead, CloudFront returns information about the invalidation request that you previously created with the same <code>CallerReference</code>.</p> <p>If <code>CallerReference</code> is a value you already sent in a previous invalidation batch request but the content of any <code>Path</code> is different from the original request, CloudFront returns an <code>InvalidationBatchAlreadyExists</code> error.</p>", "smithy.api#required" => {}}))
    InvalidationBatch.type = Types::InvalidationBatch
    InvalidationList.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>The value that you provided for the <code>Marker</code> request parameter.</p>", "smithy.api#required" => {}}))
    InvalidationList.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value that you can use for the <code>Marker</code> request parameter to continue listing your invalidation batches where they left off.</p>"}))
    InvalidationList.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The value that you provided for the <code>MaxItems</code> request parameter.</p>", "smithy.api#required" => {}}))
    InvalidationList.add_member(:is_truncated, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsTruncated', traits: {"smithy.api#documentation" => "<p>A flag that indicates whether more invalidation batch requests remain to be listed. If your results were truncated, you can make a follow-up pagination request using the <code>Marker</code> request parameter to retrieve more invalidation batches in the list.</p>", "smithy.api#required" => {}}))
    InvalidationList.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of invalidation batches that were created by the current Amazon Web Services account. </p>", "smithy.api#required" => {}}))
    InvalidationList.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidationSummaryList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>A complex type that contains one <code>InvalidationSummary</code> element for each invalidation batch created by the current Amazon Web Services account.</p>"}))
    InvalidationList.type = Types::InvalidationList
    InvalidationSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique ID for an invalidation request.</p>", "smithy.api#required" => {}}))
    InvalidationSummary.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateTime', traits: {"smithy.api#documentation" => "<p>The time that an invalidation request was created.</p>", "smithy.api#required" => {}}))
    InvalidationSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of an invalidation request.</p>", "smithy.api#required" => {}}))
    InvalidationSummary.type = Types::InvalidationSummary
    InvalidationSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidationSummary, traits: {"smithy.api#xmlName" => "InvalidationSummary"})
    ItemSelection.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'none', traits: {"smithy.api#enumValue" => "none"}))
    ItemSelection.add_member(:whitelist, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'whitelist', traits: {"smithy.api#enumValue" => "whitelist"}))
    ItemSelection.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'all', traits: {"smithy.api#enumValue" => "all"}))
    KGKeyPairIds.add_member(:key_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KeyGroupId', traits: {"smithy.api#documentation" => "<p>The identifier of the key group that contains the public keys.</p>"}))
    KGKeyPairIds.add_member(:key_pair_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyPairIds, location_name: 'KeyPairIds'))
    KGKeyPairIds.type = Types::KGKeyPairIds
    KGKeyPairIdsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: KGKeyPairIds, traits: {"smithy.api#xmlName" => "KeyGroup"})
    KeyGroup.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier for the key group.</p>", "smithy.api#required" => {}}))
    KeyGroup.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The date and time when the key group was last modified.</p>", "smithy.api#required" => {}}))
    KeyGroup.add_member(:key_group_config, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyGroupConfig, location_name: 'KeyGroupConfig', traits: {"smithy.api#documentation" => "<p>The key group configuration.</p>", "smithy.api#required" => {}}))
    KeyGroup.type = Types::KeyGroup
    KeyGroupAlreadyExists.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    KeyGroupAlreadyExists.type = Types::KeyGroupAlreadyExists
    KeyGroupConfig.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A name to identify the key group.</p>", "smithy.api#required" => {}}))
    KeyGroupConfig.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: PublicKeyIdList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>A list of the identifiers of the public keys in the key group.</p>", "smithy.api#required" => {}}))
    KeyGroupConfig.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Comment', traits: {"smithy.api#documentation" => "<p>A comment to describe the key group. The comment cannot be longer than 128 characters.</p>"}))
    KeyGroupConfig.type = Types::KeyGroupConfig
    KeyGroupList.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If there are more items in the list than are in this response, this element is present. It contains the value that you should use in the <code>Marker</code> field of a subsequent request to continue listing key groups.</p>"}))
    KeyGroupList.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of key groups requested.</p>", "smithy.api#required" => {}}))
    KeyGroupList.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of key groups returned in the response.</p>", "smithy.api#required" => {}}))
    KeyGroupList.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyGroupSummaryList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>A list of key groups.</p>"}))
    KeyGroupList.type = Types::KeyGroupList
    KeyGroupSummary.add_member(:key_group, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyGroup, location_name: 'KeyGroup', traits: {"smithy.api#documentation" => "<p>A key group.</p>", "smithy.api#required" => {}}))
    KeyGroupSummary.type = Types::KeyGroupSummary
    KeyGroupSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: KeyGroupSummary, traits: {"smithy.api#xmlName" => "KeyGroupSummary"})
    KeyPairIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "KeyPairId"})
    KeyPairIds.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of key pair identifiers in the list.</p>", "smithy.api#required" => {}}))
    KeyPairIds.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyPairIdList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>A list of CloudFront key pair identifiers.</p>"}))
    KeyPairIds.type = Types::KeyPairIds
    KeyValueStore.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the key value store.</p>", "smithy.api#required" => {}}))
    KeyValueStore.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique Id for the key value store.</p>", "smithy.api#required" => {}}))
    KeyValueStore.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Comment', traits: {"smithy.api#documentation" => "<p>A comment for the key value store.</p>", "smithy.api#required" => {}}))
    KeyValueStore.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the key value store.</p>", "smithy.api#required" => {}}))
    KeyValueStore.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the key value store.</p>"}))
    KeyValueStore.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The last-modified time of the key value store.</p>", "smithy.api#required" => {}}))
    KeyValueStore.type = Types::KeyValueStore
    KeyValueStoreAssociation.add_member(:key_value_store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValueStoreARN, location_name: 'KeyValueStoreARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the key value store association.</p>", "smithy.api#required" => {}}))
    KeyValueStoreAssociation.type = Types::KeyValueStoreAssociation
    KeyValueStoreAssociationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValueStoreAssociation, traits: {"smithy.api#xmlName" => "KeyValueStoreAssociation"})
    KeyValueStoreAssociations.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The quantity of key value store associations.</p>", "smithy.api#required" => {}}))
    KeyValueStoreAssociations.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValueStoreAssociationList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>The items of the key value store association.</p>"}))
    KeyValueStoreAssociations.type = Types::KeyValueStoreAssociations
    KeyValueStoreList.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>The next marker associated with the key value store list.</p>"}))
    KeyValueStoreList.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of items in the key value store list.</p>", "smithy.api#required" => {}}))
    KeyValueStoreList.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The quantity of the key value store list.</p>", "smithy.api#required" => {}}))
    KeyValueStoreList.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValueStoreSummaryList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>The items of the key value store list.</p>"}))
    KeyValueStoreList.type = Types::KeyValueStoreList
    KeyValueStoreSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValueStore, traits: {"smithy.api#xmlName" => "KeyValueStore"})
    KinesisStreamConfig.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an Identity and Access Management (IAM) role that CloudFront can use to send real-time log data to your Kinesis data stream.</p> <p>For more information the IAM role, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-iam-role\">Real-time log configuration IAM role</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    KinesisStreamConfig.add_member(:stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StreamARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Kinesis data stream where you are sending real-time log data.</p>", "smithy.api#required" => {}}))
    KinesisStreamConfig.type = Types::KinesisStreamConfig
    LambdaFunctionAssociation.add_member(:lambda_function_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaFunctionARN, location_name: 'LambdaFunctionARN', traits: {"smithy.api#documentation" => "<p>The ARN of the Lambda@Edge function. You must specify the ARN of a function version; you can't specify an alias or $LATEST.</p>", "smithy.api#required" => {}}))
    LambdaFunctionAssociation.add_member(:event_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EventType, location_name: 'EventType', traits: {"smithy.api#documentation" => "<p>Specifies the event type that triggers a Lambda@Edge function invocation. You can specify the following values:</p> <ul> <li> <p> <code>viewer-request</code>: The function executes when CloudFront receives a request from a viewer and before it checks to see whether the requested object is in the edge cache.</p> </li> <li> <p> <code>origin-request</code>: The function executes only when CloudFront sends a request to your origin. When the requested object is in the edge cache, the function doesn't execute.</p> </li> <li> <p> <code>origin-response</code>: The function executes after CloudFront receives a response from the origin and before it caches the object in the response. When the requested object is in the edge cache, the function doesn't execute.</p> </li> <li> <p> <code>viewer-response</code>: The function executes before CloudFront returns the requested object to the viewer. The function executes regardless of whether the object was already in the edge cache.</p> <p>If the origin returns an HTTP status code other than HTTP 200 (OK), the function doesn't execute.</p> </li> </ul>", "smithy.api#required" => {}}))
    LambdaFunctionAssociation.add_member(:include_body, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IncludeBody', traits: {"smithy.api#documentation" => "<p>A flag that allows a Lambda@Edge function to have read access to the body content. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/lambda-include-body-access.html\">Accessing the Request Body by Choosing the Include Body Option</a> in the Amazon CloudFront Developer Guide.</p>"}))
    LambdaFunctionAssociation.type = Types::LambdaFunctionAssociation
    LambdaFunctionAssociationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaFunctionAssociation, traits: {"smithy.api#xmlName" => "LambdaFunctionAssociation"})
    LambdaFunctionAssociations.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of Lambda@Edge function associations for this cache behavior.</p>", "smithy.api#required" => {}}))
    LambdaFunctionAssociations.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaFunctionAssociationList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p> <b>Optional</b>: A complex type that contains <code>LambdaFunctionAssociation</code> items for this cache behavior. If <code>Quantity</code> is <code>0</code>, you can omit <code>Items</code>.</p>"}))
    LambdaFunctionAssociations.type = Types::LambdaFunctionAssociations
    ListAnycastIpListsRequest.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>Use this field when paginating results to indicate where to begin in your list. The response includes items in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>", "smithy.api#httpQuery" => "Marker"}))
    ListAnycastIpListsRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of Anycast static IP lists that you want returned in the response.</p>", "smithy.api#httpQuery" => "MaxItems"}))
    ListAnycastIpListsRequest.type = Types::ListAnycastIpListsRequest
    ListAnycastIpListsResult.add_member(:anycast_ip_lists, Smithy::Schema::Shapes::ShapeRef.new(shape: AnycastIpListCollection, location_name: 'AnycastIpLists', traits: {"smithy.api#documentation" => "<p>Root level tag for the <code>AnycastIpLists</code> parameters.</p>", "smithy.api#httpPayload" => {}, "smithy.api#xmlName" => "AnycastIpListCollection"}))
    ListAnycastIpListsResult[:http_payload] = :anycast_ip_lists
    ListAnycastIpListsResult[:http_payload_member] = ListAnycastIpListsResult.member(:anycast_ip_lists)
    ListAnycastIpListsResult.type = Types::ListAnycastIpListsResult
    ListCachePoliciesRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: CachePolicyType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>A filter to return only the specified kinds of cache policies. Valid values are:</p> <ul> <li> <p> <code>managed</code> – Returns only the managed policies created by Amazon Web Services.</p> </li> <li> <p> <code>custom</code> – Returns only the custom policies created in your Amazon Web Services account.</p> </li> </ul>", "smithy.api#httpQuery" => "Type"}))
    ListCachePoliciesRequest.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>Use this field when paginating results to indicate where to begin in your list of cache policies. The response includes cache policies in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>", "smithy.api#httpQuery" => "Marker"}))
    ListCachePoliciesRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of cache policies that you want in the response.</p>", "smithy.api#httpQuery" => "MaxItems"}))
    ListCachePoliciesRequest.type = Types::ListCachePoliciesRequest
    ListCachePoliciesResult.add_member(:cache_policy_list, Smithy::Schema::Shapes::ShapeRef.new(shape: CachePolicyList, location_name: 'CachePolicyList', traits: {"smithy.api#documentation" => "<p>A list of cache policies.</p>", "smithy.api#httpPayload" => {}}))
    ListCachePoliciesResult[:http_payload] = :cache_policy_list
    ListCachePoliciesResult[:http_payload_member] = ListCachePoliciesResult.member(:cache_policy_list)
    ListCachePoliciesResult.type = Types::ListCachePoliciesResult
    ListCloudFrontOriginAccessIdentitiesRequest.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>Use this when paginating results to indicate where to begin in your list of origin access identities. The results include identities in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last identity on that page).</p>", "smithy.api#httpQuery" => "Marker"}))
    ListCloudFrontOriginAccessIdentitiesRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of origin access identities you want in the response body.</p>", "smithy.api#httpQuery" => "MaxItems"}))
    ListCloudFrontOriginAccessIdentitiesRequest.type = Types::ListCloudFrontOriginAccessIdentitiesRequest
    ListCloudFrontOriginAccessIdentitiesResult.add_member(:cloud_front_origin_access_identity_list, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudFrontOriginAccessIdentityList, location_name: 'CloudFrontOriginAccessIdentityList', traits: {"smithy.api#documentation" => "<p>The <code>CloudFrontOriginAccessIdentityList</code> type.</p>", "smithy.api#httpPayload" => {}}))
    ListCloudFrontOriginAccessIdentitiesResult[:http_payload] = :cloud_front_origin_access_identity_list
    ListCloudFrontOriginAccessIdentitiesResult[:http_payload_member] = ListCloudFrontOriginAccessIdentitiesResult.member(:cloud_front_origin_access_identity_list)
    ListCloudFrontOriginAccessIdentitiesResult.type = Types::ListCloudFrontOriginAccessIdentitiesResult
    ListConflictingAliasesRequest.add_member(:distribution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionIdString, location_name: 'DistributionId', traits: {"smithy.api#documentation" => "<p>The ID of a standard distribution in your account that has an attached TLS certificate that includes the provided alias.</p>", "smithy.api#httpQuery" => "DistributionId", "smithy.api#required" => {}}))
    ListConflictingAliasesRequest.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: AliasString, location_name: 'Alias', traits: {"smithy.api#documentation" => "<p>The alias (also called a CNAME) to search for conflicting aliases.</p>", "smithy.api#httpQuery" => "Alias", "smithy.api#required" => {}}))
    ListConflictingAliasesRequest.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>Use this field when paginating results to indicate where to begin in the list of conflicting aliases. The response includes conflicting aliases in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>", "smithy.api#httpQuery" => "Marker"}))
    ListConflictingAliasesRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: ListConflictingAliasesMaxItemsInteger, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of conflicting aliases that you want in the response.</p>", "smithy.api#httpQuery" => "MaxItems"}))
    ListConflictingAliasesRequest.type = Types::ListConflictingAliasesRequest
    ListConflictingAliasesResult.add_member(:conflicting_aliases_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictingAliasesList, location_name: 'ConflictingAliasesList', traits: {"smithy.api#documentation" => "<p>A list of conflicting aliases.</p>", "smithy.api#httpPayload" => {}}))
    ListConflictingAliasesResult[:http_payload] = :conflicting_aliases_list
    ListConflictingAliasesResult[:http_payload_member] = ListConflictingAliasesResult.member(:conflicting_aliases_list)
    ListConflictingAliasesResult.type = Types::ListConflictingAliasesResult
    ListConnectionGroupsRequest.add_member(:association_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionGroupAssociationFilter, location_name: 'AssociationFilter', traits: {"smithy.api#documentation" => "<p>Filter by associated Anycast IP list ID.</p>"}))
    ListConnectionGroupsRequest.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>The marker for the next set of connection groups to retrieve.</p>"}))
    ListConnectionGroupsRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of connection groups to return.</p>"}))
    ListConnectionGroupsRequest.type = Types::ListConnectionGroupsRequest
    ListConnectionGroupsResult.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>A token used for pagination of results returned in the response. You can use the token from the previous request to define where the current request should begin.</p>"}))
    ListConnectionGroupsResult.add_member(:connection_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionGroupSummaryList, location_name: 'ConnectionGroups', traits: {"smithy.api#documentation" => "<p>The list of connection groups that you retrieved.</p>"}))
    ListConnectionGroupsResult.type = Types::ListConnectionGroupsResult
    ListContinuousDeploymentPoliciesRequest.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>Use this field when paginating results to indicate where to begin in your list of continuous deployment policies. The response includes policies in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>", "smithy.api#httpQuery" => "Marker"}))
    ListContinuousDeploymentPoliciesRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of continuous deployment policies that you want returned in the response.</p>", "smithy.api#httpQuery" => "MaxItems"}))
    ListContinuousDeploymentPoliciesRequest.type = Types::ListContinuousDeploymentPoliciesRequest
    ListContinuousDeploymentPoliciesResult.add_member(:continuous_deployment_policy_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousDeploymentPolicyList, location_name: 'ContinuousDeploymentPolicyList', traits: {"smithy.api#documentation" => "<p>A list of continuous deployment policies.</p>", "smithy.api#httpPayload" => {}}))
    ListContinuousDeploymentPoliciesResult[:http_payload] = :continuous_deployment_policy_list
    ListContinuousDeploymentPoliciesResult[:http_payload_member] = ListContinuousDeploymentPoliciesResult.member(:continuous_deployment_policy_list)
    ListContinuousDeploymentPoliciesResult.type = Types::ListContinuousDeploymentPoliciesResult
    ListDistributionTenantsByCustomizationRequest.add_member(:web_acl_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'WebACLArn', traits: {"smithy.api#documentation" => "<p>Filter by the ARN of the associated WAF web ACL.</p>"}))
    ListDistributionTenantsByCustomizationRequest.add_member(:certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CertificateArn', traits: {"smithy.api#documentation" => "<p>Filter by the ARN of the associated ACM certificate.</p>"}))
    ListDistributionTenantsByCustomizationRequest.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>The marker for the next set of results.</p>"}))
    ListDistributionTenantsByCustomizationRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of distribution tenants to return by the specified customization.</p>"}))
    ListDistributionTenantsByCustomizationRequest.type = Types::ListDistributionTenantsByCustomizationRequest
    ListDistributionTenantsByCustomizationResult.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>A token used for pagination of results returned in the response. You can use the token from the previous request to define where the current request should begin.</p>"}))
    ListDistributionTenantsByCustomizationResult.add_member(:distribution_tenant_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionTenantList, location_name: 'DistributionTenantList', traits: {"smithy.api#documentation" => "<p>A list of distribution tenants with the specified customization.</p>"}))
    ListDistributionTenantsByCustomizationResult.type = Types::ListDistributionTenantsByCustomizationResult
    ListDistributionTenantsRequest.add_member(:association_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionTenantAssociationFilter, location_name: 'AssociationFilter'))
    ListDistributionTenantsRequest.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>The marker for the next set of results.</p>"}))
    ListDistributionTenantsRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of distribution tenants to return.</p>"}))
    ListDistributionTenantsRequest.type = Types::ListDistributionTenantsRequest
    ListDistributionTenantsResult.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>A token used for pagination of results returned in the response. You can use the token from the previous request to define where the current request should begin.</p>"}))
    ListDistributionTenantsResult.add_member(:distribution_tenant_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionTenantList, location_name: 'DistributionTenantList', traits: {"smithy.api#documentation" => "<p>The list of distribution tenants that you retrieved.</p>"}))
    ListDistributionTenantsResult.type = Types::ListDistributionTenantsResult
    ListDistributionsByAnycastIpListIdRequest.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>Use this field when paginating results to indicate where to begin in your list. The response includes items in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>", "smithy.api#httpQuery" => "Marker"}))
    ListDistributionsByAnycastIpListIdRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of distributions that you want returned in the response.</p>", "smithy.api#httpQuery" => "MaxItems"}))
    ListDistributionsByAnycastIpListIdRequest.add_member(:anycast_ip_list_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AnycastIpListId', traits: {"smithy.api#documentation" => "<p>The ID of the Anycast static IP list.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDistributionsByAnycastIpListIdRequest.type = Types::ListDistributionsByAnycastIpListIdRequest
    ListDistributionsByAnycastIpListIdResult.add_member(:distribution_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionList, location_name: 'DistributionList', traits: {"smithy.api#httpPayload" => {}}))
    ListDistributionsByAnycastIpListIdResult[:http_payload] = :distribution_list
    ListDistributionsByAnycastIpListIdResult[:http_payload_member] = ListDistributionsByAnycastIpListIdResult.member(:distribution_list)
    ListDistributionsByAnycastIpListIdResult.type = Types::ListDistributionsByAnycastIpListIdResult
    ListDistributionsByCachePolicyIdRequest.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>Use this field when paginating results to indicate where to begin in your list of distribution IDs. The response includes distribution IDs in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>", "smithy.api#httpQuery" => "Marker"}))
    ListDistributionsByCachePolicyIdRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of distribution IDs that you want in the response.</p>", "smithy.api#httpQuery" => "MaxItems"}))
    ListDistributionsByCachePolicyIdRequest.add_member(:cache_policy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CachePolicyId', traits: {"smithy.api#documentation" => "<p>The ID of the cache policy whose associated distribution IDs you want to list.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDistributionsByCachePolicyIdRequest.type = Types::ListDistributionsByCachePolicyIdRequest
    ListDistributionsByCachePolicyIdResult.add_member(:distribution_id_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionIdList, location_name: 'DistributionIdList', traits: {"smithy.api#documentation" => "<p>A list of distribution IDs.</p>", "smithy.api#httpPayload" => {}}))
    ListDistributionsByCachePolicyIdResult[:http_payload] = :distribution_id_list
    ListDistributionsByCachePolicyIdResult[:http_payload_member] = ListDistributionsByCachePolicyIdResult.member(:distribution_id_list)
    ListDistributionsByCachePolicyIdResult.type = Types::ListDistributionsByCachePolicyIdResult
    ListDistributionsByConnectionModeRequest.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p> The marker for the next set of distributions to retrieve.</p>", "smithy.api#httpQuery" => "Marker"}))
    ListDistributionsByConnectionModeRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of distributions to return.</p>", "smithy.api#httpQuery" => "MaxItems"}))
    ListDistributionsByConnectionModeRequest.add_member(:connection_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionMode, location_name: 'ConnectionMode', traits: {"smithy.api#documentation" => "<p>This field specifies whether the connection mode is through a standard distribution (direct) or a multi-tenant distribution with distribution tenants (tenant-only).</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDistributionsByConnectionModeRequest.type = Types::ListDistributionsByConnectionModeRequest
    ListDistributionsByConnectionModeResult.add_member(:distribution_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionList, location_name: 'DistributionList', traits: {"smithy.api#httpPayload" => {}}))
    ListDistributionsByConnectionModeResult[:http_payload] = :distribution_list
    ListDistributionsByConnectionModeResult[:http_payload_member] = ListDistributionsByConnectionModeResult.member(:distribution_list)
    ListDistributionsByConnectionModeResult.type = Types::ListDistributionsByConnectionModeResult
    ListDistributionsByKeyGroupRequest.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>Use this field when paginating results to indicate where to begin in your list of distribution IDs. The response includes distribution IDs in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>", "smithy.api#httpQuery" => "Marker"}))
    ListDistributionsByKeyGroupRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of distribution IDs that you want in the response.</p>", "smithy.api#httpQuery" => "MaxItems"}))
    ListDistributionsByKeyGroupRequest.add_member(:key_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KeyGroupId', traits: {"smithy.api#documentation" => "<p>The ID of the key group whose associated distribution IDs you are listing.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDistributionsByKeyGroupRequest.type = Types::ListDistributionsByKeyGroupRequest
    ListDistributionsByKeyGroupResult.add_member(:distribution_id_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionIdList, location_name: 'DistributionIdList', traits: {"smithy.api#httpPayload" => {}}))
    ListDistributionsByKeyGroupResult[:http_payload] = :distribution_id_list
    ListDistributionsByKeyGroupResult[:http_payload_member] = ListDistributionsByKeyGroupResult.member(:distribution_id_list)
    ListDistributionsByKeyGroupResult.type = Types::ListDistributionsByKeyGroupResult
    ListDistributionsByOriginRequestPolicyIdRequest.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>Use this field when paginating results to indicate where to begin in your list of distribution IDs. The response includes distribution IDs in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>", "smithy.api#httpQuery" => "Marker"}))
    ListDistributionsByOriginRequestPolicyIdRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of distribution IDs that you want in the response.</p>", "smithy.api#httpQuery" => "MaxItems"}))
    ListDistributionsByOriginRequestPolicyIdRequest.add_member(:origin_request_policy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OriginRequestPolicyId', traits: {"smithy.api#documentation" => "<p>The ID of the origin request policy whose associated distribution IDs you want to list.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDistributionsByOriginRequestPolicyIdRequest.type = Types::ListDistributionsByOriginRequestPolicyIdRequest
    ListDistributionsByOriginRequestPolicyIdResult.add_member(:distribution_id_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionIdList, location_name: 'DistributionIdList', traits: {"smithy.api#documentation" => "<p>A list of distribution IDs.</p>", "smithy.api#httpPayload" => {}}))
    ListDistributionsByOriginRequestPolicyIdResult[:http_payload] = :distribution_id_list
    ListDistributionsByOriginRequestPolicyIdResult[:http_payload_member] = ListDistributionsByOriginRequestPolicyIdResult.member(:distribution_id_list)
    ListDistributionsByOriginRequestPolicyIdResult.type = Types::ListDistributionsByOriginRequestPolicyIdResult
    ListDistributionsByRealtimeLogConfigRequest.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>Use this field when paginating results to indicate where to begin in your list of distributions. The response includes distributions in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>"}))
    ListDistributionsByRealtimeLogConfigRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of distributions that you want in the response.</p>"}))
    ListDistributionsByRealtimeLogConfigRequest.add_member(:realtime_log_config_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RealtimeLogConfigName', traits: {"smithy.api#documentation" => "<p>The name of the real-time log configuration whose associated distributions you want to list.</p>"}))
    ListDistributionsByRealtimeLogConfigRequest.add_member(:realtime_log_config_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RealtimeLogConfigArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the real-time log configuration whose associated distributions you want to list.</p>"}))
    ListDistributionsByRealtimeLogConfigRequest.type = Types::ListDistributionsByRealtimeLogConfigRequest
    ListDistributionsByRealtimeLogConfigResult.add_member(:distribution_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionList, location_name: 'DistributionList', traits: {"smithy.api#httpPayload" => {}}))
    ListDistributionsByRealtimeLogConfigResult[:http_payload] = :distribution_list
    ListDistributionsByRealtimeLogConfigResult[:http_payload_member] = ListDistributionsByRealtimeLogConfigResult.member(:distribution_list)
    ListDistributionsByRealtimeLogConfigResult.type = Types::ListDistributionsByRealtimeLogConfigResult
    ListDistributionsByResponseHeadersPolicyIdRequest.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>Use this field when paginating results to indicate where to begin in your list of distribution IDs. The response includes distribution IDs in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>", "smithy.api#httpQuery" => "Marker"}))
    ListDistributionsByResponseHeadersPolicyIdRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of distribution IDs that you want to get in the response.</p>", "smithy.api#httpQuery" => "MaxItems"}))
    ListDistributionsByResponseHeadersPolicyIdRequest.add_member(:response_headers_policy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResponseHeadersPolicyId', traits: {"smithy.api#documentation" => "<p>The ID of the response headers policy whose associated distribution IDs you want to list.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDistributionsByResponseHeadersPolicyIdRequest.type = Types::ListDistributionsByResponseHeadersPolicyIdRequest
    ListDistributionsByResponseHeadersPolicyIdResult.add_member(:distribution_id_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionIdList, location_name: 'DistributionIdList', traits: {"smithy.api#httpPayload" => {}}))
    ListDistributionsByResponseHeadersPolicyIdResult[:http_payload] = :distribution_id_list
    ListDistributionsByResponseHeadersPolicyIdResult[:http_payload_member] = ListDistributionsByResponseHeadersPolicyIdResult.member(:distribution_id_list)
    ListDistributionsByResponseHeadersPolicyIdResult.type = Types::ListDistributionsByResponseHeadersPolicyIdResult
    ListDistributionsByVpcOriginIdRequest.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>The marker associated with the VPC origin distributions list.</p>", "smithy.api#httpQuery" => "Marker"}))
    ListDistributionsByVpcOriginIdRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of items included in the list.</p>", "smithy.api#httpQuery" => "MaxItems"}))
    ListDistributionsByVpcOriginIdRequest.add_member(:vpc_origin_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcOriginId', traits: {"smithy.api#documentation" => "<p>The VPC origin ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDistributionsByVpcOriginIdRequest.type = Types::ListDistributionsByVpcOriginIdRequest
    ListDistributionsByVpcOriginIdResult.add_member(:distribution_id_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionIdList, location_name: 'DistributionIdList', traits: {"smithy.api#httpPayload" => {}}))
    ListDistributionsByVpcOriginIdResult[:http_payload] = :distribution_id_list
    ListDistributionsByVpcOriginIdResult[:http_payload_member] = ListDistributionsByVpcOriginIdResult.member(:distribution_id_list)
    ListDistributionsByVpcOriginIdResult.type = Types::ListDistributionsByVpcOriginIdResult
    ListDistributionsByWebACLIdRequest.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>Use <code>Marker</code> and <code>MaxItems</code> to control pagination of results. If you have more than <code>MaxItems</code> distributions that satisfy the request, the response includes a <code>NextMarker</code> element. To get the next page of results, submit another request. For the value of <code>Marker</code>, specify the value of <code>NextMarker</code> from the last response. (For the first request, omit <code>Marker</code>.)</p>", "smithy.api#httpQuery" => "Marker"}))
    ListDistributionsByWebACLIdRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of distributions that you want CloudFront to return in the response body. The maximum and default values are both 100.</p>", "smithy.api#httpQuery" => "MaxItems"}))
    ListDistributionsByWebACLIdRequest.add_member(:web_acl_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'WebACLId', traits: {"smithy.api#documentation" => "<p>The ID of the WAF web ACL that you want to list the associated distributions. If you specify \"null\" for the ID, the request returns a list of the distributions that aren't associated with a web ACL. </p> <p>For WAFV2, this is the ARN of the web ACL, such as <code>arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111</code>.</p> <p>For WAF Classic, this is the ID of the web ACL, such as <code>a1b2c3d4-5678-90ab-cdef-EXAMPLE11111</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDistributionsByWebACLIdRequest.type = Types::ListDistributionsByWebACLIdRequest
    ListDistributionsByWebACLIdResult.add_member(:distribution_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionList, location_name: 'DistributionList', traits: {"smithy.api#documentation" => "<p>The <code>DistributionList</code> type.</p>", "smithy.api#httpPayload" => {}}))
    ListDistributionsByWebACLIdResult[:http_payload] = :distribution_list
    ListDistributionsByWebACLIdResult[:http_payload_member] = ListDistributionsByWebACLIdResult.member(:distribution_list)
    ListDistributionsByWebACLIdResult.type = Types::ListDistributionsByWebACLIdResult
    ListDistributionsRequest.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>Use this when paginating results to indicate where to begin in your list of distributions. The results include distributions in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last distribution on that page).</p>", "smithy.api#httpQuery" => "Marker"}))
    ListDistributionsRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of distributions you want in the response body.</p>", "smithy.api#httpQuery" => "MaxItems"}))
    ListDistributionsRequest.type = Types::ListDistributionsRequest
    ListDistributionsResult.add_member(:distribution_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionList, location_name: 'DistributionList', traits: {"smithy.api#documentation" => "<p>The <code>DistributionList</code> type.</p>", "smithy.api#httpPayload" => {}}))
    ListDistributionsResult[:http_payload] = :distribution_list
    ListDistributionsResult[:http_payload_member] = ListDistributionsResult.member(:distribution_list)
    ListDistributionsResult.type = Types::ListDistributionsResult
    ListDomainConflictsRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Domain', traits: {"smithy.api#documentation" => "<p>The domain to check for conflicts.</p>", "smithy.api#required" => {}}))
    ListDomainConflictsRequest.add_member(:domain_control_validation_resource, Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionResourceId, location_name: 'DomainControlValidationResource', traits: {"smithy.api#documentation" => "<p>The distribution resource identifier. This can be the standard distribution or distribution tenant that has a valid certificate, which covers the domain that you specify.</p>", "smithy.api#required" => {}}))
    ListDomainConflictsRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of domain conflicts to return.</p>"}))
    ListDomainConflictsRequest.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>The marker for the next set of domain conflicts.</p>"}))
    ListDomainConflictsRequest.type = Types::ListDomainConflictsRequest
    ListDomainConflictsResult.add_member(:domain_conflicts, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainConflictsList, location_name: 'DomainConflicts', traits: {"smithy.api#documentation" => "<p>Contains details about the domain conflicts.</p>"}))
    ListDomainConflictsResult.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>A token used for pagination of results returned in the response. You can use the token from the previous request to define where the current request should begin.</p>"}))
    ListDomainConflictsResult.type = Types::ListDomainConflictsResult
    ListFieldLevelEncryptionConfigsRequest.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>Use this when paginating results to indicate where to begin in your list of configurations. The results include configurations in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last configuration on that page).</p>", "smithy.api#httpQuery" => "Marker"}))
    ListFieldLevelEncryptionConfigsRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of field-level encryption configurations you want in the response body.</p>", "smithy.api#httpQuery" => "MaxItems"}))
    ListFieldLevelEncryptionConfigsRequest.type = Types::ListFieldLevelEncryptionConfigsRequest
    ListFieldLevelEncryptionConfigsResult.add_member(:field_level_encryption_list, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldLevelEncryptionList, location_name: 'FieldLevelEncryptionList', traits: {"smithy.api#documentation" => "<p>Returns a list of all field-level encryption configurations that have been created in CloudFront for this account.</p>", "smithy.api#httpPayload" => {}}))
    ListFieldLevelEncryptionConfigsResult[:http_payload] = :field_level_encryption_list
    ListFieldLevelEncryptionConfigsResult[:http_payload_member] = ListFieldLevelEncryptionConfigsResult.member(:field_level_encryption_list)
    ListFieldLevelEncryptionConfigsResult.type = Types::ListFieldLevelEncryptionConfigsResult
    ListFieldLevelEncryptionProfilesRequest.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>Use this when paginating results to indicate where to begin in your list of profiles. The results include profiles in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last profile on that page).</p>", "smithy.api#httpQuery" => "Marker"}))
    ListFieldLevelEncryptionProfilesRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of field-level encryption profiles you want in the response body. </p>", "smithy.api#httpQuery" => "MaxItems"}))
    ListFieldLevelEncryptionProfilesRequest.type = Types::ListFieldLevelEncryptionProfilesRequest
    ListFieldLevelEncryptionProfilesResult.add_member(:field_level_encryption_profile_list, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldLevelEncryptionProfileList, location_name: 'FieldLevelEncryptionProfileList', traits: {"smithy.api#documentation" => "<p>Returns a list of the field-level encryption profiles that have been created in CloudFront for this account.</p>", "smithy.api#httpPayload" => {}}))
    ListFieldLevelEncryptionProfilesResult[:http_payload] = :field_level_encryption_profile_list
    ListFieldLevelEncryptionProfilesResult[:http_payload_member] = ListFieldLevelEncryptionProfilesResult.member(:field_level_encryption_profile_list)
    ListFieldLevelEncryptionProfilesResult.type = Types::ListFieldLevelEncryptionProfilesResult
    ListFunctionsRequest.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>Use this field when paginating results to indicate where to begin in your list of functions. The response includes functions in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>", "smithy.api#httpQuery" => "Marker"}))
    ListFunctionsRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of functions that you want in the response.</p>", "smithy.api#httpQuery" => "MaxItems"}))
    ListFunctionsRequest.add_member(:stage, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionStage, location_name: 'Stage', traits: {"smithy.api#documentation" => "<p>An optional filter to return only the functions that are in the specified stage, either <code>DEVELOPMENT</code> or <code>LIVE</code>.</p>", "smithy.api#httpQuery" => "Stage"}))
    ListFunctionsRequest.type = Types::ListFunctionsRequest
    ListFunctionsResult.add_member(:function_list, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionList, location_name: 'FunctionList', traits: {"smithy.api#documentation" => "<p>A list of CloudFront functions.</p>", "smithy.api#httpPayload" => {}}))
    ListFunctionsResult[:http_payload] = :function_list
    ListFunctionsResult[:http_payload_member] = ListFunctionsResult.member(:function_list)
    ListFunctionsResult.type = Types::ListFunctionsResult
    ListInvalidationsForDistributionTenantRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the distribution tenant.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListInvalidationsForDistributionTenantRequest.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>Use this parameter when paginating results to indicate where to begin in your list of invalidation batches. Because the results are returned in decreasing order from most recent to oldest, the most recent results are on the first page, the second page will contain earlier results, and so on. To get the next page of results, set <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response. This value is the same as the ID of the last invalidation batch on that page.</p>", "smithy.api#httpQuery" => "Marker"}))
    ListInvalidationsForDistributionTenantRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of invalidations to return for the distribution tenant.</p>", "smithy.api#httpQuery" => "MaxItems"}))
    ListInvalidationsForDistributionTenantRequest.type = Types::ListInvalidationsForDistributionTenantRequest
    ListInvalidationsForDistributionTenantResult.add_member(:invalidation_list, Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidationList, location_name: 'InvalidationList', traits: {"smithy.api#httpPayload" => {}}))
    ListInvalidationsForDistributionTenantResult[:http_payload] = :invalidation_list
    ListInvalidationsForDistributionTenantResult[:http_payload_member] = ListInvalidationsForDistributionTenantResult.member(:invalidation_list)
    ListInvalidationsForDistributionTenantResult.type = Types::ListInvalidationsForDistributionTenantResult
    ListInvalidationsRequest.add_member(:distribution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DistributionId', traits: {"smithy.api#documentation" => "<p>The distribution's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListInvalidationsRequest.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>Use this parameter when paginating results to indicate where to begin in your list of invalidation batches. Because the results are returned in decreasing order from most recent to oldest, the most recent results are on the first page, the second page will contain earlier results, and so on. To get the next page of results, set <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response. This value is the same as the ID of the last invalidation batch on that page.</p>", "smithy.api#httpQuery" => "Marker"}))
    ListInvalidationsRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of invalidation batches that you want in the response body.</p>", "smithy.api#httpQuery" => "MaxItems"}))
    ListInvalidationsRequest.type = Types::ListInvalidationsRequest
    ListInvalidationsResult.add_member(:invalidation_list, Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidationList, location_name: 'InvalidationList', traits: {"smithy.api#documentation" => "<p>Information about invalidation batches.</p>", "smithy.api#httpPayload" => {}}))
    ListInvalidationsResult[:http_payload] = :invalidation_list
    ListInvalidationsResult[:http_payload_member] = ListInvalidationsResult.member(:invalidation_list)
    ListInvalidationsResult.type = Types::ListInvalidationsResult
    ListKeyGroupsRequest.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>Use this field when paginating results to indicate where to begin in your list of key groups. The response includes key groups in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>", "smithy.api#httpQuery" => "Marker"}))
    ListKeyGroupsRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of key groups that you want in the response.</p>", "smithy.api#httpQuery" => "MaxItems"}))
    ListKeyGroupsRequest.type = Types::ListKeyGroupsRequest
    ListKeyGroupsResult.add_member(:key_group_list, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyGroupList, location_name: 'KeyGroupList', traits: {"smithy.api#documentation" => "<p>A list of key groups.</p>", "smithy.api#httpPayload" => {}}))
    ListKeyGroupsResult[:http_payload] = :key_group_list
    ListKeyGroupsResult[:http_payload_member] = ListKeyGroupsResult.member(:key_group_list)
    ListKeyGroupsResult.type = Types::ListKeyGroupsResult
    ListKeyValueStoresRequest.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>The marker associated with the key value stores list.</p>", "smithy.api#httpQuery" => "Marker"}))
    ListKeyValueStoresRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of items in the key value stores list.</p>", "smithy.api#httpQuery" => "MaxItems"}))
    ListKeyValueStoresRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the request for the key value stores list.</p>", "smithy.api#httpQuery" => "Status"}))
    ListKeyValueStoresRequest.type = Types::ListKeyValueStoresRequest
    ListKeyValueStoresResult.add_member(:key_value_store_list, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValueStoreList, location_name: 'KeyValueStoreList', traits: {"smithy.api#documentation" => "<p>The resulting key value stores list.</p>", "smithy.api#httpPayload" => {}}))
    ListKeyValueStoresResult[:http_payload] = :key_value_store_list
    ListKeyValueStoresResult[:http_payload_member] = ListKeyValueStoresResult.member(:key_value_store_list)
    ListKeyValueStoresResult.type = Types::ListKeyValueStoresResult
    ListOriginAccessControlsRequest.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>Use this field when paginating results to indicate where to begin in your list of origin access controls. The response includes the items in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>", "smithy.api#httpQuery" => "Marker"}))
    ListOriginAccessControlsRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of origin access controls that you want in the response.</p>", "smithy.api#httpQuery" => "MaxItems"}))
    ListOriginAccessControlsRequest.type = Types::ListOriginAccessControlsRequest
    ListOriginAccessControlsResult.add_member(:origin_access_control_list, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginAccessControlList, location_name: 'OriginAccessControlList', traits: {"smithy.api#documentation" => "<p>A list of origin access controls.</p>", "smithy.api#httpPayload" => {}}))
    ListOriginAccessControlsResult[:http_payload] = :origin_access_control_list
    ListOriginAccessControlsResult[:http_payload_member] = ListOriginAccessControlsResult.member(:origin_access_control_list)
    ListOriginAccessControlsResult.type = Types::ListOriginAccessControlsResult
    ListOriginRequestPoliciesRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginRequestPolicyType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>A filter to return only the specified kinds of origin request policies. Valid values are:</p> <ul> <li> <p> <code>managed</code> – Returns only the managed policies created by Amazon Web Services.</p> </li> <li> <p> <code>custom</code> – Returns only the custom policies created in your Amazon Web Services account.</p> </li> </ul>", "smithy.api#httpQuery" => "Type"}))
    ListOriginRequestPoliciesRequest.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>Use this field when paginating results to indicate where to begin in your list of origin request policies. The response includes origin request policies in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>", "smithy.api#httpQuery" => "Marker"}))
    ListOriginRequestPoliciesRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of origin request policies that you want in the response.</p>", "smithy.api#httpQuery" => "MaxItems"}))
    ListOriginRequestPoliciesRequest.type = Types::ListOriginRequestPoliciesRequest
    ListOriginRequestPoliciesResult.add_member(:origin_request_policy_list, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginRequestPolicyList, location_name: 'OriginRequestPolicyList', traits: {"smithy.api#documentation" => "<p>A list of origin request policies.</p>", "smithy.api#httpPayload" => {}}))
    ListOriginRequestPoliciesResult[:http_payload] = :origin_request_policy_list
    ListOriginRequestPoliciesResult[:http_payload_member] = ListOriginRequestPoliciesResult.member(:origin_request_policy_list)
    ListOriginRequestPoliciesResult.type = Types::ListOriginRequestPoliciesResult
    ListPublicKeysRequest.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>Use this when paginating results to indicate where to begin in your list of public keys. The results include public keys in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last public key on that page).</p>", "smithy.api#httpQuery" => "Marker"}))
    ListPublicKeysRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of public keys you want in the response body.</p>", "smithy.api#httpQuery" => "MaxItems"}))
    ListPublicKeysRequest.type = Types::ListPublicKeysRequest
    ListPublicKeysResult.add_member(:public_key_list, Smithy::Schema::Shapes::ShapeRef.new(shape: PublicKeyList, location_name: 'PublicKeyList', traits: {"smithy.api#documentation" => "<p>Returns a list of all public keys that have been added to CloudFront for this account.</p>", "smithy.api#httpPayload" => {}}))
    ListPublicKeysResult[:http_payload] = :public_key_list
    ListPublicKeysResult[:http_payload_member] = ListPublicKeysResult.member(:public_key_list)
    ListPublicKeysResult.type = Types::ListPublicKeysResult
    ListRealtimeLogConfigsRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of real-time log configurations that you want in the response.</p>", "smithy.api#httpQuery" => "MaxItems"}))
    ListRealtimeLogConfigsRequest.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>Use this field when paginating results to indicate where to begin in your list of real-time log configurations. The response includes real-time log configurations in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>", "smithy.api#httpQuery" => "Marker"}))
    ListRealtimeLogConfigsRequest.type = Types::ListRealtimeLogConfigsRequest
    ListRealtimeLogConfigsResult.add_member(:realtime_log_configs, Smithy::Schema::Shapes::ShapeRef.new(shape: RealtimeLogConfigs, location_name: 'RealtimeLogConfigs', traits: {"smithy.api#documentation" => "<p>A list of real-time log configurations.</p>", "smithy.api#httpPayload" => {}}))
    ListRealtimeLogConfigsResult[:http_payload] = :realtime_log_configs
    ListRealtimeLogConfigsResult[:http_payload_member] = ListRealtimeLogConfigsResult.member(:realtime_log_configs)
    ListRealtimeLogConfigsResult.type = Types::ListRealtimeLogConfigsResult
    ListResponseHeadersPoliciesRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseHeadersPolicyType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>A filter to get only the specified kind of response headers policies. Valid values are:</p> <ul> <li> <p> <code>managed</code> – Gets only the managed policies created by Amazon Web Services.</p> </li> <li> <p> <code>custom</code> – Gets only the custom policies created in your Amazon Web Services account.</p> </li> </ul>", "smithy.api#httpQuery" => "Type"}))
    ListResponseHeadersPoliciesRequest.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>Use this field when paginating results to indicate where to begin in your list of response headers policies. The response includes response headers policies in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>", "smithy.api#httpQuery" => "Marker"}))
    ListResponseHeadersPoliciesRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of response headers policies that you want to get in the response.</p>", "smithy.api#httpQuery" => "MaxItems"}))
    ListResponseHeadersPoliciesRequest.type = Types::ListResponseHeadersPoliciesRequest
    ListResponseHeadersPoliciesResult.add_member(:response_headers_policy_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseHeadersPolicyList, location_name: 'ResponseHeadersPolicyList', traits: {"smithy.api#documentation" => "<p>A list of response headers policies.</p>", "smithy.api#httpPayload" => {}}))
    ListResponseHeadersPoliciesResult[:http_payload] = :response_headers_policy_list
    ListResponseHeadersPoliciesResult[:http_payload_member] = ListResponseHeadersPoliciesResult.member(:response_headers_policy_list)
    ListResponseHeadersPoliciesResult.type = Types::ListResponseHeadersPoliciesResult
    ListStreamingDistributionsRequest.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>The value that you provided for the <code>Marker</code> request parameter.</p>", "smithy.api#httpQuery" => "Marker"}))
    ListStreamingDistributionsRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The value that you provided for the <code>MaxItems</code> request parameter.</p>", "smithy.api#httpQuery" => "MaxItems"}))
    ListStreamingDistributionsRequest.type = Types::ListStreamingDistributionsRequest
    ListStreamingDistributionsResult.add_member(:streaming_distribution_list, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamingDistributionList, location_name: 'StreamingDistributionList', traits: {"smithy.api#documentation" => "<p>The <code>StreamingDistributionList</code> type.</p>", "smithy.api#httpPayload" => {}}))
    ListStreamingDistributionsResult[:http_payload] = :streaming_distribution_list
    ListStreamingDistributionsResult[:http_payload_member] = ListStreamingDistributionsResult.member(:streaming_distribution_list)
    ListStreamingDistributionsResult.type = Types::ListStreamingDistributionsResult
    ListTagsForResourceRequest.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'Resource', traits: {"smithy.api#documentation" => "<p>An ARN of a CloudFront resource.</p>", "smithy.api#httpQuery" => "Resource", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResult.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A complex type that contains zero or more <code>Tag</code> elements.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceResult[:http_payload] = :tags
    ListTagsForResourceResult[:http_payload_member] = ListTagsForResourceResult.member(:tags)
    ListTagsForResourceResult.type = Types::ListTagsForResourceResult
    ListVpcOriginsRequest.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>The marker associated with the VPC origins list.</p>", "smithy.api#httpQuery" => "Marker"}))
    ListVpcOriginsRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of items included in the list.</p>", "smithy.api#httpQuery" => "MaxItems"}))
    ListVpcOriginsRequest.type = Types::ListVpcOriginsRequest
    ListVpcOriginsResult.add_member(:vpc_origin_list, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcOriginList, location_name: 'VpcOriginList', traits: {"smithy.api#documentation" => "<p>List of VPC origins.</p>", "smithy.api#httpPayload" => {}}))
    ListVpcOriginsResult[:http_payload] = :vpc_origin_list
    ListVpcOriginsResult[:http_payload_member] = ListVpcOriginsResult.member(:vpc_origin_list)
    ListVpcOriginsResult.type = Types::ListVpcOriginsResult
    LocationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "Location"})
    LoggingConfig.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether you want CloudFront to save access logs to an Amazon S3 bucket. If you don't want to enable logging when you create a distribution or if you want to disable logging for an existing distribution, specify <code>false</code> for <code>Enabled</code>, and specify empty <code>Bucket</code> and <code>Prefix</code> elements. If you specify <code>false</code> for <code>Enabled</code> but you specify values for <code>Bucket</code> and <code>prefix</code>, the values are automatically deleted.</p>"}))
    LoggingConfig.add_member(:include_cookies, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IncludeCookies', traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether you want CloudFront to include cookies in access logs, specify <code>true</code> for <code>IncludeCookies</code>. If you choose to include cookies in logs, CloudFront logs all cookies regardless of how you configure the cache behaviors for this distribution. If you don't want to include cookies when you create a distribution or if you want to disable include cookies for an existing distribution, specify <code>false</code> for <code>IncludeCookies</code>.</p>"}))
    LoggingConfig.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Bucket', traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => "", "smithy.api#documentation" => "<p>The Amazon S3 bucket to store the access logs in, for example, <code>amzn-s3-demo-bucket.s3.amazonaws.com</code>.</p>"}))
    LoggingConfig.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Prefix', traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => "", "smithy.api#documentation" => "<p>An optional string that you want CloudFront to prefix to the access log <code>filenames</code> for this distribution, for example, <code>myprefix/</code>. If you want to enable logging, but you don't want to specify a prefix, you still must include an empty <code>Prefix</code> element in the <code>Logging</code> element.</p>"}))
    LoggingConfig.type = Types::LoggingConfig
    ManagedCertificateDetails.add_member(:certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CertificateArn', traits: {"smithy.api#documentation" => "<p>The ARN of the CloudFront managed ACM certificate.</p>"}))
    ManagedCertificateDetails.add_member(:certificate_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedCertificateStatus, location_name: 'CertificateStatus', traits: {"smithy.api#documentation" => "<p>The status of the CloudFront managed ACM certificate.</p> <note> <p>Your distribution tenant will be updated with the latest certificate status. When calling the <a href=\"https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistributionTenant.html\">UpdateDistributionTenant</a> operation, use the latest value for the <code>ETag</code>.</p> </note>"}))
    ManagedCertificateDetails.add_member(:validation_token_host, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationTokenHost, location_name: 'ValidationTokenHost', traits: {"smithy.api#documentation" => "<p>Contains details about the validation token host of the specified CloudFront managed ACM certificate.</p> <ul> <li> <p>For <code>cloudfront</code>, CloudFront will automatically serve the validation token. Choose this mode if you can point the domain's DNS to CloudFront immediately.</p> </li> <li> <p>For <code>self-hosted</code>, you serve the validation token from your existing infrastructure. Choose this mode when you need to maintain current traffic flow while your certificate is being issued. You can place the validation token at the well-known path on your existing web server, wait for ACM to validate and issue the certificate, and then update your DNS to point to CloudFront.</p> </li> </ul> <note> <p>This setting only affects the initial certificate request. Once the DNS points to CloudFront, all future certificate renewals are automatically handled through CloudFront.</p> </note>"}))
    ManagedCertificateDetails.add_member(:validation_token_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationTokenDetailList, location_name: 'ValidationTokenDetails', traits: {"smithy.api#documentation" => "<p>Contains details about the validation token of the specified CloudFront managed ACM certificate.</p>"}))
    ManagedCertificateDetails.type = Types::ManagedCertificateDetails
    ManagedCertificateRequest.add_member(:validation_token_host, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationTokenHost, location_name: 'ValidationTokenHost', traits: {"smithy.api#documentation" => "<p>Specify how the HTTP validation token will be served when requesting the CloudFront managed ACM certificate.</p> <ul> <li> <p>For <code>cloudfront</code>, CloudFront will automatically serve the validation token. Choose this mode if you can point the domain's DNS to CloudFront immediately.</p> </li> <li> <p>For <code>self-hosted</code>, you serve the validation token from your existing infrastructure. Choose this mode when you need to maintain current traffic flow while your certificate is being issued. You can place the validation token at the well-known path on your existing web server, wait for ACM to validate and issue the certificate, and then update your DNS to point to CloudFront.</p> </li> </ul>", "smithy.api#required" => {}}))
    ManagedCertificateRequest.add_member(:primary_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrimaryDomainName', traits: {"smithy.api#documentation" => "<p>The primary domain name associated with the CloudFront managed ACM certificate.</p>"}))
    ManagedCertificateRequest.add_member(:certificate_transparency_logging_preference, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateTransparencyLoggingPreference, location_name: 'CertificateTransparencyLoggingPreference', traits: {"smithy.api#documentation" => "<p>You can opt out of certificate transparency logging by specifying the <code>disabled</code> option. Opt in by specifying <code>enabled</code>. For more information, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/acm-concepts.html#concept-transparency\">Certificate Transparency Logging </a> in the <i>Certificate Manager User Guide</i>.</p>"}))
    ManagedCertificateRequest.type = Types::ManagedCertificateRequest
    ManagedCertificateStatus.add_member(:pending_validation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PendingValidation', traits: {"smithy.api#enumValue" => "pending-validation"}))
    ManagedCertificateStatus.add_member(:issued, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Issued', traits: {"smithy.api#enumValue" => "issued"}))
    ManagedCertificateStatus.add_member(:inactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Inactive', traits: {"smithy.api#enumValue" => "inactive"}))
    ManagedCertificateStatus.add_member(:expired, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Expired', traits: {"smithy.api#enumValue" => "expired"}))
    ManagedCertificateStatus.add_member(:validation_timed_out, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ValidationTimedOut', traits: {"smithy.api#enumValue" => "validation-timed-out"}))
    ManagedCertificateStatus.add_member(:revoked, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Revoked', traits: {"smithy.api#enumValue" => "revoked"}))
    ManagedCertificateStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "failed"}))
    Method.add_member(:get, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GET', traits: {"smithy.api#enumValue" => "GET"}))
    Method.add_member(:head, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HEAD', traits: {"smithy.api#enumValue" => "HEAD"}))
    Method.add_member(:post, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POST', traits: {"smithy.api#enumValue" => "POST"}))
    Method.add_member(:put, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUT', traits: {"smithy.api#enumValue" => "PUT"}))
    Method.add_member(:patch, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PATCH', traits: {"smithy.api#enumValue" => "PATCH"}))
    Method.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPTIONS', traits: {"smithy.api#enumValue" => "OPTIONS"}))
    Method.add_member(:delete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE', traits: {"smithy.api#enumValue" => "DELETE"}))
    MethodsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Method, traits: {"smithy.api#xmlName" => "Method"})
    MinimumProtocolVersion.add_member(:ss_lv3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSLv3', traits: {"smithy.api#enumValue" => "SSLv3"}))
    MinimumProtocolVersion.add_member(:tl_sv1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TLSv1', traits: {"smithy.api#enumValue" => "TLSv1"}))
    MinimumProtocolVersion.add_member(:tl_sv1_2016, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TLSv1_2016', traits: {"smithy.api#enumValue" => "TLSv1_2016"}))
    MinimumProtocolVersion.add_member(:tl_sv1_1_2016, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TLSv1_1_2016', traits: {"smithy.api#enumValue" => "TLSv1.1_2016"}))
    MinimumProtocolVersion.add_member(:tl_sv1_2_2018, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TLSv1_2_2018', traits: {"smithy.api#enumValue" => "TLSv1.2_2018"}))
    MinimumProtocolVersion.add_member(:tl_sv1_2_2019, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TLSv1_2_2019', traits: {"smithy.api#enumValue" => "TLSv1.2_2019"}))
    MinimumProtocolVersion.add_member(:tl_sv1_2_2021, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TLSv1_2_2021', traits: {"smithy.api#enumValue" => "TLSv1.2_2021"}))
    MinimumProtocolVersion.add_member(:tl_sv1_3_2025, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TLSv1_3_2025', traits: {"smithy.api#enumValue" => "TLSv1.3_2025"}))
    MissingBody.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    MissingBody.type = Types::MissingBody
    MonitoringSubscription.add_member(:realtime_metrics_subscription_config, Smithy::Schema::Shapes::ShapeRef.new(shape: RealtimeMetricsSubscriptionConfig, location_name: 'RealtimeMetricsSubscriptionConfig', traits: {"smithy.api#documentation" => "<p>A subscription configuration for additional CloudWatch metrics.</p>"}))
    MonitoringSubscription.type = Types::MonitoringSubscription
    MonitoringSubscriptionAlreadyExists.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    MonitoringSubscriptionAlreadyExists.type = Types::MonitoringSubscriptionAlreadyExists
    NoSuchCachePolicy.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    NoSuchCachePolicy.type = Types::NoSuchCachePolicy
    NoSuchCloudFrontOriginAccessIdentity.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    NoSuchCloudFrontOriginAccessIdentity.type = Types::NoSuchCloudFrontOriginAccessIdentity
    NoSuchContinuousDeploymentPolicy.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    NoSuchContinuousDeploymentPolicy.type = Types::NoSuchContinuousDeploymentPolicy
    NoSuchDistribution.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    NoSuchDistribution.type = Types::NoSuchDistribution
    NoSuchFieldLevelEncryptionConfig.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    NoSuchFieldLevelEncryptionConfig.type = Types::NoSuchFieldLevelEncryptionConfig
    NoSuchFieldLevelEncryptionProfile.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    NoSuchFieldLevelEncryptionProfile.type = Types::NoSuchFieldLevelEncryptionProfile
    NoSuchFunctionExists.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    NoSuchFunctionExists.type = Types::NoSuchFunctionExists
    NoSuchInvalidation.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    NoSuchInvalidation.type = Types::NoSuchInvalidation
    NoSuchMonitoringSubscription.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    NoSuchMonitoringSubscription.type = Types::NoSuchMonitoringSubscription
    NoSuchOrigin.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    NoSuchOrigin.type = Types::NoSuchOrigin
    NoSuchOriginAccessControl.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    NoSuchOriginAccessControl.type = Types::NoSuchOriginAccessControl
    NoSuchOriginRequestPolicy.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    NoSuchOriginRequestPolicy.type = Types::NoSuchOriginRequestPolicy
    NoSuchPublicKey.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    NoSuchPublicKey.type = Types::NoSuchPublicKey
    NoSuchRealtimeLogConfig.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    NoSuchRealtimeLogConfig.type = Types::NoSuchRealtimeLogConfig
    NoSuchResource.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    NoSuchResource.type = Types::NoSuchResource
    NoSuchResponseHeadersPolicy.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    NoSuchResponseHeadersPolicy.type = Types::NoSuchResponseHeadersPolicy
    NoSuchStreamingDistribution.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    NoSuchStreamingDistribution.type = Types::NoSuchStreamingDistribution
    Origin.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>A unique identifier for the origin. This value must be unique within the distribution.</p> <p>Use this value to specify the <code>TargetOriginId</code> in a <code>CacheBehavior</code> or <code>DefaultCacheBehavior</code>.</p>", "smithy.api#required" => {}}))
    Origin.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The domain name for the origin.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesDomainName\">Origin Domain Name</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    Origin.add_member(:origin_path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OriginPath', traits: {"smithy.api#documentation" => "<p>An optional path that CloudFront appends to the origin domain name when CloudFront requests content from the origin.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginPath\">Origin Path</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"}))
    Origin.add_member(:custom_headers, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomHeaders, location_name: 'CustomHeaders', traits: {"smithy.api#documentation" => "<p>A list of HTTP header names and values that CloudFront adds to the requests that it sends to the origin.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/add-origin-custom-headers.html\">Adding Custom Headers to Origin Requests</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"}))
    Origin.add_member(:s3_origin_config, Smithy::Schema::Shapes::ShapeRef.new(shape: S3OriginConfig, location_name: 'S3OriginConfig', traits: {"smithy.api#documentation" => "<p>Use this type to specify an origin that is an Amazon S3 bucket that is not configured with static website hosting. To specify any other type of origin, including an Amazon S3 bucket that is configured with static website hosting, use the <code>CustomOriginConfig</code> type instead.</p>"}))
    Origin.add_member(:custom_origin_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomOriginConfig, location_name: 'CustomOriginConfig', traits: {"smithy.api#documentation" => "<p>Use this type to specify an origin that is not an Amazon S3 bucket, with one exception. If the Amazon S3 bucket is configured with static website hosting, use this type. If the Amazon S3 bucket is not configured with static website hosting, use the <code>S3OriginConfig</code> type instead.</p>"}))
    Origin.add_member(:vpc_origin_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcOriginConfig, location_name: 'VpcOriginConfig', traits: {"smithy.api#documentation" => "<p>The VPC origin configuration.</p>"}))
    Origin.add_member(:connection_attempts, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ConnectionAttempts', traits: {"smithy.api#documentation" => "<p>The number of times that CloudFront attempts to connect to the origin. The minimum number is 1, the maximum is 3, and the default (if you don't specify otherwise) is 3.</p> <p>For a custom origin (including an Amazon S3 bucket that's configured with static website hosting), this value also specifies the number of times that CloudFront attempts to get a response from the origin, in the case of an <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginResponseTimeout\">Origin Response Timeout</a>.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#origin-connection-attempts\">Origin Connection Attempts</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"}))
    Origin.add_member(:connection_timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ConnectionTimeout', traits: {"smithy.api#documentation" => "<p>The number of seconds that CloudFront waits when trying to establish a connection to the origin. The minimum timeout is 1 second, the maximum is 10 seconds, and the default (if you don't specify otherwise) is 10 seconds.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#origin-connection-timeout\">Origin Connection Timeout</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"}))
    Origin.add_member(:response_completion_timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ResponseCompletionTimeout', traits: {"smithy.api#documentation" => "<p>The time (in seconds) that a request from CloudFront to the origin can stay open and wait for a response. If the complete response isn't received from the origin by this time, CloudFront ends the connection.</p> <p>The value for <code>ResponseCompletionTimeout</code> must be equal to or greater than the value for <code>OriginReadTimeout</code>. If you don't set a value for <code>ResponseCompletionTimeout</code>, CloudFront doesn't enforce a maximum value.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/DownloadDistValuesOrigin.html#response-completion-timeout\">Response completion timeout</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"}))
    Origin.add_member(:origin_shield, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginShield, location_name: 'OriginShield', traits: {"smithy.api#documentation" => "<p>CloudFront Origin Shield. Using Origin Shield can help reduce the load on your origin.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/origin-shield.html\">Using Origin Shield</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"}))
    Origin.add_member(:origin_access_control_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OriginAccessControlId', traits: {"smithy.api#documentation" => "<p>The unique identifier of an origin access control for this origin.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html\">Restricting access to an Amazon S3 origin</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"}))
    Origin.type = Types::Origin
    OriginAccessControl.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the origin access control.</p>", "smithy.api#required" => {}}))
    OriginAccessControl.add_member(:origin_access_control_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginAccessControlConfig, location_name: 'OriginAccessControlConfig', traits: {"smithy.api#documentation" => "<p>The origin access control.</p>"}))
    OriginAccessControl.type = Types::OriginAccessControl
    OriginAccessControlAlreadyExists.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    OriginAccessControlAlreadyExists.type = Types::OriginAccessControlAlreadyExists
    OriginAccessControlConfig.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A name to identify the origin access control. You can specify up to 64 characters.</p>", "smithy.api#required" => {}}))
    OriginAccessControlConfig.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the origin access control.</p>"}))
    OriginAccessControlConfig.add_member(:signing_protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginAccessControlSigningProtocols, location_name: 'SigningProtocol', traits: {"smithy.api#documentation" => "<p>The signing protocol of the origin access control, which determines how CloudFront signs (authenticates) requests. The only valid value is <code>sigv4</code>.</p>", "smithy.api#required" => {}}))
    OriginAccessControlConfig.add_member(:signing_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginAccessControlSigningBehaviors, location_name: 'SigningBehavior', traits: {"smithy.api#documentation" => "<p>Specifies which requests CloudFront signs (adds authentication information to). Specify <code>always</code> for the most common use case. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html#oac-advanced-settings\">origin access control advanced settings</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>This field can have one of the following values:</p> <ul> <li> <p> <code>always</code> – CloudFront signs all origin requests, overwriting the <code>Authorization</code> header from the viewer request if one exists.</p> </li> <li> <p> <code>never</code> – CloudFront doesn't sign any origin requests. This value turns off origin access control for all origins in all distributions that use this origin access control.</p> </li> <li> <p> <code>no-override</code> – If the viewer request doesn't contain the <code>Authorization</code> header, then CloudFront signs the origin request. If the viewer request contains the <code>Authorization</code> header, then CloudFront doesn't sign the origin request and instead passes along the <code>Authorization</code> header from the viewer request. <b>WARNING: To pass along the <code>Authorization</code> header from the viewer request, you <i>must</i> add the <code>Authorization</code> header to a <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html\">cache policy</a> for all cache behaviors that use origins associated with this origin access control.</b> </p> </li> </ul>", "smithy.api#required" => {}}))
    OriginAccessControlConfig.add_member(:origin_access_control_origin_type, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginAccessControlOriginTypes, location_name: 'OriginAccessControlOriginType', traits: {"smithy.api#documentation" => "<p>The type of origin that this origin access control is for.</p>", "smithy.api#required" => {}}))
    OriginAccessControlConfig.type = Types::OriginAccessControlConfig
    OriginAccessControlInUse.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    OriginAccessControlInUse.type = Types::OriginAccessControlInUse
    OriginAccessControlList.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>The value of the <code>Marker</code> field that was provided in the request.</p>", "smithy.api#required" => {}}))
    OriginAccessControlList.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If there are more items in the list than are in this response, this element is present. It contains the value to use in the <code>Marker</code> field of another request to continue listing origin access controls.</p>"}))
    OriginAccessControlList.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of origin access controls requested.</p>", "smithy.api#required" => {}}))
    OriginAccessControlList.add_member(:is_truncated, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsTruncated', traits: {"smithy.api#documentation" => "<p>If there are more items in the list than are in this response, this value is <code>true</code>.</p>", "smithy.api#required" => {}}))
    OriginAccessControlList.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of origin access controls returned in the response.</p>", "smithy.api#required" => {}}))
    OriginAccessControlList.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginAccessControlSummaryList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>Contains the origin access controls in the list.</p>"}))
    OriginAccessControlList.type = Types::OriginAccessControlList
    OriginAccessControlOriginTypes.add_member(:s3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 's3', traits: {"smithy.api#enumValue" => "s3"}))
    OriginAccessControlOriginTypes.add_member(:mediastore, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'mediastore', traits: {"smithy.api#enumValue" => "mediastore"}))
    OriginAccessControlOriginTypes.add_member(:mediapackagev2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'mediapackagev2', traits: {"smithy.api#enumValue" => "mediapackagev2"}))
    OriginAccessControlOriginTypes.add_member(:lambda, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'lambda', traits: {"smithy.api#enumValue" => "lambda"}))
    OriginAccessControlSigningBehaviors.add_member(:never, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'never', traits: {"smithy.api#enumValue" => "never"}))
    OriginAccessControlSigningBehaviors.add_member(:always, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'always', traits: {"smithy.api#enumValue" => "always"}))
    OriginAccessControlSigningBehaviors.add_member(:no_override, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'no_override', traits: {"smithy.api#enumValue" => "no-override"}))
    OriginAccessControlSigningProtocols.add_member(:sigv4, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'sigv4', traits: {"smithy.api#enumValue" => "sigv4"}))
    OriginAccessControlSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the origin access control.</p>", "smithy.api#required" => {}}))
    OriginAccessControlSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the origin access control.</p>", "smithy.api#required" => {}}))
    OriginAccessControlSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A unique name that identifies the origin access control.</p>", "smithy.api#required" => {}}))
    OriginAccessControlSummary.add_member(:signing_protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginAccessControlSigningProtocols, location_name: 'SigningProtocol', traits: {"smithy.api#documentation" => "<p>The signing protocol of the origin access control. The signing protocol determines how CloudFront signs (authenticates) requests. The only valid value is <code>sigv4</code>.</p>", "smithy.api#required" => {}}))
    OriginAccessControlSummary.add_member(:signing_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginAccessControlSigningBehaviors, location_name: 'SigningBehavior', traits: {"smithy.api#documentation" => "<p>A value that specifies which requests CloudFront signs (adds authentication information to). This field can have one of the following values:</p> <ul> <li> <p> <code>never</code> – CloudFront doesn't sign any origin requests.</p> </li> <li> <p> <code>always</code> – CloudFront signs all origin requests, overwriting the <code>Authorization</code> header from the viewer request if necessary.</p> </li> <li> <p> <code>no-override</code> – If the viewer request doesn't contain the <code>Authorization</code> header, CloudFront signs the origin request. If the viewer request contains the <code>Authorization</code> header, CloudFront doesn't sign the origin request, but instead passes along the <code>Authorization</code> header that it received in the viewer request.</p> </li> </ul>", "smithy.api#required" => {}}))
    OriginAccessControlSummary.add_member(:origin_access_control_origin_type, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginAccessControlOriginTypes, location_name: 'OriginAccessControlOriginType', traits: {"smithy.api#documentation" => "<p>The type of origin that this origin access control is for.</p>", "smithy.api#required" => {}}))
    OriginAccessControlSummary.type = Types::OriginAccessControlSummary
    OriginAccessControlSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OriginAccessControlSummary, traits: {"smithy.api#xmlName" => "OriginAccessControlSummary"})
    OriginCustomHeader.add_member(:header_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HeaderName', traits: {"smithy.api#documentation" => "<p>The name of a header that you want CloudFront to send to your origin. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/forward-custom-headers.html\">Adding Custom Headers to Origin Requests</a> in the <i> Amazon CloudFront Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    OriginCustomHeader.add_member(:header_value, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: 'HeaderValue', traits: {"smithy.api#documentation" => "<p>The value for the header that you specified in the <code>HeaderName</code> field.</p>", "smithy.api#required" => {}}))
    OriginCustomHeader.type = Types::OriginCustomHeader
    OriginCustomHeadersList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OriginCustomHeader, traits: {"smithy.api#xmlName" => "OriginCustomHeader"})
    OriginGroup.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The origin group's ID.</p>", "smithy.api#required" => {}}))
    OriginGroup.add_member(:failover_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginGroupFailoverCriteria, location_name: 'FailoverCriteria', traits: {"smithy.api#documentation" => "<p>A complex type that contains information about the failover criteria for an origin group.</p>", "smithy.api#required" => {}}))
    OriginGroup.add_member(:members, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginGroupMembers, location_name: 'Members', traits: {"smithy.api#documentation" => "<p>A complex type that contains information about the origins in an origin group.</p>", "smithy.api#required" => {}}))
    OriginGroup.add_member(:selection_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginGroupSelectionCriteria, location_name: 'SelectionCriteria', traits: {"smithy.api#documentation" => "<p>The selection criteria for the origin group. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/high_availability_origin_failover.html#concept_origin_groups.creating\">Create an origin group</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"}))
    OriginGroup.type = Types::OriginGroup
    OriginGroupFailoverCriteria.add_member(:status_codes, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusCodes, location_name: 'StatusCodes', traits: {"smithy.api#documentation" => "<p>The status codes that, when returned from the primary origin, will trigger CloudFront to failover to the second origin.</p>", "smithy.api#required" => {}}))
    OriginGroupFailoverCriteria.type = Types::OriginGroupFailoverCriteria
    OriginGroupList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OriginGroup, traits: {"smithy.api#xmlName" => "OriginGroup"})
    OriginGroupMember.add_member(:origin_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OriginId', traits: {"smithy.api#documentation" => "<p>The ID for an origin in an origin group.</p>", "smithy.api#required" => {}}))
    OriginGroupMember.type = Types::OriginGroupMember
    OriginGroupMemberList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OriginGroupMember, traits: {"smithy.api#xmlName" => "OriginGroupMember"})
    OriginGroupMembers.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of origins in an origin group.</p>", "smithy.api#required" => {}}))
    OriginGroupMembers.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginGroupMemberList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>Items (origins) in an origin group.</p>", "smithy.api#required" => {}}))
    OriginGroupMembers.type = Types::OriginGroupMembers
    OriginGroupSelectionCriteria.add_member(:default, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Default', traits: {"smithy.api#enumValue" => "default"}))
    OriginGroupSelectionCriteria.add_member(:media_quality_based, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MediaQualityBased', traits: {"smithy.api#enumValue" => "media-quality-based"}))
    OriginGroups.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of origin groups.</p>", "smithy.api#required" => {}}))
    OriginGroups.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginGroupList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>The items (origin groups) in a distribution.</p>"}))
    OriginGroups.type = Types::OriginGroups
    OriginList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Origin, traits: {"smithy.api#xmlName" => "Origin"})
    OriginProtocolPolicy.add_member(:http_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'http_only', traits: {"smithy.api#enumValue" => "http-only"}))
    OriginProtocolPolicy.add_member(:match_viewer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'match_viewer', traits: {"smithy.api#enumValue" => "match-viewer"}))
    OriginProtocolPolicy.add_member(:https_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'https_only', traits: {"smithy.api#enumValue" => "https-only"}))
    OriginRequestPolicy.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the origin request policy.</p>", "smithy.api#required" => {}}))
    OriginRequestPolicy.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The date and time when the origin request policy was last modified.</p>", "smithy.api#required" => {}}))
    OriginRequestPolicy.add_member(:origin_request_policy_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginRequestPolicyConfig, location_name: 'OriginRequestPolicyConfig', traits: {"smithy.api#documentation" => "<p>The origin request policy configuration.</p>", "smithy.api#required" => {}}))
    OriginRequestPolicy.type = Types::OriginRequestPolicy
    OriginRequestPolicyAlreadyExists.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    OriginRequestPolicyAlreadyExists.type = Types::OriginRequestPolicyAlreadyExists
    OriginRequestPolicyConfig.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Comment', traits: {"smithy.api#documentation" => "<p>A comment to describe the origin request policy. The comment cannot be longer than 128 characters.</p>"}))
    OriginRequestPolicyConfig.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A unique name to identify the origin request policy.</p>", "smithy.api#required" => {}}))
    OriginRequestPolicyConfig.add_member(:headers_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginRequestPolicyHeadersConfig, location_name: 'HeadersConfig', traits: {"smithy.api#documentation" => "<p>The HTTP headers to include in origin requests. These can include headers from viewer requests and additional headers added by CloudFront.</p>", "smithy.api#required" => {}}))
    OriginRequestPolicyConfig.add_member(:cookies_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginRequestPolicyCookiesConfig, location_name: 'CookiesConfig', traits: {"smithy.api#documentation" => "<p>The cookies from viewer requests to include in origin requests.</p>", "smithy.api#required" => {}}))
    OriginRequestPolicyConfig.add_member(:query_strings_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginRequestPolicyQueryStringsConfig, location_name: 'QueryStringsConfig', traits: {"smithy.api#documentation" => "<p>The URL query strings from viewer requests to include in origin requests.</p>", "smithy.api#required" => {}}))
    OriginRequestPolicyConfig.type = Types::OriginRequestPolicyConfig
    OriginRequestPolicyCookieBehavior.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'none', traits: {"smithy.api#enumValue" => "none"}))
    OriginRequestPolicyCookieBehavior.add_member(:whitelist, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'whitelist', traits: {"smithy.api#enumValue" => "whitelist"}))
    OriginRequestPolicyCookieBehavior.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'all', traits: {"smithy.api#enumValue" => "all"}))
    OriginRequestPolicyCookieBehavior.add_member(:all_except, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'allExcept', traits: {"smithy.api#enumValue" => "allExcept"}))
    OriginRequestPolicyCookiesConfig.add_member(:cookie_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginRequestPolicyCookieBehavior, location_name: 'CookieBehavior', traits: {"smithy.api#documentation" => "<p>Determines whether cookies in viewer requests are included in requests that CloudFront sends to the origin. Valid values are:</p> <ul> <li> <p> <code>none</code> – No cookies in viewer requests are included in requests that CloudFront sends to the origin. Even when this field is set to <code>none</code>, any cookies that are listed in a <code>CachePolicy</code> <i>are</i> included in origin requests.</p> </li> <li> <p> <code>whitelist</code> – Only the cookies in viewer requests that are listed in the <code>CookieNames</code> type are included in requests that CloudFront sends to the origin.</p> </li> <li> <p> <code>all</code> – All cookies in viewer requests are included in requests that CloudFront sends to the origin.</p> </li> <li> <p> <code>allExcept</code> – All cookies in viewer requests are included in requests that CloudFront sends to the origin, <i> <b>except</b> </i> for those listed in the <code>CookieNames</code> type, which are not included.</p> </li> </ul>", "smithy.api#required" => {}}))
    OriginRequestPolicyCookiesConfig.add_member(:cookies, Smithy::Schema::Shapes::ShapeRef.new(shape: CookieNames, location_name: 'Cookies'))
    OriginRequestPolicyCookiesConfig.type = Types::OriginRequestPolicyCookiesConfig
    OriginRequestPolicyHeaderBehavior.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'none', traits: {"smithy.api#enumValue" => "none"}))
    OriginRequestPolicyHeaderBehavior.add_member(:whitelist, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'whitelist', traits: {"smithy.api#enumValue" => "whitelist"}))
    OriginRequestPolicyHeaderBehavior.add_member(:all_viewer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'allViewer', traits: {"smithy.api#enumValue" => "allViewer"}))
    OriginRequestPolicyHeaderBehavior.add_member(:all_viewer_and_whitelist_cloud_front, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'allViewerAndWhitelistCloudFront', traits: {"smithy.api#enumValue" => "allViewerAndWhitelistCloudFront"}))
    OriginRequestPolicyHeaderBehavior.add_member(:all_except, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'allExcept', traits: {"smithy.api#enumValue" => "allExcept"}))
    OriginRequestPolicyHeadersConfig.add_member(:header_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginRequestPolicyHeaderBehavior, location_name: 'HeaderBehavior', traits: {"smithy.api#documentation" => "<p>Determines whether any HTTP headers are included in requests that CloudFront sends to the origin. Valid values are:</p> <ul> <li> <p> <code>none</code> – No HTTP headers in viewer requests are included in requests that CloudFront sends to the origin. Even when this field is set to <code>none</code>, any headers that are listed in a <code>CachePolicy</code> <i>are</i> included in origin requests.</p> </li> <li> <p> <code>whitelist</code> – Only the HTTP headers that are listed in the <code>Headers</code> type are included in requests that CloudFront sends to the origin.</p> </li> <li> <p> <code>allViewer</code> – All HTTP headers in viewer requests are included in requests that CloudFront sends to the origin.</p> </li> <li> <p> <code>allViewerAndWhitelistCloudFront</code> – All HTTP headers in viewer requests and the additional CloudFront headers that are listed in the <code>Headers</code> type are included in requests that CloudFront sends to the origin. The additional headers are added by CloudFront.</p> </li> <li> <p> <code>allExcept</code> – All HTTP headers in viewer requests are included in requests that CloudFront sends to the origin, <i> <b>except</b> </i> for those listed in the <code>Headers</code> type, which are not included.</p> </li> </ul>", "smithy.api#required" => {}}))
    OriginRequestPolicyHeadersConfig.add_member(:headers, Smithy::Schema::Shapes::ShapeRef.new(shape: Headers, location_name: 'Headers'))
    OriginRequestPolicyHeadersConfig.type = Types::OriginRequestPolicyHeadersConfig
    OriginRequestPolicyInUse.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    OriginRequestPolicyInUse.type = Types::OriginRequestPolicyInUse
    OriginRequestPolicyList.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If there are more items in the list than are in this response, this element is present. It contains the value that you should use in the <code>Marker</code> field of a subsequent request to continue listing origin request policies where you left off.</p>"}))
    OriginRequestPolicyList.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of origin request policies requested.</p>", "smithy.api#required" => {}}))
    OriginRequestPolicyList.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The total number of origin request policies returned in the response.</p>", "smithy.api#required" => {}}))
    OriginRequestPolicyList.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginRequestPolicySummaryList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>Contains the origin request policies in the list.</p>"}))
    OriginRequestPolicyList.type = Types::OriginRequestPolicyList
    OriginRequestPolicyQueryStringBehavior.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'none', traits: {"smithy.api#enumValue" => "none"}))
    OriginRequestPolicyQueryStringBehavior.add_member(:whitelist, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'whitelist', traits: {"smithy.api#enumValue" => "whitelist"}))
    OriginRequestPolicyQueryStringBehavior.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'all', traits: {"smithy.api#enumValue" => "all"}))
    OriginRequestPolicyQueryStringBehavior.add_member(:all_except, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'allExcept', traits: {"smithy.api#enumValue" => "allExcept"}))
    OriginRequestPolicyQueryStringsConfig.add_member(:query_string_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginRequestPolicyQueryStringBehavior, location_name: 'QueryStringBehavior', traits: {"smithy.api#documentation" => "<p>Determines whether any URL query strings in viewer requests are included in requests that CloudFront sends to the origin. Valid values are:</p> <ul> <li> <p> <code>none</code> – No query strings in viewer requests are included in requests that CloudFront sends to the origin. Even when this field is set to <code>none</code>, any query strings that are listed in a <code>CachePolicy</code> <i>are</i> included in origin requests.</p> </li> <li> <p> <code>whitelist</code> – Only the query strings in viewer requests that are listed in the <code>QueryStringNames</code> type are included in requests that CloudFront sends to the origin.</p> </li> <li> <p> <code>all</code> – All query strings in viewer requests are included in requests that CloudFront sends to the origin.</p> </li> <li> <p> <code>allExcept</code> – All query strings in viewer requests are included in requests that CloudFront sends to the origin, <i> <b>except</b> </i> for those listed in the <code>QueryStringNames</code> type, which are not included.</p> </li> </ul>", "smithy.api#required" => {}}))
    OriginRequestPolicyQueryStringsConfig.add_member(:query_strings, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStringNames, location_name: 'QueryStrings', traits: {"smithy.api#documentation" => "<p>Contains the specific query strings in viewer requests that either <i> <b>are</b> </i> or <i> <b>are not</b> </i> included in requests that CloudFront sends to the origin. The behavior depends on whether the <code>QueryStringBehavior</code> field in the <code>OriginRequestPolicyQueryStringsConfig</code> type is set to <code>whitelist</code> (the listed query strings <i> <b>are</b> </i> included) or <code>allExcept</code> (the listed query strings <i> <b>are not</b> </i> included, but all other query strings are).</p>"}))
    OriginRequestPolicyQueryStringsConfig.type = Types::OriginRequestPolicyQueryStringsConfig
    OriginRequestPolicySummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginRequestPolicyType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of origin request policy, either <code>managed</code> (created by Amazon Web Services) or <code>custom</code> (created in this Amazon Web Services account).</p>", "smithy.api#required" => {}}))
    OriginRequestPolicySummary.add_member(:origin_request_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginRequestPolicy, location_name: 'OriginRequestPolicy', traits: {"smithy.api#documentation" => "<p>The origin request policy.</p>", "smithy.api#required" => {}}))
    OriginRequestPolicySummary.type = Types::OriginRequestPolicySummary
    OriginRequestPolicySummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OriginRequestPolicySummary, traits: {"smithy.api#xmlName" => "OriginRequestPolicySummary"})
    OriginRequestPolicyType.add_member(:managed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'managed', traits: {"smithy.api#enumValue" => "managed"}))
    OriginRequestPolicyType.add_member(:custom, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'custom', traits: {"smithy.api#enumValue" => "custom"}))
    OriginShield.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>A flag that specifies whether Origin Shield is enabled.</p> <p>When it's enabled, CloudFront routes all requests through Origin Shield, which can help protect your origin. When it's disabled, CloudFront might send requests directly to your origin from multiple edge locations or regional edge caches.</p>", "smithy.api#required" => {}}))
    OriginShield.add_member(:origin_shield_region, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginShieldRegion, location_name: 'OriginShieldRegion', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region for Origin Shield.</p> <p>Specify the Amazon Web Services Region that has the lowest latency to your origin. To specify a region, use the region code, not the region name. For example, specify the US East (Ohio) region as <code>us-east-2</code>.</p> <p>When you enable CloudFront Origin Shield, you must specify the Amazon Web Services Region for Origin Shield. For the list of Amazon Web Services Regions that you can specify, and for help choosing the best Region for your origin, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/origin-shield.html#choose-origin-shield-region\">Choosing the Amazon Web Services Region for Origin Shield</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"}))
    OriginShield.type = Types::OriginShield
    OriginSslProtocols.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of SSL/TLS protocols that you want to allow CloudFront to use when establishing an HTTPS connection with this origin.</p>", "smithy.api#required" => {}}))
    OriginSslProtocols.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: SslProtocolsList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>A list that contains allowed SSL/TLS protocols for this distribution.</p>", "smithy.api#required" => {}}))
    OriginSslProtocols.type = Types::OriginSslProtocols
    Origins.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of origins for this distribution.</p>", "smithy.api#required" => {}}))
    Origins.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>A list of origins.</p>", "smithy.api#required" => {}}))
    Origins.type = Types::Origins
    Parameter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The parameter name.</p>", "smithy.api#required" => {}}))
    Parameter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The parameter value.</p>", "smithy.api#required" => {}}))
    Parameter.type = Types::Parameter
    ParameterDefinition.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the parameter.</p>", "smithy.api#required" => {}}))
    ParameterDefinition.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterDefinitionSchema, location_name: 'Definition', traits: {"smithy.api#documentation" => "<p>The value that you assigned to the parameter.</p>", "smithy.api#required" => {}}))
    ParameterDefinition.type = Types::ParameterDefinition
    ParameterDefinitionSchema.add_member(:string_schema, Smithy::Schema::Shapes::ShapeRef.new(shape: StringSchemaConfig, location_name: 'StringSchema', traits: {"smithy.api#documentation" => "<p>An object that contains information about the string schema.</p>"}))
    ParameterDefinitionSchema.type = Types::ParameterDefinitionSchema
    ParameterDefinitions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterDefinition)
    Parameters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Parameter)
    ParametersInCacheKeyAndForwardedToOrigin.add_member(:enable_accept_encoding_gzip, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnableAcceptEncodingGzip', traits: {"smithy.api#documentation" => "<p>A flag that can affect whether the <code>Accept-Encoding</code> HTTP header is included in the cache key and included in requests that CloudFront sends to the origin.</p> <p>This field is related to the <code>EnableAcceptEncodingBrotli</code> field. If one or both of these fields is <code>true</code> <i>and</i> the viewer request includes the <code>Accept-Encoding</code> header, then CloudFront does the following:</p> <ul> <li> <p>Normalizes the value of the viewer's <code>Accept-Encoding</code> header</p> </li> <li> <p>Includes the normalized header in the cache key</p> </li> <li> <p>Includes the normalized header in the request to the origin, if a request is necessary</p> </li> </ul> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-policy-compressed-objects\">Compression support</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you set this value to <code>true</code>, and this cache behavior also has an origin request policy attached, do not include the <code>Accept-Encoding</code> header in the origin request policy. CloudFront always includes the <code>Accept-Encoding</code> header in origin requests when the value of this field is <code>true</code>, so including this header in an origin request policy has no effect.</p> <p>If both of these fields are <code>false</code>, then CloudFront treats the <code>Accept-Encoding</code> header the same as any other HTTP header in the viewer request. By default, it's not included in the cache key and it's not included in origin requests. In this case, you can manually add <code>Accept-Encoding</code> to the headers whitelist like any other HTTP header.</p>", "smithy.api#required" => {}}))
    ParametersInCacheKeyAndForwardedToOrigin.add_member(:enable_accept_encoding_brotli, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnableAcceptEncodingBrotli', traits: {"smithy.api#documentation" => "<p>A flag that can affect whether the <code>Accept-Encoding</code> HTTP header is included in the cache key and included in requests that CloudFront sends to the origin.</p> <p>This field is related to the <code>EnableAcceptEncodingGzip</code> field. If one or both of these fields is <code>true</code> <i>and</i> the viewer request includes the <code>Accept-Encoding</code> header, then CloudFront does the following:</p> <ul> <li> <p>Normalizes the value of the viewer's <code>Accept-Encoding</code> header</p> </li> <li> <p>Includes the normalized header in the cache key</p> </li> <li> <p>Includes the normalized header in the request to the origin, if a request is necessary</p> </li> </ul> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-policy-compressed-objects\">Compression support</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you set this value to <code>true</code>, and this cache behavior also has an origin request policy attached, do not include the <code>Accept-Encoding</code> header in the origin request policy. CloudFront always includes the <code>Accept-Encoding</code> header in origin requests when the value of this field is <code>true</code>, so including this header in an origin request policy has no effect.</p> <p>If both of these fields are <code>false</code>, then CloudFront treats the <code>Accept-Encoding</code> header the same as any other HTTP header in the viewer request. By default, it's not included in the cache key and it's not included in origin requests. In this case, you can manually add <code>Accept-Encoding</code> to the headers whitelist like any other HTTP header.</p>"}))
    ParametersInCacheKeyAndForwardedToOrigin.add_member(:headers_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CachePolicyHeadersConfig, location_name: 'HeadersConfig', traits: {"smithy.api#documentation" => "<p>An object that determines whether any HTTP headers (and if so, which headers) are included in the cache key and in requests that CloudFront sends to the origin.</p>", "smithy.api#required" => {}}))
    ParametersInCacheKeyAndForwardedToOrigin.add_member(:cookies_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CachePolicyCookiesConfig, location_name: 'CookiesConfig', traits: {"smithy.api#documentation" => "<p>An object that determines whether any cookies in viewer requests (and if so, which cookies) are included in the cache key and in requests that CloudFront sends to the origin.</p>", "smithy.api#required" => {}}))
    ParametersInCacheKeyAndForwardedToOrigin.add_member(:query_strings_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CachePolicyQueryStringsConfig, location_name: 'QueryStringsConfig', traits: {"smithy.api#documentation" => "<p>An object that determines whether any URL query strings in viewer requests (and if so, which query strings) are included in the cache key and in requests that CloudFront sends to the origin.</p>", "smithy.api#required" => {}}))
    ParametersInCacheKeyAndForwardedToOrigin.type = Types::ParametersInCacheKeyAndForwardedToOrigin
    PathList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "Path"})
    Paths.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of invalidation paths specified for the objects that you want to invalidate.</p>", "smithy.api#required" => {}}))
    Paths.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: PathList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>A complex type that contains a list of the paths that you want to invalidate.</p>"}))
    Paths.type = Types::Paths
    PreconditionFailed.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    PreconditionFailed.type = Types::PreconditionFailed
    PriceClass.add_member(:price_class_100, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PriceClass_100', traits: {"smithy.api#enumValue" => "PriceClass_100"}))
    PriceClass.add_member(:price_class_200, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PriceClass_200', traits: {"smithy.api#enumValue" => "PriceClass_200"}))
    PriceClass.add_member(:price_class_all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PriceClass_All', traits: {"smithy.api#enumValue" => "PriceClass_All"}))
    PriceClass.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'None', traits: {"smithy.api#enumValue" => "None"}))
    PublicKey.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the public key.</p>", "smithy.api#required" => {}}))
    PublicKey.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The date and time when the public key was uploaded.</p>", "smithy.api#required" => {}}))
    PublicKey.add_member(:public_key_config, Smithy::Schema::Shapes::ShapeRef.new(shape: PublicKeyConfig, location_name: 'PublicKeyConfig', traits: {"smithy.api#documentation" => "<p>Configuration information about a public key that you can use with <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">signed URLs and signed cookies</a>, or with <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html\">field-level encryption</a>.</p>", "smithy.api#required" => {}}))
    PublicKey.type = Types::PublicKey
    PublicKeyAlreadyExists.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    PublicKeyAlreadyExists.type = Types::PublicKeyAlreadyExists
    PublicKeyConfig.add_member(:caller_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CallerReference', traits: {"smithy.api#documentation" => "<p>A string included in the request to help make sure that the request can't be replayed.</p>", "smithy.api#required" => {}}))
    PublicKeyConfig.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A name to help identify the public key.</p>", "smithy.api#required" => {}}))
    PublicKeyConfig.add_member(:encoded_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EncodedKey', traits: {"smithy.api#documentation" => "<p>The public key that you can use with <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">signed URLs and signed cookies</a>, or with <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html\">field-level encryption</a>.</p>", "smithy.api#required" => {}}))
    PublicKeyConfig.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Comment', traits: {"smithy.api#documentation" => "<p>A comment to describe the public key. The comment cannot be longer than 128 characters.</p>"}))
    PublicKeyConfig.type = Types::PublicKeyConfig
    PublicKeyIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "PublicKey"})
    PublicKeyInUse.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    PublicKeyInUse.type = Types::PublicKeyInUse
    PublicKeyList.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If there are more elements to be listed, this element is present and contains the value that you can use for the <code>Marker</code> request parameter to continue listing your public keys where you left off.</p>"}))
    PublicKeyList.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of public keys you want in the response.</p>", "smithy.api#required" => {}}))
    PublicKeyList.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of public keys in the list.</p>", "smithy.api#required" => {}}))
    PublicKeyList.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: PublicKeySummaryList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>A list of public keys.</p>"}))
    PublicKeyList.type = Types::PublicKeyList
    PublicKeySummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the public key.</p>", "smithy.api#required" => {}}))
    PublicKeySummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A name to help identify the public key.</p>", "smithy.api#required" => {}}))
    PublicKeySummary.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The date and time when the public key was uploaded.</p>", "smithy.api#required" => {}}))
    PublicKeySummary.add_member(:encoded_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EncodedKey', traits: {"smithy.api#documentation" => "<p>The public key.</p>", "smithy.api#required" => {}}))
    PublicKeySummary.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Comment', traits: {"smithy.api#documentation" => "<p>A comment to describe the public key. The comment cannot be longer than 128 characters.</p>"}))
    PublicKeySummary.type = Types::PublicKeySummary
    PublicKeySummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PublicKeySummary, traits: {"smithy.api#xmlName" => "PublicKeySummary"})
    PublishFunctionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the function that you are publishing.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PublishFunctionRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The current version (<code>ETag</code> value) of the function that you are publishing, which you can get using <code>DescribeFunction</code>.</p>", "smithy.api#httpHeader" => "If-Match", "smithy.api#required" => {}}))
    PublishFunctionRequest.type = Types::PublishFunctionRequest
    PublishFunctionResult.add_member(:function_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionSummary, location_name: 'FunctionSummary', traits: {"smithy.api#documentation" => "<p>Contains configuration information and metadata about a CloudFront function.</p>", "smithy.api#httpPayload" => {}}))
    PublishFunctionResult[:http_payload] = :function_summary
    PublishFunctionResult[:http_payload_member] = PublishFunctionResult.member(:function_summary)
    PublishFunctionResult.type = Types::PublishFunctionResult
    QueryArgProfile.add_member(:query_arg, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QueryArg', traits: {"smithy.api#documentation" => "<p>Query argument for field-level encryption query argument-profile mapping.</p>", "smithy.api#required" => {}}))
    QueryArgProfile.add_member(:profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProfileId', traits: {"smithy.api#documentation" => "<p>ID of profile to use for field-level encryption query argument-profile mapping</p>", "smithy.api#required" => {}}))
    QueryArgProfile.type = Types::QueryArgProfile
    QueryArgProfileConfig.add_member(:forward_when_query_arg_profile_is_unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ForwardWhenQueryArgProfileIsUnknown', traits: {"smithy.api#documentation" => "<p>Flag to set if you want a request to be forwarded to the origin even if the profile specified by the field-level encryption query argument, fle-profile, is unknown.</p>", "smithy.api#required" => {}}))
    QueryArgProfileConfig.add_member(:query_arg_profiles, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryArgProfiles, location_name: 'QueryArgProfiles', traits: {"smithy.api#documentation" => "<p>Profiles specified for query argument-profile mapping for field-level encryption.</p>"}))
    QueryArgProfileConfig.type = Types::QueryArgProfileConfig
    QueryArgProfileEmpty.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    QueryArgProfileEmpty.type = Types::QueryArgProfileEmpty
    QueryArgProfileList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QueryArgProfile, traits: {"smithy.api#xmlName" => "QueryArgProfile"})
    QueryArgProfiles.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>Number of profiles for query argument-profile mapping for field-level encryption.</p>", "smithy.api#required" => {}}))
    QueryArgProfiles.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryArgProfileList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>Number of items for query argument-profile mapping for field-level encryption.</p>"}))
    QueryArgProfiles.type = Types::QueryArgProfiles
    QueryStringCacheKeys.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of <code>whitelisted</code> query string parameters for a cache behavior.</p>", "smithy.api#required" => {}}))
    QueryStringCacheKeys.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStringCacheKeysList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>A list that contains the query string parameters that you want CloudFront to use as a basis for caching for a cache behavior. If <code>Quantity</code> is 0, you can omit <code>Items</code>.</p>"}))
    QueryStringCacheKeys.type = Types::QueryStringCacheKeys
    QueryStringCacheKeysList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "Name"})
    QueryStringNames.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of query string names in the <code>Items</code> list.</p>", "smithy.api#required" => {}}))
    QueryStringNames.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStringNamesList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>A list of query string names.</p>"}))
    QueryStringNames.type = Types::QueryStringNames
    QueryStringNamesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "Name"})
    RealtimeLogConfig.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of this real-time log configuration.</p>", "smithy.api#required" => {}}))
    RealtimeLogConfig.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The unique name of this real-time log configuration.</p>", "smithy.api#required" => {}}))
    RealtimeLogConfig.add_member(:sampling_rate, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'SamplingRate', traits: {"smithy.api#documentation" => "<p>The sampling rate for this real-time log configuration. The sampling rate determines the percentage of viewer requests that are represented in the real-time log data. The sampling rate is an integer between 1 and 100, inclusive.</p>", "smithy.api#required" => {}}))
    RealtimeLogConfig.add_member(:end_points, Smithy::Schema::Shapes::ShapeRef.new(shape: EndPointList, location_name: 'EndPoints', traits: {"smithy.api#documentation" => "<p>Contains information about the Amazon Kinesis data stream where you are sending real-time log data for this real-time log configuration.</p>", "smithy.api#required" => {}}))
    RealtimeLogConfig.add_member(:fields, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldList, location_name: 'Fields', traits: {"smithy.api#documentation" => "<p>A list of fields that are included in each real-time log record. In an API response, the fields are provided in the same order in which they are sent to the Amazon Kinesis data stream.</p> <p>For more information about fields, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-fields\">Real-time log configuration fields</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    RealtimeLogConfig.type = Types::RealtimeLogConfig
    RealtimeLogConfigAlreadyExists.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    RealtimeLogConfigAlreadyExists.type = Types::RealtimeLogConfigAlreadyExists
    RealtimeLogConfigInUse.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    RealtimeLogConfigInUse.type = Types::RealtimeLogConfigInUse
    RealtimeLogConfigList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RealtimeLogConfig)
    RealtimeLogConfigOwnerMismatch.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    RealtimeLogConfigOwnerMismatch.type = Types::RealtimeLogConfigOwnerMismatch
    RealtimeLogConfigs.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of real-time log configurations requested.</p>", "smithy.api#required" => {}}))
    RealtimeLogConfigs.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: RealtimeLogConfigList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>Contains the list of real-time log configurations.</p>"}))
    RealtimeLogConfigs.add_member(:is_truncated, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsTruncated', traits: {"smithy.api#documentation" => "<p>A flag that indicates whether there are more real-time log configurations than are contained in this list.</p>", "smithy.api#required" => {}}))
    RealtimeLogConfigs.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>This parameter indicates where this list of real-time log configurations begins. This list includes real-time log configurations that occur after the marker.</p>", "smithy.api#required" => {}}))
    RealtimeLogConfigs.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If there are more items in the list than are in this response, this element is present. It contains the value that you should use in the <code>Marker</code> field of a subsequent request to continue listing real-time log configurations where you left off. </p>"}))
    RealtimeLogConfigs.type = Types::RealtimeLogConfigs
    RealtimeMetricsSubscriptionConfig.add_member(:realtime_metrics_subscription_status, Smithy::Schema::Shapes::ShapeRef.new(shape: RealtimeMetricsSubscriptionStatus, location_name: 'RealtimeMetricsSubscriptionStatus', traits: {"smithy.api#documentation" => "<p>A flag that indicates whether additional CloudWatch metrics are enabled for a given CloudFront distribution.</p>", "smithy.api#required" => {}}))
    RealtimeMetricsSubscriptionConfig.type = Types::RealtimeMetricsSubscriptionConfig
    RealtimeMetricsSubscriptionStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Enabled', traits: {"smithy.api#enumValue" => "Enabled"}))
    RealtimeMetricsSubscriptionStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Disabled', traits: {"smithy.api#enumValue" => "Disabled"}))
    ReferrerPolicyList.add_member(:no_referrer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'no_referrer', traits: {"smithy.api#enumValue" => "no-referrer"}))
    ReferrerPolicyList.add_member(:no_referrer_when_downgrade, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'no_referrer_when_downgrade', traits: {"smithy.api#enumValue" => "no-referrer-when-downgrade"}))
    ReferrerPolicyList.add_member(:origin, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'origin', traits: {"smithy.api#enumValue" => "origin"}))
    ReferrerPolicyList.add_member(:origin_when_cross_origin, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'origin_when_cross_origin', traits: {"smithy.api#enumValue" => "origin-when-cross-origin"}))
    ReferrerPolicyList.add_member(:same_origin, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'same_origin', traits: {"smithy.api#enumValue" => "same-origin"}))
    ReferrerPolicyList.add_member(:strict_origin, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'strict_origin', traits: {"smithy.api#enumValue" => "strict-origin"}))
    ReferrerPolicyList.add_member(:strict_origin_when_cross_origin, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'strict_origin_when_cross_origin', traits: {"smithy.api#enumValue" => "strict-origin-when-cross-origin"}))
    ReferrerPolicyList.add_member(:unsafe_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'unsafe_url', traits: {"smithy.api#enumValue" => "unsafe-url"}))
    ResourceInUse.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ResourceInUse.type = Types::ResourceInUse
    ResourceNotDisabled.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ResourceNotDisabled.type = Types::ResourceNotDisabled
    ResponseHeadersPolicy.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier for the response headers policy.</p>", "smithy.api#required" => {}}))
    ResponseHeadersPolicy.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The date and time when the response headers policy was last modified.</p>", "smithy.api#required" => {}}))
    ResponseHeadersPolicy.add_member(:response_headers_policy_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseHeadersPolicyConfig, location_name: 'ResponseHeadersPolicyConfig', traits: {"smithy.api#documentation" => "<p>A response headers policy configuration.</p>", "smithy.api#required" => {}}))
    ResponseHeadersPolicy.type = Types::ResponseHeadersPolicy
    ResponseHeadersPolicyAccessControlAllowHeaders.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of HTTP header names in the list.</p>", "smithy.api#required" => {}}))
    ResponseHeadersPolicyAccessControlAllowHeaders.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessControlAllowHeadersList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>The list of HTTP header names. You can specify <code>*</code> to allow all headers.</p>", "smithy.api#required" => {}}))
    ResponseHeadersPolicyAccessControlAllowHeaders.type = Types::ResponseHeadersPolicyAccessControlAllowHeaders
    ResponseHeadersPolicyAccessControlAllowMethods.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of HTTP methods in the list.</p>", "smithy.api#required" => {}}))
    ResponseHeadersPolicyAccessControlAllowMethods.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessControlAllowMethodsList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>The list of HTTP methods. Valid values are:</p> <ul> <li> <p> <code>GET</code> </p> </li> <li> <p> <code>DELETE</code> </p> </li> <li> <p> <code>HEAD</code> </p> </li> <li> <p> <code>OPTIONS</code> </p> </li> <li> <p> <code>PATCH</code> </p> </li> <li> <p> <code>POST</code> </p> </li> <li> <p> <code>PUT</code> </p> </li> <li> <p> <code>ALL</code> </p> </li> </ul> <p> <code>ALL</code> is a special value that includes all of the listed HTTP methods.</p>", "smithy.api#required" => {}}))
    ResponseHeadersPolicyAccessControlAllowMethods.type = Types::ResponseHeadersPolicyAccessControlAllowMethods
    ResponseHeadersPolicyAccessControlAllowMethodsValues.add_member(:get, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GET', traits: {"smithy.api#enumValue" => "GET"}))
    ResponseHeadersPolicyAccessControlAllowMethodsValues.add_member(:post, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POST', traits: {"smithy.api#enumValue" => "POST"}))
    ResponseHeadersPolicyAccessControlAllowMethodsValues.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPTIONS', traits: {"smithy.api#enumValue" => "OPTIONS"}))
    ResponseHeadersPolicyAccessControlAllowMethodsValues.add_member(:put, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUT', traits: {"smithy.api#enumValue" => "PUT"}))
    ResponseHeadersPolicyAccessControlAllowMethodsValues.add_member(:delete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE', traits: {"smithy.api#enumValue" => "DELETE"}))
    ResponseHeadersPolicyAccessControlAllowMethodsValues.add_member(:patch, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PATCH', traits: {"smithy.api#enumValue" => "PATCH"}))
    ResponseHeadersPolicyAccessControlAllowMethodsValues.add_member(:head, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HEAD', traits: {"smithy.api#enumValue" => "HEAD"}))
    ResponseHeadersPolicyAccessControlAllowMethodsValues.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    ResponseHeadersPolicyAccessControlAllowOrigins.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of origins in the list.</p>", "smithy.api#required" => {}}))
    ResponseHeadersPolicyAccessControlAllowOrigins.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessControlAllowOriginsList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>The list of origins (domain names). You can specify <code>*</code> to allow all origins.</p>", "smithy.api#required" => {}}))
    ResponseHeadersPolicyAccessControlAllowOrigins.type = Types::ResponseHeadersPolicyAccessControlAllowOrigins
    ResponseHeadersPolicyAccessControlExposeHeaders.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of HTTP headers in the list.</p>", "smithy.api#required" => {}}))
    ResponseHeadersPolicyAccessControlExposeHeaders.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessControlExposeHeadersList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>The list of HTTP headers. You can specify <code>*</code> to expose all headers.</p>"}))
    ResponseHeadersPolicyAccessControlExposeHeaders.type = Types::ResponseHeadersPolicyAccessControlExposeHeaders
    ResponseHeadersPolicyAlreadyExists.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ResponseHeadersPolicyAlreadyExists.type = Types::ResponseHeadersPolicyAlreadyExists
    ResponseHeadersPolicyConfig.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Comment', traits: {"smithy.api#documentation" => "<p>A comment to describe the response headers policy.</p> <p>The comment cannot be longer than 128 characters.</p>"}))
    ResponseHeadersPolicyConfig.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A name to identify the response headers policy.</p> <p>The name must be unique for response headers policies in this Amazon Web Services account.</p>", "smithy.api#required" => {}}))
    ResponseHeadersPolicyConfig.add_member(:cors_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseHeadersPolicyCorsConfig, location_name: 'CorsConfig', traits: {"smithy.api#documentation" => "<p>A configuration for a set of HTTP response headers that are used for cross-origin resource sharing (CORS).</p>"}))
    ResponseHeadersPolicyConfig.add_member(:security_headers_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseHeadersPolicySecurityHeadersConfig, location_name: 'SecurityHeadersConfig', traits: {"smithy.api#documentation" => "<p>A configuration for a set of security-related HTTP response headers.</p>"}))
    ResponseHeadersPolicyConfig.add_member(:server_timing_headers_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseHeadersPolicyServerTimingHeadersConfig, location_name: 'ServerTimingHeadersConfig', traits: {"smithy.api#documentation" => "<p>A configuration for enabling the <code>Server-Timing</code> header in HTTP responses sent from CloudFront.</p>"}))
    ResponseHeadersPolicyConfig.add_member(:custom_headers_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseHeadersPolicyCustomHeadersConfig, location_name: 'CustomHeadersConfig', traits: {"smithy.api#documentation" => "<p>A configuration for a set of custom HTTP response headers.</p>"}))
    ResponseHeadersPolicyConfig.add_member(:remove_headers_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseHeadersPolicyRemoveHeadersConfig, location_name: 'RemoveHeadersConfig', traits: {"smithy.api#documentation" => "<p>A configuration for a set of HTTP headers to remove from the HTTP response.</p>"}))
    ResponseHeadersPolicyConfig.type = Types::ResponseHeadersPolicyConfig
    ResponseHeadersPolicyContentSecurityPolicy.add_member(:override, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Override', traits: {"smithy.api#documentation" => "<p>A Boolean that determines whether CloudFront overrides the <code>Content-Security-Policy</code> HTTP response header received from the origin with the one specified in this response headers policy.</p>", "smithy.api#required" => {}}))
    ResponseHeadersPolicyContentSecurityPolicy.add_member(:content_security_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ContentSecurityPolicy', traits: {"smithy.api#documentation" => "<p>The policy directives and their values that CloudFront includes as values for the <code>Content-Security-Policy</code> HTTP response header.</p>", "smithy.api#required" => {}}))
    ResponseHeadersPolicyContentSecurityPolicy.type = Types::ResponseHeadersPolicyContentSecurityPolicy
    ResponseHeadersPolicyContentTypeOptions.add_member(:override, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Override', traits: {"smithy.api#documentation" => "<p>A Boolean that determines whether CloudFront overrides the <code>X-Content-Type-Options</code> HTTP response header received from the origin with the one specified in this response headers policy.</p>", "smithy.api#required" => {}}))
    ResponseHeadersPolicyContentTypeOptions.type = Types::ResponseHeadersPolicyContentTypeOptions
    ResponseHeadersPolicyCorsConfig.add_member(:access_control_allow_origins, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseHeadersPolicyAccessControlAllowOrigins, location_name: 'AccessControlAllowOrigins', traits: {"smithy.api#documentation" => "<p>A list of origins (domain names) that CloudFront can use as the value for the <code>Access-Control-Allow-Origin</code> HTTP response header.</p> <p>For more information about the <code>Access-Control-Allow-Origin</code> HTTP response header, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Origin\">Access-Control-Allow-Origin</a> in the MDN Web Docs.</p>", "smithy.api#required" => {}}))
    ResponseHeadersPolicyCorsConfig.add_member(:access_control_allow_headers, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseHeadersPolicyAccessControlAllowHeaders, location_name: 'AccessControlAllowHeaders', traits: {"smithy.api#documentation" => "<p>A list of HTTP header names that CloudFront includes as values for the <code>Access-Control-Allow-Headers</code> HTTP response header.</p> <p>For more information about the <code>Access-Control-Allow-Headers</code> HTTP response header, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Headers\">Access-Control-Allow-Headers</a> in the MDN Web Docs.</p>", "smithy.api#required" => {}}))
    ResponseHeadersPolicyCorsConfig.add_member(:access_control_allow_methods, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseHeadersPolicyAccessControlAllowMethods, location_name: 'AccessControlAllowMethods', traits: {"smithy.api#documentation" => "<p>A list of HTTP methods that CloudFront includes as values for the <code>Access-Control-Allow-Methods</code> HTTP response header.</p> <p>For more information about the <code>Access-Control-Allow-Methods</code> HTTP response header, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Methods\">Access-Control-Allow-Methods</a> in the MDN Web Docs.</p>", "smithy.api#required" => {}}))
    ResponseHeadersPolicyCorsConfig.add_member(:access_control_allow_credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AccessControlAllowCredentials', traits: {"smithy.api#documentation" => "<p>A Boolean that CloudFront uses as the value for the <code>Access-Control-Allow-Credentials</code> HTTP response header.</p> <p>For more information about the <code>Access-Control-Allow-Credentials</code> HTTP response header, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Credentials\">Access-Control-Allow-Credentials</a> in the MDN Web Docs.</p>", "smithy.api#required" => {}}))
    ResponseHeadersPolicyCorsConfig.add_member(:access_control_expose_headers, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseHeadersPolicyAccessControlExposeHeaders, location_name: 'AccessControlExposeHeaders', traits: {"smithy.api#documentation" => "<p>A list of HTTP headers that CloudFront includes as values for the <code>Access-Control-Expose-Headers</code> HTTP response header.</p> <p>For more information about the <code>Access-Control-Expose-Headers</code> HTTP response header, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Expose-Headers\">Access-Control-Expose-Headers</a> in the MDN Web Docs.</p>"}))
    ResponseHeadersPolicyCorsConfig.add_member(:access_control_max_age_sec, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'AccessControlMaxAgeSec', traits: {"smithy.api#documentation" => "<p>A number that CloudFront uses as the value for the <code>Access-Control-Max-Age</code> HTTP response header.</p> <p>For more information about the <code>Access-Control-Max-Age</code> HTTP response header, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Max-Age\">Access-Control-Max-Age</a> in the MDN Web Docs.</p>"}))
    ResponseHeadersPolicyCorsConfig.add_member(:origin_override, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'OriginOverride', traits: {"smithy.api#documentation" => "<p>A Boolean that determines whether CloudFront overrides HTTP response headers received from the origin with the ones specified in this response headers policy.</p>", "smithy.api#required" => {}}))
    ResponseHeadersPolicyCorsConfig.type = Types::ResponseHeadersPolicyCorsConfig
    ResponseHeadersPolicyCustomHeader.add_member(:header, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Header', traits: {"smithy.api#documentation" => "<p>The HTTP response header name.</p>", "smithy.api#required" => {}}))
    ResponseHeadersPolicyCustomHeader.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value for the HTTP response header.</p>", "smithy.api#required" => {}}))
    ResponseHeadersPolicyCustomHeader.add_member(:override, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Override', traits: {"smithy.api#documentation" => "<p>A Boolean that determines whether CloudFront overrides a response header with the same name received from the origin with the header specified here.</p>", "smithy.api#required" => {}}))
    ResponseHeadersPolicyCustomHeader.type = Types::ResponseHeadersPolicyCustomHeader
    ResponseHeadersPolicyCustomHeaderList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseHeadersPolicyCustomHeader, traits: {"smithy.api#xmlName" => "ResponseHeadersPolicyCustomHeader"})
    ResponseHeadersPolicyCustomHeadersConfig.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of HTTP response headers in the list.</p>", "smithy.api#required" => {}}))
    ResponseHeadersPolicyCustomHeadersConfig.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseHeadersPolicyCustomHeaderList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>The list of HTTP response headers and their values.</p>"}))
    ResponseHeadersPolicyCustomHeadersConfig.type = Types::ResponseHeadersPolicyCustomHeadersConfig
    ResponseHeadersPolicyFrameOptions.add_member(:override, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Override', traits: {"smithy.api#documentation" => "<p>A Boolean that determines whether CloudFront overrides the <code>X-Frame-Options</code> HTTP response header received from the origin with the one specified in this response headers policy.</p>", "smithy.api#required" => {}}))
    ResponseHeadersPolicyFrameOptions.add_member(:frame_option, Smithy::Schema::Shapes::ShapeRef.new(shape: FrameOptionsList, location_name: 'FrameOption', traits: {"smithy.api#documentation" => "<p>The value of the <code>X-Frame-Options</code> HTTP response header. Valid values are <code>DENY</code> and <code>SAMEORIGIN</code>.</p> <p>For more information about these values, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options\">X-Frame-Options</a> in the MDN Web Docs.</p>", "smithy.api#required" => {}}))
    ResponseHeadersPolicyFrameOptions.type = Types::ResponseHeadersPolicyFrameOptions
    ResponseHeadersPolicyInUse.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ResponseHeadersPolicyInUse.type = Types::ResponseHeadersPolicyInUse
    ResponseHeadersPolicyList.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If there are more items in the list than are in this response, this element is present. It contains the value that you should use in the <code>Marker</code> field of a subsequent request to continue listing response headers policies where you left off.</p>"}))
    ResponseHeadersPolicyList.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of response headers policies requested.</p>", "smithy.api#required" => {}}))
    ResponseHeadersPolicyList.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of response headers policies returned.</p>", "smithy.api#required" => {}}))
    ResponseHeadersPolicyList.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseHeadersPolicySummaryList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>The response headers policies in the list.</p>"}))
    ResponseHeadersPolicyList.type = Types::ResponseHeadersPolicyList
    ResponseHeadersPolicyReferrerPolicy.add_member(:override, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Override', traits: {"smithy.api#documentation" => "<p>A Boolean that determines whether CloudFront overrides the <code>Referrer-Policy</code> HTTP response header received from the origin with the one specified in this response headers policy.</p>", "smithy.api#required" => {}}))
    ResponseHeadersPolicyReferrerPolicy.add_member(:referrer_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferrerPolicyList, location_name: 'ReferrerPolicy', traits: {"smithy.api#documentation" => "<p>The value of the <code>Referrer-Policy</code> HTTP response header. Valid values are:</p> <ul> <li> <p> <code>no-referrer</code> </p> </li> <li> <p> <code>no-referrer-when-downgrade</code> </p> </li> <li> <p> <code>origin</code> </p> </li> <li> <p> <code>origin-when-cross-origin</code> </p> </li> <li> <p> <code>same-origin</code> </p> </li> <li> <p> <code>strict-origin</code> </p> </li> <li> <p> <code>strict-origin-when-cross-origin</code> </p> </li> <li> <p> <code>unsafe-url</code> </p> </li> </ul> <p>For more information about these values, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Referrer-Policy\">Referrer-Policy</a> in the MDN Web Docs.</p>", "smithy.api#required" => {}}))
    ResponseHeadersPolicyReferrerPolicy.type = Types::ResponseHeadersPolicyReferrerPolicy
    ResponseHeadersPolicyRemoveHeader.add_member(:header, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Header', traits: {"smithy.api#documentation" => "<p>The HTTP header name.</p>", "smithy.api#required" => {}}))
    ResponseHeadersPolicyRemoveHeader.type = Types::ResponseHeadersPolicyRemoveHeader
    ResponseHeadersPolicyRemoveHeaderList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseHeadersPolicyRemoveHeader, traits: {"smithy.api#xmlName" => "ResponseHeadersPolicyRemoveHeader"})
    ResponseHeadersPolicyRemoveHeadersConfig.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of HTTP header names in the list.</p>", "smithy.api#required" => {}}))
    ResponseHeadersPolicyRemoveHeadersConfig.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseHeadersPolicyRemoveHeaderList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>The list of HTTP header names.</p>"}))
    ResponseHeadersPolicyRemoveHeadersConfig.type = Types::ResponseHeadersPolicyRemoveHeadersConfig
    ResponseHeadersPolicySecurityHeadersConfig.add_member(:xss_protection, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseHeadersPolicyXSSProtection, location_name: 'XSSProtection', traits: {"smithy.api#documentation" => "<p>Determines whether CloudFront includes the <code>X-XSS-Protection</code> HTTP response header and the header's value.</p> <p>For more information about the <code>X-XSS-Protection</code> HTTP response header, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection\">X-XSS-Protection</a> in the MDN Web Docs.</p>"}))
    ResponseHeadersPolicySecurityHeadersConfig.add_member(:frame_options, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseHeadersPolicyFrameOptions, location_name: 'FrameOptions', traits: {"smithy.api#documentation" => "<p>Determines whether CloudFront includes the <code>X-Frame-Options</code> HTTP response header and the header's value.</p> <p>For more information about the <code>X-Frame-Options</code> HTTP response header, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options\">X-Frame-Options</a> in the MDN Web Docs.</p>"}))
    ResponseHeadersPolicySecurityHeadersConfig.add_member(:referrer_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseHeadersPolicyReferrerPolicy, location_name: 'ReferrerPolicy', traits: {"smithy.api#documentation" => "<p>Determines whether CloudFront includes the <code>Referrer-Policy</code> HTTP response header and the header's value.</p> <p>For more information about the <code>Referrer-Policy</code> HTTP response header, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Referrer-Policy\">Referrer-Policy</a> in the MDN Web Docs.</p>"}))
    ResponseHeadersPolicySecurityHeadersConfig.add_member(:content_security_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseHeadersPolicyContentSecurityPolicy, location_name: 'ContentSecurityPolicy', traits: {"smithy.api#documentation" => "<p>The policy directives and their values that CloudFront includes as values for the <code>Content-Security-Policy</code> HTTP response header.</p> <p>For more information about the <code>Content-Security-Policy</code> HTTP response header, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy\">Content-Security-Policy</a> in the MDN Web Docs.</p>"}))
    ResponseHeadersPolicySecurityHeadersConfig.add_member(:content_type_options, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseHeadersPolicyContentTypeOptions, location_name: 'ContentTypeOptions', traits: {"smithy.api#documentation" => "<p>Determines whether CloudFront includes the <code>X-Content-Type-Options</code> HTTP response header with its value set to <code>nosniff</code>.</p> <p>For more information about the <code>X-Content-Type-Options</code> HTTP response header, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Content-Type-Options\">X-Content-Type-Options</a> in the MDN Web Docs.</p>"}))
    ResponseHeadersPolicySecurityHeadersConfig.add_member(:strict_transport_security, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseHeadersPolicyStrictTransportSecurity, location_name: 'StrictTransportSecurity', traits: {"smithy.api#documentation" => "<p>Determines whether CloudFront includes the <code>Strict-Transport-Security</code> HTTP response header and the header's value.</p> <p>For more information about the <code>Strict-Transport-Security</code> HTTP response header, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/understanding-response-headers-policies.html#understanding-response-headers-policies-security\">Security headers</a> in the <i>Amazon CloudFront Developer Guide</i> and <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Strict-Transport-Security\">Strict-Transport-Security</a> in the MDN Web Docs.</p>"}))
    ResponseHeadersPolicySecurityHeadersConfig.type = Types::ResponseHeadersPolicySecurityHeadersConfig
    ResponseHeadersPolicyServerTimingHeadersConfig.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>A Boolean that determines whether CloudFront adds the <code>Server-Timing</code> header to HTTP responses that it sends in response to requests that match a cache behavior that's associated with this response headers policy.</p>", "smithy.api#required" => {}}))
    ResponseHeadersPolicyServerTimingHeadersConfig.add_member(:sampling_rate, Smithy::Schema::Shapes::ShapeRef.new(shape: SamplingRate, location_name: 'SamplingRate', traits: {"smithy.api#documentation" => "<p>A number 0–100 (inclusive) that specifies the percentage of responses that you want CloudFront to add the <code>Server-Timing</code> header to. When you set the sampling rate to 100, CloudFront adds the <code>Server-Timing</code> header to the HTTP response for every request that matches the cache behavior that this response headers policy is attached to. When you set it to 50, CloudFront adds the header to 50% of the responses for requests that match the cache behavior. You can set the sampling rate to any number 0–100 with up to four decimal places.</p>"}))
    ResponseHeadersPolicyServerTimingHeadersConfig.type = Types::ResponseHeadersPolicyServerTimingHeadersConfig
    ResponseHeadersPolicyStrictTransportSecurity.add_member(:override, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Override', traits: {"smithy.api#documentation" => "<p>A Boolean that determines whether CloudFront overrides the <code>Strict-Transport-Security</code> HTTP response header received from the origin with the one specified in this response headers policy.</p>", "smithy.api#required" => {}}))
    ResponseHeadersPolicyStrictTransportSecurity.add_member(:include_subdomains, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IncludeSubdomains', traits: {"smithy.api#documentation" => "<p>A Boolean that determines whether CloudFront includes the <code>includeSubDomains</code> directive in the <code>Strict-Transport-Security</code> HTTP response header.</p>"}))
    ResponseHeadersPolicyStrictTransportSecurity.add_member(:preload, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Preload', traits: {"smithy.api#documentation" => "<p>A Boolean that determines whether CloudFront includes the <code>preload</code> directive in the <code>Strict-Transport-Security</code> HTTP response header.</p>"}))
    ResponseHeadersPolicyStrictTransportSecurity.add_member(:access_control_max_age_sec, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'AccessControlMaxAgeSec', traits: {"smithy.api#documentation" => "<p>A number that CloudFront uses as the value for the <code>max-age</code> directive in the <code>Strict-Transport-Security</code> HTTP response header.</p>", "smithy.api#required" => {}}))
    ResponseHeadersPolicyStrictTransportSecurity.type = Types::ResponseHeadersPolicyStrictTransportSecurity
    ResponseHeadersPolicySummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseHeadersPolicyType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of response headers policy, either <code>managed</code> (created by Amazon Web Services) or <code>custom</code> (created in this Amazon Web Services account).</p>", "smithy.api#required" => {}}))
    ResponseHeadersPolicySummary.add_member(:response_headers_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseHeadersPolicy, location_name: 'ResponseHeadersPolicy', traits: {"smithy.api#documentation" => "<p>The response headers policy.</p>", "smithy.api#required" => {}}))
    ResponseHeadersPolicySummary.type = Types::ResponseHeadersPolicySummary
    ResponseHeadersPolicySummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseHeadersPolicySummary, traits: {"smithy.api#xmlName" => "ResponseHeadersPolicySummary"})
    ResponseHeadersPolicyType.add_member(:managed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'managed', traits: {"smithy.api#enumValue" => "managed"}))
    ResponseHeadersPolicyType.add_member(:custom, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'custom', traits: {"smithy.api#enumValue" => "custom"}))
    ResponseHeadersPolicyXSSProtection.add_member(:override, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Override', traits: {"smithy.api#documentation" => "<p>A Boolean that determines whether CloudFront overrides the <code>X-XSS-Protection</code> HTTP response header received from the origin with the one specified in this response headers policy.</p>", "smithy.api#required" => {}}))
    ResponseHeadersPolicyXSSProtection.add_member(:protection, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Protection', traits: {"smithy.api#documentation" => "<p>A Boolean that determines the value of the <code>X-XSS-Protection</code> HTTP response header. When this setting is <code>true</code>, the value of the <code>X-XSS-Protection</code> header is <code>1</code>. When this setting is <code>false</code>, the value of the <code>X-XSS-Protection</code> header is <code>0</code>.</p> <p>For more information about these settings, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection\">X-XSS-Protection</a> in the MDN Web Docs.</p>", "smithy.api#required" => {}}))
    ResponseHeadersPolicyXSSProtection.add_member(:mode_block, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ModeBlock', traits: {"smithy.api#documentation" => "<p>A Boolean that determines whether CloudFront includes the <code>mode=block</code> directive in the <code>X-XSS-Protection</code> header.</p> <p>For more information about this directive, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection\">X-XSS-Protection</a> in the MDN Web Docs.</p>"}))
    ResponseHeadersPolicyXSSProtection.add_member(:report_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReportUri', traits: {"smithy.api#documentation" => "<p>A reporting URI, which CloudFront uses as the value of the <code>report</code> directive in the <code>X-XSS-Protection</code> header.</p> <p>You cannot specify a <code>ReportUri</code> when <code>ModeBlock</code> is <code>true</code>.</p> <p>For more information about using a reporting URL, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection\">X-XSS-Protection</a> in the MDN Web Docs.</p>"}))
    ResponseHeadersPolicyXSSProtection.type = Types::ResponseHeadersPolicyXSSProtection
    Restrictions.add_member(:geo_restriction, Smithy::Schema::Shapes::ShapeRef.new(shape: GeoRestriction, location_name: 'GeoRestriction', traits: {"smithy.api#documentation" => "<p>A complex type that controls the countries in which your content is distributed. CloudFront determines the location of your users using <code>MaxMind</code> GeoIP databases.</p>", "smithy.api#required" => {}}))
    Restrictions.type = Types::Restrictions
    S3Origin.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The DNS name of the Amazon S3 origin.</p>", "smithy.api#required" => {}}))
    S3Origin.add_member(:origin_access_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OriginAccessIdentity', traits: {"smithy.api#documentation" => "<p>The CloudFront origin access identity to associate with the distribution. Use an origin access identity to configure the distribution so that end users can only access objects in an Amazon S3 bucket through CloudFront.</p> <p>If you want end users to be able to access objects using either the CloudFront URL or the Amazon S3 URL, specify an empty <code>OriginAccessIdentity</code> element.</p> <p>To delete the origin access identity from an existing distribution, update the distribution configuration and include an empty <code>OriginAccessIdentity</code> element.</p> <p>To replace the origin access identity, update the distribution configuration and specify the new origin access identity.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html\">Using an Origin Access Identity to Restrict Access to Your Amazon S3 Content</a> in the <i> Amazon CloudFront Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    S3Origin.type = Types::S3Origin
    S3OriginConfig.add_member(:origin_access_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OriginAccessIdentity', traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => "", "smithy.api#documentation" => "<note> <p>If you're using origin access control (OAC) instead of origin access identity, specify an empty <code>OriginAccessIdentity</code> element. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-origin.html\">Restricting access to an Amazon Web Services</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note> <p>The CloudFront origin access identity to associate with the origin. Use an origin access identity to configure the origin so that viewers can <i>only</i> access objects in an Amazon S3 bucket through CloudFront. The format of the value is:</p> <p> <code>origin-access-identity/cloudfront/ID-of-origin-access-identity</code> </p> <p>The <code> <i>ID-of-origin-access-identity</i> </code> is the value that CloudFront returned in the <code>ID</code> element when you created the origin access identity.</p> <p>If you want viewers to be able to access objects using either the CloudFront URL or the Amazon S3 URL, specify an empty <code>OriginAccessIdentity</code> element.</p> <p>To delete the origin access identity from an existing distribution, update the distribution configuration and include an empty <code>OriginAccessIdentity</code> element.</p> <p>To replace the origin access identity, update the distribution configuration and specify the new origin access identity.</p> <p>For more information about the origin access identity, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    S3OriginConfig.add_member(:origin_read_timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'OriginReadTimeout', traits: {"smithy.api#documentation" => "<p>Specifies how long, in seconds, CloudFront waits for a response from the origin. This is also known as the <i>origin response timeout</i>. The minimum timeout is 1 second, the maximum is 120 seconds, and the default (if you don't specify otherwise) is 30 seconds.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/DownloadDistValuesOrigin.html#DownloadDistValuesOriginResponseTimeout\">Response timeout</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"}))
    S3OriginConfig.type = Types::S3OriginConfig
    SSLSupportMethod.add_member(:sni_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'sni_only', traits: {"smithy.api#enumValue" => "sni-only"}))
    SSLSupportMethod.add_member(:vip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'vip', traits: {"smithy.api#enumValue" => "vip"}))
    SSLSupportMethod.add_member(:static_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'static_ip', traits: {"smithy.api#enumValue" => "static-ip"}))
    SessionStickinessConfig.add_member(:idle_ttl, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'IdleTTL', traits: {"smithy.api#documentation" => "<p>The amount of time after which you want sessions to cease if no requests are received. Allowed values are 300–3600 seconds (5–60 minutes).</p> <p>The value must be less than or equal to <code>MaximumTTL</code>.</p>", "smithy.api#required" => {}}))
    SessionStickinessConfig.add_member(:maximum_ttl, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaximumTTL', traits: {"smithy.api#documentation" => "<p>The maximum amount of time to consider requests from the viewer as being part of the same session. Allowed values are 300–3600 seconds (5–60 minutes).</p> <p>The value must be greater than or equal to <code>IdleTTL</code>.</p>", "smithy.api#required" => {}}))
    SessionStickinessConfig.type = Types::SessionStickinessConfig
    Signer.add_member(:aws_account_number, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AwsAccountNumber', traits: {"smithy.api#documentation" => "<p>An Amazon Web Services account number that contains active CloudFront key pairs that CloudFront can use to verify the signatures of signed URLs and signed cookies. If the Amazon Web Services account that owns the key pairs is the same account that owns the CloudFront distribution, the value of this field is <code>self</code>.</p>"}))
    Signer.add_member(:key_pair_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyPairIds, location_name: 'KeyPairIds', traits: {"smithy.api#documentation" => "<p>A list of CloudFront key pair identifiers.</p>"}))
    Signer.type = Types::Signer
    SignerList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Signer, traits: {"smithy.api#xmlName" => "Signer"})
    SslProtocol.add_member(:ss_lv3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSLv3', traits: {"smithy.api#enumValue" => "SSLv3"}))
    SslProtocol.add_member(:tl_sv1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TLSv1', traits: {"smithy.api#enumValue" => "TLSv1"}))
    SslProtocol.add_member(:tl_sv1_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TLSv1_1', traits: {"smithy.api#enumValue" => "TLSv1.1"}))
    SslProtocol.add_member(:tl_sv1_2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TLSv1_2', traits: {"smithy.api#enumValue" => "TLSv1.2"}))
    SslProtocolsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SslProtocol, traits: {"smithy.api#xmlName" => "SslProtocol"})
    StagingDistributionDnsNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "DnsName"})
    StagingDistributionDnsNames.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of CloudFront domain names in your staging distribution.</p>", "smithy.api#required" => {}}))
    StagingDistributionDnsNames.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: StagingDistributionDnsNameList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>The CloudFront domain name of the staging distribution.</p>"}))
    StagingDistributionDnsNames.type = Types::StagingDistributionDnsNames
    StagingDistributionInUse.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    StagingDistributionInUse.type = Types::StagingDistributionInUse
    StatusCodeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, traits: {"smithy.api#xmlName" => "StatusCode"})
    StatusCodes.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of status codes.</p>", "smithy.api#required" => {}}))
    StatusCodes.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusCodeList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>The items (status codes) for an origin group.</p>", "smithy.api#required" => {}}))
    StatusCodes.type = Types::StatusCodes
    StreamingDistribution.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier for the RTMP distribution. For example: <code>EGTXBD79EXAMPLE</code>.</p>", "smithy.api#required" => {}}))
    StreamingDistribution.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ARN', traits: {"smithy.api#documentation" => "<p>The ARN (Amazon Resource Name) for the distribution. For example: <code>arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5</code>, where <code>123456789012</code> is your Amazon Web Services account ID.</p>", "smithy.api#required" => {}}))
    StreamingDistribution.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the RTMP distribution. When the status is <code>Deployed</code>, the distribution's information is propagated to all CloudFront edge locations.</p>", "smithy.api#required" => {}}))
    StreamingDistribution.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The date and time that the distribution was last modified.</p>"}))
    StreamingDistribution.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The domain name that corresponds to the streaming distribution, for example, <code>s5c39gqb8ow64r.cloudfront.net</code>.</p>", "smithy.api#required" => {}}))
    StreamingDistribution.add_member(:active_trusted_signers, Smithy::Schema::Shapes::ShapeRef.new(shape: ActiveTrustedSigners, location_name: 'ActiveTrustedSigners', traits: {"smithy.api#documentation" => "<p>A complex type that lists the Amazon Web Services accounts, if any, that you included in the <code>TrustedSigners</code> complex type for this distribution. These are the accounts that you want to allow to create signed URLs for private content.</p> <p>The <code>Signer</code> complex type lists the Amazon Web Services account number of the trusted signer or <code>self</code> if the signer is the Amazon Web Services account that created the distribution. The <code>Signer</code> element also includes the IDs of any active CloudFront key pairs that are associated with the trusted signer's Amazon Web Services account. If no <code>KeyPairId</code> element appears for a <code>Signer</code>, that signer can't create signed URLs.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    StreamingDistribution.add_member(:streaming_distribution_config, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamingDistributionConfig, location_name: 'StreamingDistributionConfig', traits: {"smithy.api#documentation" => "<p>The current configuration information for the RTMP distribution.</p>", "smithy.api#required" => {}}))
    StreamingDistribution.type = Types::StreamingDistribution
    StreamingDistributionAlreadyExists.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    StreamingDistributionAlreadyExists.type = Types::StreamingDistributionAlreadyExists
    StreamingDistributionConfig.add_member(:caller_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CallerReference', traits: {"smithy.api#documentation" => "<p>A unique value (for example, a date-time stamp) that ensures that the request can't be replayed.</p> <p>If the value of <code>CallerReference</code> is new (regardless of the content of the <code>StreamingDistributionConfig</code> object), CloudFront creates a new distribution.</p> <p>If <code>CallerReference</code> is a value that you already sent in a previous request to create a distribution, CloudFront returns a <code>DistributionAlreadyExists</code> error.</p>", "smithy.api#required" => {}}))
    StreamingDistributionConfig.add_member(:s3_origin, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Origin, location_name: 'S3Origin', traits: {"smithy.api#documentation" => "<p>A complex type that contains information about the Amazon S3 bucket from which you want CloudFront to get your media files for distribution.</p>", "smithy.api#required" => {}}))
    StreamingDistributionConfig.add_member(:aliases, Smithy::Schema::Shapes::ShapeRef.new(shape: Aliases, location_name: 'Aliases', traits: {"smithy.api#documentation" => "<p>A complex type that contains information about CNAMEs (alternate domain names), if any, for this streaming distribution.</p>"}))
    StreamingDistributionConfig.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Comment', traits: {"smithy.api#documentation" => "<p>Any comments you want to include about the streaming distribution.</p>", "smithy.api#required" => {}}))
    StreamingDistributionConfig.add_member(:logging, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamingLoggingConfig, location_name: 'Logging', traits: {"smithy.api#documentation" => "<p>A complex type that controls whether access logs are written for the streaming distribution.</p>"}))
    StreamingDistributionConfig.add_member(:trusted_signers, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedSigners, location_name: 'TrustedSigners', traits: {"smithy.api#documentation" => "<p>A complex type that specifies any Amazon Web Services accounts that you want to permit to create signed URLs for private content. If you want the distribution to use signed URLs, include this element; if you want the distribution to use public URLs, remove this element. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    StreamingDistributionConfig.add_member(:price_class, Smithy::Schema::Shapes::ShapeRef.new(shape: PriceClass, location_name: 'PriceClass', traits: {"smithy.api#documentation" => "<p>A complex type that contains information about price class for this streaming distribution.</p>"}))
    StreamingDistributionConfig.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Whether the streaming distribution is enabled to accept user requests for content.</p>", "smithy.api#required" => {}}))
    StreamingDistributionConfig.type = Types::StreamingDistributionConfig
    StreamingDistributionConfigWithTags.add_member(:streaming_distribution_config, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamingDistributionConfig, location_name: 'StreamingDistributionConfig', traits: {"smithy.api#documentation" => "<p>A streaming distribution Configuration.</p>", "smithy.api#required" => {}}))
    StreamingDistributionConfigWithTags.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A complex type that contains zero or more <code>Tag</code> elements.</p>", "smithy.api#required" => {}}))
    StreamingDistributionConfigWithTags.type = Types::StreamingDistributionConfigWithTags
    StreamingDistributionList.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>The value you provided for the <code>Marker</code> request parameter.</p>", "smithy.api#required" => {}}))
    StreamingDistributionList.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value you can use for the <code>Marker</code> request parameter to continue listing your RTMP distributions where they left off.</p>"}))
    StreamingDistributionList.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The value you provided for the <code>MaxItems</code> request parameter.</p>", "smithy.api#required" => {}}))
    StreamingDistributionList.add_member(:is_truncated, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsTruncated', traits: {"smithy.api#documentation" => "<p>A flag that indicates whether more streaming distributions remain to be listed. If your results were truncated, you can make a follow-up pagination request using the <code>Marker</code> request parameter to retrieve more distributions in the list. </p>", "smithy.api#required" => {}}))
    StreamingDistributionList.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of streaming distributions that were created by the current Amazon Web Services account. </p>", "smithy.api#required" => {}}))
    StreamingDistributionList.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamingDistributionSummaryList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>A complex type that contains one <code>StreamingDistributionSummary</code> element for each distribution that was created by the current Amazon Web Services account.</p>"}))
    StreamingDistributionList.type = Types::StreamingDistributionList
    StreamingDistributionNotDisabled.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    StreamingDistributionNotDisabled.type = Types::StreamingDistributionNotDisabled
    StreamingDistributionSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier for the distribution, for example, <code>EDFDVBD632BHDS5</code>.</p>", "smithy.api#required" => {}}))
    StreamingDistributionSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ARN', traits: {"smithy.api#documentation" => "<p>The ARN (Amazon Resource Name) for the streaming distribution. For example: <code>arn:aws:cloudfront::123456789012:streaming-distribution/EDFDVBD632BHDS5</code>, where <code>123456789012</code> is your Amazon Web Services account ID.</p>", "smithy.api#required" => {}}))
    StreamingDistributionSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Indicates the current status of the distribution. When the status is <code>Deployed</code>, the distribution's information is fully propagated throughout the Amazon CloudFront system.</p>", "smithy.api#required" => {}}))
    StreamingDistributionSummary.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The date and time the distribution was last modified.</p>", "smithy.api#required" => {}}))
    StreamingDistributionSummary.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The domain name corresponding to the distribution, for example, <code>d111111abcdef8.cloudfront.net</code>.</p>", "smithy.api#required" => {}}))
    StreamingDistributionSummary.add_member(:s3_origin, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Origin, location_name: 'S3Origin', traits: {"smithy.api#documentation" => "<p>A complex type that contains information about the Amazon S3 bucket from which you want CloudFront to get your media files for distribution.</p>", "smithy.api#required" => {}}))
    StreamingDistributionSummary.add_member(:aliases, Smithy::Schema::Shapes::ShapeRef.new(shape: Aliases, location_name: 'Aliases', traits: {"smithy.api#documentation" => "<p>A complex type that contains information about CNAMEs (alternate domain names), if any, for this streaming distribution.</p>", "smithy.api#required" => {}}))
    StreamingDistributionSummary.add_member(:trusted_signers, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedSigners, location_name: 'TrustedSigners', traits: {"smithy.api#documentation" => "<p>A complex type that specifies the Amazon Web Services accounts, if any, that you want to allow to create signed URLs for private content. If you want to require signed URLs in requests for objects in the target origin that match the <code>PathPattern</code> for this cache behavior, specify <code>true</code> for <code>Enabled</code>, and specify the applicable values for <code>Quantity</code> and <code>Items</code>.If you don't want to require signed URLs in requests for objects that match <code>PathPattern</code>, specify <code>false</code> for <code>Enabled</code> and <code>0</code> for <code>Quantity</code>. Omit <code>Items</code>. To add, change, or remove one or more trusted signers, change <code>Enabled</code> to <code>true</code> (if it's currently <code>false</code>), change <code>Quantity</code> as applicable, and specify all of the trusted signers that you want to include in the updated distribution.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    StreamingDistributionSummary.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Comment', traits: {"smithy.api#documentation" => "<p>The comment originally specified when this distribution was created.</p>", "smithy.api#required" => {}}))
    StreamingDistributionSummary.add_member(:price_class, Smithy::Schema::Shapes::ShapeRef.new(shape: PriceClass, location_name: 'PriceClass', traits: {"smithy.api#documentation" => "<p>A complex type that contains information about price class for this streaming distribution.</p>", "smithy.api#required" => {}}))
    StreamingDistributionSummary.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Whether the distribution is enabled to accept end user requests for content.</p>", "smithy.api#required" => {}}))
    StreamingDistributionSummary.type = Types::StreamingDistributionSummary
    StreamingDistributionSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StreamingDistributionSummary, traits: {"smithy.api#xmlName" => "StreamingDistributionSummary"})
    StreamingLoggingConfig.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Specifies whether you want CloudFront to save access logs to an Amazon S3 bucket. If you don't want to enable logging when you create a streaming distribution or if you want to disable logging for an existing streaming distribution, specify <code>false</code> for <code>Enabled</code>, and specify <code>empty Bucket</code> and <code>Prefix</code> elements. If you specify <code>false</code> for <code>Enabled</code> but you specify values for <code>Bucket</code> and <code>Prefix</code>, the values are automatically deleted.</p>", "smithy.api#required" => {}}))
    StreamingLoggingConfig.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Bucket', traits: {"smithy.api#documentation" => "<p>The Amazon S3 bucket to store the access logs in, for example, <code>amzn-s3-demo-bucket.s3.amazonaws.com</code>.</p>", "smithy.api#required" => {}}))
    StreamingLoggingConfig.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Prefix', traits: {"smithy.api#documentation" => "<p>An optional string that you want CloudFront to prefix to the access log filenames for this streaming distribution, for example, <code>myprefix/</code>. If you want to enable logging, but you don't want to specify a prefix, you still must include an empty <code>Prefix</code> element in the <code>Logging</code> element.</p>", "smithy.api#required" => {}}))
    StreamingLoggingConfig.type = Types::StreamingLoggingConfig
    StringSchemaConfig.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: 'Comment', traits: {"smithy.api#documentation" => "<p>A comment to describe the parameter.</p>"}))
    StringSchemaConfig.add_member(:default_value, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterValue, location_name: 'DefaultValue', traits: {"smithy.api#documentation" => "<p>The default value of the parameter.</p>"}))
    StringSchemaConfig.add_member(:required, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Required', traits: {"smithy.api#documentation" => "<p>Whether the defined parameter is required.</p>", "smithy.api#required" => {}}))
    StringSchemaConfig.type = Types::StringSchemaConfig
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>A string that contains <code>Tag</code> key.</p> <p>The string length should be between 1 and 128 characters. Valid characters include <code>a-z</code>, <code>A-Z</code>, <code>0-9</code>, space, and the special characters <code>_ - . : / = + @</code>.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>A string that contains an optional <code>Tag</code> value.</p> <p>The string length should be between 0 and 256 characters. Valid characters include <code>a-z</code>, <code>A-Z</code>, <code>0-9</code>, space, and the special characters <code>_ - . : / = + @</code>.</p>"}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, traits: {"smithy.api#xmlName" => "Key"})
    TagKeys.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>A complex type that contains <code>Tag</code> key elements.</p>"}))
    TagKeys.type = Types::TagKeys
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag, traits: {"smithy.api#xmlName" => "Tag"})
    TagResourceRequest.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'Resource', traits: {"smithy.api#documentation" => "<p>An ARN of a CloudFront resource.</p>", "smithy.api#httpQuery" => "Resource", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A complex type that contains zero or more <code>Tag</code> elements.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "Tags"}))
    TagResourceRequest[:http_payload] = :tags
    TagResourceRequest[:http_payload_member] = TagResourceRequest.member(:tags)
    TagResourceRequest.type = Types::TagResourceRequest
    Tags.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>A complex type that contains <code>Tag</code> elements.</p>"}))
    Tags.type = Types::Tags
    TenantConfig.add_member(:parameter_definitions, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterDefinitions, location_name: 'ParameterDefinitions', traits: {"smithy.api#documentation" => "<p>The parameters that you specify for a distribution tenant.</p>"}))
    TenantConfig.type = Types::TenantConfig
    TestFunctionFailed.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TestFunctionFailed.type = Types::TestFunctionFailed
    TestFunctionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the function that you are testing.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TestFunctionRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The current version (<code>ETag</code> value) of the function that you are testing, which you can get using <code>DescribeFunction</code>.</p>", "smithy.api#httpHeader" => "If-Match", "smithy.api#required" => {}}))
    TestFunctionRequest.add_member(:stage, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionStage, location_name: 'Stage', traits: {"smithy.api#documentation" => "<p>The stage of the function that you are testing, either <code>DEVELOPMENT</code> or <code>LIVE</code>.</p>"}))
    TestFunctionRequest.add_member(:event_object, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionEventObject, location_name: 'EventObject', traits: {"smithy.api#documentation" => "<p>The event object to test the function with. For more information about the structure of the event object, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/managing-functions.html#test-function\">Testing functions</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    TestFunctionRequest.type = Types::TestFunctionRequest
    TestFunctionResult.add_member(:test_result, Smithy::Schema::Shapes::ShapeRef.new(shape: TestResult, location_name: 'TestResult', traits: {"smithy.api#documentation" => "<p>An object that represents the result of running the function with the provided event object.</p>", "smithy.api#httpPayload" => {}}))
    TestFunctionResult[:http_payload] = :test_result
    TestFunctionResult[:http_payload_member] = TestFunctionResult.member(:test_result)
    TestFunctionResult.type = Types::TestFunctionResult
    TestResult.add_member(:function_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionSummary, location_name: 'FunctionSummary', traits: {"smithy.api#documentation" => "<p>Contains configuration information and metadata about the CloudFront function that was tested.</p>"}))
    TestResult.add_member(:compute_utilization, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ComputeUtilization', traits: {"smithy.api#documentation" => "<p>The amount of time that the function took to run as a percentage of the maximum allowed time. For example, a compute utilization of 35 means that the function completed in 35% of the maximum allowed time.</p>"}))
    TestResult.add_member(:function_execution_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionExecutionLogList, location_name: 'FunctionExecutionLogs', traits: {"smithy.api#documentation" => "<p>Contains the log lines that the function wrote (if any) when running the test.</p>"}))
    TestResult.add_member(:function_error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: 'FunctionErrorMessage', traits: {"smithy.api#documentation" => "<p>If the result of testing the function was an error, this field contains the error message.</p>"}))
    TestResult.add_member(:function_output, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: 'FunctionOutput', traits: {"smithy.api#documentation" => "<p>The event object returned by the function. For more information about the structure of the event object, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/functions-event-structure.html\">Event object structure</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"}))
    TestResult.type = Types::TestResult
    TooLongCSPInResponseHeadersPolicy.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooLongCSPInResponseHeadersPolicy.type = Types::TooLongCSPInResponseHeadersPolicy
    TooManyCacheBehaviors.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyCacheBehaviors.type = Types::TooManyCacheBehaviors
    TooManyCachePolicies.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyCachePolicies.type = Types::TooManyCachePolicies
    TooManyCertificates.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyCertificates.type = Types::TooManyCertificates
    TooManyCloudFrontOriginAccessIdentities.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyCloudFrontOriginAccessIdentities.type = Types::TooManyCloudFrontOriginAccessIdentities
    TooManyContinuousDeploymentPolicies.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyContinuousDeploymentPolicies.type = Types::TooManyContinuousDeploymentPolicies
    TooManyCookieNamesInWhiteList.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyCookieNamesInWhiteList.type = Types::TooManyCookieNamesInWhiteList
    TooManyCookiesInCachePolicy.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyCookiesInCachePolicy.type = Types::TooManyCookiesInCachePolicy
    TooManyCookiesInOriginRequestPolicy.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyCookiesInOriginRequestPolicy.type = Types::TooManyCookiesInOriginRequestPolicy
    TooManyCustomHeadersInResponseHeadersPolicy.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyCustomHeadersInResponseHeadersPolicy.type = Types::TooManyCustomHeadersInResponseHeadersPolicy
    TooManyDistributionCNAMEs.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyDistributionCNAMEs.type = Types::TooManyDistributionCNAMEs
    TooManyDistributions.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyDistributions.type = Types::TooManyDistributions
    TooManyDistributionsAssociatedToCachePolicy.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyDistributionsAssociatedToCachePolicy.type = Types::TooManyDistributionsAssociatedToCachePolicy
    TooManyDistributionsAssociatedToFieldLevelEncryptionConfig.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyDistributionsAssociatedToFieldLevelEncryptionConfig.type = Types::TooManyDistributionsAssociatedToFieldLevelEncryptionConfig
    TooManyDistributionsAssociatedToKeyGroup.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyDistributionsAssociatedToKeyGroup.type = Types::TooManyDistributionsAssociatedToKeyGroup
    TooManyDistributionsAssociatedToOriginAccessControl.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyDistributionsAssociatedToOriginAccessControl.type = Types::TooManyDistributionsAssociatedToOriginAccessControl
    TooManyDistributionsAssociatedToOriginRequestPolicy.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyDistributionsAssociatedToOriginRequestPolicy.type = Types::TooManyDistributionsAssociatedToOriginRequestPolicy
    TooManyDistributionsAssociatedToResponseHeadersPolicy.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyDistributionsAssociatedToResponseHeadersPolicy.type = Types::TooManyDistributionsAssociatedToResponseHeadersPolicy
    TooManyDistributionsWithFunctionAssociations.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyDistributionsWithFunctionAssociations.type = Types::TooManyDistributionsWithFunctionAssociations
    TooManyDistributionsWithLambdaAssociations.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyDistributionsWithLambdaAssociations.type = Types::TooManyDistributionsWithLambdaAssociations
    TooManyDistributionsWithSingleFunctionARN.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyDistributionsWithSingleFunctionARN.type = Types::TooManyDistributionsWithSingleFunctionARN
    TooManyFieldLevelEncryptionConfigs.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyFieldLevelEncryptionConfigs.type = Types::TooManyFieldLevelEncryptionConfigs
    TooManyFieldLevelEncryptionContentTypeProfiles.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyFieldLevelEncryptionContentTypeProfiles.type = Types::TooManyFieldLevelEncryptionContentTypeProfiles
    TooManyFieldLevelEncryptionEncryptionEntities.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyFieldLevelEncryptionEncryptionEntities.type = Types::TooManyFieldLevelEncryptionEncryptionEntities
    TooManyFieldLevelEncryptionFieldPatterns.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyFieldLevelEncryptionFieldPatterns.type = Types::TooManyFieldLevelEncryptionFieldPatterns
    TooManyFieldLevelEncryptionProfiles.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyFieldLevelEncryptionProfiles.type = Types::TooManyFieldLevelEncryptionProfiles
    TooManyFieldLevelEncryptionQueryArgProfiles.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyFieldLevelEncryptionQueryArgProfiles.type = Types::TooManyFieldLevelEncryptionQueryArgProfiles
    TooManyFunctionAssociations.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyFunctionAssociations.type = Types::TooManyFunctionAssociations
    TooManyFunctions.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyFunctions.type = Types::TooManyFunctions
    TooManyHeadersInCachePolicy.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyHeadersInCachePolicy.type = Types::TooManyHeadersInCachePolicy
    TooManyHeadersInForwardedValues.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyHeadersInForwardedValues.type = Types::TooManyHeadersInForwardedValues
    TooManyHeadersInOriginRequestPolicy.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyHeadersInOriginRequestPolicy.type = Types::TooManyHeadersInOriginRequestPolicy
    TooManyInvalidationsInProgress.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyInvalidationsInProgress.type = Types::TooManyInvalidationsInProgress
    TooManyKeyGroups.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyKeyGroups.type = Types::TooManyKeyGroups
    TooManyKeyGroupsAssociatedToDistribution.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyKeyGroupsAssociatedToDistribution.type = Types::TooManyKeyGroupsAssociatedToDistribution
    TooManyLambdaFunctionAssociations.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyLambdaFunctionAssociations.type = Types::TooManyLambdaFunctionAssociations
    TooManyOriginAccessControls.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyOriginAccessControls.type = Types::TooManyOriginAccessControls
    TooManyOriginCustomHeaders.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyOriginCustomHeaders.type = Types::TooManyOriginCustomHeaders
    TooManyOriginGroupsPerDistribution.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyOriginGroupsPerDistribution.type = Types::TooManyOriginGroupsPerDistribution
    TooManyOriginRequestPolicies.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyOriginRequestPolicies.type = Types::TooManyOriginRequestPolicies
    TooManyOrigins.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyOrigins.type = Types::TooManyOrigins
    TooManyPublicKeys.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyPublicKeys.type = Types::TooManyPublicKeys
    TooManyPublicKeysInKeyGroup.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyPublicKeysInKeyGroup.type = Types::TooManyPublicKeysInKeyGroup
    TooManyQueryStringParameters.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyQueryStringParameters.type = Types::TooManyQueryStringParameters
    TooManyQueryStringsInCachePolicy.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyQueryStringsInCachePolicy.type = Types::TooManyQueryStringsInCachePolicy
    TooManyQueryStringsInOriginRequestPolicy.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyQueryStringsInOriginRequestPolicy.type = Types::TooManyQueryStringsInOriginRequestPolicy
    TooManyRealtimeLogConfigs.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyRealtimeLogConfigs.type = Types::TooManyRealtimeLogConfigs
    TooManyRemoveHeadersInResponseHeadersPolicy.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyRemoveHeadersInResponseHeadersPolicy.type = Types::TooManyRemoveHeadersInResponseHeadersPolicy
    TooManyResponseHeadersPolicies.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyResponseHeadersPolicies.type = Types::TooManyResponseHeadersPolicies
    TooManyStreamingDistributionCNAMEs.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyStreamingDistributionCNAMEs.type = Types::TooManyStreamingDistributionCNAMEs
    TooManyStreamingDistributions.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyStreamingDistributions.type = Types::TooManyStreamingDistributions
    TooManyTrustedSigners.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyTrustedSigners.type = Types::TooManyTrustedSigners
    TrafficConfig.add_member(:single_weight_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousDeploymentSingleWeightConfig, location_name: 'SingleWeightConfig', traits: {"smithy.api#documentation" => "<p>Contains the percentage of traffic to send to the staging distribution.</p>"}))
    TrafficConfig.add_member(:single_header_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousDeploymentSingleHeaderConfig, location_name: 'SingleHeaderConfig', traits: {"smithy.api#documentation" => "<p>Determines which HTTP requests are sent to the staging distribution.</p>"}))
    TrafficConfig.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousDeploymentPolicyType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of traffic configuration.</p>", "smithy.api#required" => {}}))
    TrafficConfig.type = Types::TrafficConfig
    TrustedKeyGroupDoesNotExist.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TrustedKeyGroupDoesNotExist.type = Types::TrustedKeyGroupDoesNotExist
    TrustedKeyGroupIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "KeyGroup"})
    TrustedKeyGroups.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>This field is <code>true</code> if any of the key groups in the list have public keys that CloudFront can use to verify the signatures of signed URLs and signed cookies. If not, this field is <code>false</code>.</p>", "smithy.api#required" => {}}))
    TrustedKeyGroups.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of key groups in the list.</p>", "smithy.api#required" => {}}))
    TrustedKeyGroups.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedKeyGroupIdList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>A list of key groups identifiers.</p>"}))
    TrustedKeyGroups.type = Types::TrustedKeyGroups
    TrustedSignerDoesNotExist.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TrustedSignerDoesNotExist.type = Types::TrustedSignerDoesNotExist
    TrustedSigners.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>This field is <code>true</code> if any of the Amazon Web Services accounts in the list are configured as trusted signers. If not, this field is <code>false</code>.</p>", "smithy.api#required" => {}}))
    TrustedSigners.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of Amazon Web Services accounts in the list.</p>", "smithy.api#required" => {}}))
    TrustedSigners.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountNumberList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>A list of Amazon Web Services account identifiers.</p>"}))
    TrustedSigners.type = Types::TrustedSigners
    UnsupportedOperation.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    UnsupportedOperation.type = Types::UnsupportedOperation
    UntagResourceRequest.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'Resource', traits: {"smithy.api#documentation" => "<p>An ARN of a CloudFront resource.</p>", "smithy.api#httpQuery" => "Resource", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>A complex type that contains zero or more <code>Tag</code> key elements.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "TagKeys"}))
    UntagResourceRequest[:http_payload] = :tag_keys
    UntagResourceRequest[:http_payload_member] = UntagResourceRequest.member(:tag_keys)
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateCachePolicyRequest.add_member(:cache_policy_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CachePolicyConfig, location_name: 'CachePolicyConfig', traits: {"smithy.api#documentation" => "<p>A cache policy configuration.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "CachePolicyConfig"}))
    UpdateCachePolicyRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the cache policy that you are updating. The identifier is returned in a cache behavior's <code>CachePolicyId</code> field in the response to <code>GetDistributionConfig</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCachePolicyRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The version of the cache policy that you are updating. The version is returned in the cache policy's <code>ETag</code> field in the response to <code>GetCachePolicyConfig</code>.</p>", "smithy.api#httpHeader" => "If-Match"}))
    UpdateCachePolicyRequest[:http_payload] = :cache_policy_config
    UpdateCachePolicyRequest[:http_payload_member] = UpdateCachePolicyRequest.member(:cache_policy_config)
    UpdateCachePolicyRequest.type = Types::UpdateCachePolicyRequest
    UpdateCachePolicyResult.add_member(:cache_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: CachePolicy, location_name: 'CachePolicy', traits: {"smithy.api#documentation" => "<p>A cache policy.</p>", "smithy.api#httpPayload" => {}}))
    UpdateCachePolicyResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the cache policy.</p>", "smithy.api#httpHeader" => "ETag"}))
    UpdateCachePolicyResult[:http_payload] = :cache_policy
    UpdateCachePolicyResult[:http_payload_member] = UpdateCachePolicyResult.member(:cache_policy)
    UpdateCachePolicyResult.type = Types::UpdateCachePolicyResult
    UpdateCloudFrontOriginAccessIdentityRequest.add_member(:cloud_front_origin_access_identity_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudFrontOriginAccessIdentityConfig, location_name: 'CloudFrontOriginAccessIdentityConfig', traits: {"smithy.api#documentation" => "<p>The identity's configuration information.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "CloudFrontOriginAccessIdentityConfig"}))
    UpdateCloudFrontOriginAccessIdentityRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identity's id.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCloudFrontOriginAccessIdentityRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The value of the <code>ETag</code> header that you received when retrieving the identity's configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>", "smithy.api#httpHeader" => "If-Match"}))
    UpdateCloudFrontOriginAccessIdentityRequest[:http_payload] = :cloud_front_origin_access_identity_config
    UpdateCloudFrontOriginAccessIdentityRequest[:http_payload_member] = UpdateCloudFrontOriginAccessIdentityRequest.member(:cloud_front_origin_access_identity_config)
    UpdateCloudFrontOriginAccessIdentityRequest.type = Types::UpdateCloudFrontOriginAccessIdentityRequest
    UpdateCloudFrontOriginAccessIdentityResult.add_member(:cloud_front_origin_access_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudFrontOriginAccessIdentity, location_name: 'CloudFrontOriginAccessIdentity', traits: {"smithy.api#documentation" => "<p>The origin access identity's information.</p>", "smithy.api#httpPayload" => {}}))
    UpdateCloudFrontOriginAccessIdentityResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>", "smithy.api#httpHeader" => "ETag"}))
    UpdateCloudFrontOriginAccessIdentityResult[:http_payload] = :cloud_front_origin_access_identity
    UpdateCloudFrontOriginAccessIdentityResult[:http_payload_member] = UpdateCloudFrontOriginAccessIdentityResult.member(:cloud_front_origin_access_identity)
    UpdateCloudFrontOriginAccessIdentityResult.type = Types::UpdateCloudFrontOriginAccessIdentityResult
    UpdateConnectionGroupRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the connection group.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConnectionGroupRequest.add_member(:ipv6_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Ipv6Enabled', traits: {"smithy.api#documentation" => "<p>Enable IPv6 for the connection group. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesEnableIPv6\">Enable IPv6</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"}))
    UpdateConnectionGroupRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The value of the <code>ETag</code> header that you received when retrieving the connection group that you're updating.</p>", "smithy.api#httpHeader" => "If-Match", "smithy.api#required" => {}}))
    UpdateConnectionGroupRequest.add_member(:anycast_ip_list_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AnycastIpListId', traits: {"smithy.api#documentation" => "<p>The ID of the Anycast static IP list.</p>"}))
    UpdateConnectionGroupRequest.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Whether the connection group is enabled.</p>"}))
    UpdateConnectionGroupRequest.type = Types::UpdateConnectionGroupRequest
    UpdateConnectionGroupResult.add_member(:connection_group, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionGroup, location_name: 'ConnectionGroup', traits: {"smithy.api#documentation" => "<p>The connection group that you updated.</p>", "smithy.api#httpPayload" => {}}))
    UpdateConnectionGroupResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the connection group.</p>", "smithy.api#httpHeader" => "ETag"}))
    UpdateConnectionGroupResult[:http_payload] = :connection_group
    UpdateConnectionGroupResult[:http_payload_member] = UpdateConnectionGroupResult.member(:connection_group)
    UpdateConnectionGroupResult.type = Types::UpdateConnectionGroupResult
    UpdateContinuousDeploymentPolicyRequest.add_member(:continuous_deployment_policy_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousDeploymentPolicyConfig, location_name: 'ContinuousDeploymentPolicyConfig', traits: {"smithy.api#documentation" => "<p>The continuous deployment policy configuration.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "ContinuousDeploymentPolicyConfig"}))
    UpdateContinuousDeploymentPolicyRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the continuous deployment policy that you are updating.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateContinuousDeploymentPolicyRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The current version (<code>ETag</code> value) of the continuous deployment policy that you are updating.</p>", "smithy.api#httpHeader" => "If-Match"}))
    UpdateContinuousDeploymentPolicyRequest[:http_payload] = :continuous_deployment_policy_config
    UpdateContinuousDeploymentPolicyRequest[:http_payload_member] = UpdateContinuousDeploymentPolicyRequest.member(:continuous_deployment_policy_config)
    UpdateContinuousDeploymentPolicyRequest.type = Types::UpdateContinuousDeploymentPolicyRequest
    UpdateContinuousDeploymentPolicyResult.add_member(:continuous_deployment_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousDeploymentPolicy, location_name: 'ContinuousDeploymentPolicy', traits: {"smithy.api#documentation" => "<p>A continuous deployment policy.</p>", "smithy.api#httpPayload" => {}}))
    UpdateContinuousDeploymentPolicyResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The version identifier for the current version of the continuous deployment policy.</p>", "smithy.api#httpHeader" => "ETag"}))
    UpdateContinuousDeploymentPolicyResult[:http_payload] = :continuous_deployment_policy
    UpdateContinuousDeploymentPolicyResult[:http_payload_member] = UpdateContinuousDeploymentPolicyResult.member(:continuous_deployment_policy)
    UpdateContinuousDeploymentPolicyResult.type = Types::UpdateContinuousDeploymentPolicyResult
    UpdateDistributionRequest.add_member(:distribution_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionConfig, location_name: 'DistributionConfig', traits: {"smithy.api#documentation" => "<p>The distribution's configuration information.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "DistributionConfig"}))
    UpdateDistributionRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The distribution's id.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDistributionRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The value of the <code>ETag</code> header that you received when retrieving the distribution's configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>", "smithy.api#httpHeader" => "If-Match"}))
    UpdateDistributionRequest[:http_payload] = :distribution_config
    UpdateDistributionRequest[:http_payload_member] = UpdateDistributionRequest.member(:distribution_config)
    UpdateDistributionRequest.type = Types::UpdateDistributionRequest
    UpdateDistributionResult.add_member(:distribution, Smithy::Schema::Shapes::ShapeRef.new(shape: Distribution, location_name: 'Distribution', traits: {"smithy.api#documentation" => "<p>The distribution's information.</p>", "smithy.api#httpPayload" => {}}))
    UpdateDistributionResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>", "smithy.api#httpHeader" => "ETag"}))
    UpdateDistributionResult[:http_payload] = :distribution
    UpdateDistributionResult[:http_payload_member] = UpdateDistributionResult.member(:distribution)
    UpdateDistributionResult.type = Types::UpdateDistributionResult
    UpdateDistributionTenantRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the distribution tenant.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDistributionTenantRequest.add_member(:distribution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DistributionId', traits: {"smithy.api#documentation" => "<p>The ID for the multi-tenant distribution.</p>"}))
    UpdateDistributionTenantRequest.add_member(:domains, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainList, location_name: 'Domains', traits: {"smithy.api#documentation" => "<p>The domains to update for the distribution tenant. A domain object can contain only a domain property. You must specify at least one domain. Each distribution tenant can have up to 5 domains.</p>"}))
    UpdateDistributionTenantRequest.add_member(:customizations, Smithy::Schema::Shapes::ShapeRef.new(shape: Customizations, location_name: 'Customizations', traits: {"smithy.api#documentation" => "<p>Customizations for the distribution tenant. For each distribution tenant, you can specify the geographic restrictions, and the Amazon Resource Names (ARNs) for the ACM certificate and WAF web ACL. These are specific values that you can override or disable from the multi-tenant distribution that was used to create the distribution tenant.</p>"}))
    UpdateDistributionTenantRequest.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: Parameters, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>A list of parameter values to add to the resource. A parameter is specified as a key-value pair. A valid parameter value must exist for any parameter that is marked as required in the multi-tenant distribution.</p>"}))
    UpdateDistributionTenantRequest.add_member(:connection_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConnectionGroupId', traits: {"smithy.api#documentation" => "<p>The ID of the target connection group.</p>"}))
    UpdateDistributionTenantRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The value of the <code>ETag</code> header that you received when retrieving the distribution tenant to update. This value is returned in the response of the <code>GetDistributionTenant</code> API operation.</p>", "smithy.api#httpHeader" => "If-Match", "smithy.api#required" => {}}))
    UpdateDistributionTenantRequest.add_member(:managed_certificate_request, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedCertificateRequest, location_name: 'ManagedCertificateRequest', traits: {"smithy.api#documentation" => "<p>An object that contains the CloudFront managed ACM certificate request.</p>"}))
    UpdateDistributionTenantRequest.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Indicates whether the distribution tenant should be updated to an enabled state. If you update the distribution tenant and it's not enabled, the distribution tenant won't serve traffic.</p>"}))
    UpdateDistributionTenantRequest.type = Types::UpdateDistributionTenantRequest
    UpdateDistributionTenantResult.add_member(:distribution_tenant, Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionTenant, location_name: 'DistributionTenant', traits: {"smithy.api#documentation" => "<p>The distribution tenant that you're updating.</p>", "smithy.api#httpPayload" => {}}))
    UpdateDistributionTenantResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the distribution tenant.</p>", "smithy.api#httpHeader" => "ETag"}))
    UpdateDistributionTenantResult[:http_payload] = :distribution_tenant
    UpdateDistributionTenantResult[:http_payload_member] = UpdateDistributionTenantResult.member(:distribution_tenant)
    UpdateDistributionTenantResult.type = Types::UpdateDistributionTenantResult
    UpdateDistributionWithStagingConfigRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the primary distribution to which you are copying a staging distribution's configuration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDistributionWithStagingConfigRequest.add_member(:staging_distribution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StagingDistributionId', traits: {"smithy.api#documentation" => "<p>The identifier of the staging distribution whose configuration you are copying to the primary distribution.</p>", "smithy.api#httpQuery" => "StagingDistributionId"}))
    UpdateDistributionWithStagingConfigRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The current versions (<code>ETag</code> values) of both primary and staging distributions. Provide these in the following format:</p> <p> <code>&lt;primary ETag&gt;, &lt;staging ETag&gt;</code> </p>", "smithy.api#httpHeader" => "If-Match"}))
    UpdateDistributionWithStagingConfigRequest.type = Types::UpdateDistributionWithStagingConfigRequest
    UpdateDistributionWithStagingConfigResult.add_member(:distribution, Smithy::Schema::Shapes::ShapeRef.new(shape: Distribution, location_name: 'Distribution', traits: {"smithy.api#httpPayload" => {}}))
    UpdateDistributionWithStagingConfigResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the primary distribution (after it's updated).</p>", "smithy.api#httpHeader" => "ETag"}))
    UpdateDistributionWithStagingConfigResult[:http_payload] = :distribution
    UpdateDistributionWithStagingConfigResult[:http_payload_member] = UpdateDistributionWithStagingConfigResult.member(:distribution)
    UpdateDistributionWithStagingConfigResult.type = Types::UpdateDistributionWithStagingConfigResult
    UpdateDomainAssociationRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Domain', traits: {"smithy.api#documentation" => "<p>The domain to update.</p>", "smithy.api#required" => {}}))
    UpdateDomainAssociationRequest.add_member(:target_resource, Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionResourceId, location_name: 'TargetResource', traits: {"smithy.api#documentation" => "<p>The target standard distribution or distribution tenant resource for the domain. You can specify either <code>DistributionId</code> or <code>DistributionTenantId</code>, but not both.</p>", "smithy.api#required" => {}}))
    UpdateDomainAssociationRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The value of the <code>ETag</code> identifier for the standard distribution or distribution tenant that will be associated with the domain.</p>", "smithy.api#httpHeader" => "If-Match"}))
    UpdateDomainAssociationRequest.type = Types::UpdateDomainAssociationRequest
    UpdateDomainAssociationResult.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Domain', traits: {"smithy.api#documentation" => "<p>The domain that you're moving.</p>"}))
    UpdateDomainAssociationResult.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The intended destination for the domain.</p>"}))
    UpdateDomainAssociationResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the target standard distribution or distribution tenant that was associated with the domain.</p>", "smithy.api#httpHeader" => "ETag"}))
    UpdateDomainAssociationResult.type = Types::UpdateDomainAssociationResult
    UpdateFieldLevelEncryptionConfigRequest.add_member(:field_level_encryption_config, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldLevelEncryptionConfig, location_name: 'FieldLevelEncryptionConfig', traits: {"smithy.api#documentation" => "<p>Request to update a field-level encryption configuration.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "FieldLevelEncryptionConfig"}))
    UpdateFieldLevelEncryptionConfigRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the configuration you want to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFieldLevelEncryptionConfigRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The value of the <code>ETag</code> header that you received when retrieving the configuration identity to update. For example: <code>E2QWRUHAPOMQZL</code>.</p>", "smithy.api#httpHeader" => "If-Match"}))
    UpdateFieldLevelEncryptionConfigRequest[:http_payload] = :field_level_encryption_config
    UpdateFieldLevelEncryptionConfigRequest[:http_payload_member] = UpdateFieldLevelEncryptionConfigRequest.member(:field_level_encryption_config)
    UpdateFieldLevelEncryptionConfigRequest.type = Types::UpdateFieldLevelEncryptionConfigRequest
    UpdateFieldLevelEncryptionConfigResult.add_member(:field_level_encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldLevelEncryption, location_name: 'FieldLevelEncryption', traits: {"smithy.api#documentation" => "<p>Return the results of updating the configuration.</p>", "smithy.api#httpPayload" => {}}))
    UpdateFieldLevelEncryptionConfigResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The value of the <code>ETag</code> header that you received when updating the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>", "smithy.api#httpHeader" => "ETag"}))
    UpdateFieldLevelEncryptionConfigResult[:http_payload] = :field_level_encryption
    UpdateFieldLevelEncryptionConfigResult[:http_payload_member] = UpdateFieldLevelEncryptionConfigResult.member(:field_level_encryption)
    UpdateFieldLevelEncryptionConfigResult.type = Types::UpdateFieldLevelEncryptionConfigResult
    UpdateFieldLevelEncryptionProfileRequest.add_member(:field_level_encryption_profile_config, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldLevelEncryptionProfileConfig, location_name: 'FieldLevelEncryptionProfileConfig', traits: {"smithy.api#documentation" => "<p>Request to update a field-level encryption profile.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "FieldLevelEncryptionProfileConfig"}))
    UpdateFieldLevelEncryptionProfileRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the field-level encryption profile request.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFieldLevelEncryptionProfileRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The value of the <code>ETag</code> header that you received when retrieving the profile identity to update. For example: <code>E2QWRUHAPOMQZL</code>.</p>", "smithy.api#httpHeader" => "If-Match"}))
    UpdateFieldLevelEncryptionProfileRequest[:http_payload] = :field_level_encryption_profile_config
    UpdateFieldLevelEncryptionProfileRequest[:http_payload_member] = UpdateFieldLevelEncryptionProfileRequest.member(:field_level_encryption_profile_config)
    UpdateFieldLevelEncryptionProfileRequest.type = Types::UpdateFieldLevelEncryptionProfileRequest
    UpdateFieldLevelEncryptionProfileResult.add_member(:field_level_encryption_profile, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldLevelEncryptionProfile, location_name: 'FieldLevelEncryptionProfile', traits: {"smithy.api#documentation" => "<p>Return the results of updating the profile.</p>", "smithy.api#httpPayload" => {}}))
    UpdateFieldLevelEncryptionProfileResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The result of the field-level encryption profile request.</p>", "smithy.api#httpHeader" => "ETag"}))
    UpdateFieldLevelEncryptionProfileResult[:http_payload] = :field_level_encryption_profile
    UpdateFieldLevelEncryptionProfileResult[:http_payload_member] = UpdateFieldLevelEncryptionProfileResult.member(:field_level_encryption_profile)
    UpdateFieldLevelEncryptionProfileResult.type = Types::UpdateFieldLevelEncryptionProfileResult
    UpdateFunctionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the function that you are updating.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFunctionRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The current version (<code>ETag</code> value) of the function that you are updating, which you can get using <code>DescribeFunction</code>.</p>", "smithy.api#httpHeader" => "If-Match", "smithy.api#required" => {}}))
    UpdateFunctionRequest.add_member(:function_config, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionConfig, location_name: 'FunctionConfig', traits: {"smithy.api#documentation" => "<p>Configuration information about the function.</p>", "smithy.api#required" => {}}))
    UpdateFunctionRequest.add_member(:function_code, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionBlob, location_name: 'FunctionCode', traits: {"smithy.api#documentation" => "<p>The function code. For more information about writing a CloudFront function, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/writing-function-code.html\">Writing function code for CloudFront Functions</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    UpdateFunctionRequest.type = Types::UpdateFunctionRequest
    UpdateFunctionResult.add_member(:function_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionSummary, location_name: 'FunctionSummary', traits: {"smithy.api#documentation" => "<p>Contains configuration information and metadata about a CloudFront function.</p>", "smithy.api#httpPayload" => {}}))
    UpdateFunctionResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The version identifier for the current version of the CloudFront function.</p>", "smithy.api#httpHeader" => "ETtag"}))
    UpdateFunctionResult[:http_payload] = :function_summary
    UpdateFunctionResult[:http_payload_member] = UpdateFunctionResult.member(:function_summary)
    UpdateFunctionResult.type = Types::UpdateFunctionResult
    UpdateKeyGroupRequest.add_member(:key_group_config, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyGroupConfig, location_name: 'KeyGroupConfig', traits: {"smithy.api#documentation" => "<p>The key group configuration.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "KeyGroupConfig"}))
    UpdateKeyGroupRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the key group that you are updating.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateKeyGroupRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The version of the key group that you are updating. The version is the key group's <code>ETag</code> value.</p>", "smithy.api#httpHeader" => "If-Match"}))
    UpdateKeyGroupRequest[:http_payload] = :key_group_config
    UpdateKeyGroupRequest[:http_payload_member] = UpdateKeyGroupRequest.member(:key_group_config)
    UpdateKeyGroupRequest.type = Types::UpdateKeyGroupRequest
    UpdateKeyGroupResult.add_member(:key_group, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyGroup, location_name: 'KeyGroup', traits: {"smithy.api#documentation" => "<p>The key group that was just updated.</p>", "smithy.api#httpPayload" => {}}))
    UpdateKeyGroupResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The identifier for this version of the key group.</p>", "smithy.api#httpHeader" => "ETag"}))
    UpdateKeyGroupResult[:http_payload] = :key_group
    UpdateKeyGroupResult[:http_payload_member] = UpdateKeyGroupResult.member(:key_group)
    UpdateKeyGroupResult.type = Types::UpdateKeyGroupResult
    UpdateKeyValueStoreRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValueStoreName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the key value store to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateKeyValueStoreRequest.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValueStoreComment, location_name: 'Comment', traits: {"smithy.api#documentation" => "<p>The comment of the key value store to update.</p>", "smithy.api#required" => {}}))
    UpdateKeyValueStoreRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The key value store to update, if a match occurs.</p>", "smithy.api#httpHeader" => "If-Match", "smithy.api#required" => {}}))
    UpdateKeyValueStoreRequest.type = Types::UpdateKeyValueStoreRequest
    UpdateKeyValueStoreResult.add_member(:key_value_store, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValueStore, location_name: 'KeyValueStore', traits: {"smithy.api#documentation" => "<p>The resulting key value store to update.</p>", "smithy.api#httpPayload" => {}}))
    UpdateKeyValueStoreResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The <code>ETag</code> of the resulting key value store.</p>", "smithy.api#httpHeader" => "ETag"}))
    UpdateKeyValueStoreResult[:http_payload] = :key_value_store
    UpdateKeyValueStoreResult[:http_payload_member] = UpdateKeyValueStoreResult.member(:key_value_store)
    UpdateKeyValueStoreResult.type = Types::UpdateKeyValueStoreResult
    UpdateOriginAccessControlRequest.add_member(:origin_access_control_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginAccessControlConfig, location_name: 'OriginAccessControlConfig', traits: {"smithy.api#documentation" => "<p>An origin access control.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "OriginAccessControlConfig"}))
    UpdateOriginAccessControlRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the origin access control that you are updating.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateOriginAccessControlRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The current version (<code>ETag</code> value) of the origin access control that you are updating.</p>", "smithy.api#httpHeader" => "If-Match"}))
    UpdateOriginAccessControlRequest[:http_payload] = :origin_access_control_config
    UpdateOriginAccessControlRequest[:http_payload_member] = UpdateOriginAccessControlRequest.member(:origin_access_control_config)
    UpdateOriginAccessControlRequest.type = Types::UpdateOriginAccessControlRequest
    UpdateOriginAccessControlResult.add_member(:origin_access_control, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginAccessControl, location_name: 'OriginAccessControl', traits: {"smithy.api#documentation" => "<p>The origin access control after it has been updated.</p>", "smithy.api#httpPayload" => {}}))
    UpdateOriginAccessControlResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The new version of the origin access control after it has been updated.</p>", "smithy.api#httpHeader" => "ETag"}))
    UpdateOriginAccessControlResult[:http_payload] = :origin_access_control
    UpdateOriginAccessControlResult[:http_payload_member] = UpdateOriginAccessControlResult.member(:origin_access_control)
    UpdateOriginAccessControlResult.type = Types::UpdateOriginAccessControlResult
    UpdateOriginRequestPolicyRequest.add_member(:origin_request_policy_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginRequestPolicyConfig, location_name: 'OriginRequestPolicyConfig', traits: {"smithy.api#documentation" => "<p>An origin request policy configuration.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "OriginRequestPolicyConfig"}))
    UpdateOriginRequestPolicyRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the origin request policy that you are updating. The identifier is returned in a cache behavior's <code>OriginRequestPolicyId</code> field in the response to <code>GetDistributionConfig</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateOriginRequestPolicyRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The version of the origin request policy that you are updating. The version is returned in the origin request policy's <code>ETag</code> field in the response to <code>GetOriginRequestPolicyConfig</code>.</p>", "smithy.api#httpHeader" => "If-Match"}))
    UpdateOriginRequestPolicyRequest[:http_payload] = :origin_request_policy_config
    UpdateOriginRequestPolicyRequest[:http_payload_member] = UpdateOriginRequestPolicyRequest.member(:origin_request_policy_config)
    UpdateOriginRequestPolicyRequest.type = Types::UpdateOriginRequestPolicyRequest
    UpdateOriginRequestPolicyResult.add_member(:origin_request_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginRequestPolicy, location_name: 'OriginRequestPolicy', traits: {"smithy.api#documentation" => "<p>An origin request policy.</p>", "smithy.api#httpPayload" => {}}))
    UpdateOriginRequestPolicyResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the origin request policy.</p>", "smithy.api#httpHeader" => "ETag"}))
    UpdateOriginRequestPolicyResult[:http_payload] = :origin_request_policy
    UpdateOriginRequestPolicyResult[:http_payload_member] = UpdateOriginRequestPolicyResult.member(:origin_request_policy)
    UpdateOriginRequestPolicyResult.type = Types::UpdateOriginRequestPolicyResult
    UpdatePublicKeyRequest.add_member(:public_key_config, Smithy::Schema::Shapes::ShapeRef.new(shape: PublicKeyConfig, location_name: 'PublicKeyConfig', traits: {"smithy.api#documentation" => "<p>A public key configuration.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "PublicKeyConfig"}))
    UpdatePublicKeyRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the public key that you are updating.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePublicKeyRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The value of the <code>ETag</code> header that you received when retrieving the public key to update. For example: <code>E2QWRUHAPOMQZL</code>.</p>", "smithy.api#httpHeader" => "If-Match"}))
    UpdatePublicKeyRequest[:http_payload] = :public_key_config
    UpdatePublicKeyRequest[:http_payload_member] = UpdatePublicKeyRequest.member(:public_key_config)
    UpdatePublicKeyRequest.type = Types::UpdatePublicKeyRequest
    UpdatePublicKeyResult.add_member(:public_key, Smithy::Schema::Shapes::ShapeRef.new(shape: PublicKey, location_name: 'PublicKey', traits: {"smithy.api#documentation" => "<p>The public key.</p>", "smithy.api#httpPayload" => {}}))
    UpdatePublicKeyResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The identifier of the current version of the public key.</p>", "smithy.api#httpHeader" => "ETag"}))
    UpdatePublicKeyResult[:http_payload] = :public_key
    UpdatePublicKeyResult[:http_payload_member] = UpdatePublicKeyResult.member(:public_key)
    UpdatePublicKeyResult.type = Types::UpdatePublicKeyResult
    UpdateRealtimeLogConfigRequest.add_member(:end_points, Smithy::Schema::Shapes::ShapeRef.new(shape: EndPointList, location_name: 'EndPoints', traits: {"smithy.api#documentation" => "<p>Contains information about the Amazon Kinesis data stream where you are sending real-time log data.</p>"}))
    UpdateRealtimeLogConfigRequest.add_member(:fields, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldList, location_name: 'Fields', traits: {"smithy.api#documentation" => "<p>A list of fields to include in each real-time log record.</p> <p>For more information about fields, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-fields\">Real-time log configuration fields</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"}))
    UpdateRealtimeLogConfigRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name for this real-time log configuration.</p>"}))
    UpdateRealtimeLogConfigRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for this real-time log configuration.</p>"}))
    UpdateRealtimeLogConfigRequest.add_member(:sampling_rate, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'SamplingRate', traits: {"smithy.api#documentation" => "<p>The sampling rate for this real-time log configuration. The sampling rate determines the percentage of viewer requests that are represented in the real-time log data. You must provide an integer between 1 and 100, inclusive.</p>"}))
    UpdateRealtimeLogConfigRequest.type = Types::UpdateRealtimeLogConfigRequest
    UpdateRealtimeLogConfigResult.add_member(:realtime_log_config, Smithy::Schema::Shapes::ShapeRef.new(shape: RealtimeLogConfig, location_name: 'RealtimeLogConfig', traits: {"smithy.api#documentation" => "<p>A real-time log configuration.</p>"}))
    UpdateRealtimeLogConfigResult.type = Types::UpdateRealtimeLogConfigResult
    UpdateResponseHeadersPolicyRequest.add_member(:response_headers_policy_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseHeadersPolicyConfig, location_name: 'ResponseHeadersPolicyConfig', traits: {"smithy.api#documentation" => "<p>A response headers policy configuration.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "ResponseHeadersPolicyConfig"}))
    UpdateResponseHeadersPolicyRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier for the response headers policy that you are updating.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateResponseHeadersPolicyRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The version of the response headers policy that you are updating.</p> <p>The version is returned in the cache policy's <code>ETag</code> field in the response to <code>GetResponseHeadersPolicyConfig</code>.</p>", "smithy.api#httpHeader" => "If-Match"}))
    UpdateResponseHeadersPolicyRequest[:http_payload] = :response_headers_policy_config
    UpdateResponseHeadersPolicyRequest[:http_payload_member] = UpdateResponseHeadersPolicyRequest.member(:response_headers_policy_config)
    UpdateResponseHeadersPolicyRequest.type = Types::UpdateResponseHeadersPolicyRequest
    UpdateResponseHeadersPolicyResult.add_member(:response_headers_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseHeadersPolicy, location_name: 'ResponseHeadersPolicy', traits: {"smithy.api#documentation" => "<p>A response headers policy.</p>", "smithy.api#httpPayload" => {}}))
    UpdateResponseHeadersPolicyResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the response headers policy.</p>", "smithy.api#httpHeader" => "ETag"}))
    UpdateResponseHeadersPolicyResult[:http_payload] = :response_headers_policy
    UpdateResponseHeadersPolicyResult[:http_payload_member] = UpdateResponseHeadersPolicyResult.member(:response_headers_policy)
    UpdateResponseHeadersPolicyResult.type = Types::UpdateResponseHeadersPolicyResult
    UpdateStreamingDistributionRequest.add_member(:streaming_distribution_config, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamingDistributionConfig, location_name: 'StreamingDistributionConfig', traits: {"smithy.api#documentation" => "<p>The streaming distribution's configuration information.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "StreamingDistributionConfig"}))
    UpdateStreamingDistributionRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The streaming distribution's id.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateStreamingDistributionRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The value of the <code>ETag</code> header that you received when retrieving the streaming distribution's configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>", "smithy.api#httpHeader" => "If-Match"}))
    UpdateStreamingDistributionRequest[:http_payload] = :streaming_distribution_config
    UpdateStreamingDistributionRequest[:http_payload_member] = UpdateStreamingDistributionRequest.member(:streaming_distribution_config)
    UpdateStreamingDistributionRequest.type = Types::UpdateStreamingDistributionRequest
    UpdateStreamingDistributionResult.add_member(:streaming_distribution, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamingDistribution, location_name: 'StreamingDistribution', traits: {"smithy.api#documentation" => "<p>The streaming distribution's information.</p>", "smithy.api#httpPayload" => {}}))
    UpdateStreamingDistributionResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>", "smithy.api#httpHeader" => "ETag"}))
    UpdateStreamingDistributionResult[:http_payload] = :streaming_distribution
    UpdateStreamingDistributionResult[:http_payload_member] = UpdateStreamingDistributionResult.member(:streaming_distribution)
    UpdateStreamingDistributionResult.type = Types::UpdateStreamingDistributionResult
    UpdateVpcOriginRequest.add_member(:vpc_origin_endpoint_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcOriginEndpointConfig, location_name: 'VpcOriginEndpointConfig', traits: {"smithy.api#documentation" => "<p>The VPC origin endpoint configuration.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "VpcOriginEndpointConfig"}))
    UpdateVpcOriginRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The VPC origin ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateVpcOriginRequest.add_member(:if_match, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IfMatch', traits: {"smithy.api#documentation" => "<p>The VPC origin to update, if a match occurs.</p>", "smithy.api#httpHeader" => "If-Match", "smithy.api#required" => {}}))
    UpdateVpcOriginRequest[:http_payload] = :vpc_origin_endpoint_config
    UpdateVpcOriginRequest[:http_payload_member] = UpdateVpcOriginRequest.member(:vpc_origin_endpoint_config)
    UpdateVpcOriginRequest.type = Types::UpdateVpcOriginRequest
    UpdateVpcOriginResult.add_member(:vpc_origin, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcOrigin, location_name: 'VpcOrigin', traits: {"smithy.api#documentation" => "<p>The VPC origin.</p>", "smithy.api#httpPayload" => {}}))
    UpdateVpcOriginResult.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ETag', traits: {"smithy.api#documentation" => "<p>The VPC origin ETag.</p>", "smithy.api#httpHeader" => "ETag"}))
    UpdateVpcOriginResult[:http_payload] = :vpc_origin
    UpdateVpcOriginResult[:http_payload_member] = UpdateVpcOriginResult.member(:vpc_origin)
    UpdateVpcOriginResult.type = Types::UpdateVpcOriginResult
    ValidationTokenDetail.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Domain', traits: {"smithy.api#documentation" => "<p>The domain name.</p>", "smithy.api#required" => {}}))
    ValidationTokenDetail.add_member(:redirect_to, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RedirectTo', traits: {"smithy.api#documentation" => "<p>The domain to redirect to.</p>"}))
    ValidationTokenDetail.add_member(:redirect_from, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RedirectFrom', traits: {"smithy.api#documentation" => "<p>The domain to redirect from.</p>"}))
    ValidationTokenDetail.type = Types::ValidationTokenDetail
    ValidationTokenDetailList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationTokenDetail)
    ValidationTokenHost.add_member(:cloud_front, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CloudFront', traits: {"smithy.api#enumValue" => "cloudfront"}))
    ValidationTokenHost.add_member(:self_hosted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SelfHosted', traits: {"smithy.api#enumValue" => "self-hosted"}))
    VerifyDnsConfigurationRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Domain', traits: {"smithy.api#documentation" => "<p>The domain name that you're verifying.</p>"}))
    VerifyDnsConfigurationRequest.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>The identifier of the distribution tenant. You can specify the ARN, ID, or name of the distribution tenant.</p>", "smithy.api#required" => {}}))
    VerifyDnsConfigurationRequest.type = Types::VerifyDnsConfigurationRequest
    VerifyDnsConfigurationResult.add_member(:dns_configuration_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DnsConfigurationList, location_name: 'DnsConfigurationList', traits: {"smithy.api#documentation" => "<p>The list of domain names, their statuses, and a description of each status.</p>"}))
    VerifyDnsConfigurationResult.type = Types::VerifyDnsConfigurationResult
    ViewerCertificate.add_member(:cloud_front_default_certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'CloudFrontDefaultCertificate', traits: {"smithy.api#documentation" => "<p>If the distribution uses the CloudFront domain name such as <code>d111111abcdef8.cloudfront.net</code>, set this field to <code>true</code>.</p> <p>If the distribution uses <code>Aliases</code> (alternate domain names or CNAMEs), set this field to <code>false</code> and specify values for the following fields:</p> <ul> <li> <p> <code>ACMCertificateArn</code> or <code>IAMCertificateId</code> (specify a value for one, not both)</p> </li> <li> <p> <code>MinimumProtocolVersion</code> </p> </li> <li> <p> <code>SSLSupportMethod</code> </p> </li> </ul>"}))
    ViewerCertificate.add_member(:iam_certificate_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerCertificateId, location_name: 'IAMCertificateId', traits: {"smithy.api#documentation" => "<note> <p>This field only supports standard distributions. You can't specify this field for multi-tenant distributions. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-config-options.html#unsupported-saas\">Unsupported features for SaaS Manager for Amazon CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note> <p>If the distribution uses <code>Aliases</code> (alternate domain names or CNAMEs) and the SSL/TLS certificate is stored in <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html\">Identity and Access Management (IAM)</a>, provide the ID of the IAM certificate.</p> <p>If you specify an IAM certificate ID, you must also specify values for <code>MinimumProtocolVersion</code> and <code>SSLSupportMethod</code>. </p>"}))
    ViewerCertificate.add_member(:acm_certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ACMCertificateArn', traits: {"smithy.api#documentation" => "<p>If the distribution uses <code>Aliases</code> (alternate domain names or CNAMEs) and the SSL/TLS certificate is stored in <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/acm-overview.html\">Certificate Manager (ACM)</a>, provide the Amazon Resource Name (ARN) of the ACM certificate. CloudFront only supports ACM certificates in the US East (N. Virginia) Region (<code>us-east-1</code>).</p> <p>If you specify an ACM certificate ARN, you must also specify values for <code>MinimumProtocolVersion</code> and <code>SSLSupportMethod</code>.</p>"}))
    ViewerCertificate.add_member(:ssl_support_method, Smithy::Schema::Shapes::ShapeRef.new(shape: SSLSupportMethod, location_name: 'SSLSupportMethod', traits: {"smithy.api#documentation" => "<p>If the distribution uses <code>Aliases</code> (alternate domain names or CNAMEs), specify which viewers the distribution accepts HTTPS connections from.</p> <ul> <li> <p> <code>sni-only</code> – The distribution accepts HTTPS connections from only viewers that support <a href=\"https://en.wikipedia.org/wiki/Server_Name_Indication\">server name indication (SNI)</a>. This is recommended. Most browsers and clients support SNI.</p> </li> <li> <p> <code>vip</code> – The distribution accepts HTTPS connections from all viewers including those that don't support SNI. This is not recommended, and results in additional monthly charges from CloudFront.</p> </li> <li> <p> <code>static-ip</code> - Do not specify this value unless your distribution has been enabled for this feature by the CloudFront team. If you have a use case that requires static IP addresses for a distribution, contact CloudFront through the <a href=\"https://console.aws.amazon.com/support/home\">Amazon Web ServicesSupport Center</a>.</p> </li> </ul> <p>If the distribution uses the CloudFront domain name such as <code>d111111abcdef8.cloudfront.net</code>, don't set a value for this field.</p>"}))
    ViewerCertificate.add_member(:minimum_protocol_version, Smithy::Schema::Shapes::ShapeRef.new(shape: MinimumProtocolVersion, location_name: 'MinimumProtocolVersion', traits: {"smithy.api#documentation" => "<p>If the distribution uses <code>Aliases</code> (alternate domain names or CNAMEs), specify the security policy that you want CloudFront to use for HTTPS connections with viewers. The security policy determines two settings:</p> <ul> <li> <p>The minimum SSL/TLS protocol that CloudFront can use to communicate with viewers.</p> </li> <li> <p>The ciphers that CloudFront can use to encrypt the content that it returns to viewers.</p> </li> </ul> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValues-security-policy\">Security Policy</a> and <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/secure-connections-supported-viewer-protocols-ciphers.html#secure-connections-supported-ciphers\">Supported Protocols and Ciphers Between Viewers and CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <note> <p>On the CloudFront console, this setting is called <b>Security Policy</b>.</p> </note> <p>When you're using SNI only (you set <code>SSLSupportMethod</code> to <code>sni-only</code>), you must specify <code>TLSv1</code> or higher.</p> <p>If the distribution uses the CloudFront domain name such as <code>d111111abcdef8.cloudfront.net</code> (you set <code>CloudFrontDefaultCertificate</code> to <code>true</code>), CloudFront automatically sets the security policy to <code>TLSv1</code> regardless of the value that you set here.</p>"}))
    ViewerCertificate.add_member(:certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Certificate', traits: {"smithy.api#deprecated" => {}, "smithy.api#documentation" => "<p>This field is deprecated. Use one of the following fields instead:</p> <ul> <li> <p> <code>ACMCertificateArn</code> </p> </li> <li> <p> <code>IAMCertificateId</code> </p> </li> <li> <p> <code>CloudFrontDefaultCertificate</code> </p> </li> </ul>"}))
    ViewerCertificate.add_member(:certificate_source, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateSource, location_name: 'CertificateSource', traits: {"smithy.api#deprecated" => {}, "smithy.api#documentation" => "<p>This field is deprecated. Use one of the following fields instead:</p> <ul> <li> <p> <code>ACMCertificateArn</code> </p> </li> <li> <p> <code>IAMCertificateId</code> </p> </li> <li> <p> <code>CloudFrontDefaultCertificate</code> </p> </li> </ul>"}))
    ViewerCertificate.type = Types::ViewerCertificate
    ViewerProtocolPolicy.add_member(:allow_all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'allow_all', traits: {"smithy.api#enumValue" => "allow-all"}))
    ViewerProtocolPolicy.add_member(:https_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'https_only', traits: {"smithy.api#enumValue" => "https-only"}))
    ViewerProtocolPolicy.add_member(:redirect_to_https, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'redirect_to_https', traits: {"smithy.api#enumValue" => "redirect-to-https"}))
    VpcOrigin.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The VPC origin ID.</p>", "smithy.api#required" => {}}))
    VpcOrigin.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The VPC origin ARN.</p>", "smithy.api#required" => {}}))
    VpcOrigin.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The VPC origin status.</p>", "smithy.api#required" => {}}))
    VpcOrigin.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The VPC origin created time.</p>", "smithy.api#required" => {}}))
    VpcOrigin.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The VPC origin last modified time.</p>", "smithy.api#required" => {}}))
    VpcOrigin.add_member(:vpc_origin_endpoint_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcOriginEndpointConfig, location_name: 'VpcOriginEndpointConfig', traits: {"smithy.api#documentation" => "<p>The VPC origin endpoint configuration.</p>", "smithy.api#required" => {}}))
    VpcOrigin.type = Types::VpcOrigin
    VpcOriginConfig.add_member(:vpc_origin_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcOriginId', traits: {"smithy.api#documentation" => "<p>The VPC origin ID.</p>", "smithy.api#required" => {}}))
    VpcOriginConfig.add_member(:origin_read_timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'OriginReadTimeout', traits: {"smithy.api#documentation" => "<p>Specifies how long, in seconds, CloudFront waits for a response from the origin. This is also known as the <i>origin response timeout</i>. The minimum timeout is 1 second, the maximum is 120 seconds, and the default (if you don't specify otherwise) is 30 seconds.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/DownloadDistValuesOrigin.html#DownloadDistValuesOriginResponseTimeout\">Response timeout</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"}))
    VpcOriginConfig.add_member(:origin_keepalive_timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'OriginKeepaliveTimeout', traits: {"smithy.api#documentation" => "<p>Specifies how long, in seconds, CloudFront persists its connection to the origin. The minimum timeout is 1 second, the maximum is 120 seconds, and the default (if you don't specify otherwise) is 5 seconds.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/DownloadDistValuesOrigin.html#DownloadDistValuesOriginKeepaliveTimeout\">Keep-alive timeout (custom origins only)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"}))
    VpcOriginConfig.type = Types::VpcOriginConfig
    VpcOriginEndpointConfig.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the CloudFront VPC origin endpoint configuration.</p>", "smithy.api#required" => {}}))
    VpcOriginEndpointConfig.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN of the CloudFront VPC origin endpoint configuration.</p>", "smithy.api#required" => {}}))
    VpcOriginEndpointConfig.add_member(:http_port, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'HTTPPort', traits: {"smithy.api#documentation" => "<p>The HTTP port for the CloudFront VPC origin endpoint configuration. The default value is <code>80</code>.</p>", "smithy.api#required" => {}}))
    VpcOriginEndpointConfig.add_member(:https_port, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'HTTPSPort', traits: {"smithy.api#documentation" => "<p>The HTTPS port of the CloudFront VPC origin endpoint configuration. The default value is <code>443</code>.</p>", "smithy.api#required" => {}}))
    VpcOriginEndpointConfig.add_member(:origin_protocol_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginProtocolPolicy, location_name: 'OriginProtocolPolicy', traits: {"smithy.api#documentation" => "<p>The origin protocol policy for the CloudFront VPC origin endpoint configuration.</p>", "smithy.api#required" => {}}))
    VpcOriginEndpointConfig.add_member(:origin_ssl_protocols, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginSslProtocols, location_name: 'OriginSslProtocols'))
    VpcOriginEndpointConfig.type = Types::VpcOriginEndpointConfig
    VpcOriginList.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>The marker associated with the VPC origins list.</p>", "smithy.api#required" => {}}))
    VpcOriginList.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>The next marker associated with the VPC origins list.</p>"}))
    VpcOriginList.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>The maximum number of items included in the list.</p>", "smithy.api#required" => {}}))
    VpcOriginList.add_member(:is_truncated, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsTruncated', traits: {"smithy.api#documentation" => "<p>A flag that indicates whether more VPC origins remain to be listed. If your results were truncated, you can make a follow-up pagination request using the <code>Marker</code> request parameter to retrieve more VPC origins in the list.</p>", "smithy.api#required" => {}}))
    VpcOriginList.add_member(:quantity, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Quantity', traits: {"smithy.api#documentation" => "<p>The number of VPC origins in the list.</p>", "smithy.api#required" => {}}))
    VpcOriginList.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcOriginSummaryList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>The items of the VPC origins list.</p>"}))
    VpcOriginList.type = Types::VpcOriginList
    VpcOriginSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The VPC origin summary ID.</p>", "smithy.api#required" => {}}))
    VpcOriginSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The VPC origin summary name.</p>", "smithy.api#required" => {}}))
    VpcOriginSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The VPC origin summary status.</p>", "smithy.api#required" => {}}))
    VpcOriginSummary.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The VPC origin summary created time.</p>", "smithy.api#required" => {}}))
    VpcOriginSummary.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The VPC origin summary last modified time.</p>", "smithy.api#required" => {}}))
    VpcOriginSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The VPC origin summary ARN.</p>", "smithy.api#required" => {}}))
    VpcOriginSummary.add_member(:origin_endpoint_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OriginEndpointArn', traits: {"smithy.api#documentation" => "<p>The VPC origin summary origin endpoint ARN.</p>", "smithy.api#required" => {}}))
    VpcOriginSummary.type = Types::VpcOriginSummary
    VpcOriginSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VpcOriginSummary, traits: {"smithy.api#xmlName" => "VpcOriginSummary"})
    WebAclCustomization.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomizationActionType, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>The action for the WAF web ACL customization. You can specify <code>override</code> to specify a separate WAF web ACL for the distribution tenant. If you specify <code>disable</code>, the distribution tenant won't have WAF web ACL protections and won't inherit from the multi-tenant distribution.</p>", "smithy.api#required" => {}}))
    WebAclCustomization.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the WAF web ACL.</p>"}))
    WebAclCustomization.type = Types::WebAclCustomization

    Cloudfront20200531 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.cloudfront#Cloudfront2020_05_31"
      service.name = "Cloudfront20200531"
      service.version = "2020-05-31"
      service.traits = {"aws.api#service" => {"sdkId" => "CloudFront", "arnNamespace" => "cloudfront", "cloudFormationName" => "CloudFront", "cloudTrailEventSource" => "cloudfront.amazonaws.com", "endpointPrefix" => "cloudfront"}, "aws.auth#sigv4" => {"name" => "cloudfront"}, "aws.endpoints#standardPartitionalEndpoints" => {"endpointPatternType" => "service_dnsSuffix", "partitionEndpointSpecialCases" => {"aws" => [{"endpoint" => "https://cloudfront.global.api.aws", "region" => "us-east-1", "dualStack" => true}, {"endpoint" => "https://cloudfront-fips.global.api.aws", "region" => "us-east-1", "dualStack" => true, "fips" => true}], "aws-cn" => [{"endpoint" => "https://cloudfront.cn-northwest-1.amazonaws.com.cn", "region" => "cn-northwest-1"}, {"endpoint" => "https://cloudfront-fips.cn-northwest-1.amazonaws.com.cn", "region" => "cn-northwest-1", "fips" => true}]}}, "aws.protocols#restXml" => {}, "smithy.api#title" => "Amazon CloudFront", "smithy.api#xmlNamespace" => {"uri" => "http://cloudfront.amazonaws.com/doc/2020-05-31/"}}
      service.add_operation(:associate_alias, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#AssociateAlias"
        operation.name = "AssociateAlias"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateAliasRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalUpdate)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchDistribution)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionCNAMEs)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/distribution/{TargetDistributionId}/associate-alias", "code" => 200}}
      end)
      service.add_operation(:associate_distribution_tenant_web_acl, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#AssociateDistributionTenantWebACL"
        operation.name = "AssociateDistributionTenantWebACL"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateDistributionTenantWebACLRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateDistributionTenantWebACLResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/distribution-tenant/{Id}/associate-web-acl", "code" => 200}}
      end)
      service.add_operation(:associate_distribution_web_acl, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#AssociateDistributionWebACL"
        operation.name = "AssociateDistributionWebACL"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateDistributionWebACLRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateDistributionWebACLResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/distribution/{Id}/associate-web-acl", "code" => 200}}
      end)
      service.add_operation(:copy_distribution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CopyDistribution"
        operation.name = "CopyDistribution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CopyDistributionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CopyDistributionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CNAMEAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InconsistentQuantities)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDefaultRootObject)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidErrorCode)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidForwardCookies)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidFunctionAssociation)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGeoRestrictionParameter)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidHeadersForS3Origin)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLambdaFunctionAssociation)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLocationCode)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMinimumProtocolVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOrigin)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOriginAccessControl)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOriginAccessIdentity)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOriginKeepaliveTimeout)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOriginReadTimeout)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidProtocolSettings)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidQueryStringParameters)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRelativePath)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequiredProtocol)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResponseCode)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTTLOrder)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidViewerCertificate)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidWebACLId)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingBody)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchCachePolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchDistribution)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchFieldLevelEncryptionConfig)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchOrigin)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchOriginRequestPolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchRealtimeLogConfig)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResponseHeadersPolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RealtimeLogConfigOwnerMismatch)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyCacheBehaviors)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyCertificates)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyCookieNamesInWhiteList)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionCNAMEs)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributions)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToCachePolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToFieldLevelEncryptionConfig)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToKeyGroup)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToOriginAccessControl)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToOriginRequestPolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToResponseHeadersPolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsWithFunctionAssociations)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsWithLambdaAssociations)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsWithSingleFunctionARN)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyFunctionAssociations)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyHeadersInForwardedValues)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyKeyGroupsAssociatedToDistribution)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyLambdaFunctionAssociations)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyOriginCustomHeaders)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyOriginGroupsPerDistribution)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyOrigins)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyQueryStringParameters)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTrustedSigners)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedKeyGroupDoesNotExist)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedSignerDoesNotExist)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/distribution/{PrimaryDistributionId}/copy", "code" => 201}}
      end)
      service.add_operation(:create_anycast_ip_list, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateAnycastIpList"
        operation.name = "CreateAnycastIpList"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAnycastIpListRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAnycastIpListResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityLimitExceeded)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagging)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/anycast-ip-list", "code" => 202}}
      end)
      service.add_operation(:create_cache_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateCachePolicy"
        operation.name = "CreateCachePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCachePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCachePolicyResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CachePolicyAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InconsistentQuantities)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyCachePolicies)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyCookiesInCachePolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyHeadersInCachePolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyQueryStringsInCachePolicy)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/cache-policy", "code" => 201}}
      end)
      service.add_operation(:create_cloud_front_origin_access_identity, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateCloudFrontOriginAccessIdentity"
        operation.name = "CreateCloudFrontOriginAccessIdentity"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCloudFrontOriginAccessIdentityRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCloudFrontOriginAccessIdentityResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudFrontOriginAccessIdentityAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InconsistentQuantities)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingBody)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyCloudFrontOriginAccessIdentities)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/origin-access-identity/cloudfront", "code" => 201}}
      end)
      service.add_operation(:create_connection_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateConnectionGroup"
        operation.name = "CreateConnectionGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectionGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectionGroupResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityLimitExceeded)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagging)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/connection-group", "code" => 201}}
      end)
      service.add_operation(:create_continuous_deployment_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateContinuousDeploymentPolicy"
        operation.name = "CreateContinuousDeploymentPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateContinuousDeploymentPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateContinuousDeploymentPolicyResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousDeploymentPolicyAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InconsistentQuantities)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StagingDistributionInUse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyContinuousDeploymentPolicies)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/continuous-deployment-policy", "code" => 201}}
      end)
      service.add_operation(:create_distribution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateDistribution"
        operation.name = "CreateDistribution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDistributionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDistributionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CNAMEAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousDeploymentPolicyInUse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityLimitExceeded)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalOriginAccessConfiguration)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InconsistentQuantities)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDefaultRootObject)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDomainNameForOriginAccessControl)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidErrorCode)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidForwardCookies)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidFunctionAssociation)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGeoRestrictionParameter)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidHeadersForS3Origin)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLambdaFunctionAssociation)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLocationCode)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMinimumProtocolVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOrigin)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOriginAccessControl)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOriginAccessIdentity)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOriginKeepaliveTimeout)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOriginReadTimeout)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidProtocolSettings)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidQueryStringParameters)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRelativePath)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequiredProtocol)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResponseCode)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTTLOrder)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidViewerCertificate)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidWebACLId)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingBody)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchCachePolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchContinuousDeploymentPolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchFieldLevelEncryptionConfig)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchOrigin)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchOriginRequestPolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchRealtimeLogConfig)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResponseHeadersPolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RealtimeLogConfigOwnerMismatch)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyCacheBehaviors)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyCertificates)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyCookieNamesInWhiteList)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionCNAMEs)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributions)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToCachePolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToFieldLevelEncryptionConfig)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToKeyGroup)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToOriginAccessControl)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToOriginRequestPolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToResponseHeadersPolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsWithFunctionAssociations)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsWithLambdaAssociations)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsWithSingleFunctionARN)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyFunctionAssociations)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyHeadersInForwardedValues)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyKeyGroupsAssociatedToDistribution)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyLambdaFunctionAssociations)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyOriginCustomHeaders)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyOriginGroupsPerDistribution)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyOrigins)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyQueryStringParameters)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTrustedSigners)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedKeyGroupDoesNotExist)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedSignerDoesNotExist)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/distribution", "code" => 201}}
      end)
      service.add_operation(:create_distribution_tenant, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateDistributionTenant"
        operation.name = "CreateDistributionTenant"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDistributionTenantRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDistributionTenantResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CNAMEAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityLimitExceeded)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAssociation)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagging)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/distribution-tenant", "code" => 201}}
      end)
      service.add_operation(:create_distribution_with_tags, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateDistributionWithTags"
        operation.name = "CreateDistributionWithTags"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDistributionWithTagsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDistributionWithTagsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CNAMEAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousDeploymentPolicyInUse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalOriginAccessConfiguration)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InconsistentQuantities)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDefaultRootObject)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDomainNameForOriginAccessControl)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidErrorCode)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidForwardCookies)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidFunctionAssociation)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGeoRestrictionParameter)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidHeadersForS3Origin)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLambdaFunctionAssociation)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLocationCode)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMinimumProtocolVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOrigin)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOriginAccessControl)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOriginAccessIdentity)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOriginKeepaliveTimeout)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOriginReadTimeout)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidProtocolSettings)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidQueryStringParameters)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRelativePath)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequiredProtocol)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResponseCode)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagging)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTTLOrder)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidViewerCertificate)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidWebACLId)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingBody)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchCachePolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchContinuousDeploymentPolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchFieldLevelEncryptionConfig)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchOrigin)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchOriginRequestPolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchRealtimeLogConfig)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResponseHeadersPolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RealtimeLogConfigOwnerMismatch)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyCacheBehaviors)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyCertificates)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyCookieNamesInWhiteList)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionCNAMEs)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributions)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToCachePolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToFieldLevelEncryptionConfig)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToKeyGroup)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToOriginAccessControl)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToOriginRequestPolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToResponseHeadersPolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsWithFunctionAssociations)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsWithLambdaAssociations)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsWithSingleFunctionARN)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyFunctionAssociations)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyHeadersInForwardedValues)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyKeyGroupsAssociatedToDistribution)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyLambdaFunctionAssociations)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyOriginCustomHeaders)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyOriginGroupsPerDistribution)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyOrigins)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyQueryStringParameters)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTrustedSigners)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedKeyGroupDoesNotExist)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedSignerDoesNotExist)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/distribution?WithTags", "code" => 201}}
      end)
      service.add_operation(:create_field_level_encryption_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateFieldLevelEncryptionConfig"
        operation.name = "CreateFieldLevelEncryptionConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFieldLevelEncryptionConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFieldLevelEncryptionConfigResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FieldLevelEncryptionConfigAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InconsistentQuantities)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchFieldLevelEncryptionProfile)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: QueryArgProfileEmpty)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyFieldLevelEncryptionConfigs)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyFieldLevelEncryptionContentTypeProfiles)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyFieldLevelEncryptionQueryArgProfiles)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/field-level-encryption", "code" => 201}}
      end)
      service.add_operation(:create_field_level_encryption_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateFieldLevelEncryptionProfile"
        operation.name = "CreateFieldLevelEncryptionProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFieldLevelEncryptionProfileRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFieldLevelEncryptionProfileResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FieldLevelEncryptionProfileAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FieldLevelEncryptionProfileSizeExceeded)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InconsistentQuantities)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchPublicKey)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyFieldLevelEncryptionEncryptionEntities)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyFieldLevelEncryptionFieldPatterns)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyFieldLevelEncryptionProfiles)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/field-level-encryption-profile", "code" => 201}}
      end)
      service.add_operation(:create_function, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateFunction"
        operation.name = "CreateFunction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFunctionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFunctionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionSizeLimitExceeded)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyFunctions)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/function", "code" => 201}}
      end)
      service.add_operation(:create_invalidation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateInvalidation"
        operation.name = "CreateInvalidation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInvalidationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInvalidationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BatchTooLarge)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InconsistentQuantities)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingBody)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchDistribution)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyInvalidationsInProgress)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/distribution/{DistributionId}/invalidation", "code" => 201}}
      end)
      service.add_operation(:create_invalidation_for_distribution_tenant, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateInvalidationForDistributionTenant"
        operation.name = "CreateInvalidationForDistributionTenant"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInvalidationForDistributionTenantRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInvalidationForDistributionTenantResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BatchTooLarge)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InconsistentQuantities)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingBody)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyInvalidationsInProgress)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/distribution-tenant/{Id}/invalidation", "code" => 201}}
      end)
      service.add_operation(:create_key_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateKeyGroup"
        operation.name = "CreateKeyGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateKeyGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateKeyGroupResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KeyGroupAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyKeyGroups)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyPublicKeysInKeyGroup)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/key-group", "code" => 201}}
      end)
      service.add_operation(:create_key_value_store, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateKeyValueStore"
        operation.name = "CreateKeyValueStore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateKeyValueStoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateKeyValueStoreResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityLimitExceeded)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntitySizeLimitExceeded)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/key-value-store", "code" => 201}}
      end)
      service.add_operation(:create_monitoring_subscription, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateMonitoringSubscription"
        operation.name = "CreateMonitoringSubscription"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMonitoringSubscriptionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMonitoringSubscriptionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MonitoringSubscriptionAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchDistribution)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/distributions/{DistributionId}/monitoring-subscription", "code" => 200}}
      end)
      service.add_operation(:create_origin_access_control, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateOriginAccessControl"
        operation.name = "CreateOriginAccessControl"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOriginAccessControlRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOriginAccessControlResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OriginAccessControlAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyOriginAccessControls)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/origin-access-control", "code" => 201}}
      end)
      service.add_operation(:create_origin_request_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateOriginRequestPolicy"
        operation.name = "CreateOriginRequestPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOriginRequestPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOriginRequestPolicyResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InconsistentQuantities)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OriginRequestPolicyAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyCookiesInOriginRequestPolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyHeadersInOriginRequestPolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyOriginRequestPolicies)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyQueryStringsInOriginRequestPolicy)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/origin-request-policy", "code" => 201}}
      end)
      service.add_operation(:create_public_key, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreatePublicKey"
        operation.name = "CreatePublicKey"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePublicKeyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePublicKeyResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PublicKeyAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyPublicKeys)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/public-key", "code" => 201}}
      end)
      service.add_operation(:create_realtime_log_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateRealtimeLogConfig"
        operation.name = "CreateRealtimeLogConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRealtimeLogConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRealtimeLogConfigResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RealtimeLogConfigAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRealtimeLogConfigs)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/realtime-log-config", "code" => 201}}
      end)
      service.add_operation(:create_response_headers_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateResponseHeadersPolicy"
        operation.name = "CreateResponseHeadersPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateResponseHeadersPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateResponseHeadersPolicyResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InconsistentQuantities)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseHeadersPolicyAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooLongCSPInResponseHeadersPolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyCustomHeadersInResponseHeadersPolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRemoveHeadersInResponseHeadersPolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyResponseHeadersPolicies)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/response-headers-policy", "code" => 201}}
      end)
      service.add_operation(:create_streaming_distribution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateStreamingDistribution"
        operation.name = "CreateStreamingDistribution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStreamingDistributionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStreamingDistributionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CNAMEAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InconsistentQuantities)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOrigin)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOriginAccessControl)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOriginAccessIdentity)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingBody)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StreamingDistributionAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyStreamingDistributionCNAMEs)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyStreamingDistributions)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTrustedSigners)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedSignerDoesNotExist)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/streaming-distribution", "code" => 201}}
      end)
      service.add_operation(:create_streaming_distribution_with_tags, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateStreamingDistributionWithTags"
        operation.name = "CreateStreamingDistributionWithTags"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStreamingDistributionWithTagsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStreamingDistributionWithTagsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CNAMEAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InconsistentQuantities)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOrigin)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOriginAccessControl)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOriginAccessIdentity)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagging)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingBody)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StreamingDistributionAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyStreamingDistributionCNAMEs)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyStreamingDistributions)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTrustedSigners)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedSignerDoesNotExist)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/streaming-distribution?WithTags", "code" => 201}}
      end)
      service.add_operation(:create_vpc_origin, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateVpcOrigin"
        operation.name = "CreateVpcOrigin"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVpcOriginRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVpcOriginResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityLimitExceeded)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InconsistentQuantities)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagging)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/vpc-origin", "code" => 202}}
      end)
      service.add_operation(:delete_anycast_ip_list, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeleteAnycastIpList"
        operation.name = "DeleteAnycastIpList"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAnycastIpListRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CannotDeleteEntityWhileInUse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalDelete)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-05-31/anycast-ip-list/{Id}", "code" => 204}}
      end)
      service.add_operation(:delete_cache_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeleteCachePolicy"
        operation.name = "DeleteCachePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCachePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CachePolicyInUse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalDelete)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchCachePolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-05-31/cache-policy/{Id}", "code" => 204}}
      end)
      service.add_operation(:delete_cloud_front_origin_access_identity, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeleteCloudFrontOriginAccessIdentity"
        operation.name = "DeleteCloudFrontOriginAccessIdentity"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCloudFrontOriginAccessIdentityRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudFrontOriginAccessIdentityInUse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchCloudFrontOriginAccessIdentity)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-05-31/origin-access-identity/cloudfront/{Id}", "code" => 204}}
      end)
      service.add_operation(:delete_connection_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeleteConnectionGroup"
        operation.name = "DeleteConnectionGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConnectionGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CannotDeleteEntityWhileInUse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotDisabled)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-05-31/connection-group/{Id}", "code" => 204}}
      end)
      service.add_operation(:delete_continuous_deployment_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeleteContinuousDeploymentPolicy"
        operation.name = "DeleteContinuousDeploymentPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteContinuousDeploymentPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousDeploymentPolicyInUse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchContinuousDeploymentPolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-05-31/continuous-deployment-policy/{Id}", "code" => 204}}
      end)
      service.add_operation(:delete_distribution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeleteDistribution"
        operation.name = "DeleteDistribution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDistributionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DistributionNotDisabled)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchDistribution)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUse)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-05-31/distribution/{Id}", "code" => 204}}
      end)
      service.add_operation(:delete_distribution_tenant, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeleteDistributionTenant"
        operation.name = "DeleteDistributionTenant"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDistributionTenantRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotDisabled)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-05-31/distribution-tenant/{Id}", "code" => 204}}
      end)
      service.add_operation(:delete_field_level_encryption_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeleteFieldLevelEncryptionConfig"
        operation.name = "DeleteFieldLevelEncryptionConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFieldLevelEncryptionConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FieldLevelEncryptionConfigInUse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchFieldLevelEncryptionConfig)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-05-31/field-level-encryption/{Id}", "code" => 204}}
      end)
      service.add_operation(:delete_field_level_encryption_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeleteFieldLevelEncryptionProfile"
        operation.name = "DeleteFieldLevelEncryptionProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFieldLevelEncryptionProfileRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FieldLevelEncryptionProfileInUse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchFieldLevelEncryptionProfile)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-05-31/field-level-encryption-profile/{Id}", "code" => 204}}
      end)
      service.add_operation(:delete_function, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeleteFunction"
        operation.name = "DeleteFunction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFunctionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionInUse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchFunctionExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-05-31/function/{Name}", "code" => 204}}
      end)
      service.add_operation(:delete_key_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeleteKeyGroup"
        operation.name = "DeleteKeyGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteKeyGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResource)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUse)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-05-31/key-group/{Id}", "code" => 204}}
      end)
      service.add_operation(:delete_key_value_store, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeleteKeyValueStore"
        operation.name = "DeleteKeyValueStore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteKeyValueStoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CannotDeleteEntityWhileInUse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-05-31/key-value-store/{Name}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_monitoring_subscription, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeleteMonitoringSubscription"
        operation.name = "DeleteMonitoringSubscription"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMonitoringSubscriptionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMonitoringSubscriptionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchDistribution)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchMonitoringSubscription)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-05-31/distributions/{DistributionId}/monitoring-subscription", "code" => 200}}
      end)
      service.add_operation(:delete_origin_access_control, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeleteOriginAccessControl"
        operation.name = "DeleteOriginAccessControl"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteOriginAccessControlRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchOriginAccessControl)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OriginAccessControlInUse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-05-31/origin-access-control/{Id}", "code" => 204}}
      end)
      service.add_operation(:delete_origin_request_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeleteOriginRequestPolicy"
        operation.name = "DeleteOriginRequestPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteOriginRequestPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalDelete)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchOriginRequestPolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OriginRequestPolicyInUse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-05-31/origin-request-policy/{Id}", "code" => 204}}
      end)
      service.add_operation(:delete_public_key, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeletePublicKey"
        operation.name = "DeletePublicKey"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePublicKeyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchPublicKey)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PublicKeyInUse)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-05-31/public-key/{Id}", "code" => 204}}
      end)
      service.add_operation(:delete_realtime_log_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeleteRealtimeLogConfig"
        operation.name = "DeleteRealtimeLogConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRealtimeLogConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchRealtimeLogConfig)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RealtimeLogConfigInUse)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/delete-realtime-log-config", "code" => 204}}
      end)
      service.add_operation(:delete_response_headers_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeleteResponseHeadersPolicy"
        operation.name = "DeleteResponseHeadersPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResponseHeadersPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalDelete)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResponseHeadersPolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseHeadersPolicyInUse)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-05-31/response-headers-policy/{Id}", "code" => 204}}
      end)
      service.add_operation(:delete_streaming_distribution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeleteStreamingDistribution"
        operation.name = "DeleteStreamingDistribution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteStreamingDistributionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchStreamingDistribution)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StreamingDistributionNotDisabled)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-05-31/streaming-distribution/{Id}", "code" => 204}}
      end)
      service.add_operation(:delete_vpc_origin, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeleteVpcOrigin"
        operation.name = "DeleteVpcOrigin"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVpcOriginRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVpcOriginResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CannotDeleteEntityWhileInUse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalDelete)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-05-31/vpc-origin/{Id}", "code" => 202}}
      end)
      service.add_operation(:describe_function, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DescribeFunction"
        operation.name = "DescribeFunction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFunctionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFunctionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchFunctionExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/function/{Name}/describe", "code" => 200}}
      end)
      service.add_operation(:describe_key_value_store, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DescribeKeyValueStore"
        operation.name = "DescribeKeyValueStore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeKeyValueStoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeKeyValueStoreResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/key-value-store/{Name}", "code" => 200}}
      end)
      service.add_operation(:disassociate_distribution_tenant_web_acl, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DisassociateDistributionTenantWebACL"
        operation.name = "DisassociateDistributionTenantWebACL"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateDistributionTenantWebACLRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateDistributionTenantWebACLResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/distribution-tenant/{Id}/disassociate-web-acl", "code" => 200}}
      end)
      service.add_operation(:disassociate_distribution_web_acl, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DisassociateDistributionWebACL"
        operation.name = "DisassociateDistributionWebACL"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateDistributionWebACLRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateDistributionWebACLResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/distribution/{Id}/disassociate-web-acl", "code" => 200}}
      end)
      service.add_operation(:get_anycast_ip_list, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetAnycastIpList"
        operation.name = "GetAnycastIpList"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAnycastIpListRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAnycastIpListResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/anycast-ip-list/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_cache_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetCachePolicy"
        operation.name = "GetCachePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCachePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCachePolicyResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchCachePolicy)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/cache-policy/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_cache_policy_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetCachePolicyConfig"
        operation.name = "GetCachePolicyConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCachePolicyConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCachePolicyConfigResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchCachePolicy)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/cache-policy/{Id}/config", "code" => 200}}
      end)
      service.add_operation(:get_cloud_front_origin_access_identity, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetCloudFrontOriginAccessIdentity"
        operation.name = "GetCloudFrontOriginAccessIdentity"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCloudFrontOriginAccessIdentityRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCloudFrontOriginAccessIdentityResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchCloudFrontOriginAccessIdentity)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/origin-access-identity/cloudfront/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_cloud_front_origin_access_identity_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetCloudFrontOriginAccessIdentityConfig"
        operation.name = "GetCloudFrontOriginAccessIdentityConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCloudFrontOriginAccessIdentityConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCloudFrontOriginAccessIdentityConfigResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchCloudFrontOriginAccessIdentity)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/origin-access-identity/cloudfront/{Id}/config", "code" => 200}}
      end)
      service.add_operation(:get_connection_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetConnectionGroup"
        operation.name = "GetConnectionGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectionGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectionGroupResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/connection-group/{Identifier}", "code" => 200}}
      end)
      service.add_operation(:get_connection_group_by_routing_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetConnectionGroupByRoutingEndpoint"
        operation.name = "GetConnectionGroupByRoutingEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectionGroupByRoutingEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectionGroupByRoutingEndpointResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/connection-group", "code" => 200}}
      end)
      service.add_operation(:get_continuous_deployment_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetContinuousDeploymentPolicy"
        operation.name = "GetContinuousDeploymentPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetContinuousDeploymentPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetContinuousDeploymentPolicyResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchContinuousDeploymentPolicy)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/continuous-deployment-policy/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_continuous_deployment_policy_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetContinuousDeploymentPolicyConfig"
        operation.name = "GetContinuousDeploymentPolicyConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetContinuousDeploymentPolicyConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetContinuousDeploymentPolicyConfigResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchContinuousDeploymentPolicy)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/continuous-deployment-policy/{Id}/config", "code" => 200}}
      end)
      service.add_operation(:get_distribution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetDistribution"
        operation.name = "GetDistribution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDistributionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDistributionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchDistribution)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/distribution/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_distribution_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetDistributionConfig"
        operation.name = "GetDistributionConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDistributionConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDistributionConfigResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchDistribution)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/distribution/{Id}/config", "code" => 200}}
      end)
      service.add_operation(:get_distribution_tenant, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetDistributionTenant"
        operation.name = "GetDistributionTenant"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDistributionTenantRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDistributionTenantResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/distribution-tenant/{Identifier}", "code" => 200}}
      end)
      service.add_operation(:get_distribution_tenant_by_domain, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetDistributionTenantByDomain"
        operation.name = "GetDistributionTenantByDomain"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDistributionTenantByDomainRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDistributionTenantByDomainResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/distribution-tenant", "code" => 200}}
      end)
      service.add_operation(:get_field_level_encryption, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetFieldLevelEncryption"
        operation.name = "GetFieldLevelEncryption"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFieldLevelEncryptionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFieldLevelEncryptionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchFieldLevelEncryptionConfig)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/field-level-encryption/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_field_level_encryption_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetFieldLevelEncryptionConfig"
        operation.name = "GetFieldLevelEncryptionConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFieldLevelEncryptionConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFieldLevelEncryptionConfigResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchFieldLevelEncryptionConfig)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/field-level-encryption/{Id}/config", "code" => 200}}
      end)
      service.add_operation(:get_field_level_encryption_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetFieldLevelEncryptionProfile"
        operation.name = "GetFieldLevelEncryptionProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFieldLevelEncryptionProfileRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFieldLevelEncryptionProfileResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchFieldLevelEncryptionProfile)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/field-level-encryption-profile/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_field_level_encryption_profile_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetFieldLevelEncryptionProfileConfig"
        operation.name = "GetFieldLevelEncryptionProfileConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFieldLevelEncryptionProfileConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFieldLevelEncryptionProfileConfigResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchFieldLevelEncryptionProfile)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/field-level-encryption-profile/{Id}/config", "code" => 200}}
      end)
      service.add_operation(:get_function, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetFunction"
        operation.name = "GetFunction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFunctionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFunctionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchFunctionExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/function/{Name}", "code" => 200}}
      end)
      service.add_operation(:get_invalidation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetInvalidation"
        operation.name = "GetInvalidation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInvalidationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInvalidationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchDistribution)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchInvalidation)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/distribution/{DistributionId}/invalidation/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_invalidation_for_distribution_tenant, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetInvalidationForDistributionTenant"
        operation.name = "GetInvalidationForDistributionTenant"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInvalidationForDistributionTenantRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInvalidationForDistributionTenantResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchInvalidation)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/distribution-tenant/{DistributionTenantId}/invalidation/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_key_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetKeyGroup"
        operation.name = "GetKeyGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetKeyGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetKeyGroupResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResource)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/key-group/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_key_group_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetKeyGroupConfig"
        operation.name = "GetKeyGroupConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetKeyGroupConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetKeyGroupConfigResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResource)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/key-group/{Id}/config", "code" => 200}}
      end)
      service.add_operation(:get_managed_certificate_details, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetManagedCertificateDetails"
        operation.name = "GetManagedCertificateDetails"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetManagedCertificateDetailsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetManagedCertificateDetailsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/managed-certificate/{Identifier}", "code" => 200}}
      end)
      service.add_operation(:get_monitoring_subscription, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetMonitoringSubscription"
        operation.name = "GetMonitoringSubscription"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMonitoringSubscriptionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMonitoringSubscriptionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchDistribution)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchMonitoringSubscription)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/distributions/{DistributionId}/monitoring-subscription", "code" => 200}}
      end)
      service.add_operation(:get_origin_access_control, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetOriginAccessControl"
        operation.name = "GetOriginAccessControl"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetOriginAccessControlRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetOriginAccessControlResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchOriginAccessControl)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/origin-access-control/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_origin_access_control_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetOriginAccessControlConfig"
        operation.name = "GetOriginAccessControlConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetOriginAccessControlConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetOriginAccessControlConfigResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchOriginAccessControl)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/origin-access-control/{Id}/config", "code" => 200}}
      end)
      service.add_operation(:get_origin_request_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetOriginRequestPolicy"
        operation.name = "GetOriginRequestPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetOriginRequestPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetOriginRequestPolicyResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchOriginRequestPolicy)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/origin-request-policy/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_origin_request_policy_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetOriginRequestPolicyConfig"
        operation.name = "GetOriginRequestPolicyConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetOriginRequestPolicyConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetOriginRequestPolicyConfigResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchOriginRequestPolicy)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/origin-request-policy/{Id}/config", "code" => 200}}
      end)
      service.add_operation(:get_public_key, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetPublicKey"
        operation.name = "GetPublicKey"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPublicKeyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPublicKeyResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchPublicKey)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/public-key/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_public_key_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetPublicKeyConfig"
        operation.name = "GetPublicKeyConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPublicKeyConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPublicKeyConfigResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchPublicKey)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/public-key/{Id}/config", "code" => 200}}
      end)
      service.add_operation(:get_realtime_log_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetRealtimeLogConfig"
        operation.name = "GetRealtimeLogConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRealtimeLogConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRealtimeLogConfigResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchRealtimeLogConfig)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/get-realtime-log-config", "code" => 200}}
      end)
      service.add_operation(:get_response_headers_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetResponseHeadersPolicy"
        operation.name = "GetResponseHeadersPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResponseHeadersPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResponseHeadersPolicyResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResponseHeadersPolicy)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/response-headers-policy/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_response_headers_policy_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetResponseHeadersPolicyConfig"
        operation.name = "GetResponseHeadersPolicyConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResponseHeadersPolicyConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResponseHeadersPolicyConfigResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResponseHeadersPolicy)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/response-headers-policy/{Id}/config", "code" => 200}}
      end)
      service.add_operation(:get_streaming_distribution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetStreamingDistribution"
        operation.name = "GetStreamingDistribution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetStreamingDistributionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetStreamingDistributionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchStreamingDistribution)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/streaming-distribution/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_streaming_distribution_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetStreamingDistributionConfig"
        operation.name = "GetStreamingDistributionConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetStreamingDistributionConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetStreamingDistributionConfigResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchStreamingDistribution)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/streaming-distribution/{Id}/config", "code" => 200}}
      end)
      service.add_operation(:get_vpc_origin, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetVpcOrigin"
        operation.name = "GetVpcOrigin"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVpcOriginRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVpcOriginResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/vpc-origin/{Id}", "code" => 200}}
      end)
      service.add_operation(:list_anycast_ip_lists, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListAnycastIpLists"
        operation.name = "ListAnycastIpLists"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnycastIpListsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnycastIpListsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/anycast-ip-list", "code" => 200}}
      end)
      service.add_operation(:list_cache_policies, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListCachePolicies"
        operation.name = "ListCachePolicies"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCachePoliciesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCachePoliciesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchCachePolicy)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/cache-policy", "code" => 200}}
      end)
      service.add_operation(:list_cloud_front_origin_access_identities, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListCloudFrontOriginAccessIdentities"
        operation.name = "ListCloudFrontOriginAccessIdentities"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCloudFrontOriginAccessIdentitiesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCloudFrontOriginAccessIdentitiesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/origin-access-identity/cloudfront", "code" => 200}}
        operation[:paginator] = Paginators::ListCloudFrontOriginAccessIdentities.new
      end)
      service.add_operation(:list_conflicting_aliases, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListConflictingAliases"
        operation.name = "ListConflictingAliases"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConflictingAliasesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConflictingAliasesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchDistribution)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/conflicting-alias", "code" => 200}}
      end)
      service.add_operation(:list_connection_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListConnectionGroups"
        operation.name = "ListConnectionGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConnectionGroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConnectionGroupsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/connection-groups", "code" => 200}}
        operation[:paginator] = Paginators::ListConnectionGroups.new
      end)
      service.add_operation(:list_continuous_deployment_policies, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListContinuousDeploymentPolicies"
        operation.name = "ListContinuousDeploymentPolicies"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListContinuousDeploymentPoliciesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListContinuousDeploymentPoliciesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchContinuousDeploymentPolicy)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/continuous-deployment-policy", "code" => 200}}
      end)
      service.add_operation(:list_distribution_tenants, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListDistributionTenants"
        operation.name = "ListDistributionTenants"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDistributionTenantsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDistributionTenantsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/distribution-tenants", "code" => 200}}
        operation[:paginator] = Paginators::ListDistributionTenants.new
      end)
      service.add_operation(:list_distribution_tenants_by_customization, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListDistributionTenantsByCustomization"
        operation.name = "ListDistributionTenantsByCustomization"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDistributionTenantsByCustomizationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDistributionTenantsByCustomizationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/distribution-tenants-by-customization", "code" => 200}}
        operation[:paginator] = Paginators::ListDistributionTenantsByCustomization.new
      end)
      service.add_operation(:list_distributions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListDistributions"
        operation.name = "ListDistributions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDistributionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDistributionsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/distribution", "code" => 200}}
        operation[:paginator] = Paginators::ListDistributions.new
      end)
      service.add_operation(:list_distributions_by_anycast_ip_list_id, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListDistributionsByAnycastIpListId"
        operation.name = "ListDistributionsByAnycastIpListId"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDistributionsByAnycastIpListIdRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDistributionsByAnycastIpListIdResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/distributionsByAnycastIpListId/{AnycastIpListId}", "code" => 200}}
      end)
      service.add_operation(:list_distributions_by_cache_policy_id, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListDistributionsByCachePolicyId"
        operation.name = "ListDistributionsByCachePolicyId"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDistributionsByCachePolicyIdRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDistributionsByCachePolicyIdResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchCachePolicy)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/distributionsByCachePolicyId/{CachePolicyId}", "code" => 200}}
      end)
      service.add_operation(:list_distributions_by_connection_mode, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListDistributionsByConnectionMode"
        operation.name = "ListDistributionsByConnectionMode"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDistributionsByConnectionModeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDistributionsByConnectionModeResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/distributionsByConnectionMode/{ConnectionMode}", "code" => 200}}
        operation[:paginator] = Paginators::ListDistributionsByConnectionMode.new
      end)
      service.add_operation(:list_distributions_by_key_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListDistributionsByKeyGroup"
        operation.name = "ListDistributionsByKeyGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDistributionsByKeyGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDistributionsByKeyGroupResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResource)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/distributionsByKeyGroupId/{KeyGroupId}", "code" => 200}}
      end)
      service.add_operation(:list_distributions_by_origin_request_policy_id, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListDistributionsByOriginRequestPolicyId"
        operation.name = "ListDistributionsByOriginRequestPolicyId"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDistributionsByOriginRequestPolicyIdRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDistributionsByOriginRequestPolicyIdResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchOriginRequestPolicy)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/distributionsByOriginRequestPolicyId/{OriginRequestPolicyId}", "code" => 200}}
      end)
      service.add_operation(:list_distributions_by_realtime_log_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListDistributionsByRealtimeLogConfig"
        operation.name = "ListDistributionsByRealtimeLogConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDistributionsByRealtimeLogConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDistributionsByRealtimeLogConfigResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/distributionsByRealtimeLogConfig", "code" => 200}}
      end)
      service.add_operation(:list_distributions_by_response_headers_policy_id, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListDistributionsByResponseHeadersPolicyId"
        operation.name = "ListDistributionsByResponseHeadersPolicyId"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDistributionsByResponseHeadersPolicyIdRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDistributionsByResponseHeadersPolicyIdResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResponseHeadersPolicy)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/distributionsByResponseHeadersPolicyId/{ResponseHeadersPolicyId}", "code" => 200}}
      end)
      service.add_operation(:list_distributions_by_vpc_origin_id, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListDistributionsByVpcOriginId"
        operation.name = "ListDistributionsByVpcOriginId"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDistributionsByVpcOriginIdRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDistributionsByVpcOriginIdResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/distributionsByVpcOriginId/{VpcOriginId}", "code" => 200}}
      end)
      service.add_operation(:list_distributions_by_web_acl_id, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListDistributionsByWebACLId"
        operation.name = "ListDistributionsByWebACLId"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDistributionsByWebACLIdRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDistributionsByWebACLIdResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidWebACLId)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/distributionsByWebACLId/{WebACLId}", "code" => 200}}
      end)
      service.add_operation(:list_domain_conflicts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListDomainConflicts"
        operation.name = "ListDomainConflicts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainConflictsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainConflictsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/domain-conflicts", "code" => 200}}
        operation[:paginator] = Paginators::ListDomainConflicts.new
      end)
      service.add_operation(:list_field_level_encryption_configs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListFieldLevelEncryptionConfigs"
        operation.name = "ListFieldLevelEncryptionConfigs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFieldLevelEncryptionConfigsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFieldLevelEncryptionConfigsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/field-level-encryption", "code" => 200}}
      end)
      service.add_operation(:list_field_level_encryption_profiles, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListFieldLevelEncryptionProfiles"
        operation.name = "ListFieldLevelEncryptionProfiles"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFieldLevelEncryptionProfilesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFieldLevelEncryptionProfilesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/field-level-encryption-profile", "code" => 200}}
      end)
      service.add_operation(:list_functions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListFunctions"
        operation.name = "ListFunctions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFunctionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFunctionsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/function", "code" => 200}}
      end)
      service.add_operation(:list_invalidations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListInvalidations"
        operation.name = "ListInvalidations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInvalidationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInvalidationsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchDistribution)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/distribution/{DistributionId}/invalidation", "code" => 200}}
        operation[:paginator] = Paginators::ListInvalidations.new
      end)
      service.add_operation(:list_invalidations_for_distribution_tenant, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListInvalidationsForDistributionTenant"
        operation.name = "ListInvalidationsForDistributionTenant"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInvalidationsForDistributionTenantRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInvalidationsForDistributionTenantResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/distribution-tenant/{Id}/invalidation", "code" => 200}}
        operation[:paginator] = Paginators::ListInvalidationsForDistributionTenant.new
      end)
      service.add_operation(:list_key_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListKeyGroups"
        operation.name = "ListKeyGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListKeyGroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListKeyGroupsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/key-group", "code" => 200}}
      end)
      service.add_operation(:list_key_value_stores, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListKeyValueStores"
        operation.name = "ListKeyValueStores"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListKeyValueStoresRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListKeyValueStoresResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/key-value-store", "code" => 200}}
        operation[:paginator] = Paginators::ListKeyValueStores.new
      end)
      service.add_operation(:list_origin_access_controls, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListOriginAccessControls"
        operation.name = "ListOriginAccessControls"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOriginAccessControlsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOriginAccessControlsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/origin-access-control", "code" => 200}}
        operation[:paginator] = Paginators::ListOriginAccessControls.new
      end)
      service.add_operation(:list_origin_request_policies, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListOriginRequestPolicies"
        operation.name = "ListOriginRequestPolicies"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOriginRequestPoliciesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOriginRequestPoliciesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchOriginRequestPolicy)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/origin-request-policy", "code" => 200}}
      end)
      service.add_operation(:list_public_keys, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListPublicKeys"
        operation.name = "ListPublicKeys"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPublicKeysRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPublicKeysResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/public-key", "code" => 200}}
        operation[:paginator] = Paginators::ListPublicKeys.new
      end)
      service.add_operation(:list_realtime_log_configs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListRealtimeLogConfigs"
        operation.name = "ListRealtimeLogConfigs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRealtimeLogConfigsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRealtimeLogConfigsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchRealtimeLogConfig)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/realtime-log-config", "code" => 200}}
      end)
      service.add_operation(:list_response_headers_policies, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListResponseHeadersPolicies"
        operation.name = "ListResponseHeadersPolicies"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResponseHeadersPoliciesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResponseHeadersPoliciesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResponseHeadersPolicy)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/response-headers-policy", "code" => 200}}
      end)
      service.add_operation(:list_streaming_distributions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListStreamingDistributions"
        operation.name = "ListStreamingDistributions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStreamingDistributionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStreamingDistributionsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/streaming-distribution", "code" => 200}}
        operation[:paginator] = Paginators::ListStreamingDistributions.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagging)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResource)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/tagging", "code" => 200}}
      end)
      service.add_operation(:list_vpc_origins, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListVpcOrigins"
        operation.name = "ListVpcOrigins"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVpcOriginsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVpcOriginsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/vpc-origin", "code" => 200}}
      end)
      service.add_operation(:publish_function, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#PublishFunction"
        operation.name = "PublishFunction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PublishFunctionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PublishFunctionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchFunctionExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/function/{Name}/publish", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagging)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResource)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/tagging?Operation=Tag", "code" => 204}}
      end)
      service.add_operation(:test_function, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#TestFunction"
        operation.name = "TestFunction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TestFunctionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TestFunctionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchFunctionExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TestFunctionFailed)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/function/{Name}/test", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagging)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResource)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/tagging?Operation=Untag", "code" => 204}}
      end)
      service.add_operation(:update_cache_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdateCachePolicy"
        operation.name = "UpdateCachePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCachePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCachePolicyResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CachePolicyAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalUpdate)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InconsistentQuantities)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchCachePolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyCookiesInCachePolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyHeadersInCachePolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyQueryStringsInCachePolicy)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/cache-policy/{Id}", "code" => 200}}
      end)
      service.add_operation(:update_cloud_front_origin_access_identity, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdateCloudFrontOriginAccessIdentity"
        operation.name = "UpdateCloudFrontOriginAccessIdentity"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCloudFrontOriginAccessIdentityRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCloudFrontOriginAccessIdentityResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalUpdate)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InconsistentQuantities)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingBody)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchCloudFrontOriginAccessIdentity)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/origin-access-identity/cloudfront/{Id}/config", "code" => 200}}
      end)
      service.add_operation(:update_connection_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdateConnectionGroup"
        operation.name = "UpdateConnectionGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectionGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectionGroupResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityLimitExceeded)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUse)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/connection-group/{Id}", "code" => 200}}
      end)
      service.add_operation(:update_continuous_deployment_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdateContinuousDeploymentPolicy"
        operation.name = "UpdateContinuousDeploymentPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateContinuousDeploymentPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateContinuousDeploymentPolicyResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InconsistentQuantities)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchContinuousDeploymentPolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StagingDistributionInUse)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/continuous-deployment-policy/{Id}", "code" => 200}}
      end)
      service.add_operation(:update_distribution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdateDistribution"
        operation.name = "UpdateDistribution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDistributionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDistributionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CNAMEAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousDeploymentPolicyInUse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalOriginAccessConfiguration)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalUpdate)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InconsistentQuantities)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDefaultRootObject)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDomainNameForOriginAccessControl)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidErrorCode)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidForwardCookies)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidFunctionAssociation)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGeoRestrictionParameter)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidHeadersForS3Origin)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLambdaFunctionAssociation)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLocationCode)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMinimumProtocolVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOriginAccessControl)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOriginAccessIdentity)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOriginKeepaliveTimeout)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOriginReadTimeout)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidQueryStringParameters)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRelativePath)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequiredProtocol)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResponseCode)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTTLOrder)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidViewerCertificate)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidWebACLId)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingBody)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchCachePolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchContinuousDeploymentPolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchDistribution)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchFieldLevelEncryptionConfig)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchOrigin)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchOriginRequestPolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchRealtimeLogConfig)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResponseHeadersPolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RealtimeLogConfigOwnerMismatch)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StagingDistributionInUse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyCacheBehaviors)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyCertificates)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyCookieNamesInWhiteList)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionCNAMEs)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToCachePolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToFieldLevelEncryptionConfig)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToKeyGroup)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToOriginAccessControl)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToOriginRequestPolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToResponseHeadersPolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsWithFunctionAssociations)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsWithLambdaAssociations)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsWithSingleFunctionARN)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyFunctionAssociations)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyHeadersInForwardedValues)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyKeyGroupsAssociatedToDistribution)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyLambdaFunctionAssociations)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyOriginCustomHeaders)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyOriginGroupsPerDistribution)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyOrigins)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyQueryStringParameters)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTrustedSigners)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedKeyGroupDoesNotExist)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedSignerDoesNotExist)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/distribution/{Id}/config", "code" => 200}}
      end)
      service.add_operation(:update_distribution_tenant, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdateDistributionTenant"
        operation.name = "UpdateDistributionTenant"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDistributionTenantRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDistributionTenantResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CNAMEAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityLimitExceeded)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAssociation)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/distribution-tenant/{Id}", "code" => 200}}
      end)
      service.add_operation(:update_distribution_with_staging_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdateDistributionWithStagingConfig"
        operation.name = "UpdateDistributionWithStagingConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDistributionWithStagingConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDistributionWithStagingConfigResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CNAMEAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalUpdate)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InconsistentQuantities)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDefaultRootObject)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidErrorCode)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidForwardCookies)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidFunctionAssociation)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGeoRestrictionParameter)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidHeadersForS3Origin)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLambdaFunctionAssociation)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLocationCode)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMinimumProtocolVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOriginAccessControl)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOriginAccessIdentity)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOriginKeepaliveTimeout)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOriginReadTimeout)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidQueryStringParameters)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRelativePath)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequiredProtocol)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResponseCode)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTTLOrder)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidViewerCertificate)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidWebACLId)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingBody)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchCachePolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchDistribution)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchFieldLevelEncryptionConfig)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchOrigin)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchOriginRequestPolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchRealtimeLogConfig)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResponseHeadersPolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RealtimeLogConfigOwnerMismatch)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyCacheBehaviors)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyCertificates)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyCookieNamesInWhiteList)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionCNAMEs)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToCachePolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToFieldLevelEncryptionConfig)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToKeyGroup)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToOriginAccessControl)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToOriginRequestPolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsAssociatedToResponseHeadersPolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsWithFunctionAssociations)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsWithLambdaAssociations)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyDistributionsWithSingleFunctionARN)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyFunctionAssociations)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyHeadersInForwardedValues)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyKeyGroupsAssociatedToDistribution)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyLambdaFunctionAssociations)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyOriginCustomHeaders)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyOriginGroupsPerDistribution)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyOrigins)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyQueryStringParameters)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTrustedSigners)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedKeyGroupDoesNotExist)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedSignerDoesNotExist)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/distribution/{Id}/promote-staging-config", "code" => 200}}
      end)
      service.add_operation(:update_domain_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdateDomainAssociation"
        operation.name = "UpdateDomainAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDomainAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDomainAssociationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalUpdate)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/domain-association", "code" => 200}}
      end)
      service.add_operation(:update_field_level_encryption_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdateFieldLevelEncryptionConfig"
        operation.name = "UpdateFieldLevelEncryptionConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFieldLevelEncryptionConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFieldLevelEncryptionConfigResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalUpdate)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InconsistentQuantities)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchFieldLevelEncryptionConfig)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchFieldLevelEncryptionProfile)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: QueryArgProfileEmpty)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyFieldLevelEncryptionContentTypeProfiles)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyFieldLevelEncryptionQueryArgProfiles)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/field-level-encryption/{Id}/config", "code" => 200}}
      end)
      service.add_operation(:update_field_level_encryption_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdateFieldLevelEncryptionProfile"
        operation.name = "UpdateFieldLevelEncryptionProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFieldLevelEncryptionProfileRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFieldLevelEncryptionProfileResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FieldLevelEncryptionProfileAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FieldLevelEncryptionProfileSizeExceeded)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalUpdate)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InconsistentQuantities)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchFieldLevelEncryptionProfile)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchPublicKey)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyFieldLevelEncryptionEncryptionEntities)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyFieldLevelEncryptionFieldPatterns)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/field-level-encryption-profile/{Id}/config", "code" => 200}}
      end)
      service.add_operation(:update_function, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdateFunction"
        operation.name = "UpdateFunction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFunctionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFunctionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionSizeLimitExceeded)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchFunctionExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/function/{Name}", "code" => 200}}
      end)
      service.add_operation(:update_key_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdateKeyGroup"
        operation.name = "UpdateKeyGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateKeyGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateKeyGroupResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: KeyGroupAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResource)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyPublicKeysInKeyGroup)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/key-group/{Id}", "code" => 200}}
      end)
      service.add_operation(:update_key_value_store, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdateKeyValueStore"
        operation.name = "UpdateKeyValueStore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateKeyValueStoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateKeyValueStoreResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/key-value-store/{Name}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_origin_access_control, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdateOriginAccessControl"
        operation.name = "UpdateOriginAccessControl"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateOriginAccessControlRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateOriginAccessControlResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalUpdate)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchOriginAccessControl)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OriginAccessControlAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/origin-access-control/{Id}/config", "code" => 200}}
      end)
      service.add_operation(:update_origin_request_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdateOriginRequestPolicy"
        operation.name = "UpdateOriginRequestPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateOriginRequestPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateOriginRequestPolicyResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalUpdate)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InconsistentQuantities)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchOriginRequestPolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OriginRequestPolicyAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyCookiesInOriginRequestPolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyHeadersInOriginRequestPolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyQueryStringsInOriginRequestPolicy)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/origin-request-policy/{Id}", "code" => 200}}
      end)
      service.add_operation(:update_public_key, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdatePublicKey"
        operation.name = "UpdatePublicKey"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePublicKeyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePublicKeyResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CannotChangeImmutablePublicKeyFields)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalUpdate)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchPublicKey)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/public-key/{Id}/config", "code" => 200}}
      end)
      service.add_operation(:update_realtime_log_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdateRealtimeLogConfig"
        operation.name = "UpdateRealtimeLogConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRealtimeLogConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRealtimeLogConfigResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchRealtimeLogConfig)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/realtime-log-config", "code" => 200}}
      end)
      service.add_operation(:update_response_headers_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdateResponseHeadersPolicy"
        operation.name = "UpdateResponseHeadersPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResponseHeadersPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResponseHeadersPolicyResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalUpdate)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InconsistentQuantities)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResponseHeadersPolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseHeadersPolicyAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooLongCSPInResponseHeadersPolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyCustomHeadersInResponseHeadersPolicy)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRemoveHeadersInResponseHeadersPolicy)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/response-headers-policy/{Id}", "code" => 200}}
      end)
      service.add_operation(:update_streaming_distribution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdateStreamingDistribution"
        operation.name = "UpdateStreamingDistribution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStreamingDistributionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStreamingDistributionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CNAMEAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalUpdate)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InconsistentQuantities)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOriginAccessControl)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOriginAccessIdentity)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingBody)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchStreamingDistribution)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyStreamingDistributionCNAMEs)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTrustedSigners)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedSignerDoesNotExist)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/streaming-distribution/{Id}/config", "code" => 200}}
      end)
      service.add_operation(:update_vpc_origin, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdateVpcOrigin"
        operation.name = "UpdateVpcOrigin"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVpcOriginRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVpcOriginResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CannotUpdateEntityWhileInUse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityLimitExceeded)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalUpdate)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InconsistentQuantities)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIfMatchVersion)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreconditionFailed)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperation)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/vpc-origin/{Id}", "code" => 202}}
      end)
      service.add_operation(:verify_dns_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#VerifyDnsConfiguration"
        operation.name = "VerifyDnsConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: VerifyDnsConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: VerifyDnsConfigurationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDenied)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgument)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/verify-dns-configuration", "code" => 200}}
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
