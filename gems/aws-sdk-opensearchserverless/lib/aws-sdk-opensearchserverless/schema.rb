# frozen_string_literal: true

# This is generated code!

module Aws::OpenSearchServerless
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessPolicyDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#AccessPolicyDetail', name: 'AccessPolicyDetail')
    AccessPolicyStats = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#AccessPolicyStats', name: 'AccessPolicyStats')
    AccessPolicySummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearchserverless#AccessPolicySummaries', name: 'AccessPolicySummaries')
    AccessPolicySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#AccessPolicySummary', name: 'AccessPolicySummary')
    AccessPolicyType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#AccessPolicyType', name: 'AccessPolicyType', traits: {"smithy.api#enum" => [{"name" => "data", "value" => "data", "documentation" => "data policy type"}]})
    AccountSettingsDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#AccountSettingsDetail', name: 'AccountSettingsDetail')
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    BatchGetCollectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#BatchGetCollectionInput', name: 'BatchGetCollectionInput')
    BatchGetCollectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#BatchGetCollectionOutput', name: 'BatchGetCollectionOutput')
    BatchGetEffectiveLifecyclePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#BatchGetEffectiveLifecyclePolicyRequest', name: 'BatchGetEffectiveLifecyclePolicyRequest')
    BatchGetEffectiveLifecyclePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#BatchGetEffectiveLifecyclePolicyResponse', name: 'BatchGetEffectiveLifecyclePolicyResponse')
    BatchGetLifecyclePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#BatchGetLifecyclePolicyRequest', name: 'BatchGetLifecyclePolicyRequest')
    BatchGetLifecyclePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#BatchGetLifecyclePolicyResponse', name: 'BatchGetLifecyclePolicyResponse')
    BatchGetVpcEndpointInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#BatchGetVpcEndpointInput', name: 'BatchGetVpcEndpointInput')
    BatchGetVpcEndpointOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#BatchGetVpcEndpointOutput', name: 'BatchGetVpcEndpointOutput')
    CapacityLimits = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#CapacityLimits', name: 'CapacityLimits')
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    CollectionDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#CollectionDetail', name: 'CollectionDetail')
    CollectionDetails = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearchserverless#CollectionDetails', name: 'CollectionDetails')
    CollectionErrorDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#CollectionErrorDetail', name: 'CollectionErrorDetail')
    CollectionErrorDetails = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearchserverless#CollectionErrorDetails', name: 'CollectionErrorDetails')
    CollectionFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#CollectionFilters', name: 'CollectionFilters')
    CollectionId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#CollectionId', name: 'CollectionId', traits: {"smithy.api#length" => {"min" => 3, "max" => 40}, "smithy.api#pattern" => "^[a-z0-9]{3,40}$"})
    CollectionIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearchserverless#CollectionIds', name: 'CollectionIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    CollectionName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#CollectionName', name: 'CollectionName', traits: {"smithy.api#length" => {"min" => 3, "max" => 32}, "smithy.api#pattern" => "^[a-z][a-z0-9-]+$"})
    CollectionNames = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearchserverless#CollectionNames', name: 'CollectionNames', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    CollectionStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#CollectionStatus', name: 'CollectionStatus', traits: {"smithy.api#enum" => [{"name" => "CREATING", "value" => "CREATING", "documentation" => "Creating collection resource"}, {"name" => "DELETING", "value" => "DELETING", "documentation" => "Deleting collection resource"}, {"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "Collection resource is ready to use"}, {"name" => "FAILED", "value" => "FAILED", "documentation" => "Collection resource create or delete failed"}]})
    CollectionSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearchserverless#CollectionSummaries', name: 'CollectionSummaries')
    CollectionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#CollectionSummary', name: 'CollectionSummary')
    CollectionType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#CollectionType', name: 'CollectionType', traits: {"smithy.api#enum" => [{"name" => "SEARCH", "value" => "SEARCH", "documentation" => "Search collection type"}, {"name" => "TIMESERIES", "value" => "TIMESERIES", "documentation" => "Timeseries collection type"}, {"name" => "VECTORSEARCH", "value" => "VECTORSEARCH", "documentation" => "Vectorsearch collection type"}]})
    ConfigDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#ConfigDescription', name: 'ConfigDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    ConfigName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#ConfigName', name: 'ConfigName', traits: {"smithy.api#length" => {"min" => 3, "max" => 32}, "smithy.api#pattern" => "^[a-z][a-z0-9-]+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateAccessPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#CreateAccessPolicyInput', name: 'CreateAccessPolicyInput')
    CreateAccessPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#CreateAccessPolicyOutput', name: 'CreateAccessPolicyOutput')
    CreateCollectionDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#CreateCollectionDetail', name: 'CreateCollectionDetail')
    CreateCollectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#CreateCollectionInput', name: 'CreateCollectionInput')
    CreateCollectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#CreateCollectionOutput', name: 'CreateCollectionOutput')
    CreateIamIdentityCenterConfigOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#CreateIamIdentityCenterConfigOptions', name: 'CreateIamIdentityCenterConfigOptions')
    CreateIndexRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#CreateIndexRequest', name: 'CreateIndexRequest')
    CreateIndexResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#CreateIndexResponse', name: 'CreateIndexResponse')
    CreateLifecyclePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#CreateLifecyclePolicyRequest', name: 'CreateLifecyclePolicyRequest')
    CreateLifecyclePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#CreateLifecyclePolicyResponse', name: 'CreateLifecyclePolicyResponse')
    CreateSecurityConfigInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#CreateSecurityConfigInput', name: 'CreateSecurityConfigInput')
    CreateSecurityConfigOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#CreateSecurityConfigOutput', name: 'CreateSecurityConfigOutput')
    CreateSecurityPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#CreateSecurityPolicyInput', name: 'CreateSecurityPolicyInput')
    CreateSecurityPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#CreateSecurityPolicyOutput', name: 'CreateSecurityPolicyOutput')
    CreateVpcEndpointDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#CreateVpcEndpointDetail', name: 'CreateVpcEndpointDetail')
    CreateVpcEndpointInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#CreateVpcEndpointInput', name: 'CreateVpcEndpointInput')
    CreateVpcEndpointOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#CreateVpcEndpointOutput', name: 'CreateVpcEndpointOutput')
    DeleteAccessPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#DeleteAccessPolicyInput', name: 'DeleteAccessPolicyInput')
    DeleteAccessPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#DeleteAccessPolicyOutput', name: 'DeleteAccessPolicyOutput')
    DeleteCollectionDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#DeleteCollectionDetail', name: 'DeleteCollectionDetail')
    DeleteCollectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#DeleteCollectionInput', name: 'DeleteCollectionInput')
    DeleteCollectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#DeleteCollectionOutput', name: 'DeleteCollectionOutput')
    DeleteIndexRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#DeleteIndexRequest', name: 'DeleteIndexRequest')
    DeleteIndexResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#DeleteIndexResponse', name: 'DeleteIndexResponse')
    DeleteLifecyclePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#DeleteLifecyclePolicyRequest', name: 'DeleteLifecyclePolicyRequest')
    DeleteLifecyclePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#DeleteLifecyclePolicyResponse', name: 'DeleteLifecyclePolicyResponse')
    DeleteSecurityConfigInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#DeleteSecurityConfigInput', name: 'DeleteSecurityConfigInput')
    DeleteSecurityConfigOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#DeleteSecurityConfigOutput', name: 'DeleteSecurityConfigOutput')
    DeleteSecurityPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#DeleteSecurityPolicyInput', name: 'DeleteSecurityPolicyInput')
    DeleteSecurityPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#DeleteSecurityPolicyOutput', name: 'DeleteSecurityPolicyOutput')
    DeleteVpcEndpointDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#DeleteVpcEndpointDetail', name: 'DeleteVpcEndpointDetail')
    DeleteVpcEndpointInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#DeleteVpcEndpointInput', name: 'DeleteVpcEndpointInput')
    DeleteVpcEndpointOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#DeleteVpcEndpointOutput', name: 'DeleteVpcEndpointOutput')
    EffectiveLifecyclePolicyDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#EffectiveLifecyclePolicyDetail', name: 'EffectiveLifecyclePolicyDetail')
    EffectiveLifecyclePolicyDetails = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearchserverless#EffectiveLifecyclePolicyDetails', name: 'EffectiveLifecyclePolicyDetails')
    EffectiveLifecyclePolicyErrorDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#EffectiveLifecyclePolicyErrorDetail', name: 'EffectiveLifecyclePolicyErrorDetail')
    EffectiveLifecyclePolicyErrorDetails = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearchserverless#EffectiveLifecyclePolicyErrorDetails', name: 'EffectiveLifecyclePolicyErrorDetails')
    FipsEndpoints = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#FipsEndpoints', name: 'FipsEndpoints')
    GetAccessPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#GetAccessPolicyInput', name: 'GetAccessPolicyInput')
    GetAccessPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#GetAccessPolicyOutput', name: 'GetAccessPolicyOutput')
    GetAccountSettingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#GetAccountSettingsInput', name: 'GetAccountSettingsInput')
    GetAccountSettingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#GetAccountSettingsOutput', name: 'GetAccountSettingsOutput')
    GetIndexRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#GetIndexRequest', name: 'GetIndexRequest')
    GetIndexResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#GetIndexResponse', name: 'GetIndexResponse')
    GetPoliciesStatsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#GetPoliciesStatsInput', name: 'GetPoliciesStatsInput')
    GetPoliciesStatsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#GetPoliciesStatsOutput', name: 'GetPoliciesStatsOutput')
    GetSecurityConfigInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#GetSecurityConfigInput', name: 'GetSecurityConfigInput')
    GetSecurityConfigOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#GetSecurityConfigOutput', name: 'GetSecurityConfigOutput')
    GetSecurityPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#GetSecurityPolicyInput', name: 'GetSecurityPolicyInput')
    GetSecurityPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#GetSecurityPolicyOutput', name: 'GetSecurityPolicyOutput')
    IamFederationConfigOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#IamFederationConfigOptions', name: 'IamFederationConfigOptions')
    IamIdentityCenterApplicationArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#IamIdentityCenterApplicationArn', name: 'IamIdentityCenterApplicationArn', traits: {"smithy.api#length" => {"min" => 10, "max" => 1224}, "smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):sso::\\d{12}:application/(sso)?ins-[a-zA-Z0-9-.]{16}/apl-[a-zA-Z0-9]{16}$"})
    IamIdentityCenterConfigOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#IamIdentityCenterConfigOptions', name: 'IamIdentityCenterConfigOptions')
    IamIdentityCenterGroupAttribute = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#IamIdentityCenterGroupAttribute', name: 'IamIdentityCenterGroupAttribute', traits: {"smithy.api#enum" => [{"name" => "GroupId", "value" => "GroupId", "documentation" => "Group ID"}, {"name" => "GroupName", "value" => "GroupName", "documentation" => "Group Name"}]})
    IamIdentityCenterInstanceArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#IamIdentityCenterInstanceArn', name: 'IamIdentityCenterInstanceArn', traits: {"smithy.api#length" => {"min" => 10, "max" => 1224}, "smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):sso:::instance/(sso)?ins-[a-zA-Z0-9-.]{16}$"})
    IamIdentityCenterUserAttribute = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#IamIdentityCenterUserAttribute', name: 'IamIdentityCenterUserAttribute', traits: {"smithy.api#enum" => [{"name" => "UserId", "value" => "UserId", "documentation" => "User ID"}, {"name" => "UserName", "value" => "UserName", "documentation" => "User Name"}, {"name" => "Email", "value" => "Email", "documentation" => "Email"}]})
    IndexName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#IndexName', name: 'IndexName')
    IndexSchema = ::Smithy::Schema::Shapes::DocumentShape.new(id: 'com.amazonaws.opensearchserverless#IndexSchema', name: 'IndexSchema')
    IndexingCapacityValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opensearchserverless#IndexingCapacityValue', name: 'IndexingCapacityValue', traits: {"smithy.api#range" => {"min" => 2}})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    LifecyclePolicyDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#LifecyclePolicyDetail', name: 'LifecyclePolicyDetail')
    LifecyclePolicyDetails = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearchserverless#LifecyclePolicyDetails', name: 'LifecyclePolicyDetails')
    LifecyclePolicyErrorDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#LifecyclePolicyErrorDetail', name: 'LifecyclePolicyErrorDetail')
    LifecyclePolicyErrorDetails = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearchserverless#LifecyclePolicyErrorDetails', name: 'LifecyclePolicyErrorDetails')
    LifecyclePolicyIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#LifecyclePolicyIdentifier', name: 'LifecyclePolicyIdentifier')
    LifecyclePolicyIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearchserverless#LifecyclePolicyIdentifiers', name: 'LifecyclePolicyIdentifiers', traits: {"smithy.api#length" => {"min" => 1, "max" => 40}})
    LifecyclePolicyResourceIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#LifecyclePolicyResourceIdentifier', name: 'LifecyclePolicyResourceIdentifier')
    LifecyclePolicyResourceIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearchserverless#LifecyclePolicyResourceIdentifiers', name: 'LifecyclePolicyResourceIdentifiers', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    LifecyclePolicyStats = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#LifecyclePolicyStats', name: 'LifecyclePolicyStats')
    LifecyclePolicySummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearchserverless#LifecyclePolicySummaries', name: 'LifecyclePolicySummaries')
    LifecyclePolicySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#LifecyclePolicySummary', name: 'LifecyclePolicySummary')
    LifecyclePolicyType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#LifecyclePolicyType', name: 'LifecyclePolicyType', traits: {"smithy.api#enum" => [{"name" => "retention", "value" => "retention", "documentation" => "retention policy type"}]})
    LifecycleResource = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#LifecycleResource', name: 'LifecycleResource')
    LifecycleResourceFilter = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearchserverless#LifecycleResourceFilter', name: 'LifecycleResourceFilter')
    ListAccessPoliciesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#ListAccessPoliciesInput', name: 'ListAccessPoliciesInput')
    ListAccessPoliciesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#ListAccessPoliciesOutput', name: 'ListAccessPoliciesOutput')
    ListCollectionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#ListCollectionsInput', name: 'ListCollectionsInput')
    ListCollectionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#ListCollectionsOutput', name: 'ListCollectionsOutput')
    ListLifecyclePoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#ListLifecyclePoliciesRequest', name: 'ListLifecyclePoliciesRequest')
    ListLifecyclePoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#ListLifecyclePoliciesResponse', name: 'ListLifecyclePoliciesResponse')
    ListSecurityConfigsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#ListSecurityConfigsInput', name: 'ListSecurityConfigsInput')
    ListSecurityConfigsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#ListSecurityConfigsOutput', name: 'ListSecurityConfigsOutput')
    ListSecurityPoliciesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#ListSecurityPoliciesInput', name: 'ListSecurityPoliciesInput')
    ListSecurityPoliciesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#ListSecurityPoliciesOutput', name: 'ListSecurityPoliciesOutput')
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    ListVpcEndpointsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#ListVpcEndpointsInput', name: 'ListVpcEndpointsInput')
    ListVpcEndpointsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#ListVpcEndpointsOutput', name: 'ListVpcEndpointsOutput')
    OcuLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#OcuLimitExceededException', name: 'OcuLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    PolicyDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#PolicyDescription', name: 'PolicyDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    PolicyDocument = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#PolicyDocument', name: 'PolicyDocument', traits: {"smithy.api#length" => {"min" => 1, "max" => 20480}, "smithy.api#pattern" => "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u00A1-\\u00FF]+"})
    PolicyName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#PolicyName', name: 'PolicyName', traits: {"smithy.api#length" => {"min" => 3, "max" => 32}, "smithy.api#pattern" => "^[a-z][a-z0-9-]+$"})
    PolicyVersion = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#PolicyVersion', name: 'PolicyVersion', traits: {"smithy.api#length" => {"min" => 20, "max" => 36}, "smithy.api#pattern" => "^([0-9a-zA-Z+/]{4})*(([0-9a-zA-Z+/]{2}==)|([0-9a-zA-Z+/]{3}=))?$"})
    Resource = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#Resource', name: 'Resource')
    ResourceFilter = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearchserverless#ResourceFilter', name: 'ResourceFilter')
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#ResourceName', name: 'ResourceName', traits: {"smithy.api#pattern" => "^index/[a-z][a-z0-9-]{3,32}/([a-z;0-9&$%][+.~=\\-_a-z;0-9&$%]*)$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#ResourceType', name: 'ResourceType', traits: {"smithy.api#enum" => [{"name" => "index", "value" => "index", "documentation" => "index resource type"}]})
    SamlConfigOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#SamlConfigOptions', name: 'SamlConfigOptions')
    SearchCapacityValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opensearchserverless#SearchCapacityValue', name: 'SearchCapacityValue', traits: {"smithy.api#range" => {"min" => 2}})
    SecurityConfigDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#SecurityConfigDetail', name: 'SecurityConfigDetail')
    SecurityConfigId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#SecurityConfigId', name: 'SecurityConfigId', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    SecurityConfigStats = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#SecurityConfigStats', name: 'SecurityConfigStats')
    SecurityConfigSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearchserverless#SecurityConfigSummaries', name: 'SecurityConfigSummaries')
    SecurityConfigSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#SecurityConfigSummary', name: 'SecurityConfigSummary')
    SecurityConfigType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#SecurityConfigType', name: 'SecurityConfigType', traits: {"smithy.api#enum" => [{"name" => "saml", "value" => "saml", "documentation" => "saml provider"}, {"name" => "iamidentitycenter", "value" => "iamidentitycenter", "documentation" => "iam identity center"}, {"name" => "iamfederation", "value" => "iamfederation", "documentation" => "iam federation"}]})
    SecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#SecurityGroupId', name: 'SecurityGroupId', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w+\\-]+$"})
    SecurityGroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearchserverless#SecurityGroupIds', name: 'SecurityGroupIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    SecurityPolicyDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#SecurityPolicyDetail', name: 'SecurityPolicyDetail')
    SecurityPolicyStats = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#SecurityPolicyStats', name: 'SecurityPolicyStats')
    SecurityPolicySummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearchserverless#SecurityPolicySummaries', name: 'SecurityPolicySummaries')
    SecurityPolicySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#SecurityPolicySummary', name: 'SecurityPolicySummary')
    SecurityPolicyType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#SecurityPolicyType', name: 'SecurityPolicyType', traits: {"smithy.api#enum" => [{"name" => "encryption", "value" => "encryption", "documentation" => "encryption policy type"}, {"name" => "network", "value" => "network", "documentation" => "network policy type"}]})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    StandbyReplicas = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#StandbyReplicas', name: 'StandbyReplicas', traits: {"smithy.api#enum" => [{"name" => "ENABLED", "value" => "ENABLED", "documentation" => "Standby replicas enabled"}, {"name" => "DISABLED", "value" => "DISABLED", "documentation" => "Standby replicas disabled"}]})
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#SubnetId', name: 'SubnetId', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^subnet-([0-9a-f]{8}|[0-9a-f]{17})$"})
    SubnetIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearchserverless#SubnetIds', name: 'SubnetIds', traits: {"smithy.api#length" => {"min" => 1}})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#Tag', name: 'Tag')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearchserverless#TagKeys', name: 'TagKeys', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Tags = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearchserverless#Tags', name: 'Tags', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateAccessPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#UpdateAccessPolicyInput', name: 'UpdateAccessPolicyInput')
    UpdateAccessPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#UpdateAccessPolicyOutput', name: 'UpdateAccessPolicyOutput')
    UpdateAccountSettingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#UpdateAccountSettingsInput', name: 'UpdateAccountSettingsInput')
    UpdateAccountSettingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#UpdateAccountSettingsOutput', name: 'UpdateAccountSettingsOutput')
    UpdateCollectionDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#UpdateCollectionDetail', name: 'UpdateCollectionDetail')
    UpdateCollectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#UpdateCollectionInput', name: 'UpdateCollectionInput')
    UpdateCollectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#UpdateCollectionOutput', name: 'UpdateCollectionOutput')
    UpdateIamIdentityCenterConfigOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#UpdateIamIdentityCenterConfigOptions', name: 'UpdateIamIdentityCenterConfigOptions')
    UpdateIndexRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#UpdateIndexRequest', name: 'UpdateIndexRequest')
    UpdateIndexResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#UpdateIndexResponse', name: 'UpdateIndexResponse')
    UpdateLifecyclePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#UpdateLifecyclePolicyRequest', name: 'UpdateLifecyclePolicyRequest')
    UpdateLifecyclePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#UpdateLifecyclePolicyResponse', name: 'UpdateLifecyclePolicyResponse')
    UpdateSecurityConfigInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#UpdateSecurityConfigInput', name: 'UpdateSecurityConfigInput')
    UpdateSecurityConfigOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#UpdateSecurityConfigOutput', name: 'UpdateSecurityConfigOutput')
    UpdateSecurityPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#UpdateSecurityPolicyInput', name: 'UpdateSecurityPolicyInput')
    UpdateSecurityPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#UpdateSecurityPolicyOutput', name: 'UpdateSecurityPolicyOutput')
    UpdateVpcEndpointDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#UpdateVpcEndpointDetail', name: 'UpdateVpcEndpointDetail')
    UpdateVpcEndpointInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#UpdateVpcEndpointInput', name: 'UpdateVpcEndpointInput')
    UpdateVpcEndpointOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#UpdateVpcEndpointOutput', name: 'UpdateVpcEndpointOutput')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VpcEndpointDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#VpcEndpointDetail', name: 'VpcEndpointDetail')
    VpcEndpointDetails = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearchserverless#VpcEndpointDetails', name: 'VpcEndpointDetails')
    VpcEndpointErrorDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#VpcEndpointErrorDetail', name: 'VpcEndpointErrorDetail')
    VpcEndpointErrorDetails = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearchserverless#VpcEndpointErrorDetails', name: 'VpcEndpointErrorDetails')
    VpcEndpointFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#VpcEndpointFilters', name: 'VpcEndpointFilters')
    VpcEndpointId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#VpcEndpointId', name: 'VpcEndpointId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^vpce-[0-9a-z]*$"})
    VpcEndpointIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearchserverless#VpcEndpointIds', name: 'VpcEndpointIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    VpcEndpointName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#VpcEndpointName', name: 'VpcEndpointName', traits: {"smithy.api#length" => {"min" => 3, "max" => 32}, "smithy.api#pattern" => "^[a-z][a-z0-9-]+$"})
    VpcEndpointStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#VpcEndpointStatus', name: 'VpcEndpointStatus', traits: {"smithy.api#enum" => [{"name" => "PENDING", "value" => "PENDING", "documentation" => "Pending VPCEndpoint resource"}, {"name" => "DELETING", "value" => "DELETING", "documentation" => "Deleting VPCEndpoint resource"}, {"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "VPCEndpoint resource is ready to use"}, {"name" => "FAILED", "value" => "FAILED", "documentation" => "VPCEndpoint resource create or delete failed"}]})
    VpcEndpointSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opensearchserverless#VpcEndpointSummaries', name: 'VpcEndpointSummaries')
    VpcEndpointSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opensearchserverless#VpcEndpointSummary', name: 'VpcEndpointSummary')
    VpcId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#VpcId', name: 'VpcId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^vpc-[0-9a-z]*$"})
    IamFederationGroupAttribute = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#iamFederationGroupAttribute', name: 'IamFederationGroupAttribute', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z][A-Za-z0-9_.:/=+\\-@]*$"})
    IamFederationUserAttribute = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#iamFederationUserAttribute', name: 'IamFederationUserAttribute', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z][A-Za-z0-9_.:/=+\\-@]*$"})
    OpenSearchServerlessEntityId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#openSearchServerlessEntityId', name: 'OpenSearchServerlessEntityId', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^aws:opensearch:[0-9]{12}:*"})
    SamlGroupAttribute = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#samlGroupAttribute', name: 'SamlGroupAttribute', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "[\\w+=,.@-]+"})
    SamlMetadata = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#samlMetadata', name: 'SamlMetadata', traits: {"smithy.api#length" => {"min" => 1, "max" => 51200}, "smithy.api#pattern" => "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u00A1-\\u00FF]+"})
    SamlUserAttribute = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opensearchserverless#samlUserAttribute', name: 'SamlUserAttribute', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "[\\w+=,.@-]+"})

    AccessPolicyDetail.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPolicyType, location_name: 'type'))
    AccessPolicyDetail.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'name'))
    AccessPolicyDetail.add_member(:policy_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyVersion, location_name: 'policyVersion'))
    AccessPolicyDetail.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDescription, location_name: 'description'))
    AccessPolicyDetail.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Document, location_name: 'policy'))
    AccessPolicyDetail.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'createdDate'))
    AccessPolicyDetail.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'lastModifiedDate'))
    AccessPolicyDetail.type = Types::AccessPolicyDetail
    AccessPolicyStats.add_member(:data_policy_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'DataPolicyCount'))
    AccessPolicyStats.type = Types::AccessPolicyStats
    AccessPolicySummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPolicySummary)
    AccessPolicySummary.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPolicyType, location_name: 'type'))
    AccessPolicySummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'name'))
    AccessPolicySummary.add_member(:policy_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyVersion, location_name: 'policyVersion'))
    AccessPolicySummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDescription, location_name: 'description'))
    AccessPolicySummary.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'createdDate'))
    AccessPolicySummary.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'lastModifiedDate'))
    AccessPolicySummary.type = Types::AccessPolicySummary
    AccountSettingsDetail.add_member(:capacity_limits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityLimits, location_name: 'capacityLimits'))
    AccountSettingsDetail.type = Types::AccountSettingsDetail
    BatchGetCollectionInput.add_member(:ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionIds, location_name: 'ids'))
    BatchGetCollectionInput.add_member(:names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionNames, location_name: 'names'))
    BatchGetCollectionInput.type = Types::BatchGetCollectionInput
    BatchGetCollectionOutput.add_member(:collection_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionDetails, location_name: 'collectionDetails'))
    BatchGetCollectionOutput.add_member(:collection_error_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionErrorDetails, location_name: 'collectionErrorDetails'))
    BatchGetCollectionOutput.type = Types::BatchGetCollectionOutput
    BatchGetEffectiveLifecyclePolicyRequest.add_member(:resource_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyResourceIdentifiers, location_name: 'resourceIdentifiers', traits: {"smithy.api#required" => {}}))
    BatchGetEffectiveLifecyclePolicyRequest.type = Types::BatchGetEffectiveLifecyclePolicyRequest
    BatchGetEffectiveLifecyclePolicyResponse.add_member(:effective_lifecycle_policy_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EffectiveLifecyclePolicyDetails, location_name: 'effectiveLifecyclePolicyDetails'))
    BatchGetEffectiveLifecyclePolicyResponse.add_member(:effective_lifecycle_policy_error_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EffectiveLifecyclePolicyErrorDetails, location_name: 'effectiveLifecyclePolicyErrorDetails'))
    BatchGetEffectiveLifecyclePolicyResponse.type = Types::BatchGetEffectiveLifecyclePolicyResponse
    BatchGetLifecyclePolicyRequest.add_member(:identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyIdentifiers, location_name: 'identifiers', traits: {"smithy.api#required" => {}}))
    BatchGetLifecyclePolicyRequest.type = Types::BatchGetLifecyclePolicyRequest
    BatchGetLifecyclePolicyResponse.add_member(:lifecycle_policy_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyDetails, location_name: 'lifecyclePolicyDetails'))
    BatchGetLifecyclePolicyResponse.add_member(:lifecycle_policy_error_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyErrorDetails, location_name: 'lifecyclePolicyErrorDetails'))
    BatchGetLifecyclePolicyResponse.type = Types::BatchGetLifecyclePolicyResponse
    BatchGetVpcEndpointInput.add_member(:ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointIds, location_name: 'ids', traits: {"smithy.api#required" => {}}))
    BatchGetVpcEndpointInput.type = Types::BatchGetVpcEndpointInput
    BatchGetVpcEndpointOutput.add_member(:vpc_endpoint_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointDetails, location_name: 'vpcEndpointDetails'))
    BatchGetVpcEndpointOutput.add_member(:vpc_endpoint_error_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointErrorDetails, location_name: 'vpcEndpointErrorDetails'))
    BatchGetVpcEndpointOutput.type = Types::BatchGetVpcEndpointOutput
    CapacityLimits.add_member(:max_indexing_capacity_in_ocu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexingCapacityValue, location_name: 'maxIndexingCapacityInOCU'))
    CapacityLimits.add_member(:max_search_capacity_in_ocu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchCapacityValue, location_name: 'maxSearchCapacityInOCU'))
    CapacityLimits.type = Types::CapacityLimits
    CollectionDetail.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: 'id'))
    CollectionDetail.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionName, location_name: 'name'))
    CollectionDetail.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionStatus, location_name: 'status'))
    CollectionDetail.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionType, location_name: 'type'))
    CollectionDetail.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'description'))
    CollectionDetail.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'arn'))
    CollectionDetail.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'kmsKeyArn'))
    CollectionDetail.add_member(:standby_replicas, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StandbyReplicas, location_name: 'standbyReplicas'))
    CollectionDetail.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'createdDate'))
    CollectionDetail.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'lastModifiedDate'))
    CollectionDetail.add_member(:collection_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'collectionEndpoint'))
    CollectionDetail.add_member(:dashboard_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'dashboardEndpoint'))
    CollectionDetail.add_member(:fips_endpoints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FipsEndpoints, location_name: 'fipsEndpoints'))
    CollectionDetail.add_member(:failure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'failureCode'))
    CollectionDetail.add_member(:failure_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'failureMessage'))
    CollectionDetail.type = Types::CollectionDetail
    CollectionDetails.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionDetail)
    CollectionErrorDetail.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: 'id'))
    CollectionErrorDetail.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionName, location_name: 'name'))
    CollectionErrorDetail.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'errorMessage'))
    CollectionErrorDetail.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'errorCode'))
    CollectionErrorDetail.type = Types::CollectionErrorDetail
    CollectionErrorDetails.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionErrorDetail)
    CollectionFilters.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionName, location_name: 'name'))
    CollectionFilters.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionStatus, location_name: 'status'))
    CollectionFilters.type = Types::CollectionFilters
    CollectionIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId)
    CollectionNames.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionName)
    CollectionSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionSummary)
    CollectionSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: 'id'))
    CollectionSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionName, location_name: 'name'))
    CollectionSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionStatus, location_name: 'status'))
    CollectionSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'arn'))
    CollectionSummary.type = Types::CollectionSummary
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ConflictException.type = Types::ConflictException
    CreateAccessPolicyInput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPolicyType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    CreateAccessPolicyInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateAccessPolicyInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDescription, location_name: 'description'))
    CreateAccessPolicyInput.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'policy', traits: {"smithy.api#required" => {}}))
    CreateAccessPolicyInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    CreateAccessPolicyInput.type = Types::CreateAccessPolicyInput
    CreateAccessPolicyOutput.add_member(:access_policy_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPolicyDetail, location_name: 'accessPolicyDetail'))
    CreateAccessPolicyOutput.type = Types::CreateAccessPolicyOutput
    CreateCollectionDetail.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: 'id'))
    CreateCollectionDetail.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionName, location_name: 'name'))
    CreateCollectionDetail.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionStatus, location_name: 'status'))
    CreateCollectionDetail.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionType, location_name: 'type'))
    CreateCollectionDetail.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'description'))
    CreateCollectionDetail.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'arn'))
    CreateCollectionDetail.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'kmsKeyArn'))
    CreateCollectionDetail.add_member(:standby_replicas, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StandbyReplicas, location_name: 'standbyReplicas'))
    CreateCollectionDetail.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'createdDate'))
    CreateCollectionDetail.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'lastModifiedDate'))
    CreateCollectionDetail.type = Types::CreateCollectionDetail
    CreateCollectionInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateCollectionInput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionType, location_name: 'type'))
    CreateCollectionInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'description', traits: {"smithy.api#length" => {"max" => 1000}}))
    CreateCollectionInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    CreateCollectionInput.add_member(:standby_replicas, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StandbyReplicas, location_name: 'standbyReplicas'))
    CreateCollectionInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    CreateCollectionInput.type = Types::CreateCollectionInput
    CreateCollectionOutput.add_member(:create_collection_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCollectionDetail, location_name: 'createCollectionDetail'))
    CreateCollectionOutput.type = Types::CreateCollectionOutput
    CreateIamIdentityCenterConfigOptions.add_member(:instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamIdentityCenterInstanceArn, location_name: 'instanceArn', traits: {"smithy.api#required" => {}}))
    CreateIamIdentityCenterConfigOptions.add_member(:user_attribute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamIdentityCenterUserAttribute, location_name: 'userAttribute'))
    CreateIamIdentityCenterConfigOptions.add_member(:group_attribute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamIdentityCenterGroupAttribute, location_name: 'groupAttribute'))
    CreateIamIdentityCenterConfigOptions.type = Types::CreateIamIdentityCenterConfigOptions
    CreateIndexRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    CreateIndexRequest.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: 'indexName', traits: {"smithy.api#required" => {}}))
    CreateIndexRequest.add_member(:index_schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexSchema, location_name: 'indexSchema'))
    CreateIndexRequest.type = Types::CreateIndexRequest
    CreateIndexResponse.type = Types::CreateIndexResponse
    CreateLifecyclePolicyRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    CreateLifecyclePolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateLifecyclePolicyRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDescription, location_name: 'description'))
    CreateLifecyclePolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'policy', traits: {"smithy.api#required" => {}}))
    CreateLifecyclePolicyRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    CreateLifecyclePolicyRequest.type = Types::CreateLifecyclePolicyRequest
    CreateLifecyclePolicyResponse.add_member(:lifecycle_policy_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyDetail, location_name: 'lifecyclePolicyDetail'))
    CreateLifecyclePolicyResponse.type = Types::CreateLifecyclePolicyResponse
    CreateSecurityConfigInput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityConfigType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    CreateSecurityConfigInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateSecurityConfigInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigDescription, location_name: 'description'))
    CreateSecurityConfigInput.add_member(:saml_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SamlConfigOptions, location_name: 'samlOptions'))
    CreateSecurityConfigInput.add_member(:iam_identity_center_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIamIdentityCenterConfigOptions, location_name: 'iamIdentityCenterOptions'))
    CreateSecurityConfigInput.add_member(:iam_federation_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamFederationConfigOptions, location_name: 'iamFederationOptions'))
    CreateSecurityConfigInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    CreateSecurityConfigInput.type = Types::CreateSecurityConfigInput
    CreateSecurityConfigOutput.add_member(:security_config_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityConfigDetail, location_name: 'securityConfigDetail'))
    CreateSecurityConfigOutput.type = Types::CreateSecurityConfigOutput
    CreateSecurityPolicyInput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityPolicyType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    CreateSecurityPolicyInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateSecurityPolicyInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDescription, location_name: 'description'))
    CreateSecurityPolicyInput.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'policy', traits: {"smithy.api#required" => {}}))
    CreateSecurityPolicyInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    CreateSecurityPolicyInput.type = Types::CreateSecurityPolicyInput
    CreateSecurityPolicyOutput.add_member(:security_policy_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityPolicyDetail, location_name: 'securityPolicyDetail'))
    CreateSecurityPolicyOutput.type = Types::CreateSecurityPolicyOutput
    CreateVpcEndpointDetail.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: 'id'))
    CreateVpcEndpointDetail.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointName, location_name: 'name'))
    CreateVpcEndpointDetail.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointStatus, location_name: 'status'))
    CreateVpcEndpointDetail.type = Types::CreateVpcEndpointDetail
    CreateVpcEndpointInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateVpcEndpointInput.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcId', traits: {"smithy.api#required" => {}}))
    CreateVpcEndpointInput.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'subnetIds', traits: {"smithy.api#required" => {}}))
    CreateVpcEndpointInput.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: 'securityGroupIds'))
    CreateVpcEndpointInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    CreateVpcEndpointInput.type = Types::CreateVpcEndpointInput
    CreateVpcEndpointOutput.add_member(:create_vpc_endpoint_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVpcEndpointDetail, location_name: 'createVpcEndpointDetail'))
    CreateVpcEndpointOutput.type = Types::CreateVpcEndpointOutput
    DeleteAccessPolicyInput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPolicyType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    DeleteAccessPolicyInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    DeleteAccessPolicyInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    DeleteAccessPolicyInput.type = Types::DeleteAccessPolicyInput
    DeleteAccessPolicyOutput.type = Types::DeleteAccessPolicyOutput
    DeleteCollectionDetail.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: 'id'))
    DeleteCollectionDetail.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionName, location_name: 'name'))
    DeleteCollectionDetail.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionStatus, location_name: 'status'))
    DeleteCollectionDetail.type = Types::DeleteCollectionDetail
    DeleteCollectionInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    DeleteCollectionInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteCollectionInput.type = Types::DeleteCollectionInput
    DeleteCollectionOutput.add_member(:delete_collection_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCollectionDetail, location_name: 'deleteCollectionDetail'))
    DeleteCollectionOutput.type = Types::DeleteCollectionOutput
    DeleteIndexRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    DeleteIndexRequest.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: 'indexName', traits: {"smithy.api#required" => {}}))
    DeleteIndexRequest.type = Types::DeleteIndexRequest
    DeleteIndexResponse.type = Types::DeleteIndexResponse
    DeleteLifecyclePolicyRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    DeleteLifecyclePolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    DeleteLifecyclePolicyRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    DeleteLifecyclePolicyRequest.type = Types::DeleteLifecyclePolicyRequest
    DeleteLifecyclePolicyResponse.type = Types::DeleteLifecyclePolicyResponse
    DeleteSecurityConfigInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityConfigId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    DeleteSecurityConfigInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    DeleteSecurityConfigInput.type = Types::DeleteSecurityConfigInput
    DeleteSecurityConfigOutput.type = Types::DeleteSecurityConfigOutput
    DeleteSecurityPolicyInput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityPolicyType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    DeleteSecurityPolicyInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    DeleteSecurityPolicyInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    DeleteSecurityPolicyInput.type = Types::DeleteSecurityPolicyInput
    DeleteSecurityPolicyOutput.type = Types::DeleteSecurityPolicyOutput
    DeleteVpcEndpointDetail.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: 'id'))
    DeleteVpcEndpointDetail.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointName, location_name: 'name'))
    DeleteVpcEndpointDetail.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointStatus, location_name: 'status'))
    DeleteVpcEndpointDetail.type = Types::DeleteVpcEndpointDetail
    DeleteVpcEndpointInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    DeleteVpcEndpointInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    DeleteVpcEndpointInput.type = Types::DeleteVpcEndpointInput
    DeleteVpcEndpointOutput.add_member(:delete_vpc_endpoint_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVpcEndpointDetail, location_name: 'deleteVpcEndpointDetail'))
    DeleteVpcEndpointOutput.type = Types::DeleteVpcEndpointOutput
    EffectiveLifecyclePolicyDetail.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyType, location_name: 'type'))
    EffectiveLifecyclePolicyDetail.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resource, location_name: 'resource'))
    EffectiveLifecyclePolicyDetail.add_member(:policy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'policyName'))
    EffectiveLifecyclePolicyDetail.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType'))
    EffectiveLifecyclePolicyDetail.add_member(:retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'retentionPeriod'))
    EffectiveLifecyclePolicyDetail.add_member(:no_min_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'noMinRetentionPeriod'))
    EffectiveLifecyclePolicyDetail.type = Types::EffectiveLifecyclePolicyDetail
    EffectiveLifecyclePolicyDetails.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EffectiveLifecyclePolicyDetail)
    EffectiveLifecyclePolicyErrorDetail.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyType, location_name: 'type'))
    EffectiveLifecyclePolicyErrorDetail.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resource, location_name: 'resource'))
    EffectiveLifecyclePolicyErrorDetail.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'errorMessage'))
    EffectiveLifecyclePolicyErrorDetail.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'errorCode'))
    EffectiveLifecyclePolicyErrorDetail.type = Types::EffectiveLifecyclePolicyErrorDetail
    EffectiveLifecyclePolicyErrorDetails.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EffectiveLifecyclePolicyErrorDetail)
    FipsEndpoints.add_member(:collection_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'collectionEndpoint'))
    FipsEndpoints.add_member(:dashboard_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'dashboardEndpoint'))
    FipsEndpoints.type = Types::FipsEndpoints
    GetAccessPolicyInput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPolicyType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    GetAccessPolicyInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetAccessPolicyInput.type = Types::GetAccessPolicyInput
    GetAccessPolicyOutput.add_member(:access_policy_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPolicyDetail, location_name: 'accessPolicyDetail'))
    GetAccessPolicyOutput.type = Types::GetAccessPolicyOutput
    GetAccountSettingsInput.type = Types::GetAccountSettingsInput
    GetAccountSettingsOutput.add_member(:account_settings_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSettingsDetail, location_name: 'accountSettingsDetail'))
    GetAccountSettingsOutput.type = Types::GetAccountSettingsOutput
    GetIndexRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    GetIndexRequest.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: 'indexName', traits: {"smithy.api#required" => {}}))
    GetIndexRequest.type = Types::GetIndexRequest
    GetIndexResponse.add_member(:index_schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexSchema, location_name: 'indexSchema'))
    GetIndexResponse.type = Types::GetIndexResponse
    GetPoliciesStatsInput.type = Types::GetPoliciesStatsInput
    GetPoliciesStatsOutput.add_member(:access_policy_stats, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPolicyStats, location_name: 'AccessPolicyStats'))
    GetPoliciesStatsOutput.add_member(:security_policy_stats, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityPolicyStats, location_name: 'SecurityPolicyStats'))
    GetPoliciesStatsOutput.add_member(:security_config_stats, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityConfigStats, location_name: 'SecurityConfigStats'))
    GetPoliciesStatsOutput.add_member(:lifecycle_policy_stats, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyStats, location_name: 'LifecyclePolicyStats'))
    GetPoliciesStatsOutput.add_member(:total_policy_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'TotalPolicyCount'))
    GetPoliciesStatsOutput.type = Types::GetPoliciesStatsOutput
    GetSecurityConfigInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityConfigId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    GetSecurityConfigInput.type = Types::GetSecurityConfigInput
    GetSecurityConfigOutput.add_member(:security_config_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityConfigDetail, location_name: 'securityConfigDetail'))
    GetSecurityConfigOutput.type = Types::GetSecurityConfigOutput
    GetSecurityPolicyInput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityPolicyType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    GetSecurityPolicyInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetSecurityPolicyInput.type = Types::GetSecurityPolicyInput
    GetSecurityPolicyOutput.add_member(:security_policy_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityPolicyDetail, location_name: 'securityPolicyDetail'))
    GetSecurityPolicyOutput.type = Types::GetSecurityPolicyOutput
    IamFederationConfigOptions.add_member(:group_attribute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamFederationGroupAttribute, location_name: 'groupAttribute'))
    IamFederationConfigOptions.add_member(:user_attribute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamFederationUserAttribute, location_name: 'userAttribute'))
    IamFederationConfigOptions.type = Types::IamFederationConfigOptions
    IamIdentityCenterConfigOptions.add_member(:instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamIdentityCenterInstanceArn, location_name: 'instanceArn'))
    IamIdentityCenterConfigOptions.add_member(:application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamIdentityCenterApplicationArn, location_name: 'applicationArn'))
    IamIdentityCenterConfigOptions.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'applicationName'))
    IamIdentityCenterConfigOptions.add_member(:application_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'applicationDescription'))
    IamIdentityCenterConfigOptions.add_member(:user_attribute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamIdentityCenterUserAttribute, location_name: 'userAttribute'))
    IamIdentityCenterConfigOptions.add_member(:group_attribute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamIdentityCenterGroupAttribute, location_name: 'groupAttribute'))
    IamIdentityCenterConfigOptions.type = Types::IamIdentityCenterConfigOptions
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    InternalServerException.type = Types::InternalServerException
    LifecyclePolicyDetail.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyType, location_name: 'type'))
    LifecyclePolicyDetail.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'name'))
    LifecyclePolicyDetail.add_member(:policy_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyVersion, location_name: 'policyVersion'))
    LifecyclePolicyDetail.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDescription, location_name: 'description'))
    LifecyclePolicyDetail.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Document, location_name: 'policy'))
    LifecyclePolicyDetail.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'createdDate'))
    LifecyclePolicyDetail.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'lastModifiedDate'))
    LifecyclePolicyDetail.type = Types::LifecyclePolicyDetail
    LifecyclePolicyDetails.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyDetail)
    LifecyclePolicyErrorDetail.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyType, location_name: 'type'))
    LifecyclePolicyErrorDetail.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'name'))
    LifecyclePolicyErrorDetail.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'errorMessage'))
    LifecyclePolicyErrorDetail.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'errorCode'))
    LifecyclePolicyErrorDetail.type = Types::LifecyclePolicyErrorDetail
    LifecyclePolicyErrorDetails.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyErrorDetail)
    LifecyclePolicyIdentifier.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    LifecyclePolicyIdentifier.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    LifecyclePolicyIdentifier.type = Types::LifecyclePolicyIdentifier
    LifecyclePolicyIdentifiers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyIdentifier)
    LifecyclePolicyResourceIdentifier.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    LifecyclePolicyResourceIdentifier.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'resource', traits: {"smithy.api#required" => {}}))
    LifecyclePolicyResourceIdentifier.type = Types::LifecyclePolicyResourceIdentifier
    LifecyclePolicyResourceIdentifiers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyResourceIdentifier)
    LifecyclePolicyStats.add_member(:retention_policy_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'RetentionPolicyCount'))
    LifecyclePolicyStats.type = Types::LifecyclePolicyStats
    LifecyclePolicySummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicySummary)
    LifecyclePolicySummary.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyType, location_name: 'type'))
    LifecyclePolicySummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'name'))
    LifecyclePolicySummary.add_member(:policy_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyVersion, location_name: 'policyVersion'))
    LifecyclePolicySummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDescription, location_name: 'description'))
    LifecyclePolicySummary.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'createdDate'))
    LifecyclePolicySummary.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'lastModifiedDate'))
    LifecyclePolicySummary.type = Types::LifecyclePolicySummary
    LifecycleResourceFilter.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecycleResource)
    ListAccessPoliciesInput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPolicyType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    ListAccessPoliciesInput.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceFilter, location_name: 'resource', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}}))
    ListAccessPoliciesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken'))
    ListAccessPoliciesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListAccessPoliciesInput.type = Types::ListAccessPoliciesInput
    ListAccessPoliciesOutput.add_member(:access_policy_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPolicySummaries, location_name: 'accessPolicySummaries'))
    ListAccessPoliciesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken'))
    ListAccessPoliciesOutput.type = Types::ListAccessPoliciesOutput
    ListCollectionsInput.add_member(:collection_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionFilters, location_name: 'collectionFilters'))
    ListCollectionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken'))
    ListCollectionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListCollectionsInput.type = Types::ListCollectionsInput
    ListCollectionsOutput.add_member(:collection_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionSummaries, location_name: 'collectionSummaries'))
    ListCollectionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken'))
    ListCollectionsOutput.type = Types::ListCollectionsOutput
    ListLifecyclePoliciesRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    ListLifecyclePoliciesRequest.add_member(:resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecycleResourceFilter, location_name: 'resources', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}}))
    ListLifecyclePoliciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken'))
    ListLifecyclePoliciesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListLifecyclePoliciesRequest.type = Types::ListLifecyclePoliciesRequest
    ListLifecyclePoliciesResponse.add_member(:lifecycle_policy_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicySummaries, location_name: 'lifecyclePolicySummaries'))
    ListLifecyclePoliciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken'))
    ListLifecyclePoliciesResponse.type = Types::ListLifecyclePoliciesResponse
    ListSecurityConfigsInput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityConfigType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    ListSecurityConfigsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken'))
    ListSecurityConfigsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListSecurityConfigsInput.type = Types::ListSecurityConfigsInput
    ListSecurityConfigsOutput.add_member(:security_config_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityConfigSummaries, location_name: 'securityConfigSummaries'))
    ListSecurityConfigsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken'))
    ListSecurityConfigsOutput.type = Types::ListSecurityConfigsOutput
    ListSecurityPoliciesInput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityPolicyType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    ListSecurityPoliciesInput.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceFilter, location_name: 'resource', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}}))
    ListSecurityPoliciesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken'))
    ListSecurityPoliciesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListSecurityPoliciesInput.type = Types::ListSecurityPoliciesInput
    ListSecurityPoliciesOutput.add_member(:security_policy_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityPolicySummaries, location_name: 'securityPolicySummaries'))
    ListSecurityPoliciesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken'))
    ListSecurityPoliciesOutput.type = Types::ListSecurityPoliciesOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListVpcEndpointsInput.add_member(:vpc_endpoint_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointFilters, location_name: 'vpcEndpointFilters'))
    ListVpcEndpointsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken'))
    ListVpcEndpointsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListVpcEndpointsInput.type = Types::ListVpcEndpointsInput
    ListVpcEndpointsOutput.add_member(:vpc_endpoint_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointSummaries, location_name: 'vpcEndpointSummaries'))
    ListVpcEndpointsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken'))
    ListVpcEndpointsOutput.type = Types::ListVpcEndpointsOutput
    OcuLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    OcuLimitExceededException.type = Types::OcuLimitExceededException
    ResourceFilter.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resource)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SamlConfigOptions.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SamlMetadata, location_name: 'metadata', traits: {"smithy.api#required" => {}}))
    SamlConfigOptions.add_member(:user_attribute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SamlUserAttribute, location_name: 'userAttribute'))
    SamlConfigOptions.add_member(:group_attribute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SamlGroupAttribute, location_name: 'groupAttribute'))
    SamlConfigOptions.add_member(:open_search_serverless_entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpenSearchServerlessEntityId, location_name: 'openSearchServerlessEntityId'))
    SamlConfigOptions.add_member(:session_timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'sessionTimeout', traits: {"smithy.api#range" => {"min" => 5, "max" => 720}}))
    SamlConfigOptions.type = Types::SamlConfigOptions
    SecurityConfigDetail.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityConfigId, location_name: 'id'))
    SecurityConfigDetail.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityConfigType, location_name: 'type'))
    SecurityConfigDetail.add_member(:config_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyVersion, location_name: 'configVersion'))
    SecurityConfigDetail.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigDescription, location_name: 'description'))
    SecurityConfigDetail.add_member(:saml_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SamlConfigOptions, location_name: 'samlOptions'))
    SecurityConfigDetail.add_member(:iam_identity_center_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamIdentityCenterConfigOptions, location_name: 'iamIdentityCenterOptions'))
    SecurityConfigDetail.add_member(:iam_federation_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamFederationConfigOptions, location_name: 'iamFederationOptions'))
    SecurityConfigDetail.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'createdDate'))
    SecurityConfigDetail.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'lastModifiedDate'))
    SecurityConfigDetail.type = Types::SecurityConfigDetail
    SecurityConfigStats.add_member(:saml_config_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'SamlConfigCount'))
    SecurityConfigStats.type = Types::SecurityConfigStats
    SecurityConfigSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityConfigSummary)
    SecurityConfigSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityConfigId, location_name: 'id'))
    SecurityConfigSummary.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityConfigType, location_name: 'type'))
    SecurityConfigSummary.add_member(:config_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyVersion, location_name: 'configVersion'))
    SecurityConfigSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigDescription, location_name: 'description'))
    SecurityConfigSummary.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'createdDate'))
    SecurityConfigSummary.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'lastModifiedDate'))
    SecurityConfigSummary.type = Types::SecurityConfigSummary
    SecurityGroupIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId)
    SecurityPolicyDetail.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityPolicyType, location_name: 'type'))
    SecurityPolicyDetail.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'name'))
    SecurityPolicyDetail.add_member(:policy_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyVersion, location_name: 'policyVersion'))
    SecurityPolicyDetail.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDescription, location_name: 'description'))
    SecurityPolicyDetail.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Document, location_name: 'policy'))
    SecurityPolicyDetail.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'createdDate'))
    SecurityPolicyDetail.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'lastModifiedDate'))
    SecurityPolicyDetail.type = Types::SecurityPolicyDetail
    SecurityPolicyStats.add_member(:encryption_policy_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'EncryptionPolicyCount'))
    SecurityPolicyStats.add_member(:network_policy_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'NetworkPolicyCount'))
    SecurityPolicyStats.type = Types::SecurityPolicyStats
    SecurityPolicySummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityPolicySummary)
    SecurityPolicySummary.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityPolicyType, location_name: 'type'))
    SecurityPolicySummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'name'))
    SecurityPolicySummary.add_member(:policy_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyVersion, location_name: 'policyVersion'))
    SecurityPolicySummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDescription, location_name: 'description'))
    SecurityPolicySummary.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'createdDate'))
    SecurityPolicySummary.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'lastModifiedDate'))
    SecurityPolicySummary.type = Types::SecurityPolicySummary
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId'))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType'))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceCode', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'quotaCode'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SubnetIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId)
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'key', traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'value', traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    Tags.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'tagKeys', traits: {"smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateAccessPolicyInput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPolicyType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    UpdateAccessPolicyInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    UpdateAccessPolicyInput.add_member(:policy_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyVersion, location_name: 'policyVersion', traits: {"smithy.api#required" => {}}))
    UpdateAccessPolicyInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDescription, location_name: 'description'))
    UpdateAccessPolicyInput.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'policy'))
    UpdateAccessPolicyInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    UpdateAccessPolicyInput.type = Types::UpdateAccessPolicyInput
    UpdateAccessPolicyOutput.add_member(:access_policy_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPolicyDetail, location_name: 'accessPolicyDetail'))
    UpdateAccessPolicyOutput.type = Types::UpdateAccessPolicyOutput
    UpdateAccountSettingsInput.add_member(:capacity_limits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityLimits, location_name: 'capacityLimits'))
    UpdateAccountSettingsInput.type = Types::UpdateAccountSettingsInput
    UpdateAccountSettingsOutput.add_member(:account_settings_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSettingsDetail, location_name: 'accountSettingsDetail'))
    UpdateAccountSettingsOutput.type = Types::UpdateAccountSettingsOutput
    UpdateCollectionDetail.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: 'id'))
    UpdateCollectionDetail.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionName, location_name: 'name'))
    UpdateCollectionDetail.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionStatus, location_name: 'status'))
    UpdateCollectionDetail.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionType, location_name: 'type'))
    UpdateCollectionDetail.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'description'))
    UpdateCollectionDetail.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'arn'))
    UpdateCollectionDetail.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'createdDate'))
    UpdateCollectionDetail.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'lastModifiedDate'))
    UpdateCollectionDetail.type = Types::UpdateCollectionDetail
    UpdateCollectionInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    UpdateCollectionInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'description', traits: {"smithy.api#length" => {"max" => 1000}}))
    UpdateCollectionInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    UpdateCollectionInput.type = Types::UpdateCollectionInput
    UpdateCollectionOutput.add_member(:update_collection_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCollectionDetail, location_name: 'updateCollectionDetail'))
    UpdateCollectionOutput.type = Types::UpdateCollectionOutput
    UpdateIamIdentityCenterConfigOptions.add_member(:user_attribute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamIdentityCenterUserAttribute, location_name: 'userAttribute'))
    UpdateIamIdentityCenterConfigOptions.add_member(:group_attribute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamIdentityCenterGroupAttribute, location_name: 'groupAttribute'))
    UpdateIamIdentityCenterConfigOptions.type = Types::UpdateIamIdentityCenterConfigOptions
    UpdateIndexRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    UpdateIndexRequest.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: 'indexName', traits: {"smithy.api#required" => {}}))
    UpdateIndexRequest.add_member(:index_schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexSchema, location_name: 'indexSchema'))
    UpdateIndexRequest.type = Types::UpdateIndexRequest
    UpdateIndexResponse.type = Types::UpdateIndexResponse
    UpdateLifecyclePolicyRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    UpdateLifecyclePolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    UpdateLifecyclePolicyRequest.add_member(:policy_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyVersion, location_name: 'policyVersion', traits: {"smithy.api#required" => {}}))
    UpdateLifecyclePolicyRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDescription, location_name: 'description'))
    UpdateLifecyclePolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'policy'))
    UpdateLifecyclePolicyRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    UpdateLifecyclePolicyRequest.type = Types::UpdateLifecyclePolicyRequest
    UpdateLifecyclePolicyResponse.add_member(:lifecycle_policy_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicyDetail, location_name: 'lifecyclePolicyDetail'))
    UpdateLifecyclePolicyResponse.type = Types::UpdateLifecyclePolicyResponse
    UpdateSecurityConfigInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityConfigId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    UpdateSecurityConfigInput.add_member(:config_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyVersion, location_name: 'configVersion', traits: {"smithy.api#required" => {}}))
    UpdateSecurityConfigInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigDescription, location_name: 'description'))
    UpdateSecurityConfigInput.add_member(:saml_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SamlConfigOptions, location_name: 'samlOptions'))
    UpdateSecurityConfigInput.add_member(:iam_identity_center_options_updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIamIdentityCenterConfigOptions, location_name: 'iamIdentityCenterOptionsUpdates'))
    UpdateSecurityConfigInput.add_member(:iam_federation_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamFederationConfigOptions, location_name: 'iamFederationOptions'))
    UpdateSecurityConfigInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    UpdateSecurityConfigInput.type = Types::UpdateSecurityConfigInput
    UpdateSecurityConfigOutput.add_member(:security_config_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityConfigDetail, location_name: 'securityConfigDetail'))
    UpdateSecurityConfigOutput.type = Types::UpdateSecurityConfigOutput
    UpdateSecurityPolicyInput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityPolicyType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    UpdateSecurityPolicyInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    UpdateSecurityPolicyInput.add_member(:policy_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyVersion, location_name: 'policyVersion', traits: {"smithy.api#required" => {}}))
    UpdateSecurityPolicyInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDescription, location_name: 'description'))
    UpdateSecurityPolicyInput.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'policy'))
    UpdateSecurityPolicyInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    UpdateSecurityPolicyInput.type = Types::UpdateSecurityPolicyInput
    UpdateSecurityPolicyOutput.add_member(:security_policy_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityPolicyDetail, location_name: 'securityPolicyDetail'))
    UpdateSecurityPolicyOutput.type = Types::UpdateSecurityPolicyOutput
    UpdateVpcEndpointDetail.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: 'id'))
    UpdateVpcEndpointDetail.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointName, location_name: 'name'))
    UpdateVpcEndpointDetail.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointStatus, location_name: 'status'))
    UpdateVpcEndpointDetail.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'subnetIds'))
    UpdateVpcEndpointDetail.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: 'securityGroupIds'))
    UpdateVpcEndpointDetail.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'lastModifiedDate'))
    UpdateVpcEndpointDetail.type = Types::UpdateVpcEndpointDetail
    UpdateVpcEndpointInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    UpdateVpcEndpointInput.add_member(:add_subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'addSubnetIds'))
    UpdateVpcEndpointInput.add_member(:remove_subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'removeSubnetIds'))
    UpdateVpcEndpointInput.add_member(:add_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: 'addSecurityGroupIds'))
    UpdateVpcEndpointInput.add_member(:remove_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: 'removeSecurityGroupIds'))
    UpdateVpcEndpointInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    UpdateVpcEndpointInput.type = Types::UpdateVpcEndpointInput
    UpdateVpcEndpointOutput.add_member(:update_vpc_endpoint_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVpcEndpointDetail, location_name: 'UpdateVpcEndpointDetail'))
    UpdateVpcEndpointOutput.type = Types::UpdateVpcEndpointOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ValidationException.type = Types::ValidationException
    VpcEndpointDetail.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: 'id'))
    VpcEndpointDetail.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointName, location_name: 'name'))
    VpcEndpointDetail.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcId'))
    VpcEndpointDetail.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'subnetIds'))
    VpcEndpointDetail.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: 'securityGroupIds'))
    VpcEndpointDetail.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointStatus, location_name: 'status'))
    VpcEndpointDetail.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'createdDate'))
    VpcEndpointDetail.add_member(:failure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'failureCode'))
    VpcEndpointDetail.add_member(:failure_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'failureMessage'))
    VpcEndpointDetail.type = Types::VpcEndpointDetail
    VpcEndpointDetails.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointDetail)
    VpcEndpointErrorDetail.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: 'id'))
    VpcEndpointErrorDetail.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'errorMessage'))
    VpcEndpointErrorDetail.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'errorCode'))
    VpcEndpointErrorDetail.type = Types::VpcEndpointErrorDetail
    VpcEndpointErrorDetails.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointErrorDetail)
    VpcEndpointFilters.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointStatus, location_name: 'status'))
    VpcEndpointFilters.type = Types::VpcEndpointFilters
    VpcEndpointIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId)
    VpcEndpointSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointSummary)
    VpcEndpointSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: 'id'))
    VpcEndpointSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointName, location_name: 'name'))
    VpcEndpointSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointStatus, location_name: 'status'))
    VpcEndpointSummary.type = Types::VpcEndpointSummary

    OpenSearchServerless = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.opensearchserverless#OpenSearchServerless"
      service.name = "OpenSearchServerless"
      service.version = "2021-11-01"
      service.traits = {"aws.api#service" => {"sdkId" => "OpenSearchServerless", "arnNamespace" => "aoss"}, "aws.auth#sigv4" => {"name" => "aoss"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "OpenSearch Service Serverless"}
      service.add_operation(:batch_get_collection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#BatchGetCollection"
        operation.name = "BatchGetCollection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetCollectionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetCollectionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:batch_get_effective_lifecycle_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#BatchGetEffectiveLifecyclePolicy"
        operation.name = "BatchGetEffectiveLifecyclePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetEffectiveLifecyclePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetEffectiveLifecyclePolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:batch_get_lifecycle_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#BatchGetLifecyclePolicy"
        operation.name = "BatchGetLifecyclePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetLifecyclePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetLifecyclePolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:batch_get_vpc_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#BatchGetVpcEndpoint"
        operation.name = "BatchGetVpcEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetVpcEndpointInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetVpcEndpointOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:create_access_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#CreateAccessPolicy"
        operation.name = "CreateAccessPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccessPolicyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccessPolicyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_collection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#CreateCollection"
        operation.name = "CreateCollection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCollectionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCollectionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OcuLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_index, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#CreateIndex"
        operation.name = "CreateIndex"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIndexRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIndexResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_lifecycle_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#CreateLifecyclePolicy"
        operation.name = "CreateLifecyclePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLifecyclePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLifecyclePolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_security_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#CreateSecurityConfig"
        operation.name = "CreateSecurityConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSecurityConfigInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSecurityConfigOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_security_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#CreateSecurityPolicy"
        operation.name = "CreateSecurityPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSecurityPolicyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSecurityPolicyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_vpc_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#CreateVpcEndpoint"
        operation.name = "CreateVpcEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVpcEndpointInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVpcEndpointOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_access_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#DeleteAccessPolicy"
        operation.name = "DeleteAccessPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAccessPolicyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAccessPolicyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_collection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#DeleteCollection"
        operation.name = "DeleteCollection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCollectionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCollectionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_index, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#DeleteIndex"
        operation.name = "DeleteIndex"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIndexRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIndexResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_lifecycle_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#DeleteLifecyclePolicy"
        operation.name = "DeleteLifecyclePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLifecyclePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLifecyclePolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_security_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#DeleteSecurityConfig"
        operation.name = "DeleteSecurityConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSecurityConfigInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSecurityConfigOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_security_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#DeleteSecurityPolicy"
        operation.name = "DeleteSecurityPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSecurityPolicyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSecurityPolicyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_vpc_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#DeleteVpcEndpoint"
        operation.name = "DeleteVpcEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVpcEndpointInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVpcEndpointOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_access_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#GetAccessPolicy"
        operation.name = "GetAccessPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessPolicyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessPolicyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_account_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#GetAccountSettings"
        operation.name = "GetAccountSettings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountSettingsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountSettingsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_index, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#GetIndex"
        operation.name = "GetIndex"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetIndexRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetIndexResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_policies_stats, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#GetPoliciesStats"
        operation.name = "GetPoliciesStats"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPoliciesStatsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPoliciesStatsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_security_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#GetSecurityConfig"
        operation.name = "GetSecurityConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSecurityConfigInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSecurityConfigOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_security_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#GetSecurityPolicy"
        operation.name = "GetSecurityPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSecurityPolicyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSecurityPolicyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_access_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#ListAccessPolicies"
        operation.name = "ListAccessPolicies"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessPoliciesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessPoliciesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAccessPolicies.new
      end)
      service.add_operation(:list_collections, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#ListCollections"
        operation.name = "ListCollections"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCollectionsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCollectionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCollections.new
      end)
      service.add_operation(:list_lifecycle_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#ListLifecyclePolicies"
        operation.name = "ListLifecyclePolicies"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLifecyclePoliciesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLifecyclePoliciesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListLifecyclePolicies.new
      end)
      service.add_operation(:list_security_configs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#ListSecurityConfigs"
        operation.name = "ListSecurityConfigs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSecurityConfigsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSecurityConfigsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSecurityConfigs.new
      end)
      service.add_operation(:list_security_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#ListSecurityPolicies"
        operation.name = "ListSecurityPolicies"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSecurityPoliciesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSecurityPoliciesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSecurityPolicies.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_vpc_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#ListVpcEndpoints"
        operation.name = "ListVpcEndpoints"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVpcEndpointsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVpcEndpointsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListVpcEndpoints.new
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_access_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#UpdateAccessPolicy"
        operation.name = "UpdateAccessPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccessPolicyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccessPolicyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_account_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#UpdateAccountSettings"
        operation.name = "UpdateAccountSettings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccountSettingsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccountSettingsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_collection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#UpdateCollection"
        operation.name = "UpdateCollection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCollectionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCollectionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_index, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#UpdateIndex"
        operation.name = "UpdateIndex"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIndexRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIndexResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_lifecycle_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#UpdateLifecyclePolicy"
        operation.name = "UpdateLifecyclePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLifecyclePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLifecyclePolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_security_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#UpdateSecurityConfig"
        operation.name = "UpdateSecurityConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSecurityConfigInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSecurityConfigOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_security_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#UpdateSecurityPolicy"
        operation.name = "UpdateSecurityPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSecurityPolicyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSecurityPolicyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_vpc_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#UpdateVpcEndpoint"
        operation.name = "UpdateVpcEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVpcEndpointInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVpcEndpointOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
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
