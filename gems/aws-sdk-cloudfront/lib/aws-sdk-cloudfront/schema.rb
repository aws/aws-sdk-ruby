# frozen_string_literal: true

# This is generated code!

module Aws::CloudFront
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessControlAllowHeadersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#AccessControlAllowHeadersList", name: "AccessControlAllowHeadersList")
    AccessControlAllowMethodsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#AccessControlAllowMethodsList", name: "AccessControlAllowMethodsList")
    AccessControlAllowOriginsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#AccessControlAllowOriginsList", name: "AccessControlAllowOriginsList")
    AccessControlExposeHeadersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#AccessControlExposeHeadersList", name: "AccessControlExposeHeadersList")
    AccessDenied = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#AccessDenied", name: "AccessDenied", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ActiveTrustedKeyGroups = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ActiveTrustedKeyGroups", name: "ActiveTrustedKeyGroups")
    ActiveTrustedSigners = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ActiveTrustedSigners", name: "ActiveTrustedSigners")
    AliasICPRecordal = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#AliasICPRecordal", name: "AliasICPRecordal")
    AliasICPRecordals = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#AliasICPRecordals", name: "AliasICPRecordals")
    AliasList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#AliasList", name: "AliasList")
    Aliases = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#Aliases", name: "Aliases")
    AllowedMethods = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#AllowedMethods", name: "AllowedMethods")
    AnycastIpList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#AnycastIpList", name: "AnycastIpList")
    AnycastIpListCollection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#AnycastIpListCollection", name: "AnycastIpListCollection")
    AnycastIpListName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudfront#AnycastIpListName", name: "AnycastIpListName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]{1,64}$"})
    AnycastIpListSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#AnycastIpListSummaries", name: "AnycastIpListSummaries")
    AnycastIpListSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#AnycastIpListSummary", name: "AnycastIpListSummary")
    AnycastIps = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#AnycastIps", name: "AnycastIps")
    AssociateAliasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#AssociateAliasRequest", name: "AssociateAliasRequest")
    AssociateDistributionTenantWebACLRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#AssociateDistributionTenantWebACLRequest", name: "AssociateDistributionTenantWebACLRequest")
    AssociateDistributionTenantWebACLResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#AssociateDistributionTenantWebACLResult", name: "AssociateDistributionTenantWebACLResult")
    AssociateDistributionWebACLRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#AssociateDistributionWebACLRequest", name: "AssociateDistributionWebACLRequest")
    AssociateDistributionWebACLResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#AssociateDistributionWebACLResult", name: "AssociateDistributionWebACLResult")
    AwsAccountNumberList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#AwsAccountNumberList", name: "AwsAccountNumberList")
    BatchTooLarge = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#BatchTooLarge", name: "BatchTooLarge", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 413})
    CNAMEAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CNAMEAlreadyExists", name: "CNAMEAlreadyExists", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CacheBehavior = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CacheBehavior", name: "CacheBehavior")
    CacheBehaviorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#CacheBehaviorList", name: "CacheBehaviorList")
    CacheBehaviors = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CacheBehaviors", name: "CacheBehaviors")
    CachePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CachePolicy", name: "CachePolicy")
    CachePolicyAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CachePolicyAlreadyExists", name: "CachePolicyAlreadyExists", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CachePolicyConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CachePolicyConfig", name: "CachePolicyConfig")
    CachePolicyCookieBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#CachePolicyCookieBehavior", name: "CachePolicyCookieBehavior")
    CachePolicyCookiesConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CachePolicyCookiesConfig", name: "CachePolicyCookiesConfig")
    CachePolicyHeaderBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#CachePolicyHeaderBehavior", name: "CachePolicyHeaderBehavior")
    CachePolicyHeadersConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CachePolicyHeadersConfig", name: "CachePolicyHeadersConfig")
    CachePolicyInUse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CachePolicyInUse", name: "CachePolicyInUse", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CachePolicyList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CachePolicyList", name: "CachePolicyList")
    CachePolicyQueryStringBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#CachePolicyQueryStringBehavior", name: "CachePolicyQueryStringBehavior")
    CachePolicyQueryStringsConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CachePolicyQueryStringsConfig", name: "CachePolicyQueryStringsConfig")
    CachePolicySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CachePolicySummary", name: "CachePolicySummary")
    CachePolicySummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#CachePolicySummaryList", name: "CachePolicySummaryList")
    CachePolicyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#CachePolicyType", name: "CachePolicyType")
    CachedMethods = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CachedMethods", name: "CachedMethods")
    CannotChangeImmutablePublicKeyFields = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CannotChangeImmutablePublicKeyFields", name: "CannotChangeImmutablePublicKeyFields", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CannotDeleteEntityWhileInUse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CannotDeleteEntityWhileInUse", name: "CannotDeleteEntityWhileInUse", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CannotUpdateEntityWhileInUse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CannotUpdateEntityWhileInUse", name: "CannotUpdateEntityWhileInUse", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    Certificate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#Certificate", name: "Certificate")
    CertificateSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#CertificateSource", name: "CertificateSource")
    CertificateTransparencyLoggingPreference = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#CertificateTransparencyLoggingPreference", name: "CertificateTransparencyLoggingPreference")
    CloudFrontOriginAccessIdentity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CloudFrontOriginAccessIdentity", name: "CloudFrontOriginAccessIdentity")
    CloudFrontOriginAccessIdentityAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CloudFrontOriginAccessIdentityAlreadyExists", name: "CloudFrontOriginAccessIdentityAlreadyExists", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CloudFrontOriginAccessIdentityConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CloudFrontOriginAccessIdentityConfig", name: "CloudFrontOriginAccessIdentityConfig")
    CloudFrontOriginAccessIdentityInUse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CloudFrontOriginAccessIdentityInUse", name: "CloudFrontOriginAccessIdentityInUse", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CloudFrontOriginAccessIdentityList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CloudFrontOriginAccessIdentityList", name: "CloudFrontOriginAccessIdentityList")
    CloudFrontOriginAccessIdentitySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CloudFrontOriginAccessIdentitySummary", name: "CloudFrontOriginAccessIdentitySummary")
    CloudFrontOriginAccessIdentitySummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#CloudFrontOriginAccessIdentitySummaryList", name: "CloudFrontOriginAccessIdentitySummaryList")
    CommentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudfront#CommentType", name: "CommentType", traits: {"smithy.api#sensitive" => {}})
    ConflictingAlias = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ConflictingAlias", name: "ConflictingAlias")
    ConflictingAliases = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#ConflictingAliases", name: "ConflictingAliases")
    ConflictingAliasesList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ConflictingAliasesList", name: "ConflictingAliasesList")
    ConnectionGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ConnectionGroup", name: "ConnectionGroup")
    ConnectionGroupAssociationFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ConnectionGroupAssociationFilter", name: "ConnectionGroupAssociationFilter")
    ConnectionGroupSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ConnectionGroupSummary", name: "ConnectionGroupSummary")
    ConnectionGroupSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#ConnectionGroupSummaryList", name: "ConnectionGroupSummaryList")
    ConnectionMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#ConnectionMode", name: "ConnectionMode")
    ContentTypeProfile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ContentTypeProfile", name: "ContentTypeProfile")
    ContentTypeProfileConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ContentTypeProfileConfig", name: "ContentTypeProfileConfig")
    ContentTypeProfileList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#ContentTypeProfileList", name: "ContentTypeProfileList")
    ContentTypeProfiles = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ContentTypeProfiles", name: "ContentTypeProfiles")
    ContinuousDeploymentPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ContinuousDeploymentPolicy", name: "ContinuousDeploymentPolicy")
    ContinuousDeploymentPolicyAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ContinuousDeploymentPolicyAlreadyExists", name: "ContinuousDeploymentPolicyAlreadyExists", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContinuousDeploymentPolicyConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ContinuousDeploymentPolicyConfig", name: "ContinuousDeploymentPolicyConfig")
    ContinuousDeploymentPolicyInUse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ContinuousDeploymentPolicyInUse", name: "ContinuousDeploymentPolicyInUse", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContinuousDeploymentPolicyList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ContinuousDeploymentPolicyList", name: "ContinuousDeploymentPolicyList")
    ContinuousDeploymentPolicySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ContinuousDeploymentPolicySummary", name: "ContinuousDeploymentPolicySummary")
    ContinuousDeploymentPolicySummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#ContinuousDeploymentPolicySummaryList", name: "ContinuousDeploymentPolicySummaryList")
    ContinuousDeploymentPolicyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#ContinuousDeploymentPolicyType", name: "ContinuousDeploymentPolicyType")
    ContinuousDeploymentSingleHeaderConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ContinuousDeploymentSingleHeaderConfig", name: "ContinuousDeploymentSingleHeaderConfig")
    ContinuousDeploymentSingleWeightConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ContinuousDeploymentSingleWeightConfig", name: "ContinuousDeploymentSingleWeightConfig")
    CookieNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#CookieNameList", name: "CookieNameList")
    CookieNames = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CookieNames", name: "CookieNames")
    CookiePreference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CookiePreference", name: "CookiePreference")
    CopyDistributionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CopyDistributionRequest", name: "CopyDistributionRequest")
    CopyDistributionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CopyDistributionResult", name: "CopyDistributionResult")
    CreateAnycastIpListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateAnycastIpListRequest", name: "CreateAnycastIpListRequest")
    CreateAnycastIpListResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateAnycastIpListResult", name: "CreateAnycastIpListResult")
    CreateCachePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateCachePolicyRequest", name: "CreateCachePolicyRequest")
    CreateCachePolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateCachePolicyResult", name: "CreateCachePolicyResult")
    CreateCloudFrontOriginAccessIdentityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateCloudFrontOriginAccessIdentityRequest", name: "CreateCloudFrontOriginAccessIdentityRequest")
    CreateCloudFrontOriginAccessIdentityResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateCloudFrontOriginAccessIdentityResult", name: "CreateCloudFrontOriginAccessIdentityResult")
    CreateConnectionGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateConnectionGroupRequest", name: "CreateConnectionGroupRequest")
    CreateConnectionGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateConnectionGroupResult", name: "CreateConnectionGroupResult")
    CreateContinuousDeploymentPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateContinuousDeploymentPolicyRequest", name: "CreateContinuousDeploymentPolicyRequest")
    CreateContinuousDeploymentPolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateContinuousDeploymentPolicyResult", name: "CreateContinuousDeploymentPolicyResult")
    CreateDistributionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateDistributionRequest", name: "CreateDistributionRequest")
    CreateDistributionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateDistributionResult", name: "CreateDistributionResult")
    CreateDistributionTenantRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateDistributionTenantRequest", name: "CreateDistributionTenantRequest")
    CreateDistributionTenantResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateDistributionTenantResult", name: "CreateDistributionTenantResult")
    CreateDistributionWithTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateDistributionWithTagsRequest", name: "CreateDistributionWithTagsRequest")
    CreateDistributionWithTagsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateDistributionWithTagsResult", name: "CreateDistributionWithTagsResult")
    CreateFieldLevelEncryptionConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateFieldLevelEncryptionConfigRequest", name: "CreateFieldLevelEncryptionConfigRequest")
    CreateFieldLevelEncryptionConfigResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateFieldLevelEncryptionConfigResult", name: "CreateFieldLevelEncryptionConfigResult")
    CreateFieldLevelEncryptionProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateFieldLevelEncryptionProfileRequest", name: "CreateFieldLevelEncryptionProfileRequest")
    CreateFieldLevelEncryptionProfileResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateFieldLevelEncryptionProfileResult", name: "CreateFieldLevelEncryptionProfileResult")
    CreateFunctionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateFunctionRequest", name: "CreateFunctionRequest")
    CreateFunctionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateFunctionResult", name: "CreateFunctionResult")
    CreateInvalidationForDistributionTenantRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateInvalidationForDistributionTenantRequest", name: "CreateInvalidationForDistributionTenantRequest")
    CreateInvalidationForDistributionTenantResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateInvalidationForDistributionTenantResult", name: "CreateInvalidationForDistributionTenantResult")
    CreateInvalidationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateInvalidationRequest", name: "CreateInvalidationRequest")
    CreateInvalidationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateInvalidationResult", name: "CreateInvalidationResult")
    CreateKeyGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateKeyGroupRequest", name: "CreateKeyGroupRequest")
    CreateKeyGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateKeyGroupResult", name: "CreateKeyGroupResult")
    CreateKeyValueStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateKeyValueStoreRequest", name: "CreateKeyValueStoreRequest")
    CreateKeyValueStoreResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateKeyValueStoreResult", name: "CreateKeyValueStoreResult")
    CreateMonitoringSubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateMonitoringSubscriptionRequest", name: "CreateMonitoringSubscriptionRequest")
    CreateMonitoringSubscriptionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateMonitoringSubscriptionResult", name: "CreateMonitoringSubscriptionResult")
    CreateOriginAccessControlRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateOriginAccessControlRequest", name: "CreateOriginAccessControlRequest")
    CreateOriginAccessControlResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateOriginAccessControlResult", name: "CreateOriginAccessControlResult")
    CreateOriginRequestPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateOriginRequestPolicyRequest", name: "CreateOriginRequestPolicyRequest")
    CreateOriginRequestPolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateOriginRequestPolicyResult", name: "CreateOriginRequestPolicyResult")
    CreatePublicKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreatePublicKeyRequest", name: "CreatePublicKeyRequest")
    CreatePublicKeyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreatePublicKeyResult", name: "CreatePublicKeyResult")
    CreateRealtimeLogConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateRealtimeLogConfigRequest", name: "CreateRealtimeLogConfigRequest")
    CreateRealtimeLogConfigResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateRealtimeLogConfigResult", name: "CreateRealtimeLogConfigResult")
    CreateResponseHeadersPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateResponseHeadersPolicyRequest", name: "CreateResponseHeadersPolicyRequest")
    CreateResponseHeadersPolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateResponseHeadersPolicyResult", name: "CreateResponseHeadersPolicyResult")
    CreateStreamingDistributionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateStreamingDistributionRequest", name: "CreateStreamingDistributionRequest")
    CreateStreamingDistributionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateStreamingDistributionResult", name: "CreateStreamingDistributionResult")
    CreateStreamingDistributionWithTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateStreamingDistributionWithTagsRequest", name: "CreateStreamingDistributionWithTagsRequest")
    CreateStreamingDistributionWithTagsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateStreamingDistributionWithTagsResult", name: "CreateStreamingDistributionWithTagsResult")
    CreateVpcOriginRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateVpcOriginRequest", name: "CreateVpcOriginRequest")
    CreateVpcOriginResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CreateVpcOriginResult", name: "CreateVpcOriginResult")
    CustomErrorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CustomErrorResponse", name: "CustomErrorResponse")
    CustomErrorResponseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#CustomErrorResponseList", name: "CustomErrorResponseList")
    CustomErrorResponses = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CustomErrorResponses", name: "CustomErrorResponses")
    CustomHeaders = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CustomHeaders", name: "CustomHeaders")
    CustomOriginConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#CustomOriginConfig", name: "CustomOriginConfig")
    CustomizationActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#CustomizationActionType", name: "CustomizationActionType")
    Customizations = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#Customizations", name: "Customizations")
    DefaultCacheBehavior = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DefaultCacheBehavior", name: "DefaultCacheBehavior")
    DeleteAnycastIpListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DeleteAnycastIpListRequest", name: "DeleteAnycastIpListRequest")
    DeleteCachePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DeleteCachePolicyRequest", name: "DeleteCachePolicyRequest")
    DeleteCloudFrontOriginAccessIdentityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DeleteCloudFrontOriginAccessIdentityRequest", name: "DeleteCloudFrontOriginAccessIdentityRequest")
    DeleteConnectionGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DeleteConnectionGroupRequest", name: "DeleteConnectionGroupRequest")
    DeleteContinuousDeploymentPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DeleteContinuousDeploymentPolicyRequest", name: "DeleteContinuousDeploymentPolicyRequest")
    DeleteDistributionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DeleteDistributionRequest", name: "DeleteDistributionRequest")
    DeleteDistributionTenantRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DeleteDistributionTenantRequest", name: "DeleteDistributionTenantRequest")
    DeleteFieldLevelEncryptionConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DeleteFieldLevelEncryptionConfigRequest", name: "DeleteFieldLevelEncryptionConfigRequest")
    DeleteFieldLevelEncryptionProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DeleteFieldLevelEncryptionProfileRequest", name: "DeleteFieldLevelEncryptionProfileRequest")
    DeleteFunctionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DeleteFunctionRequest", name: "DeleteFunctionRequest")
    DeleteKeyGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DeleteKeyGroupRequest", name: "DeleteKeyGroupRequest")
    DeleteKeyValueStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DeleteKeyValueStoreRequest", name: "DeleteKeyValueStoreRequest")
    DeleteMonitoringSubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DeleteMonitoringSubscriptionRequest", name: "DeleteMonitoringSubscriptionRequest")
    DeleteMonitoringSubscriptionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DeleteMonitoringSubscriptionResult", name: "DeleteMonitoringSubscriptionResult")
    DeleteOriginAccessControlRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DeleteOriginAccessControlRequest", name: "DeleteOriginAccessControlRequest")
    DeleteOriginRequestPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DeleteOriginRequestPolicyRequest", name: "DeleteOriginRequestPolicyRequest")
    DeletePublicKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DeletePublicKeyRequest", name: "DeletePublicKeyRequest")
    DeleteRealtimeLogConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DeleteRealtimeLogConfigRequest", name: "DeleteRealtimeLogConfigRequest")
    DeleteResponseHeadersPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DeleteResponseHeadersPolicyRequest", name: "DeleteResponseHeadersPolicyRequest")
    DeleteStreamingDistributionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DeleteStreamingDistributionRequest", name: "DeleteStreamingDistributionRequest")
    DeleteVpcOriginRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DeleteVpcOriginRequest", name: "DeleteVpcOriginRequest")
    DeleteVpcOriginResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DeleteVpcOriginResult", name: "DeleteVpcOriginResult")
    DescribeFunctionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DescribeFunctionRequest", name: "DescribeFunctionRequest")
    DescribeFunctionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DescribeFunctionResult", name: "DescribeFunctionResult")
    DescribeKeyValueStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DescribeKeyValueStoreRequest", name: "DescribeKeyValueStoreRequest")
    DescribeKeyValueStoreResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DescribeKeyValueStoreResult", name: "DescribeKeyValueStoreResult")
    DisassociateDistributionTenantWebACLRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DisassociateDistributionTenantWebACLRequest", name: "DisassociateDistributionTenantWebACLRequest")
    DisassociateDistributionTenantWebACLResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DisassociateDistributionTenantWebACLResult", name: "DisassociateDistributionTenantWebACLResult")
    DisassociateDistributionWebACLRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DisassociateDistributionWebACLRequest", name: "DisassociateDistributionWebACLRequest")
    DisassociateDistributionWebACLResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DisassociateDistributionWebACLResult", name: "DisassociateDistributionWebACLResult")
    Distribution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#Distribution", name: "Distribution")
    DistributionAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DistributionAlreadyExists", name: "DistributionAlreadyExists", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DistributionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DistributionConfig", name: "DistributionConfig")
    DistributionConfigWithTags = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DistributionConfigWithTags", name: "DistributionConfigWithTags")
    DistributionIdList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DistributionIdList", name: "DistributionIdList")
    DistributionIdListSummary = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#DistributionIdListSummary", name: "DistributionIdListSummary")
    DistributionList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DistributionList", name: "DistributionList")
    DistributionNotDisabled = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DistributionNotDisabled", name: "DistributionNotDisabled", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DistributionResourceId = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DistributionResourceId", name: "DistributionResourceId")
    DistributionResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#DistributionResourceType", name: "DistributionResourceType")
    DistributionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DistributionSummary", name: "DistributionSummary")
    DistributionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#DistributionSummaryList", name: "DistributionSummaryList")
    DistributionTenant = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DistributionTenant", name: "DistributionTenant")
    DistributionTenantAssociationFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DistributionTenantAssociationFilter", name: "DistributionTenantAssociationFilter")
    DistributionTenantList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#DistributionTenantList", name: "DistributionTenantList")
    DistributionTenantSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DistributionTenantSummary", name: "DistributionTenantSummary")
    DnsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DnsConfiguration", name: "DnsConfiguration")
    DnsConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#DnsConfigurationList", name: "DnsConfigurationList")
    DnsConfigurationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#DnsConfigurationStatus", name: "DnsConfigurationStatus")
    DomainConflict = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DomainConflict", name: "DomainConflict")
    DomainConflictsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#DomainConflictsList", name: "DomainConflictsList")
    DomainItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DomainItem", name: "DomainItem")
    DomainList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#DomainList", name: "DomainList")
    DomainResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#DomainResult", name: "DomainResult")
    DomainResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#DomainResultList", name: "DomainResultList")
    DomainStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#DomainStatus", name: "DomainStatus")
    EncryptionEntities = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#EncryptionEntities", name: "EncryptionEntities")
    EncryptionEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#EncryptionEntity", name: "EncryptionEntity")
    EncryptionEntityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#EncryptionEntityList", name: "EncryptionEntityList")
    EndPoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#EndPoint", name: "EndPoint")
    EndPointList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#EndPointList", name: "EndPointList")
    EntityAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#EntityAlreadyExists", name: "EntityAlreadyExists", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    EntityLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#EntityLimitExceeded", name: "EntityLimitExceeded", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EntityNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#EntityNotFound", name: "EntityNotFound", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    EntitySizeLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#EntitySizeLimitExceeded", name: "EntitySizeLimitExceeded", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 413})
    EventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#EventType", name: "EventType")
    FieldLevelEncryption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#FieldLevelEncryption", name: "FieldLevelEncryption")
    FieldLevelEncryptionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#FieldLevelEncryptionConfig", name: "FieldLevelEncryptionConfig")
    FieldLevelEncryptionConfigAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#FieldLevelEncryptionConfigAlreadyExists", name: "FieldLevelEncryptionConfigAlreadyExists", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    FieldLevelEncryptionConfigInUse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#FieldLevelEncryptionConfigInUse", name: "FieldLevelEncryptionConfigInUse", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    FieldLevelEncryptionList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#FieldLevelEncryptionList", name: "FieldLevelEncryptionList")
    FieldLevelEncryptionProfile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#FieldLevelEncryptionProfile", name: "FieldLevelEncryptionProfile")
    FieldLevelEncryptionProfileAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#FieldLevelEncryptionProfileAlreadyExists", name: "FieldLevelEncryptionProfileAlreadyExists", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    FieldLevelEncryptionProfileConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#FieldLevelEncryptionProfileConfig", name: "FieldLevelEncryptionProfileConfig")
    FieldLevelEncryptionProfileInUse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#FieldLevelEncryptionProfileInUse", name: "FieldLevelEncryptionProfileInUse", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    FieldLevelEncryptionProfileList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#FieldLevelEncryptionProfileList", name: "FieldLevelEncryptionProfileList")
    FieldLevelEncryptionProfileSizeExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#FieldLevelEncryptionProfileSizeExceeded", name: "FieldLevelEncryptionProfileSizeExceeded", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    FieldLevelEncryptionProfileSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#FieldLevelEncryptionProfileSummary", name: "FieldLevelEncryptionProfileSummary")
    FieldLevelEncryptionProfileSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#FieldLevelEncryptionProfileSummaryList", name: "FieldLevelEncryptionProfileSummaryList")
    FieldLevelEncryptionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#FieldLevelEncryptionSummary", name: "FieldLevelEncryptionSummary")
    FieldLevelEncryptionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#FieldLevelEncryptionSummaryList", name: "FieldLevelEncryptionSummaryList")
    FieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#FieldList", name: "FieldList")
    FieldPatternList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#FieldPatternList", name: "FieldPatternList")
    FieldPatterns = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#FieldPatterns", name: "FieldPatterns")
    Format = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#Format", name: "Format")
    ForwardedValues = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ForwardedValues", name: "ForwardedValues")
    FrameOptionsList = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#FrameOptionsList", name: "FrameOptionsList")
    FunctionARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudfront#FunctionARN", name: "FunctionARN", traits: {"smithy.api#length" => {"min" => 0, "max" => 108}, "smithy.api#pattern" => "^arn:aws:cloudfront::[0-9]{12}:function\\/[a-zA-Z0-9-_]{1,64}$"})
    FunctionAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#FunctionAlreadyExists", name: "FunctionAlreadyExists", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    FunctionAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#FunctionAssociation", name: "FunctionAssociation")
    FunctionAssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#FunctionAssociationList", name: "FunctionAssociationList")
    FunctionAssociations = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#FunctionAssociations", name: "FunctionAssociations")
    FunctionBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.cloudfront#FunctionBlob", name: "FunctionBlob", traits: {"smithy.api#length" => {"min" => 1, "max" => 40960}, "smithy.api#sensitive" => {}})
    FunctionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#FunctionConfig", name: "FunctionConfig")
    FunctionEventObject = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.cloudfront#FunctionEventObject", name: "FunctionEventObject", traits: {"smithy.api#length" => {"min" => 0, "max" => 40960}, "smithy.api#sensitive" => {}})
    FunctionExecutionLogList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#FunctionExecutionLogList", name: "FunctionExecutionLogList", traits: {"smithy.api#sensitive" => {}})
    FunctionInUse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#FunctionInUse", name: "FunctionInUse", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    FunctionList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#FunctionList", name: "FunctionList")
    FunctionMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#FunctionMetadata", name: "FunctionMetadata")
    FunctionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudfront#FunctionName", name: "FunctionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]{1,64}$"})
    FunctionRuntime = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#FunctionRuntime", name: "FunctionRuntime")
    FunctionSizeLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#FunctionSizeLimitExceeded", name: "FunctionSizeLimitExceeded", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 413})
    FunctionStage = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#FunctionStage", name: "FunctionStage")
    FunctionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#FunctionSummary", name: "FunctionSummary")
    FunctionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#FunctionSummaryList", name: "FunctionSummaryList")
    GeoRestriction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GeoRestriction", name: "GeoRestriction")
    GeoRestrictionCustomization = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GeoRestrictionCustomization", name: "GeoRestrictionCustomization")
    GeoRestrictionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#GeoRestrictionType", name: "GeoRestrictionType")
    GetAnycastIpListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetAnycastIpListRequest", name: "GetAnycastIpListRequest")
    GetAnycastIpListResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetAnycastIpListResult", name: "GetAnycastIpListResult")
    GetCachePolicyConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetCachePolicyConfigRequest", name: "GetCachePolicyConfigRequest")
    GetCachePolicyConfigResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetCachePolicyConfigResult", name: "GetCachePolicyConfigResult")
    GetCachePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetCachePolicyRequest", name: "GetCachePolicyRequest")
    GetCachePolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetCachePolicyResult", name: "GetCachePolicyResult")
    GetCloudFrontOriginAccessIdentityConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetCloudFrontOriginAccessIdentityConfigRequest", name: "GetCloudFrontOriginAccessIdentityConfigRequest")
    GetCloudFrontOriginAccessIdentityConfigResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetCloudFrontOriginAccessIdentityConfigResult", name: "GetCloudFrontOriginAccessIdentityConfigResult")
    GetCloudFrontOriginAccessIdentityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetCloudFrontOriginAccessIdentityRequest", name: "GetCloudFrontOriginAccessIdentityRequest")
    GetCloudFrontOriginAccessIdentityResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetCloudFrontOriginAccessIdentityResult", name: "GetCloudFrontOriginAccessIdentityResult")
    GetConnectionGroupByRoutingEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetConnectionGroupByRoutingEndpointRequest", name: "GetConnectionGroupByRoutingEndpointRequest")
    GetConnectionGroupByRoutingEndpointResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetConnectionGroupByRoutingEndpointResult", name: "GetConnectionGroupByRoutingEndpointResult")
    GetConnectionGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetConnectionGroupRequest", name: "GetConnectionGroupRequest")
    GetConnectionGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetConnectionGroupResult", name: "GetConnectionGroupResult")
    GetContinuousDeploymentPolicyConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetContinuousDeploymentPolicyConfigRequest", name: "GetContinuousDeploymentPolicyConfigRequest")
    GetContinuousDeploymentPolicyConfigResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetContinuousDeploymentPolicyConfigResult", name: "GetContinuousDeploymentPolicyConfigResult")
    GetContinuousDeploymentPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetContinuousDeploymentPolicyRequest", name: "GetContinuousDeploymentPolicyRequest")
    GetContinuousDeploymentPolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetContinuousDeploymentPolicyResult", name: "GetContinuousDeploymentPolicyResult")
    GetDistributionConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetDistributionConfigRequest", name: "GetDistributionConfigRequest")
    GetDistributionConfigResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetDistributionConfigResult", name: "GetDistributionConfigResult")
    GetDistributionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetDistributionRequest", name: "GetDistributionRequest")
    GetDistributionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetDistributionResult", name: "GetDistributionResult")
    GetDistributionTenantByDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetDistributionTenantByDomainRequest", name: "GetDistributionTenantByDomainRequest")
    GetDistributionTenantByDomainResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetDistributionTenantByDomainResult", name: "GetDistributionTenantByDomainResult")
    GetDistributionTenantRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetDistributionTenantRequest", name: "GetDistributionTenantRequest")
    GetDistributionTenantResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetDistributionTenantResult", name: "GetDistributionTenantResult")
    GetFieldLevelEncryptionConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetFieldLevelEncryptionConfigRequest", name: "GetFieldLevelEncryptionConfigRequest")
    GetFieldLevelEncryptionConfigResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetFieldLevelEncryptionConfigResult", name: "GetFieldLevelEncryptionConfigResult")
    GetFieldLevelEncryptionProfileConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetFieldLevelEncryptionProfileConfigRequest", name: "GetFieldLevelEncryptionProfileConfigRequest")
    GetFieldLevelEncryptionProfileConfigResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetFieldLevelEncryptionProfileConfigResult", name: "GetFieldLevelEncryptionProfileConfigResult")
    GetFieldLevelEncryptionProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetFieldLevelEncryptionProfileRequest", name: "GetFieldLevelEncryptionProfileRequest")
    GetFieldLevelEncryptionProfileResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetFieldLevelEncryptionProfileResult", name: "GetFieldLevelEncryptionProfileResult")
    GetFieldLevelEncryptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetFieldLevelEncryptionRequest", name: "GetFieldLevelEncryptionRequest")
    GetFieldLevelEncryptionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetFieldLevelEncryptionResult", name: "GetFieldLevelEncryptionResult")
    GetFunctionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetFunctionRequest", name: "GetFunctionRequest")
    GetFunctionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetFunctionResult", name: "GetFunctionResult")
    GetInvalidationForDistributionTenantRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetInvalidationForDistributionTenantRequest", name: "GetInvalidationForDistributionTenantRequest")
    GetInvalidationForDistributionTenantResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetInvalidationForDistributionTenantResult", name: "GetInvalidationForDistributionTenantResult")
    GetInvalidationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetInvalidationRequest", name: "GetInvalidationRequest")
    GetInvalidationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetInvalidationResult", name: "GetInvalidationResult")
    GetKeyGroupConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetKeyGroupConfigRequest", name: "GetKeyGroupConfigRequest")
    GetKeyGroupConfigResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetKeyGroupConfigResult", name: "GetKeyGroupConfigResult")
    GetKeyGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetKeyGroupRequest", name: "GetKeyGroupRequest")
    GetKeyGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetKeyGroupResult", name: "GetKeyGroupResult")
    GetManagedCertificateDetailsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetManagedCertificateDetailsRequest", name: "GetManagedCertificateDetailsRequest")
    GetManagedCertificateDetailsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetManagedCertificateDetailsResult", name: "GetManagedCertificateDetailsResult")
    GetMonitoringSubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetMonitoringSubscriptionRequest", name: "GetMonitoringSubscriptionRequest")
    GetMonitoringSubscriptionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetMonitoringSubscriptionResult", name: "GetMonitoringSubscriptionResult")
    GetOriginAccessControlConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetOriginAccessControlConfigRequest", name: "GetOriginAccessControlConfigRequest")
    GetOriginAccessControlConfigResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetOriginAccessControlConfigResult", name: "GetOriginAccessControlConfigResult")
    GetOriginAccessControlRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetOriginAccessControlRequest", name: "GetOriginAccessControlRequest")
    GetOriginAccessControlResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetOriginAccessControlResult", name: "GetOriginAccessControlResult")
    GetOriginRequestPolicyConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetOriginRequestPolicyConfigRequest", name: "GetOriginRequestPolicyConfigRequest")
    GetOriginRequestPolicyConfigResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetOriginRequestPolicyConfigResult", name: "GetOriginRequestPolicyConfigResult")
    GetOriginRequestPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetOriginRequestPolicyRequest", name: "GetOriginRequestPolicyRequest")
    GetOriginRequestPolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetOriginRequestPolicyResult", name: "GetOriginRequestPolicyResult")
    GetPublicKeyConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetPublicKeyConfigRequest", name: "GetPublicKeyConfigRequest")
    GetPublicKeyConfigResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetPublicKeyConfigResult", name: "GetPublicKeyConfigResult")
    GetPublicKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetPublicKeyRequest", name: "GetPublicKeyRequest")
    GetPublicKeyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetPublicKeyResult", name: "GetPublicKeyResult")
    GetRealtimeLogConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetRealtimeLogConfigRequest", name: "GetRealtimeLogConfigRequest")
    GetRealtimeLogConfigResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetRealtimeLogConfigResult", name: "GetRealtimeLogConfigResult")
    GetResponseHeadersPolicyConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetResponseHeadersPolicyConfigRequest", name: "GetResponseHeadersPolicyConfigRequest")
    GetResponseHeadersPolicyConfigResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetResponseHeadersPolicyConfigResult", name: "GetResponseHeadersPolicyConfigResult")
    GetResponseHeadersPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetResponseHeadersPolicyRequest", name: "GetResponseHeadersPolicyRequest")
    GetResponseHeadersPolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetResponseHeadersPolicyResult", name: "GetResponseHeadersPolicyResult")
    GetStreamingDistributionConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetStreamingDistributionConfigRequest", name: "GetStreamingDistributionConfigRequest")
    GetStreamingDistributionConfigResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetStreamingDistributionConfigResult", name: "GetStreamingDistributionConfigResult")
    GetStreamingDistributionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetStreamingDistributionRequest", name: "GetStreamingDistributionRequest")
    GetStreamingDistributionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetStreamingDistributionResult", name: "GetStreamingDistributionResult")
    GetVpcOriginRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetVpcOriginRequest", name: "GetVpcOriginRequest")
    GetVpcOriginResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GetVpcOriginResult", name: "GetVpcOriginResult")
    GrpcConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#GrpcConfig", name: "GrpcConfig")
    HeaderList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#HeaderList", name: "HeaderList")
    Headers = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#Headers", name: "Headers")
    HttpVersion = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#HttpVersion", name: "HttpVersion")
    ICPRecordalStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#ICPRecordalStatus", name: "ICPRecordalStatus")
    IllegalDelete = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#IllegalDelete", name: "IllegalDelete", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior", name: "IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IllegalOriginAccessConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#IllegalOriginAccessConfiguration", name: "IllegalOriginAccessConfiguration", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IllegalUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#IllegalUpdate", name: "IllegalUpdate", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ImportSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ImportSource", name: "ImportSource")
    ImportSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#ImportSourceType", name: "ImportSourceType")
    InconsistentQuantities = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#InconsistentQuantities", name: "InconsistentQuantities", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidArgument = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#InvalidArgument", name: "InvalidArgument", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#InvalidAssociation", name: "InvalidAssociation", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    InvalidDefaultRootObject = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#InvalidDefaultRootObject", name: "InvalidDefaultRootObject", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDomainNameForOriginAccessControl = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#InvalidDomainNameForOriginAccessControl", name: "InvalidDomainNameForOriginAccessControl", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidErrorCode = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#InvalidErrorCode", name: "InvalidErrorCode", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidForwardCookies = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#InvalidForwardCookies", name: "InvalidForwardCookies", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidFunctionAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#InvalidFunctionAssociation", name: "InvalidFunctionAssociation", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidGeoRestrictionParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#InvalidGeoRestrictionParameter", name: "InvalidGeoRestrictionParameter", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidHeadersForS3Origin = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#InvalidHeadersForS3Origin", name: "InvalidHeadersForS3Origin", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidIfMatchVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#InvalidIfMatchVersion", name: "InvalidIfMatchVersion", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidLambdaFunctionAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#InvalidLambdaFunctionAssociation", name: "InvalidLambdaFunctionAssociation", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidLocationCode = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#InvalidLocationCode", name: "InvalidLocationCode", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidMinimumProtocolVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#InvalidMinimumProtocolVersion", name: "InvalidMinimumProtocolVersion", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidOrigin = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#InvalidOrigin", name: "InvalidOrigin", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidOriginAccessControl = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#InvalidOriginAccessControl", name: "InvalidOriginAccessControl", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidOriginAccessIdentity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#InvalidOriginAccessIdentity", name: "InvalidOriginAccessIdentity", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidOriginKeepaliveTimeout = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#InvalidOriginKeepaliveTimeout", name: "InvalidOriginKeepaliveTimeout", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidOriginReadTimeout = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#InvalidOriginReadTimeout", name: "InvalidOriginReadTimeout", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidProtocolSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#InvalidProtocolSettings", name: "InvalidProtocolSettings", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidQueryStringParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#InvalidQueryStringParameters", name: "InvalidQueryStringParameters", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRelativePath = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#InvalidRelativePath", name: "InvalidRelativePath", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRequiredProtocol = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#InvalidRequiredProtocol", name: "InvalidRequiredProtocol", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidResponseCode = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#InvalidResponseCode", name: "InvalidResponseCode", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidTTLOrder = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#InvalidTTLOrder", name: "InvalidTTLOrder", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidTagging = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#InvalidTagging", name: "InvalidTagging", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidViewerCertificate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#InvalidViewerCertificate", name: "InvalidViewerCertificate", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidWebACLId = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#InvalidWebACLId", name: "InvalidWebACLId", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Invalidation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#Invalidation", name: "Invalidation")
    InvalidationBatch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#InvalidationBatch", name: "InvalidationBatch")
    InvalidationList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#InvalidationList", name: "InvalidationList")
    InvalidationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#InvalidationSummary", name: "InvalidationSummary")
    InvalidationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#InvalidationSummaryList", name: "InvalidationSummaryList")
    IpAddressType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#IpAddressType", name: "IpAddressType")
    ItemSelection = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#ItemSelection", name: "ItemSelection")
    KGKeyPairIds = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#KGKeyPairIds", name: "KGKeyPairIds")
    KGKeyPairIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#KGKeyPairIdsList", name: "KGKeyPairIdsList")
    KeyGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#KeyGroup", name: "KeyGroup")
    KeyGroupAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#KeyGroupAlreadyExists", name: "KeyGroupAlreadyExists", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    KeyGroupConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#KeyGroupConfig", name: "KeyGroupConfig")
    KeyGroupList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#KeyGroupList", name: "KeyGroupList")
    KeyGroupSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#KeyGroupSummary", name: "KeyGroupSummary")
    KeyGroupSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#KeyGroupSummaryList", name: "KeyGroupSummaryList")
    KeyPairIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#KeyPairIdList", name: "KeyPairIdList")
    KeyPairIds = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#KeyPairIds", name: "KeyPairIds")
    KeyValueStore = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#KeyValueStore", name: "KeyValueStore")
    KeyValueStoreARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudfront#KeyValueStoreARN", name: "KeyValueStoreARN", traits: {"smithy.api#length" => {"min" => 0, "max" => 85}, "smithy.api#pattern" => "^arn:aws:cloudfront::[0-9]{12}:key-value-store\\/[0-9a-fA-F-]{36}$"})
    KeyValueStoreAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#KeyValueStoreAssociation", name: "KeyValueStoreAssociation")
    KeyValueStoreAssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#KeyValueStoreAssociationList", name: "KeyValueStoreAssociationList")
    KeyValueStoreAssociations = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#KeyValueStoreAssociations", name: "KeyValueStoreAssociations")
    KeyValueStoreComment = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudfront#KeyValueStoreComment", name: "KeyValueStoreComment", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    KeyValueStoreList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#KeyValueStoreList", name: "KeyValueStoreList")
    KeyValueStoreName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudfront#KeyValueStoreName", name: "KeyValueStoreName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]{1,64}$"})
    KeyValueStoreSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#KeyValueStoreSummaryList", name: "KeyValueStoreSummaryList")
    KinesisStreamConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#KinesisStreamConfig", name: "KinesisStreamConfig")
    LambdaFunctionARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudfront#LambdaFunctionARN", name: "LambdaFunctionARN")
    LambdaFunctionAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#LambdaFunctionAssociation", name: "LambdaFunctionAssociation")
    LambdaFunctionAssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#LambdaFunctionAssociationList", name: "LambdaFunctionAssociationList")
    LambdaFunctionAssociations = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#LambdaFunctionAssociations", name: "LambdaFunctionAssociations")
    ListAnycastIpListsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListAnycastIpListsRequest", name: "ListAnycastIpListsRequest")
    ListAnycastIpListsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListAnycastIpListsResult", name: "ListAnycastIpListsResult")
    ListCachePoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListCachePoliciesRequest", name: "ListCachePoliciesRequest")
    ListCachePoliciesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListCachePoliciesResult", name: "ListCachePoliciesResult")
    ListCloudFrontOriginAccessIdentitiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListCloudFrontOriginAccessIdentitiesRequest", name: "ListCloudFrontOriginAccessIdentitiesRequest")
    ListCloudFrontOriginAccessIdentitiesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListCloudFrontOriginAccessIdentitiesResult", name: "ListCloudFrontOriginAccessIdentitiesResult")
    ListConflictingAliasesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListConflictingAliasesRequest", name: "ListConflictingAliasesRequest")
    ListConflictingAliasesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListConflictingAliasesResult", name: "ListConflictingAliasesResult")
    ListConnectionGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListConnectionGroupsRequest", name: "ListConnectionGroupsRequest")
    ListConnectionGroupsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListConnectionGroupsResult", name: "ListConnectionGroupsResult")
    ListContinuousDeploymentPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListContinuousDeploymentPoliciesRequest", name: "ListContinuousDeploymentPoliciesRequest")
    ListContinuousDeploymentPoliciesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListContinuousDeploymentPoliciesResult", name: "ListContinuousDeploymentPoliciesResult")
    ListDistributionTenantsByCustomizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListDistributionTenantsByCustomizationRequest", name: "ListDistributionTenantsByCustomizationRequest")
    ListDistributionTenantsByCustomizationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListDistributionTenantsByCustomizationResult", name: "ListDistributionTenantsByCustomizationResult")
    ListDistributionTenantsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListDistributionTenantsRequest", name: "ListDistributionTenantsRequest")
    ListDistributionTenantsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListDistributionTenantsResult", name: "ListDistributionTenantsResult")
    ListDistributionsByAnycastIpListIdRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListDistributionsByAnycastIpListIdRequest", name: "ListDistributionsByAnycastIpListIdRequest")
    ListDistributionsByAnycastIpListIdResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListDistributionsByAnycastIpListIdResult", name: "ListDistributionsByAnycastIpListIdResult")
    ListDistributionsByCachePolicyIdRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListDistributionsByCachePolicyIdRequest", name: "ListDistributionsByCachePolicyIdRequest")
    ListDistributionsByCachePolicyIdResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListDistributionsByCachePolicyIdResult", name: "ListDistributionsByCachePolicyIdResult")
    ListDistributionsByConnectionModeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListDistributionsByConnectionModeRequest", name: "ListDistributionsByConnectionModeRequest")
    ListDistributionsByConnectionModeResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListDistributionsByConnectionModeResult", name: "ListDistributionsByConnectionModeResult")
    ListDistributionsByKeyGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListDistributionsByKeyGroupRequest", name: "ListDistributionsByKeyGroupRequest")
    ListDistributionsByKeyGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListDistributionsByKeyGroupResult", name: "ListDistributionsByKeyGroupResult")
    ListDistributionsByOriginRequestPolicyIdRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListDistributionsByOriginRequestPolicyIdRequest", name: "ListDistributionsByOriginRequestPolicyIdRequest")
    ListDistributionsByOriginRequestPolicyIdResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListDistributionsByOriginRequestPolicyIdResult", name: "ListDistributionsByOriginRequestPolicyIdResult")
    ListDistributionsByRealtimeLogConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListDistributionsByRealtimeLogConfigRequest", name: "ListDistributionsByRealtimeLogConfigRequest")
    ListDistributionsByRealtimeLogConfigResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListDistributionsByRealtimeLogConfigResult", name: "ListDistributionsByRealtimeLogConfigResult")
    ListDistributionsByResponseHeadersPolicyIdRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListDistributionsByResponseHeadersPolicyIdRequest", name: "ListDistributionsByResponseHeadersPolicyIdRequest")
    ListDistributionsByResponseHeadersPolicyIdResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListDistributionsByResponseHeadersPolicyIdResult", name: "ListDistributionsByResponseHeadersPolicyIdResult")
    ListDistributionsByVpcOriginIdRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListDistributionsByVpcOriginIdRequest", name: "ListDistributionsByVpcOriginIdRequest")
    ListDistributionsByVpcOriginIdResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListDistributionsByVpcOriginIdResult", name: "ListDistributionsByVpcOriginIdResult")
    ListDistributionsByWebACLIdRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListDistributionsByWebACLIdRequest", name: "ListDistributionsByWebACLIdRequest")
    ListDistributionsByWebACLIdResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListDistributionsByWebACLIdResult", name: "ListDistributionsByWebACLIdResult")
    ListDistributionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListDistributionsRequest", name: "ListDistributionsRequest")
    ListDistributionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListDistributionsResult", name: "ListDistributionsResult")
    ListDomainConflictsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListDomainConflictsRequest", name: "ListDomainConflictsRequest")
    ListDomainConflictsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListDomainConflictsResult", name: "ListDomainConflictsResult")
    ListFieldLevelEncryptionConfigsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListFieldLevelEncryptionConfigsRequest", name: "ListFieldLevelEncryptionConfigsRequest")
    ListFieldLevelEncryptionConfigsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListFieldLevelEncryptionConfigsResult", name: "ListFieldLevelEncryptionConfigsResult")
    ListFieldLevelEncryptionProfilesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListFieldLevelEncryptionProfilesRequest", name: "ListFieldLevelEncryptionProfilesRequest")
    ListFieldLevelEncryptionProfilesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListFieldLevelEncryptionProfilesResult", name: "ListFieldLevelEncryptionProfilesResult")
    ListFunctionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListFunctionsRequest", name: "ListFunctionsRequest")
    ListFunctionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListFunctionsResult", name: "ListFunctionsResult")
    ListInvalidationsForDistributionTenantRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListInvalidationsForDistributionTenantRequest", name: "ListInvalidationsForDistributionTenantRequest")
    ListInvalidationsForDistributionTenantResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListInvalidationsForDistributionTenantResult", name: "ListInvalidationsForDistributionTenantResult")
    ListInvalidationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListInvalidationsRequest", name: "ListInvalidationsRequest")
    ListInvalidationsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListInvalidationsResult", name: "ListInvalidationsResult")
    ListKeyGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListKeyGroupsRequest", name: "ListKeyGroupsRequest")
    ListKeyGroupsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListKeyGroupsResult", name: "ListKeyGroupsResult")
    ListKeyValueStoresRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListKeyValueStoresRequest", name: "ListKeyValueStoresRequest")
    ListKeyValueStoresResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListKeyValueStoresResult", name: "ListKeyValueStoresResult")
    ListOriginAccessControlsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListOriginAccessControlsRequest", name: "ListOriginAccessControlsRequest")
    ListOriginAccessControlsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListOriginAccessControlsResult", name: "ListOriginAccessControlsResult")
    ListOriginRequestPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListOriginRequestPoliciesRequest", name: "ListOriginRequestPoliciesRequest")
    ListOriginRequestPoliciesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListOriginRequestPoliciesResult", name: "ListOriginRequestPoliciesResult")
    ListPublicKeysRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListPublicKeysRequest", name: "ListPublicKeysRequest")
    ListPublicKeysResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListPublicKeysResult", name: "ListPublicKeysResult")
    ListRealtimeLogConfigsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListRealtimeLogConfigsRequest", name: "ListRealtimeLogConfigsRequest")
    ListRealtimeLogConfigsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListRealtimeLogConfigsResult", name: "ListRealtimeLogConfigsResult")
    ListResponseHeadersPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListResponseHeadersPoliciesRequest", name: "ListResponseHeadersPoliciesRequest")
    ListResponseHeadersPoliciesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListResponseHeadersPoliciesResult", name: "ListResponseHeadersPoliciesResult")
    ListStreamingDistributionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListStreamingDistributionsRequest", name: "ListStreamingDistributionsRequest")
    ListStreamingDistributionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListStreamingDistributionsResult", name: "ListStreamingDistributionsResult")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListTagsForResourceResult", name: "ListTagsForResourceResult")
    ListVpcOriginsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListVpcOriginsRequest", name: "ListVpcOriginsRequest")
    ListVpcOriginsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ListVpcOriginsResult", name: "ListVpcOriginsResult")
    LocationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#LocationList", name: "LocationList")
    LoggingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#LoggingConfig", name: "LoggingConfig")
    ManagedCertificateDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ManagedCertificateDetails", name: "ManagedCertificateDetails")
    ManagedCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ManagedCertificateRequest", name: "ManagedCertificateRequest")
    ManagedCertificateStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#ManagedCertificateStatus", name: "ManagedCertificateStatus")
    Method = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#Method", name: "Method")
    MethodsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#MethodsList", name: "MethodsList")
    MinimumProtocolVersion = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#MinimumProtocolVersion", name: "MinimumProtocolVersion")
    MissingBody = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#MissingBody", name: "MissingBody", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MonitoringSubscription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#MonitoringSubscription", name: "MonitoringSubscription")
    MonitoringSubscriptionAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#MonitoringSubscriptionAlreadyExists", name: "MonitoringSubscriptionAlreadyExists", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    NoSuchCachePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#NoSuchCachePolicy", name: "NoSuchCachePolicy", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchCloudFrontOriginAccessIdentity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#NoSuchCloudFrontOriginAccessIdentity", name: "NoSuchCloudFrontOriginAccessIdentity", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchContinuousDeploymentPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#NoSuchContinuousDeploymentPolicy", name: "NoSuchContinuousDeploymentPolicy", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchDistribution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#NoSuchDistribution", name: "NoSuchDistribution", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchFieldLevelEncryptionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#NoSuchFieldLevelEncryptionConfig", name: "NoSuchFieldLevelEncryptionConfig", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchFieldLevelEncryptionProfile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#NoSuchFieldLevelEncryptionProfile", name: "NoSuchFieldLevelEncryptionProfile", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchFunctionExists = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#NoSuchFunctionExists", name: "NoSuchFunctionExists", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchInvalidation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#NoSuchInvalidation", name: "NoSuchInvalidation", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchMonitoringSubscription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#NoSuchMonitoringSubscription", name: "NoSuchMonitoringSubscription", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchOrigin = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#NoSuchOrigin", name: "NoSuchOrigin", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchOriginAccessControl = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#NoSuchOriginAccessControl", name: "NoSuchOriginAccessControl", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchOriginRequestPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#NoSuchOriginRequestPolicy", name: "NoSuchOriginRequestPolicy", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchPublicKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#NoSuchPublicKey", name: "NoSuchPublicKey", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchRealtimeLogConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#NoSuchRealtimeLogConfig", name: "NoSuchRealtimeLogConfig", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#NoSuchResource", name: "NoSuchResource", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchResponseHeadersPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#NoSuchResponseHeadersPolicy", name: "NoSuchResponseHeadersPolicy", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchStreamingDistribution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#NoSuchStreamingDistribution", name: "NoSuchStreamingDistribution", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Origin = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#Origin", name: "Origin")
    OriginAccessControl = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#OriginAccessControl", name: "OriginAccessControl")
    OriginAccessControlAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#OriginAccessControlAlreadyExists", name: "OriginAccessControlAlreadyExists", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    OriginAccessControlConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#OriginAccessControlConfig", name: "OriginAccessControlConfig")
    OriginAccessControlInUse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#OriginAccessControlInUse", name: "OriginAccessControlInUse", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    OriginAccessControlList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#OriginAccessControlList", name: "OriginAccessControlList")
    OriginAccessControlOriginTypes = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#OriginAccessControlOriginTypes", name: "OriginAccessControlOriginTypes")
    OriginAccessControlSigningBehaviors = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#OriginAccessControlSigningBehaviors", name: "OriginAccessControlSigningBehaviors")
    OriginAccessControlSigningProtocols = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#OriginAccessControlSigningProtocols", name: "OriginAccessControlSigningProtocols")
    OriginAccessControlSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#OriginAccessControlSummary", name: "OriginAccessControlSummary")
    OriginAccessControlSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#OriginAccessControlSummaryList", name: "OriginAccessControlSummaryList")
    OriginCustomHeader = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#OriginCustomHeader", name: "OriginCustomHeader")
    OriginCustomHeadersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#OriginCustomHeadersList", name: "OriginCustomHeadersList")
    OriginGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#OriginGroup", name: "OriginGroup")
    OriginGroupFailoverCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#OriginGroupFailoverCriteria", name: "OriginGroupFailoverCriteria")
    OriginGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#OriginGroupList", name: "OriginGroupList")
    OriginGroupMember = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#OriginGroupMember", name: "OriginGroupMember")
    OriginGroupMemberList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#OriginGroupMemberList", name: "OriginGroupMemberList", traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    OriginGroupMembers = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#OriginGroupMembers", name: "OriginGroupMembers")
    OriginGroupSelectionCriteria = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#OriginGroupSelectionCriteria", name: "OriginGroupSelectionCriteria")
    OriginGroups = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#OriginGroups", name: "OriginGroups")
    OriginList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#OriginList", name: "OriginList", traits: {"smithy.api#length" => {"min" => 1}})
    OriginProtocolPolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#OriginProtocolPolicy", name: "OriginProtocolPolicy")
    OriginRequestPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#OriginRequestPolicy", name: "OriginRequestPolicy")
    OriginRequestPolicyAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#OriginRequestPolicyAlreadyExists", name: "OriginRequestPolicyAlreadyExists", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    OriginRequestPolicyConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#OriginRequestPolicyConfig", name: "OriginRequestPolicyConfig")
    OriginRequestPolicyCookieBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#OriginRequestPolicyCookieBehavior", name: "OriginRequestPolicyCookieBehavior")
    OriginRequestPolicyCookiesConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#OriginRequestPolicyCookiesConfig", name: "OriginRequestPolicyCookiesConfig")
    OriginRequestPolicyHeaderBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#OriginRequestPolicyHeaderBehavior", name: "OriginRequestPolicyHeaderBehavior")
    OriginRequestPolicyHeadersConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#OriginRequestPolicyHeadersConfig", name: "OriginRequestPolicyHeadersConfig")
    OriginRequestPolicyInUse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#OriginRequestPolicyInUse", name: "OriginRequestPolicyInUse", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    OriginRequestPolicyList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#OriginRequestPolicyList", name: "OriginRequestPolicyList")
    OriginRequestPolicyQueryStringBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#OriginRequestPolicyQueryStringBehavior", name: "OriginRequestPolicyQueryStringBehavior")
    OriginRequestPolicyQueryStringsConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#OriginRequestPolicyQueryStringsConfig", name: "OriginRequestPolicyQueryStringsConfig")
    OriginRequestPolicySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#OriginRequestPolicySummary", name: "OriginRequestPolicySummary")
    OriginRequestPolicySummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#OriginRequestPolicySummaryList", name: "OriginRequestPolicySummaryList")
    OriginRequestPolicyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#OriginRequestPolicyType", name: "OriginRequestPolicyType")
    OriginShield = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#OriginShield", name: "OriginShield")
    OriginShieldRegion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudfront#OriginShieldRegion", name: "OriginShieldRegion", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[a-z]{2}-[a-z]+-\\d$"})
    OriginSslProtocols = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#OriginSslProtocols", name: "OriginSslProtocols")
    Origins = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#Origins", name: "Origins")
    Parameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#Parameter", name: "Parameter")
    ParameterDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ParameterDefinition", name: "ParameterDefinition")
    ParameterDefinitionSchema = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ParameterDefinitionSchema", name: "ParameterDefinitionSchema")
    ParameterDefinitions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#ParameterDefinitions", name: "ParameterDefinitions")
    ParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudfront#ParameterName", name: "ParameterName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]+$"})
    ParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudfront#ParameterValue", name: "ParameterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Parameters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#Parameters", name: "Parameters")
    ParametersInCacheKeyAndForwardedToOrigin = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ParametersInCacheKeyAndForwardedToOrigin", name: "ParametersInCacheKeyAndForwardedToOrigin")
    PathList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#PathList", name: "PathList")
    Paths = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#Paths", name: "Paths")
    PreconditionFailed = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#PreconditionFailed", name: "PreconditionFailed", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 412})
    PriceClass = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#PriceClass", name: "PriceClass")
    PublicKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#PublicKey", name: "PublicKey")
    PublicKeyAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#PublicKeyAlreadyExists", name: "PublicKeyAlreadyExists", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    PublicKeyConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#PublicKeyConfig", name: "PublicKeyConfig")
    PublicKeyIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#PublicKeyIdList", name: "PublicKeyIdList")
    PublicKeyInUse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#PublicKeyInUse", name: "PublicKeyInUse", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    PublicKeyList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#PublicKeyList", name: "PublicKeyList")
    PublicKeySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#PublicKeySummary", name: "PublicKeySummary")
    PublicKeySummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#PublicKeySummaryList", name: "PublicKeySummaryList")
    PublishFunctionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#PublishFunctionRequest", name: "PublishFunctionRequest")
    PublishFunctionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#PublishFunctionResult", name: "PublishFunctionResult")
    QueryArgProfile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#QueryArgProfile", name: "QueryArgProfile")
    QueryArgProfileConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#QueryArgProfileConfig", name: "QueryArgProfileConfig")
    QueryArgProfileEmpty = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#QueryArgProfileEmpty", name: "QueryArgProfileEmpty", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    QueryArgProfileList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#QueryArgProfileList", name: "QueryArgProfileList")
    QueryArgProfiles = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#QueryArgProfiles", name: "QueryArgProfiles")
    QueryStringCacheKeys = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#QueryStringCacheKeys", name: "QueryStringCacheKeys")
    QueryStringCacheKeysList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#QueryStringCacheKeysList", name: "QueryStringCacheKeysList")
    QueryStringNames = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#QueryStringNames", name: "QueryStringNames")
    QueryStringNamesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#QueryStringNamesList", name: "QueryStringNamesList")
    RealtimeLogConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#RealtimeLogConfig", name: "RealtimeLogConfig")
    RealtimeLogConfigAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#RealtimeLogConfigAlreadyExists", name: "RealtimeLogConfigAlreadyExists", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    RealtimeLogConfigInUse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#RealtimeLogConfigInUse", name: "RealtimeLogConfigInUse", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RealtimeLogConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#RealtimeLogConfigList", name: "RealtimeLogConfigList")
    RealtimeLogConfigOwnerMismatch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#RealtimeLogConfigOwnerMismatch", name: "RealtimeLogConfigOwnerMismatch", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    RealtimeLogConfigs = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#RealtimeLogConfigs", name: "RealtimeLogConfigs")
    RealtimeMetricsSubscriptionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#RealtimeMetricsSubscriptionConfig", name: "RealtimeMetricsSubscriptionConfig")
    RealtimeMetricsSubscriptionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#RealtimeMetricsSubscriptionStatus", name: "RealtimeMetricsSubscriptionStatus")
    ReferrerPolicyList = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#ReferrerPolicyList", name: "ReferrerPolicyList")
    ResourceARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudfront#ResourceARN", name: "ResourceARN", traits: {"smithy.api#pattern" => "^arn:aws(-cn)?:cloudfront::[0-9]+:"})
    ResourceInUse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ResourceInUse", name: "ResourceInUse", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceNotDisabled = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ResourceNotDisabled", name: "ResourceNotDisabled", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResponseHeadersPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ResponseHeadersPolicy", name: "ResponseHeadersPolicy")
    ResponseHeadersPolicyAccessControlAllowHeaders = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ResponseHeadersPolicyAccessControlAllowHeaders", name: "ResponseHeadersPolicyAccessControlAllowHeaders")
    ResponseHeadersPolicyAccessControlAllowMethods = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ResponseHeadersPolicyAccessControlAllowMethods", name: "ResponseHeadersPolicyAccessControlAllowMethods")
    ResponseHeadersPolicyAccessControlAllowMethodsValues = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#ResponseHeadersPolicyAccessControlAllowMethodsValues", name: "ResponseHeadersPolicyAccessControlAllowMethodsValues")
    ResponseHeadersPolicyAccessControlAllowOrigins = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ResponseHeadersPolicyAccessControlAllowOrigins", name: "ResponseHeadersPolicyAccessControlAllowOrigins")
    ResponseHeadersPolicyAccessControlExposeHeaders = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ResponseHeadersPolicyAccessControlExposeHeaders", name: "ResponseHeadersPolicyAccessControlExposeHeaders")
    ResponseHeadersPolicyAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ResponseHeadersPolicyAlreadyExists", name: "ResponseHeadersPolicyAlreadyExists", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResponseHeadersPolicyConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ResponseHeadersPolicyConfig", name: "ResponseHeadersPolicyConfig")
    ResponseHeadersPolicyContentSecurityPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ResponseHeadersPolicyContentSecurityPolicy", name: "ResponseHeadersPolicyContentSecurityPolicy")
    ResponseHeadersPolicyContentTypeOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ResponseHeadersPolicyContentTypeOptions", name: "ResponseHeadersPolicyContentTypeOptions")
    ResponseHeadersPolicyCorsConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ResponseHeadersPolicyCorsConfig", name: "ResponseHeadersPolicyCorsConfig")
    ResponseHeadersPolicyCustomHeader = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ResponseHeadersPolicyCustomHeader", name: "ResponseHeadersPolicyCustomHeader")
    ResponseHeadersPolicyCustomHeaderList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#ResponseHeadersPolicyCustomHeaderList", name: "ResponseHeadersPolicyCustomHeaderList")
    ResponseHeadersPolicyCustomHeadersConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ResponseHeadersPolicyCustomHeadersConfig", name: "ResponseHeadersPolicyCustomHeadersConfig")
    ResponseHeadersPolicyFrameOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ResponseHeadersPolicyFrameOptions", name: "ResponseHeadersPolicyFrameOptions")
    ResponseHeadersPolicyInUse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ResponseHeadersPolicyInUse", name: "ResponseHeadersPolicyInUse", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResponseHeadersPolicyList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ResponseHeadersPolicyList", name: "ResponseHeadersPolicyList")
    ResponseHeadersPolicyReferrerPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ResponseHeadersPolicyReferrerPolicy", name: "ResponseHeadersPolicyReferrerPolicy")
    ResponseHeadersPolicyRemoveHeader = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ResponseHeadersPolicyRemoveHeader", name: "ResponseHeadersPolicyRemoveHeader")
    ResponseHeadersPolicyRemoveHeaderList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#ResponseHeadersPolicyRemoveHeaderList", name: "ResponseHeadersPolicyRemoveHeaderList")
    ResponseHeadersPolicyRemoveHeadersConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ResponseHeadersPolicyRemoveHeadersConfig", name: "ResponseHeadersPolicyRemoveHeadersConfig")
    ResponseHeadersPolicySecurityHeadersConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ResponseHeadersPolicySecurityHeadersConfig", name: "ResponseHeadersPolicySecurityHeadersConfig")
    ResponseHeadersPolicyServerTimingHeadersConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ResponseHeadersPolicyServerTimingHeadersConfig", name: "ResponseHeadersPolicyServerTimingHeadersConfig")
    ResponseHeadersPolicyStrictTransportSecurity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ResponseHeadersPolicyStrictTransportSecurity", name: "ResponseHeadersPolicyStrictTransportSecurity")
    ResponseHeadersPolicySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ResponseHeadersPolicySummary", name: "ResponseHeadersPolicySummary")
    ResponseHeadersPolicySummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#ResponseHeadersPolicySummaryList", name: "ResponseHeadersPolicySummaryList")
    ResponseHeadersPolicyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#ResponseHeadersPolicyType", name: "ResponseHeadersPolicyType")
    ResponseHeadersPolicyXSSProtection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ResponseHeadersPolicyXSSProtection", name: "ResponseHeadersPolicyXSSProtection")
    Restrictions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#Restrictions", name: "Restrictions")
    S3Origin = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#S3Origin", name: "S3Origin")
    S3OriginConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#S3OriginConfig", name: "S3OriginConfig")
    SSLSupportMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#SSLSupportMethod", name: "SSLSupportMethod")
    SamplingRate = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.cloudfront#SamplingRate", name: "SamplingRate", traits: {"smithy.api#range" => {"min" => 0.0, "max" => 100.0}})
    ServerCertificateId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudfront#ServerCertificateId", name: "ServerCertificateId", traits: {"smithy.api#length" => {"max" => 32}})
    SessionStickinessConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#SessionStickinessConfig", name: "SessionStickinessConfig")
    Signer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#Signer", name: "Signer")
    SignerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#SignerList", name: "SignerList")
    SslProtocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#SslProtocol", name: "SslProtocol")
    SslProtocolsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#SslProtocolsList", name: "SslProtocolsList")
    StagingDistributionDnsNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#StagingDistributionDnsNameList", name: "StagingDistributionDnsNameList")
    StagingDistributionDnsNames = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#StagingDistributionDnsNames", name: "StagingDistributionDnsNames")
    StagingDistributionInUse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#StagingDistributionInUse", name: "StagingDistributionInUse", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    StatusCodeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#StatusCodeList", name: "StatusCodeList", traits: {"smithy.api#length" => {"min" => 1}})
    StatusCodes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#StatusCodes", name: "StatusCodes")
    StreamingDistribution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#StreamingDistribution", name: "StreamingDistribution")
    StreamingDistributionAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#StreamingDistributionAlreadyExists", name: "StreamingDistributionAlreadyExists", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    StreamingDistributionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#StreamingDistributionConfig", name: "StreamingDistributionConfig")
    StreamingDistributionConfigWithTags = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#StreamingDistributionConfigWithTags", name: "StreamingDistributionConfigWithTags")
    StreamingDistributionList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#StreamingDistributionList", name: "StreamingDistributionList")
    StreamingDistributionNotDisabled = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#StreamingDistributionNotDisabled", name: "StreamingDistributionNotDisabled", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    StreamingDistributionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#StreamingDistributionSummary", name: "StreamingDistributionSummary")
    StreamingDistributionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#StreamingDistributionSummaryList", name: "StreamingDistributionSummaryList")
    StreamingLoggingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#StreamingLoggingConfig", name: "StreamingLoggingConfig")
    StringSchemaConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#StringSchemaConfig", name: "StringSchemaConfig")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudfront#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#TagKeyList", name: "TagKeyList")
    TagKeys = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TagKeys", name: "TagKeys")
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#TagList", name: "TagList")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TagResourceRequest", name: "TagResourceRequest")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudfront#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    Tags = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#Tags", name: "Tags")
    TenantConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TenantConfig", name: "TenantConfig")
    TestFunctionFailed = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TestFunctionFailed", name: "TestFunctionFailed", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    TestFunctionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TestFunctionRequest", name: "TestFunctionRequest")
    TestFunctionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TestFunctionResult", name: "TestFunctionResult")
    TestResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TestResult", name: "TestResult")
    TooLongCSPInResponseHeadersPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooLongCSPInResponseHeadersPolicy", name: "TooLongCSPInResponseHeadersPolicy", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyCacheBehaviors = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyCacheBehaviors", name: "TooManyCacheBehaviors", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyCachePolicies = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyCachePolicies", name: "TooManyCachePolicies", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyCertificates = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyCertificates", name: "TooManyCertificates", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyCloudFrontOriginAccessIdentities = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyCloudFrontOriginAccessIdentities", name: "TooManyCloudFrontOriginAccessIdentities", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyContinuousDeploymentPolicies = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyContinuousDeploymentPolicies", name: "TooManyContinuousDeploymentPolicies", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyCookieNamesInWhiteList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyCookieNamesInWhiteList", name: "TooManyCookieNamesInWhiteList", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyCookiesInCachePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyCookiesInCachePolicy", name: "TooManyCookiesInCachePolicy", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyCookiesInOriginRequestPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyCookiesInOriginRequestPolicy", name: "TooManyCookiesInOriginRequestPolicy", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyCustomHeadersInResponseHeadersPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyCustomHeadersInResponseHeadersPolicy", name: "TooManyCustomHeadersInResponseHeadersPolicy", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyDistributionCNAMEs = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyDistributionCNAMEs", name: "TooManyDistributionCNAMEs", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyDistributions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyDistributions", name: "TooManyDistributions", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyDistributionsAssociatedToCachePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyDistributionsAssociatedToCachePolicy", name: "TooManyDistributionsAssociatedToCachePolicy", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyDistributionsAssociatedToFieldLevelEncryptionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyDistributionsAssociatedToFieldLevelEncryptionConfig", name: "TooManyDistributionsAssociatedToFieldLevelEncryptionConfig", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyDistributionsAssociatedToKeyGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyDistributionsAssociatedToKeyGroup", name: "TooManyDistributionsAssociatedToKeyGroup", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyDistributionsAssociatedToOriginAccessControl = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyDistributionsAssociatedToOriginAccessControl", name: "TooManyDistributionsAssociatedToOriginAccessControl", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyDistributionsAssociatedToOriginRequestPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyDistributionsAssociatedToOriginRequestPolicy", name: "TooManyDistributionsAssociatedToOriginRequestPolicy", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyDistributionsAssociatedToResponseHeadersPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyDistributionsAssociatedToResponseHeadersPolicy", name: "TooManyDistributionsAssociatedToResponseHeadersPolicy", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyDistributionsWithFunctionAssociations = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyDistributionsWithFunctionAssociations", name: "TooManyDistributionsWithFunctionAssociations", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyDistributionsWithLambdaAssociations = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyDistributionsWithLambdaAssociations", name: "TooManyDistributionsWithLambdaAssociations", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyDistributionsWithSingleFunctionARN = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyDistributionsWithSingleFunctionARN", name: "TooManyDistributionsWithSingleFunctionARN", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyFieldLevelEncryptionConfigs = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyFieldLevelEncryptionConfigs", name: "TooManyFieldLevelEncryptionConfigs", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyFieldLevelEncryptionContentTypeProfiles = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyFieldLevelEncryptionContentTypeProfiles", name: "TooManyFieldLevelEncryptionContentTypeProfiles", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyFieldLevelEncryptionEncryptionEntities = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyFieldLevelEncryptionEncryptionEntities", name: "TooManyFieldLevelEncryptionEncryptionEntities", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyFieldLevelEncryptionFieldPatterns = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyFieldLevelEncryptionFieldPatterns", name: "TooManyFieldLevelEncryptionFieldPatterns", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyFieldLevelEncryptionProfiles = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyFieldLevelEncryptionProfiles", name: "TooManyFieldLevelEncryptionProfiles", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyFieldLevelEncryptionQueryArgProfiles = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyFieldLevelEncryptionQueryArgProfiles", name: "TooManyFieldLevelEncryptionQueryArgProfiles", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyFunctionAssociations = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyFunctionAssociations", name: "TooManyFunctionAssociations", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyFunctions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyFunctions", name: "TooManyFunctions", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyHeadersInCachePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyHeadersInCachePolicy", name: "TooManyHeadersInCachePolicy", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyHeadersInForwardedValues = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyHeadersInForwardedValues", name: "TooManyHeadersInForwardedValues", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyHeadersInOriginRequestPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyHeadersInOriginRequestPolicy", name: "TooManyHeadersInOriginRequestPolicy", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyInvalidationsInProgress = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyInvalidationsInProgress", name: "TooManyInvalidationsInProgress", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyKeyGroups = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyKeyGroups", name: "TooManyKeyGroups", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyKeyGroupsAssociatedToDistribution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyKeyGroupsAssociatedToDistribution", name: "TooManyKeyGroupsAssociatedToDistribution", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyLambdaFunctionAssociations = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyLambdaFunctionAssociations", name: "TooManyLambdaFunctionAssociations", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyOriginAccessControls = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyOriginAccessControls", name: "TooManyOriginAccessControls", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyOriginCustomHeaders = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyOriginCustomHeaders", name: "TooManyOriginCustomHeaders", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyOriginGroupsPerDistribution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyOriginGroupsPerDistribution", name: "TooManyOriginGroupsPerDistribution", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyOriginRequestPolicies = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyOriginRequestPolicies", name: "TooManyOriginRequestPolicies", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyOrigins = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyOrigins", name: "TooManyOrigins", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyPublicKeys = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyPublicKeys", name: "TooManyPublicKeys", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyPublicKeysInKeyGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyPublicKeysInKeyGroup", name: "TooManyPublicKeysInKeyGroup", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyQueryStringParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyQueryStringParameters", name: "TooManyQueryStringParameters", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyQueryStringsInCachePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyQueryStringsInCachePolicy", name: "TooManyQueryStringsInCachePolicy", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyQueryStringsInOriginRequestPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyQueryStringsInOriginRequestPolicy", name: "TooManyQueryStringsInOriginRequestPolicy", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyRealtimeLogConfigs = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyRealtimeLogConfigs", name: "TooManyRealtimeLogConfigs", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyRemoveHeadersInResponseHeadersPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyRemoveHeadersInResponseHeadersPolicy", name: "TooManyRemoveHeadersInResponseHeadersPolicy", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyResponseHeadersPolicies = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyResponseHeadersPolicies", name: "TooManyResponseHeadersPolicies", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyStreamingDistributionCNAMEs = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyStreamingDistributionCNAMEs", name: "TooManyStreamingDistributionCNAMEs", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyStreamingDistributions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyStreamingDistributions", name: "TooManyStreamingDistributions", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyTrustedSigners = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TooManyTrustedSigners", name: "TooManyTrustedSigners", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TrafficConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TrafficConfig", name: "TrafficConfig")
    TrustedKeyGroupDoesNotExist = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TrustedKeyGroupDoesNotExist", name: "TrustedKeyGroupDoesNotExist", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TrustedKeyGroupIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#TrustedKeyGroupIdList", name: "TrustedKeyGroupIdList")
    TrustedKeyGroups = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TrustedKeyGroups", name: "TrustedKeyGroups")
    TrustedSignerDoesNotExist = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TrustedSignerDoesNotExist", name: "TrustedSignerDoesNotExist", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TrustedSigners = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#TrustedSigners", name: "TrustedSigners")
    UnsupportedOperation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UnsupportedOperation", name: "UnsupportedOperation", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UntagResourceRequest", name: "UntagResourceRequest")
    UpdateCachePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdateCachePolicyRequest", name: "UpdateCachePolicyRequest")
    UpdateCachePolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdateCachePolicyResult", name: "UpdateCachePolicyResult")
    UpdateCloudFrontOriginAccessIdentityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdateCloudFrontOriginAccessIdentityRequest", name: "UpdateCloudFrontOriginAccessIdentityRequest")
    UpdateCloudFrontOriginAccessIdentityResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdateCloudFrontOriginAccessIdentityResult", name: "UpdateCloudFrontOriginAccessIdentityResult")
    UpdateConnectionGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdateConnectionGroupRequest", name: "UpdateConnectionGroupRequest")
    UpdateConnectionGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdateConnectionGroupResult", name: "UpdateConnectionGroupResult")
    UpdateContinuousDeploymentPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdateContinuousDeploymentPolicyRequest", name: "UpdateContinuousDeploymentPolicyRequest")
    UpdateContinuousDeploymentPolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdateContinuousDeploymentPolicyResult", name: "UpdateContinuousDeploymentPolicyResult")
    UpdateDistributionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdateDistributionRequest", name: "UpdateDistributionRequest")
    UpdateDistributionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdateDistributionResult", name: "UpdateDistributionResult")
    UpdateDistributionTenantRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdateDistributionTenantRequest", name: "UpdateDistributionTenantRequest")
    UpdateDistributionTenantResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdateDistributionTenantResult", name: "UpdateDistributionTenantResult")
    UpdateDistributionWithStagingConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdateDistributionWithStagingConfigRequest", name: "UpdateDistributionWithStagingConfigRequest")
    UpdateDistributionWithStagingConfigResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdateDistributionWithStagingConfigResult", name: "UpdateDistributionWithStagingConfigResult")
    UpdateDomainAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdateDomainAssociationRequest", name: "UpdateDomainAssociationRequest")
    UpdateDomainAssociationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdateDomainAssociationResult", name: "UpdateDomainAssociationResult")
    UpdateFieldLevelEncryptionConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdateFieldLevelEncryptionConfigRequest", name: "UpdateFieldLevelEncryptionConfigRequest")
    UpdateFieldLevelEncryptionConfigResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdateFieldLevelEncryptionConfigResult", name: "UpdateFieldLevelEncryptionConfigResult")
    UpdateFieldLevelEncryptionProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdateFieldLevelEncryptionProfileRequest", name: "UpdateFieldLevelEncryptionProfileRequest")
    UpdateFieldLevelEncryptionProfileResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdateFieldLevelEncryptionProfileResult", name: "UpdateFieldLevelEncryptionProfileResult")
    UpdateFunctionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdateFunctionRequest", name: "UpdateFunctionRequest")
    UpdateFunctionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdateFunctionResult", name: "UpdateFunctionResult")
    UpdateKeyGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdateKeyGroupRequest", name: "UpdateKeyGroupRequest")
    UpdateKeyGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdateKeyGroupResult", name: "UpdateKeyGroupResult")
    UpdateKeyValueStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdateKeyValueStoreRequest", name: "UpdateKeyValueStoreRequest")
    UpdateKeyValueStoreResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdateKeyValueStoreResult", name: "UpdateKeyValueStoreResult")
    UpdateOriginAccessControlRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdateOriginAccessControlRequest", name: "UpdateOriginAccessControlRequest")
    UpdateOriginAccessControlResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdateOriginAccessControlResult", name: "UpdateOriginAccessControlResult")
    UpdateOriginRequestPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdateOriginRequestPolicyRequest", name: "UpdateOriginRequestPolicyRequest")
    UpdateOriginRequestPolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdateOriginRequestPolicyResult", name: "UpdateOriginRequestPolicyResult")
    UpdatePublicKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdatePublicKeyRequest", name: "UpdatePublicKeyRequest")
    UpdatePublicKeyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdatePublicKeyResult", name: "UpdatePublicKeyResult")
    UpdateRealtimeLogConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdateRealtimeLogConfigRequest", name: "UpdateRealtimeLogConfigRequest")
    UpdateRealtimeLogConfigResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdateRealtimeLogConfigResult", name: "UpdateRealtimeLogConfigResult")
    UpdateResponseHeadersPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdateResponseHeadersPolicyRequest", name: "UpdateResponseHeadersPolicyRequest")
    UpdateResponseHeadersPolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdateResponseHeadersPolicyResult", name: "UpdateResponseHeadersPolicyResult")
    UpdateStreamingDistributionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdateStreamingDistributionRequest", name: "UpdateStreamingDistributionRequest")
    UpdateStreamingDistributionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdateStreamingDistributionResult", name: "UpdateStreamingDistributionResult")
    UpdateVpcOriginRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdateVpcOriginRequest", name: "UpdateVpcOriginRequest")
    UpdateVpcOriginResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#UpdateVpcOriginResult", name: "UpdateVpcOriginResult")
    ValidationTokenDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ValidationTokenDetail", name: "ValidationTokenDetail")
    ValidationTokenDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#ValidationTokenDetailList", name: "ValidationTokenDetailList")
    ValidationTokenHost = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#ValidationTokenHost", name: "ValidationTokenHost")
    VerifyDnsConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#VerifyDnsConfigurationRequest", name: "VerifyDnsConfigurationRequest")
    VerifyDnsConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#VerifyDnsConfigurationResult", name: "VerifyDnsConfigurationResult")
    ViewerCertificate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#ViewerCertificate", name: "ViewerCertificate")
    ViewerProtocolPolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudfront#ViewerProtocolPolicy", name: "ViewerProtocolPolicy")
    VpcOrigin = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#VpcOrigin", name: "VpcOrigin")
    VpcOriginConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#VpcOriginConfig", name: "VpcOriginConfig")
    VpcOriginEndpointConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#VpcOriginEndpointConfig", name: "VpcOriginEndpointConfig")
    VpcOriginList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#VpcOriginList", name: "VpcOriginList")
    VpcOriginSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#VpcOriginSummary", name: "VpcOriginSummary")
    VpcOriginSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudfront#VpcOriginSummaryList", name: "VpcOriginSummaryList")
    WebAclCustomization = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudfront#WebAclCustomization", name: "WebAclCustomization")
    AliasString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudfront#aliasString", name: "AliasString", traits: {"smithy.api#length" => {"min" => 0, "max" => 253}})
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudfront#boolean", name: "Boolean")
    DistributionIdString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudfront#distributionIdString", name: "DistributionIdString", traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    Float = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.cloudfront#float", name: "Float")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudfront#integer", name: "Integer")
    ListConflictingAliasesMaxItemsInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudfront#listConflictingAliasesMaxItemsInteger", name: "ListConflictingAliasesMaxItemsInteger", traits: {"smithy.api#range" => {"max" => 100}})
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudfront#long", name: "Long")
    SensitiveStringType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudfront#sensitiveStringType", name: "SensitiveStringType", traits: {"smithy.api#sensitive" => {}})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudfront#string", name: "String")
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.cloudfront#timestamp", name: "Timestamp")

    AccessControlAllowHeadersList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "Header"})
    AccessControlAllowMethodsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseHeadersPolicyAccessControlAllowMethodsValues, name: "member", traits: {"smithy.api#xmlName" => "Method"})
    AccessControlAllowOriginsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "Origin"})
    AccessControlExposeHeadersList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "Header"})
    AccessDenied.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    AccessDenied.type = Types::AccessDenied
    ActiveTrustedKeyGroups.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#required" => {}}))
    ActiveTrustedKeyGroups.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    ActiveTrustedKeyGroups.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: KGKeyPairIdsList, name: "Items"))
    ActiveTrustedKeyGroups.type = Types::ActiveTrustedKeyGroups
    ActiveTrustedSigners.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#required" => {}}))
    ActiveTrustedSigners.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    ActiveTrustedSigners.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: SignerList, name: "Items"))
    ActiveTrustedSigners.type = Types::ActiveTrustedSigners
    AliasICPRecordal.add_member(:cname, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CNAME"))
    AliasICPRecordal.add_member(:icp_recordal_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ICPRecordalStatus, name: "ICPRecordalStatus"))
    AliasICPRecordal.type = Types::AliasICPRecordal
    AliasICPRecordals.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AliasICPRecordal, name: "member", traits: {"smithy.api#xmlName" => "AliasICPRecordal"})
    AliasList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "CNAME"})
    Aliases.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    Aliases.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasList, name: "Items"))
    Aliases.type = Types::Aliases
    AllowedMethods.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    AllowedMethods.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: MethodsList, name: "Items", traits: {"smithy.api#required" => {}}))
    AllowedMethods.add_member(:cached_methods, ::Smithy::Schema::Shapes::MemberShape.new(target: CachedMethods, name: "CachedMethods"))
    AllowedMethods.type = Types::AllowedMethods
    AnycastIpList.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#required" => {}}))
    AnycastIpList.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AnycastIpListName, name: "Name", traits: {"smithy.api#required" => {}}))
    AnycastIpList.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status", traits: {"smithy.api#required" => {}}))
    AnycastIpList.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#required" => {}}))
    AnycastIpList.add_member(:anycast_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: AnycastIps, name: "AnycastIps", traits: {"smithy.api#required" => {}}))
    AnycastIpList.add_member(:ip_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "IpCount", traits: {"smithy.api#required" => {}}))
    AnycastIpList.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime", traits: {"smithy.api#required" => {}}))
    AnycastIpList.type = Types::AnycastIpList
    AnycastIpListCollection.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: AnycastIpListSummaries, name: "Items"))
    AnycastIpListCollection.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#required" => {}}))
    AnycastIpListCollection.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker"))
    AnycastIpListCollection.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#required" => {}}))
    AnycastIpListCollection.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsTruncated", traits: {"smithy.api#required" => {}}))
    AnycastIpListCollection.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    AnycastIpListCollection.type = Types::AnycastIpListCollection
    AnycastIpListSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnycastIpListSummary, name: "member", traits: {"smithy.api#xmlName" => "AnycastIpListSummary"})
    AnycastIpListSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#required" => {}}))
    AnycastIpListSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AnycastIpListName, name: "Name", traits: {"smithy.api#required" => {}}))
    AnycastIpListSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status", traits: {"smithy.api#required" => {}}))
    AnycastIpListSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#required" => {}}))
    AnycastIpListSummary.add_member(:ip_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "IpCount", traits: {"smithy.api#required" => {}}))
    AnycastIpListSummary.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime", traits: {"smithy.api#required" => {}}))
    AnycastIpListSummary.type = Types::AnycastIpListSummary
    AnycastIps.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "AnycastIp"})
    AssociateAliasRequest.add_member(:target_distribution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetDistributionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateAliasRequest.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Alias", traits: {"smithy.api#httpQuery" => "Alias", "smithy.api#required" => {}}))
    AssociateAliasRequest.type = Types::AssociateAliasRequest
    AssociateDistributionTenantWebACLRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateDistributionTenantWebACLRequest.add_member(:web_acl_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "WebACLArn", traits: {"smithy.api#required" => {}}))
    AssociateDistributionTenantWebACLRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    AssociateDistributionTenantWebACLRequest.type = Types::AssociateDistributionTenantWebACLRequest
    AssociateDistributionTenantWebACLResult.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    AssociateDistributionTenantWebACLResult.add_member(:web_acl_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "WebACLArn"))
    AssociateDistributionTenantWebACLResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    AssociateDistributionTenantWebACLResult.type = Types::AssociateDistributionTenantWebACLResult
    AssociateDistributionWebACLRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateDistributionWebACLRequest.add_member(:web_acl_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "WebACLArn", traits: {"smithy.api#required" => {}}))
    AssociateDistributionWebACLRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    AssociateDistributionWebACLRequest.type = Types::AssociateDistributionWebACLRequest
    AssociateDistributionWebACLResult.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    AssociateDistributionWebACLResult.add_member(:web_acl_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "WebACLArn"))
    AssociateDistributionWebACLResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    AssociateDistributionWebACLResult.type = Types::AssociateDistributionWebACLResult
    AwsAccountNumberList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "AwsAccountNumber"})
    BatchTooLarge.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    BatchTooLarge.type = Types::BatchTooLarge
    CNAMEAlreadyExists.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    CNAMEAlreadyExists.type = Types::CNAMEAlreadyExists
    CacheBehavior.add_member(:path_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PathPattern", traits: {"smithy.api#required" => {}}))
    CacheBehavior.add_member(:target_origin_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetOriginId", traits: {"smithy.api#required" => {}}))
    CacheBehavior.add_member(:trusted_signers, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedSigners, name: "TrustedSigners"))
    CacheBehavior.add_member(:trusted_key_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedKeyGroups, name: "TrustedKeyGroups"))
    CacheBehavior.add_member(:viewer_protocol_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewerProtocolPolicy, name: "ViewerProtocolPolicy", traits: {"smithy.api#required" => {}}))
    CacheBehavior.add_member(:allowed_methods, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedMethods, name: "AllowedMethods"))
    CacheBehavior.add_member(:smooth_streaming, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SmoothStreaming"))
    CacheBehavior.add_member(:compress, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Compress"))
    CacheBehavior.add_member(:lambda_function_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionAssociations, name: "LambdaFunctionAssociations"))
    CacheBehavior.add_member(:function_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionAssociations, name: "FunctionAssociations"))
    CacheBehavior.add_member(:field_level_encryption_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FieldLevelEncryptionId"))
    CacheBehavior.add_member(:realtime_log_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RealtimeLogConfigArn"))
    CacheBehavior.add_member(:cache_policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CachePolicyId"))
    CacheBehavior.add_member(:origin_request_policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OriginRequestPolicyId"))
    CacheBehavior.add_member(:response_headers_policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResponseHeadersPolicyId"))
    CacheBehavior.add_member(:grpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: GrpcConfig, name: "GrpcConfig"))
    CacheBehavior.add_member(:forwarded_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ForwardedValues, name: "ForwardedValues", traits: {"smithy.api#deprecated" => {}}))
    CacheBehavior.add_member(:min_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "MinTTL", traits: {"smithy.api#deprecated" => {}}))
    CacheBehavior.add_member(:default_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "DefaultTTL", traits: {"smithy.api#deprecated" => {}}))
    CacheBehavior.add_member(:max_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "MaxTTL", traits: {"smithy.api#deprecated" => {}}))
    CacheBehavior.type = Types::CacheBehavior
    CacheBehaviorList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CacheBehavior, name: "member", traits: {"smithy.api#xmlName" => "CacheBehavior"})
    CacheBehaviors.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    CacheBehaviors.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheBehaviorList, name: "Items"))
    CacheBehaviors.type = Types::CacheBehaviors
    CachePolicy.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#required" => {}}))
    CachePolicy.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime", traits: {"smithy.api#required" => {}}))
    CachePolicy.add_member(:cache_policy_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CachePolicyConfig, name: "CachePolicyConfig", traits: {"smithy.api#required" => {}}))
    CachePolicy.type = Types::CachePolicy
    CachePolicyAlreadyExists.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    CachePolicyAlreadyExists.type = Types::CachePolicyAlreadyExists
    CachePolicyConfig.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Comment"))
    CachePolicyConfig.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    CachePolicyConfig.add_member(:default_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "DefaultTTL"))
    CachePolicyConfig.add_member(:max_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "MaxTTL"))
    CachePolicyConfig.add_member(:min_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "MinTTL", traits: {"smithy.api#required" => {}}))
    CachePolicyConfig.add_member(:parameters_in_cache_key_and_forwarded_to_origin, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersInCacheKeyAndForwardedToOrigin, name: "ParametersInCacheKeyAndForwardedToOrigin"))
    CachePolicyConfig.type = Types::CachePolicyConfig
    CachePolicyCookieBehavior.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "none", traits: {"smithy.api#enumValue" => "none"}))
    CachePolicyCookieBehavior.add_member(:whitelist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "whitelist", traits: {"smithy.api#enumValue" => "whitelist"}))
    CachePolicyCookieBehavior.add_member(:all_except, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "allExcept", traits: {"smithy.api#enumValue" => "allExcept"}))
    CachePolicyCookieBehavior.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "all", traits: {"smithy.api#enumValue" => "all"}))
    CachePolicyCookiesConfig.add_member(:cookie_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: CachePolicyCookieBehavior, name: "CookieBehavior", traits: {"smithy.api#required" => {}}))
    CachePolicyCookiesConfig.add_member(:cookies, ::Smithy::Schema::Shapes::MemberShape.new(target: CookieNames, name: "Cookies"))
    CachePolicyCookiesConfig.type = Types::CachePolicyCookiesConfig
    CachePolicyHeaderBehavior.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "none", traits: {"smithy.api#enumValue" => "none"}))
    CachePolicyHeaderBehavior.add_member(:whitelist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "whitelist", traits: {"smithy.api#enumValue" => "whitelist"}))
    CachePolicyHeadersConfig.add_member(:header_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: CachePolicyHeaderBehavior, name: "HeaderBehavior", traits: {"smithy.api#required" => {}}))
    CachePolicyHeadersConfig.add_member(:headers, ::Smithy::Schema::Shapes::MemberShape.new(target: Headers, name: "Headers"))
    CachePolicyHeadersConfig.type = Types::CachePolicyHeadersConfig
    CachePolicyInUse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    CachePolicyInUse.type = Types::CachePolicyInUse
    CachePolicyList.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker"))
    CachePolicyList.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#required" => {}}))
    CachePolicyList.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    CachePolicyList.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: CachePolicySummaryList, name: "Items"))
    CachePolicyList.type = Types::CachePolicyList
    CachePolicyQueryStringBehavior.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "none", traits: {"smithy.api#enumValue" => "none"}))
    CachePolicyQueryStringBehavior.add_member(:whitelist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "whitelist", traits: {"smithy.api#enumValue" => "whitelist"}))
    CachePolicyQueryStringBehavior.add_member(:all_except, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "allExcept", traits: {"smithy.api#enumValue" => "allExcept"}))
    CachePolicyQueryStringBehavior.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "all", traits: {"smithy.api#enumValue" => "all"}))
    CachePolicyQueryStringsConfig.add_member(:query_string_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: CachePolicyQueryStringBehavior, name: "QueryStringBehavior", traits: {"smithy.api#required" => {}}))
    CachePolicyQueryStringsConfig.add_member(:query_strings, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStringNames, name: "QueryStrings"))
    CachePolicyQueryStringsConfig.type = Types::CachePolicyQueryStringsConfig
    CachePolicySummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: CachePolicyType, name: "Type", traits: {"smithy.api#required" => {}}))
    CachePolicySummary.add_member(:cache_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: CachePolicy, name: "CachePolicy", traits: {"smithy.api#required" => {}}))
    CachePolicySummary.type = Types::CachePolicySummary
    CachePolicySummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CachePolicySummary, name: "member", traits: {"smithy.api#xmlName" => "CachePolicySummary"})
    CachePolicyType.add_member(:managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "managed", traits: {"smithy.api#enumValue" => "managed"}))
    CachePolicyType.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "custom", traits: {"smithy.api#enumValue" => "custom"}))
    CachedMethods.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    CachedMethods.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: MethodsList, name: "Items", traits: {"smithy.api#required" => {}}))
    CachedMethods.type = Types::CachedMethods
    CannotChangeImmutablePublicKeyFields.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    CannotChangeImmutablePublicKeyFields.type = Types::CannotChangeImmutablePublicKeyFields
    CannotDeleteEntityWhileInUse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    CannotDeleteEntityWhileInUse.type = Types::CannotDeleteEntityWhileInUse
    CannotUpdateEntityWhileInUse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    CannotUpdateEntityWhileInUse.type = Types::CannotUpdateEntityWhileInUse
    Certificate.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#required" => {}}))
    Certificate.type = Types::Certificate
    CertificateSource.add_member(:cloudfront, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "cloudfront", traits: {"smithy.api#enumValue" => "cloudfront"}))
    CertificateSource.add_member(:iam, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "iam", traits: {"smithy.api#enumValue" => "iam"}))
    CertificateSource.add_member(:acm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "acm", traits: {"smithy.api#enumValue" => "acm"}))
    CertificateTransparencyLoggingPreference.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "enabled"}))
    CertificateTransparencyLoggingPreference.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disabled", traits: {"smithy.api#enumValue" => "disabled"}))
    CloudFrontOriginAccessIdentity.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#required" => {}}))
    CloudFrontOriginAccessIdentity.add_member(:s3_canonical_user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3CanonicalUserId", traits: {"smithy.api#required" => {}}))
    CloudFrontOriginAccessIdentity.add_member(:cloud_front_origin_access_identity_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudFrontOriginAccessIdentityConfig, name: "CloudFrontOriginAccessIdentityConfig"))
    CloudFrontOriginAccessIdentity.type = Types::CloudFrontOriginAccessIdentity
    CloudFrontOriginAccessIdentityAlreadyExists.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    CloudFrontOriginAccessIdentityAlreadyExists.type = Types::CloudFrontOriginAccessIdentityAlreadyExists
    CloudFrontOriginAccessIdentityConfig.add_member(:caller_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CallerReference", traits: {"smithy.api#required" => {}}))
    CloudFrontOriginAccessIdentityConfig.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Comment", traits: {"smithy.api#required" => {}}))
    CloudFrontOriginAccessIdentityConfig.type = Types::CloudFrontOriginAccessIdentityConfig
    CloudFrontOriginAccessIdentityInUse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    CloudFrontOriginAccessIdentityInUse.type = Types::CloudFrontOriginAccessIdentityInUse
    CloudFrontOriginAccessIdentityList.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#required" => {}}))
    CloudFrontOriginAccessIdentityList.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker"))
    CloudFrontOriginAccessIdentityList.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#required" => {}}))
    CloudFrontOriginAccessIdentityList.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsTruncated", traits: {"smithy.api#required" => {}}))
    CloudFrontOriginAccessIdentityList.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    CloudFrontOriginAccessIdentityList.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudFrontOriginAccessIdentitySummaryList, name: "Items"))
    CloudFrontOriginAccessIdentityList.type = Types::CloudFrontOriginAccessIdentityList
    CloudFrontOriginAccessIdentitySummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#required" => {}}))
    CloudFrontOriginAccessIdentitySummary.add_member(:s3_canonical_user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3CanonicalUserId", traits: {"smithy.api#required" => {}}))
    CloudFrontOriginAccessIdentitySummary.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Comment", traits: {"smithy.api#required" => {}}))
    CloudFrontOriginAccessIdentitySummary.type = Types::CloudFrontOriginAccessIdentitySummary
    CloudFrontOriginAccessIdentitySummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CloudFrontOriginAccessIdentitySummary, name: "member", traits: {"smithy.api#xmlName" => "CloudFrontOriginAccessIdentitySummary"})
    ConflictingAlias.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Alias"))
    ConflictingAlias.add_member(:distribution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DistributionId"))
    ConflictingAlias.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AccountId"))
    ConflictingAlias.type = Types::ConflictingAlias
    ConflictingAliases.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictingAlias, name: "member", traits: {"smithy.api#xmlName" => "ConflictingAlias"})
    ConflictingAliasesList.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker"))
    ConflictingAliasesList.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems"))
    ConflictingAliasesList.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity"))
    ConflictingAliasesList.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictingAliases, name: "Items"))
    ConflictingAliasesList.type = Types::ConflictingAliasesList
    ConnectionGroup.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    ConnectionGroup.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    ConnectionGroup.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    ConnectionGroup.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime"))
    ConnectionGroup.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime"))
    ConnectionGroup.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    ConnectionGroup.add_member(:ipv6_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Ipv6Enabled"))
    ConnectionGroup.add_member(:routing_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RoutingEndpoint"))
    ConnectionGroup.add_member(:anycast_ip_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AnycastIpListId"))
    ConnectionGroup.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    ConnectionGroup.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled"))
    ConnectionGroup.add_member(:is_default, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsDefault"))
    ConnectionGroup.type = Types::ConnectionGroup
    ConnectionGroupAssociationFilter.add_member(:anycast_ip_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AnycastIpListId"))
    ConnectionGroupAssociationFilter.type = Types::ConnectionGroupAssociationFilter
    ConnectionGroupSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#required" => {}}))
    ConnectionGroupSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    ConnectionGroupSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#required" => {}}))
    ConnectionGroupSummary.add_member(:routing_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RoutingEndpoint", traits: {"smithy.api#required" => {}}))
    ConnectionGroupSummary.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime", traits: {"smithy.api#required" => {}}))
    ConnectionGroupSummary.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime", traits: {"smithy.api#required" => {}}))
    ConnectionGroupSummary.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#required" => {}}))
    ConnectionGroupSummary.add_member(:anycast_ip_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AnycastIpListId"))
    ConnectionGroupSummary.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled"))
    ConnectionGroupSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    ConnectionGroupSummary.add_member(:is_default, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsDefault"))
    ConnectionGroupSummary.type = Types::ConnectionGroupSummary
    ConnectionGroupSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionGroupSummary, name: "member", traits: {"smithy.api#xmlName" => "ConnectionGroupSummary"})
    ConnectionMode.add_member(:direct, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Direct", traits: {"smithy.api#enumValue" => "direct"}))
    ConnectionMode.add_member(:tenant_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TenantOnly", traits: {"smithy.api#enumValue" => "tenant-only"}))
    ContentTypeProfile.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: Format, name: "Format", traits: {"smithy.api#required" => {}}))
    ContentTypeProfile.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProfileId"))
    ContentTypeProfile.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ContentType", traits: {"smithy.api#required" => {}}))
    ContentTypeProfile.type = Types::ContentTypeProfile
    ContentTypeProfileConfig.add_member(:forward_when_content_type_is_unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ForwardWhenContentTypeIsUnknown", traits: {"smithy.api#required" => {}}))
    ContentTypeProfileConfig.add_member(:content_type_profiles, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentTypeProfiles, name: "ContentTypeProfiles"))
    ContentTypeProfileConfig.type = Types::ContentTypeProfileConfig
    ContentTypeProfileList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContentTypeProfile, name: "member", traits: {"smithy.api#xmlName" => "ContentTypeProfile"})
    ContentTypeProfiles.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    ContentTypeProfiles.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentTypeProfileList, name: "Items"))
    ContentTypeProfiles.type = Types::ContentTypeProfiles
    ContinuousDeploymentPolicy.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#required" => {}}))
    ContinuousDeploymentPolicy.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime", traits: {"smithy.api#required" => {}}))
    ContinuousDeploymentPolicy.add_member(:continuous_deployment_policy_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuousDeploymentPolicyConfig, name: "ContinuousDeploymentPolicyConfig", traits: {"smithy.api#required" => {}}))
    ContinuousDeploymentPolicy.type = Types::ContinuousDeploymentPolicy
    ContinuousDeploymentPolicyAlreadyExists.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ContinuousDeploymentPolicyAlreadyExists.type = Types::ContinuousDeploymentPolicyAlreadyExists
    ContinuousDeploymentPolicyConfig.add_member(:staging_distribution_dns_names, ::Smithy::Schema::Shapes::MemberShape.new(target: StagingDistributionDnsNames, name: "StagingDistributionDnsNames", traits: {"smithy.api#required" => {}}))
    ContinuousDeploymentPolicyConfig.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#required" => {}}))
    ContinuousDeploymentPolicyConfig.add_member(:traffic_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficConfig, name: "TrafficConfig"))
    ContinuousDeploymentPolicyConfig.type = Types::ContinuousDeploymentPolicyConfig
    ContinuousDeploymentPolicyInUse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ContinuousDeploymentPolicyInUse.type = Types::ContinuousDeploymentPolicyInUse
    ContinuousDeploymentPolicyList.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker"))
    ContinuousDeploymentPolicyList.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#required" => {}}))
    ContinuousDeploymentPolicyList.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    ContinuousDeploymentPolicyList.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuousDeploymentPolicySummaryList, name: "Items"))
    ContinuousDeploymentPolicyList.type = Types::ContinuousDeploymentPolicyList
    ContinuousDeploymentPolicySummary.add_member(:continuous_deployment_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuousDeploymentPolicy, name: "ContinuousDeploymentPolicy", traits: {"smithy.api#required" => {}}))
    ContinuousDeploymentPolicySummary.type = Types::ContinuousDeploymentPolicySummary
    ContinuousDeploymentPolicySummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuousDeploymentPolicySummary, name: "member", traits: {"smithy.api#xmlName" => "ContinuousDeploymentPolicySummary"})
    ContinuousDeploymentPolicyType.add_member(:single_weight, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SingleWeight", traits: {"smithy.api#enumValue" => "SingleWeight"}))
    ContinuousDeploymentPolicyType.add_member(:single_header, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SingleHeader", traits: {"smithy.api#enumValue" => "SingleHeader"}))
    ContinuousDeploymentSingleHeaderConfig.add_member(:header, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Header", traits: {"smithy.api#required" => {}}))
    ContinuousDeploymentSingleHeaderConfig.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Value", traits: {"smithy.api#required" => {}}))
    ContinuousDeploymentSingleHeaderConfig.type = Types::ContinuousDeploymentSingleHeaderConfig
    ContinuousDeploymentSingleWeightConfig.add_member(:weight, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "Weight", traits: {"smithy.api#required" => {}}))
    ContinuousDeploymentSingleWeightConfig.add_member(:session_stickiness_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionStickinessConfig, name: "SessionStickinessConfig"))
    ContinuousDeploymentSingleWeightConfig.type = Types::ContinuousDeploymentSingleWeightConfig
    CookieNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "Name"})
    CookieNames.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    CookieNames.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: CookieNameList, name: "Items"))
    CookieNames.type = Types::CookieNames
    CookiePreference.add_member(:forward, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemSelection, name: "Forward", traits: {"smithy.api#required" => {}}))
    CookiePreference.add_member(:whitelisted_names, ::Smithy::Schema::Shapes::MemberShape.new(target: CookieNames, name: "WhitelistedNames"))
    CookiePreference.type = Types::CookiePreference
    CopyDistributionRequest.add_member(:primary_distribution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PrimaryDistributionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CopyDistributionRequest.add_member(:staging, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Staging", traits: {"smithy.api#httpHeader" => "Staging"}))
    CopyDistributionRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    CopyDistributionRequest.add_member(:caller_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CallerReference", traits: {"smithy.api#required" => {}}))
    CopyDistributionRequest.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled"))
    CopyDistributionRequest.type = Types::CopyDistributionRequest
    CopyDistributionResult.add_member(:distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: Distribution, name: "Distribution", traits: {"smithy.api#httpPayload" => {}}))
    CopyDistributionResult.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Location", traits: {"smithy.api#httpHeader" => "Location"}))
    CopyDistributionResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    CopyDistributionResult[:http_payload] = :distribution
    CopyDistributionResult[:http_payload_member] = CopyDistributionResult.member(:distribution)
    CopyDistributionResult.type = Types::CopyDistributionResult
    CreateAnycastIpListRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AnycastIpListName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateAnycastIpListRequest.add_member(:ip_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "IpCount", traits: {"smithy.api#required" => {}}))
    CreateAnycastIpListRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateAnycastIpListRequest.type = Types::CreateAnycastIpListRequest
    CreateAnycastIpListResult.add_member(:anycast_ip_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AnycastIpList, name: "AnycastIpList", traits: {"smithy.api#httpPayload" => {}}))
    CreateAnycastIpListResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    CreateAnycastIpListResult[:http_payload] = :anycast_ip_list
    CreateAnycastIpListResult[:http_payload_member] = CreateAnycastIpListResult.member(:anycast_ip_list)
    CreateAnycastIpListResult.type = Types::CreateAnycastIpListResult
    CreateCachePolicyRequest.add_member(:cache_policy_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CachePolicyConfig, name: "CachePolicyConfig", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "CachePolicyConfig"}))
    CreateCachePolicyRequest[:http_payload] = :cache_policy_config
    CreateCachePolicyRequest[:http_payload_member] = CreateCachePolicyRequest.member(:cache_policy_config)
    CreateCachePolicyRequest.type = Types::CreateCachePolicyRequest
    CreateCachePolicyResult.add_member(:cache_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: CachePolicy, name: "CachePolicy", traits: {"smithy.api#httpPayload" => {}}))
    CreateCachePolicyResult.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Location", traits: {"smithy.api#httpHeader" => "Location"}))
    CreateCachePolicyResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    CreateCachePolicyResult[:http_payload] = :cache_policy
    CreateCachePolicyResult[:http_payload_member] = CreateCachePolicyResult.member(:cache_policy)
    CreateCachePolicyResult.type = Types::CreateCachePolicyResult
    CreateCloudFrontOriginAccessIdentityRequest.add_member(:cloud_front_origin_access_identity_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudFrontOriginAccessIdentityConfig, name: "CloudFrontOriginAccessIdentityConfig", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "CloudFrontOriginAccessIdentityConfig"}))
    CreateCloudFrontOriginAccessIdentityRequest[:http_payload] = :cloud_front_origin_access_identity_config
    CreateCloudFrontOriginAccessIdentityRequest[:http_payload_member] = CreateCloudFrontOriginAccessIdentityRequest.member(:cloud_front_origin_access_identity_config)
    CreateCloudFrontOriginAccessIdentityRequest.type = Types::CreateCloudFrontOriginAccessIdentityRequest
    CreateCloudFrontOriginAccessIdentityResult.add_member(:cloud_front_origin_access_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudFrontOriginAccessIdentity, name: "CloudFrontOriginAccessIdentity", traits: {"smithy.api#httpPayload" => {}}))
    CreateCloudFrontOriginAccessIdentityResult.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Location", traits: {"smithy.api#httpHeader" => "Location"}))
    CreateCloudFrontOriginAccessIdentityResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    CreateCloudFrontOriginAccessIdentityResult[:http_payload] = :cloud_front_origin_access_identity
    CreateCloudFrontOriginAccessIdentityResult[:http_payload_member] = CreateCloudFrontOriginAccessIdentityResult.member(:cloud_front_origin_access_identity)
    CreateCloudFrontOriginAccessIdentityResult.type = Types::CreateCloudFrontOriginAccessIdentityResult
    CreateConnectionGroupRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateConnectionGroupRequest.add_member(:ipv6_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Ipv6Enabled"))
    CreateConnectionGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateConnectionGroupRequest.add_member(:anycast_ip_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AnycastIpListId"))
    CreateConnectionGroupRequest.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled"))
    CreateConnectionGroupRequest.type = Types::CreateConnectionGroupRequest
    CreateConnectionGroupResult.add_member(:connection_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionGroup, name: "ConnectionGroup", traits: {"smithy.api#httpPayload" => {}}))
    CreateConnectionGroupResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    CreateConnectionGroupResult[:http_payload] = :connection_group
    CreateConnectionGroupResult[:http_payload_member] = CreateConnectionGroupResult.member(:connection_group)
    CreateConnectionGroupResult.type = Types::CreateConnectionGroupResult
    CreateContinuousDeploymentPolicyRequest.add_member(:continuous_deployment_policy_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuousDeploymentPolicyConfig, name: "ContinuousDeploymentPolicyConfig", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "ContinuousDeploymentPolicyConfig"}))
    CreateContinuousDeploymentPolicyRequest[:http_payload] = :continuous_deployment_policy_config
    CreateContinuousDeploymentPolicyRequest[:http_payload_member] = CreateContinuousDeploymentPolicyRequest.member(:continuous_deployment_policy_config)
    CreateContinuousDeploymentPolicyRequest.type = Types::CreateContinuousDeploymentPolicyRequest
    CreateContinuousDeploymentPolicyResult.add_member(:continuous_deployment_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuousDeploymentPolicy, name: "ContinuousDeploymentPolicy", traits: {"smithy.api#httpPayload" => {}}))
    CreateContinuousDeploymentPolicyResult.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Location", traits: {"smithy.api#httpHeader" => "Location"}))
    CreateContinuousDeploymentPolicyResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    CreateContinuousDeploymentPolicyResult[:http_payload] = :continuous_deployment_policy
    CreateContinuousDeploymentPolicyResult[:http_payload_member] = CreateContinuousDeploymentPolicyResult.member(:continuous_deployment_policy)
    CreateContinuousDeploymentPolicyResult.type = Types::CreateContinuousDeploymentPolicyResult
    CreateDistributionRequest.add_member(:distribution_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionConfig, name: "DistributionConfig", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "DistributionConfig"}))
    CreateDistributionRequest[:http_payload] = :distribution_config
    CreateDistributionRequest[:http_payload_member] = CreateDistributionRequest.member(:distribution_config)
    CreateDistributionRequest.type = Types::CreateDistributionRequest
    CreateDistributionResult.add_member(:distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: Distribution, name: "Distribution", traits: {"smithy.api#httpPayload" => {}}))
    CreateDistributionResult.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Location", traits: {"smithy.api#httpHeader" => "Location"}))
    CreateDistributionResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    CreateDistributionResult[:http_payload] = :distribution
    CreateDistributionResult[:http_payload_member] = CreateDistributionResult.member(:distribution)
    CreateDistributionResult.type = Types::CreateDistributionResult
    CreateDistributionTenantRequest.add_member(:distribution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DistributionId", traits: {"smithy.api#required" => {}}))
    CreateDistributionTenantRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-.]{1,126}[a-zA-Z0-9]$", "smithy.api#required" => {}}))
    CreateDistributionTenantRequest.add_member(:domains, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainList, name: "Domains", traits: {"smithy.api#required" => {}}))
    CreateDistributionTenantRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateDistributionTenantRequest.add_member(:customizations, ::Smithy::Schema::Shapes::MemberShape.new(target: Customizations, name: "Customizations"))
    CreateDistributionTenantRequest.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameters, name: "Parameters"))
    CreateDistributionTenantRequest.add_member(:connection_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConnectionGroupId"))
    CreateDistributionTenantRequest.add_member(:managed_certificate_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedCertificateRequest, name: "ManagedCertificateRequest"))
    CreateDistributionTenantRequest.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled"))
    CreateDistributionTenantRequest.type = Types::CreateDistributionTenantRequest
    CreateDistributionTenantResult.add_member(:distribution_tenant, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionTenant, name: "DistributionTenant", traits: {"smithy.api#httpPayload" => {}}))
    CreateDistributionTenantResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    CreateDistributionTenantResult[:http_payload] = :distribution_tenant
    CreateDistributionTenantResult[:http_payload_member] = CreateDistributionTenantResult.member(:distribution_tenant)
    CreateDistributionTenantResult.type = Types::CreateDistributionTenantResult
    CreateDistributionWithTagsRequest.add_member(:distribution_config_with_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionConfigWithTags, name: "DistributionConfigWithTags", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "DistributionConfigWithTags"}))
    CreateDistributionWithTagsRequest[:http_payload] = :distribution_config_with_tags
    CreateDistributionWithTagsRequest[:http_payload_member] = CreateDistributionWithTagsRequest.member(:distribution_config_with_tags)
    CreateDistributionWithTagsRequest.type = Types::CreateDistributionWithTagsRequest
    CreateDistributionWithTagsResult.add_member(:distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: Distribution, name: "Distribution", traits: {"smithy.api#httpPayload" => {}}))
    CreateDistributionWithTagsResult.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Location", traits: {"smithy.api#httpHeader" => "Location"}))
    CreateDistributionWithTagsResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    CreateDistributionWithTagsResult[:http_payload] = :distribution
    CreateDistributionWithTagsResult[:http_payload_member] = CreateDistributionWithTagsResult.member(:distribution)
    CreateDistributionWithTagsResult.type = Types::CreateDistributionWithTagsResult
    CreateFieldLevelEncryptionConfigRequest.add_member(:field_level_encryption_config, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldLevelEncryptionConfig, name: "FieldLevelEncryptionConfig", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "FieldLevelEncryptionConfig"}))
    CreateFieldLevelEncryptionConfigRequest[:http_payload] = :field_level_encryption_config
    CreateFieldLevelEncryptionConfigRequest[:http_payload_member] = CreateFieldLevelEncryptionConfigRequest.member(:field_level_encryption_config)
    CreateFieldLevelEncryptionConfigRequest.type = Types::CreateFieldLevelEncryptionConfigRequest
    CreateFieldLevelEncryptionConfigResult.add_member(:field_level_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldLevelEncryption, name: "FieldLevelEncryption", traits: {"smithy.api#httpPayload" => {}}))
    CreateFieldLevelEncryptionConfigResult.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Location", traits: {"smithy.api#httpHeader" => "Location"}))
    CreateFieldLevelEncryptionConfigResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    CreateFieldLevelEncryptionConfigResult[:http_payload] = :field_level_encryption
    CreateFieldLevelEncryptionConfigResult[:http_payload_member] = CreateFieldLevelEncryptionConfigResult.member(:field_level_encryption)
    CreateFieldLevelEncryptionConfigResult.type = Types::CreateFieldLevelEncryptionConfigResult
    CreateFieldLevelEncryptionProfileRequest.add_member(:field_level_encryption_profile_config, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldLevelEncryptionProfileConfig, name: "FieldLevelEncryptionProfileConfig", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "FieldLevelEncryptionProfileConfig"}))
    CreateFieldLevelEncryptionProfileRequest[:http_payload] = :field_level_encryption_profile_config
    CreateFieldLevelEncryptionProfileRequest[:http_payload_member] = CreateFieldLevelEncryptionProfileRequest.member(:field_level_encryption_profile_config)
    CreateFieldLevelEncryptionProfileRequest.type = Types::CreateFieldLevelEncryptionProfileRequest
    CreateFieldLevelEncryptionProfileResult.add_member(:field_level_encryption_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldLevelEncryptionProfile, name: "FieldLevelEncryptionProfile", traits: {"smithy.api#httpPayload" => {}}))
    CreateFieldLevelEncryptionProfileResult.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Location", traits: {"smithy.api#httpHeader" => "Location"}))
    CreateFieldLevelEncryptionProfileResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    CreateFieldLevelEncryptionProfileResult[:http_payload] = :field_level_encryption_profile
    CreateFieldLevelEncryptionProfileResult[:http_payload_member] = CreateFieldLevelEncryptionProfileResult.member(:field_level_encryption_profile)
    CreateFieldLevelEncryptionProfileResult.type = Types::CreateFieldLevelEncryptionProfileResult
    CreateFunctionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateFunctionRequest.add_member(:function_config, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionConfig, name: "FunctionConfig", traits: {"smithy.api#required" => {}}))
    CreateFunctionRequest.add_member(:function_code, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionBlob, name: "FunctionCode", traits: {"smithy.api#required" => {}}))
    CreateFunctionRequest.type = Types::CreateFunctionRequest
    CreateFunctionResult.add_member(:function_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionSummary, name: "FunctionSummary", traits: {"smithy.api#httpPayload" => {}}))
    CreateFunctionResult.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Location", traits: {"smithy.api#httpHeader" => "Location"}))
    CreateFunctionResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    CreateFunctionResult[:http_payload] = :function_summary
    CreateFunctionResult[:http_payload_member] = CreateFunctionResult.member(:function_summary)
    CreateFunctionResult.type = Types::CreateFunctionResult
    CreateInvalidationForDistributionTenantRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateInvalidationForDistributionTenantRequest.add_member(:invalidation_batch, ::Smithy::Schema::Shapes::MemberShape.new(target: InvalidationBatch, name: "InvalidationBatch", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "InvalidationBatch"}))
    CreateInvalidationForDistributionTenantRequest[:http_payload] = :invalidation_batch
    CreateInvalidationForDistributionTenantRequest[:http_payload_member] = CreateInvalidationForDistributionTenantRequest.member(:invalidation_batch)
    CreateInvalidationForDistributionTenantRequest.type = Types::CreateInvalidationForDistributionTenantRequest
    CreateInvalidationForDistributionTenantResult.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Location", traits: {"smithy.api#httpHeader" => "Location"}))
    CreateInvalidationForDistributionTenantResult.add_member(:invalidation, ::Smithy::Schema::Shapes::MemberShape.new(target: Invalidation, name: "Invalidation", traits: {"smithy.api#httpPayload" => {}}))
    CreateInvalidationForDistributionTenantResult[:http_payload] = :invalidation
    CreateInvalidationForDistributionTenantResult[:http_payload_member] = CreateInvalidationForDistributionTenantResult.member(:invalidation)
    CreateInvalidationForDistributionTenantResult.type = Types::CreateInvalidationForDistributionTenantResult
    CreateInvalidationRequest.add_member(:distribution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DistributionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateInvalidationRequest.add_member(:invalidation_batch, ::Smithy::Schema::Shapes::MemberShape.new(target: InvalidationBatch, name: "InvalidationBatch", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "InvalidationBatch"}))
    CreateInvalidationRequest[:http_payload] = :invalidation_batch
    CreateInvalidationRequest[:http_payload_member] = CreateInvalidationRequest.member(:invalidation_batch)
    CreateInvalidationRequest.type = Types::CreateInvalidationRequest
    CreateInvalidationResult.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Location", traits: {"smithy.api#httpHeader" => "Location"}))
    CreateInvalidationResult.add_member(:invalidation, ::Smithy::Schema::Shapes::MemberShape.new(target: Invalidation, name: "Invalidation", traits: {"smithy.api#httpPayload" => {}}))
    CreateInvalidationResult[:http_payload] = :invalidation
    CreateInvalidationResult[:http_payload_member] = CreateInvalidationResult.member(:invalidation)
    CreateInvalidationResult.type = Types::CreateInvalidationResult
    CreateKeyGroupRequest.add_member(:key_group_config, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyGroupConfig, name: "KeyGroupConfig", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "KeyGroupConfig"}))
    CreateKeyGroupRequest[:http_payload] = :key_group_config
    CreateKeyGroupRequest[:http_payload_member] = CreateKeyGroupRequest.member(:key_group_config)
    CreateKeyGroupRequest.type = Types::CreateKeyGroupRequest
    CreateKeyGroupResult.add_member(:key_group, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyGroup, name: "KeyGroup", traits: {"smithy.api#httpPayload" => {}}))
    CreateKeyGroupResult.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Location", traits: {"smithy.api#httpHeader" => "Location"}))
    CreateKeyGroupResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    CreateKeyGroupResult[:http_payload] = :key_group
    CreateKeyGroupResult[:http_payload_member] = CreateKeyGroupResult.member(:key_group)
    CreateKeyGroupResult.type = Types::CreateKeyGroupResult
    CreateKeyValueStoreRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValueStoreName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateKeyValueStoreRequest.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValueStoreComment, name: "Comment"))
    CreateKeyValueStoreRequest.add_member(:import_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportSource, name: "ImportSource"))
    CreateKeyValueStoreRequest.type = Types::CreateKeyValueStoreRequest
    CreateKeyValueStoreResult.add_member(:key_value_store, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValueStore, name: "KeyValueStore", traits: {"smithy.api#httpPayload" => {}}))
    CreateKeyValueStoreResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    CreateKeyValueStoreResult.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Location", traits: {"smithy.api#httpHeader" => "Location"}))
    CreateKeyValueStoreResult[:http_payload] = :key_value_store
    CreateKeyValueStoreResult[:http_payload_member] = CreateKeyValueStoreResult.member(:key_value_store)
    CreateKeyValueStoreResult.type = Types::CreateKeyValueStoreResult
    CreateMonitoringSubscriptionRequest.add_member(:distribution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DistributionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateMonitoringSubscriptionRequest.add_member(:monitoring_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitoringSubscription, name: "MonitoringSubscription", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "MonitoringSubscription"}))
    CreateMonitoringSubscriptionRequest[:http_payload] = :monitoring_subscription
    CreateMonitoringSubscriptionRequest[:http_payload_member] = CreateMonitoringSubscriptionRequest.member(:monitoring_subscription)
    CreateMonitoringSubscriptionRequest.type = Types::CreateMonitoringSubscriptionRequest
    CreateMonitoringSubscriptionResult.add_member(:monitoring_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitoringSubscription, name: "MonitoringSubscription", traits: {"smithy.api#httpPayload" => {}}))
    CreateMonitoringSubscriptionResult[:http_payload] = :monitoring_subscription
    CreateMonitoringSubscriptionResult[:http_payload_member] = CreateMonitoringSubscriptionResult.member(:monitoring_subscription)
    CreateMonitoringSubscriptionResult.type = Types::CreateMonitoringSubscriptionResult
    CreateOriginAccessControlRequest.add_member(:origin_access_control_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginAccessControlConfig, name: "OriginAccessControlConfig", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "OriginAccessControlConfig"}))
    CreateOriginAccessControlRequest[:http_payload] = :origin_access_control_config
    CreateOriginAccessControlRequest[:http_payload_member] = CreateOriginAccessControlRequest.member(:origin_access_control_config)
    CreateOriginAccessControlRequest.type = Types::CreateOriginAccessControlRequest
    CreateOriginAccessControlResult.add_member(:origin_access_control, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginAccessControl, name: "OriginAccessControl", traits: {"smithy.api#httpPayload" => {}}))
    CreateOriginAccessControlResult.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Location", traits: {"smithy.api#httpHeader" => "Location"}))
    CreateOriginAccessControlResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    CreateOriginAccessControlResult[:http_payload] = :origin_access_control
    CreateOriginAccessControlResult[:http_payload_member] = CreateOriginAccessControlResult.member(:origin_access_control)
    CreateOriginAccessControlResult.type = Types::CreateOriginAccessControlResult
    CreateOriginRequestPolicyRequest.add_member(:origin_request_policy_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginRequestPolicyConfig, name: "OriginRequestPolicyConfig", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "OriginRequestPolicyConfig"}))
    CreateOriginRequestPolicyRequest[:http_payload] = :origin_request_policy_config
    CreateOriginRequestPolicyRequest[:http_payload_member] = CreateOriginRequestPolicyRequest.member(:origin_request_policy_config)
    CreateOriginRequestPolicyRequest.type = Types::CreateOriginRequestPolicyRequest
    CreateOriginRequestPolicyResult.add_member(:origin_request_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginRequestPolicy, name: "OriginRequestPolicy", traits: {"smithy.api#httpPayload" => {}}))
    CreateOriginRequestPolicyResult.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Location", traits: {"smithy.api#httpHeader" => "Location"}))
    CreateOriginRequestPolicyResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    CreateOriginRequestPolicyResult[:http_payload] = :origin_request_policy
    CreateOriginRequestPolicyResult[:http_payload_member] = CreateOriginRequestPolicyResult.member(:origin_request_policy)
    CreateOriginRequestPolicyResult.type = Types::CreateOriginRequestPolicyResult
    CreatePublicKeyRequest.add_member(:public_key_config, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicKeyConfig, name: "PublicKeyConfig", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "PublicKeyConfig"}))
    CreatePublicKeyRequest[:http_payload] = :public_key_config
    CreatePublicKeyRequest[:http_payload_member] = CreatePublicKeyRequest.member(:public_key_config)
    CreatePublicKeyRequest.type = Types::CreatePublicKeyRequest
    CreatePublicKeyResult.add_member(:public_key, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicKey, name: "PublicKey", traits: {"smithy.api#httpPayload" => {}}))
    CreatePublicKeyResult.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Location", traits: {"smithy.api#httpHeader" => "Location"}))
    CreatePublicKeyResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    CreatePublicKeyResult[:http_payload] = :public_key
    CreatePublicKeyResult[:http_payload_member] = CreatePublicKeyResult.member(:public_key)
    CreatePublicKeyResult.type = Types::CreatePublicKeyResult
    CreateRealtimeLogConfigRequest.add_member(:end_points, ::Smithy::Schema::Shapes::MemberShape.new(target: EndPointList, name: "EndPoints", traits: {"smithy.api#required" => {}}))
    CreateRealtimeLogConfigRequest.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldList, name: "Fields", traits: {"smithy.api#required" => {}}))
    CreateRealtimeLogConfigRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateRealtimeLogConfigRequest.add_member(:sampling_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "SamplingRate", traits: {"smithy.api#required" => {}}))
    CreateRealtimeLogConfigRequest.type = Types::CreateRealtimeLogConfigRequest
    CreateRealtimeLogConfigResult.add_member(:realtime_log_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RealtimeLogConfig, name: "RealtimeLogConfig"))
    CreateRealtimeLogConfigResult.type = Types::CreateRealtimeLogConfigResult
    CreateResponseHeadersPolicyRequest.add_member(:response_headers_policy_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseHeadersPolicyConfig, name: "ResponseHeadersPolicyConfig", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "ResponseHeadersPolicyConfig"}))
    CreateResponseHeadersPolicyRequest[:http_payload] = :response_headers_policy_config
    CreateResponseHeadersPolicyRequest[:http_payload_member] = CreateResponseHeadersPolicyRequest.member(:response_headers_policy_config)
    CreateResponseHeadersPolicyRequest.type = Types::CreateResponseHeadersPolicyRequest
    CreateResponseHeadersPolicyResult.add_member(:response_headers_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseHeadersPolicy, name: "ResponseHeadersPolicy", traits: {"smithy.api#httpPayload" => {}}))
    CreateResponseHeadersPolicyResult.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Location", traits: {"smithy.api#httpHeader" => "Location"}))
    CreateResponseHeadersPolicyResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    CreateResponseHeadersPolicyResult[:http_payload] = :response_headers_policy
    CreateResponseHeadersPolicyResult[:http_payload_member] = CreateResponseHeadersPolicyResult.member(:response_headers_policy)
    CreateResponseHeadersPolicyResult.type = Types::CreateResponseHeadersPolicyResult
    CreateStreamingDistributionRequest.add_member(:streaming_distribution_config, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingDistributionConfig, name: "StreamingDistributionConfig", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "StreamingDistributionConfig"}))
    CreateStreamingDistributionRequest[:http_payload] = :streaming_distribution_config
    CreateStreamingDistributionRequest[:http_payload_member] = CreateStreamingDistributionRequest.member(:streaming_distribution_config)
    CreateStreamingDistributionRequest.type = Types::CreateStreamingDistributionRequest
    CreateStreamingDistributionResult.add_member(:streaming_distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingDistribution, name: "StreamingDistribution", traits: {"smithy.api#httpPayload" => {}}))
    CreateStreamingDistributionResult.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Location", traits: {"smithy.api#httpHeader" => "Location"}))
    CreateStreamingDistributionResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    CreateStreamingDistributionResult[:http_payload] = :streaming_distribution
    CreateStreamingDistributionResult[:http_payload_member] = CreateStreamingDistributionResult.member(:streaming_distribution)
    CreateStreamingDistributionResult.type = Types::CreateStreamingDistributionResult
    CreateStreamingDistributionWithTagsRequest.add_member(:streaming_distribution_config_with_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingDistributionConfigWithTags, name: "StreamingDistributionConfigWithTags", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "StreamingDistributionConfigWithTags"}))
    CreateStreamingDistributionWithTagsRequest[:http_payload] = :streaming_distribution_config_with_tags
    CreateStreamingDistributionWithTagsRequest[:http_payload_member] = CreateStreamingDistributionWithTagsRequest.member(:streaming_distribution_config_with_tags)
    CreateStreamingDistributionWithTagsRequest.type = Types::CreateStreamingDistributionWithTagsRequest
    CreateStreamingDistributionWithTagsResult.add_member(:streaming_distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingDistribution, name: "StreamingDistribution", traits: {"smithy.api#httpPayload" => {}}))
    CreateStreamingDistributionWithTagsResult.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Location", traits: {"smithy.api#httpHeader" => "Location"}))
    CreateStreamingDistributionWithTagsResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    CreateStreamingDistributionWithTagsResult[:http_payload] = :streaming_distribution
    CreateStreamingDistributionWithTagsResult[:http_payload_member] = CreateStreamingDistributionWithTagsResult.member(:streaming_distribution)
    CreateStreamingDistributionWithTagsResult.type = Types::CreateStreamingDistributionWithTagsResult
    CreateVpcOriginRequest.add_member(:vpc_origin_endpoint_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcOriginEndpointConfig, name: "VpcOriginEndpointConfig", traits: {"smithy.api#required" => {}}))
    CreateVpcOriginRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateVpcOriginRequest.type = Types::CreateVpcOriginRequest
    CreateVpcOriginResult.add_member(:vpc_origin, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcOrigin, name: "VpcOrigin", traits: {"smithy.api#httpPayload" => {}}))
    CreateVpcOriginResult.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Location", traits: {"smithy.api#httpHeader" => "Location"}))
    CreateVpcOriginResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    CreateVpcOriginResult[:http_payload] = :vpc_origin
    CreateVpcOriginResult[:http_payload_member] = CreateVpcOriginResult.member(:vpc_origin)
    CreateVpcOriginResult.type = Types::CreateVpcOriginResult
    CustomErrorResponse.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    CustomErrorResponse.add_member(:response_page_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResponsePagePath"))
    CustomErrorResponse.add_member(:response_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResponseCode"))
    CustomErrorResponse.add_member(:error_caching_min_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ErrorCachingMinTTL"))
    CustomErrorResponse.type = Types::CustomErrorResponse
    CustomErrorResponseList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CustomErrorResponse, name: "member", traits: {"smithy.api#xmlName" => "CustomErrorResponse"})
    CustomErrorResponses.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    CustomErrorResponses.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomErrorResponseList, name: "Items"))
    CustomErrorResponses.type = Types::CustomErrorResponses
    CustomHeaders.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    CustomHeaders.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginCustomHeadersList, name: "Items"))
    CustomHeaders.type = Types::CustomHeaders
    CustomOriginConfig.add_member(:http_port, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "HTTPPort", traits: {"smithy.api#required" => {}}))
    CustomOriginConfig.add_member(:https_port, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "HTTPSPort", traits: {"smithy.api#required" => {}}))
    CustomOriginConfig.add_member(:origin_protocol_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginProtocolPolicy, name: "OriginProtocolPolicy", traits: {"smithy.api#required" => {}}))
    CustomOriginConfig.add_member(:origin_ssl_protocols, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginSslProtocols, name: "OriginSslProtocols"))
    CustomOriginConfig.add_member(:origin_read_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "OriginReadTimeout"))
    CustomOriginConfig.add_member(:origin_keepalive_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "OriginKeepaliveTimeout"))
    CustomOriginConfig.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, name: "IpAddressType"))
    CustomOriginConfig.type = Types::CustomOriginConfig
    CustomizationActionType.add_member(:override, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "override", traits: {"smithy.api#enumValue" => "override"}))
    CustomizationActionType.add_member(:disable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "disable", traits: {"smithy.api#enumValue" => "disable"}))
    Customizations.add_member(:web_acl, ::Smithy::Schema::Shapes::MemberShape.new(target: WebAclCustomization, name: "WebAcl"))
    Customizations.add_member(:certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: Certificate, name: "Certificate"))
    Customizations.add_member(:geo_restrictions, ::Smithy::Schema::Shapes::MemberShape.new(target: GeoRestrictionCustomization, name: "GeoRestrictions"))
    Customizations.type = Types::Customizations
    DefaultCacheBehavior.add_member(:target_origin_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetOriginId", traits: {"smithy.api#required" => {}}))
    DefaultCacheBehavior.add_member(:trusted_signers, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedSigners, name: "TrustedSigners"))
    DefaultCacheBehavior.add_member(:trusted_key_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedKeyGroups, name: "TrustedKeyGroups"))
    DefaultCacheBehavior.add_member(:viewer_protocol_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewerProtocolPolicy, name: "ViewerProtocolPolicy", traits: {"smithy.api#required" => {}}))
    DefaultCacheBehavior.add_member(:allowed_methods, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedMethods, name: "AllowedMethods"))
    DefaultCacheBehavior.add_member(:smooth_streaming, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SmoothStreaming"))
    DefaultCacheBehavior.add_member(:compress, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Compress"))
    DefaultCacheBehavior.add_member(:lambda_function_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionAssociations, name: "LambdaFunctionAssociations"))
    DefaultCacheBehavior.add_member(:function_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionAssociations, name: "FunctionAssociations"))
    DefaultCacheBehavior.add_member(:field_level_encryption_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FieldLevelEncryptionId"))
    DefaultCacheBehavior.add_member(:realtime_log_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RealtimeLogConfigArn"))
    DefaultCacheBehavior.add_member(:cache_policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CachePolicyId"))
    DefaultCacheBehavior.add_member(:origin_request_policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OriginRequestPolicyId"))
    DefaultCacheBehavior.add_member(:response_headers_policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResponseHeadersPolicyId"))
    DefaultCacheBehavior.add_member(:grpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: GrpcConfig, name: "GrpcConfig"))
    DefaultCacheBehavior.add_member(:forwarded_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ForwardedValues, name: "ForwardedValues", traits: {"smithy.api#deprecated" => {}}))
    DefaultCacheBehavior.add_member(:min_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "MinTTL", traits: {"smithy.api#deprecated" => {}}))
    DefaultCacheBehavior.add_member(:default_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "DefaultTTL", traits: {"smithy.api#deprecated" => {}}))
    DefaultCacheBehavior.add_member(:max_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "MaxTTL", traits: {"smithy.api#deprecated" => {}}))
    DefaultCacheBehavior.type = Types::DefaultCacheBehavior
    DeleteAnycastIpListRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAnycastIpListRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match", "smithy.api#required" => {}}))
    DeleteAnycastIpListRequest.type = Types::DeleteAnycastIpListRequest
    DeleteCachePolicyRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCachePolicyRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    DeleteCachePolicyRequest.type = Types::DeleteCachePolicyRequest
    DeleteCloudFrontOriginAccessIdentityRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCloudFrontOriginAccessIdentityRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    DeleteCloudFrontOriginAccessIdentityRequest.type = Types::DeleteCloudFrontOriginAccessIdentityRequest
    DeleteConnectionGroupRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConnectionGroupRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match", "smithy.api#required" => {}}))
    DeleteConnectionGroupRequest.type = Types::DeleteConnectionGroupRequest
    DeleteContinuousDeploymentPolicyRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteContinuousDeploymentPolicyRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    DeleteContinuousDeploymentPolicyRequest.type = Types::DeleteContinuousDeploymentPolicyRequest
    DeleteDistributionRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDistributionRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    DeleteDistributionRequest.type = Types::DeleteDistributionRequest
    DeleteDistributionTenantRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDistributionTenantRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match", "smithy.api#required" => {}}))
    DeleteDistributionTenantRequest.type = Types::DeleteDistributionTenantRequest
    DeleteFieldLevelEncryptionConfigRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFieldLevelEncryptionConfigRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    DeleteFieldLevelEncryptionConfigRequest.type = Types::DeleteFieldLevelEncryptionConfigRequest
    DeleteFieldLevelEncryptionProfileRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFieldLevelEncryptionProfileRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    DeleteFieldLevelEncryptionProfileRequest.type = Types::DeleteFieldLevelEncryptionProfileRequest
    DeleteFunctionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFunctionRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match", "smithy.api#required" => {}}))
    DeleteFunctionRequest.type = Types::DeleteFunctionRequest
    DeleteKeyGroupRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteKeyGroupRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    DeleteKeyGroupRequest.type = Types::DeleteKeyGroupRequest
    DeleteKeyValueStoreRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValueStoreName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteKeyValueStoreRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match", "smithy.api#required" => {}}))
    DeleteKeyValueStoreRequest.type = Types::DeleteKeyValueStoreRequest
    DeleteMonitoringSubscriptionRequest.add_member(:distribution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DistributionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMonitoringSubscriptionRequest.type = Types::DeleteMonitoringSubscriptionRequest
    DeleteMonitoringSubscriptionResult.type = Types::DeleteMonitoringSubscriptionResult
    DeleteOriginAccessControlRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteOriginAccessControlRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    DeleteOriginAccessControlRequest.type = Types::DeleteOriginAccessControlRequest
    DeleteOriginRequestPolicyRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteOriginRequestPolicyRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    DeleteOriginRequestPolicyRequest.type = Types::DeleteOriginRequestPolicyRequest
    DeletePublicKeyRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePublicKeyRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    DeletePublicKeyRequest.type = Types::DeletePublicKeyRequest
    DeleteRealtimeLogConfigRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    DeleteRealtimeLogConfigRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ARN"))
    DeleteRealtimeLogConfigRequest.type = Types::DeleteRealtimeLogConfigRequest
    DeleteResponseHeadersPolicyRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResponseHeadersPolicyRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    DeleteResponseHeadersPolicyRequest.type = Types::DeleteResponseHeadersPolicyRequest
    DeleteStreamingDistributionRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteStreamingDistributionRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    DeleteStreamingDistributionRequest.type = Types::DeleteStreamingDistributionRequest
    DeleteVpcOriginRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVpcOriginRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match", "smithy.api#required" => {}}))
    DeleteVpcOriginRequest.type = Types::DeleteVpcOriginRequest
    DeleteVpcOriginResult.add_member(:vpc_origin, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcOrigin, name: "VpcOrigin", traits: {"smithy.api#httpPayload" => {}}))
    DeleteVpcOriginResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    DeleteVpcOriginResult[:http_payload] = :vpc_origin
    DeleteVpcOriginResult[:http_payload_member] = DeleteVpcOriginResult.member(:vpc_origin)
    DeleteVpcOriginResult.type = Types::DeleteVpcOriginResult
    DescribeFunctionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeFunctionRequest.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionStage, name: "Stage", traits: {"smithy.api#httpQuery" => "Stage"}))
    DescribeFunctionRequest.type = Types::DescribeFunctionRequest
    DescribeFunctionResult.add_member(:function_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionSummary, name: "FunctionSummary", traits: {"smithy.api#httpPayload" => {}}))
    DescribeFunctionResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    DescribeFunctionResult[:http_payload] = :function_summary
    DescribeFunctionResult[:http_payload_member] = DescribeFunctionResult.member(:function_summary)
    DescribeFunctionResult.type = Types::DescribeFunctionResult
    DescribeKeyValueStoreRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValueStoreName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeKeyValueStoreRequest.type = Types::DescribeKeyValueStoreRequest
    DescribeKeyValueStoreResult.add_member(:key_value_store, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValueStore, name: "KeyValueStore", traits: {"smithy.api#httpPayload" => {}}))
    DescribeKeyValueStoreResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    DescribeKeyValueStoreResult[:http_payload] = :key_value_store
    DescribeKeyValueStoreResult[:http_payload_member] = DescribeKeyValueStoreResult.member(:key_value_store)
    DescribeKeyValueStoreResult.type = Types::DescribeKeyValueStoreResult
    DisassociateDistributionTenantWebACLRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateDistributionTenantWebACLRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    DisassociateDistributionTenantWebACLRequest.type = Types::DisassociateDistributionTenantWebACLRequest
    DisassociateDistributionTenantWebACLResult.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    DisassociateDistributionTenantWebACLResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    DisassociateDistributionTenantWebACLResult.type = Types::DisassociateDistributionTenantWebACLResult
    DisassociateDistributionWebACLRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateDistributionWebACLRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    DisassociateDistributionWebACLRequest.type = Types::DisassociateDistributionWebACLRequest
    DisassociateDistributionWebACLResult.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    DisassociateDistributionWebACLResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    DisassociateDistributionWebACLResult.type = Types::DisassociateDistributionWebACLResult
    Distribution.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#required" => {}}))
    Distribution.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ARN", traits: {"smithy.api#required" => {}}))
    Distribution.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status", traits: {"smithy.api#required" => {}}))
    Distribution.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime", traits: {"smithy.api#required" => {}}))
    Distribution.add_member(:in_progress_invalidation_batches, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "InProgressInvalidationBatches", traits: {"smithy.api#required" => {}}))
    Distribution.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainName", traits: {"smithy.api#required" => {}}))
    Distribution.add_member(:active_trusted_signers, ::Smithy::Schema::Shapes::MemberShape.new(target: ActiveTrustedSigners, name: "ActiveTrustedSigners"))
    Distribution.add_member(:active_trusted_key_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ActiveTrustedKeyGroups, name: "ActiveTrustedKeyGroups"))
    Distribution.add_member(:distribution_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionConfig, name: "DistributionConfig", traits: {"smithy.api#required" => {}}))
    Distribution.add_member(:alias_icp_recordals, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasICPRecordals, name: "AliasICPRecordals"))
    Distribution.type = Types::Distribution
    DistributionAlreadyExists.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    DistributionAlreadyExists.type = Types::DistributionAlreadyExists
    DistributionConfig.add_member(:caller_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CallerReference", traits: {"smithy.api#required" => {}}))
    DistributionConfig.add_member(:aliases, ::Smithy::Schema::Shapes::MemberShape.new(target: Aliases, name: "Aliases"))
    DistributionConfig.add_member(:default_root_object, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DefaultRootObject"))
    DistributionConfig.add_member(:origins, ::Smithy::Schema::Shapes::MemberShape.new(target: Origins, name: "Origins", traits: {"smithy.api#required" => {}}))
    DistributionConfig.add_member(:origin_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginGroups, name: "OriginGroups"))
    DistributionConfig.add_member(:default_cache_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultCacheBehavior, name: "DefaultCacheBehavior", traits: {"smithy.api#required" => {}}))
    DistributionConfig.add_member(:cache_behaviors, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheBehaviors, name: "CacheBehaviors"))
    DistributionConfig.add_member(:custom_error_responses, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomErrorResponses, name: "CustomErrorResponses"))
    DistributionConfig.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: CommentType, name: "Comment", traits: {"smithy.api#required" => {}}))
    DistributionConfig.add_member(:logging, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfig, name: "Logging"))
    DistributionConfig.add_member(:price_class, ::Smithy::Schema::Shapes::MemberShape.new(target: PriceClass, name: "PriceClass"))
    DistributionConfig.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#required" => {}}))
    DistributionConfig.add_member(:viewer_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewerCertificate, name: "ViewerCertificate"))
    DistributionConfig.add_member(:restrictions, ::Smithy::Schema::Shapes::MemberShape.new(target: Restrictions, name: "Restrictions"))
    DistributionConfig.add_member(:web_acl_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "WebACLId"))
    DistributionConfig.add_member(:http_version, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpVersion, name: "HttpVersion"))
    DistributionConfig.add_member(:is_ipv6_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsIPV6Enabled"))
    DistributionConfig.add_member(:continuous_deployment_policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ContinuousDeploymentPolicyId"))
    DistributionConfig.add_member(:staging, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Staging"))
    DistributionConfig.add_member(:anycast_ip_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AnycastIpListId"))
    DistributionConfig.add_member(:tenant_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantConfig, name: "TenantConfig"))
    DistributionConfig.add_member(:connection_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionMode, name: "ConnectionMode"))
    DistributionConfig.type = Types::DistributionConfig
    DistributionConfigWithTags.add_member(:distribution_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionConfig, name: "DistributionConfig", traits: {"smithy.api#required" => {}}))
    DistributionConfigWithTags.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#required" => {}}))
    DistributionConfigWithTags.type = Types::DistributionConfigWithTags
    DistributionIdList.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#required" => {}}))
    DistributionIdList.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker"))
    DistributionIdList.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#required" => {}}))
    DistributionIdList.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsTruncated", traits: {"smithy.api#required" => {}}))
    DistributionIdList.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    DistributionIdList.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionIdListSummary, name: "Items"))
    DistributionIdList.type = Types::DistributionIdList
    DistributionIdListSummary.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "DistributionId"})
    DistributionList.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#required" => {}}))
    DistributionList.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker"))
    DistributionList.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#required" => {}}))
    DistributionList.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsTruncated", traits: {"smithy.api#required" => {}}))
    DistributionList.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    DistributionList.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionSummaryList, name: "Items"))
    DistributionList.type = Types::DistributionList
    DistributionNotDisabled.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    DistributionNotDisabled.type = Types::DistributionNotDisabled
    DistributionResourceId.add_member(:distribution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DistributionId"))
    DistributionResourceId.add_member(:distribution_tenant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DistributionTenantId"))
    DistributionResourceId.type = Types::DistributionResourceId
    DistributionResourceType.add_member(:distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Distribution", traits: {"smithy.api#enumValue" => "distribution"}))
    DistributionResourceType.add_member(:distribution_tenant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DistributionTenant", traits: {"smithy.api#enumValue" => "distribution-tenant"}))
    DistributionSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#required" => {}}))
    DistributionSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ARN", traits: {"smithy.api#required" => {}}))
    DistributionSummary.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag"))
    DistributionSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status", traits: {"smithy.api#required" => {}}))
    DistributionSummary.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime", traits: {"smithy.api#required" => {}}))
    DistributionSummary.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainName", traits: {"smithy.api#required" => {}}))
    DistributionSummary.add_member(:aliases, ::Smithy::Schema::Shapes::MemberShape.new(target: Aliases, name: "Aliases", traits: {"smithy.api#required" => {}}))
    DistributionSummary.add_member(:origins, ::Smithy::Schema::Shapes::MemberShape.new(target: Origins, name: "Origins", traits: {"smithy.api#required" => {}}))
    DistributionSummary.add_member(:origin_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginGroups, name: "OriginGroups"))
    DistributionSummary.add_member(:default_cache_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultCacheBehavior, name: "DefaultCacheBehavior", traits: {"smithy.api#required" => {}}))
    DistributionSummary.add_member(:cache_behaviors, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheBehaviors, name: "CacheBehaviors", traits: {"smithy.api#required" => {}}))
    DistributionSummary.add_member(:custom_error_responses, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomErrorResponses, name: "CustomErrorResponses", traits: {"smithy.api#required" => {}}))
    DistributionSummary.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "Comment", traits: {"smithy.api#required" => {}}))
    DistributionSummary.add_member(:price_class, ::Smithy::Schema::Shapes::MemberShape.new(target: PriceClass, name: "PriceClass", traits: {"smithy.api#required" => {}}))
    DistributionSummary.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#required" => {}}))
    DistributionSummary.add_member(:viewer_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewerCertificate, name: "ViewerCertificate", traits: {"smithy.api#required" => {}}))
    DistributionSummary.add_member(:restrictions, ::Smithy::Schema::Shapes::MemberShape.new(target: Restrictions, name: "Restrictions", traits: {"smithy.api#required" => {}}))
    DistributionSummary.add_member(:web_acl_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "WebACLId", traits: {"smithy.api#required" => {}}))
    DistributionSummary.add_member(:http_version, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpVersion, name: "HttpVersion", traits: {"smithy.api#required" => {}}))
    DistributionSummary.add_member(:is_ipv6_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsIPV6Enabled", traits: {"smithy.api#required" => {}}))
    DistributionSummary.add_member(:alias_icp_recordals, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasICPRecordals, name: "AliasICPRecordals"))
    DistributionSummary.add_member(:staging, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Staging", traits: {"smithy.api#required" => {}}))
    DistributionSummary.add_member(:connection_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionMode, name: "ConnectionMode"))
    DistributionSummary.add_member(:anycast_ip_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AnycastIpListId"))
    DistributionSummary.type = Types::DistributionSummary
    DistributionSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionSummary, name: "member", traits: {"smithy.api#xmlName" => "DistributionSummary"})
    DistributionTenant.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    DistributionTenant.add_member(:distribution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DistributionId"))
    DistributionTenant.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    DistributionTenant.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    DistributionTenant.add_member(:domains, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainResultList, name: "Domains"))
    DistributionTenant.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    DistributionTenant.add_member(:customizations, ::Smithy::Schema::Shapes::MemberShape.new(target: Customizations, name: "Customizations"))
    DistributionTenant.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameters, name: "Parameters"))
    DistributionTenant.add_member(:connection_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConnectionGroupId"))
    DistributionTenant.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime"))
    DistributionTenant.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime"))
    DistributionTenant.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled"))
    DistributionTenant.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    DistributionTenant.type = Types::DistributionTenant
    DistributionTenantAssociationFilter.add_member(:distribution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DistributionId"))
    DistributionTenantAssociationFilter.add_member(:connection_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConnectionGroupId"))
    DistributionTenantAssociationFilter.type = Types::DistributionTenantAssociationFilter
    DistributionTenantList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionTenantSummary, name: "member", traits: {"smithy.api#xmlName" => "DistributionTenantSummary"})
    DistributionTenantSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#required" => {}}))
    DistributionTenantSummary.add_member(:distribution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DistributionId", traits: {"smithy.api#required" => {}}))
    DistributionTenantSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    DistributionTenantSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#required" => {}}))
    DistributionTenantSummary.add_member(:domains, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainResultList, name: "Domains", traits: {"smithy.api#required" => {}}))
    DistributionTenantSummary.add_member(:connection_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConnectionGroupId"))
    DistributionTenantSummary.add_member(:customizations, ::Smithy::Schema::Shapes::MemberShape.new(target: Customizations, name: "Customizations"))
    DistributionTenantSummary.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime", traits: {"smithy.api#required" => {}}))
    DistributionTenantSummary.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime", traits: {"smithy.api#required" => {}}))
    DistributionTenantSummary.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#required" => {}}))
    DistributionTenantSummary.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled"))
    DistributionTenantSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    DistributionTenantSummary.type = Types::DistributionTenantSummary
    DnsConfiguration.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Domain", traits: {"smithy.api#required" => {}}))
    DnsConfiguration.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsConfigurationStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    DnsConfiguration.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Reason"))
    DnsConfiguration.type = Types::DnsConfiguration
    DnsConfigurationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DnsConfiguration, name: "member", traits: {"smithy.api#xmlName" => "DnsConfiguration"})
    DnsConfigurationStatus.add_member(:valid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Valid", traits: {"smithy.api#enumValue" => "valid-configuration"}))
    DnsConfigurationStatus.add_member(:invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Invalid", traits: {"smithy.api#enumValue" => "invalid-configuration"}))
    DnsConfigurationStatus.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Unknown", traits: {"smithy.api#enumValue" => "unknown-configuration"}))
    DomainConflict.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Domain", traits: {"smithy.api#required" => {}}))
    DomainConflict.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionResourceType, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    DomainConflict.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    DomainConflict.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AccountId", traits: {"smithy.api#required" => {}}))
    DomainConflict.type = Types::DomainConflict
    DomainConflictsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DomainConflict, name: "member", traits: {"smithy.api#xmlName" => "DomainConflicts"})
    DomainItem.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Domain", traits: {"smithy.api#required" => {}}))
    DomainItem.type = Types::DomainItem
    DomainList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DomainItem, name: "member")
    DomainResult.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Domain", traits: {"smithy.api#required" => {}}))
    DomainResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainStatus, name: "Status"))
    DomainResult.type = Types::DomainResult
    DomainResultList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DomainResult, name: "member")
    DomainStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Active", traits: {"smithy.api#enumValue" => "active"}))
    DomainStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Inactive", traits: {"smithy.api#enumValue" => "inactive"}))
    EncryptionEntities.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    EncryptionEntities.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionEntityList, name: "Items"))
    EncryptionEntities.type = Types::EncryptionEntities
    EncryptionEntity.add_member(:public_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PublicKeyId", traits: {"smithy.api#required" => {}}))
    EncryptionEntity.add_member(:provider_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProviderId", traits: {"smithy.api#required" => {}}))
    EncryptionEntity.add_member(:field_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldPatterns, name: "FieldPatterns", traits: {"smithy.api#required" => {}}))
    EncryptionEntity.type = Types::EncryptionEntity
    EncryptionEntityList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionEntity, name: "member", traits: {"smithy.api#xmlName" => "EncryptionEntity"})
    EndPoint.add_member(:stream_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StreamType", traits: {"smithy.api#required" => {}}))
    EndPoint.add_member(:kinesis_stream_config, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisStreamConfig, name: "KinesisStreamConfig"))
    EndPoint.type = Types::EndPoint
    EndPointList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EndPoint, name: "member")
    EntityAlreadyExists.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    EntityAlreadyExists.type = Types::EntityAlreadyExists
    EntityLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    EntityLimitExceeded.type = Types::EntityLimitExceeded
    EntityNotFound.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    EntityNotFound.type = Types::EntityNotFound
    EntitySizeLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    EntitySizeLimitExceeded.type = Types::EntitySizeLimitExceeded
    EventType.add_member(:viewer_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "viewer_request", traits: {"smithy.api#enumValue" => "viewer-request"}))
    EventType.add_member(:viewer_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "viewer_response", traits: {"smithy.api#enumValue" => "viewer-response"}))
    EventType.add_member(:origin_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "origin_request", traits: {"smithy.api#enumValue" => "origin-request"}))
    EventType.add_member(:origin_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "origin_response", traits: {"smithy.api#enumValue" => "origin-response"}))
    FieldLevelEncryption.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#required" => {}}))
    FieldLevelEncryption.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime", traits: {"smithy.api#required" => {}}))
    FieldLevelEncryption.add_member(:field_level_encryption_config, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldLevelEncryptionConfig, name: "FieldLevelEncryptionConfig", traits: {"smithy.api#required" => {}}))
    FieldLevelEncryption.type = Types::FieldLevelEncryption
    FieldLevelEncryptionConfig.add_member(:caller_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CallerReference", traits: {"smithy.api#required" => {}}))
    FieldLevelEncryptionConfig.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Comment"))
    FieldLevelEncryptionConfig.add_member(:query_arg_profile_config, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryArgProfileConfig, name: "QueryArgProfileConfig"))
    FieldLevelEncryptionConfig.add_member(:content_type_profile_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentTypeProfileConfig, name: "ContentTypeProfileConfig"))
    FieldLevelEncryptionConfig.type = Types::FieldLevelEncryptionConfig
    FieldLevelEncryptionConfigAlreadyExists.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    FieldLevelEncryptionConfigAlreadyExists.type = Types::FieldLevelEncryptionConfigAlreadyExists
    FieldLevelEncryptionConfigInUse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    FieldLevelEncryptionConfigInUse.type = Types::FieldLevelEncryptionConfigInUse
    FieldLevelEncryptionList.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker"))
    FieldLevelEncryptionList.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#required" => {}}))
    FieldLevelEncryptionList.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    FieldLevelEncryptionList.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldLevelEncryptionSummaryList, name: "Items"))
    FieldLevelEncryptionList.type = Types::FieldLevelEncryptionList
    FieldLevelEncryptionProfile.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#required" => {}}))
    FieldLevelEncryptionProfile.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime", traits: {"smithy.api#required" => {}}))
    FieldLevelEncryptionProfile.add_member(:field_level_encryption_profile_config, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldLevelEncryptionProfileConfig, name: "FieldLevelEncryptionProfileConfig", traits: {"smithy.api#required" => {}}))
    FieldLevelEncryptionProfile.type = Types::FieldLevelEncryptionProfile
    FieldLevelEncryptionProfileAlreadyExists.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    FieldLevelEncryptionProfileAlreadyExists.type = Types::FieldLevelEncryptionProfileAlreadyExists
    FieldLevelEncryptionProfileConfig.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    FieldLevelEncryptionProfileConfig.add_member(:caller_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CallerReference", traits: {"smithy.api#required" => {}}))
    FieldLevelEncryptionProfileConfig.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Comment"))
    FieldLevelEncryptionProfileConfig.add_member(:encryption_entities, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionEntities, name: "EncryptionEntities", traits: {"smithy.api#required" => {}}))
    FieldLevelEncryptionProfileConfig.type = Types::FieldLevelEncryptionProfileConfig
    FieldLevelEncryptionProfileInUse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    FieldLevelEncryptionProfileInUse.type = Types::FieldLevelEncryptionProfileInUse
    FieldLevelEncryptionProfileList.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker"))
    FieldLevelEncryptionProfileList.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#required" => {}}))
    FieldLevelEncryptionProfileList.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    FieldLevelEncryptionProfileList.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldLevelEncryptionProfileSummaryList, name: "Items"))
    FieldLevelEncryptionProfileList.type = Types::FieldLevelEncryptionProfileList
    FieldLevelEncryptionProfileSizeExceeded.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    FieldLevelEncryptionProfileSizeExceeded.type = Types::FieldLevelEncryptionProfileSizeExceeded
    FieldLevelEncryptionProfileSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#required" => {}}))
    FieldLevelEncryptionProfileSummary.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime", traits: {"smithy.api#required" => {}}))
    FieldLevelEncryptionProfileSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    FieldLevelEncryptionProfileSummary.add_member(:encryption_entities, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionEntities, name: "EncryptionEntities", traits: {"smithy.api#required" => {}}))
    FieldLevelEncryptionProfileSummary.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Comment"))
    FieldLevelEncryptionProfileSummary.type = Types::FieldLevelEncryptionProfileSummary
    FieldLevelEncryptionProfileSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FieldLevelEncryptionProfileSummary, name: "member", traits: {"smithy.api#xmlName" => "FieldLevelEncryptionProfileSummary"})
    FieldLevelEncryptionSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#required" => {}}))
    FieldLevelEncryptionSummary.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime", traits: {"smithy.api#required" => {}}))
    FieldLevelEncryptionSummary.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Comment"))
    FieldLevelEncryptionSummary.add_member(:query_arg_profile_config, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryArgProfileConfig, name: "QueryArgProfileConfig"))
    FieldLevelEncryptionSummary.add_member(:content_type_profile_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentTypeProfileConfig, name: "ContentTypeProfileConfig"))
    FieldLevelEncryptionSummary.type = Types::FieldLevelEncryptionSummary
    FieldLevelEncryptionSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FieldLevelEncryptionSummary, name: "member", traits: {"smithy.api#xmlName" => "FieldLevelEncryptionSummary"})
    FieldList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "Field"})
    FieldPatternList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "FieldPattern"})
    FieldPatterns.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    FieldPatterns.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldPatternList, name: "Items"))
    FieldPatterns.type = Types::FieldPatterns
    Format.add_member(:url_encoded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "URLEncoded", traits: {"smithy.api#enumValue" => "URLEncoded"}))
    ForwardedValues.add_member(:query_string, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "QueryString", traits: {"smithy.api#required" => {}}))
    ForwardedValues.add_member(:cookies, ::Smithy::Schema::Shapes::MemberShape.new(target: CookiePreference, name: "Cookies", traits: {"smithy.api#required" => {}}))
    ForwardedValues.add_member(:headers, ::Smithy::Schema::Shapes::MemberShape.new(target: Headers, name: "Headers"))
    ForwardedValues.add_member(:query_string_cache_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStringCacheKeys, name: "QueryStringCacheKeys"))
    ForwardedValues.type = Types::ForwardedValues
    FrameOptionsList.add_member(:deny, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DENY", traits: {"smithy.api#enumValue" => "DENY"}))
    FrameOptionsList.add_member(:sameorigin, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAMEORIGIN", traits: {"smithy.api#enumValue" => "SAMEORIGIN"}))
    FunctionAlreadyExists.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    FunctionAlreadyExists.type = Types::FunctionAlreadyExists
    FunctionAssociation.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionARN, name: "FunctionARN", traits: {"smithy.api#required" => {}}))
    FunctionAssociation.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EventType, name: "EventType", traits: {"smithy.api#required" => {}}))
    FunctionAssociation.type = Types::FunctionAssociation
    FunctionAssociationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionAssociation, name: "member", traits: {"smithy.api#xmlName" => "FunctionAssociation"})
    FunctionAssociations.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    FunctionAssociations.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionAssociationList, name: "Items"))
    FunctionAssociations.type = Types::FunctionAssociations
    FunctionConfig.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Comment", traits: {"smithy.api#required" => {}}))
    FunctionConfig.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionRuntime, name: "Runtime", traits: {"smithy.api#required" => {}}))
    FunctionConfig.add_member(:key_value_store_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValueStoreAssociations, name: "KeyValueStoreAssociations"))
    FunctionConfig.type = Types::FunctionConfig
    FunctionExecutionLogList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member")
    FunctionInUse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    FunctionInUse.type = Types::FunctionInUse
    FunctionList.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker"))
    FunctionList.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#required" => {}}))
    FunctionList.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    FunctionList.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionSummaryList, name: "Items"))
    FunctionList.type = Types::FunctionList
    FunctionMetadata.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FunctionARN", traits: {"smithy.api#required" => {}}))
    FunctionMetadata.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionStage, name: "Stage"))
    FunctionMetadata.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime"))
    FunctionMetadata.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime", traits: {"smithy.api#required" => {}}))
    FunctionMetadata.type = Types::FunctionMetadata
    FunctionRuntime.add_member(:cloudfront_js_1_0, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "cloudfront_js_1_0", traits: {"smithy.api#enumValue" => "cloudfront-js-1.0"}))
    FunctionRuntime.add_member(:cloudfront_js_2_0, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "cloudfront_js_2_0", traits: {"smithy.api#enumValue" => "cloudfront-js-2.0"}))
    FunctionSizeLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    FunctionSizeLimitExceeded.type = Types::FunctionSizeLimitExceeded
    FunctionStage.add_member(:development, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEVELOPMENT", traits: {"smithy.api#enumValue" => "DEVELOPMENT"}))
    FunctionStage.add_member(:live, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIVE", traits: {"smithy.api#enumValue" => "LIVE"}))
    FunctionSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "Name", traits: {"smithy.api#required" => {}}))
    FunctionSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    FunctionSummary.add_member(:function_config, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionConfig, name: "FunctionConfig", traits: {"smithy.api#required" => {}}))
    FunctionSummary.add_member(:function_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionMetadata, name: "FunctionMetadata", traits: {"smithy.api#required" => {}}))
    FunctionSummary.type = Types::FunctionSummary
    FunctionSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionSummary, name: "member", traits: {"smithy.api#xmlName" => "FunctionSummary"})
    GeoRestriction.add_member(:restriction_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GeoRestrictionType, name: "RestrictionType", traits: {"smithy.api#required" => {}}))
    GeoRestriction.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    GeoRestriction.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationList, name: "Items"))
    GeoRestriction.type = Types::GeoRestriction
    GeoRestrictionCustomization.add_member(:restriction_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GeoRestrictionType, name: "RestrictionType", traits: {"smithy.api#required" => {}}))
    GeoRestrictionCustomization.add_member(:locations, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationList, name: "Locations"))
    GeoRestrictionCustomization.type = Types::GeoRestrictionCustomization
    GeoRestrictionType.add_member(:blacklist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "blacklist", traits: {"smithy.api#enumValue" => "blacklist"}))
    GeoRestrictionType.add_member(:whitelist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "whitelist", traits: {"smithy.api#enumValue" => "whitelist"}))
    GeoRestrictionType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "none", traits: {"smithy.api#enumValue" => "none"}))
    GetAnycastIpListRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAnycastIpListRequest.type = Types::GetAnycastIpListRequest
    GetAnycastIpListResult.add_member(:anycast_ip_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AnycastIpList, name: "AnycastIpList", traits: {"smithy.api#httpPayload" => {}}))
    GetAnycastIpListResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    GetAnycastIpListResult[:http_payload] = :anycast_ip_list
    GetAnycastIpListResult[:http_payload_member] = GetAnycastIpListResult.member(:anycast_ip_list)
    GetAnycastIpListResult.type = Types::GetAnycastIpListResult
    GetCachePolicyConfigRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCachePolicyConfigRequest.type = Types::GetCachePolicyConfigRequest
    GetCachePolicyConfigResult.add_member(:cache_policy_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CachePolicyConfig, name: "CachePolicyConfig", traits: {"smithy.api#httpPayload" => {}}))
    GetCachePolicyConfigResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    GetCachePolicyConfigResult[:http_payload] = :cache_policy_config
    GetCachePolicyConfigResult[:http_payload_member] = GetCachePolicyConfigResult.member(:cache_policy_config)
    GetCachePolicyConfigResult.type = Types::GetCachePolicyConfigResult
    GetCachePolicyRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCachePolicyRequest.type = Types::GetCachePolicyRequest
    GetCachePolicyResult.add_member(:cache_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: CachePolicy, name: "CachePolicy", traits: {"smithy.api#httpPayload" => {}}))
    GetCachePolicyResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    GetCachePolicyResult[:http_payload] = :cache_policy
    GetCachePolicyResult[:http_payload_member] = GetCachePolicyResult.member(:cache_policy)
    GetCachePolicyResult.type = Types::GetCachePolicyResult
    GetCloudFrontOriginAccessIdentityConfigRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCloudFrontOriginAccessIdentityConfigRequest.type = Types::GetCloudFrontOriginAccessIdentityConfigRequest
    GetCloudFrontOriginAccessIdentityConfigResult.add_member(:cloud_front_origin_access_identity_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudFrontOriginAccessIdentityConfig, name: "CloudFrontOriginAccessIdentityConfig", traits: {"smithy.api#httpPayload" => {}}))
    GetCloudFrontOriginAccessIdentityConfigResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    GetCloudFrontOriginAccessIdentityConfigResult[:http_payload] = :cloud_front_origin_access_identity_config
    GetCloudFrontOriginAccessIdentityConfigResult[:http_payload_member] = GetCloudFrontOriginAccessIdentityConfigResult.member(:cloud_front_origin_access_identity_config)
    GetCloudFrontOriginAccessIdentityConfigResult.type = Types::GetCloudFrontOriginAccessIdentityConfigResult
    GetCloudFrontOriginAccessIdentityRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCloudFrontOriginAccessIdentityRequest.type = Types::GetCloudFrontOriginAccessIdentityRequest
    GetCloudFrontOriginAccessIdentityResult.add_member(:cloud_front_origin_access_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudFrontOriginAccessIdentity, name: "CloudFrontOriginAccessIdentity", traits: {"smithy.api#httpPayload" => {}}))
    GetCloudFrontOriginAccessIdentityResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    GetCloudFrontOriginAccessIdentityResult[:http_payload] = :cloud_front_origin_access_identity
    GetCloudFrontOriginAccessIdentityResult[:http_payload_member] = GetCloudFrontOriginAccessIdentityResult.member(:cloud_front_origin_access_identity)
    GetCloudFrontOriginAccessIdentityResult.type = Types::GetCloudFrontOriginAccessIdentityResult
    GetConnectionGroupByRoutingEndpointRequest.add_member(:routing_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RoutingEndpoint", traits: {"smithy.api#httpQuery" => "RoutingEndpoint", "smithy.api#required" => {}}))
    GetConnectionGroupByRoutingEndpointRequest.type = Types::GetConnectionGroupByRoutingEndpointRequest
    GetConnectionGroupByRoutingEndpointResult.add_member(:connection_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionGroup, name: "ConnectionGroup", traits: {"smithy.api#httpPayload" => {}}))
    GetConnectionGroupByRoutingEndpointResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    GetConnectionGroupByRoutingEndpointResult[:http_payload] = :connection_group
    GetConnectionGroupByRoutingEndpointResult[:http_payload_member] = GetConnectionGroupByRoutingEndpointResult.member(:connection_group)
    GetConnectionGroupByRoutingEndpointResult.type = Types::GetConnectionGroupByRoutingEndpointResult
    GetConnectionGroupRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConnectionGroupRequest.type = Types::GetConnectionGroupRequest
    GetConnectionGroupResult.add_member(:connection_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionGroup, name: "ConnectionGroup", traits: {"smithy.api#httpPayload" => {}}))
    GetConnectionGroupResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    GetConnectionGroupResult[:http_payload] = :connection_group
    GetConnectionGroupResult[:http_payload_member] = GetConnectionGroupResult.member(:connection_group)
    GetConnectionGroupResult.type = Types::GetConnectionGroupResult
    GetContinuousDeploymentPolicyConfigRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContinuousDeploymentPolicyConfigRequest.type = Types::GetContinuousDeploymentPolicyConfigRequest
    GetContinuousDeploymentPolicyConfigResult.add_member(:continuous_deployment_policy_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuousDeploymentPolicyConfig, name: "ContinuousDeploymentPolicyConfig", traits: {"smithy.api#httpPayload" => {}}))
    GetContinuousDeploymentPolicyConfigResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    GetContinuousDeploymentPolicyConfigResult[:http_payload] = :continuous_deployment_policy_config
    GetContinuousDeploymentPolicyConfigResult[:http_payload_member] = GetContinuousDeploymentPolicyConfigResult.member(:continuous_deployment_policy_config)
    GetContinuousDeploymentPolicyConfigResult.type = Types::GetContinuousDeploymentPolicyConfigResult
    GetContinuousDeploymentPolicyRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContinuousDeploymentPolicyRequest.type = Types::GetContinuousDeploymentPolicyRequest
    GetContinuousDeploymentPolicyResult.add_member(:continuous_deployment_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuousDeploymentPolicy, name: "ContinuousDeploymentPolicy", traits: {"smithy.api#httpPayload" => {}}))
    GetContinuousDeploymentPolicyResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    GetContinuousDeploymentPolicyResult[:http_payload] = :continuous_deployment_policy
    GetContinuousDeploymentPolicyResult[:http_payload_member] = GetContinuousDeploymentPolicyResult.member(:continuous_deployment_policy)
    GetContinuousDeploymentPolicyResult.type = Types::GetContinuousDeploymentPolicyResult
    GetDistributionConfigRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDistributionConfigRequest.type = Types::GetDistributionConfigRequest
    GetDistributionConfigResult.add_member(:distribution_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionConfig, name: "DistributionConfig", traits: {"smithy.api#httpPayload" => {}}))
    GetDistributionConfigResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    GetDistributionConfigResult[:http_payload] = :distribution_config
    GetDistributionConfigResult[:http_payload_member] = GetDistributionConfigResult.member(:distribution_config)
    GetDistributionConfigResult.type = Types::GetDistributionConfigResult
    GetDistributionRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDistributionRequest.type = Types::GetDistributionRequest
    GetDistributionResult.add_member(:distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: Distribution, name: "Distribution", traits: {"smithy.api#httpPayload" => {}}))
    GetDistributionResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    GetDistributionResult[:http_payload] = :distribution
    GetDistributionResult[:http_payload_member] = GetDistributionResult.member(:distribution)
    GetDistributionResult.type = Types::GetDistributionResult
    GetDistributionTenantByDomainRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    GetDistributionTenantByDomainRequest.type = Types::GetDistributionTenantByDomainRequest
    GetDistributionTenantByDomainResult.add_member(:distribution_tenant, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionTenant, name: "DistributionTenant", traits: {"smithy.api#httpPayload" => {}}))
    GetDistributionTenantByDomainResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    GetDistributionTenantByDomainResult[:http_payload] = :distribution_tenant
    GetDistributionTenantByDomainResult[:http_payload_member] = GetDistributionTenantByDomainResult.member(:distribution_tenant)
    GetDistributionTenantByDomainResult.type = Types::GetDistributionTenantByDomainResult
    GetDistributionTenantRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDistributionTenantRequest.type = Types::GetDistributionTenantRequest
    GetDistributionTenantResult.add_member(:distribution_tenant, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionTenant, name: "DistributionTenant", traits: {"smithy.api#httpPayload" => {}}))
    GetDistributionTenantResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    GetDistributionTenantResult[:http_payload] = :distribution_tenant
    GetDistributionTenantResult[:http_payload_member] = GetDistributionTenantResult.member(:distribution_tenant)
    GetDistributionTenantResult.type = Types::GetDistributionTenantResult
    GetFieldLevelEncryptionConfigRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFieldLevelEncryptionConfigRequest.type = Types::GetFieldLevelEncryptionConfigRequest
    GetFieldLevelEncryptionConfigResult.add_member(:field_level_encryption_config, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldLevelEncryptionConfig, name: "FieldLevelEncryptionConfig", traits: {"smithy.api#httpPayload" => {}}))
    GetFieldLevelEncryptionConfigResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    GetFieldLevelEncryptionConfigResult[:http_payload] = :field_level_encryption_config
    GetFieldLevelEncryptionConfigResult[:http_payload_member] = GetFieldLevelEncryptionConfigResult.member(:field_level_encryption_config)
    GetFieldLevelEncryptionConfigResult.type = Types::GetFieldLevelEncryptionConfigResult
    GetFieldLevelEncryptionProfileConfigRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFieldLevelEncryptionProfileConfigRequest.type = Types::GetFieldLevelEncryptionProfileConfigRequest
    GetFieldLevelEncryptionProfileConfigResult.add_member(:field_level_encryption_profile_config, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldLevelEncryptionProfileConfig, name: "FieldLevelEncryptionProfileConfig", traits: {"smithy.api#httpPayload" => {}}))
    GetFieldLevelEncryptionProfileConfigResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    GetFieldLevelEncryptionProfileConfigResult[:http_payload] = :field_level_encryption_profile_config
    GetFieldLevelEncryptionProfileConfigResult[:http_payload_member] = GetFieldLevelEncryptionProfileConfigResult.member(:field_level_encryption_profile_config)
    GetFieldLevelEncryptionProfileConfigResult.type = Types::GetFieldLevelEncryptionProfileConfigResult
    GetFieldLevelEncryptionProfileRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFieldLevelEncryptionProfileRequest.type = Types::GetFieldLevelEncryptionProfileRequest
    GetFieldLevelEncryptionProfileResult.add_member(:field_level_encryption_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldLevelEncryptionProfile, name: "FieldLevelEncryptionProfile", traits: {"smithy.api#httpPayload" => {}}))
    GetFieldLevelEncryptionProfileResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    GetFieldLevelEncryptionProfileResult[:http_payload] = :field_level_encryption_profile
    GetFieldLevelEncryptionProfileResult[:http_payload_member] = GetFieldLevelEncryptionProfileResult.member(:field_level_encryption_profile)
    GetFieldLevelEncryptionProfileResult.type = Types::GetFieldLevelEncryptionProfileResult
    GetFieldLevelEncryptionRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFieldLevelEncryptionRequest.type = Types::GetFieldLevelEncryptionRequest
    GetFieldLevelEncryptionResult.add_member(:field_level_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldLevelEncryption, name: "FieldLevelEncryption", traits: {"smithy.api#httpPayload" => {}}))
    GetFieldLevelEncryptionResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    GetFieldLevelEncryptionResult[:http_payload] = :field_level_encryption
    GetFieldLevelEncryptionResult[:http_payload_member] = GetFieldLevelEncryptionResult.member(:field_level_encryption)
    GetFieldLevelEncryptionResult.type = Types::GetFieldLevelEncryptionResult
    GetFunctionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFunctionRequest.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionStage, name: "Stage", traits: {"smithy.api#httpQuery" => "Stage"}))
    GetFunctionRequest.type = Types::GetFunctionRequest
    GetFunctionResult.add_member(:function_code, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionBlob, name: "FunctionCode", traits: {"smithy.api#httpPayload" => {}}))
    GetFunctionResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    GetFunctionResult.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ContentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    GetFunctionResult[:http_payload] = :function_code
    GetFunctionResult[:http_payload_member] = GetFunctionResult.member(:function_code)
    GetFunctionResult.type = Types::GetFunctionResult
    GetInvalidationForDistributionTenantRequest.add_member(:distribution_tenant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DistributionTenantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetInvalidationForDistributionTenantRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetInvalidationForDistributionTenantRequest.type = Types::GetInvalidationForDistributionTenantRequest
    GetInvalidationForDistributionTenantResult.add_member(:invalidation, ::Smithy::Schema::Shapes::MemberShape.new(target: Invalidation, name: "Invalidation", traits: {"smithy.api#httpPayload" => {}}))
    GetInvalidationForDistributionTenantResult[:http_payload] = :invalidation
    GetInvalidationForDistributionTenantResult[:http_payload_member] = GetInvalidationForDistributionTenantResult.member(:invalidation)
    GetInvalidationForDistributionTenantResult.type = Types::GetInvalidationForDistributionTenantResult
    GetInvalidationRequest.add_member(:distribution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DistributionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetInvalidationRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetInvalidationRequest.type = Types::GetInvalidationRequest
    GetInvalidationResult.add_member(:invalidation, ::Smithy::Schema::Shapes::MemberShape.new(target: Invalidation, name: "Invalidation", traits: {"smithy.api#httpPayload" => {}}))
    GetInvalidationResult[:http_payload] = :invalidation
    GetInvalidationResult[:http_payload_member] = GetInvalidationResult.member(:invalidation)
    GetInvalidationResult.type = Types::GetInvalidationResult
    GetKeyGroupConfigRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetKeyGroupConfigRequest.type = Types::GetKeyGroupConfigRequest
    GetKeyGroupConfigResult.add_member(:key_group_config, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyGroupConfig, name: "KeyGroupConfig", traits: {"smithy.api#httpPayload" => {}}))
    GetKeyGroupConfigResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    GetKeyGroupConfigResult[:http_payload] = :key_group_config
    GetKeyGroupConfigResult[:http_payload_member] = GetKeyGroupConfigResult.member(:key_group_config)
    GetKeyGroupConfigResult.type = Types::GetKeyGroupConfigResult
    GetKeyGroupRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetKeyGroupRequest.type = Types::GetKeyGroupRequest
    GetKeyGroupResult.add_member(:key_group, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyGroup, name: "KeyGroup", traits: {"smithy.api#httpPayload" => {}}))
    GetKeyGroupResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    GetKeyGroupResult[:http_payload] = :key_group
    GetKeyGroupResult[:http_payload_member] = GetKeyGroupResult.member(:key_group)
    GetKeyGroupResult.type = Types::GetKeyGroupResult
    GetManagedCertificateDetailsRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetManagedCertificateDetailsRequest.type = Types::GetManagedCertificateDetailsRequest
    GetManagedCertificateDetailsResult.add_member(:managed_certificate_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedCertificateDetails, name: "ManagedCertificateDetails", traits: {"smithy.api#httpPayload" => {}}))
    GetManagedCertificateDetailsResult[:http_payload] = :managed_certificate_details
    GetManagedCertificateDetailsResult[:http_payload_member] = GetManagedCertificateDetailsResult.member(:managed_certificate_details)
    GetManagedCertificateDetailsResult.type = Types::GetManagedCertificateDetailsResult
    GetMonitoringSubscriptionRequest.add_member(:distribution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DistributionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMonitoringSubscriptionRequest.type = Types::GetMonitoringSubscriptionRequest
    GetMonitoringSubscriptionResult.add_member(:monitoring_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitoringSubscription, name: "MonitoringSubscription", traits: {"smithy.api#httpPayload" => {}}))
    GetMonitoringSubscriptionResult[:http_payload] = :monitoring_subscription
    GetMonitoringSubscriptionResult[:http_payload_member] = GetMonitoringSubscriptionResult.member(:monitoring_subscription)
    GetMonitoringSubscriptionResult.type = Types::GetMonitoringSubscriptionResult
    GetOriginAccessControlConfigRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetOriginAccessControlConfigRequest.type = Types::GetOriginAccessControlConfigRequest
    GetOriginAccessControlConfigResult.add_member(:origin_access_control_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginAccessControlConfig, name: "OriginAccessControlConfig", traits: {"smithy.api#httpPayload" => {}}))
    GetOriginAccessControlConfigResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    GetOriginAccessControlConfigResult[:http_payload] = :origin_access_control_config
    GetOriginAccessControlConfigResult[:http_payload_member] = GetOriginAccessControlConfigResult.member(:origin_access_control_config)
    GetOriginAccessControlConfigResult.type = Types::GetOriginAccessControlConfigResult
    GetOriginAccessControlRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetOriginAccessControlRequest.type = Types::GetOriginAccessControlRequest
    GetOriginAccessControlResult.add_member(:origin_access_control, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginAccessControl, name: "OriginAccessControl", traits: {"smithy.api#httpPayload" => {}}))
    GetOriginAccessControlResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    GetOriginAccessControlResult[:http_payload] = :origin_access_control
    GetOriginAccessControlResult[:http_payload_member] = GetOriginAccessControlResult.member(:origin_access_control)
    GetOriginAccessControlResult.type = Types::GetOriginAccessControlResult
    GetOriginRequestPolicyConfigRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetOriginRequestPolicyConfigRequest.type = Types::GetOriginRequestPolicyConfigRequest
    GetOriginRequestPolicyConfigResult.add_member(:origin_request_policy_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginRequestPolicyConfig, name: "OriginRequestPolicyConfig", traits: {"smithy.api#httpPayload" => {}}))
    GetOriginRequestPolicyConfigResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    GetOriginRequestPolicyConfigResult[:http_payload] = :origin_request_policy_config
    GetOriginRequestPolicyConfigResult[:http_payload_member] = GetOriginRequestPolicyConfigResult.member(:origin_request_policy_config)
    GetOriginRequestPolicyConfigResult.type = Types::GetOriginRequestPolicyConfigResult
    GetOriginRequestPolicyRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetOriginRequestPolicyRequest.type = Types::GetOriginRequestPolicyRequest
    GetOriginRequestPolicyResult.add_member(:origin_request_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginRequestPolicy, name: "OriginRequestPolicy", traits: {"smithy.api#httpPayload" => {}}))
    GetOriginRequestPolicyResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    GetOriginRequestPolicyResult[:http_payload] = :origin_request_policy
    GetOriginRequestPolicyResult[:http_payload_member] = GetOriginRequestPolicyResult.member(:origin_request_policy)
    GetOriginRequestPolicyResult.type = Types::GetOriginRequestPolicyResult
    GetPublicKeyConfigRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPublicKeyConfigRequest.type = Types::GetPublicKeyConfigRequest
    GetPublicKeyConfigResult.add_member(:public_key_config, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicKeyConfig, name: "PublicKeyConfig", traits: {"smithy.api#httpPayload" => {}}))
    GetPublicKeyConfigResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    GetPublicKeyConfigResult[:http_payload] = :public_key_config
    GetPublicKeyConfigResult[:http_payload_member] = GetPublicKeyConfigResult.member(:public_key_config)
    GetPublicKeyConfigResult.type = Types::GetPublicKeyConfigResult
    GetPublicKeyRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPublicKeyRequest.type = Types::GetPublicKeyRequest
    GetPublicKeyResult.add_member(:public_key, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicKey, name: "PublicKey", traits: {"smithy.api#httpPayload" => {}}))
    GetPublicKeyResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    GetPublicKeyResult[:http_payload] = :public_key
    GetPublicKeyResult[:http_payload_member] = GetPublicKeyResult.member(:public_key)
    GetPublicKeyResult.type = Types::GetPublicKeyResult
    GetRealtimeLogConfigRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    GetRealtimeLogConfigRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ARN"))
    GetRealtimeLogConfigRequest.type = Types::GetRealtimeLogConfigRequest
    GetRealtimeLogConfigResult.add_member(:realtime_log_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RealtimeLogConfig, name: "RealtimeLogConfig"))
    GetRealtimeLogConfigResult.type = Types::GetRealtimeLogConfigResult
    GetResponseHeadersPolicyConfigRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResponseHeadersPolicyConfigRequest.type = Types::GetResponseHeadersPolicyConfigRequest
    GetResponseHeadersPolicyConfigResult.add_member(:response_headers_policy_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseHeadersPolicyConfig, name: "ResponseHeadersPolicyConfig", traits: {"smithy.api#httpPayload" => {}}))
    GetResponseHeadersPolicyConfigResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    GetResponseHeadersPolicyConfigResult[:http_payload] = :response_headers_policy_config
    GetResponseHeadersPolicyConfigResult[:http_payload_member] = GetResponseHeadersPolicyConfigResult.member(:response_headers_policy_config)
    GetResponseHeadersPolicyConfigResult.type = Types::GetResponseHeadersPolicyConfigResult
    GetResponseHeadersPolicyRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResponseHeadersPolicyRequest.type = Types::GetResponseHeadersPolicyRequest
    GetResponseHeadersPolicyResult.add_member(:response_headers_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseHeadersPolicy, name: "ResponseHeadersPolicy", traits: {"smithy.api#httpPayload" => {}}))
    GetResponseHeadersPolicyResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    GetResponseHeadersPolicyResult[:http_payload] = :response_headers_policy
    GetResponseHeadersPolicyResult[:http_payload_member] = GetResponseHeadersPolicyResult.member(:response_headers_policy)
    GetResponseHeadersPolicyResult.type = Types::GetResponseHeadersPolicyResult
    GetStreamingDistributionConfigRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStreamingDistributionConfigRequest.type = Types::GetStreamingDistributionConfigRequest
    GetStreamingDistributionConfigResult.add_member(:streaming_distribution_config, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingDistributionConfig, name: "StreamingDistributionConfig", traits: {"smithy.api#httpPayload" => {}}))
    GetStreamingDistributionConfigResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    GetStreamingDistributionConfigResult[:http_payload] = :streaming_distribution_config
    GetStreamingDistributionConfigResult[:http_payload_member] = GetStreamingDistributionConfigResult.member(:streaming_distribution_config)
    GetStreamingDistributionConfigResult.type = Types::GetStreamingDistributionConfigResult
    GetStreamingDistributionRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStreamingDistributionRequest.type = Types::GetStreamingDistributionRequest
    GetStreamingDistributionResult.add_member(:streaming_distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingDistribution, name: "StreamingDistribution", traits: {"smithy.api#httpPayload" => {}}))
    GetStreamingDistributionResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    GetStreamingDistributionResult[:http_payload] = :streaming_distribution
    GetStreamingDistributionResult[:http_payload_member] = GetStreamingDistributionResult.member(:streaming_distribution)
    GetStreamingDistributionResult.type = Types::GetStreamingDistributionResult
    GetVpcOriginRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVpcOriginRequest.type = Types::GetVpcOriginRequest
    GetVpcOriginResult.add_member(:vpc_origin, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcOrigin, name: "VpcOrigin", traits: {"smithy.api#httpPayload" => {}}))
    GetVpcOriginResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    GetVpcOriginResult[:http_payload] = :vpc_origin
    GetVpcOriginResult[:http_payload_member] = GetVpcOriginResult.member(:vpc_origin)
    GetVpcOriginResult.type = Types::GetVpcOriginResult
    GrpcConfig.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#required" => {}}))
    GrpcConfig.type = Types::GrpcConfig
    HeaderList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "Name"})
    Headers.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    Headers.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderList, name: "Items"))
    Headers.type = Types::Headers
    HttpVersion.add_member(:http1_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "http1_1", traits: {"smithy.api#enumValue" => "http1.1"}))
    HttpVersion.add_member(:http2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "http2", traits: {"smithy.api#enumValue" => "http2"}))
    HttpVersion.add_member(:http3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "http3", traits: {"smithy.api#enumValue" => "http3"}))
    HttpVersion.add_member(:http2and3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "http2and3", traits: {"smithy.api#enumValue" => "http2and3"}))
    ICPRecordalStatus.add_member(:approved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPROVED", traits: {"smithy.api#enumValue" => "APPROVED"}))
    ICPRecordalStatus.add_member(:suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUSPENDED", traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    ICPRecordalStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    IllegalDelete.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    IllegalDelete.type = Types::IllegalDelete
    IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior.type = Types::IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior
    IllegalOriginAccessConfiguration.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    IllegalOriginAccessConfiguration.type = Types::IllegalOriginAccessConfiguration
    IllegalUpdate.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    IllegalUpdate.type = Types::IllegalUpdate
    ImportSource.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportSourceType, name: "SourceType", traits: {"smithy.api#required" => {}}))
    ImportSource.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceARN", traits: {"smithy.api#required" => {}}))
    ImportSource.type = Types::ImportSource
    ImportSourceType.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3", traits: {"smithy.api#enumValue" => "S3"}))
    InconsistentQuantities.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InconsistentQuantities.type = Types::InconsistentQuantities
    InvalidArgument.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidArgument.type = Types::InvalidArgument
    InvalidAssociation.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidAssociation.type = Types::InvalidAssociation
    InvalidDefaultRootObject.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidDefaultRootObject.type = Types::InvalidDefaultRootObject
    InvalidDomainNameForOriginAccessControl.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidDomainNameForOriginAccessControl.type = Types::InvalidDomainNameForOriginAccessControl
    InvalidErrorCode.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidErrorCode.type = Types::InvalidErrorCode
    InvalidForwardCookies.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidForwardCookies.type = Types::InvalidForwardCookies
    InvalidFunctionAssociation.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidFunctionAssociation.type = Types::InvalidFunctionAssociation
    InvalidGeoRestrictionParameter.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidGeoRestrictionParameter.type = Types::InvalidGeoRestrictionParameter
    InvalidHeadersForS3Origin.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidHeadersForS3Origin.type = Types::InvalidHeadersForS3Origin
    InvalidIfMatchVersion.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidIfMatchVersion.type = Types::InvalidIfMatchVersion
    InvalidLambdaFunctionAssociation.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidLambdaFunctionAssociation.type = Types::InvalidLambdaFunctionAssociation
    InvalidLocationCode.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidLocationCode.type = Types::InvalidLocationCode
    InvalidMinimumProtocolVersion.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidMinimumProtocolVersion.type = Types::InvalidMinimumProtocolVersion
    InvalidOrigin.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidOrigin.type = Types::InvalidOrigin
    InvalidOriginAccessControl.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidOriginAccessControl.type = Types::InvalidOriginAccessControl
    InvalidOriginAccessIdentity.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidOriginAccessIdentity.type = Types::InvalidOriginAccessIdentity
    InvalidOriginKeepaliveTimeout.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidOriginKeepaliveTimeout.type = Types::InvalidOriginKeepaliveTimeout
    InvalidOriginReadTimeout.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidOriginReadTimeout.type = Types::InvalidOriginReadTimeout
    InvalidProtocolSettings.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidProtocolSettings.type = Types::InvalidProtocolSettings
    InvalidQueryStringParameters.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidQueryStringParameters.type = Types::InvalidQueryStringParameters
    InvalidRelativePath.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidRelativePath.type = Types::InvalidRelativePath
    InvalidRequiredProtocol.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidRequiredProtocol.type = Types::InvalidRequiredProtocol
    InvalidResponseCode.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidResponseCode.type = Types::InvalidResponseCode
    InvalidTTLOrder.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidTTLOrder.type = Types::InvalidTTLOrder
    InvalidTagging.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidTagging.type = Types::InvalidTagging
    InvalidViewerCertificate.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidViewerCertificate.type = Types::InvalidViewerCertificate
    InvalidWebACLId.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidWebACLId.type = Types::InvalidWebACLId
    Invalidation.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#required" => {}}))
    Invalidation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status", traits: {"smithy.api#required" => {}}))
    Invalidation.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreateTime", traits: {"smithy.api#required" => {}}))
    Invalidation.add_member(:invalidation_batch, ::Smithy::Schema::Shapes::MemberShape.new(target: InvalidationBatch, name: "InvalidationBatch", traits: {"smithy.api#required" => {}}))
    Invalidation.type = Types::Invalidation
    InvalidationBatch.add_member(:paths, ::Smithy::Schema::Shapes::MemberShape.new(target: Paths, name: "Paths", traits: {"smithy.api#required" => {}}))
    InvalidationBatch.add_member(:caller_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CallerReference", traits: {"smithy.api#required" => {}}))
    InvalidationBatch.type = Types::InvalidationBatch
    InvalidationList.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#required" => {}}))
    InvalidationList.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker"))
    InvalidationList.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#required" => {}}))
    InvalidationList.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsTruncated", traits: {"smithy.api#required" => {}}))
    InvalidationList.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    InvalidationList.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: InvalidationSummaryList, name: "Items"))
    InvalidationList.type = Types::InvalidationList
    InvalidationSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#required" => {}}))
    InvalidationSummary.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreateTime", traits: {"smithy.api#required" => {}}))
    InvalidationSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status", traits: {"smithy.api#required" => {}}))
    InvalidationSummary.type = Types::InvalidationSummary
    InvalidationSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InvalidationSummary, name: "member", traits: {"smithy.api#xmlName" => "InvalidationSummary"})
    IpAddressType.add_member(:ipv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Ipv4", traits: {"smithy.api#enumValue" => "ipv4"}))
    IpAddressType.add_member(:ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Ipv6", traits: {"smithy.api#enumValue" => "ipv6"}))
    IpAddressType.add_member(:dual_stack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DualStack", traits: {"smithy.api#enumValue" => "dualstack"}))
    ItemSelection.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "none", traits: {"smithy.api#enumValue" => "none"}))
    ItemSelection.add_member(:whitelist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "whitelist", traits: {"smithy.api#enumValue" => "whitelist"}))
    ItemSelection.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "all", traits: {"smithy.api#enumValue" => "all"}))
    KGKeyPairIds.add_member(:key_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KeyGroupId"))
    KGKeyPairIds.add_member(:key_pair_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyPairIds, name: "KeyPairIds"))
    KGKeyPairIds.type = Types::KGKeyPairIds
    KGKeyPairIdsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: KGKeyPairIds, name: "member", traits: {"smithy.api#xmlName" => "KeyGroup"})
    KeyGroup.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#required" => {}}))
    KeyGroup.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime", traits: {"smithy.api#required" => {}}))
    KeyGroup.add_member(:key_group_config, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyGroupConfig, name: "KeyGroupConfig", traits: {"smithy.api#required" => {}}))
    KeyGroup.type = Types::KeyGroup
    KeyGroupAlreadyExists.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    KeyGroupAlreadyExists.type = Types::KeyGroupAlreadyExists
    KeyGroupConfig.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    KeyGroupConfig.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicKeyIdList, name: "Items", traits: {"smithy.api#required" => {}}))
    KeyGroupConfig.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Comment"))
    KeyGroupConfig.type = Types::KeyGroupConfig
    KeyGroupList.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker"))
    KeyGroupList.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#required" => {}}))
    KeyGroupList.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    KeyGroupList.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyGroupSummaryList, name: "Items"))
    KeyGroupList.type = Types::KeyGroupList
    KeyGroupSummary.add_member(:key_group, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyGroup, name: "KeyGroup", traits: {"smithy.api#required" => {}}))
    KeyGroupSummary.type = Types::KeyGroupSummary
    KeyGroupSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: KeyGroupSummary, name: "member", traits: {"smithy.api#xmlName" => "KeyGroupSummary"})
    KeyPairIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "KeyPairId"})
    KeyPairIds.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    KeyPairIds.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyPairIdList, name: "Items"))
    KeyPairIds.type = Types::KeyPairIds
    KeyValueStore.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    KeyValueStore.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#required" => {}}))
    KeyValueStore.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Comment", traits: {"smithy.api#required" => {}}))
    KeyValueStore.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ARN", traits: {"smithy.api#required" => {}}))
    KeyValueStore.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    KeyValueStore.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime", traits: {"smithy.api#required" => {}}))
    KeyValueStore.type = Types::KeyValueStore
    KeyValueStoreAssociation.add_member(:key_value_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValueStoreARN, name: "KeyValueStoreARN", traits: {"smithy.api#required" => {}}))
    KeyValueStoreAssociation.type = Types::KeyValueStoreAssociation
    KeyValueStoreAssociationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValueStoreAssociation, name: "member", traits: {"smithy.api#xmlName" => "KeyValueStoreAssociation"})
    KeyValueStoreAssociations.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    KeyValueStoreAssociations.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValueStoreAssociationList, name: "Items"))
    KeyValueStoreAssociations.type = Types::KeyValueStoreAssociations
    KeyValueStoreList.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker"))
    KeyValueStoreList.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#required" => {}}))
    KeyValueStoreList.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    KeyValueStoreList.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValueStoreSummaryList, name: "Items"))
    KeyValueStoreList.type = Types::KeyValueStoreList
    KeyValueStoreSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValueStore, name: "member", traits: {"smithy.api#xmlName" => "KeyValueStore"})
    KinesisStreamConfig.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RoleARN", traits: {"smithy.api#required" => {}}))
    KinesisStreamConfig.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StreamARN", traits: {"smithy.api#required" => {}}))
    KinesisStreamConfig.type = Types::KinesisStreamConfig
    LambdaFunctionAssociation.add_member(:lambda_function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionARN, name: "LambdaFunctionARN", traits: {"smithy.api#required" => {}}))
    LambdaFunctionAssociation.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EventType, name: "EventType", traits: {"smithy.api#required" => {}}))
    LambdaFunctionAssociation.add_member(:include_body, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IncludeBody"))
    LambdaFunctionAssociation.type = Types::LambdaFunctionAssociation
    LambdaFunctionAssociationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionAssociation, name: "member", traits: {"smithy.api#xmlName" => "LambdaFunctionAssociation"})
    LambdaFunctionAssociations.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    LambdaFunctionAssociations.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionAssociationList, name: "Items"))
    LambdaFunctionAssociations.type = Types::LambdaFunctionAssociations
    ListAnycastIpListsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListAnycastIpListsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListAnycastIpListsRequest.type = Types::ListAnycastIpListsRequest
    ListAnycastIpListsResult.add_member(:anycast_ip_lists, ::Smithy::Schema::Shapes::MemberShape.new(target: AnycastIpListCollection, name: "AnycastIpLists", traits: {"smithy.api#httpPayload" => {}, "smithy.api#xmlName" => "AnycastIpListCollection"}))
    ListAnycastIpListsResult[:http_payload] = :anycast_ip_lists
    ListAnycastIpListsResult[:http_payload_member] = ListAnycastIpListsResult.member(:anycast_ip_lists)
    ListAnycastIpListsResult.type = Types::ListAnycastIpListsResult
    ListCachePoliciesRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: CachePolicyType, name: "Type", traits: {"smithy.api#httpQuery" => "Type"}))
    ListCachePoliciesRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListCachePoliciesRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListCachePoliciesRequest.type = Types::ListCachePoliciesRequest
    ListCachePoliciesResult.add_member(:cache_policy_list, ::Smithy::Schema::Shapes::MemberShape.new(target: CachePolicyList, name: "CachePolicyList", traits: {"smithy.api#httpPayload" => {}}))
    ListCachePoliciesResult[:http_payload] = :cache_policy_list
    ListCachePoliciesResult[:http_payload_member] = ListCachePoliciesResult.member(:cache_policy_list)
    ListCachePoliciesResult.type = Types::ListCachePoliciesResult
    ListCloudFrontOriginAccessIdentitiesRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListCloudFrontOriginAccessIdentitiesRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListCloudFrontOriginAccessIdentitiesRequest.type = Types::ListCloudFrontOriginAccessIdentitiesRequest
    ListCloudFrontOriginAccessIdentitiesResult.add_member(:cloud_front_origin_access_identity_list, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudFrontOriginAccessIdentityList, name: "CloudFrontOriginAccessIdentityList", traits: {"smithy.api#httpPayload" => {}}))
    ListCloudFrontOriginAccessIdentitiesResult[:http_payload] = :cloud_front_origin_access_identity_list
    ListCloudFrontOriginAccessIdentitiesResult[:http_payload_member] = ListCloudFrontOriginAccessIdentitiesResult.member(:cloud_front_origin_access_identity_list)
    ListCloudFrontOriginAccessIdentitiesResult.type = Types::ListCloudFrontOriginAccessIdentitiesResult
    ListConflictingAliasesRequest.add_member(:distribution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionIdString, name: "DistributionId", traits: {"smithy.api#httpQuery" => "DistributionId", "smithy.api#required" => {}}))
    ListConflictingAliasesRequest.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasString, name: "Alias", traits: {"smithy.api#httpQuery" => "Alias", "smithy.api#required" => {}}))
    ListConflictingAliasesRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListConflictingAliasesRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: ListConflictingAliasesMaxItemsInteger, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListConflictingAliasesRequest.type = Types::ListConflictingAliasesRequest
    ListConflictingAliasesResult.add_member(:conflicting_aliases_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictingAliasesList, name: "ConflictingAliasesList", traits: {"smithy.api#httpPayload" => {}}))
    ListConflictingAliasesResult[:http_payload] = :conflicting_aliases_list
    ListConflictingAliasesResult[:http_payload_member] = ListConflictingAliasesResult.member(:conflicting_aliases_list)
    ListConflictingAliasesResult.type = Types::ListConflictingAliasesResult
    ListConnectionGroupsRequest.add_member(:association_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionGroupAssociationFilter, name: "AssociationFilter"))
    ListConnectionGroupsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    ListConnectionGroupsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems"))
    ListConnectionGroupsRequest.type = Types::ListConnectionGroupsRequest
    ListConnectionGroupsResult.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker"))
    ListConnectionGroupsResult.add_member(:connection_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionGroupSummaryList, name: "ConnectionGroups"))
    ListConnectionGroupsResult.type = Types::ListConnectionGroupsResult
    ListContinuousDeploymentPoliciesRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListContinuousDeploymentPoliciesRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListContinuousDeploymentPoliciesRequest.type = Types::ListContinuousDeploymentPoliciesRequest
    ListContinuousDeploymentPoliciesResult.add_member(:continuous_deployment_policy_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuousDeploymentPolicyList, name: "ContinuousDeploymentPolicyList", traits: {"smithy.api#httpPayload" => {}}))
    ListContinuousDeploymentPoliciesResult[:http_payload] = :continuous_deployment_policy_list
    ListContinuousDeploymentPoliciesResult[:http_payload_member] = ListContinuousDeploymentPoliciesResult.member(:continuous_deployment_policy_list)
    ListContinuousDeploymentPoliciesResult.type = Types::ListContinuousDeploymentPoliciesResult
    ListDistributionTenantsByCustomizationRequest.add_member(:web_acl_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "WebACLArn"))
    ListDistributionTenantsByCustomizationRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CertificateArn"))
    ListDistributionTenantsByCustomizationRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    ListDistributionTenantsByCustomizationRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems"))
    ListDistributionTenantsByCustomizationRequest.type = Types::ListDistributionTenantsByCustomizationRequest
    ListDistributionTenantsByCustomizationResult.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker"))
    ListDistributionTenantsByCustomizationResult.add_member(:distribution_tenant_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionTenantList, name: "DistributionTenantList"))
    ListDistributionTenantsByCustomizationResult.type = Types::ListDistributionTenantsByCustomizationResult
    ListDistributionTenantsRequest.add_member(:association_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionTenantAssociationFilter, name: "AssociationFilter"))
    ListDistributionTenantsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    ListDistributionTenantsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems"))
    ListDistributionTenantsRequest.type = Types::ListDistributionTenantsRequest
    ListDistributionTenantsResult.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker"))
    ListDistributionTenantsResult.add_member(:distribution_tenant_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionTenantList, name: "DistributionTenantList"))
    ListDistributionTenantsResult.type = Types::ListDistributionTenantsResult
    ListDistributionsByAnycastIpListIdRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListDistributionsByAnycastIpListIdRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListDistributionsByAnycastIpListIdRequest.add_member(:anycast_ip_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AnycastIpListId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDistributionsByAnycastIpListIdRequest.type = Types::ListDistributionsByAnycastIpListIdRequest
    ListDistributionsByAnycastIpListIdResult.add_member(:distribution_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionList, name: "DistributionList", traits: {"smithy.api#httpPayload" => {}}))
    ListDistributionsByAnycastIpListIdResult[:http_payload] = :distribution_list
    ListDistributionsByAnycastIpListIdResult[:http_payload_member] = ListDistributionsByAnycastIpListIdResult.member(:distribution_list)
    ListDistributionsByAnycastIpListIdResult.type = Types::ListDistributionsByAnycastIpListIdResult
    ListDistributionsByCachePolicyIdRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListDistributionsByCachePolicyIdRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListDistributionsByCachePolicyIdRequest.add_member(:cache_policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CachePolicyId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDistributionsByCachePolicyIdRequest.type = Types::ListDistributionsByCachePolicyIdRequest
    ListDistributionsByCachePolicyIdResult.add_member(:distribution_id_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionIdList, name: "DistributionIdList", traits: {"smithy.api#httpPayload" => {}}))
    ListDistributionsByCachePolicyIdResult[:http_payload] = :distribution_id_list
    ListDistributionsByCachePolicyIdResult[:http_payload_member] = ListDistributionsByCachePolicyIdResult.member(:distribution_id_list)
    ListDistributionsByCachePolicyIdResult.type = Types::ListDistributionsByCachePolicyIdResult
    ListDistributionsByConnectionModeRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListDistributionsByConnectionModeRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListDistributionsByConnectionModeRequest.add_member(:connection_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionMode, name: "ConnectionMode", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDistributionsByConnectionModeRequest.type = Types::ListDistributionsByConnectionModeRequest
    ListDistributionsByConnectionModeResult.add_member(:distribution_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionList, name: "DistributionList", traits: {"smithy.api#httpPayload" => {}}))
    ListDistributionsByConnectionModeResult[:http_payload] = :distribution_list
    ListDistributionsByConnectionModeResult[:http_payload_member] = ListDistributionsByConnectionModeResult.member(:distribution_list)
    ListDistributionsByConnectionModeResult.type = Types::ListDistributionsByConnectionModeResult
    ListDistributionsByKeyGroupRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListDistributionsByKeyGroupRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListDistributionsByKeyGroupRequest.add_member(:key_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KeyGroupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDistributionsByKeyGroupRequest.type = Types::ListDistributionsByKeyGroupRequest
    ListDistributionsByKeyGroupResult.add_member(:distribution_id_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionIdList, name: "DistributionIdList", traits: {"smithy.api#httpPayload" => {}}))
    ListDistributionsByKeyGroupResult[:http_payload] = :distribution_id_list
    ListDistributionsByKeyGroupResult[:http_payload_member] = ListDistributionsByKeyGroupResult.member(:distribution_id_list)
    ListDistributionsByKeyGroupResult.type = Types::ListDistributionsByKeyGroupResult
    ListDistributionsByOriginRequestPolicyIdRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListDistributionsByOriginRequestPolicyIdRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListDistributionsByOriginRequestPolicyIdRequest.add_member(:origin_request_policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OriginRequestPolicyId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDistributionsByOriginRequestPolicyIdRequest.type = Types::ListDistributionsByOriginRequestPolicyIdRequest
    ListDistributionsByOriginRequestPolicyIdResult.add_member(:distribution_id_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionIdList, name: "DistributionIdList", traits: {"smithy.api#httpPayload" => {}}))
    ListDistributionsByOriginRequestPolicyIdResult[:http_payload] = :distribution_id_list
    ListDistributionsByOriginRequestPolicyIdResult[:http_payload_member] = ListDistributionsByOriginRequestPolicyIdResult.member(:distribution_id_list)
    ListDistributionsByOriginRequestPolicyIdResult.type = Types::ListDistributionsByOriginRequestPolicyIdResult
    ListDistributionsByRealtimeLogConfigRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    ListDistributionsByRealtimeLogConfigRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems"))
    ListDistributionsByRealtimeLogConfigRequest.add_member(:realtime_log_config_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RealtimeLogConfigName"))
    ListDistributionsByRealtimeLogConfigRequest.add_member(:realtime_log_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RealtimeLogConfigArn"))
    ListDistributionsByRealtimeLogConfigRequest.type = Types::ListDistributionsByRealtimeLogConfigRequest
    ListDistributionsByRealtimeLogConfigResult.add_member(:distribution_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionList, name: "DistributionList", traits: {"smithy.api#httpPayload" => {}}))
    ListDistributionsByRealtimeLogConfigResult[:http_payload] = :distribution_list
    ListDistributionsByRealtimeLogConfigResult[:http_payload_member] = ListDistributionsByRealtimeLogConfigResult.member(:distribution_list)
    ListDistributionsByRealtimeLogConfigResult.type = Types::ListDistributionsByRealtimeLogConfigResult
    ListDistributionsByResponseHeadersPolicyIdRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListDistributionsByResponseHeadersPolicyIdRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListDistributionsByResponseHeadersPolicyIdRequest.add_member(:response_headers_policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResponseHeadersPolicyId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDistributionsByResponseHeadersPolicyIdRequest.type = Types::ListDistributionsByResponseHeadersPolicyIdRequest
    ListDistributionsByResponseHeadersPolicyIdResult.add_member(:distribution_id_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionIdList, name: "DistributionIdList", traits: {"smithy.api#httpPayload" => {}}))
    ListDistributionsByResponseHeadersPolicyIdResult[:http_payload] = :distribution_id_list
    ListDistributionsByResponseHeadersPolicyIdResult[:http_payload_member] = ListDistributionsByResponseHeadersPolicyIdResult.member(:distribution_id_list)
    ListDistributionsByResponseHeadersPolicyIdResult.type = Types::ListDistributionsByResponseHeadersPolicyIdResult
    ListDistributionsByVpcOriginIdRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListDistributionsByVpcOriginIdRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListDistributionsByVpcOriginIdRequest.add_member(:vpc_origin_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcOriginId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDistributionsByVpcOriginIdRequest.type = Types::ListDistributionsByVpcOriginIdRequest
    ListDistributionsByVpcOriginIdResult.add_member(:distribution_id_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionIdList, name: "DistributionIdList", traits: {"smithy.api#httpPayload" => {}}))
    ListDistributionsByVpcOriginIdResult[:http_payload] = :distribution_id_list
    ListDistributionsByVpcOriginIdResult[:http_payload_member] = ListDistributionsByVpcOriginIdResult.member(:distribution_id_list)
    ListDistributionsByVpcOriginIdResult.type = Types::ListDistributionsByVpcOriginIdResult
    ListDistributionsByWebACLIdRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListDistributionsByWebACLIdRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListDistributionsByWebACLIdRequest.add_member(:web_acl_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "WebACLId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDistributionsByWebACLIdRequest.type = Types::ListDistributionsByWebACLIdRequest
    ListDistributionsByWebACLIdResult.add_member(:distribution_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionList, name: "DistributionList", traits: {"smithy.api#httpPayload" => {}}))
    ListDistributionsByWebACLIdResult[:http_payload] = :distribution_list
    ListDistributionsByWebACLIdResult[:http_payload_member] = ListDistributionsByWebACLIdResult.member(:distribution_list)
    ListDistributionsByWebACLIdResult.type = Types::ListDistributionsByWebACLIdResult
    ListDistributionsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListDistributionsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListDistributionsRequest.type = Types::ListDistributionsRequest
    ListDistributionsResult.add_member(:distribution_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionList, name: "DistributionList", traits: {"smithy.api#httpPayload" => {}}))
    ListDistributionsResult[:http_payload] = :distribution_list
    ListDistributionsResult[:http_payload_member] = ListDistributionsResult.member(:distribution_list)
    ListDistributionsResult.type = Types::ListDistributionsResult
    ListDomainConflictsRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Domain", traits: {"smithy.api#required" => {}}))
    ListDomainConflictsRequest.add_member(:domain_control_validation_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionResourceId, name: "DomainControlValidationResource", traits: {"smithy.api#required" => {}}))
    ListDomainConflictsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems"))
    ListDomainConflictsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    ListDomainConflictsRequest.type = Types::ListDomainConflictsRequest
    ListDomainConflictsResult.add_member(:domain_conflicts, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainConflictsList, name: "DomainConflicts"))
    ListDomainConflictsResult.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker"))
    ListDomainConflictsResult.type = Types::ListDomainConflictsResult
    ListFieldLevelEncryptionConfigsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListFieldLevelEncryptionConfigsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListFieldLevelEncryptionConfigsRequest.type = Types::ListFieldLevelEncryptionConfigsRequest
    ListFieldLevelEncryptionConfigsResult.add_member(:field_level_encryption_list, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldLevelEncryptionList, name: "FieldLevelEncryptionList", traits: {"smithy.api#httpPayload" => {}}))
    ListFieldLevelEncryptionConfigsResult[:http_payload] = :field_level_encryption_list
    ListFieldLevelEncryptionConfigsResult[:http_payload_member] = ListFieldLevelEncryptionConfigsResult.member(:field_level_encryption_list)
    ListFieldLevelEncryptionConfigsResult.type = Types::ListFieldLevelEncryptionConfigsResult
    ListFieldLevelEncryptionProfilesRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListFieldLevelEncryptionProfilesRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListFieldLevelEncryptionProfilesRequest.type = Types::ListFieldLevelEncryptionProfilesRequest
    ListFieldLevelEncryptionProfilesResult.add_member(:field_level_encryption_profile_list, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldLevelEncryptionProfileList, name: "FieldLevelEncryptionProfileList", traits: {"smithy.api#httpPayload" => {}}))
    ListFieldLevelEncryptionProfilesResult[:http_payload] = :field_level_encryption_profile_list
    ListFieldLevelEncryptionProfilesResult[:http_payload_member] = ListFieldLevelEncryptionProfilesResult.member(:field_level_encryption_profile_list)
    ListFieldLevelEncryptionProfilesResult.type = Types::ListFieldLevelEncryptionProfilesResult
    ListFunctionsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListFunctionsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListFunctionsRequest.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionStage, name: "Stage", traits: {"smithy.api#httpQuery" => "Stage"}))
    ListFunctionsRequest.type = Types::ListFunctionsRequest
    ListFunctionsResult.add_member(:function_list, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionList, name: "FunctionList", traits: {"smithy.api#httpPayload" => {}}))
    ListFunctionsResult[:http_payload] = :function_list
    ListFunctionsResult[:http_payload_member] = ListFunctionsResult.member(:function_list)
    ListFunctionsResult.type = Types::ListFunctionsResult
    ListInvalidationsForDistributionTenantRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListInvalidationsForDistributionTenantRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListInvalidationsForDistributionTenantRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListInvalidationsForDistributionTenantRequest.type = Types::ListInvalidationsForDistributionTenantRequest
    ListInvalidationsForDistributionTenantResult.add_member(:invalidation_list, ::Smithy::Schema::Shapes::MemberShape.new(target: InvalidationList, name: "InvalidationList", traits: {"smithy.api#httpPayload" => {}}))
    ListInvalidationsForDistributionTenantResult[:http_payload] = :invalidation_list
    ListInvalidationsForDistributionTenantResult[:http_payload_member] = ListInvalidationsForDistributionTenantResult.member(:invalidation_list)
    ListInvalidationsForDistributionTenantResult.type = Types::ListInvalidationsForDistributionTenantResult
    ListInvalidationsRequest.add_member(:distribution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DistributionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListInvalidationsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListInvalidationsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListInvalidationsRequest.type = Types::ListInvalidationsRequest
    ListInvalidationsResult.add_member(:invalidation_list, ::Smithy::Schema::Shapes::MemberShape.new(target: InvalidationList, name: "InvalidationList", traits: {"smithy.api#httpPayload" => {}}))
    ListInvalidationsResult[:http_payload] = :invalidation_list
    ListInvalidationsResult[:http_payload_member] = ListInvalidationsResult.member(:invalidation_list)
    ListInvalidationsResult.type = Types::ListInvalidationsResult
    ListKeyGroupsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListKeyGroupsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListKeyGroupsRequest.type = Types::ListKeyGroupsRequest
    ListKeyGroupsResult.add_member(:key_group_list, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyGroupList, name: "KeyGroupList", traits: {"smithy.api#httpPayload" => {}}))
    ListKeyGroupsResult[:http_payload] = :key_group_list
    ListKeyGroupsResult[:http_payload_member] = ListKeyGroupsResult.member(:key_group_list)
    ListKeyGroupsResult.type = Types::ListKeyGroupsResult
    ListKeyValueStoresRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListKeyValueStoresRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListKeyValueStoresRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status", traits: {"smithy.api#httpQuery" => "Status"}))
    ListKeyValueStoresRequest.type = Types::ListKeyValueStoresRequest
    ListKeyValueStoresResult.add_member(:key_value_store_list, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValueStoreList, name: "KeyValueStoreList", traits: {"smithy.api#httpPayload" => {}}))
    ListKeyValueStoresResult[:http_payload] = :key_value_store_list
    ListKeyValueStoresResult[:http_payload_member] = ListKeyValueStoresResult.member(:key_value_store_list)
    ListKeyValueStoresResult.type = Types::ListKeyValueStoresResult
    ListOriginAccessControlsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListOriginAccessControlsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListOriginAccessControlsRequest.type = Types::ListOriginAccessControlsRequest
    ListOriginAccessControlsResult.add_member(:origin_access_control_list, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginAccessControlList, name: "OriginAccessControlList", traits: {"smithy.api#httpPayload" => {}}))
    ListOriginAccessControlsResult[:http_payload] = :origin_access_control_list
    ListOriginAccessControlsResult[:http_payload_member] = ListOriginAccessControlsResult.member(:origin_access_control_list)
    ListOriginAccessControlsResult.type = Types::ListOriginAccessControlsResult
    ListOriginRequestPoliciesRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginRequestPolicyType, name: "Type", traits: {"smithy.api#httpQuery" => "Type"}))
    ListOriginRequestPoliciesRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListOriginRequestPoliciesRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListOriginRequestPoliciesRequest.type = Types::ListOriginRequestPoliciesRequest
    ListOriginRequestPoliciesResult.add_member(:origin_request_policy_list, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginRequestPolicyList, name: "OriginRequestPolicyList", traits: {"smithy.api#httpPayload" => {}}))
    ListOriginRequestPoliciesResult[:http_payload] = :origin_request_policy_list
    ListOriginRequestPoliciesResult[:http_payload_member] = ListOriginRequestPoliciesResult.member(:origin_request_policy_list)
    ListOriginRequestPoliciesResult.type = Types::ListOriginRequestPoliciesResult
    ListPublicKeysRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListPublicKeysRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListPublicKeysRequest.type = Types::ListPublicKeysRequest
    ListPublicKeysResult.add_member(:public_key_list, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicKeyList, name: "PublicKeyList", traits: {"smithy.api#httpPayload" => {}}))
    ListPublicKeysResult[:http_payload] = :public_key_list
    ListPublicKeysResult[:http_payload_member] = ListPublicKeysResult.member(:public_key_list)
    ListPublicKeysResult.type = Types::ListPublicKeysResult
    ListRealtimeLogConfigsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListRealtimeLogConfigsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListRealtimeLogConfigsRequest.type = Types::ListRealtimeLogConfigsRequest
    ListRealtimeLogConfigsResult.add_member(:realtime_log_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: RealtimeLogConfigs, name: "RealtimeLogConfigs", traits: {"smithy.api#httpPayload" => {}}))
    ListRealtimeLogConfigsResult[:http_payload] = :realtime_log_configs
    ListRealtimeLogConfigsResult[:http_payload_member] = ListRealtimeLogConfigsResult.member(:realtime_log_configs)
    ListRealtimeLogConfigsResult.type = Types::ListRealtimeLogConfigsResult
    ListResponseHeadersPoliciesRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseHeadersPolicyType, name: "Type", traits: {"smithy.api#httpQuery" => "Type"}))
    ListResponseHeadersPoliciesRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListResponseHeadersPoliciesRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListResponseHeadersPoliciesRequest.type = Types::ListResponseHeadersPoliciesRequest
    ListResponseHeadersPoliciesResult.add_member(:response_headers_policy_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseHeadersPolicyList, name: "ResponseHeadersPolicyList", traits: {"smithy.api#httpPayload" => {}}))
    ListResponseHeadersPoliciesResult[:http_payload] = :response_headers_policy_list
    ListResponseHeadersPoliciesResult[:http_payload_member] = ListResponseHeadersPoliciesResult.member(:response_headers_policy_list)
    ListResponseHeadersPoliciesResult.type = Types::ListResponseHeadersPoliciesResult
    ListStreamingDistributionsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListStreamingDistributionsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListStreamingDistributionsRequest.type = Types::ListStreamingDistributionsRequest
    ListStreamingDistributionsResult.add_member(:streaming_distribution_list, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingDistributionList, name: "StreamingDistributionList", traits: {"smithy.api#httpPayload" => {}}))
    ListStreamingDistributionsResult[:http_payload] = :streaming_distribution_list
    ListStreamingDistributionsResult[:http_payload_member] = ListStreamingDistributionsResult.member(:streaming_distribution_list)
    ListStreamingDistributionsResult.type = Types::ListStreamingDistributionsResult
    ListTagsForResourceRequest.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "Resource", traits: {"smithy.api#httpQuery" => "Resource", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResult.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceResult[:http_payload] = :tags
    ListTagsForResourceResult[:http_payload_member] = ListTagsForResourceResult.member(:tags)
    ListTagsForResourceResult.type = Types::ListTagsForResourceResult
    ListVpcOriginsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListVpcOriginsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListVpcOriginsRequest.type = Types::ListVpcOriginsRequest
    ListVpcOriginsResult.add_member(:vpc_origin_list, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcOriginList, name: "VpcOriginList", traits: {"smithy.api#httpPayload" => {}}))
    ListVpcOriginsResult[:http_payload] = :vpc_origin_list
    ListVpcOriginsResult[:http_payload_member] = ListVpcOriginsResult.member(:vpc_origin_list)
    ListVpcOriginsResult.type = Types::ListVpcOriginsResult
    LocationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "Location"})
    LoggingConfig.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => false}))
    LoggingConfig.add_member(:include_cookies, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IncludeCookies", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => false}))
    LoggingConfig.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Bucket", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => ""}))
    LoggingConfig.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Prefix", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => ""}))
    LoggingConfig.type = Types::LoggingConfig
    ManagedCertificateDetails.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CertificateArn"))
    ManagedCertificateDetails.add_member(:certificate_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedCertificateStatus, name: "CertificateStatus"))
    ManagedCertificateDetails.add_member(:validation_token_host, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationTokenHost, name: "ValidationTokenHost"))
    ManagedCertificateDetails.add_member(:validation_token_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationTokenDetailList, name: "ValidationTokenDetails"))
    ManagedCertificateDetails.type = Types::ManagedCertificateDetails
    ManagedCertificateRequest.add_member(:validation_token_host, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationTokenHost, name: "ValidationTokenHost", traits: {"smithy.api#required" => {}}))
    ManagedCertificateRequest.add_member(:primary_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PrimaryDomainName"))
    ManagedCertificateRequest.add_member(:certificate_transparency_logging_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateTransparencyLoggingPreference, name: "CertificateTransparencyLoggingPreference"))
    ManagedCertificateRequest.type = Types::ManagedCertificateRequest
    ManagedCertificateStatus.add_member(:pending_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PendingValidation", traits: {"smithy.api#enumValue" => "pending-validation"}))
    ManagedCertificateStatus.add_member(:issued, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Issued", traits: {"smithy.api#enumValue" => "issued"}))
    ManagedCertificateStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Inactive", traits: {"smithy.api#enumValue" => "inactive"}))
    ManagedCertificateStatus.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Expired", traits: {"smithy.api#enumValue" => "expired"}))
    ManagedCertificateStatus.add_member(:validation_timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ValidationTimedOut", traits: {"smithy.api#enumValue" => "validation-timed-out"}))
    ManagedCertificateStatus.add_member(:revoked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Revoked", traits: {"smithy.api#enumValue" => "revoked"}))
    ManagedCertificateStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "failed"}))
    Method.add_member(:get, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GET", traits: {"smithy.api#enumValue" => "GET"}))
    Method.add_member(:head, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HEAD", traits: {"smithy.api#enumValue" => "HEAD"}))
    Method.add_member(:post, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POST", traits: {"smithy.api#enumValue" => "POST"}))
    Method.add_member(:put, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUT", traits: {"smithy.api#enumValue" => "PUT"}))
    Method.add_member(:patch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PATCH", traits: {"smithy.api#enumValue" => "PATCH"}))
    Method.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPTIONS", traits: {"smithy.api#enumValue" => "OPTIONS"}))
    Method.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE", traits: {"smithy.api#enumValue" => "DELETE"}))
    MethodsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Method, name: "member", traits: {"smithy.api#xmlName" => "Method"})
    MinimumProtocolVersion.add_member(:ss_lv3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SSLv3", traits: {"smithy.api#enumValue" => "SSLv3"}))
    MinimumProtocolVersion.add_member(:tl_sv1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TLSv1", traits: {"smithy.api#enumValue" => "TLSv1"}))
    MinimumProtocolVersion.add_member(:tl_sv1_2016, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TLSv1_2016", traits: {"smithy.api#enumValue" => "TLSv1_2016"}))
    MinimumProtocolVersion.add_member(:tl_sv1_1_2016, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TLSv1_1_2016", traits: {"smithy.api#enumValue" => "TLSv1.1_2016"}))
    MinimumProtocolVersion.add_member(:tl_sv1_2_2018, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TLSv1_2_2018", traits: {"smithy.api#enumValue" => "TLSv1.2_2018"}))
    MinimumProtocolVersion.add_member(:tl_sv1_2_2019, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TLSv1_2_2019", traits: {"smithy.api#enumValue" => "TLSv1.2_2019"}))
    MinimumProtocolVersion.add_member(:tl_sv1_2_2021, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TLSv1_2_2021", traits: {"smithy.api#enumValue" => "TLSv1.2_2021"}))
    MinimumProtocolVersion.add_member(:tl_sv1_3_2025, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TLSv1_3_2025", traits: {"smithy.api#enumValue" => "TLSv1.3_2025"}))
    MissingBody.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    MissingBody.type = Types::MissingBody
    MonitoringSubscription.add_member(:realtime_metrics_subscription_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RealtimeMetricsSubscriptionConfig, name: "RealtimeMetricsSubscriptionConfig"))
    MonitoringSubscription.type = Types::MonitoringSubscription
    MonitoringSubscriptionAlreadyExists.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    MonitoringSubscriptionAlreadyExists.type = Types::MonitoringSubscriptionAlreadyExists
    NoSuchCachePolicy.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    NoSuchCachePolicy.type = Types::NoSuchCachePolicy
    NoSuchCloudFrontOriginAccessIdentity.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    NoSuchCloudFrontOriginAccessIdentity.type = Types::NoSuchCloudFrontOriginAccessIdentity
    NoSuchContinuousDeploymentPolicy.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    NoSuchContinuousDeploymentPolicy.type = Types::NoSuchContinuousDeploymentPolicy
    NoSuchDistribution.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    NoSuchDistribution.type = Types::NoSuchDistribution
    NoSuchFieldLevelEncryptionConfig.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    NoSuchFieldLevelEncryptionConfig.type = Types::NoSuchFieldLevelEncryptionConfig
    NoSuchFieldLevelEncryptionProfile.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    NoSuchFieldLevelEncryptionProfile.type = Types::NoSuchFieldLevelEncryptionProfile
    NoSuchFunctionExists.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    NoSuchFunctionExists.type = Types::NoSuchFunctionExists
    NoSuchInvalidation.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    NoSuchInvalidation.type = Types::NoSuchInvalidation
    NoSuchMonitoringSubscription.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    NoSuchMonitoringSubscription.type = Types::NoSuchMonitoringSubscription
    NoSuchOrigin.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    NoSuchOrigin.type = Types::NoSuchOrigin
    NoSuchOriginAccessControl.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    NoSuchOriginAccessControl.type = Types::NoSuchOriginAccessControl
    NoSuchOriginRequestPolicy.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    NoSuchOriginRequestPolicy.type = Types::NoSuchOriginRequestPolicy
    NoSuchPublicKey.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    NoSuchPublicKey.type = Types::NoSuchPublicKey
    NoSuchRealtimeLogConfig.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    NoSuchRealtimeLogConfig.type = Types::NoSuchRealtimeLogConfig
    NoSuchResource.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    NoSuchResource.type = Types::NoSuchResource
    NoSuchResponseHeadersPolicy.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    NoSuchResponseHeadersPolicy.type = Types::NoSuchResponseHeadersPolicy
    NoSuchStreamingDistribution.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    NoSuchStreamingDistribution.type = Types::NoSuchStreamingDistribution
    Origin.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#required" => {}}))
    Origin.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainName", traits: {"smithy.api#required" => {}}))
    Origin.add_member(:origin_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OriginPath"))
    Origin.add_member(:custom_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomHeaders, name: "CustomHeaders"))
    Origin.add_member(:s3_origin_config, ::Smithy::Schema::Shapes::MemberShape.new(target: S3OriginConfig, name: "S3OriginConfig"))
    Origin.add_member(:custom_origin_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomOriginConfig, name: "CustomOriginConfig"))
    Origin.add_member(:vpc_origin_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcOriginConfig, name: "VpcOriginConfig"))
    Origin.add_member(:connection_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ConnectionAttempts"))
    Origin.add_member(:connection_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ConnectionTimeout"))
    Origin.add_member(:response_completion_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ResponseCompletionTimeout"))
    Origin.add_member(:origin_shield, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginShield, name: "OriginShield"))
    Origin.add_member(:origin_access_control_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OriginAccessControlId"))
    Origin.type = Types::Origin
    OriginAccessControl.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#required" => {}}))
    OriginAccessControl.add_member(:origin_access_control_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginAccessControlConfig, name: "OriginAccessControlConfig"))
    OriginAccessControl.type = Types::OriginAccessControl
    OriginAccessControlAlreadyExists.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    OriginAccessControlAlreadyExists.type = Types::OriginAccessControlAlreadyExists
    OriginAccessControlConfig.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    OriginAccessControlConfig.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    OriginAccessControlConfig.add_member(:signing_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginAccessControlSigningProtocols, name: "SigningProtocol", traits: {"smithy.api#required" => {}}))
    OriginAccessControlConfig.add_member(:signing_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginAccessControlSigningBehaviors, name: "SigningBehavior", traits: {"smithy.api#required" => {}}))
    OriginAccessControlConfig.add_member(:origin_access_control_origin_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginAccessControlOriginTypes, name: "OriginAccessControlOriginType", traits: {"smithy.api#required" => {}}))
    OriginAccessControlConfig.type = Types::OriginAccessControlConfig
    OriginAccessControlInUse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    OriginAccessControlInUse.type = Types::OriginAccessControlInUse
    OriginAccessControlList.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#required" => {}}))
    OriginAccessControlList.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker"))
    OriginAccessControlList.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#required" => {}}))
    OriginAccessControlList.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsTruncated", traits: {"smithy.api#required" => {}}))
    OriginAccessControlList.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    OriginAccessControlList.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginAccessControlSummaryList, name: "Items"))
    OriginAccessControlList.type = Types::OriginAccessControlList
    OriginAccessControlOriginTypes.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "s3", traits: {"smithy.api#enumValue" => "s3"}))
    OriginAccessControlOriginTypes.add_member(:mediastore, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "mediastore", traits: {"smithy.api#enumValue" => "mediastore"}))
    OriginAccessControlOriginTypes.add_member(:mediapackagev2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "mediapackagev2", traits: {"smithy.api#enumValue" => "mediapackagev2"}))
    OriginAccessControlOriginTypes.add_member(:lambda, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "lambda", traits: {"smithy.api#enumValue" => "lambda"}))
    OriginAccessControlSigningBehaviors.add_member(:never, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "never", traits: {"smithy.api#enumValue" => "never"}))
    OriginAccessControlSigningBehaviors.add_member(:always, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "always", traits: {"smithy.api#enumValue" => "always"}))
    OriginAccessControlSigningBehaviors.add_member(:no_override, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "no_override", traits: {"smithy.api#enumValue" => "no-override"}))
    OriginAccessControlSigningProtocols.add_member(:sigv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "sigv4", traits: {"smithy.api#enumValue" => "sigv4"}))
    OriginAccessControlSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#required" => {}}))
    OriginAccessControlSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description", traits: {"smithy.api#required" => {}}))
    OriginAccessControlSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    OriginAccessControlSummary.add_member(:signing_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginAccessControlSigningProtocols, name: "SigningProtocol", traits: {"smithy.api#required" => {}}))
    OriginAccessControlSummary.add_member(:signing_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginAccessControlSigningBehaviors, name: "SigningBehavior", traits: {"smithy.api#required" => {}}))
    OriginAccessControlSummary.add_member(:origin_access_control_origin_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginAccessControlOriginTypes, name: "OriginAccessControlOriginType", traits: {"smithy.api#required" => {}}))
    OriginAccessControlSummary.type = Types::OriginAccessControlSummary
    OriginAccessControlSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OriginAccessControlSummary, name: "member", traits: {"smithy.api#xmlName" => "OriginAccessControlSummary"})
    OriginCustomHeader.add_member(:header_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HeaderName", traits: {"smithy.api#required" => {}}))
    OriginCustomHeader.add_member(:header_value, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "HeaderValue", traits: {"smithy.api#required" => {}}))
    OriginCustomHeader.type = Types::OriginCustomHeader
    OriginCustomHeadersList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OriginCustomHeader, name: "member", traits: {"smithy.api#xmlName" => "OriginCustomHeader"})
    OriginGroup.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#required" => {}}))
    OriginGroup.add_member(:failover_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginGroupFailoverCriteria, name: "FailoverCriteria", traits: {"smithy.api#required" => {}}))
    OriginGroup.add_member(:members, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginGroupMembers, name: "Members", traits: {"smithy.api#required" => {}}))
    OriginGroup.add_member(:selection_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginGroupSelectionCriteria, name: "SelectionCriteria"))
    OriginGroup.type = Types::OriginGroup
    OriginGroupFailoverCriteria.add_member(:status_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCodes, name: "StatusCodes", traits: {"smithy.api#required" => {}}))
    OriginGroupFailoverCriteria.type = Types::OriginGroupFailoverCriteria
    OriginGroupList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OriginGroup, name: "member", traits: {"smithy.api#xmlName" => "OriginGroup"})
    OriginGroupMember.add_member(:origin_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OriginId", traits: {"smithy.api#required" => {}}))
    OriginGroupMember.type = Types::OriginGroupMember
    OriginGroupMemberList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OriginGroupMember, name: "member", traits: {"smithy.api#xmlName" => "OriginGroupMember"})
    OriginGroupMembers.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    OriginGroupMembers.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginGroupMemberList, name: "Items", traits: {"smithy.api#required" => {}}))
    OriginGroupMembers.type = Types::OriginGroupMembers
    OriginGroupSelectionCriteria.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Default", traits: {"smithy.api#enumValue" => "default"}))
    OriginGroupSelectionCriteria.add_member(:media_quality_based, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MediaQualityBased", traits: {"smithy.api#enumValue" => "media-quality-based"}))
    OriginGroups.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    OriginGroups.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginGroupList, name: "Items"))
    OriginGroups.type = Types::OriginGroups
    OriginList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Origin, name: "member", traits: {"smithy.api#xmlName" => "Origin"})
    OriginProtocolPolicy.add_member(:http_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "http_only", traits: {"smithy.api#enumValue" => "http-only"}))
    OriginProtocolPolicy.add_member(:match_viewer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "match_viewer", traits: {"smithy.api#enumValue" => "match-viewer"}))
    OriginProtocolPolicy.add_member(:https_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "https_only", traits: {"smithy.api#enumValue" => "https-only"}))
    OriginRequestPolicy.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#required" => {}}))
    OriginRequestPolicy.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime", traits: {"smithy.api#required" => {}}))
    OriginRequestPolicy.add_member(:origin_request_policy_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginRequestPolicyConfig, name: "OriginRequestPolicyConfig", traits: {"smithy.api#required" => {}}))
    OriginRequestPolicy.type = Types::OriginRequestPolicy
    OriginRequestPolicyAlreadyExists.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    OriginRequestPolicyAlreadyExists.type = Types::OriginRequestPolicyAlreadyExists
    OriginRequestPolicyConfig.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Comment"))
    OriginRequestPolicyConfig.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    OriginRequestPolicyConfig.add_member(:headers_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginRequestPolicyHeadersConfig, name: "HeadersConfig", traits: {"smithy.api#required" => {}}))
    OriginRequestPolicyConfig.add_member(:cookies_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginRequestPolicyCookiesConfig, name: "CookiesConfig", traits: {"smithy.api#required" => {}}))
    OriginRequestPolicyConfig.add_member(:query_strings_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginRequestPolicyQueryStringsConfig, name: "QueryStringsConfig", traits: {"smithy.api#required" => {}}))
    OriginRequestPolicyConfig.type = Types::OriginRequestPolicyConfig
    OriginRequestPolicyCookieBehavior.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "none", traits: {"smithy.api#enumValue" => "none"}))
    OriginRequestPolicyCookieBehavior.add_member(:whitelist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "whitelist", traits: {"smithy.api#enumValue" => "whitelist"}))
    OriginRequestPolicyCookieBehavior.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "all", traits: {"smithy.api#enumValue" => "all"}))
    OriginRequestPolicyCookieBehavior.add_member(:all_except, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "allExcept", traits: {"smithy.api#enumValue" => "allExcept"}))
    OriginRequestPolicyCookiesConfig.add_member(:cookie_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginRequestPolicyCookieBehavior, name: "CookieBehavior", traits: {"smithy.api#required" => {}}))
    OriginRequestPolicyCookiesConfig.add_member(:cookies, ::Smithy::Schema::Shapes::MemberShape.new(target: CookieNames, name: "Cookies"))
    OriginRequestPolicyCookiesConfig.type = Types::OriginRequestPolicyCookiesConfig
    OriginRequestPolicyHeaderBehavior.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "none", traits: {"smithy.api#enumValue" => "none"}))
    OriginRequestPolicyHeaderBehavior.add_member(:whitelist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "whitelist", traits: {"smithy.api#enumValue" => "whitelist"}))
    OriginRequestPolicyHeaderBehavior.add_member(:all_viewer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "allViewer", traits: {"smithy.api#enumValue" => "allViewer"}))
    OriginRequestPolicyHeaderBehavior.add_member(:all_viewer_and_whitelist_cloud_front, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "allViewerAndWhitelistCloudFront", traits: {"smithy.api#enumValue" => "allViewerAndWhitelistCloudFront"}))
    OriginRequestPolicyHeaderBehavior.add_member(:all_except, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "allExcept", traits: {"smithy.api#enumValue" => "allExcept"}))
    OriginRequestPolicyHeadersConfig.add_member(:header_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginRequestPolicyHeaderBehavior, name: "HeaderBehavior", traits: {"smithy.api#required" => {}}))
    OriginRequestPolicyHeadersConfig.add_member(:headers, ::Smithy::Schema::Shapes::MemberShape.new(target: Headers, name: "Headers"))
    OriginRequestPolicyHeadersConfig.type = Types::OriginRequestPolicyHeadersConfig
    OriginRequestPolicyInUse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    OriginRequestPolicyInUse.type = Types::OriginRequestPolicyInUse
    OriginRequestPolicyList.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker"))
    OriginRequestPolicyList.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#required" => {}}))
    OriginRequestPolicyList.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    OriginRequestPolicyList.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginRequestPolicySummaryList, name: "Items"))
    OriginRequestPolicyList.type = Types::OriginRequestPolicyList
    OriginRequestPolicyQueryStringBehavior.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "none", traits: {"smithy.api#enumValue" => "none"}))
    OriginRequestPolicyQueryStringBehavior.add_member(:whitelist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "whitelist", traits: {"smithy.api#enumValue" => "whitelist"}))
    OriginRequestPolicyQueryStringBehavior.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "all", traits: {"smithy.api#enumValue" => "all"}))
    OriginRequestPolicyQueryStringBehavior.add_member(:all_except, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "allExcept", traits: {"smithy.api#enumValue" => "allExcept"}))
    OriginRequestPolicyQueryStringsConfig.add_member(:query_string_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginRequestPolicyQueryStringBehavior, name: "QueryStringBehavior", traits: {"smithy.api#required" => {}}))
    OriginRequestPolicyQueryStringsConfig.add_member(:query_strings, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStringNames, name: "QueryStrings"))
    OriginRequestPolicyQueryStringsConfig.type = Types::OriginRequestPolicyQueryStringsConfig
    OriginRequestPolicySummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginRequestPolicyType, name: "Type", traits: {"smithy.api#required" => {}}))
    OriginRequestPolicySummary.add_member(:origin_request_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginRequestPolicy, name: "OriginRequestPolicy", traits: {"smithy.api#required" => {}}))
    OriginRequestPolicySummary.type = Types::OriginRequestPolicySummary
    OriginRequestPolicySummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OriginRequestPolicySummary, name: "member", traits: {"smithy.api#xmlName" => "OriginRequestPolicySummary"})
    OriginRequestPolicyType.add_member(:managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "managed", traits: {"smithy.api#enumValue" => "managed"}))
    OriginRequestPolicyType.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "custom", traits: {"smithy.api#enumValue" => "custom"}))
    OriginShield.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#required" => {}}))
    OriginShield.add_member(:origin_shield_region, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginShieldRegion, name: "OriginShieldRegion"))
    OriginShield.type = Types::OriginShield
    OriginSslProtocols.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    OriginSslProtocols.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: SslProtocolsList, name: "Items", traits: {"smithy.api#required" => {}}))
    OriginSslProtocols.type = Types::OriginSslProtocols
    Origins.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    Origins.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginList, name: "Items", traits: {"smithy.api#required" => {}}))
    Origins.type = Types::Origins
    Parameter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterName, name: "Name", traits: {"smithy.api#required" => {}}))
    Parameter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Parameter.type = Types::Parameter
    ParameterDefinition.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterName, name: "Name", traits: {"smithy.api#required" => {}}))
    ParameterDefinition.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterDefinitionSchema, name: "Definition", traits: {"smithy.api#required" => {}}))
    ParameterDefinition.type = Types::ParameterDefinition
    ParameterDefinitionSchema.add_member(:string_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: StringSchemaConfig, name: "StringSchema"))
    ParameterDefinitionSchema.type = Types::ParameterDefinitionSchema
    ParameterDefinitions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterDefinition, name: "member")
    Parameters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Parameter, name: "member")
    ParametersInCacheKeyAndForwardedToOrigin.add_member(:enable_accept_encoding_gzip, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EnableAcceptEncodingGzip", traits: {"smithy.api#required" => {}}))
    ParametersInCacheKeyAndForwardedToOrigin.add_member(:enable_accept_encoding_brotli, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EnableAcceptEncodingBrotli"))
    ParametersInCacheKeyAndForwardedToOrigin.add_member(:headers_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CachePolicyHeadersConfig, name: "HeadersConfig", traits: {"smithy.api#required" => {}}))
    ParametersInCacheKeyAndForwardedToOrigin.add_member(:cookies_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CachePolicyCookiesConfig, name: "CookiesConfig", traits: {"smithy.api#required" => {}}))
    ParametersInCacheKeyAndForwardedToOrigin.add_member(:query_strings_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CachePolicyQueryStringsConfig, name: "QueryStringsConfig", traits: {"smithy.api#required" => {}}))
    ParametersInCacheKeyAndForwardedToOrigin.type = Types::ParametersInCacheKeyAndForwardedToOrigin
    PathList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "Path"})
    Paths.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    Paths.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: PathList, name: "Items"))
    Paths.type = Types::Paths
    PreconditionFailed.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    PreconditionFailed.type = Types::PreconditionFailed
    PriceClass.add_member(:price_class_100, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PriceClass_100", traits: {"smithy.api#enumValue" => "PriceClass_100"}))
    PriceClass.add_member(:price_class_200, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PriceClass_200", traits: {"smithy.api#enumValue" => "PriceClass_200"}))
    PriceClass.add_member(:price_class_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PriceClass_All", traits: {"smithy.api#enumValue" => "PriceClass_All"}))
    PriceClass.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "None", traits: {"smithy.api#enumValue" => "None"}))
    PublicKey.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#required" => {}}))
    PublicKey.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime", traits: {"smithy.api#required" => {}}))
    PublicKey.add_member(:public_key_config, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicKeyConfig, name: "PublicKeyConfig", traits: {"smithy.api#required" => {}}))
    PublicKey.type = Types::PublicKey
    PublicKeyAlreadyExists.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    PublicKeyAlreadyExists.type = Types::PublicKeyAlreadyExists
    PublicKeyConfig.add_member(:caller_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CallerReference", traits: {"smithy.api#required" => {}}))
    PublicKeyConfig.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    PublicKeyConfig.add_member(:encoded_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EncodedKey", traits: {"smithy.api#required" => {}}))
    PublicKeyConfig.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Comment"))
    PublicKeyConfig.type = Types::PublicKeyConfig
    PublicKeyIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "PublicKey"})
    PublicKeyInUse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    PublicKeyInUse.type = Types::PublicKeyInUse
    PublicKeyList.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker"))
    PublicKeyList.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#required" => {}}))
    PublicKeyList.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    PublicKeyList.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicKeySummaryList, name: "Items"))
    PublicKeyList.type = Types::PublicKeyList
    PublicKeySummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#required" => {}}))
    PublicKeySummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    PublicKeySummary.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime", traits: {"smithy.api#required" => {}}))
    PublicKeySummary.add_member(:encoded_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EncodedKey", traits: {"smithy.api#required" => {}}))
    PublicKeySummary.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Comment"))
    PublicKeySummary.type = Types::PublicKeySummary
    PublicKeySummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PublicKeySummary, name: "member", traits: {"smithy.api#xmlName" => "PublicKeySummary"})
    PublishFunctionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PublishFunctionRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match", "smithy.api#required" => {}}))
    PublishFunctionRequest.type = Types::PublishFunctionRequest
    PublishFunctionResult.add_member(:function_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionSummary, name: "FunctionSummary", traits: {"smithy.api#httpPayload" => {}}))
    PublishFunctionResult[:http_payload] = :function_summary
    PublishFunctionResult[:http_payload_member] = PublishFunctionResult.member(:function_summary)
    PublishFunctionResult.type = Types::PublishFunctionResult
    QueryArgProfile.add_member(:query_arg, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "QueryArg", traits: {"smithy.api#required" => {}}))
    QueryArgProfile.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProfileId", traits: {"smithy.api#required" => {}}))
    QueryArgProfile.type = Types::QueryArgProfile
    QueryArgProfileConfig.add_member(:forward_when_query_arg_profile_is_unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ForwardWhenQueryArgProfileIsUnknown", traits: {"smithy.api#required" => {}}))
    QueryArgProfileConfig.add_member(:query_arg_profiles, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryArgProfiles, name: "QueryArgProfiles"))
    QueryArgProfileConfig.type = Types::QueryArgProfileConfig
    QueryArgProfileEmpty.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    QueryArgProfileEmpty.type = Types::QueryArgProfileEmpty
    QueryArgProfileList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: QueryArgProfile, name: "member", traits: {"smithy.api#xmlName" => "QueryArgProfile"})
    QueryArgProfiles.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    QueryArgProfiles.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryArgProfileList, name: "Items"))
    QueryArgProfiles.type = Types::QueryArgProfiles
    QueryStringCacheKeys.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    QueryStringCacheKeys.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStringCacheKeysList, name: "Items"))
    QueryStringCacheKeys.type = Types::QueryStringCacheKeys
    QueryStringCacheKeysList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "Name"})
    QueryStringNames.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    QueryStringNames.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStringNamesList, name: "Items"))
    QueryStringNames.type = Types::QueryStringNames
    QueryStringNamesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "Name"})
    RealtimeLogConfig.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ARN", traits: {"smithy.api#required" => {}}))
    RealtimeLogConfig.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    RealtimeLogConfig.add_member(:sampling_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "SamplingRate", traits: {"smithy.api#required" => {}}))
    RealtimeLogConfig.add_member(:end_points, ::Smithy::Schema::Shapes::MemberShape.new(target: EndPointList, name: "EndPoints", traits: {"smithy.api#required" => {}}))
    RealtimeLogConfig.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldList, name: "Fields", traits: {"smithy.api#required" => {}}))
    RealtimeLogConfig.type = Types::RealtimeLogConfig
    RealtimeLogConfigAlreadyExists.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    RealtimeLogConfigAlreadyExists.type = Types::RealtimeLogConfigAlreadyExists
    RealtimeLogConfigInUse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    RealtimeLogConfigInUse.type = Types::RealtimeLogConfigInUse
    RealtimeLogConfigList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RealtimeLogConfig, name: "member")
    RealtimeLogConfigOwnerMismatch.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    RealtimeLogConfigOwnerMismatch.type = Types::RealtimeLogConfigOwnerMismatch
    RealtimeLogConfigs.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#required" => {}}))
    RealtimeLogConfigs.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: RealtimeLogConfigList, name: "Items"))
    RealtimeLogConfigs.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsTruncated", traits: {"smithy.api#required" => {}}))
    RealtimeLogConfigs.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#required" => {}}))
    RealtimeLogConfigs.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker"))
    RealtimeLogConfigs.type = Types::RealtimeLogConfigs
    RealtimeMetricsSubscriptionConfig.add_member(:realtime_metrics_subscription_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RealtimeMetricsSubscriptionStatus, name: "RealtimeMetricsSubscriptionStatus", traits: {"smithy.api#required" => {}}))
    RealtimeMetricsSubscriptionConfig.type = Types::RealtimeMetricsSubscriptionConfig
    RealtimeMetricsSubscriptionStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    RealtimeMetricsSubscriptionStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    ReferrerPolicyList.add_member(:no_referrer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "no_referrer", traits: {"smithy.api#enumValue" => "no-referrer"}))
    ReferrerPolicyList.add_member(:no_referrer_when_downgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "no_referrer_when_downgrade", traits: {"smithy.api#enumValue" => "no-referrer-when-downgrade"}))
    ReferrerPolicyList.add_member(:origin, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "origin", traits: {"smithy.api#enumValue" => "origin"}))
    ReferrerPolicyList.add_member(:origin_when_cross_origin, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "origin_when_cross_origin", traits: {"smithy.api#enumValue" => "origin-when-cross-origin"}))
    ReferrerPolicyList.add_member(:same_origin, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "same_origin", traits: {"smithy.api#enumValue" => "same-origin"}))
    ReferrerPolicyList.add_member(:strict_origin, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "strict_origin", traits: {"smithy.api#enumValue" => "strict-origin"}))
    ReferrerPolicyList.add_member(:strict_origin_when_cross_origin, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "strict_origin_when_cross_origin", traits: {"smithy.api#enumValue" => "strict-origin-when-cross-origin"}))
    ReferrerPolicyList.add_member(:unsafe_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "unsafe_url", traits: {"smithy.api#enumValue" => "unsafe-url"}))
    ResourceInUse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ResourceInUse.type = Types::ResourceInUse
    ResourceNotDisabled.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ResourceNotDisabled.type = Types::ResourceNotDisabled
    ResponseHeadersPolicy.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#required" => {}}))
    ResponseHeadersPolicy.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime", traits: {"smithy.api#required" => {}}))
    ResponseHeadersPolicy.add_member(:response_headers_policy_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseHeadersPolicyConfig, name: "ResponseHeadersPolicyConfig", traits: {"smithy.api#required" => {}}))
    ResponseHeadersPolicy.type = Types::ResponseHeadersPolicy
    ResponseHeadersPolicyAccessControlAllowHeaders.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    ResponseHeadersPolicyAccessControlAllowHeaders.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessControlAllowHeadersList, name: "Items", traits: {"smithy.api#required" => {}}))
    ResponseHeadersPolicyAccessControlAllowHeaders.type = Types::ResponseHeadersPolicyAccessControlAllowHeaders
    ResponseHeadersPolicyAccessControlAllowMethods.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    ResponseHeadersPolicyAccessControlAllowMethods.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessControlAllowMethodsList, name: "Items", traits: {"smithy.api#required" => {}}))
    ResponseHeadersPolicyAccessControlAllowMethods.type = Types::ResponseHeadersPolicyAccessControlAllowMethods
    ResponseHeadersPolicyAccessControlAllowMethodsValues.add_member(:get, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GET", traits: {"smithy.api#enumValue" => "GET"}))
    ResponseHeadersPolicyAccessControlAllowMethodsValues.add_member(:post, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POST", traits: {"smithy.api#enumValue" => "POST"}))
    ResponseHeadersPolicyAccessControlAllowMethodsValues.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPTIONS", traits: {"smithy.api#enumValue" => "OPTIONS"}))
    ResponseHeadersPolicyAccessControlAllowMethodsValues.add_member(:put, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUT", traits: {"smithy.api#enumValue" => "PUT"}))
    ResponseHeadersPolicyAccessControlAllowMethodsValues.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE", traits: {"smithy.api#enumValue" => "DELETE"}))
    ResponseHeadersPolicyAccessControlAllowMethodsValues.add_member(:patch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PATCH", traits: {"smithy.api#enumValue" => "PATCH"}))
    ResponseHeadersPolicyAccessControlAllowMethodsValues.add_member(:head, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HEAD", traits: {"smithy.api#enumValue" => "HEAD"}))
    ResponseHeadersPolicyAccessControlAllowMethodsValues.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    ResponseHeadersPolicyAccessControlAllowOrigins.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    ResponseHeadersPolicyAccessControlAllowOrigins.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessControlAllowOriginsList, name: "Items", traits: {"smithy.api#required" => {}}))
    ResponseHeadersPolicyAccessControlAllowOrigins.type = Types::ResponseHeadersPolicyAccessControlAllowOrigins
    ResponseHeadersPolicyAccessControlExposeHeaders.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    ResponseHeadersPolicyAccessControlExposeHeaders.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessControlExposeHeadersList, name: "Items"))
    ResponseHeadersPolicyAccessControlExposeHeaders.type = Types::ResponseHeadersPolicyAccessControlExposeHeaders
    ResponseHeadersPolicyAlreadyExists.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ResponseHeadersPolicyAlreadyExists.type = Types::ResponseHeadersPolicyAlreadyExists
    ResponseHeadersPolicyConfig.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Comment"))
    ResponseHeadersPolicyConfig.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    ResponseHeadersPolicyConfig.add_member(:cors_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseHeadersPolicyCorsConfig, name: "CorsConfig"))
    ResponseHeadersPolicyConfig.add_member(:security_headers_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseHeadersPolicySecurityHeadersConfig, name: "SecurityHeadersConfig"))
    ResponseHeadersPolicyConfig.add_member(:server_timing_headers_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseHeadersPolicyServerTimingHeadersConfig, name: "ServerTimingHeadersConfig"))
    ResponseHeadersPolicyConfig.add_member(:custom_headers_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseHeadersPolicyCustomHeadersConfig, name: "CustomHeadersConfig"))
    ResponseHeadersPolicyConfig.add_member(:remove_headers_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseHeadersPolicyRemoveHeadersConfig, name: "RemoveHeadersConfig"))
    ResponseHeadersPolicyConfig.type = Types::ResponseHeadersPolicyConfig
    ResponseHeadersPolicyContentSecurityPolicy.add_member(:override, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Override", traits: {"smithy.api#required" => {}}))
    ResponseHeadersPolicyContentSecurityPolicy.add_member(:content_security_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ContentSecurityPolicy", traits: {"smithy.api#required" => {}}))
    ResponseHeadersPolicyContentSecurityPolicy.type = Types::ResponseHeadersPolicyContentSecurityPolicy
    ResponseHeadersPolicyContentTypeOptions.add_member(:override, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Override", traits: {"smithy.api#required" => {}}))
    ResponseHeadersPolicyContentTypeOptions.type = Types::ResponseHeadersPolicyContentTypeOptions
    ResponseHeadersPolicyCorsConfig.add_member(:access_control_allow_origins, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseHeadersPolicyAccessControlAllowOrigins, name: "AccessControlAllowOrigins", traits: {"smithy.api#required" => {}}))
    ResponseHeadersPolicyCorsConfig.add_member(:access_control_allow_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseHeadersPolicyAccessControlAllowHeaders, name: "AccessControlAllowHeaders", traits: {"smithy.api#required" => {}}))
    ResponseHeadersPolicyCorsConfig.add_member(:access_control_allow_methods, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseHeadersPolicyAccessControlAllowMethods, name: "AccessControlAllowMethods", traits: {"smithy.api#required" => {}}))
    ResponseHeadersPolicyCorsConfig.add_member(:access_control_allow_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AccessControlAllowCredentials", traits: {"smithy.api#required" => {}}))
    ResponseHeadersPolicyCorsConfig.add_member(:access_control_expose_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseHeadersPolicyAccessControlExposeHeaders, name: "AccessControlExposeHeaders"))
    ResponseHeadersPolicyCorsConfig.add_member(:access_control_max_age_sec, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "AccessControlMaxAgeSec"))
    ResponseHeadersPolicyCorsConfig.add_member(:origin_override, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "OriginOverride", traits: {"smithy.api#required" => {}}))
    ResponseHeadersPolicyCorsConfig.type = Types::ResponseHeadersPolicyCorsConfig
    ResponseHeadersPolicyCustomHeader.add_member(:header, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Header", traits: {"smithy.api#required" => {}}))
    ResponseHeadersPolicyCustomHeader.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Value", traits: {"smithy.api#required" => {}}))
    ResponseHeadersPolicyCustomHeader.add_member(:override, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Override", traits: {"smithy.api#required" => {}}))
    ResponseHeadersPolicyCustomHeader.type = Types::ResponseHeadersPolicyCustomHeader
    ResponseHeadersPolicyCustomHeaderList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseHeadersPolicyCustomHeader, name: "member", traits: {"smithy.api#xmlName" => "ResponseHeadersPolicyCustomHeader"})
    ResponseHeadersPolicyCustomHeadersConfig.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    ResponseHeadersPolicyCustomHeadersConfig.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseHeadersPolicyCustomHeaderList, name: "Items"))
    ResponseHeadersPolicyCustomHeadersConfig.type = Types::ResponseHeadersPolicyCustomHeadersConfig
    ResponseHeadersPolicyFrameOptions.add_member(:override, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Override", traits: {"smithy.api#required" => {}}))
    ResponseHeadersPolicyFrameOptions.add_member(:frame_option, ::Smithy::Schema::Shapes::MemberShape.new(target: FrameOptionsList, name: "FrameOption", traits: {"smithy.api#required" => {}}))
    ResponseHeadersPolicyFrameOptions.type = Types::ResponseHeadersPolicyFrameOptions
    ResponseHeadersPolicyInUse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ResponseHeadersPolicyInUse.type = Types::ResponseHeadersPolicyInUse
    ResponseHeadersPolicyList.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker"))
    ResponseHeadersPolicyList.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#required" => {}}))
    ResponseHeadersPolicyList.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    ResponseHeadersPolicyList.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseHeadersPolicySummaryList, name: "Items"))
    ResponseHeadersPolicyList.type = Types::ResponseHeadersPolicyList
    ResponseHeadersPolicyReferrerPolicy.add_member(:override, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Override", traits: {"smithy.api#required" => {}}))
    ResponseHeadersPolicyReferrerPolicy.add_member(:referrer_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferrerPolicyList, name: "ReferrerPolicy", traits: {"smithy.api#required" => {}}))
    ResponseHeadersPolicyReferrerPolicy.type = Types::ResponseHeadersPolicyReferrerPolicy
    ResponseHeadersPolicyRemoveHeader.add_member(:header, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Header", traits: {"smithy.api#required" => {}}))
    ResponseHeadersPolicyRemoveHeader.type = Types::ResponseHeadersPolicyRemoveHeader
    ResponseHeadersPolicyRemoveHeaderList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseHeadersPolicyRemoveHeader, name: "member", traits: {"smithy.api#xmlName" => "ResponseHeadersPolicyRemoveHeader"})
    ResponseHeadersPolicyRemoveHeadersConfig.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    ResponseHeadersPolicyRemoveHeadersConfig.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseHeadersPolicyRemoveHeaderList, name: "Items"))
    ResponseHeadersPolicyRemoveHeadersConfig.type = Types::ResponseHeadersPolicyRemoveHeadersConfig
    ResponseHeadersPolicySecurityHeadersConfig.add_member(:xss_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseHeadersPolicyXSSProtection, name: "XSSProtection"))
    ResponseHeadersPolicySecurityHeadersConfig.add_member(:frame_options, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseHeadersPolicyFrameOptions, name: "FrameOptions"))
    ResponseHeadersPolicySecurityHeadersConfig.add_member(:referrer_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseHeadersPolicyReferrerPolicy, name: "ReferrerPolicy"))
    ResponseHeadersPolicySecurityHeadersConfig.add_member(:content_security_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseHeadersPolicyContentSecurityPolicy, name: "ContentSecurityPolicy"))
    ResponseHeadersPolicySecurityHeadersConfig.add_member(:content_type_options, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseHeadersPolicyContentTypeOptions, name: "ContentTypeOptions"))
    ResponseHeadersPolicySecurityHeadersConfig.add_member(:strict_transport_security, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseHeadersPolicyStrictTransportSecurity, name: "StrictTransportSecurity"))
    ResponseHeadersPolicySecurityHeadersConfig.type = Types::ResponseHeadersPolicySecurityHeadersConfig
    ResponseHeadersPolicyServerTimingHeadersConfig.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#required" => {}}))
    ResponseHeadersPolicyServerTimingHeadersConfig.add_member(:sampling_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: SamplingRate, name: "SamplingRate"))
    ResponseHeadersPolicyServerTimingHeadersConfig.type = Types::ResponseHeadersPolicyServerTimingHeadersConfig
    ResponseHeadersPolicyStrictTransportSecurity.add_member(:override, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Override", traits: {"smithy.api#required" => {}}))
    ResponseHeadersPolicyStrictTransportSecurity.add_member(:include_subdomains, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IncludeSubdomains"))
    ResponseHeadersPolicyStrictTransportSecurity.add_member(:preload, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Preload"))
    ResponseHeadersPolicyStrictTransportSecurity.add_member(:access_control_max_age_sec, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "AccessControlMaxAgeSec", traits: {"smithy.api#required" => {}}))
    ResponseHeadersPolicyStrictTransportSecurity.type = Types::ResponseHeadersPolicyStrictTransportSecurity
    ResponseHeadersPolicySummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseHeadersPolicyType, name: "Type", traits: {"smithy.api#required" => {}}))
    ResponseHeadersPolicySummary.add_member(:response_headers_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseHeadersPolicy, name: "ResponseHeadersPolicy", traits: {"smithy.api#required" => {}}))
    ResponseHeadersPolicySummary.type = Types::ResponseHeadersPolicySummary
    ResponseHeadersPolicySummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseHeadersPolicySummary, name: "member", traits: {"smithy.api#xmlName" => "ResponseHeadersPolicySummary"})
    ResponseHeadersPolicyType.add_member(:managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "managed", traits: {"smithy.api#enumValue" => "managed"}))
    ResponseHeadersPolicyType.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "custom", traits: {"smithy.api#enumValue" => "custom"}))
    ResponseHeadersPolicyXSSProtection.add_member(:override, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Override", traits: {"smithy.api#required" => {}}))
    ResponseHeadersPolicyXSSProtection.add_member(:protection, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Protection", traits: {"smithy.api#required" => {}}))
    ResponseHeadersPolicyXSSProtection.add_member(:mode_block, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ModeBlock"))
    ResponseHeadersPolicyXSSProtection.add_member(:report_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReportUri"))
    ResponseHeadersPolicyXSSProtection.type = Types::ResponseHeadersPolicyXSSProtection
    Restrictions.add_member(:geo_restriction, ::Smithy::Schema::Shapes::MemberShape.new(target: GeoRestriction, name: "GeoRestriction", traits: {"smithy.api#required" => {}}))
    Restrictions.type = Types::Restrictions
    S3Origin.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainName", traits: {"smithy.api#required" => {}}))
    S3Origin.add_member(:origin_access_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OriginAccessIdentity", traits: {"smithy.api#required" => {}}))
    S3Origin.type = Types::S3Origin
    S3OriginConfig.add_member(:origin_access_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OriginAccessIdentity", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => "", "smithy.api#required" => {}}))
    S3OriginConfig.add_member(:origin_read_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "OriginReadTimeout"))
    S3OriginConfig.type = Types::S3OriginConfig
    SSLSupportMethod.add_member(:sni_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "sni_only", traits: {"smithy.api#enumValue" => "sni-only"}))
    SSLSupportMethod.add_member(:vip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "vip", traits: {"smithy.api#enumValue" => "vip"}))
    SSLSupportMethod.add_member(:static_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "static_ip", traits: {"smithy.api#enumValue" => "static-ip"}))
    SessionStickinessConfig.add_member(:idle_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "IdleTTL", traits: {"smithy.api#required" => {}}))
    SessionStickinessConfig.add_member(:maximum_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaximumTTL", traits: {"smithy.api#required" => {}}))
    SessionStickinessConfig.type = Types::SessionStickinessConfig
    Signer.add_member(:aws_account_number, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AwsAccountNumber"))
    Signer.add_member(:key_pair_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyPairIds, name: "KeyPairIds"))
    Signer.type = Types::Signer
    SignerList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Signer, name: "member", traits: {"smithy.api#xmlName" => "Signer"})
    SslProtocol.add_member(:ss_lv3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SSLv3", traits: {"smithy.api#enumValue" => "SSLv3"}))
    SslProtocol.add_member(:tl_sv1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TLSv1", traits: {"smithy.api#enumValue" => "TLSv1"}))
    SslProtocol.add_member(:tl_sv1_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TLSv1_1", traits: {"smithy.api#enumValue" => "TLSv1.1"}))
    SslProtocol.add_member(:tl_sv1_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TLSv1_2", traits: {"smithy.api#enumValue" => "TLSv1.2"}))
    SslProtocolsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SslProtocol, name: "member", traits: {"smithy.api#xmlName" => "SslProtocol"})
    StagingDistributionDnsNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "DnsName"})
    StagingDistributionDnsNames.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    StagingDistributionDnsNames.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: StagingDistributionDnsNameList, name: "Items"))
    StagingDistributionDnsNames.type = Types::StagingDistributionDnsNames
    StagingDistributionInUse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    StagingDistributionInUse.type = Types::StagingDistributionInUse
    StatusCodeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "member", traits: {"smithy.api#xmlName" => "StatusCode"})
    StatusCodes.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    StatusCodes.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCodeList, name: "Items", traits: {"smithy.api#required" => {}}))
    StatusCodes.type = Types::StatusCodes
    StreamingDistribution.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#required" => {}}))
    StreamingDistribution.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ARN", traits: {"smithy.api#required" => {}}))
    StreamingDistribution.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status", traits: {"smithy.api#required" => {}}))
    StreamingDistribution.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime"))
    StreamingDistribution.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainName", traits: {"smithy.api#required" => {}}))
    StreamingDistribution.add_member(:active_trusted_signers, ::Smithy::Schema::Shapes::MemberShape.new(target: ActiveTrustedSigners, name: "ActiveTrustedSigners", traits: {"smithy.api#required" => {}}))
    StreamingDistribution.add_member(:streaming_distribution_config, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingDistributionConfig, name: "StreamingDistributionConfig", traits: {"smithy.api#required" => {}}))
    StreamingDistribution.type = Types::StreamingDistribution
    StreamingDistributionAlreadyExists.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    StreamingDistributionAlreadyExists.type = Types::StreamingDistributionAlreadyExists
    StreamingDistributionConfig.add_member(:caller_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CallerReference", traits: {"smithy.api#required" => {}}))
    StreamingDistributionConfig.add_member(:s3_origin, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Origin, name: "S3Origin", traits: {"smithy.api#required" => {}}))
    StreamingDistributionConfig.add_member(:aliases, ::Smithy::Schema::Shapes::MemberShape.new(target: Aliases, name: "Aliases"))
    StreamingDistributionConfig.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Comment", traits: {"smithy.api#required" => {}}))
    StreamingDistributionConfig.add_member(:logging, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingLoggingConfig, name: "Logging"))
    StreamingDistributionConfig.add_member(:trusted_signers, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedSigners, name: "TrustedSigners", traits: {"smithy.api#required" => {}}))
    StreamingDistributionConfig.add_member(:price_class, ::Smithy::Schema::Shapes::MemberShape.new(target: PriceClass, name: "PriceClass"))
    StreamingDistributionConfig.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#required" => {}}))
    StreamingDistributionConfig.type = Types::StreamingDistributionConfig
    StreamingDistributionConfigWithTags.add_member(:streaming_distribution_config, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingDistributionConfig, name: "StreamingDistributionConfig", traits: {"smithy.api#required" => {}}))
    StreamingDistributionConfigWithTags.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#required" => {}}))
    StreamingDistributionConfigWithTags.type = Types::StreamingDistributionConfigWithTags
    StreamingDistributionList.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#required" => {}}))
    StreamingDistributionList.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker"))
    StreamingDistributionList.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#required" => {}}))
    StreamingDistributionList.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsTruncated", traits: {"smithy.api#required" => {}}))
    StreamingDistributionList.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    StreamingDistributionList.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingDistributionSummaryList, name: "Items"))
    StreamingDistributionList.type = Types::StreamingDistributionList
    StreamingDistributionNotDisabled.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    StreamingDistributionNotDisabled.type = Types::StreamingDistributionNotDisabled
    StreamingDistributionSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#required" => {}}))
    StreamingDistributionSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ARN", traits: {"smithy.api#required" => {}}))
    StreamingDistributionSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status", traits: {"smithy.api#required" => {}}))
    StreamingDistributionSummary.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime", traits: {"smithy.api#required" => {}}))
    StreamingDistributionSummary.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainName", traits: {"smithy.api#required" => {}}))
    StreamingDistributionSummary.add_member(:s3_origin, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Origin, name: "S3Origin", traits: {"smithy.api#required" => {}}))
    StreamingDistributionSummary.add_member(:aliases, ::Smithy::Schema::Shapes::MemberShape.new(target: Aliases, name: "Aliases", traits: {"smithy.api#required" => {}}))
    StreamingDistributionSummary.add_member(:trusted_signers, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedSigners, name: "TrustedSigners", traits: {"smithy.api#required" => {}}))
    StreamingDistributionSummary.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Comment", traits: {"smithy.api#required" => {}}))
    StreamingDistributionSummary.add_member(:price_class, ::Smithy::Schema::Shapes::MemberShape.new(target: PriceClass, name: "PriceClass", traits: {"smithy.api#required" => {}}))
    StreamingDistributionSummary.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#required" => {}}))
    StreamingDistributionSummary.type = Types::StreamingDistributionSummary
    StreamingDistributionSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingDistributionSummary, name: "member", traits: {"smithy.api#xmlName" => "StreamingDistributionSummary"})
    StreamingLoggingConfig.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#required" => {}}))
    StreamingLoggingConfig.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Bucket", traits: {"smithy.api#required" => {}}))
    StreamingLoggingConfig.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Prefix", traits: {"smithy.api#required" => {}}))
    StreamingLoggingConfig.type = Types::StreamingLoggingConfig
    StringSchemaConfig.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "Comment"))
    StringSchemaConfig.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterValue, name: "DefaultValue"))
    StringSchemaConfig.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Required", traits: {"smithy.api#required" => {}}))
    StringSchemaConfig.type = Types::StringSchemaConfig
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value"))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member", traits: {"smithy.api#xmlName" => "Key"})
    TagKeys.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "Items"))
    TagKeys.type = Types::TagKeys
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member", traits: {"smithy.api#xmlName" => "Tag"})
    TagResourceRequest.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "Resource", traits: {"smithy.api#httpQuery" => "Resource", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "Tags"}))
    TagResourceRequest[:http_payload] = :tags
    TagResourceRequest[:http_payload_member] = TagResourceRequest.member(:tags)
    TagResourceRequest.type = Types::TagResourceRequest
    Tags.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Items"))
    Tags.type = Types::Tags
    TenantConfig.add_member(:parameter_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterDefinitions, name: "ParameterDefinitions"))
    TenantConfig.type = Types::TenantConfig
    TestFunctionFailed.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TestFunctionFailed.type = Types::TestFunctionFailed
    TestFunctionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TestFunctionRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match", "smithy.api#required" => {}}))
    TestFunctionRequest.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionStage, name: "Stage"))
    TestFunctionRequest.add_member(:event_object, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionEventObject, name: "EventObject", traits: {"smithy.api#required" => {}}))
    TestFunctionRequest.type = Types::TestFunctionRequest
    TestFunctionResult.add_member(:test_result, ::Smithy::Schema::Shapes::MemberShape.new(target: TestResult, name: "TestResult", traits: {"smithy.api#httpPayload" => {}}))
    TestFunctionResult[:http_payload] = :test_result
    TestFunctionResult[:http_payload_member] = TestFunctionResult.member(:test_result)
    TestFunctionResult.type = Types::TestFunctionResult
    TestResult.add_member(:function_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionSummary, name: "FunctionSummary"))
    TestResult.add_member(:compute_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ComputeUtilization"))
    TestResult.add_member(:function_execution_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionExecutionLogList, name: "FunctionExecutionLogs"))
    TestResult.add_member(:function_error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "FunctionErrorMessage"))
    TestResult.add_member(:function_output, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "FunctionOutput"))
    TestResult.type = Types::TestResult
    TooLongCSPInResponseHeadersPolicy.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooLongCSPInResponseHeadersPolicy.type = Types::TooLongCSPInResponseHeadersPolicy
    TooManyCacheBehaviors.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyCacheBehaviors.type = Types::TooManyCacheBehaviors
    TooManyCachePolicies.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyCachePolicies.type = Types::TooManyCachePolicies
    TooManyCertificates.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyCertificates.type = Types::TooManyCertificates
    TooManyCloudFrontOriginAccessIdentities.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyCloudFrontOriginAccessIdentities.type = Types::TooManyCloudFrontOriginAccessIdentities
    TooManyContinuousDeploymentPolicies.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyContinuousDeploymentPolicies.type = Types::TooManyContinuousDeploymentPolicies
    TooManyCookieNamesInWhiteList.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyCookieNamesInWhiteList.type = Types::TooManyCookieNamesInWhiteList
    TooManyCookiesInCachePolicy.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyCookiesInCachePolicy.type = Types::TooManyCookiesInCachePolicy
    TooManyCookiesInOriginRequestPolicy.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyCookiesInOriginRequestPolicy.type = Types::TooManyCookiesInOriginRequestPolicy
    TooManyCustomHeadersInResponseHeadersPolicy.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyCustomHeadersInResponseHeadersPolicy.type = Types::TooManyCustomHeadersInResponseHeadersPolicy
    TooManyDistributionCNAMEs.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyDistributionCNAMEs.type = Types::TooManyDistributionCNAMEs
    TooManyDistributions.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyDistributions.type = Types::TooManyDistributions
    TooManyDistributionsAssociatedToCachePolicy.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyDistributionsAssociatedToCachePolicy.type = Types::TooManyDistributionsAssociatedToCachePolicy
    TooManyDistributionsAssociatedToFieldLevelEncryptionConfig.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyDistributionsAssociatedToFieldLevelEncryptionConfig.type = Types::TooManyDistributionsAssociatedToFieldLevelEncryptionConfig
    TooManyDistributionsAssociatedToKeyGroup.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyDistributionsAssociatedToKeyGroup.type = Types::TooManyDistributionsAssociatedToKeyGroup
    TooManyDistributionsAssociatedToOriginAccessControl.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyDistributionsAssociatedToOriginAccessControl.type = Types::TooManyDistributionsAssociatedToOriginAccessControl
    TooManyDistributionsAssociatedToOriginRequestPolicy.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyDistributionsAssociatedToOriginRequestPolicy.type = Types::TooManyDistributionsAssociatedToOriginRequestPolicy
    TooManyDistributionsAssociatedToResponseHeadersPolicy.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyDistributionsAssociatedToResponseHeadersPolicy.type = Types::TooManyDistributionsAssociatedToResponseHeadersPolicy
    TooManyDistributionsWithFunctionAssociations.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyDistributionsWithFunctionAssociations.type = Types::TooManyDistributionsWithFunctionAssociations
    TooManyDistributionsWithLambdaAssociations.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyDistributionsWithLambdaAssociations.type = Types::TooManyDistributionsWithLambdaAssociations
    TooManyDistributionsWithSingleFunctionARN.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyDistributionsWithSingleFunctionARN.type = Types::TooManyDistributionsWithSingleFunctionARN
    TooManyFieldLevelEncryptionConfigs.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyFieldLevelEncryptionConfigs.type = Types::TooManyFieldLevelEncryptionConfigs
    TooManyFieldLevelEncryptionContentTypeProfiles.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyFieldLevelEncryptionContentTypeProfiles.type = Types::TooManyFieldLevelEncryptionContentTypeProfiles
    TooManyFieldLevelEncryptionEncryptionEntities.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyFieldLevelEncryptionEncryptionEntities.type = Types::TooManyFieldLevelEncryptionEncryptionEntities
    TooManyFieldLevelEncryptionFieldPatterns.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyFieldLevelEncryptionFieldPatterns.type = Types::TooManyFieldLevelEncryptionFieldPatterns
    TooManyFieldLevelEncryptionProfiles.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyFieldLevelEncryptionProfiles.type = Types::TooManyFieldLevelEncryptionProfiles
    TooManyFieldLevelEncryptionQueryArgProfiles.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyFieldLevelEncryptionQueryArgProfiles.type = Types::TooManyFieldLevelEncryptionQueryArgProfiles
    TooManyFunctionAssociations.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyFunctionAssociations.type = Types::TooManyFunctionAssociations
    TooManyFunctions.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyFunctions.type = Types::TooManyFunctions
    TooManyHeadersInCachePolicy.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyHeadersInCachePolicy.type = Types::TooManyHeadersInCachePolicy
    TooManyHeadersInForwardedValues.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyHeadersInForwardedValues.type = Types::TooManyHeadersInForwardedValues
    TooManyHeadersInOriginRequestPolicy.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyHeadersInOriginRequestPolicy.type = Types::TooManyHeadersInOriginRequestPolicy
    TooManyInvalidationsInProgress.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyInvalidationsInProgress.type = Types::TooManyInvalidationsInProgress
    TooManyKeyGroups.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyKeyGroups.type = Types::TooManyKeyGroups
    TooManyKeyGroupsAssociatedToDistribution.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyKeyGroupsAssociatedToDistribution.type = Types::TooManyKeyGroupsAssociatedToDistribution
    TooManyLambdaFunctionAssociations.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyLambdaFunctionAssociations.type = Types::TooManyLambdaFunctionAssociations
    TooManyOriginAccessControls.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyOriginAccessControls.type = Types::TooManyOriginAccessControls
    TooManyOriginCustomHeaders.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyOriginCustomHeaders.type = Types::TooManyOriginCustomHeaders
    TooManyOriginGroupsPerDistribution.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyOriginGroupsPerDistribution.type = Types::TooManyOriginGroupsPerDistribution
    TooManyOriginRequestPolicies.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyOriginRequestPolicies.type = Types::TooManyOriginRequestPolicies
    TooManyOrigins.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyOrigins.type = Types::TooManyOrigins
    TooManyPublicKeys.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyPublicKeys.type = Types::TooManyPublicKeys
    TooManyPublicKeysInKeyGroup.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyPublicKeysInKeyGroup.type = Types::TooManyPublicKeysInKeyGroup
    TooManyQueryStringParameters.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyQueryStringParameters.type = Types::TooManyQueryStringParameters
    TooManyQueryStringsInCachePolicy.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyQueryStringsInCachePolicy.type = Types::TooManyQueryStringsInCachePolicy
    TooManyQueryStringsInOriginRequestPolicy.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyQueryStringsInOriginRequestPolicy.type = Types::TooManyQueryStringsInOriginRequestPolicy
    TooManyRealtimeLogConfigs.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyRealtimeLogConfigs.type = Types::TooManyRealtimeLogConfigs
    TooManyRemoveHeadersInResponseHeadersPolicy.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyRemoveHeadersInResponseHeadersPolicy.type = Types::TooManyRemoveHeadersInResponseHeadersPolicy
    TooManyResponseHeadersPolicies.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyResponseHeadersPolicies.type = Types::TooManyResponseHeadersPolicies
    TooManyStreamingDistributionCNAMEs.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyStreamingDistributionCNAMEs.type = Types::TooManyStreamingDistributionCNAMEs
    TooManyStreamingDistributions.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyStreamingDistributions.type = Types::TooManyStreamingDistributions
    TooManyTrustedSigners.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyTrustedSigners.type = Types::TooManyTrustedSigners
    TrafficConfig.add_member(:single_weight_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuousDeploymentSingleWeightConfig, name: "SingleWeightConfig"))
    TrafficConfig.add_member(:single_header_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuousDeploymentSingleHeaderConfig, name: "SingleHeaderConfig"))
    TrafficConfig.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuousDeploymentPolicyType, name: "Type", traits: {"smithy.api#required" => {}}))
    TrafficConfig.type = Types::TrafficConfig
    TrustedKeyGroupDoesNotExist.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TrustedKeyGroupDoesNotExist.type = Types::TrustedKeyGroupDoesNotExist
    TrustedKeyGroupIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "KeyGroup"})
    TrustedKeyGroups.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#required" => {}}))
    TrustedKeyGroups.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    TrustedKeyGroups.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedKeyGroupIdList, name: "Items"))
    TrustedKeyGroups.type = Types::TrustedKeyGroups
    TrustedSignerDoesNotExist.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TrustedSignerDoesNotExist.type = Types::TrustedSignerDoesNotExist
    TrustedSigners.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#required" => {}}))
    TrustedSigners.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    TrustedSigners.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountNumberList, name: "Items"))
    TrustedSigners.type = Types::TrustedSigners
    UnsupportedOperation.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    UnsupportedOperation.type = Types::UnsupportedOperation
    UntagResourceRequest.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "Resource", traits: {"smithy.api#httpQuery" => "Resource", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, name: "TagKeys", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "TagKeys"}))
    UntagResourceRequest[:http_payload] = :tag_keys
    UntagResourceRequest[:http_payload_member] = UntagResourceRequest.member(:tag_keys)
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateCachePolicyRequest.add_member(:cache_policy_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CachePolicyConfig, name: "CachePolicyConfig", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "CachePolicyConfig"}))
    UpdateCachePolicyRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCachePolicyRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    UpdateCachePolicyRequest[:http_payload] = :cache_policy_config
    UpdateCachePolicyRequest[:http_payload_member] = UpdateCachePolicyRequest.member(:cache_policy_config)
    UpdateCachePolicyRequest.type = Types::UpdateCachePolicyRequest
    UpdateCachePolicyResult.add_member(:cache_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: CachePolicy, name: "CachePolicy", traits: {"smithy.api#httpPayload" => {}}))
    UpdateCachePolicyResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    UpdateCachePolicyResult[:http_payload] = :cache_policy
    UpdateCachePolicyResult[:http_payload_member] = UpdateCachePolicyResult.member(:cache_policy)
    UpdateCachePolicyResult.type = Types::UpdateCachePolicyResult
    UpdateCloudFrontOriginAccessIdentityRequest.add_member(:cloud_front_origin_access_identity_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudFrontOriginAccessIdentityConfig, name: "CloudFrontOriginAccessIdentityConfig", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "CloudFrontOriginAccessIdentityConfig"}))
    UpdateCloudFrontOriginAccessIdentityRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCloudFrontOriginAccessIdentityRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    UpdateCloudFrontOriginAccessIdentityRequest[:http_payload] = :cloud_front_origin_access_identity_config
    UpdateCloudFrontOriginAccessIdentityRequest[:http_payload_member] = UpdateCloudFrontOriginAccessIdentityRequest.member(:cloud_front_origin_access_identity_config)
    UpdateCloudFrontOriginAccessIdentityRequest.type = Types::UpdateCloudFrontOriginAccessIdentityRequest
    UpdateCloudFrontOriginAccessIdentityResult.add_member(:cloud_front_origin_access_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudFrontOriginAccessIdentity, name: "CloudFrontOriginAccessIdentity", traits: {"smithy.api#httpPayload" => {}}))
    UpdateCloudFrontOriginAccessIdentityResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    UpdateCloudFrontOriginAccessIdentityResult[:http_payload] = :cloud_front_origin_access_identity
    UpdateCloudFrontOriginAccessIdentityResult[:http_payload_member] = UpdateCloudFrontOriginAccessIdentityResult.member(:cloud_front_origin_access_identity)
    UpdateCloudFrontOriginAccessIdentityResult.type = Types::UpdateCloudFrontOriginAccessIdentityResult
    UpdateConnectionGroupRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConnectionGroupRequest.add_member(:ipv6_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Ipv6Enabled"))
    UpdateConnectionGroupRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match", "smithy.api#required" => {}}))
    UpdateConnectionGroupRequest.add_member(:anycast_ip_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AnycastIpListId"))
    UpdateConnectionGroupRequest.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled"))
    UpdateConnectionGroupRequest.type = Types::UpdateConnectionGroupRequest
    UpdateConnectionGroupResult.add_member(:connection_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionGroup, name: "ConnectionGroup", traits: {"smithy.api#httpPayload" => {}}))
    UpdateConnectionGroupResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    UpdateConnectionGroupResult[:http_payload] = :connection_group
    UpdateConnectionGroupResult[:http_payload_member] = UpdateConnectionGroupResult.member(:connection_group)
    UpdateConnectionGroupResult.type = Types::UpdateConnectionGroupResult
    UpdateContinuousDeploymentPolicyRequest.add_member(:continuous_deployment_policy_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuousDeploymentPolicyConfig, name: "ContinuousDeploymentPolicyConfig", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "ContinuousDeploymentPolicyConfig"}))
    UpdateContinuousDeploymentPolicyRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateContinuousDeploymentPolicyRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    UpdateContinuousDeploymentPolicyRequest[:http_payload] = :continuous_deployment_policy_config
    UpdateContinuousDeploymentPolicyRequest[:http_payload_member] = UpdateContinuousDeploymentPolicyRequest.member(:continuous_deployment_policy_config)
    UpdateContinuousDeploymentPolicyRequest.type = Types::UpdateContinuousDeploymentPolicyRequest
    UpdateContinuousDeploymentPolicyResult.add_member(:continuous_deployment_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuousDeploymentPolicy, name: "ContinuousDeploymentPolicy", traits: {"smithy.api#httpPayload" => {}}))
    UpdateContinuousDeploymentPolicyResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    UpdateContinuousDeploymentPolicyResult[:http_payload] = :continuous_deployment_policy
    UpdateContinuousDeploymentPolicyResult[:http_payload_member] = UpdateContinuousDeploymentPolicyResult.member(:continuous_deployment_policy)
    UpdateContinuousDeploymentPolicyResult.type = Types::UpdateContinuousDeploymentPolicyResult
    UpdateDistributionRequest.add_member(:distribution_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionConfig, name: "DistributionConfig", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "DistributionConfig"}))
    UpdateDistributionRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDistributionRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    UpdateDistributionRequest[:http_payload] = :distribution_config
    UpdateDistributionRequest[:http_payload_member] = UpdateDistributionRequest.member(:distribution_config)
    UpdateDistributionRequest.type = Types::UpdateDistributionRequest
    UpdateDistributionResult.add_member(:distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: Distribution, name: "Distribution", traits: {"smithy.api#httpPayload" => {}}))
    UpdateDistributionResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    UpdateDistributionResult[:http_payload] = :distribution
    UpdateDistributionResult[:http_payload_member] = UpdateDistributionResult.member(:distribution)
    UpdateDistributionResult.type = Types::UpdateDistributionResult
    UpdateDistributionTenantRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDistributionTenantRequest.add_member(:distribution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DistributionId"))
    UpdateDistributionTenantRequest.add_member(:domains, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainList, name: "Domains"))
    UpdateDistributionTenantRequest.add_member(:customizations, ::Smithy::Schema::Shapes::MemberShape.new(target: Customizations, name: "Customizations"))
    UpdateDistributionTenantRequest.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameters, name: "Parameters"))
    UpdateDistributionTenantRequest.add_member(:connection_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConnectionGroupId"))
    UpdateDistributionTenantRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match", "smithy.api#required" => {}}))
    UpdateDistributionTenantRequest.add_member(:managed_certificate_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedCertificateRequest, name: "ManagedCertificateRequest"))
    UpdateDistributionTenantRequest.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled"))
    UpdateDistributionTenantRequest.type = Types::UpdateDistributionTenantRequest
    UpdateDistributionTenantResult.add_member(:distribution_tenant, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionTenant, name: "DistributionTenant", traits: {"smithy.api#httpPayload" => {}}))
    UpdateDistributionTenantResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    UpdateDistributionTenantResult[:http_payload] = :distribution_tenant
    UpdateDistributionTenantResult[:http_payload_member] = UpdateDistributionTenantResult.member(:distribution_tenant)
    UpdateDistributionTenantResult.type = Types::UpdateDistributionTenantResult
    UpdateDistributionWithStagingConfigRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDistributionWithStagingConfigRequest.add_member(:staging_distribution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StagingDistributionId", traits: {"smithy.api#httpQuery" => "StagingDistributionId"}))
    UpdateDistributionWithStagingConfigRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    UpdateDistributionWithStagingConfigRequest.type = Types::UpdateDistributionWithStagingConfigRequest
    UpdateDistributionWithStagingConfigResult.add_member(:distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: Distribution, name: "Distribution", traits: {"smithy.api#httpPayload" => {}}))
    UpdateDistributionWithStagingConfigResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    UpdateDistributionWithStagingConfigResult[:http_payload] = :distribution
    UpdateDistributionWithStagingConfigResult[:http_payload_member] = UpdateDistributionWithStagingConfigResult.member(:distribution)
    UpdateDistributionWithStagingConfigResult.type = Types::UpdateDistributionWithStagingConfigResult
    UpdateDomainAssociationRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Domain", traits: {"smithy.api#required" => {}}))
    UpdateDomainAssociationRequest.add_member(:target_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionResourceId, name: "TargetResource", traits: {"smithy.api#required" => {}}))
    UpdateDomainAssociationRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    UpdateDomainAssociationRequest.type = Types::UpdateDomainAssociationRequest
    UpdateDomainAssociationResult.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Domain"))
    UpdateDomainAssociationResult.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceId"))
    UpdateDomainAssociationResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    UpdateDomainAssociationResult.type = Types::UpdateDomainAssociationResult
    UpdateFieldLevelEncryptionConfigRequest.add_member(:field_level_encryption_config, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldLevelEncryptionConfig, name: "FieldLevelEncryptionConfig", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "FieldLevelEncryptionConfig"}))
    UpdateFieldLevelEncryptionConfigRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFieldLevelEncryptionConfigRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    UpdateFieldLevelEncryptionConfigRequest[:http_payload] = :field_level_encryption_config
    UpdateFieldLevelEncryptionConfigRequest[:http_payload_member] = UpdateFieldLevelEncryptionConfigRequest.member(:field_level_encryption_config)
    UpdateFieldLevelEncryptionConfigRequest.type = Types::UpdateFieldLevelEncryptionConfigRequest
    UpdateFieldLevelEncryptionConfigResult.add_member(:field_level_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldLevelEncryption, name: "FieldLevelEncryption", traits: {"smithy.api#httpPayload" => {}}))
    UpdateFieldLevelEncryptionConfigResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    UpdateFieldLevelEncryptionConfigResult[:http_payload] = :field_level_encryption
    UpdateFieldLevelEncryptionConfigResult[:http_payload_member] = UpdateFieldLevelEncryptionConfigResult.member(:field_level_encryption)
    UpdateFieldLevelEncryptionConfigResult.type = Types::UpdateFieldLevelEncryptionConfigResult
    UpdateFieldLevelEncryptionProfileRequest.add_member(:field_level_encryption_profile_config, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldLevelEncryptionProfileConfig, name: "FieldLevelEncryptionProfileConfig", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "FieldLevelEncryptionProfileConfig"}))
    UpdateFieldLevelEncryptionProfileRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFieldLevelEncryptionProfileRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    UpdateFieldLevelEncryptionProfileRequest[:http_payload] = :field_level_encryption_profile_config
    UpdateFieldLevelEncryptionProfileRequest[:http_payload_member] = UpdateFieldLevelEncryptionProfileRequest.member(:field_level_encryption_profile_config)
    UpdateFieldLevelEncryptionProfileRequest.type = Types::UpdateFieldLevelEncryptionProfileRequest
    UpdateFieldLevelEncryptionProfileResult.add_member(:field_level_encryption_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldLevelEncryptionProfile, name: "FieldLevelEncryptionProfile", traits: {"smithy.api#httpPayload" => {}}))
    UpdateFieldLevelEncryptionProfileResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    UpdateFieldLevelEncryptionProfileResult[:http_payload] = :field_level_encryption_profile
    UpdateFieldLevelEncryptionProfileResult[:http_payload_member] = UpdateFieldLevelEncryptionProfileResult.member(:field_level_encryption_profile)
    UpdateFieldLevelEncryptionProfileResult.type = Types::UpdateFieldLevelEncryptionProfileResult
    UpdateFunctionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFunctionRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match", "smithy.api#required" => {}}))
    UpdateFunctionRequest.add_member(:function_config, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionConfig, name: "FunctionConfig", traits: {"smithy.api#required" => {}}))
    UpdateFunctionRequest.add_member(:function_code, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionBlob, name: "FunctionCode", traits: {"smithy.api#required" => {}}))
    UpdateFunctionRequest.type = Types::UpdateFunctionRequest
    UpdateFunctionResult.add_member(:function_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionSummary, name: "FunctionSummary", traits: {"smithy.api#httpPayload" => {}}))
    UpdateFunctionResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETtag"}))
    UpdateFunctionResult[:http_payload] = :function_summary
    UpdateFunctionResult[:http_payload_member] = UpdateFunctionResult.member(:function_summary)
    UpdateFunctionResult.type = Types::UpdateFunctionResult
    UpdateKeyGroupRequest.add_member(:key_group_config, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyGroupConfig, name: "KeyGroupConfig", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "KeyGroupConfig"}))
    UpdateKeyGroupRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateKeyGroupRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    UpdateKeyGroupRequest[:http_payload] = :key_group_config
    UpdateKeyGroupRequest[:http_payload_member] = UpdateKeyGroupRequest.member(:key_group_config)
    UpdateKeyGroupRequest.type = Types::UpdateKeyGroupRequest
    UpdateKeyGroupResult.add_member(:key_group, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyGroup, name: "KeyGroup", traits: {"smithy.api#httpPayload" => {}}))
    UpdateKeyGroupResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    UpdateKeyGroupResult[:http_payload] = :key_group
    UpdateKeyGroupResult[:http_payload_member] = UpdateKeyGroupResult.member(:key_group)
    UpdateKeyGroupResult.type = Types::UpdateKeyGroupResult
    UpdateKeyValueStoreRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValueStoreName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateKeyValueStoreRequest.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValueStoreComment, name: "Comment", traits: {"smithy.api#required" => {}}))
    UpdateKeyValueStoreRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match", "smithy.api#required" => {}}))
    UpdateKeyValueStoreRequest.type = Types::UpdateKeyValueStoreRequest
    UpdateKeyValueStoreResult.add_member(:key_value_store, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValueStore, name: "KeyValueStore", traits: {"smithy.api#httpPayload" => {}}))
    UpdateKeyValueStoreResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    UpdateKeyValueStoreResult[:http_payload] = :key_value_store
    UpdateKeyValueStoreResult[:http_payload_member] = UpdateKeyValueStoreResult.member(:key_value_store)
    UpdateKeyValueStoreResult.type = Types::UpdateKeyValueStoreResult
    UpdateOriginAccessControlRequest.add_member(:origin_access_control_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginAccessControlConfig, name: "OriginAccessControlConfig", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "OriginAccessControlConfig"}))
    UpdateOriginAccessControlRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateOriginAccessControlRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    UpdateOriginAccessControlRequest[:http_payload] = :origin_access_control_config
    UpdateOriginAccessControlRequest[:http_payload_member] = UpdateOriginAccessControlRequest.member(:origin_access_control_config)
    UpdateOriginAccessControlRequest.type = Types::UpdateOriginAccessControlRequest
    UpdateOriginAccessControlResult.add_member(:origin_access_control, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginAccessControl, name: "OriginAccessControl", traits: {"smithy.api#httpPayload" => {}}))
    UpdateOriginAccessControlResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    UpdateOriginAccessControlResult[:http_payload] = :origin_access_control
    UpdateOriginAccessControlResult[:http_payload_member] = UpdateOriginAccessControlResult.member(:origin_access_control)
    UpdateOriginAccessControlResult.type = Types::UpdateOriginAccessControlResult
    UpdateOriginRequestPolicyRequest.add_member(:origin_request_policy_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginRequestPolicyConfig, name: "OriginRequestPolicyConfig", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "OriginRequestPolicyConfig"}))
    UpdateOriginRequestPolicyRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateOriginRequestPolicyRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    UpdateOriginRequestPolicyRequest[:http_payload] = :origin_request_policy_config
    UpdateOriginRequestPolicyRequest[:http_payload_member] = UpdateOriginRequestPolicyRequest.member(:origin_request_policy_config)
    UpdateOriginRequestPolicyRequest.type = Types::UpdateOriginRequestPolicyRequest
    UpdateOriginRequestPolicyResult.add_member(:origin_request_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginRequestPolicy, name: "OriginRequestPolicy", traits: {"smithy.api#httpPayload" => {}}))
    UpdateOriginRequestPolicyResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    UpdateOriginRequestPolicyResult[:http_payload] = :origin_request_policy
    UpdateOriginRequestPolicyResult[:http_payload_member] = UpdateOriginRequestPolicyResult.member(:origin_request_policy)
    UpdateOriginRequestPolicyResult.type = Types::UpdateOriginRequestPolicyResult
    UpdatePublicKeyRequest.add_member(:public_key_config, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicKeyConfig, name: "PublicKeyConfig", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "PublicKeyConfig"}))
    UpdatePublicKeyRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePublicKeyRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    UpdatePublicKeyRequest[:http_payload] = :public_key_config
    UpdatePublicKeyRequest[:http_payload_member] = UpdatePublicKeyRequest.member(:public_key_config)
    UpdatePublicKeyRequest.type = Types::UpdatePublicKeyRequest
    UpdatePublicKeyResult.add_member(:public_key, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicKey, name: "PublicKey", traits: {"smithy.api#httpPayload" => {}}))
    UpdatePublicKeyResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    UpdatePublicKeyResult[:http_payload] = :public_key
    UpdatePublicKeyResult[:http_payload_member] = UpdatePublicKeyResult.member(:public_key)
    UpdatePublicKeyResult.type = Types::UpdatePublicKeyResult
    UpdateRealtimeLogConfigRequest.add_member(:end_points, ::Smithy::Schema::Shapes::MemberShape.new(target: EndPointList, name: "EndPoints"))
    UpdateRealtimeLogConfigRequest.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldList, name: "Fields"))
    UpdateRealtimeLogConfigRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    UpdateRealtimeLogConfigRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ARN"))
    UpdateRealtimeLogConfigRequest.add_member(:sampling_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "SamplingRate"))
    UpdateRealtimeLogConfigRequest.type = Types::UpdateRealtimeLogConfigRequest
    UpdateRealtimeLogConfigResult.add_member(:realtime_log_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RealtimeLogConfig, name: "RealtimeLogConfig"))
    UpdateRealtimeLogConfigResult.type = Types::UpdateRealtimeLogConfigResult
    UpdateResponseHeadersPolicyRequest.add_member(:response_headers_policy_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseHeadersPolicyConfig, name: "ResponseHeadersPolicyConfig", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "ResponseHeadersPolicyConfig"}))
    UpdateResponseHeadersPolicyRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateResponseHeadersPolicyRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    UpdateResponseHeadersPolicyRequest[:http_payload] = :response_headers_policy_config
    UpdateResponseHeadersPolicyRequest[:http_payload_member] = UpdateResponseHeadersPolicyRequest.member(:response_headers_policy_config)
    UpdateResponseHeadersPolicyRequest.type = Types::UpdateResponseHeadersPolicyRequest
    UpdateResponseHeadersPolicyResult.add_member(:response_headers_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseHeadersPolicy, name: "ResponseHeadersPolicy", traits: {"smithy.api#httpPayload" => {}}))
    UpdateResponseHeadersPolicyResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    UpdateResponseHeadersPolicyResult[:http_payload] = :response_headers_policy
    UpdateResponseHeadersPolicyResult[:http_payload_member] = UpdateResponseHeadersPolicyResult.member(:response_headers_policy)
    UpdateResponseHeadersPolicyResult.type = Types::UpdateResponseHeadersPolicyResult
    UpdateStreamingDistributionRequest.add_member(:streaming_distribution_config, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingDistributionConfig, name: "StreamingDistributionConfig", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "StreamingDistributionConfig"}))
    UpdateStreamingDistributionRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateStreamingDistributionRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    UpdateStreamingDistributionRequest[:http_payload] = :streaming_distribution_config
    UpdateStreamingDistributionRequest[:http_payload_member] = UpdateStreamingDistributionRequest.member(:streaming_distribution_config)
    UpdateStreamingDistributionRequest.type = Types::UpdateStreamingDistributionRequest
    UpdateStreamingDistributionResult.add_member(:streaming_distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingDistribution, name: "StreamingDistribution", traits: {"smithy.api#httpPayload" => {}}))
    UpdateStreamingDistributionResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    UpdateStreamingDistributionResult[:http_payload] = :streaming_distribution
    UpdateStreamingDistributionResult[:http_payload_member] = UpdateStreamingDistributionResult.member(:streaming_distribution)
    UpdateStreamingDistributionResult.type = Types::UpdateStreamingDistributionResult
    UpdateVpcOriginRequest.add_member(:vpc_origin_endpoint_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcOriginEndpointConfig, name: "VpcOriginEndpointConfig", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "VpcOriginEndpointConfig"}))
    UpdateVpcOriginRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateVpcOriginRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match", "smithy.api#required" => {}}))
    UpdateVpcOriginRequest[:http_payload] = :vpc_origin_endpoint_config
    UpdateVpcOriginRequest[:http_payload_member] = UpdateVpcOriginRequest.member(:vpc_origin_endpoint_config)
    UpdateVpcOriginRequest.type = Types::UpdateVpcOriginRequest
    UpdateVpcOriginResult.add_member(:vpc_origin, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcOrigin, name: "VpcOrigin", traits: {"smithy.api#httpPayload" => {}}))
    UpdateVpcOriginResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    UpdateVpcOriginResult[:http_payload] = :vpc_origin
    UpdateVpcOriginResult[:http_payload_member] = UpdateVpcOriginResult.member(:vpc_origin)
    UpdateVpcOriginResult.type = Types::UpdateVpcOriginResult
    ValidationTokenDetail.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Domain", traits: {"smithy.api#required" => {}}))
    ValidationTokenDetail.add_member(:redirect_to, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RedirectTo"))
    ValidationTokenDetail.add_member(:redirect_from, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RedirectFrom"))
    ValidationTokenDetail.type = Types::ValidationTokenDetail
    ValidationTokenDetailList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationTokenDetail, name: "member")
    ValidationTokenHost.add_member(:cloud_front, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CloudFront", traits: {"smithy.api#enumValue" => "cloudfront"}))
    ValidationTokenHost.add_member(:self_hosted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SelfHosted", traits: {"smithy.api#enumValue" => "self-hosted"}))
    VerifyDnsConfigurationRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Domain"))
    VerifyDnsConfigurationRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Identifier", traits: {"smithy.api#required" => {}}))
    VerifyDnsConfigurationRequest.type = Types::VerifyDnsConfigurationRequest
    VerifyDnsConfigurationResult.add_member(:dns_configuration_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsConfigurationList, name: "DnsConfigurationList"))
    VerifyDnsConfigurationResult.type = Types::VerifyDnsConfigurationResult
    ViewerCertificate.add_member(:cloud_front_default_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CloudFrontDefaultCertificate"))
    ViewerCertificate.add_member(:iam_certificate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerCertificateId, name: "IAMCertificateId"))
    ViewerCertificate.add_member(:acm_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ACMCertificateArn"))
    ViewerCertificate.add_member(:ssl_support_method, ::Smithy::Schema::Shapes::MemberShape.new(target: SSLSupportMethod, name: "SSLSupportMethod"))
    ViewerCertificate.add_member(:minimum_protocol_version, ::Smithy::Schema::Shapes::MemberShape.new(target: MinimumProtocolVersion, name: "MinimumProtocolVersion"))
    ViewerCertificate.add_member(:certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Certificate", traits: {"smithy.api#deprecated" => {}}))
    ViewerCertificate.add_member(:certificate_source, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateSource, name: "CertificateSource", traits: {"smithy.api#deprecated" => {}}))
    ViewerCertificate.type = Types::ViewerCertificate
    ViewerProtocolPolicy.add_member(:allow_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "allow_all", traits: {"smithy.api#enumValue" => "allow-all"}))
    ViewerProtocolPolicy.add_member(:https_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "https_only", traits: {"smithy.api#enumValue" => "https-only"}))
    ViewerProtocolPolicy.add_member(:redirect_to_https, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "redirect_to_https", traits: {"smithy.api#enumValue" => "redirect-to-https"}))
    VpcOrigin.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#required" => {}}))
    VpcOrigin.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#required" => {}}))
    VpcOrigin.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status", traits: {"smithy.api#required" => {}}))
    VpcOrigin.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime", traits: {"smithy.api#required" => {}}))
    VpcOrigin.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime", traits: {"smithy.api#required" => {}}))
    VpcOrigin.add_member(:vpc_origin_endpoint_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcOriginEndpointConfig, name: "VpcOriginEndpointConfig", traits: {"smithy.api#required" => {}}))
    VpcOrigin.type = Types::VpcOrigin
    VpcOriginConfig.add_member(:vpc_origin_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcOriginId", traits: {"smithy.api#required" => {}}))
    VpcOriginConfig.add_member(:origin_read_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "OriginReadTimeout"))
    VpcOriginConfig.add_member(:origin_keepalive_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "OriginKeepaliveTimeout"))
    VpcOriginConfig.type = Types::VpcOriginConfig
    VpcOriginEndpointConfig.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    VpcOriginEndpointConfig.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#required" => {}}))
    VpcOriginEndpointConfig.add_member(:http_port, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "HTTPPort", traits: {"smithy.api#required" => {}}))
    VpcOriginEndpointConfig.add_member(:https_port, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "HTTPSPort", traits: {"smithy.api#required" => {}}))
    VpcOriginEndpointConfig.add_member(:origin_protocol_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginProtocolPolicy, name: "OriginProtocolPolicy", traits: {"smithy.api#required" => {}}))
    VpcOriginEndpointConfig.add_member(:origin_ssl_protocols, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginSslProtocols, name: "OriginSslProtocols"))
    VpcOriginEndpointConfig.type = Types::VpcOriginEndpointConfig
    VpcOriginList.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#required" => {}}))
    VpcOriginList.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker"))
    VpcOriginList.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxItems", traits: {"smithy.api#required" => {}}))
    VpcOriginList.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsTruncated", traits: {"smithy.api#required" => {}}))
    VpcOriginList.add_member(:quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Quantity", traits: {"smithy.api#required" => {}}))
    VpcOriginList.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcOriginSummaryList, name: "Items"))
    VpcOriginList.type = Types::VpcOriginList
    VpcOriginSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#required" => {}}))
    VpcOriginSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    VpcOriginSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status", traits: {"smithy.api#required" => {}}))
    VpcOriginSummary.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime", traits: {"smithy.api#required" => {}}))
    VpcOriginSummary.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime", traits: {"smithy.api#required" => {}}))
    VpcOriginSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#required" => {}}))
    VpcOriginSummary.add_member(:origin_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OriginEndpointArn", traits: {"smithy.api#required" => {}}))
    VpcOriginSummary.type = Types::VpcOriginSummary
    VpcOriginSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VpcOriginSummary, name: "member", traits: {"smithy.api#xmlName" => "VpcOriginSummary"})
    WebAclCustomization.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomizationActionType, name: "Action", traits: {"smithy.api#required" => {}}))
    WebAclCustomization.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    WebAclCustomization.type = Types::WebAclCustomization

    Cloudfront20200531 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.cloudfront#Cloudfront2020_05_31"
      service.name = "Cloudfront20200531"
      service.version = "2020-05-31"
      service.traits = {"aws.api#service" => {"sdkId" => "CloudFront", "arnNamespace" => "cloudfront", "cloudFormationName" => "CloudFront", "cloudTrailEventSource" => "cloudfront.amazonaws.com", "endpointPrefix" => "cloudfront"}, "aws.auth#sigv4" => {"name" => "cloudfront"}, "aws.endpoints#standardPartitionalEndpoints" => {"endpointPatternType" => "service_dnsSuffix", "partitionEndpointSpecialCases" => {"aws" => [{"endpoint" => "https://cloudfront.global.api.aws", "region" => "us-east-1", "dualStack" => true}, {"endpoint" => "https://cloudfront-fips.global.api.aws", "region" => "us-east-1", "dualStack" => true, "fips" => true}], "aws-cn" => [{"endpoint" => "https://cloudfront.cn-northwest-1.amazonaws.com.cn", "region" => "cn-northwest-1"}, {"endpoint" => "https://cloudfront-fips.cn-northwest-1.amazonaws.com.cn", "region" => "cn-northwest-1", "fips" => true}]}}, "aws.protocols#restXml" => {}, "smithy.api#title" => "Amazon CloudFront", "smithy.api#xmlNamespace" => {"uri" => "http://cloudfront.amazonaws.com/doc/2020-05-31/"}}
      service.add_operation(:associate_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#AssociateAlias"
        operation.name = "AssociateAlias"
        operation.input = AssociateAliasRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDenied
        operation.errors << IllegalUpdate
        operation.errors << InvalidArgument
        operation.errors << NoSuchDistribution
        operation.errors << TooManyDistributionCNAMEs
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/distribution/{TargetDistributionId}/associate-alias", "code" => 200}}
      end)
      service.add_operation(:associate_distribution_tenant_web_acl, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#AssociateDistributionTenantWebACL"
        operation.name = "AssociateDistributionTenantWebACL"
        operation.input = AssociateDistributionTenantWebACLRequest
        operation.output = AssociateDistributionTenantWebACLResult
        operation.errors << AccessDenied
        operation.errors << EntityNotFound
        operation.errors << InvalidArgument
        operation.errors << InvalidIfMatchVersion
        operation.errors << PreconditionFailed
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/distribution-tenant/{Id}/associate-web-acl", "code" => 200}}
      end)
      service.add_operation(:associate_distribution_web_acl, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#AssociateDistributionWebACL"
        operation.name = "AssociateDistributionWebACL"
        operation.input = AssociateDistributionWebACLRequest
        operation.output = AssociateDistributionWebACLResult
        operation.errors << AccessDenied
        operation.errors << EntityNotFound
        operation.errors << InvalidArgument
        operation.errors << InvalidIfMatchVersion
        operation.errors << PreconditionFailed
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/distribution/{Id}/associate-web-acl", "code" => 200}}
      end)
      service.add_operation(:copy_distribution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CopyDistribution"
        operation.name = "CopyDistribution"
        operation.input = CopyDistributionRequest
        operation.output = CopyDistributionResult
        operation.errors << AccessDenied
        operation.errors << CNAMEAlreadyExists
        operation.errors << DistributionAlreadyExists
        operation.errors << IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior
        operation.errors << InconsistentQuantities
        operation.errors << InvalidArgument
        operation.errors << InvalidDefaultRootObject
        operation.errors << InvalidErrorCode
        operation.errors << InvalidForwardCookies
        operation.errors << InvalidFunctionAssociation
        operation.errors << InvalidGeoRestrictionParameter
        operation.errors << InvalidHeadersForS3Origin
        operation.errors << InvalidIfMatchVersion
        operation.errors << InvalidLambdaFunctionAssociation
        operation.errors << InvalidLocationCode
        operation.errors << InvalidMinimumProtocolVersion
        operation.errors << InvalidOrigin
        operation.errors << InvalidOriginAccessControl
        operation.errors << InvalidOriginAccessIdentity
        operation.errors << InvalidOriginKeepaliveTimeout
        operation.errors << InvalidOriginReadTimeout
        operation.errors << InvalidProtocolSettings
        operation.errors << InvalidQueryStringParameters
        operation.errors << InvalidRelativePath
        operation.errors << InvalidRequiredProtocol
        operation.errors << InvalidResponseCode
        operation.errors << InvalidTTLOrder
        operation.errors << InvalidViewerCertificate
        operation.errors << InvalidWebACLId
        operation.errors << MissingBody
        operation.errors << NoSuchCachePolicy
        operation.errors << NoSuchDistribution
        operation.errors << NoSuchFieldLevelEncryptionConfig
        operation.errors << NoSuchOrigin
        operation.errors << NoSuchOriginRequestPolicy
        operation.errors << NoSuchRealtimeLogConfig
        operation.errors << NoSuchResponseHeadersPolicy
        operation.errors << PreconditionFailed
        operation.errors << RealtimeLogConfigOwnerMismatch
        operation.errors << TooManyCacheBehaviors
        operation.errors << TooManyCertificates
        operation.errors << TooManyCookieNamesInWhiteList
        operation.errors << TooManyDistributionCNAMEs
        operation.errors << TooManyDistributions
        operation.errors << TooManyDistributionsAssociatedToCachePolicy
        operation.errors << TooManyDistributionsAssociatedToFieldLevelEncryptionConfig
        operation.errors << TooManyDistributionsAssociatedToKeyGroup
        operation.errors << TooManyDistributionsAssociatedToOriginAccessControl
        operation.errors << TooManyDistributionsAssociatedToOriginRequestPolicy
        operation.errors << TooManyDistributionsAssociatedToResponseHeadersPolicy
        operation.errors << TooManyDistributionsWithFunctionAssociations
        operation.errors << TooManyDistributionsWithLambdaAssociations
        operation.errors << TooManyDistributionsWithSingleFunctionARN
        operation.errors << TooManyFunctionAssociations
        operation.errors << TooManyHeadersInForwardedValues
        operation.errors << TooManyKeyGroupsAssociatedToDistribution
        operation.errors << TooManyLambdaFunctionAssociations
        operation.errors << TooManyOriginCustomHeaders
        operation.errors << TooManyOriginGroupsPerDistribution
        operation.errors << TooManyOrigins
        operation.errors << TooManyQueryStringParameters
        operation.errors << TooManyTrustedSigners
        operation.errors << TrustedKeyGroupDoesNotExist
        operation.errors << TrustedSignerDoesNotExist
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/distribution/{PrimaryDistributionId}/copy", "code" => 201}}
      end)
      service.add_operation(:create_anycast_ip_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateAnycastIpList"
        operation.name = "CreateAnycastIpList"
        operation.input = CreateAnycastIpListRequest
        operation.output = CreateAnycastIpListResult
        operation.errors << AccessDenied
        operation.errors << EntityAlreadyExists
        operation.errors << EntityLimitExceeded
        operation.errors << InvalidArgument
        operation.errors << InvalidTagging
        operation.errors << UnsupportedOperation
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/anycast-ip-list", "code" => 202}}
      end)
      service.add_operation(:create_cache_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateCachePolicy"
        operation.name = "CreateCachePolicy"
        operation.input = CreateCachePolicyRequest
        operation.output = CreateCachePolicyResult
        operation.errors << AccessDenied
        operation.errors << CachePolicyAlreadyExists
        operation.errors << InconsistentQuantities
        operation.errors << InvalidArgument
        operation.errors << TooManyCachePolicies
        operation.errors << TooManyCookiesInCachePolicy
        operation.errors << TooManyHeadersInCachePolicy
        operation.errors << TooManyQueryStringsInCachePolicy
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/cache-policy", "code" => 201}}
      end)
      service.add_operation(:create_cloud_front_origin_access_identity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateCloudFrontOriginAccessIdentity"
        operation.name = "CreateCloudFrontOriginAccessIdentity"
        operation.input = CreateCloudFrontOriginAccessIdentityRequest
        operation.output = CreateCloudFrontOriginAccessIdentityResult
        operation.errors << CloudFrontOriginAccessIdentityAlreadyExists
        operation.errors << InconsistentQuantities
        operation.errors << InvalidArgument
        operation.errors << MissingBody
        operation.errors << TooManyCloudFrontOriginAccessIdentities
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/origin-access-identity/cloudfront", "code" => 201}}
      end)
      service.add_operation(:create_connection_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateConnectionGroup"
        operation.name = "CreateConnectionGroup"
        operation.input = CreateConnectionGroupRequest
        operation.output = CreateConnectionGroupResult
        operation.errors << AccessDenied
        operation.errors << EntityAlreadyExists
        operation.errors << EntityLimitExceeded
        operation.errors << EntityNotFound
        operation.errors << InvalidArgument
        operation.errors << InvalidTagging
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/connection-group", "code" => 201}}
      end)
      service.add_operation(:create_continuous_deployment_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateContinuousDeploymentPolicy"
        operation.name = "CreateContinuousDeploymentPolicy"
        operation.input = CreateContinuousDeploymentPolicyRequest
        operation.output = CreateContinuousDeploymentPolicyResult
        operation.errors << AccessDenied
        operation.errors << ContinuousDeploymentPolicyAlreadyExists
        operation.errors << InconsistentQuantities
        operation.errors << InvalidArgument
        operation.errors << StagingDistributionInUse
        operation.errors << TooManyContinuousDeploymentPolicies
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/continuous-deployment-policy", "code" => 201}}
      end)
      service.add_operation(:create_distribution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateDistribution"
        operation.name = "CreateDistribution"
        operation.input = CreateDistributionRequest
        operation.output = CreateDistributionResult
        operation.errors << AccessDenied
        operation.errors << CNAMEAlreadyExists
        operation.errors << ContinuousDeploymentPolicyInUse
        operation.errors << DistributionAlreadyExists
        operation.errors << EntityLimitExceeded
        operation.errors << EntityNotFound
        operation.errors << IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior
        operation.errors << IllegalOriginAccessConfiguration
        operation.errors << InconsistentQuantities
        operation.errors << InvalidArgument
        operation.errors << InvalidDefaultRootObject
        operation.errors << InvalidDomainNameForOriginAccessControl
        operation.errors << InvalidErrorCode
        operation.errors << InvalidForwardCookies
        operation.errors << InvalidFunctionAssociation
        operation.errors << InvalidGeoRestrictionParameter
        operation.errors << InvalidHeadersForS3Origin
        operation.errors << InvalidLambdaFunctionAssociation
        operation.errors << InvalidLocationCode
        operation.errors << InvalidMinimumProtocolVersion
        operation.errors << InvalidOrigin
        operation.errors << InvalidOriginAccessControl
        operation.errors << InvalidOriginAccessIdentity
        operation.errors << InvalidOriginKeepaliveTimeout
        operation.errors << InvalidOriginReadTimeout
        operation.errors << InvalidProtocolSettings
        operation.errors << InvalidQueryStringParameters
        operation.errors << InvalidRelativePath
        operation.errors << InvalidRequiredProtocol
        operation.errors << InvalidResponseCode
        operation.errors << InvalidTTLOrder
        operation.errors << InvalidViewerCertificate
        operation.errors << InvalidWebACLId
        operation.errors << MissingBody
        operation.errors << NoSuchCachePolicy
        operation.errors << NoSuchContinuousDeploymentPolicy
        operation.errors << NoSuchFieldLevelEncryptionConfig
        operation.errors << NoSuchOrigin
        operation.errors << NoSuchOriginRequestPolicy
        operation.errors << NoSuchRealtimeLogConfig
        operation.errors << NoSuchResponseHeadersPolicy
        operation.errors << RealtimeLogConfigOwnerMismatch
        operation.errors << TooManyCacheBehaviors
        operation.errors << TooManyCertificates
        operation.errors << TooManyCookieNamesInWhiteList
        operation.errors << TooManyDistributionCNAMEs
        operation.errors << TooManyDistributions
        operation.errors << TooManyDistributionsAssociatedToCachePolicy
        operation.errors << TooManyDistributionsAssociatedToFieldLevelEncryptionConfig
        operation.errors << TooManyDistributionsAssociatedToKeyGroup
        operation.errors << TooManyDistributionsAssociatedToOriginAccessControl
        operation.errors << TooManyDistributionsAssociatedToOriginRequestPolicy
        operation.errors << TooManyDistributionsAssociatedToResponseHeadersPolicy
        operation.errors << TooManyDistributionsWithFunctionAssociations
        operation.errors << TooManyDistributionsWithLambdaAssociations
        operation.errors << TooManyDistributionsWithSingleFunctionARN
        operation.errors << TooManyFunctionAssociations
        operation.errors << TooManyHeadersInForwardedValues
        operation.errors << TooManyKeyGroupsAssociatedToDistribution
        operation.errors << TooManyLambdaFunctionAssociations
        operation.errors << TooManyOriginCustomHeaders
        operation.errors << TooManyOriginGroupsPerDistribution
        operation.errors << TooManyOrigins
        operation.errors << TooManyQueryStringParameters
        operation.errors << TooManyTrustedSigners
        operation.errors << TrustedKeyGroupDoesNotExist
        operation.errors << TrustedSignerDoesNotExist
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/distribution", "code" => 201}}
      end)
      service.add_operation(:create_distribution_tenant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateDistributionTenant"
        operation.name = "CreateDistributionTenant"
        operation.input = CreateDistributionTenantRequest
        operation.output = CreateDistributionTenantResult
        operation.errors << AccessDenied
        operation.errors << CNAMEAlreadyExists
        operation.errors << EntityAlreadyExists
        operation.errors << EntityLimitExceeded
        operation.errors << EntityNotFound
        operation.errors << InvalidArgument
        operation.errors << InvalidAssociation
        operation.errors << InvalidTagging
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/distribution-tenant", "code" => 201}}
      end)
      service.add_operation(:create_distribution_with_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateDistributionWithTags"
        operation.name = "CreateDistributionWithTags"
        operation.input = CreateDistributionWithTagsRequest
        operation.output = CreateDistributionWithTagsResult
        operation.errors << AccessDenied
        operation.errors << CNAMEAlreadyExists
        operation.errors << ContinuousDeploymentPolicyInUse
        operation.errors << DistributionAlreadyExists
        operation.errors << EntityNotFound
        operation.errors << IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior
        operation.errors << IllegalOriginAccessConfiguration
        operation.errors << InconsistentQuantities
        operation.errors << InvalidArgument
        operation.errors << InvalidDefaultRootObject
        operation.errors << InvalidDomainNameForOriginAccessControl
        operation.errors << InvalidErrorCode
        operation.errors << InvalidForwardCookies
        operation.errors << InvalidFunctionAssociation
        operation.errors << InvalidGeoRestrictionParameter
        operation.errors << InvalidHeadersForS3Origin
        operation.errors << InvalidLambdaFunctionAssociation
        operation.errors << InvalidLocationCode
        operation.errors << InvalidMinimumProtocolVersion
        operation.errors << InvalidOrigin
        operation.errors << InvalidOriginAccessControl
        operation.errors << InvalidOriginAccessIdentity
        operation.errors << InvalidOriginKeepaliveTimeout
        operation.errors << InvalidOriginReadTimeout
        operation.errors << InvalidProtocolSettings
        operation.errors << InvalidQueryStringParameters
        operation.errors << InvalidRelativePath
        operation.errors << InvalidRequiredProtocol
        operation.errors << InvalidResponseCode
        operation.errors << InvalidTagging
        operation.errors << InvalidTTLOrder
        operation.errors << InvalidViewerCertificate
        operation.errors << InvalidWebACLId
        operation.errors << MissingBody
        operation.errors << NoSuchCachePolicy
        operation.errors << NoSuchContinuousDeploymentPolicy
        operation.errors << NoSuchFieldLevelEncryptionConfig
        operation.errors << NoSuchOrigin
        operation.errors << NoSuchOriginRequestPolicy
        operation.errors << NoSuchRealtimeLogConfig
        operation.errors << NoSuchResponseHeadersPolicy
        operation.errors << RealtimeLogConfigOwnerMismatch
        operation.errors << TooManyCacheBehaviors
        operation.errors << TooManyCertificates
        operation.errors << TooManyCookieNamesInWhiteList
        operation.errors << TooManyDistributionCNAMEs
        operation.errors << TooManyDistributions
        operation.errors << TooManyDistributionsAssociatedToCachePolicy
        operation.errors << TooManyDistributionsAssociatedToFieldLevelEncryptionConfig
        operation.errors << TooManyDistributionsAssociatedToKeyGroup
        operation.errors << TooManyDistributionsAssociatedToOriginAccessControl
        operation.errors << TooManyDistributionsAssociatedToOriginRequestPolicy
        operation.errors << TooManyDistributionsAssociatedToResponseHeadersPolicy
        operation.errors << TooManyDistributionsWithFunctionAssociations
        operation.errors << TooManyDistributionsWithLambdaAssociations
        operation.errors << TooManyDistributionsWithSingleFunctionARN
        operation.errors << TooManyFunctionAssociations
        operation.errors << TooManyHeadersInForwardedValues
        operation.errors << TooManyKeyGroupsAssociatedToDistribution
        operation.errors << TooManyLambdaFunctionAssociations
        operation.errors << TooManyOriginCustomHeaders
        operation.errors << TooManyOriginGroupsPerDistribution
        operation.errors << TooManyOrigins
        operation.errors << TooManyQueryStringParameters
        operation.errors << TooManyTrustedSigners
        operation.errors << TrustedKeyGroupDoesNotExist
        operation.errors << TrustedSignerDoesNotExist
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/distribution?WithTags", "code" => 201}}
      end)
      service.add_operation(:create_field_level_encryption_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateFieldLevelEncryptionConfig"
        operation.name = "CreateFieldLevelEncryptionConfig"
        operation.input = CreateFieldLevelEncryptionConfigRequest
        operation.output = CreateFieldLevelEncryptionConfigResult
        operation.errors << FieldLevelEncryptionConfigAlreadyExists
        operation.errors << InconsistentQuantities
        operation.errors << InvalidArgument
        operation.errors << NoSuchFieldLevelEncryptionProfile
        operation.errors << QueryArgProfileEmpty
        operation.errors << TooManyFieldLevelEncryptionConfigs
        operation.errors << TooManyFieldLevelEncryptionContentTypeProfiles
        operation.errors << TooManyFieldLevelEncryptionQueryArgProfiles
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/field-level-encryption", "code" => 201}}
      end)
      service.add_operation(:create_field_level_encryption_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateFieldLevelEncryptionProfile"
        operation.name = "CreateFieldLevelEncryptionProfile"
        operation.input = CreateFieldLevelEncryptionProfileRequest
        operation.output = CreateFieldLevelEncryptionProfileResult
        operation.errors << FieldLevelEncryptionProfileAlreadyExists
        operation.errors << FieldLevelEncryptionProfileSizeExceeded
        operation.errors << InconsistentQuantities
        operation.errors << InvalidArgument
        operation.errors << NoSuchPublicKey
        operation.errors << TooManyFieldLevelEncryptionEncryptionEntities
        operation.errors << TooManyFieldLevelEncryptionFieldPatterns
        operation.errors << TooManyFieldLevelEncryptionProfiles
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/field-level-encryption-profile", "code" => 201}}
      end)
      service.add_operation(:create_function, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateFunction"
        operation.name = "CreateFunction"
        operation.input = CreateFunctionRequest
        operation.output = CreateFunctionResult
        operation.errors << FunctionAlreadyExists
        operation.errors << FunctionSizeLimitExceeded
        operation.errors << InvalidArgument
        operation.errors << TooManyFunctions
        operation.errors << UnsupportedOperation
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/function", "code" => 201}}
      end)
      service.add_operation(:create_invalidation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateInvalidation"
        operation.name = "CreateInvalidation"
        operation.input = CreateInvalidationRequest
        operation.output = CreateInvalidationResult
        operation.errors << AccessDenied
        operation.errors << BatchTooLarge
        operation.errors << InconsistentQuantities
        operation.errors << InvalidArgument
        operation.errors << MissingBody
        operation.errors << NoSuchDistribution
        operation.errors << TooManyInvalidationsInProgress
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/distribution/{DistributionId}/invalidation", "code" => 201}}
      end)
      service.add_operation(:create_invalidation_for_distribution_tenant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateInvalidationForDistributionTenant"
        operation.name = "CreateInvalidationForDistributionTenant"
        operation.input = CreateInvalidationForDistributionTenantRequest
        operation.output = CreateInvalidationForDistributionTenantResult
        operation.errors << AccessDenied
        operation.errors << BatchTooLarge
        operation.errors << EntityNotFound
        operation.errors << InconsistentQuantities
        operation.errors << InvalidArgument
        operation.errors << MissingBody
        operation.errors << TooManyInvalidationsInProgress
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/distribution-tenant/{Id}/invalidation", "code" => 201}}
      end)
      service.add_operation(:create_key_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateKeyGroup"
        operation.name = "CreateKeyGroup"
        operation.input = CreateKeyGroupRequest
        operation.output = CreateKeyGroupResult
        operation.errors << InvalidArgument
        operation.errors << KeyGroupAlreadyExists
        operation.errors << TooManyKeyGroups
        operation.errors << TooManyPublicKeysInKeyGroup
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/key-group", "code" => 201}}
      end)
      service.add_operation(:create_key_value_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateKeyValueStore"
        operation.name = "CreateKeyValueStore"
        operation.input = CreateKeyValueStoreRequest
        operation.output = CreateKeyValueStoreResult
        operation.errors << AccessDenied
        operation.errors << EntityAlreadyExists
        operation.errors << EntityLimitExceeded
        operation.errors << EntitySizeLimitExceeded
        operation.errors << InvalidArgument
        operation.errors << UnsupportedOperation
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/key-value-store", "code" => 201}}
      end)
      service.add_operation(:create_monitoring_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateMonitoringSubscription"
        operation.name = "CreateMonitoringSubscription"
        operation.input = CreateMonitoringSubscriptionRequest
        operation.output = CreateMonitoringSubscriptionResult
        operation.errors << AccessDenied
        operation.errors << MonitoringSubscriptionAlreadyExists
        operation.errors << NoSuchDistribution
        operation.errors << UnsupportedOperation
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/distributions/{DistributionId}/monitoring-subscription", "code" => 200}}
      end)
      service.add_operation(:create_origin_access_control, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateOriginAccessControl"
        operation.name = "CreateOriginAccessControl"
        operation.input = CreateOriginAccessControlRequest
        operation.output = CreateOriginAccessControlResult
        operation.errors << InvalidArgument
        operation.errors << OriginAccessControlAlreadyExists
        operation.errors << TooManyOriginAccessControls
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/origin-access-control", "code" => 201}}
      end)
      service.add_operation(:create_origin_request_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateOriginRequestPolicy"
        operation.name = "CreateOriginRequestPolicy"
        operation.input = CreateOriginRequestPolicyRequest
        operation.output = CreateOriginRequestPolicyResult
        operation.errors << AccessDenied
        operation.errors << InconsistentQuantities
        operation.errors << InvalidArgument
        operation.errors << OriginRequestPolicyAlreadyExists
        operation.errors << TooManyCookiesInOriginRequestPolicy
        operation.errors << TooManyHeadersInOriginRequestPolicy
        operation.errors << TooManyOriginRequestPolicies
        operation.errors << TooManyQueryStringsInOriginRequestPolicy
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/origin-request-policy", "code" => 201}}
      end)
      service.add_operation(:create_public_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreatePublicKey"
        operation.name = "CreatePublicKey"
        operation.input = CreatePublicKeyRequest
        operation.output = CreatePublicKeyResult
        operation.errors << InvalidArgument
        operation.errors << PublicKeyAlreadyExists
        operation.errors << TooManyPublicKeys
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/public-key", "code" => 201}}
      end)
      service.add_operation(:create_realtime_log_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateRealtimeLogConfig"
        operation.name = "CreateRealtimeLogConfig"
        operation.input = CreateRealtimeLogConfigRequest
        operation.output = CreateRealtimeLogConfigResult
        operation.errors << AccessDenied
        operation.errors << InvalidArgument
        operation.errors << RealtimeLogConfigAlreadyExists
        operation.errors << TooManyRealtimeLogConfigs
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/realtime-log-config", "code" => 201}}
      end)
      service.add_operation(:create_response_headers_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateResponseHeadersPolicy"
        operation.name = "CreateResponseHeadersPolicy"
        operation.input = CreateResponseHeadersPolicyRequest
        operation.output = CreateResponseHeadersPolicyResult
        operation.errors << AccessDenied
        operation.errors << InconsistentQuantities
        operation.errors << InvalidArgument
        operation.errors << ResponseHeadersPolicyAlreadyExists
        operation.errors << TooLongCSPInResponseHeadersPolicy
        operation.errors << TooManyCustomHeadersInResponseHeadersPolicy
        operation.errors << TooManyRemoveHeadersInResponseHeadersPolicy
        operation.errors << TooManyResponseHeadersPolicies
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/response-headers-policy", "code" => 201}}
      end)
      service.add_operation(:create_streaming_distribution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateStreamingDistribution"
        operation.name = "CreateStreamingDistribution"
        operation.input = CreateStreamingDistributionRequest
        operation.output = CreateStreamingDistributionResult
        operation.errors << AccessDenied
        operation.errors << CNAMEAlreadyExists
        operation.errors << InconsistentQuantities
        operation.errors << InvalidArgument
        operation.errors << InvalidOrigin
        operation.errors << InvalidOriginAccessControl
        operation.errors << InvalidOriginAccessIdentity
        operation.errors << MissingBody
        operation.errors << StreamingDistributionAlreadyExists
        operation.errors << TooManyStreamingDistributionCNAMEs
        operation.errors << TooManyStreamingDistributions
        operation.errors << TooManyTrustedSigners
        operation.errors << TrustedSignerDoesNotExist
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/streaming-distribution", "code" => 201}}
      end)
      service.add_operation(:create_streaming_distribution_with_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateStreamingDistributionWithTags"
        operation.name = "CreateStreamingDistributionWithTags"
        operation.input = CreateStreamingDistributionWithTagsRequest
        operation.output = CreateStreamingDistributionWithTagsResult
        operation.errors << AccessDenied
        operation.errors << CNAMEAlreadyExists
        operation.errors << InconsistentQuantities
        operation.errors << InvalidArgument
        operation.errors << InvalidOrigin
        operation.errors << InvalidOriginAccessControl
        operation.errors << InvalidOriginAccessIdentity
        operation.errors << InvalidTagging
        operation.errors << MissingBody
        operation.errors << StreamingDistributionAlreadyExists
        operation.errors << TooManyStreamingDistributionCNAMEs
        operation.errors << TooManyStreamingDistributions
        operation.errors << TooManyTrustedSigners
        operation.errors << TrustedSignerDoesNotExist
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/streaming-distribution?WithTags", "code" => 201}}
      end)
      service.add_operation(:create_vpc_origin, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#CreateVpcOrigin"
        operation.name = "CreateVpcOrigin"
        operation.input = CreateVpcOriginRequest
        operation.output = CreateVpcOriginResult
        operation.errors << AccessDenied
        operation.errors << EntityAlreadyExists
        operation.errors << EntityLimitExceeded
        operation.errors << InconsistentQuantities
        operation.errors << InvalidArgument
        operation.errors << InvalidTagging
        operation.errors << UnsupportedOperation
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/vpc-origin", "code" => 202}}
      end)
      service.add_operation(:delete_anycast_ip_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeleteAnycastIpList"
        operation.name = "DeleteAnycastIpList"
        operation.input = DeleteAnycastIpListRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDenied
        operation.errors << CannotDeleteEntityWhileInUse
        operation.errors << EntityNotFound
        operation.errors << IllegalDelete
        operation.errors << InvalidArgument
        operation.errors << InvalidIfMatchVersion
        operation.errors << PreconditionFailed
        operation.errors << UnsupportedOperation
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-05-31/anycast-ip-list/{Id}", "code" => 204}}
      end)
      service.add_operation(:delete_cache_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeleteCachePolicy"
        operation.name = "DeleteCachePolicy"
        operation.input = DeleteCachePolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDenied
        operation.errors << CachePolicyInUse
        operation.errors << IllegalDelete
        operation.errors << InvalidIfMatchVersion
        operation.errors << NoSuchCachePolicy
        operation.errors << PreconditionFailed
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-05-31/cache-policy/{Id}", "code" => 204}}
      end)
      service.add_operation(:delete_cloud_front_origin_access_identity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeleteCloudFrontOriginAccessIdentity"
        operation.name = "DeleteCloudFrontOriginAccessIdentity"
        operation.input = DeleteCloudFrontOriginAccessIdentityRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDenied
        operation.errors << CloudFrontOriginAccessIdentityInUse
        operation.errors << InvalidIfMatchVersion
        operation.errors << NoSuchCloudFrontOriginAccessIdentity
        operation.errors << PreconditionFailed
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-05-31/origin-access-identity/cloudfront/{Id}", "code" => 204}}
      end)
      service.add_operation(:delete_connection_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeleteConnectionGroup"
        operation.name = "DeleteConnectionGroup"
        operation.input = DeleteConnectionGroupRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDenied
        operation.errors << CannotDeleteEntityWhileInUse
        operation.errors << EntityNotFound
        operation.errors << InvalidIfMatchVersion
        operation.errors << PreconditionFailed
        operation.errors << ResourceNotDisabled
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-05-31/connection-group/{Id}", "code" => 204}}
      end)
      service.add_operation(:delete_continuous_deployment_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeleteContinuousDeploymentPolicy"
        operation.name = "DeleteContinuousDeploymentPolicy"
        operation.input = DeleteContinuousDeploymentPolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDenied
        operation.errors << ContinuousDeploymentPolicyInUse
        operation.errors << InvalidArgument
        operation.errors << InvalidIfMatchVersion
        operation.errors << NoSuchContinuousDeploymentPolicy
        operation.errors << PreconditionFailed
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-05-31/continuous-deployment-policy/{Id}", "code" => 204}}
      end)
      service.add_operation(:delete_distribution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeleteDistribution"
        operation.name = "DeleteDistribution"
        operation.input = DeleteDistributionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDenied
        operation.errors << DistributionNotDisabled
        operation.errors << InvalidIfMatchVersion
        operation.errors << NoSuchDistribution
        operation.errors << PreconditionFailed
        operation.errors << ResourceInUse
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-05-31/distribution/{Id}", "code" => 204}}
      end)
      service.add_operation(:delete_distribution_tenant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeleteDistributionTenant"
        operation.name = "DeleteDistributionTenant"
        operation.input = DeleteDistributionTenantRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDenied
        operation.errors << EntityNotFound
        operation.errors << InvalidIfMatchVersion
        operation.errors << PreconditionFailed
        operation.errors << ResourceNotDisabled
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-05-31/distribution-tenant/{Id}", "code" => 204}}
      end)
      service.add_operation(:delete_field_level_encryption_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeleteFieldLevelEncryptionConfig"
        operation.name = "DeleteFieldLevelEncryptionConfig"
        operation.input = DeleteFieldLevelEncryptionConfigRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDenied
        operation.errors << FieldLevelEncryptionConfigInUse
        operation.errors << InvalidIfMatchVersion
        operation.errors << NoSuchFieldLevelEncryptionConfig
        operation.errors << PreconditionFailed
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-05-31/field-level-encryption/{Id}", "code" => 204}}
      end)
      service.add_operation(:delete_field_level_encryption_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeleteFieldLevelEncryptionProfile"
        operation.name = "DeleteFieldLevelEncryptionProfile"
        operation.input = DeleteFieldLevelEncryptionProfileRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDenied
        operation.errors << FieldLevelEncryptionProfileInUse
        operation.errors << InvalidIfMatchVersion
        operation.errors << NoSuchFieldLevelEncryptionProfile
        operation.errors << PreconditionFailed
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-05-31/field-level-encryption-profile/{Id}", "code" => 204}}
      end)
      service.add_operation(:delete_function, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeleteFunction"
        operation.name = "DeleteFunction"
        operation.input = DeleteFunctionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << FunctionInUse
        operation.errors << InvalidIfMatchVersion
        operation.errors << NoSuchFunctionExists
        operation.errors << PreconditionFailed
        operation.errors << UnsupportedOperation
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-05-31/function/{Name}", "code" => 204}}
      end)
      service.add_operation(:delete_key_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeleteKeyGroup"
        operation.name = "DeleteKeyGroup"
        operation.input = DeleteKeyGroupRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidIfMatchVersion
        operation.errors << NoSuchResource
        operation.errors << PreconditionFailed
        operation.errors << ResourceInUse
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-05-31/key-group/{Id}", "code" => 204}}
      end)
      service.add_operation(:delete_key_value_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeleteKeyValueStore"
        operation.name = "DeleteKeyValueStore"
        operation.input = DeleteKeyValueStoreRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDenied
        operation.errors << CannotDeleteEntityWhileInUse
        operation.errors << EntityNotFound
        operation.errors << InvalidIfMatchVersion
        operation.errors << PreconditionFailed
        operation.errors << UnsupportedOperation
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-05-31/key-value-store/{Name}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_monitoring_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeleteMonitoringSubscription"
        operation.name = "DeleteMonitoringSubscription"
        operation.input = DeleteMonitoringSubscriptionRequest
        operation.output = DeleteMonitoringSubscriptionResult
        operation.errors << AccessDenied
        operation.errors << NoSuchDistribution
        operation.errors << NoSuchMonitoringSubscription
        operation.errors << UnsupportedOperation
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-05-31/distributions/{DistributionId}/monitoring-subscription", "code" => 200}}
      end)
      service.add_operation(:delete_origin_access_control, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeleteOriginAccessControl"
        operation.name = "DeleteOriginAccessControl"
        operation.input = DeleteOriginAccessControlRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDenied
        operation.errors << InvalidIfMatchVersion
        operation.errors << NoSuchOriginAccessControl
        operation.errors << OriginAccessControlInUse
        operation.errors << PreconditionFailed
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-05-31/origin-access-control/{Id}", "code" => 204}}
      end)
      service.add_operation(:delete_origin_request_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeleteOriginRequestPolicy"
        operation.name = "DeleteOriginRequestPolicy"
        operation.input = DeleteOriginRequestPolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDenied
        operation.errors << IllegalDelete
        operation.errors << InvalidIfMatchVersion
        operation.errors << NoSuchOriginRequestPolicy
        operation.errors << OriginRequestPolicyInUse
        operation.errors << PreconditionFailed
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-05-31/origin-request-policy/{Id}", "code" => 204}}
      end)
      service.add_operation(:delete_public_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeletePublicKey"
        operation.name = "DeletePublicKey"
        operation.input = DeletePublicKeyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDenied
        operation.errors << InvalidIfMatchVersion
        operation.errors << NoSuchPublicKey
        operation.errors << PreconditionFailed
        operation.errors << PublicKeyInUse
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-05-31/public-key/{Id}", "code" => 204}}
      end)
      service.add_operation(:delete_realtime_log_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeleteRealtimeLogConfig"
        operation.name = "DeleteRealtimeLogConfig"
        operation.input = DeleteRealtimeLogConfigRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDenied
        operation.errors << InvalidArgument
        operation.errors << NoSuchRealtimeLogConfig
        operation.errors << RealtimeLogConfigInUse
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/delete-realtime-log-config", "code" => 204}}
      end)
      service.add_operation(:delete_response_headers_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeleteResponseHeadersPolicy"
        operation.name = "DeleteResponseHeadersPolicy"
        operation.input = DeleteResponseHeadersPolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDenied
        operation.errors << IllegalDelete
        operation.errors << InvalidIfMatchVersion
        operation.errors << NoSuchResponseHeadersPolicy
        operation.errors << PreconditionFailed
        operation.errors << ResponseHeadersPolicyInUse
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-05-31/response-headers-policy/{Id}", "code" => 204}}
      end)
      service.add_operation(:delete_streaming_distribution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeleteStreamingDistribution"
        operation.name = "DeleteStreamingDistribution"
        operation.input = DeleteStreamingDistributionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDenied
        operation.errors << InvalidIfMatchVersion
        operation.errors << NoSuchStreamingDistribution
        operation.errors << PreconditionFailed
        operation.errors << StreamingDistributionNotDisabled
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-05-31/streaming-distribution/{Id}", "code" => 204}}
      end)
      service.add_operation(:delete_vpc_origin, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DeleteVpcOrigin"
        operation.name = "DeleteVpcOrigin"
        operation.input = DeleteVpcOriginRequest
        operation.output = DeleteVpcOriginResult
        operation.errors << AccessDenied
        operation.errors << CannotDeleteEntityWhileInUse
        operation.errors << EntityNotFound
        operation.errors << IllegalDelete
        operation.errors << InvalidArgument
        operation.errors << InvalidIfMatchVersion
        operation.errors << PreconditionFailed
        operation.errors << UnsupportedOperation
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-05-31/vpc-origin/{Id}", "code" => 202}}
      end)
      service.add_operation(:describe_function, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DescribeFunction"
        operation.name = "DescribeFunction"
        operation.input = DescribeFunctionRequest
        operation.output = DescribeFunctionResult
        operation.errors << NoSuchFunctionExists
        operation.errors << UnsupportedOperation
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/function/{Name}/describe", "code" => 200}}
      end)
      service.add_operation(:describe_key_value_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DescribeKeyValueStore"
        operation.name = "DescribeKeyValueStore"
        operation.input = DescribeKeyValueStoreRequest
        operation.output = DescribeKeyValueStoreResult
        operation.errors << AccessDenied
        operation.errors << EntityNotFound
        operation.errors << InvalidArgument
        operation.errors << UnsupportedOperation
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/key-value-store/{Name}", "code" => 200}}
      end)
      service.add_operation(:disassociate_distribution_tenant_web_acl, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DisassociateDistributionTenantWebACL"
        operation.name = "DisassociateDistributionTenantWebACL"
        operation.input = DisassociateDistributionTenantWebACLRequest
        operation.output = DisassociateDistributionTenantWebACLResult
        operation.errors << AccessDenied
        operation.errors << EntityNotFound
        operation.errors << InvalidArgument
        operation.errors << InvalidIfMatchVersion
        operation.errors << PreconditionFailed
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/distribution-tenant/{Id}/disassociate-web-acl", "code" => 200}}
      end)
      service.add_operation(:disassociate_distribution_web_acl, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#DisassociateDistributionWebACL"
        operation.name = "DisassociateDistributionWebACL"
        operation.input = DisassociateDistributionWebACLRequest
        operation.output = DisassociateDistributionWebACLResult
        operation.errors << AccessDenied
        operation.errors << EntityNotFound
        operation.errors << InvalidArgument
        operation.errors << InvalidIfMatchVersion
        operation.errors << PreconditionFailed
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/distribution/{Id}/disassociate-web-acl", "code" => 200}}
      end)
      service.add_operation(:get_anycast_ip_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetAnycastIpList"
        operation.name = "GetAnycastIpList"
        operation.input = GetAnycastIpListRequest
        operation.output = GetAnycastIpListResult
        operation.errors << AccessDenied
        operation.errors << EntityNotFound
        operation.errors << InvalidArgument
        operation.errors << UnsupportedOperation
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/anycast-ip-list/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_cache_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetCachePolicy"
        operation.name = "GetCachePolicy"
        operation.input = GetCachePolicyRequest
        operation.output = GetCachePolicyResult
        operation.errors << AccessDenied
        operation.errors << NoSuchCachePolicy
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/cache-policy/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_cache_policy_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetCachePolicyConfig"
        operation.name = "GetCachePolicyConfig"
        operation.input = GetCachePolicyConfigRequest
        operation.output = GetCachePolicyConfigResult
        operation.errors << AccessDenied
        operation.errors << NoSuchCachePolicy
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/cache-policy/{Id}/config", "code" => 200}}
      end)
      service.add_operation(:get_cloud_front_origin_access_identity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetCloudFrontOriginAccessIdentity"
        operation.name = "GetCloudFrontOriginAccessIdentity"
        operation.input = GetCloudFrontOriginAccessIdentityRequest
        operation.output = GetCloudFrontOriginAccessIdentityResult
        operation.errors << AccessDenied
        operation.errors << NoSuchCloudFrontOriginAccessIdentity
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/origin-access-identity/cloudfront/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_cloud_front_origin_access_identity_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetCloudFrontOriginAccessIdentityConfig"
        operation.name = "GetCloudFrontOriginAccessIdentityConfig"
        operation.input = GetCloudFrontOriginAccessIdentityConfigRequest
        operation.output = GetCloudFrontOriginAccessIdentityConfigResult
        operation.errors << AccessDenied
        operation.errors << NoSuchCloudFrontOriginAccessIdentity
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/origin-access-identity/cloudfront/{Id}/config", "code" => 200}}
      end)
      service.add_operation(:get_connection_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetConnectionGroup"
        operation.name = "GetConnectionGroup"
        operation.input = GetConnectionGroupRequest
        operation.output = GetConnectionGroupResult
        operation.errors << AccessDenied
        operation.errors << EntityNotFound
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/connection-group/{Identifier}", "code" => 200}}
      end)
      service.add_operation(:get_connection_group_by_routing_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetConnectionGroupByRoutingEndpoint"
        operation.name = "GetConnectionGroupByRoutingEndpoint"
        operation.input = GetConnectionGroupByRoutingEndpointRequest
        operation.output = GetConnectionGroupByRoutingEndpointResult
        operation.errors << AccessDenied
        operation.errors << EntityNotFound
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/connection-group", "code" => 200}}
      end)
      service.add_operation(:get_continuous_deployment_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetContinuousDeploymentPolicy"
        operation.name = "GetContinuousDeploymentPolicy"
        operation.input = GetContinuousDeploymentPolicyRequest
        operation.output = GetContinuousDeploymentPolicyResult
        operation.errors << AccessDenied
        operation.errors << NoSuchContinuousDeploymentPolicy
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/continuous-deployment-policy/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_continuous_deployment_policy_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetContinuousDeploymentPolicyConfig"
        operation.name = "GetContinuousDeploymentPolicyConfig"
        operation.input = GetContinuousDeploymentPolicyConfigRequest
        operation.output = GetContinuousDeploymentPolicyConfigResult
        operation.errors << AccessDenied
        operation.errors << NoSuchContinuousDeploymentPolicy
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/continuous-deployment-policy/{Id}/config", "code" => 200}}
      end)
      service.add_operation(:get_distribution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetDistribution"
        operation.name = "GetDistribution"
        operation.input = GetDistributionRequest
        operation.output = GetDistributionResult
        operation.errors << AccessDenied
        operation.errors << NoSuchDistribution
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/distribution/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_distribution_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetDistributionConfig"
        operation.name = "GetDistributionConfig"
        operation.input = GetDistributionConfigRequest
        operation.output = GetDistributionConfigResult
        operation.errors << AccessDenied
        operation.errors << NoSuchDistribution
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/distribution/{Id}/config", "code" => 200}}
      end)
      service.add_operation(:get_distribution_tenant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetDistributionTenant"
        operation.name = "GetDistributionTenant"
        operation.input = GetDistributionTenantRequest
        operation.output = GetDistributionTenantResult
        operation.errors << AccessDenied
        operation.errors << EntityNotFound
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/distribution-tenant/{Identifier}", "code" => 200}}
      end)
      service.add_operation(:get_distribution_tenant_by_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetDistributionTenantByDomain"
        operation.name = "GetDistributionTenantByDomain"
        operation.input = GetDistributionTenantByDomainRequest
        operation.output = GetDistributionTenantByDomainResult
        operation.errors << AccessDenied
        operation.errors << EntityNotFound
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/distribution-tenant", "code" => 200}}
      end)
      service.add_operation(:get_field_level_encryption, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetFieldLevelEncryption"
        operation.name = "GetFieldLevelEncryption"
        operation.input = GetFieldLevelEncryptionRequest
        operation.output = GetFieldLevelEncryptionResult
        operation.errors << AccessDenied
        operation.errors << NoSuchFieldLevelEncryptionConfig
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/field-level-encryption/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_field_level_encryption_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetFieldLevelEncryptionConfig"
        operation.name = "GetFieldLevelEncryptionConfig"
        operation.input = GetFieldLevelEncryptionConfigRequest
        operation.output = GetFieldLevelEncryptionConfigResult
        operation.errors << AccessDenied
        operation.errors << NoSuchFieldLevelEncryptionConfig
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/field-level-encryption/{Id}/config", "code" => 200}}
      end)
      service.add_operation(:get_field_level_encryption_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetFieldLevelEncryptionProfile"
        operation.name = "GetFieldLevelEncryptionProfile"
        operation.input = GetFieldLevelEncryptionProfileRequest
        operation.output = GetFieldLevelEncryptionProfileResult
        operation.errors << AccessDenied
        operation.errors << NoSuchFieldLevelEncryptionProfile
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/field-level-encryption-profile/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_field_level_encryption_profile_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetFieldLevelEncryptionProfileConfig"
        operation.name = "GetFieldLevelEncryptionProfileConfig"
        operation.input = GetFieldLevelEncryptionProfileConfigRequest
        operation.output = GetFieldLevelEncryptionProfileConfigResult
        operation.errors << AccessDenied
        operation.errors << NoSuchFieldLevelEncryptionProfile
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/field-level-encryption-profile/{Id}/config", "code" => 200}}
      end)
      service.add_operation(:get_function, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetFunction"
        operation.name = "GetFunction"
        operation.input = GetFunctionRequest
        operation.output = GetFunctionResult
        operation.errors << NoSuchFunctionExists
        operation.errors << UnsupportedOperation
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/function/{Name}", "code" => 200}}
      end)
      service.add_operation(:get_invalidation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetInvalidation"
        operation.name = "GetInvalidation"
        operation.input = GetInvalidationRequest
        operation.output = GetInvalidationResult
        operation.errors << AccessDenied
        operation.errors << NoSuchDistribution
        operation.errors << NoSuchInvalidation
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/distribution/{DistributionId}/invalidation/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_invalidation_for_distribution_tenant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetInvalidationForDistributionTenant"
        operation.name = "GetInvalidationForDistributionTenant"
        operation.input = GetInvalidationForDistributionTenantRequest
        operation.output = GetInvalidationForDistributionTenantResult
        operation.errors << AccessDenied
        operation.errors << EntityNotFound
        operation.errors << NoSuchInvalidation
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/distribution-tenant/{DistributionTenantId}/invalidation/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_key_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetKeyGroup"
        operation.name = "GetKeyGroup"
        operation.input = GetKeyGroupRequest
        operation.output = GetKeyGroupResult
        operation.errors << NoSuchResource
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/key-group/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_key_group_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetKeyGroupConfig"
        operation.name = "GetKeyGroupConfig"
        operation.input = GetKeyGroupConfigRequest
        operation.output = GetKeyGroupConfigResult
        operation.errors << NoSuchResource
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/key-group/{Id}/config", "code" => 200}}
      end)
      service.add_operation(:get_managed_certificate_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetManagedCertificateDetails"
        operation.name = "GetManagedCertificateDetails"
        operation.input = GetManagedCertificateDetailsRequest
        operation.output = GetManagedCertificateDetailsResult
        operation.errors << AccessDenied
        operation.errors << EntityNotFound
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/managed-certificate/{Identifier}", "code" => 200}}
      end)
      service.add_operation(:get_monitoring_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetMonitoringSubscription"
        operation.name = "GetMonitoringSubscription"
        operation.input = GetMonitoringSubscriptionRequest
        operation.output = GetMonitoringSubscriptionResult
        operation.errors << AccessDenied
        operation.errors << NoSuchDistribution
        operation.errors << NoSuchMonitoringSubscription
        operation.errors << UnsupportedOperation
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/distributions/{DistributionId}/monitoring-subscription", "code" => 200}}
      end)
      service.add_operation(:get_origin_access_control, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetOriginAccessControl"
        operation.name = "GetOriginAccessControl"
        operation.input = GetOriginAccessControlRequest
        operation.output = GetOriginAccessControlResult
        operation.errors << AccessDenied
        operation.errors << NoSuchOriginAccessControl
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/origin-access-control/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_origin_access_control_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetOriginAccessControlConfig"
        operation.name = "GetOriginAccessControlConfig"
        operation.input = GetOriginAccessControlConfigRequest
        operation.output = GetOriginAccessControlConfigResult
        operation.errors << AccessDenied
        operation.errors << NoSuchOriginAccessControl
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/origin-access-control/{Id}/config", "code" => 200}}
      end)
      service.add_operation(:get_origin_request_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetOriginRequestPolicy"
        operation.name = "GetOriginRequestPolicy"
        operation.input = GetOriginRequestPolicyRequest
        operation.output = GetOriginRequestPolicyResult
        operation.errors << AccessDenied
        operation.errors << NoSuchOriginRequestPolicy
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/origin-request-policy/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_origin_request_policy_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetOriginRequestPolicyConfig"
        operation.name = "GetOriginRequestPolicyConfig"
        operation.input = GetOriginRequestPolicyConfigRequest
        operation.output = GetOriginRequestPolicyConfigResult
        operation.errors << AccessDenied
        operation.errors << NoSuchOriginRequestPolicy
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/origin-request-policy/{Id}/config", "code" => 200}}
      end)
      service.add_operation(:get_public_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetPublicKey"
        operation.name = "GetPublicKey"
        operation.input = GetPublicKeyRequest
        operation.output = GetPublicKeyResult
        operation.errors << AccessDenied
        operation.errors << NoSuchPublicKey
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/public-key/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_public_key_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetPublicKeyConfig"
        operation.name = "GetPublicKeyConfig"
        operation.input = GetPublicKeyConfigRequest
        operation.output = GetPublicKeyConfigResult
        operation.errors << AccessDenied
        operation.errors << NoSuchPublicKey
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/public-key/{Id}/config", "code" => 200}}
      end)
      service.add_operation(:get_realtime_log_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetRealtimeLogConfig"
        operation.name = "GetRealtimeLogConfig"
        operation.input = GetRealtimeLogConfigRequest
        operation.output = GetRealtimeLogConfigResult
        operation.errors << AccessDenied
        operation.errors << InvalidArgument
        operation.errors << NoSuchRealtimeLogConfig
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/get-realtime-log-config", "code" => 200}}
      end)
      service.add_operation(:get_response_headers_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetResponseHeadersPolicy"
        operation.name = "GetResponseHeadersPolicy"
        operation.input = GetResponseHeadersPolicyRequest
        operation.output = GetResponseHeadersPolicyResult
        operation.errors << AccessDenied
        operation.errors << NoSuchResponseHeadersPolicy
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/response-headers-policy/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_response_headers_policy_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetResponseHeadersPolicyConfig"
        operation.name = "GetResponseHeadersPolicyConfig"
        operation.input = GetResponseHeadersPolicyConfigRequest
        operation.output = GetResponseHeadersPolicyConfigResult
        operation.errors << AccessDenied
        operation.errors << NoSuchResponseHeadersPolicy
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/response-headers-policy/{Id}/config", "code" => 200}}
      end)
      service.add_operation(:get_streaming_distribution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetStreamingDistribution"
        operation.name = "GetStreamingDistribution"
        operation.input = GetStreamingDistributionRequest
        operation.output = GetStreamingDistributionResult
        operation.errors << AccessDenied
        operation.errors << NoSuchStreamingDistribution
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/streaming-distribution/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_streaming_distribution_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetStreamingDistributionConfig"
        operation.name = "GetStreamingDistributionConfig"
        operation.input = GetStreamingDistributionConfigRequest
        operation.output = GetStreamingDistributionConfigResult
        operation.errors << AccessDenied
        operation.errors << NoSuchStreamingDistribution
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/streaming-distribution/{Id}/config", "code" => 200}}
      end)
      service.add_operation(:get_vpc_origin, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#GetVpcOrigin"
        operation.name = "GetVpcOrigin"
        operation.input = GetVpcOriginRequest
        operation.output = GetVpcOriginResult
        operation.errors << AccessDenied
        operation.errors << EntityNotFound
        operation.errors << InvalidArgument
        operation.errors << UnsupportedOperation
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/vpc-origin/{Id}", "code" => 200}}
      end)
      service.add_operation(:list_anycast_ip_lists, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListAnycastIpLists"
        operation.name = "ListAnycastIpLists"
        operation.input = ListAnycastIpListsRequest
        operation.output = ListAnycastIpListsResult
        operation.errors << AccessDenied
        operation.errors << EntityNotFound
        operation.errors << InvalidArgument
        operation.errors << UnsupportedOperation
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/anycast-ip-list", "code" => 200}}
      end)
      service.add_operation(:list_cache_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListCachePolicies"
        operation.name = "ListCachePolicies"
        operation.input = ListCachePoliciesRequest
        operation.output = ListCachePoliciesResult
        operation.errors << AccessDenied
        operation.errors << InvalidArgument
        operation.errors << NoSuchCachePolicy
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/cache-policy", "code" => 200}}
      end)
      service.add_operation(:list_cloud_front_origin_access_identities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListCloudFrontOriginAccessIdentities"
        operation.name = "ListCloudFrontOriginAccessIdentities"
        operation.input = ListCloudFrontOriginAccessIdentitiesRequest
        operation.output = ListCloudFrontOriginAccessIdentitiesResult
        operation.errors << InvalidArgument
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/origin-access-identity/cloudfront", "code" => 200}}
        operation[:paginator] = Paginators::ListCloudFrontOriginAccessIdentities.new
      end)
      service.add_operation(:list_conflicting_aliases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListConflictingAliases"
        operation.name = "ListConflictingAliases"
        operation.input = ListConflictingAliasesRequest
        operation.output = ListConflictingAliasesResult
        operation.errors << InvalidArgument
        operation.errors << NoSuchDistribution
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/conflicting-alias", "code" => 200}}
      end)
      service.add_operation(:list_connection_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListConnectionGroups"
        operation.name = "ListConnectionGroups"
        operation.input = ListConnectionGroupsRequest
        operation.output = ListConnectionGroupsResult
        operation.errors << AccessDenied
        operation.errors << EntityNotFound
        operation.errors << InvalidArgument
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/connection-groups", "code" => 200}}
        operation[:paginator] = Paginators::ListConnectionGroups.new
      end)
      service.add_operation(:list_continuous_deployment_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListContinuousDeploymentPolicies"
        operation.name = "ListContinuousDeploymentPolicies"
        operation.input = ListContinuousDeploymentPoliciesRequest
        operation.output = ListContinuousDeploymentPoliciesResult
        operation.errors << AccessDenied
        operation.errors << InvalidArgument
        operation.errors << NoSuchContinuousDeploymentPolicy
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/continuous-deployment-policy", "code" => 200}}
      end)
      service.add_operation(:list_distribution_tenants, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListDistributionTenants"
        operation.name = "ListDistributionTenants"
        operation.input = ListDistributionTenantsRequest
        operation.output = ListDistributionTenantsResult
        operation.errors << AccessDenied
        operation.errors << EntityNotFound
        operation.errors << InvalidArgument
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/distribution-tenants", "code" => 200}}
        operation[:paginator] = Paginators::ListDistributionTenants.new
      end)
      service.add_operation(:list_distribution_tenants_by_customization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListDistributionTenantsByCustomization"
        operation.name = "ListDistributionTenantsByCustomization"
        operation.input = ListDistributionTenantsByCustomizationRequest
        operation.output = ListDistributionTenantsByCustomizationResult
        operation.errors << AccessDenied
        operation.errors << EntityNotFound
        operation.errors << InvalidArgument
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/distribution-tenants-by-customization", "code" => 200}}
        operation[:paginator] = Paginators::ListDistributionTenantsByCustomization.new
      end)
      service.add_operation(:list_distributions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListDistributions"
        operation.name = "ListDistributions"
        operation.input = ListDistributionsRequest
        operation.output = ListDistributionsResult
        operation.errors << InvalidArgument
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/distribution", "code" => 200}}
        operation[:paginator] = Paginators::ListDistributions.new
      end)
      service.add_operation(:list_distributions_by_anycast_ip_list_id, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListDistributionsByAnycastIpListId"
        operation.name = "ListDistributionsByAnycastIpListId"
        operation.input = ListDistributionsByAnycastIpListIdRequest
        operation.output = ListDistributionsByAnycastIpListIdResult
        operation.errors << AccessDenied
        operation.errors << EntityNotFound
        operation.errors << InvalidArgument
        operation.errors << UnsupportedOperation
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/distributionsByAnycastIpListId/{AnycastIpListId}", "code" => 200}}
      end)
      service.add_operation(:list_distributions_by_cache_policy_id, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListDistributionsByCachePolicyId"
        operation.name = "ListDistributionsByCachePolicyId"
        operation.input = ListDistributionsByCachePolicyIdRequest
        operation.output = ListDistributionsByCachePolicyIdResult
        operation.errors << AccessDenied
        operation.errors << InvalidArgument
        operation.errors << NoSuchCachePolicy
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/distributionsByCachePolicyId/{CachePolicyId}", "code" => 200}}
      end)
      service.add_operation(:list_distributions_by_connection_mode, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListDistributionsByConnectionMode"
        operation.name = "ListDistributionsByConnectionMode"
        operation.input = ListDistributionsByConnectionModeRequest
        operation.output = ListDistributionsByConnectionModeResult
        operation.errors << AccessDenied
        operation.errors << InvalidArgument
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/distributionsByConnectionMode/{ConnectionMode}", "code" => 200}}
        operation[:paginator] = Paginators::ListDistributionsByConnectionMode.new
      end)
      service.add_operation(:list_distributions_by_key_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListDistributionsByKeyGroup"
        operation.name = "ListDistributionsByKeyGroup"
        operation.input = ListDistributionsByKeyGroupRequest
        operation.output = ListDistributionsByKeyGroupResult
        operation.errors << InvalidArgument
        operation.errors << NoSuchResource
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/distributionsByKeyGroupId/{KeyGroupId}", "code" => 200}}
      end)
      service.add_operation(:list_distributions_by_origin_request_policy_id, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListDistributionsByOriginRequestPolicyId"
        operation.name = "ListDistributionsByOriginRequestPolicyId"
        operation.input = ListDistributionsByOriginRequestPolicyIdRequest
        operation.output = ListDistributionsByOriginRequestPolicyIdResult
        operation.errors << AccessDenied
        operation.errors << InvalidArgument
        operation.errors << NoSuchOriginRequestPolicy
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/distributionsByOriginRequestPolicyId/{OriginRequestPolicyId}", "code" => 200}}
      end)
      service.add_operation(:list_distributions_by_realtime_log_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListDistributionsByRealtimeLogConfig"
        operation.name = "ListDistributionsByRealtimeLogConfig"
        operation.input = ListDistributionsByRealtimeLogConfigRequest
        operation.output = ListDistributionsByRealtimeLogConfigResult
        operation.errors << InvalidArgument
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/distributionsByRealtimeLogConfig", "code" => 200}}
      end)
      service.add_operation(:list_distributions_by_response_headers_policy_id, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListDistributionsByResponseHeadersPolicyId"
        operation.name = "ListDistributionsByResponseHeadersPolicyId"
        operation.input = ListDistributionsByResponseHeadersPolicyIdRequest
        operation.output = ListDistributionsByResponseHeadersPolicyIdResult
        operation.errors << AccessDenied
        operation.errors << InvalidArgument
        operation.errors << NoSuchResponseHeadersPolicy
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/distributionsByResponseHeadersPolicyId/{ResponseHeadersPolicyId}", "code" => 200}}
      end)
      service.add_operation(:list_distributions_by_vpc_origin_id, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListDistributionsByVpcOriginId"
        operation.name = "ListDistributionsByVpcOriginId"
        operation.input = ListDistributionsByVpcOriginIdRequest
        operation.output = ListDistributionsByVpcOriginIdResult
        operation.errors << AccessDenied
        operation.errors << EntityNotFound
        operation.errors << InvalidArgument
        operation.errors << UnsupportedOperation
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/distributionsByVpcOriginId/{VpcOriginId}", "code" => 200}}
      end)
      service.add_operation(:list_distributions_by_web_acl_id, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListDistributionsByWebACLId"
        operation.name = "ListDistributionsByWebACLId"
        operation.input = ListDistributionsByWebACLIdRequest
        operation.output = ListDistributionsByWebACLIdResult
        operation.errors << InvalidArgument
        operation.errors << InvalidWebACLId
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/distributionsByWebACLId/{WebACLId}", "code" => 200}}
      end)
      service.add_operation(:list_domain_conflicts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListDomainConflicts"
        operation.name = "ListDomainConflicts"
        operation.input = ListDomainConflictsRequest
        operation.output = ListDomainConflictsResult
        operation.errors << AccessDenied
        operation.errors << EntityNotFound
        operation.errors << InvalidArgument
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/domain-conflicts", "code" => 200}}
        operation[:paginator] = Paginators::ListDomainConflicts.new
      end)
      service.add_operation(:list_field_level_encryption_configs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListFieldLevelEncryptionConfigs"
        operation.name = "ListFieldLevelEncryptionConfigs"
        operation.input = ListFieldLevelEncryptionConfigsRequest
        operation.output = ListFieldLevelEncryptionConfigsResult
        operation.errors << InvalidArgument
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/field-level-encryption", "code" => 200}}
      end)
      service.add_operation(:list_field_level_encryption_profiles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListFieldLevelEncryptionProfiles"
        operation.name = "ListFieldLevelEncryptionProfiles"
        operation.input = ListFieldLevelEncryptionProfilesRequest
        operation.output = ListFieldLevelEncryptionProfilesResult
        operation.errors << InvalidArgument
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/field-level-encryption-profile", "code" => 200}}
      end)
      service.add_operation(:list_functions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListFunctions"
        operation.name = "ListFunctions"
        operation.input = ListFunctionsRequest
        operation.output = ListFunctionsResult
        operation.errors << InvalidArgument
        operation.errors << UnsupportedOperation
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/function", "code" => 200}}
      end)
      service.add_operation(:list_invalidations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListInvalidations"
        operation.name = "ListInvalidations"
        operation.input = ListInvalidationsRequest
        operation.output = ListInvalidationsResult
        operation.errors << AccessDenied
        operation.errors << InvalidArgument
        operation.errors << NoSuchDistribution
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/distribution/{DistributionId}/invalidation", "code" => 200}}
        operation[:paginator] = Paginators::ListInvalidations.new
      end)
      service.add_operation(:list_invalidations_for_distribution_tenant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListInvalidationsForDistributionTenant"
        operation.name = "ListInvalidationsForDistributionTenant"
        operation.input = ListInvalidationsForDistributionTenantRequest
        operation.output = ListInvalidationsForDistributionTenantResult
        operation.errors << AccessDenied
        operation.errors << EntityNotFound
        operation.errors << InvalidArgument
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/distribution-tenant/{Id}/invalidation", "code" => 200}}
        operation[:paginator] = Paginators::ListInvalidationsForDistributionTenant.new
      end)
      service.add_operation(:list_key_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListKeyGroups"
        operation.name = "ListKeyGroups"
        operation.input = ListKeyGroupsRequest
        operation.output = ListKeyGroupsResult
        operation.errors << InvalidArgument
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/key-group", "code" => 200}}
      end)
      service.add_operation(:list_key_value_stores, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListKeyValueStores"
        operation.name = "ListKeyValueStores"
        operation.input = ListKeyValueStoresRequest
        operation.output = ListKeyValueStoresResult
        operation.errors << AccessDenied
        operation.errors << InvalidArgument
        operation.errors << UnsupportedOperation
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/key-value-store", "code" => 200}}
        operation[:paginator] = Paginators::ListKeyValueStores.new
      end)
      service.add_operation(:list_origin_access_controls, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListOriginAccessControls"
        operation.name = "ListOriginAccessControls"
        operation.input = ListOriginAccessControlsRequest
        operation.output = ListOriginAccessControlsResult
        operation.errors << InvalidArgument
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/origin-access-control", "code" => 200}}
        operation[:paginator] = Paginators::ListOriginAccessControls.new
      end)
      service.add_operation(:list_origin_request_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListOriginRequestPolicies"
        operation.name = "ListOriginRequestPolicies"
        operation.input = ListOriginRequestPoliciesRequest
        operation.output = ListOriginRequestPoliciesResult
        operation.errors << AccessDenied
        operation.errors << InvalidArgument
        operation.errors << NoSuchOriginRequestPolicy
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/origin-request-policy", "code" => 200}}
      end)
      service.add_operation(:list_public_keys, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListPublicKeys"
        operation.name = "ListPublicKeys"
        operation.input = ListPublicKeysRequest
        operation.output = ListPublicKeysResult
        operation.errors << InvalidArgument
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/public-key", "code" => 200}}
        operation[:paginator] = Paginators::ListPublicKeys.new
      end)
      service.add_operation(:list_realtime_log_configs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListRealtimeLogConfigs"
        operation.name = "ListRealtimeLogConfigs"
        operation.input = ListRealtimeLogConfigsRequest
        operation.output = ListRealtimeLogConfigsResult
        operation.errors << AccessDenied
        operation.errors << InvalidArgument
        operation.errors << NoSuchRealtimeLogConfig
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/realtime-log-config", "code" => 200}}
      end)
      service.add_operation(:list_response_headers_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListResponseHeadersPolicies"
        operation.name = "ListResponseHeadersPolicies"
        operation.input = ListResponseHeadersPoliciesRequest
        operation.output = ListResponseHeadersPoliciesResult
        operation.errors << AccessDenied
        operation.errors << InvalidArgument
        operation.errors << NoSuchResponseHeadersPolicy
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/response-headers-policy", "code" => 200}}
      end)
      service.add_operation(:list_streaming_distributions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListStreamingDistributions"
        operation.name = "ListStreamingDistributions"
        operation.input = ListStreamingDistributionsRequest
        operation.output = ListStreamingDistributionsResult
        operation.errors << InvalidArgument
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/streaming-distribution", "code" => 200}}
        operation[:paginator] = Paginators::ListStreamingDistributions.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResult
        operation.errors << AccessDenied
        operation.errors << InvalidArgument
        operation.errors << InvalidTagging
        operation.errors << NoSuchResource
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/tagging", "code" => 200}}
      end)
      service.add_operation(:list_vpc_origins, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#ListVpcOrigins"
        operation.name = "ListVpcOrigins"
        operation.input = ListVpcOriginsRequest
        operation.output = ListVpcOriginsResult
        operation.errors << AccessDenied
        operation.errors << EntityNotFound
        operation.errors << InvalidArgument
        operation.errors << UnsupportedOperation
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-05-31/vpc-origin", "code" => 200}}
      end)
      service.add_operation(:publish_function, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#PublishFunction"
        operation.name = "PublishFunction"
        operation.input = PublishFunctionRequest
        operation.output = PublishFunctionResult
        operation.errors << InvalidArgument
        operation.errors << InvalidIfMatchVersion
        operation.errors << NoSuchFunctionExists
        operation.errors << PreconditionFailed
        operation.errors << UnsupportedOperation
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/function/{Name}/publish", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDenied
        operation.errors << InvalidArgument
        operation.errors << InvalidTagging
        operation.errors << NoSuchResource
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/tagging?Operation=Tag", "code" => 204}}
      end)
      service.add_operation(:test_function, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#TestFunction"
        operation.name = "TestFunction"
        operation.input = TestFunctionRequest
        operation.output = TestFunctionResult
        operation.errors << InvalidArgument
        operation.errors << InvalidIfMatchVersion
        operation.errors << NoSuchFunctionExists
        operation.errors << TestFunctionFailed
        operation.errors << UnsupportedOperation
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/function/{Name}/test", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDenied
        operation.errors << InvalidArgument
        operation.errors << InvalidTagging
        operation.errors << NoSuchResource
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/tagging?Operation=Untag", "code" => 204}}
      end)
      service.add_operation(:update_cache_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdateCachePolicy"
        operation.name = "UpdateCachePolicy"
        operation.input = UpdateCachePolicyRequest
        operation.output = UpdateCachePolicyResult
        operation.errors << AccessDenied
        operation.errors << CachePolicyAlreadyExists
        operation.errors << IllegalUpdate
        operation.errors << InconsistentQuantities
        operation.errors << InvalidArgument
        operation.errors << InvalidIfMatchVersion
        operation.errors << NoSuchCachePolicy
        operation.errors << PreconditionFailed
        operation.errors << TooManyCookiesInCachePolicy
        operation.errors << TooManyHeadersInCachePolicy
        operation.errors << TooManyQueryStringsInCachePolicy
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/cache-policy/{Id}", "code" => 200}}
      end)
      service.add_operation(:update_cloud_front_origin_access_identity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdateCloudFrontOriginAccessIdentity"
        operation.name = "UpdateCloudFrontOriginAccessIdentity"
        operation.input = UpdateCloudFrontOriginAccessIdentityRequest
        operation.output = UpdateCloudFrontOriginAccessIdentityResult
        operation.errors << AccessDenied
        operation.errors << IllegalUpdate
        operation.errors << InconsistentQuantities
        operation.errors << InvalidArgument
        operation.errors << InvalidIfMatchVersion
        operation.errors << MissingBody
        operation.errors << NoSuchCloudFrontOriginAccessIdentity
        operation.errors << PreconditionFailed
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/origin-access-identity/cloudfront/{Id}/config", "code" => 200}}
      end)
      service.add_operation(:update_connection_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdateConnectionGroup"
        operation.name = "UpdateConnectionGroup"
        operation.input = UpdateConnectionGroupRequest
        operation.output = UpdateConnectionGroupResult
        operation.errors << AccessDenied
        operation.errors << EntityAlreadyExists
        operation.errors << EntityLimitExceeded
        operation.errors << EntityNotFound
        operation.errors << InvalidArgument
        operation.errors << InvalidIfMatchVersion
        operation.errors << PreconditionFailed
        operation.errors << ResourceInUse
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/connection-group/{Id}", "code" => 200}}
      end)
      service.add_operation(:update_continuous_deployment_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdateContinuousDeploymentPolicy"
        operation.name = "UpdateContinuousDeploymentPolicy"
        operation.input = UpdateContinuousDeploymentPolicyRequest
        operation.output = UpdateContinuousDeploymentPolicyResult
        operation.errors << AccessDenied
        operation.errors << InconsistentQuantities
        operation.errors << InvalidArgument
        operation.errors << InvalidIfMatchVersion
        operation.errors << NoSuchContinuousDeploymentPolicy
        operation.errors << PreconditionFailed
        operation.errors << StagingDistributionInUse
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/continuous-deployment-policy/{Id}", "code" => 200}}
      end)
      service.add_operation(:update_distribution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdateDistribution"
        operation.name = "UpdateDistribution"
        operation.input = UpdateDistributionRequest
        operation.output = UpdateDistributionResult
        operation.errors << AccessDenied
        operation.errors << CNAMEAlreadyExists
        operation.errors << ContinuousDeploymentPolicyInUse
        operation.errors << EntityNotFound
        operation.errors << IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior
        operation.errors << IllegalOriginAccessConfiguration
        operation.errors << IllegalUpdate
        operation.errors << InconsistentQuantities
        operation.errors << InvalidArgument
        operation.errors << InvalidDefaultRootObject
        operation.errors << InvalidDomainNameForOriginAccessControl
        operation.errors << InvalidErrorCode
        operation.errors << InvalidForwardCookies
        operation.errors << InvalidFunctionAssociation
        operation.errors << InvalidGeoRestrictionParameter
        operation.errors << InvalidHeadersForS3Origin
        operation.errors << InvalidIfMatchVersion
        operation.errors << InvalidLambdaFunctionAssociation
        operation.errors << InvalidLocationCode
        operation.errors << InvalidMinimumProtocolVersion
        operation.errors << InvalidOriginAccessControl
        operation.errors << InvalidOriginAccessIdentity
        operation.errors << InvalidOriginKeepaliveTimeout
        operation.errors << InvalidOriginReadTimeout
        operation.errors << InvalidQueryStringParameters
        operation.errors << InvalidRelativePath
        operation.errors << InvalidRequiredProtocol
        operation.errors << InvalidResponseCode
        operation.errors << InvalidTTLOrder
        operation.errors << InvalidViewerCertificate
        operation.errors << InvalidWebACLId
        operation.errors << MissingBody
        operation.errors << NoSuchCachePolicy
        operation.errors << NoSuchContinuousDeploymentPolicy
        operation.errors << NoSuchDistribution
        operation.errors << NoSuchFieldLevelEncryptionConfig
        operation.errors << NoSuchOrigin
        operation.errors << NoSuchOriginRequestPolicy
        operation.errors << NoSuchRealtimeLogConfig
        operation.errors << NoSuchResponseHeadersPolicy
        operation.errors << PreconditionFailed
        operation.errors << RealtimeLogConfigOwnerMismatch
        operation.errors << StagingDistributionInUse
        operation.errors << TooManyCacheBehaviors
        operation.errors << TooManyCertificates
        operation.errors << TooManyCookieNamesInWhiteList
        operation.errors << TooManyDistributionCNAMEs
        operation.errors << TooManyDistributionsAssociatedToCachePolicy
        operation.errors << TooManyDistributionsAssociatedToFieldLevelEncryptionConfig
        operation.errors << TooManyDistributionsAssociatedToKeyGroup
        operation.errors << TooManyDistributionsAssociatedToOriginAccessControl
        operation.errors << TooManyDistributionsAssociatedToOriginRequestPolicy
        operation.errors << TooManyDistributionsAssociatedToResponseHeadersPolicy
        operation.errors << TooManyDistributionsWithFunctionAssociations
        operation.errors << TooManyDistributionsWithLambdaAssociations
        operation.errors << TooManyDistributionsWithSingleFunctionARN
        operation.errors << TooManyFunctionAssociations
        operation.errors << TooManyHeadersInForwardedValues
        operation.errors << TooManyKeyGroupsAssociatedToDistribution
        operation.errors << TooManyLambdaFunctionAssociations
        operation.errors << TooManyOriginCustomHeaders
        operation.errors << TooManyOriginGroupsPerDistribution
        operation.errors << TooManyOrigins
        operation.errors << TooManyQueryStringParameters
        operation.errors << TooManyTrustedSigners
        operation.errors << TrustedKeyGroupDoesNotExist
        operation.errors << TrustedSignerDoesNotExist
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/distribution/{Id}/config", "code" => 200}}
      end)
      service.add_operation(:update_distribution_tenant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdateDistributionTenant"
        operation.name = "UpdateDistributionTenant"
        operation.input = UpdateDistributionTenantRequest
        operation.output = UpdateDistributionTenantResult
        operation.errors << AccessDenied
        operation.errors << CNAMEAlreadyExists
        operation.errors << EntityAlreadyExists
        operation.errors << EntityLimitExceeded
        operation.errors << EntityNotFound
        operation.errors << InvalidArgument
        operation.errors << InvalidAssociation
        operation.errors << InvalidIfMatchVersion
        operation.errors << PreconditionFailed
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/distribution-tenant/{Id}", "code" => 200}}
      end)
      service.add_operation(:update_distribution_with_staging_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdateDistributionWithStagingConfig"
        operation.name = "UpdateDistributionWithStagingConfig"
        operation.input = UpdateDistributionWithStagingConfigRequest
        operation.output = UpdateDistributionWithStagingConfigResult
        operation.errors << AccessDenied
        operation.errors << CNAMEAlreadyExists
        operation.errors << EntityNotFound
        operation.errors << IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior
        operation.errors << IllegalUpdate
        operation.errors << InconsistentQuantities
        operation.errors << InvalidArgument
        operation.errors << InvalidDefaultRootObject
        operation.errors << InvalidErrorCode
        operation.errors << InvalidForwardCookies
        operation.errors << InvalidFunctionAssociation
        operation.errors << InvalidGeoRestrictionParameter
        operation.errors << InvalidHeadersForS3Origin
        operation.errors << InvalidIfMatchVersion
        operation.errors << InvalidLambdaFunctionAssociation
        operation.errors << InvalidLocationCode
        operation.errors << InvalidMinimumProtocolVersion
        operation.errors << InvalidOriginAccessControl
        operation.errors << InvalidOriginAccessIdentity
        operation.errors << InvalidOriginKeepaliveTimeout
        operation.errors << InvalidOriginReadTimeout
        operation.errors << InvalidQueryStringParameters
        operation.errors << InvalidRelativePath
        operation.errors << InvalidRequiredProtocol
        operation.errors << InvalidResponseCode
        operation.errors << InvalidTTLOrder
        operation.errors << InvalidViewerCertificate
        operation.errors << InvalidWebACLId
        operation.errors << MissingBody
        operation.errors << NoSuchCachePolicy
        operation.errors << NoSuchDistribution
        operation.errors << NoSuchFieldLevelEncryptionConfig
        operation.errors << NoSuchOrigin
        operation.errors << NoSuchOriginRequestPolicy
        operation.errors << NoSuchRealtimeLogConfig
        operation.errors << NoSuchResponseHeadersPolicy
        operation.errors << PreconditionFailed
        operation.errors << RealtimeLogConfigOwnerMismatch
        operation.errors << TooManyCacheBehaviors
        operation.errors << TooManyCertificates
        operation.errors << TooManyCookieNamesInWhiteList
        operation.errors << TooManyDistributionCNAMEs
        operation.errors << TooManyDistributionsAssociatedToCachePolicy
        operation.errors << TooManyDistributionsAssociatedToFieldLevelEncryptionConfig
        operation.errors << TooManyDistributionsAssociatedToKeyGroup
        operation.errors << TooManyDistributionsAssociatedToOriginAccessControl
        operation.errors << TooManyDistributionsAssociatedToOriginRequestPolicy
        operation.errors << TooManyDistributionsAssociatedToResponseHeadersPolicy
        operation.errors << TooManyDistributionsWithFunctionAssociations
        operation.errors << TooManyDistributionsWithLambdaAssociations
        operation.errors << TooManyDistributionsWithSingleFunctionARN
        operation.errors << TooManyFunctionAssociations
        operation.errors << TooManyHeadersInForwardedValues
        operation.errors << TooManyKeyGroupsAssociatedToDistribution
        operation.errors << TooManyLambdaFunctionAssociations
        operation.errors << TooManyOriginCustomHeaders
        operation.errors << TooManyOriginGroupsPerDistribution
        operation.errors << TooManyOrigins
        operation.errors << TooManyQueryStringParameters
        operation.errors << TooManyTrustedSigners
        operation.errors << TrustedKeyGroupDoesNotExist
        operation.errors << TrustedSignerDoesNotExist
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/distribution/{Id}/promote-staging-config", "code" => 200}}
      end)
      service.add_operation(:update_domain_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdateDomainAssociation"
        operation.name = "UpdateDomainAssociation"
        operation.input = UpdateDomainAssociationRequest
        operation.output = UpdateDomainAssociationResult
        operation.errors << AccessDenied
        operation.errors << EntityNotFound
        operation.errors << IllegalUpdate
        operation.errors << InvalidArgument
        operation.errors << InvalidIfMatchVersion
        operation.errors << PreconditionFailed
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/domain-association", "code" => 200}}
      end)
      service.add_operation(:update_field_level_encryption_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdateFieldLevelEncryptionConfig"
        operation.name = "UpdateFieldLevelEncryptionConfig"
        operation.input = UpdateFieldLevelEncryptionConfigRequest
        operation.output = UpdateFieldLevelEncryptionConfigResult
        operation.errors << AccessDenied
        operation.errors << IllegalUpdate
        operation.errors << InconsistentQuantities
        operation.errors << InvalidArgument
        operation.errors << InvalidIfMatchVersion
        operation.errors << NoSuchFieldLevelEncryptionConfig
        operation.errors << NoSuchFieldLevelEncryptionProfile
        operation.errors << PreconditionFailed
        operation.errors << QueryArgProfileEmpty
        operation.errors << TooManyFieldLevelEncryptionContentTypeProfiles
        operation.errors << TooManyFieldLevelEncryptionQueryArgProfiles
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/field-level-encryption/{Id}/config", "code" => 200}}
      end)
      service.add_operation(:update_field_level_encryption_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdateFieldLevelEncryptionProfile"
        operation.name = "UpdateFieldLevelEncryptionProfile"
        operation.input = UpdateFieldLevelEncryptionProfileRequest
        operation.output = UpdateFieldLevelEncryptionProfileResult
        operation.errors << AccessDenied
        operation.errors << FieldLevelEncryptionProfileAlreadyExists
        operation.errors << FieldLevelEncryptionProfileSizeExceeded
        operation.errors << IllegalUpdate
        operation.errors << InconsistentQuantities
        operation.errors << InvalidArgument
        operation.errors << InvalidIfMatchVersion
        operation.errors << NoSuchFieldLevelEncryptionProfile
        operation.errors << NoSuchPublicKey
        operation.errors << PreconditionFailed
        operation.errors << TooManyFieldLevelEncryptionEncryptionEntities
        operation.errors << TooManyFieldLevelEncryptionFieldPatterns
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/field-level-encryption-profile/{Id}/config", "code" => 200}}
      end)
      service.add_operation(:update_function, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdateFunction"
        operation.name = "UpdateFunction"
        operation.input = UpdateFunctionRequest
        operation.output = UpdateFunctionResult
        operation.errors << FunctionSizeLimitExceeded
        operation.errors << InvalidArgument
        operation.errors << InvalidIfMatchVersion
        operation.errors << NoSuchFunctionExists
        operation.errors << PreconditionFailed
        operation.errors << UnsupportedOperation
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/function/{Name}", "code" => 200}}
      end)
      service.add_operation(:update_key_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdateKeyGroup"
        operation.name = "UpdateKeyGroup"
        operation.input = UpdateKeyGroupRequest
        operation.output = UpdateKeyGroupResult
        operation.errors << InvalidArgument
        operation.errors << InvalidIfMatchVersion
        operation.errors << KeyGroupAlreadyExists
        operation.errors << NoSuchResource
        operation.errors << PreconditionFailed
        operation.errors << TooManyPublicKeysInKeyGroup
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/key-group/{Id}", "code" => 200}}
      end)
      service.add_operation(:update_key_value_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdateKeyValueStore"
        operation.name = "UpdateKeyValueStore"
        operation.input = UpdateKeyValueStoreRequest
        operation.output = UpdateKeyValueStoreResult
        operation.errors << AccessDenied
        operation.errors << EntityNotFound
        operation.errors << InvalidArgument
        operation.errors << InvalidIfMatchVersion
        operation.errors << PreconditionFailed
        operation.errors << UnsupportedOperation
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/key-value-store/{Name}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_origin_access_control, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdateOriginAccessControl"
        operation.name = "UpdateOriginAccessControl"
        operation.input = UpdateOriginAccessControlRequest
        operation.output = UpdateOriginAccessControlResult
        operation.errors << AccessDenied
        operation.errors << IllegalUpdate
        operation.errors << InvalidArgument
        operation.errors << InvalidIfMatchVersion
        operation.errors << NoSuchOriginAccessControl
        operation.errors << OriginAccessControlAlreadyExists
        operation.errors << PreconditionFailed
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/origin-access-control/{Id}/config", "code" => 200}}
      end)
      service.add_operation(:update_origin_request_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdateOriginRequestPolicy"
        operation.name = "UpdateOriginRequestPolicy"
        operation.input = UpdateOriginRequestPolicyRequest
        operation.output = UpdateOriginRequestPolicyResult
        operation.errors << AccessDenied
        operation.errors << IllegalUpdate
        operation.errors << InconsistentQuantities
        operation.errors << InvalidArgument
        operation.errors << InvalidIfMatchVersion
        operation.errors << NoSuchOriginRequestPolicy
        operation.errors << OriginRequestPolicyAlreadyExists
        operation.errors << PreconditionFailed
        operation.errors << TooManyCookiesInOriginRequestPolicy
        operation.errors << TooManyHeadersInOriginRequestPolicy
        operation.errors << TooManyQueryStringsInOriginRequestPolicy
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/origin-request-policy/{Id}", "code" => 200}}
      end)
      service.add_operation(:update_public_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdatePublicKey"
        operation.name = "UpdatePublicKey"
        operation.input = UpdatePublicKeyRequest
        operation.output = UpdatePublicKeyResult
        operation.errors << AccessDenied
        operation.errors << CannotChangeImmutablePublicKeyFields
        operation.errors << IllegalUpdate
        operation.errors << InvalidArgument
        operation.errors << InvalidIfMatchVersion
        operation.errors << NoSuchPublicKey
        operation.errors << PreconditionFailed
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/public-key/{Id}/config", "code" => 200}}
      end)
      service.add_operation(:update_realtime_log_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdateRealtimeLogConfig"
        operation.name = "UpdateRealtimeLogConfig"
        operation.input = UpdateRealtimeLogConfigRequest
        operation.output = UpdateRealtimeLogConfigResult
        operation.errors << AccessDenied
        operation.errors << InvalidArgument
        operation.errors << NoSuchRealtimeLogConfig
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/realtime-log-config", "code" => 200}}
      end)
      service.add_operation(:update_response_headers_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdateResponseHeadersPolicy"
        operation.name = "UpdateResponseHeadersPolicy"
        operation.input = UpdateResponseHeadersPolicyRequest
        operation.output = UpdateResponseHeadersPolicyResult
        operation.errors << AccessDenied
        operation.errors << IllegalUpdate
        operation.errors << InconsistentQuantities
        operation.errors << InvalidArgument
        operation.errors << InvalidIfMatchVersion
        operation.errors << NoSuchResponseHeadersPolicy
        operation.errors << PreconditionFailed
        operation.errors << ResponseHeadersPolicyAlreadyExists
        operation.errors << TooLongCSPInResponseHeadersPolicy
        operation.errors << TooManyCustomHeadersInResponseHeadersPolicy
        operation.errors << TooManyRemoveHeadersInResponseHeadersPolicy
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/response-headers-policy/{Id}", "code" => 200}}
      end)
      service.add_operation(:update_streaming_distribution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdateStreamingDistribution"
        operation.name = "UpdateStreamingDistribution"
        operation.input = UpdateStreamingDistributionRequest
        operation.output = UpdateStreamingDistributionResult
        operation.errors << AccessDenied
        operation.errors << CNAMEAlreadyExists
        operation.errors << IllegalUpdate
        operation.errors << InconsistentQuantities
        operation.errors << InvalidArgument
        operation.errors << InvalidIfMatchVersion
        operation.errors << InvalidOriginAccessControl
        operation.errors << InvalidOriginAccessIdentity
        operation.errors << MissingBody
        operation.errors << NoSuchStreamingDistribution
        operation.errors << PreconditionFailed
        operation.errors << TooManyStreamingDistributionCNAMEs
        operation.errors << TooManyTrustedSigners
        operation.errors << TrustedSignerDoesNotExist
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/streaming-distribution/{Id}/config", "code" => 200}}
      end)
      service.add_operation(:update_vpc_origin, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#UpdateVpcOrigin"
        operation.name = "UpdateVpcOrigin"
        operation.input = UpdateVpcOriginRequest
        operation.output = UpdateVpcOriginResult
        operation.errors << AccessDenied
        operation.errors << CannotUpdateEntityWhileInUse
        operation.errors << EntityAlreadyExists
        operation.errors << EntityLimitExceeded
        operation.errors << EntityNotFound
        operation.errors << IllegalUpdate
        operation.errors << InconsistentQuantities
        operation.errors << InvalidArgument
        operation.errors << InvalidIfMatchVersion
        operation.errors << PreconditionFailed
        operation.errors << UnsupportedOperation
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-05-31/vpc-origin/{Id}", "code" => 202}}
      end)
      service.add_operation(:verify_dns_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudfront#VerifyDnsConfiguration"
        operation.name = "VerifyDnsConfiguration"
        operation.input = VerifyDnsConfigurationRequest
        operation.output = VerifyDnsConfigurationResult
        operation.errors << AccessDenied
        operation.errors << EntityNotFound
        operation.errors << InvalidArgument
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-05-31/verify-dns-configuration", "code" => 200}}
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
