# frozen_string_literal: true

# This is generated code!

module Aws::OpenSearchServerless
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessPolicyDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#AccessPolicyDetail", name: "AccessPolicyDetail")
    AccessPolicyStats = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#AccessPolicyStats", name: "AccessPolicyStats")
    AccessPolicySummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.opensearchserverless#AccessPolicySummaries", name: "AccessPolicySummaries")
    AccessPolicySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#AccessPolicySummary", name: "AccessPolicySummary")
    AccessPolicyType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#AccessPolicyType", name: "AccessPolicyType", traits: {"smithy.api#enum" => [{"name" => "data", "value" => "data", "documentation" => "data policy type"}]})
    AccountSettingsDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#AccountSettingsDetail", name: "AccountSettingsDetail")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    AutoscalingStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#AutoscalingStatus", name: "AutoscalingStatus", traits: {"smithy.api#enum" => [{"value" => "ACTION_SCALING_UP", "name" => "ACTION_SCALING_UP"}, {"value" => "ACTION_SCALING_DOWN", "name" => "ACTION_SCALING_DOWN"}, {"value" => "NO_ACTION", "name" => "NO_ACTION"}]})
    BatchGetCollectionGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#BatchGetCollectionGroupRequest", name: "BatchGetCollectionGroupRequest")
    BatchGetCollectionGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#BatchGetCollectionGroupResponse", name: "BatchGetCollectionGroupResponse")
    BatchGetCollectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#BatchGetCollectionInput", name: "BatchGetCollectionInput")
    BatchGetCollectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#BatchGetCollectionOutput", name: "BatchGetCollectionOutput")
    BatchGetEffectiveLifecyclePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#BatchGetEffectiveLifecyclePolicyRequest", name: "BatchGetEffectiveLifecyclePolicyRequest")
    BatchGetEffectiveLifecyclePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#BatchGetEffectiveLifecyclePolicyResponse", name: "BatchGetEffectiveLifecyclePolicyResponse")
    BatchGetLifecyclePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#BatchGetLifecyclePolicyRequest", name: "BatchGetLifecyclePolicyRequest")
    BatchGetLifecyclePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#BatchGetLifecyclePolicyResponse", name: "BatchGetLifecyclePolicyResponse")
    BatchGetVpcEndpointInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#BatchGetVpcEndpointInput", name: "BatchGetVpcEndpointInput")
    BatchGetVpcEndpointOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#BatchGetVpcEndpointOutput", name: "BatchGetVpcEndpointOutput")
    CapacityDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#CapacityDetails", name: "CapacityDetails")
    CapacityLimits = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#CapacityLimits", name: "CapacityLimits")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    CollectionDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#CollectionDetail", name: "CollectionDetail")
    CollectionDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.opensearchserverless#CollectionDetails", name: "CollectionDetails")
    CollectionErrorDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#CollectionErrorDetail", name: "CollectionErrorDetail")
    CollectionErrorDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.opensearchserverless#CollectionErrorDetails", name: "CollectionErrorDetails")
    CollectionFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#CollectionFilters", name: "CollectionFilters")
    CollectionGroupCapacityLimits = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#CollectionGroupCapacityLimits", name: "CollectionGroupCapacityLimits")
    CollectionGroupDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#CollectionGroupDetail", name: "CollectionGroupDetail")
    CollectionGroupDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.opensearchserverless#CollectionGroupDetails", name: "CollectionGroupDetails")
    CollectionGroupErrorDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#CollectionGroupErrorDetail", name: "CollectionGroupErrorDetail")
    CollectionGroupErrorDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.opensearchserverless#CollectionGroupErrorDetails", name: "CollectionGroupErrorDetails")
    CollectionGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#CollectionGroupId", name: "CollectionGroupId", traits: {"smithy.api#length" => {"min" => 3, "max" => 40}, "smithy.api#pattern" => "^[a-z0-9]{3,40}$"})
    CollectionGroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.opensearchserverless#CollectionGroupIds", name: "CollectionGroupIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    CollectionGroupMaxIndexingCapacityValue = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.opensearchserverless#CollectionGroupMaxIndexingCapacityValue", name: "CollectionGroupMaxIndexingCapacityValue", traits: {"smithy.api#range" => {"min" => 1}})
    CollectionGroupMaxSearchCapacityValue = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.opensearchserverless#CollectionGroupMaxSearchCapacityValue", name: "CollectionGroupMaxSearchCapacityValue", traits: {"smithy.api#range" => {"min" => 1}})
    CollectionGroupMinIndexingCapacityValue = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.opensearchserverless#CollectionGroupMinIndexingCapacityValue", name: "CollectionGroupMinIndexingCapacityValue", traits: {"smithy.api#range" => {"min" => 0}})
    CollectionGroupMinSearchCapacityValue = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.opensearchserverless#CollectionGroupMinSearchCapacityValue", name: "CollectionGroupMinSearchCapacityValue", traits: {"smithy.api#range" => {"min" => 0}})
    CollectionGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#CollectionGroupName", name: "CollectionGroupName", traits: {"smithy.api#length" => {"min" => 3, "max" => 32}, "smithy.api#pattern" => "^[a-z][a-z0-9-]+$"})
    CollectionGroupNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.opensearchserverless#CollectionGroupNames", name: "CollectionGroupNames", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    CollectionGroupSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.opensearchserverless#CollectionGroupSummaries", name: "CollectionGroupSummaries")
    CollectionGroupSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#CollectionGroupSummary", name: "CollectionGroupSummary")
    CollectionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#CollectionId", name: "CollectionId", traits: {"smithy.api#length" => {"min" => 3, "max" => 40}, "smithy.api#pattern" => "^[a-z0-9]{3,40}$"})
    CollectionIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.opensearchserverless#CollectionIds", name: "CollectionIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    CollectionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#CollectionName", name: "CollectionName", traits: {"smithy.api#length" => {"min" => 3, "max" => 64}, "smithy.api#pattern" => "^[a-z][a-z0-9-]+$"})
    CollectionNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.opensearchserverless#CollectionNames", name: "CollectionNames", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    CollectionStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#CollectionStatus", name: "CollectionStatus", traits: {"smithy.api#enum" => [{"name" => "CREATING", "value" => "CREATING", "documentation" => "Creating collection resource"}, {"name" => "UPDATING", "value" => "UPDATING", "documentation" => "Updating collection resource"}, {"name" => "DELETING", "value" => "DELETING", "documentation" => "Deleting collection resource"}, {"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "Collection resource is ready to use"}, {"name" => "FAILED", "value" => "FAILED", "documentation" => "Collection resource create or delete failed"}, {"name" => "UPDATE_FAILED", "value" => "UPDATE_FAILED", "documentation" => "Collection resource update failed"}]})
    CollectionSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.opensearchserverless#CollectionSummaries", name: "CollectionSummaries")
    CollectionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#CollectionSummary", name: "CollectionSummary")
    CollectionType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#CollectionType", name: "CollectionType", traits: {"smithy.api#enum" => [{"name" => "SEARCH", "value" => "SEARCH", "documentation" => "Search collection type"}, {"name" => "TIMESERIES", "value" => "TIMESERIES", "documentation" => "Timeseries collection type"}, {"name" => "VECTORSEARCH", "value" => "VECTORSEARCH", "documentation" => "Vectorsearch collection type"}]})
    ConfigDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#ConfigDescription", name: "ConfigDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    ConfigName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#ConfigName", name: "ConfigName", traits: {"smithy.api#length" => {"min" => 3, "max" => 32}, "smithy.api#pattern" => "^[a-z][a-z0-9-]+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateAccessPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#CreateAccessPolicyInput", name: "CreateAccessPolicyInput")
    CreateAccessPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#CreateAccessPolicyOutput", name: "CreateAccessPolicyOutput")
    CreateCollectionDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#CreateCollectionDetail", name: "CreateCollectionDetail")
    CreateCollectionGroupDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#CreateCollectionGroupDetail", name: "CreateCollectionGroupDetail")
    CreateCollectionGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#CreateCollectionGroupRequest", name: "CreateCollectionGroupRequest")
    CreateCollectionGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#CreateCollectionGroupResponse", name: "CreateCollectionGroupResponse")
    CreateCollectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#CreateCollectionInput", name: "CreateCollectionInput")
    CreateCollectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#CreateCollectionOutput", name: "CreateCollectionOutput")
    CreateIamIdentityCenterConfigOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#CreateIamIdentityCenterConfigOptions", name: "CreateIamIdentityCenterConfigOptions")
    CreateIndexRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#CreateIndexRequest", name: "CreateIndexRequest")
    CreateIndexResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#CreateIndexResponse", name: "CreateIndexResponse")
    CreateLifecyclePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#CreateLifecyclePolicyRequest", name: "CreateLifecyclePolicyRequest")
    CreateLifecyclePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#CreateLifecyclePolicyResponse", name: "CreateLifecyclePolicyResponse")
    CreateSecurityConfigInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#CreateSecurityConfigInput", name: "CreateSecurityConfigInput")
    CreateSecurityConfigOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#CreateSecurityConfigOutput", name: "CreateSecurityConfigOutput")
    CreateSecurityPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#CreateSecurityPolicyInput", name: "CreateSecurityPolicyInput")
    CreateSecurityPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#CreateSecurityPolicyOutput", name: "CreateSecurityPolicyOutput")
    CreateVpcEndpointDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#CreateVpcEndpointDetail", name: "CreateVpcEndpointDetail")
    CreateVpcEndpointInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#CreateVpcEndpointInput", name: "CreateVpcEndpointInput")
    CreateVpcEndpointOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#CreateVpcEndpointOutput", name: "CreateVpcEndpointOutput")
    CurrentCapacity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#CurrentCapacity", name: "CurrentCapacity")
    DeleteAccessPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#DeleteAccessPolicyInput", name: "DeleteAccessPolicyInput")
    DeleteAccessPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#DeleteAccessPolicyOutput", name: "DeleteAccessPolicyOutput")
    DeleteCollectionDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#DeleteCollectionDetail", name: "DeleteCollectionDetail")
    DeleteCollectionGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#DeleteCollectionGroupRequest", name: "DeleteCollectionGroupRequest")
    DeleteCollectionGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#DeleteCollectionGroupResponse", name: "DeleteCollectionGroupResponse")
    DeleteCollectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#DeleteCollectionInput", name: "DeleteCollectionInput")
    DeleteCollectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#DeleteCollectionOutput", name: "DeleteCollectionOutput")
    DeleteIndexRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#DeleteIndexRequest", name: "DeleteIndexRequest")
    DeleteIndexResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#DeleteIndexResponse", name: "DeleteIndexResponse")
    DeleteLifecyclePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#DeleteLifecyclePolicyRequest", name: "DeleteLifecyclePolicyRequest")
    DeleteLifecyclePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#DeleteLifecyclePolicyResponse", name: "DeleteLifecyclePolicyResponse")
    DeleteSecurityConfigInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#DeleteSecurityConfigInput", name: "DeleteSecurityConfigInput")
    DeleteSecurityConfigOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#DeleteSecurityConfigOutput", name: "DeleteSecurityConfigOutput")
    DeleteSecurityPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#DeleteSecurityPolicyInput", name: "DeleteSecurityPolicyInput")
    DeleteSecurityPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#DeleteSecurityPolicyOutput", name: "DeleteSecurityPolicyOutput")
    DeleteVpcEndpointDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#DeleteVpcEndpointDetail", name: "DeleteVpcEndpointDetail")
    DeleteVpcEndpointInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#DeleteVpcEndpointInput", name: "DeleteVpcEndpointInput")
    DeleteVpcEndpointOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#DeleteVpcEndpointOutput", name: "DeleteVpcEndpointOutput")
    DeletionProtection = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#DeletionProtection", name: "DeletionProtection", traits: {"smithy.api#enum" => [{"name" => "ENABLED", "value" => "ENABLED", "documentation" => "Deletion protection enabled"}, {"name" => "DISABLED", "value" => "DISABLED", "documentation" => "Deletion protection disabled"}]})
    EffectiveLifecyclePolicyDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#EffectiveLifecyclePolicyDetail", name: "EffectiveLifecyclePolicyDetail")
    EffectiveLifecyclePolicyDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.opensearchserverless#EffectiveLifecyclePolicyDetails", name: "EffectiveLifecyclePolicyDetails")
    EffectiveLifecyclePolicyErrorDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#EffectiveLifecyclePolicyErrorDetail", name: "EffectiveLifecyclePolicyErrorDetail")
    EffectiveLifecyclePolicyErrorDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.opensearchserverless#EffectiveLifecyclePolicyErrorDetails", name: "EffectiveLifecyclePolicyErrorDetails")
    EncryptionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#EncryptionConfig", name: "EncryptionConfig")
    FipsEndpoints = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#FipsEndpoints", name: "FipsEndpoints")
    GetAccessPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#GetAccessPolicyInput", name: "GetAccessPolicyInput")
    GetAccessPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#GetAccessPolicyOutput", name: "GetAccessPolicyOutput")
    GetAccountSettingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#GetAccountSettingsInput", name: "GetAccountSettingsInput")
    GetAccountSettingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#GetAccountSettingsOutput", name: "GetAccountSettingsOutput")
    GetIndexRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#GetIndexRequest", name: "GetIndexRequest")
    GetIndexResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#GetIndexResponse", name: "GetIndexResponse")
    GetPoliciesStatsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#GetPoliciesStatsInput", name: "GetPoliciesStatsInput")
    GetPoliciesStatsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#GetPoliciesStatsOutput", name: "GetPoliciesStatsOutput")
    GetSecurityConfigInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#GetSecurityConfigInput", name: "GetSecurityConfigInput")
    GetSecurityConfigOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#GetSecurityConfigOutput", name: "GetSecurityConfigOutput")
    GetSecurityPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#GetSecurityPolicyInput", name: "GetSecurityPolicyInput")
    GetSecurityPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#GetSecurityPolicyOutput", name: "GetSecurityPolicyOutput")
    IamFederationConfigOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#IamFederationConfigOptions", name: "IamFederationConfigOptions")
    IamIdentityCenterApplicationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#IamIdentityCenterApplicationArn", name: "IamIdentityCenterApplicationArn", traits: {"smithy.api#length" => {"min" => 10, "max" => 1224}, "smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):sso::\\d{12}:application/(sso)?ins-[a-zA-Z0-9-.]{16}/apl-[a-zA-Z0-9]{16}$"})
    IamIdentityCenterConfigOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#IamIdentityCenterConfigOptions", name: "IamIdentityCenterConfigOptions")
    IamIdentityCenterGroupAttribute = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#IamIdentityCenterGroupAttribute", name: "IamIdentityCenterGroupAttribute", traits: {"smithy.api#enum" => [{"name" => "GroupId", "value" => "GroupId", "documentation" => "Group ID"}, {"name" => "GroupName", "value" => "GroupName", "documentation" => "Group Name"}]})
    IamIdentityCenterInstanceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#IamIdentityCenterInstanceArn", name: "IamIdentityCenterInstanceArn", traits: {"smithy.api#length" => {"min" => 10, "max" => 1224}, "smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):sso:::instance/(sso)?ins-[a-zA-Z0-9-.]{16}$"})
    IamIdentityCenterUserAttribute = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#IamIdentityCenterUserAttribute", name: "IamIdentityCenterUserAttribute", traits: {"smithy.api#enum" => [{"name" => "UserId", "value" => "UserId", "documentation" => "User ID"}, {"name" => "UserName", "value" => "UserName", "documentation" => "User Name"}, {"name" => "Email", "value" => "Email", "documentation" => "Email"}]})
    IndexName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#IndexName", name: "IndexName")
    IndexSchema = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.opensearchserverless#IndexSchema", name: "IndexSchema")
    IndexingCapacityValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.opensearchserverless#IndexingCapacityValue", name: "IndexingCapacityValue", traits: {"smithy.api#range" => {"min" => 2}})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    LifecyclePolicyDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#LifecyclePolicyDetail", name: "LifecyclePolicyDetail")
    LifecyclePolicyDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.opensearchserverless#LifecyclePolicyDetails", name: "LifecyclePolicyDetails")
    LifecyclePolicyErrorDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#LifecyclePolicyErrorDetail", name: "LifecyclePolicyErrorDetail")
    LifecyclePolicyErrorDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.opensearchserverless#LifecyclePolicyErrorDetails", name: "LifecyclePolicyErrorDetails")
    LifecyclePolicyIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#LifecyclePolicyIdentifier", name: "LifecyclePolicyIdentifier")
    LifecyclePolicyIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.opensearchserverless#LifecyclePolicyIdentifiers", name: "LifecyclePolicyIdentifiers", traits: {"smithy.api#length" => {"min" => 1, "max" => 40}})
    LifecyclePolicyResourceIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#LifecyclePolicyResourceIdentifier", name: "LifecyclePolicyResourceIdentifier")
    LifecyclePolicyResourceIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.opensearchserverless#LifecyclePolicyResourceIdentifiers", name: "LifecyclePolicyResourceIdentifiers", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    LifecyclePolicyStats = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#LifecyclePolicyStats", name: "LifecyclePolicyStats")
    LifecyclePolicySummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.opensearchserverless#LifecyclePolicySummaries", name: "LifecyclePolicySummaries")
    LifecyclePolicySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#LifecyclePolicySummary", name: "LifecyclePolicySummary")
    LifecyclePolicyType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#LifecyclePolicyType", name: "LifecyclePolicyType", traits: {"smithy.api#enum" => [{"name" => "retention", "value" => "retention", "documentation" => "retention policy type"}]})
    LifecycleResource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#LifecycleResource", name: "LifecycleResource")
    LifecycleResourceFilter = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.opensearchserverless#LifecycleResourceFilter", name: "LifecycleResourceFilter")
    ListAccessPoliciesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#ListAccessPoliciesInput", name: "ListAccessPoliciesInput")
    ListAccessPoliciesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#ListAccessPoliciesOutput", name: "ListAccessPoliciesOutput")
    ListCollectionGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#ListCollectionGroupsRequest", name: "ListCollectionGroupsRequest")
    ListCollectionGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#ListCollectionGroupsResponse", name: "ListCollectionGroupsResponse")
    ListCollectionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#ListCollectionsInput", name: "ListCollectionsInput")
    ListCollectionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#ListCollectionsOutput", name: "ListCollectionsOutput")
    ListLifecyclePoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#ListLifecyclePoliciesRequest", name: "ListLifecyclePoliciesRequest")
    ListLifecyclePoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#ListLifecyclePoliciesResponse", name: "ListLifecyclePoliciesResponse")
    ListSecurityConfigsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#ListSecurityConfigsInput", name: "ListSecurityConfigsInput")
    ListSecurityConfigsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#ListSecurityConfigsOutput", name: "ListSecurityConfigsOutput")
    ListSecurityPoliciesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#ListSecurityPoliciesInput", name: "ListSecurityPoliciesInput")
    ListSecurityPoliciesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#ListSecurityPoliciesOutput", name: "ListSecurityPoliciesOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    ListVpcEndpointsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#ListVpcEndpointsInput", name: "ListVpcEndpointsInput")
    ListVpcEndpointsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#ListVpcEndpointsOutput", name: "ListVpcEndpointsOutput")
    OcuLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#OcuLimitExceededException", name: "OcuLimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    PolicyDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#PolicyDescription", name: "PolicyDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    PolicyDocument = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#PolicyDocument", name: "PolicyDocument", traits: {"smithy.api#length" => {"min" => 1, "max" => 20480}, "smithy.api#pattern" => "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u00A1-\\u00FF]+"})
    PolicyName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#PolicyName", name: "PolicyName", traits: {"smithy.api#length" => {"min" => 3, "max" => 32}, "smithy.api#pattern" => "^[a-z][a-z0-9-]+$"})
    PolicyVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#PolicyVersion", name: "PolicyVersion", traits: {"smithy.api#length" => {"min" => 20, "max" => 36}, "smithy.api#pattern" => "^([0-9a-zA-Z+/]{4})*(([0-9a-zA-Z+/]{2}==)|([0-9a-zA-Z+/]{3}=))?$"})
    Resource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#Resource", name: "Resource")
    ResourceFilter = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.opensearchserverless#ResourceFilter", name: "ResourceFilter")
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#ResourceName", name: "ResourceName", traits: {"smithy.api#pattern" => "^index/[a-z][a-z0-9-]{3,63}/([a-z;0-9&$%][+.~=\\-_a-z;0-9&$%]*)$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#ResourceType", name: "ResourceType", traits: {"smithy.api#enum" => [{"name" => "index", "value" => "index", "documentation" => "index resource type"}]})
    SamlConfigOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#SamlConfigOptions", name: "SamlConfigOptions")
    SearchCapacityValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.opensearchserverless#SearchCapacityValue", name: "SearchCapacityValue", traits: {"smithy.api#range" => {"min" => 2}})
    SecurityConfigDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#SecurityConfigDetail", name: "SecurityConfigDetail")
    SecurityConfigId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#SecurityConfigId", name: "SecurityConfigId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    SecurityConfigStats = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#SecurityConfigStats", name: "SecurityConfigStats")
    SecurityConfigSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.opensearchserverless#SecurityConfigSummaries", name: "SecurityConfigSummaries")
    SecurityConfigSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#SecurityConfigSummary", name: "SecurityConfigSummary")
    SecurityConfigType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#SecurityConfigType", name: "SecurityConfigType", traits: {"smithy.api#enum" => [{"name" => "saml", "value" => "saml", "documentation" => "saml provider"}, {"name" => "iamidentitycenter", "value" => "iamidentitycenter", "documentation" => "iam identity center"}, {"name" => "iamfederation", "value" => "iamfederation", "documentation" => "iam federation"}]})
    SecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#SecurityGroupId", name: "SecurityGroupId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w+\\-]+$"})
    SecurityGroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.opensearchserverless#SecurityGroupIds", name: "SecurityGroupIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    SecurityPolicyDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#SecurityPolicyDetail", name: "SecurityPolicyDetail")
    SecurityPolicyStats = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#SecurityPolicyStats", name: "SecurityPolicyStats")
    SecurityPolicySummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.opensearchserverless#SecurityPolicySummaries", name: "SecurityPolicySummaries")
    SecurityPolicySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#SecurityPolicySummary", name: "SecurityPolicySummary")
    SecurityPolicyType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#SecurityPolicyType", name: "SecurityPolicyType", traits: {"smithy.api#enum" => [{"name" => "encryption", "value" => "encryption", "documentation" => "encryption policy type"}, {"name" => "network", "value" => "network", "documentation" => "network policy type"}]})
    ServerlessGeneration = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#ServerlessGeneration", name: "ServerlessGeneration", traits: {"smithy.api#enum" => [{"name" => "CLASSIC", "value" => "CLASSIC"}, {"name" => "NEXTGEN", "value" => "NEXTGEN"}]})
    ServerlessVectorAccelerationStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#ServerlessVectorAccelerationStatus", name: "ServerlessVectorAccelerationStatus", traits: {"smithy.api#enum" => [{"name" => "ENABLED", "value" => "ENABLED", "documentation" => "Serverless vector acceleration is enabled by default"}, {"name" => "DISABLED", "value" => "DISABLED", "documentation" => "Serverless vector acceleration is disabled"}, {"name" => "ALLOWED", "value" => "ALLOWED", "documentation" => "Serverless vector acceleration is allowed but not enabled by default"}]})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    StandbyReplicas = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#StandbyReplicas", name: "StandbyReplicas", traits: {"smithy.api#enum" => [{"name" => "ENABLED", "value" => "ENABLED", "documentation" => "Standby replicas enabled"}, {"name" => "DISABLED", "value" => "DISABLED", "documentation" => "Standby replicas disabled"}]})
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#SubnetId", name: "SubnetId", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^subnet-([0-9a-f]{8}|[0-9a-f]{17})$"})
    SubnetIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.opensearchserverless#SubnetIds", name: "SubnetIds", traits: {"smithy.api#length" => {"min" => 1}})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.opensearchserverless#TagKeys", name: "TagKeys", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Tags = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.opensearchserverless#Tags", name: "Tags", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateAccessPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#UpdateAccessPolicyInput", name: "UpdateAccessPolicyInput")
    UpdateAccessPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#UpdateAccessPolicyOutput", name: "UpdateAccessPolicyOutput")
    UpdateAccountSettingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#UpdateAccountSettingsInput", name: "UpdateAccountSettingsInput")
    UpdateAccountSettingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#UpdateAccountSettingsOutput", name: "UpdateAccountSettingsOutput")
    UpdateCollectionDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#UpdateCollectionDetail", name: "UpdateCollectionDetail")
    UpdateCollectionGroupDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#UpdateCollectionGroupDetail", name: "UpdateCollectionGroupDetail")
    UpdateCollectionGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#UpdateCollectionGroupRequest", name: "UpdateCollectionGroupRequest")
    UpdateCollectionGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#UpdateCollectionGroupResponse", name: "UpdateCollectionGroupResponse")
    UpdateCollectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#UpdateCollectionInput", name: "UpdateCollectionInput")
    UpdateCollectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#UpdateCollectionOutput", name: "UpdateCollectionOutput")
    UpdateIamIdentityCenterConfigOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#UpdateIamIdentityCenterConfigOptions", name: "UpdateIamIdentityCenterConfigOptions")
    UpdateIndexRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#UpdateIndexRequest", name: "UpdateIndexRequest")
    UpdateIndexResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#UpdateIndexResponse", name: "UpdateIndexResponse")
    UpdateLifecyclePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#UpdateLifecyclePolicyRequest", name: "UpdateLifecyclePolicyRequest")
    UpdateLifecyclePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#UpdateLifecyclePolicyResponse", name: "UpdateLifecyclePolicyResponse")
    UpdateSecurityConfigInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#UpdateSecurityConfigInput", name: "UpdateSecurityConfigInput")
    UpdateSecurityConfigOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#UpdateSecurityConfigOutput", name: "UpdateSecurityConfigOutput")
    UpdateSecurityPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#UpdateSecurityPolicyInput", name: "UpdateSecurityPolicyInput")
    UpdateSecurityPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#UpdateSecurityPolicyOutput", name: "UpdateSecurityPolicyOutput")
    UpdateVpcEndpointDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#UpdateVpcEndpointDetail", name: "UpdateVpcEndpointDetail")
    UpdateVpcEndpointInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#UpdateVpcEndpointInput", name: "UpdateVpcEndpointInput")
    UpdateVpcEndpointOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#UpdateVpcEndpointOutput", name: "UpdateVpcEndpointOutput")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VectorOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#VectorOptions", name: "VectorOptions")
    VpcEndpointDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#VpcEndpointDetail", name: "VpcEndpointDetail")
    VpcEndpointDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.opensearchserverless#VpcEndpointDetails", name: "VpcEndpointDetails")
    VpcEndpointErrorDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#VpcEndpointErrorDetail", name: "VpcEndpointErrorDetail")
    VpcEndpointErrorDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.opensearchserverless#VpcEndpointErrorDetails", name: "VpcEndpointErrorDetails")
    VpcEndpointFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#VpcEndpointFilters", name: "VpcEndpointFilters")
    VpcEndpointId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#VpcEndpointId", name: "VpcEndpointId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^vpce-[0-9a-z]*$"})
    VpcEndpointIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.opensearchserverless#VpcEndpointIds", name: "VpcEndpointIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    VpcEndpointName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#VpcEndpointName", name: "VpcEndpointName", traits: {"smithy.api#length" => {"min" => 3, "max" => 32}, "smithy.api#pattern" => "^[a-z][a-z0-9-]+$"})
    VpcEndpointStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#VpcEndpointStatus", name: "VpcEndpointStatus", traits: {"smithy.api#enum" => [{"name" => "PENDING", "value" => "PENDING", "documentation" => "Pending VPCEndpoint resource"}, {"name" => "DELETING", "value" => "DELETING", "documentation" => "Deleting VPCEndpoint resource"}, {"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "VPCEndpoint resource is ready to use"}, {"name" => "FAILED", "value" => "FAILED", "documentation" => "VPCEndpoint resource create or delete failed"}]})
    VpcEndpointSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.opensearchserverless#VpcEndpointSummaries", name: "VpcEndpointSummaries")
    VpcEndpointSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.opensearchserverless#VpcEndpointSummary", name: "VpcEndpointSummary")
    VpcId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#VpcId", name: "VpcId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^vpc-[0-9a-z]*$"})
    IamFederationGroupAttribute = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#iamFederationGroupAttribute", name: "IamFederationGroupAttribute", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z][A-Za-z0-9_.:/=+\\-@]*$"})
    IamFederationUserAttribute = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#iamFederationUserAttribute", name: "IamFederationUserAttribute", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z][A-Za-z0-9_.:/=+\\-@]*$"})
    OpenSearchServerlessEntityId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#openSearchServerlessEntityId", name: "OpenSearchServerlessEntityId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^aws:opensearch:[0-9]{12}:*"})
    SamlGroupAttribute = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#samlGroupAttribute", name: "SamlGroupAttribute", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "[\\w+=,.@-]+"})
    SamlMetadata = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#samlMetadata", name: "SamlMetadata", traits: {"smithy.api#length" => {"min" => 1, "max" => 51200}, "smithy.api#pattern" => "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u00A1-\\u00FF]+"})
    SamlUserAttribute = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.opensearchserverless#samlUserAttribute", name: "SamlUserAttribute", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "[\\w+=,.@-]+"})

    AccessPolicyDetail.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPolicyType, name: "type"))
    AccessPolicyDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "name"))
    AccessPolicyDetail.add_member(:policy_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyVersion, name: "policyVersion"))
    AccessPolicyDetail.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDescription, name: "description"))
    AccessPolicyDetail.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "policy"))
    AccessPolicyDetail.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "createdDate"))
    AccessPolicyDetail.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "lastModifiedDate"))
    AccessPolicyDetail.type = Types::AccessPolicyDetail
    AccessPolicyStats.add_member(:data_policy_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "DataPolicyCount"))
    AccessPolicyStats.type = Types::AccessPolicyStats
    AccessPolicySummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPolicySummary, name: "member"))
    AccessPolicySummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPolicyType, name: "type"))
    AccessPolicySummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "name"))
    AccessPolicySummary.add_member(:policy_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyVersion, name: "policyVersion"))
    AccessPolicySummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDescription, name: "description"))
    AccessPolicySummary.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "createdDate"))
    AccessPolicySummary.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "lastModifiedDate"))
    AccessPolicySummary.type = Types::AccessPolicySummary
    AccountSettingsDetail.add_member(:capacity_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityLimits, name: "capacityLimits"))
    AccountSettingsDetail.type = Types::AccountSettingsDetail
    BatchGetCollectionGroupRequest.add_member(:ids, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionGroupIds, name: "ids"))
    BatchGetCollectionGroupRequest.add_member(:names, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionGroupNames, name: "names"))
    BatchGetCollectionGroupRequest.type = Types::BatchGetCollectionGroupRequest
    BatchGetCollectionGroupResponse.add_member(:collection_group_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionGroupDetails, name: "collectionGroupDetails"))
    BatchGetCollectionGroupResponse.add_member(:collection_group_error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionGroupErrorDetails, name: "collectionGroupErrorDetails"))
    BatchGetCollectionGroupResponse.type = Types::BatchGetCollectionGroupResponse
    BatchGetCollectionInput.add_member(:ids, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionIds, name: "ids"))
    BatchGetCollectionInput.add_member(:names, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionNames, name: "names"))
    BatchGetCollectionInput.type = Types::BatchGetCollectionInput
    BatchGetCollectionOutput.add_member(:collection_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionDetails, name: "collectionDetails"))
    BatchGetCollectionOutput.add_member(:collection_error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionErrorDetails, name: "collectionErrorDetails"))
    BatchGetCollectionOutput.type = Types::BatchGetCollectionOutput
    BatchGetEffectiveLifecyclePolicyRequest.add_member(:resource_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyResourceIdentifiers, name: "resourceIdentifiers", traits: {"smithy.api#required" => {}}))
    BatchGetEffectiveLifecyclePolicyRequest.type = Types::BatchGetEffectiveLifecyclePolicyRequest
    BatchGetEffectiveLifecyclePolicyResponse.add_member(:effective_lifecycle_policy_details, ::Smithy::Schema::Shapes::MemberShape.new(target: EffectiveLifecyclePolicyDetails, name: "effectiveLifecyclePolicyDetails"))
    BatchGetEffectiveLifecyclePolicyResponse.add_member(:effective_lifecycle_policy_error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: EffectiveLifecyclePolicyErrorDetails, name: "effectiveLifecyclePolicyErrorDetails"))
    BatchGetEffectiveLifecyclePolicyResponse.type = Types::BatchGetEffectiveLifecyclePolicyResponse
    BatchGetLifecyclePolicyRequest.add_member(:identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyIdentifiers, name: "identifiers", traits: {"smithy.api#required" => {}}))
    BatchGetLifecyclePolicyRequest.type = Types::BatchGetLifecyclePolicyRequest
    BatchGetLifecyclePolicyResponse.add_member(:lifecycle_policy_details, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyDetails, name: "lifecyclePolicyDetails"))
    BatchGetLifecyclePolicyResponse.add_member(:lifecycle_policy_error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyErrorDetails, name: "lifecyclePolicyErrorDetails"))
    BatchGetLifecyclePolicyResponse.type = Types::BatchGetLifecyclePolicyResponse
    BatchGetVpcEndpointInput.add_member(:ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointIds, name: "ids", traits: {"smithy.api#required" => {}}))
    BatchGetVpcEndpointInput.type = Types::BatchGetVpcEndpointInput
    BatchGetVpcEndpointOutput.add_member(:vpc_endpoint_details, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointDetails, name: "vpcEndpointDetails"))
    BatchGetVpcEndpointOutput.add_member(:vpc_endpoint_error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointErrorDetails, name: "vpcEndpointErrorDetails"))
    BatchGetVpcEndpointOutput.type = Types::BatchGetVpcEndpointOutput
    CapacityDetails.add_member(:capacity_in_ocu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "capacityInOcu"))
    CapacityDetails.add_member(:autoscaling_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoscalingStatus, name: "autoscalingStatus"))
    CapacityDetails.type = Types::CapacityDetails
    CapacityLimits.add_member(:max_indexing_capacity_in_ocu, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexingCapacityValue, name: "maxIndexingCapacityInOCU"))
    CapacityLimits.add_member(:max_search_capacity_in_ocu, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchCapacityValue, name: "maxSearchCapacityInOCU"))
    CapacityLimits.type = Types::CapacityLimits
    CollectionDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionId, name: "id"))
    CollectionDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionName, name: "name"))
    CollectionDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionStatus, name: "status"))
    CollectionDetail.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionType, name: "type"))
    CollectionDetail.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    CollectionDetail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "arn"))
    CollectionDetail.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "kmsKeyArn"))
    CollectionDetail.add_member(:standby_replicas, ::Smithy::Schema::Shapes::MemberShape.new(target: StandbyReplicas, name: "standbyReplicas"))
    CollectionDetail.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionProtection, name: "deletionProtection"))
    CollectionDetail.add_member(:vector_options, ::Smithy::Schema::Shapes::MemberShape.new(target: VectorOptions, name: "vectorOptions"))
    CollectionDetail.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "createdDate"))
    CollectionDetail.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "lastModifiedDate"))
    CollectionDetail.add_member(:collection_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "collectionEndpoint"))
    CollectionDetail.add_member(:dashboard_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dashboardEndpoint"))
    CollectionDetail.add_member(:fips_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: FipsEndpoints, name: "fipsEndpoints"))
    CollectionDetail.add_member(:failure_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "failureCode"))
    CollectionDetail.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "failureMessage"))
    CollectionDetail.add_member(:collection_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionGroupName, name: "collectionGroupName"))
    CollectionDetail.type = Types::CollectionDetail
    CollectionDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionDetail, name: "member"))
    CollectionErrorDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionId, name: "id"))
    CollectionErrorDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionName, name: "name"))
    CollectionErrorDetail.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorMessage"))
    CollectionErrorDetail.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorCode"))
    CollectionErrorDetail.type = Types::CollectionErrorDetail
    CollectionErrorDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionErrorDetail, name: "member"))
    CollectionFilters.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionName, name: "name"))
    CollectionFilters.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionStatus, name: "status"))
    CollectionFilters.add_member(:collection_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionGroupName, name: "collectionGroupName"))
    CollectionFilters.type = Types::CollectionFilters
    CollectionGroupCapacityLimits.add_member(:max_indexing_capacity_in_ocu, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionGroupMaxIndexingCapacityValue, name: "maxIndexingCapacityInOCU"))
    CollectionGroupCapacityLimits.add_member(:max_search_capacity_in_ocu, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionGroupMaxSearchCapacityValue, name: "maxSearchCapacityInOCU"))
    CollectionGroupCapacityLimits.add_member(:min_indexing_capacity_in_ocu, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionGroupMinIndexingCapacityValue, name: "minIndexingCapacityInOCU"))
    CollectionGroupCapacityLimits.add_member(:min_search_capacity_in_ocu, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionGroupMinSearchCapacityValue, name: "minSearchCapacityInOCU"))
    CollectionGroupCapacityLimits.type = Types::CollectionGroupCapacityLimits
    CollectionGroupDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionGroupId, name: "id"))
    CollectionGroupDetail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "arn"))
    CollectionGroupDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionGroupName, name: "name"))
    CollectionGroupDetail.add_member(:standby_replicas, ::Smithy::Schema::Shapes::MemberShape.new(target: StandbyReplicas, name: "standbyReplicas"))
    CollectionGroupDetail.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    CollectionGroupDetail.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CollectionGroupDetail.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "createdDate"))
    CollectionGroupDetail.add_member(:capacity_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionGroupCapacityLimits, name: "capacityLimits"))
    CollectionGroupDetail.add_member(:current_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrentCapacity, name: "currentCapacity"))
    CollectionGroupDetail.add_member(:number_of_collections, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "numberOfCollections"))
    CollectionGroupDetail.add_member(:generation, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessGeneration, name: "generation"))
    CollectionGroupDetail.type = Types::CollectionGroupDetail
    CollectionGroupDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionGroupDetail, name: "member"))
    CollectionGroupErrorDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionGroupId, name: "id"))
    CollectionGroupErrorDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionGroupName, name: "name"))
    CollectionGroupErrorDetail.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorMessage"))
    CollectionGroupErrorDetail.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorCode"))
    CollectionGroupErrorDetail.type = Types::CollectionGroupErrorDetail
    CollectionGroupErrorDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionGroupErrorDetail, name: "member"))
    CollectionGroupIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionGroupId, name: "member"))
    CollectionGroupNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionGroupName, name: "member"))
    CollectionGroupSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionGroupSummary, name: "member"))
    CollectionGroupSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionGroupId, name: "id"))
    CollectionGroupSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "arn"))
    CollectionGroupSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionGroupName, name: "name"))
    CollectionGroupSummary.add_member(:number_of_collections, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "numberOfCollections"))
    CollectionGroupSummary.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "createdDate"))
    CollectionGroupSummary.add_member(:capacity_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionGroupCapacityLimits, name: "capacityLimits"))
    CollectionGroupSummary.add_member(:generation, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessGeneration, name: "generation"))
    CollectionGroupSummary.type = Types::CollectionGroupSummary
    CollectionIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionId, name: "member"))
    CollectionNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionName, name: "member"))
    CollectionSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionSummary, name: "member"))
    CollectionSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionId, name: "id"))
    CollectionSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionName, name: "name"))
    CollectionSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionStatus, name: "status"))
    CollectionSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "arn"))
    CollectionSummary.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "kmsKeyArn"))
    CollectionSummary.add_member(:collection_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionGroupName, name: "collectionGroupName"))
    CollectionSummary.type = Types::CollectionSummary
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ConflictException.type = Types::ConflictException
    CreateAccessPolicyInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPolicyType, name: "type", traits: {"smithy.api#required" => {}}))
    CreateAccessPolicyInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateAccessPolicyInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDescription, name: "description"))
    CreateAccessPolicyInput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, name: "policy", traits: {"smithy.api#required" => {}}))
    CreateAccessPolicyInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    CreateAccessPolicyInput.type = Types::CreateAccessPolicyInput
    CreateAccessPolicyOutput.add_member(:access_policy_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPolicyDetail, name: "accessPolicyDetail"))
    CreateAccessPolicyOutput.type = Types::CreateAccessPolicyOutput
    CreateCollectionDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionId, name: "id"))
    CreateCollectionDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionName, name: "name"))
    CreateCollectionDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionStatus, name: "status"))
    CreateCollectionDetail.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionType, name: "type"))
    CreateCollectionDetail.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    CreateCollectionDetail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "arn"))
    CreateCollectionDetail.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "kmsKeyArn"))
    CreateCollectionDetail.add_member(:standby_replicas, ::Smithy::Schema::Shapes::MemberShape.new(target: StandbyReplicas, name: "standbyReplicas"))
    CreateCollectionDetail.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionProtection, name: "deletionProtection"))
    CreateCollectionDetail.add_member(:vector_options, ::Smithy::Schema::Shapes::MemberShape.new(target: VectorOptions, name: "vectorOptions"))
    CreateCollectionDetail.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "createdDate"))
    CreateCollectionDetail.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "lastModifiedDate"))
    CreateCollectionDetail.add_member(:collection_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionGroupName, name: "collectionGroupName"))
    CreateCollectionDetail.type = Types::CreateCollectionDetail
    CreateCollectionGroupDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionGroupId, name: "id"))
    CreateCollectionGroupDetail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "arn"))
    CreateCollectionGroupDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionGroupName, name: "name"))
    CreateCollectionGroupDetail.add_member(:standby_replicas, ::Smithy::Schema::Shapes::MemberShape.new(target: StandbyReplicas, name: "standbyReplicas"))
    CreateCollectionGroupDetail.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    CreateCollectionGroupDetail.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateCollectionGroupDetail.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "createdDate"))
    CreateCollectionGroupDetail.add_member(:capacity_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionGroupCapacityLimits, name: "capacityLimits"))
    CreateCollectionGroupDetail.add_member(:generation, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessGeneration, name: "generation"))
    CreateCollectionGroupDetail.type = Types::CreateCollectionGroupDetail
    CreateCollectionGroupRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionGroupName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateCollectionGroupRequest.add_member(:standby_replicas, ::Smithy::Schema::Shapes::MemberShape.new(target: StandbyReplicas, name: "standbyReplicas", traits: {"smithy.api#required" => {}}))
    CreateCollectionGroupRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#length" => {"max" => 1000}}))
    CreateCollectionGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateCollectionGroupRequest.add_member(:capacity_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionGroupCapacityLimits, name: "capacityLimits"))
    CreateCollectionGroupRequest.add_member(:generation, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessGeneration, name: "generation"))
    CreateCollectionGroupRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    CreateCollectionGroupRequest.type = Types::CreateCollectionGroupRequest
    CreateCollectionGroupResponse.add_member(:create_collection_group_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateCollectionGroupDetail, name: "createCollectionGroupDetail"))
    CreateCollectionGroupResponse.type = Types::CreateCollectionGroupResponse
    CreateCollectionInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateCollectionInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionType, name: "type"))
    CreateCollectionInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#length" => {"max" => 1000}}))
    CreateCollectionInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateCollectionInput.add_member(:standby_replicas, ::Smithy::Schema::Shapes::MemberShape.new(target: StandbyReplicas, name: "standbyReplicas"))
    CreateCollectionInput.add_member(:vector_options, ::Smithy::Schema::Shapes::MemberShape.new(target: VectorOptions, name: "vectorOptions"))
    CreateCollectionInput.add_member(:collection_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionGroupName, name: "collectionGroupName"))
    CreateCollectionInput.add_member(:encryption_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfig, name: "encryptionConfig"))
    CreateCollectionInput.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionProtection, name: "deletionProtection"))
    CreateCollectionInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    CreateCollectionInput.type = Types::CreateCollectionInput
    CreateCollectionOutput.add_member(:create_collection_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateCollectionDetail, name: "createCollectionDetail"))
    CreateCollectionOutput.type = Types::CreateCollectionOutput
    CreateIamIdentityCenterConfigOptions.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamIdentityCenterInstanceArn, name: "instanceArn", traits: {"smithy.api#required" => {}}))
    CreateIamIdentityCenterConfigOptions.add_member(:user_attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: IamIdentityCenterUserAttribute, name: "userAttribute"))
    CreateIamIdentityCenterConfigOptions.add_member(:group_attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: IamIdentityCenterGroupAttribute, name: "groupAttribute"))
    CreateIamIdentityCenterConfigOptions.type = Types::CreateIamIdentityCenterConfigOptions
    CreateIndexRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionId, name: "id", traits: {"smithy.api#required" => {}}))
    CreateIndexRequest.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "indexName", traits: {"smithy.api#required" => {}}))
    CreateIndexRequest.add_member(:index_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexSchema, name: "indexSchema"))
    CreateIndexRequest.type = Types::CreateIndexRequest
    CreateIndexResponse.type = Types::CreateIndexResponse
    CreateLifecyclePolicyRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyType, name: "type", traits: {"smithy.api#required" => {}}))
    CreateLifecyclePolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateLifecyclePolicyRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDescription, name: "description"))
    CreateLifecyclePolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, name: "policy", traits: {"smithy.api#required" => {}}))
    CreateLifecyclePolicyRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    CreateLifecyclePolicyRequest.type = Types::CreateLifecyclePolicyRequest
    CreateLifecyclePolicyResponse.add_member(:lifecycle_policy_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyDetail, name: "lifecyclePolicyDetail"))
    CreateLifecyclePolicyResponse.type = Types::CreateLifecyclePolicyResponse
    CreateSecurityConfigInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityConfigType, name: "type", traits: {"smithy.api#required" => {}}))
    CreateSecurityConfigInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateSecurityConfigInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigDescription, name: "description"))
    CreateSecurityConfigInput.add_member(:saml_options, ::Smithy::Schema::Shapes::MemberShape.new(target: SamlConfigOptions, name: "samlOptions"))
    CreateSecurityConfigInput.add_member(:iam_identity_center_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateIamIdentityCenterConfigOptions, name: "iamIdentityCenterOptions"))
    CreateSecurityConfigInput.add_member(:iam_federation_options, ::Smithy::Schema::Shapes::MemberShape.new(target: IamFederationConfigOptions, name: "iamFederationOptions"))
    CreateSecurityConfigInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    CreateSecurityConfigInput.type = Types::CreateSecurityConfigInput
    CreateSecurityConfigOutput.add_member(:security_config_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityConfigDetail, name: "securityConfigDetail"))
    CreateSecurityConfigOutput.type = Types::CreateSecurityConfigOutput
    CreateSecurityPolicyInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityPolicyType, name: "type", traits: {"smithy.api#required" => {}}))
    CreateSecurityPolicyInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateSecurityPolicyInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDescription, name: "description"))
    CreateSecurityPolicyInput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, name: "policy", traits: {"smithy.api#required" => {}}))
    CreateSecurityPolicyInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    CreateSecurityPolicyInput.type = Types::CreateSecurityPolicyInput
    CreateSecurityPolicyOutput.add_member(:security_policy_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityPolicyDetail, name: "securityPolicyDetail"))
    CreateSecurityPolicyOutput.type = Types::CreateSecurityPolicyOutput
    CreateVpcEndpointDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointId, name: "id"))
    CreateVpcEndpointDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointName, name: "name"))
    CreateVpcEndpointDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointStatus, name: "status"))
    CreateVpcEndpointDetail.type = Types::CreateVpcEndpointDetail
    CreateVpcEndpointInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateVpcEndpointInput.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "vpcId", traits: {"smithy.api#required" => {}}))
    CreateVpcEndpointInput.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIds, name: "subnetIds", traits: {"smithy.api#required" => {}}))
    CreateVpcEndpointInput.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, name: "securityGroupIds"))
    CreateVpcEndpointInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    CreateVpcEndpointInput.type = Types::CreateVpcEndpointInput
    CreateVpcEndpointOutput.add_member(:create_vpc_endpoint_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateVpcEndpointDetail, name: "createVpcEndpointDetail"))
    CreateVpcEndpointOutput.type = Types::CreateVpcEndpointOutput
    CurrentCapacity.add_member(:search, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityDetails, name: "search"))
    CurrentCapacity.add_member(:indexing, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityDetails, name: "indexing"))
    CurrentCapacity.type = Types::CurrentCapacity
    DeleteAccessPolicyInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPolicyType, name: "type", traits: {"smithy.api#required" => {}}))
    DeleteAccessPolicyInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "name", traits: {"smithy.api#required" => {}}))
    DeleteAccessPolicyInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    DeleteAccessPolicyInput.type = Types::DeleteAccessPolicyInput
    DeleteAccessPolicyOutput.type = Types::DeleteAccessPolicyOutput
    DeleteCollectionDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionId, name: "id"))
    DeleteCollectionDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionName, name: "name"))
    DeleteCollectionDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionStatus, name: "status"))
    DeleteCollectionDetail.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionProtection, name: "deletionProtection"))
    DeleteCollectionDetail.type = Types::DeleteCollectionDetail
    DeleteCollectionGroupRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionGroupId, name: "id", traits: {"smithy.api#required" => {}}))
    DeleteCollectionGroupRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    DeleteCollectionGroupRequest.type = Types::DeleteCollectionGroupRequest
    DeleteCollectionGroupResponse.type = Types::DeleteCollectionGroupResponse
    DeleteCollectionInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionId, name: "id", traits: {"smithy.api#required" => {}}))
    DeleteCollectionInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteCollectionInput.type = Types::DeleteCollectionInput
    DeleteCollectionOutput.add_member(:delete_collection_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteCollectionDetail, name: "deleteCollectionDetail"))
    DeleteCollectionOutput.type = Types::DeleteCollectionOutput
    DeleteIndexRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionId, name: "id", traits: {"smithy.api#required" => {}}))
    DeleteIndexRequest.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "indexName", traits: {"smithy.api#required" => {}}))
    DeleteIndexRequest.type = Types::DeleteIndexRequest
    DeleteIndexResponse.type = Types::DeleteIndexResponse
    DeleteLifecyclePolicyRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyType, name: "type", traits: {"smithy.api#required" => {}}))
    DeleteLifecyclePolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "name", traits: {"smithy.api#required" => {}}))
    DeleteLifecyclePolicyRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    DeleteLifecyclePolicyRequest.type = Types::DeleteLifecyclePolicyRequest
    DeleteLifecyclePolicyResponse.type = Types::DeleteLifecyclePolicyResponse
    DeleteSecurityConfigInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityConfigId, name: "id", traits: {"smithy.api#required" => {}}))
    DeleteSecurityConfigInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    DeleteSecurityConfigInput.type = Types::DeleteSecurityConfigInput
    DeleteSecurityConfigOutput.type = Types::DeleteSecurityConfigOutput
    DeleteSecurityPolicyInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityPolicyType, name: "type", traits: {"smithy.api#required" => {}}))
    DeleteSecurityPolicyInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "name", traits: {"smithy.api#required" => {}}))
    DeleteSecurityPolicyInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    DeleteSecurityPolicyInput.type = Types::DeleteSecurityPolicyInput
    DeleteSecurityPolicyOutput.type = Types::DeleteSecurityPolicyOutput
    DeleteVpcEndpointDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointId, name: "id"))
    DeleteVpcEndpointDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointName, name: "name"))
    DeleteVpcEndpointDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointStatus, name: "status"))
    DeleteVpcEndpointDetail.type = Types::DeleteVpcEndpointDetail
    DeleteVpcEndpointInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointId, name: "id", traits: {"smithy.api#required" => {}}))
    DeleteVpcEndpointInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    DeleteVpcEndpointInput.type = Types::DeleteVpcEndpointInput
    DeleteVpcEndpointOutput.add_member(:delete_vpc_endpoint_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteVpcEndpointDetail, name: "deleteVpcEndpointDetail"))
    DeleteVpcEndpointOutput.type = Types::DeleteVpcEndpointOutput
    EffectiveLifecyclePolicyDetail.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyType, name: "type"))
    EffectiveLifecyclePolicyDetail.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "resource"))
    EffectiveLifecyclePolicyDetail.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "policyName"))
    EffectiveLifecyclePolicyDetail.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    EffectiveLifecyclePolicyDetail.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "retentionPeriod"))
    EffectiveLifecyclePolicyDetail.add_member(:no_min_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "noMinRetentionPeriod"))
    EffectiveLifecyclePolicyDetail.type = Types::EffectiveLifecyclePolicyDetail
    EffectiveLifecyclePolicyDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EffectiveLifecyclePolicyDetail, name: "member"))
    EffectiveLifecyclePolicyErrorDetail.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyType, name: "type"))
    EffectiveLifecyclePolicyErrorDetail.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "resource"))
    EffectiveLifecyclePolicyErrorDetail.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorMessage"))
    EffectiveLifecyclePolicyErrorDetail.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorCode"))
    EffectiveLifecyclePolicyErrorDetail.type = Types::EffectiveLifecyclePolicyErrorDetail
    EffectiveLifecyclePolicyErrorDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EffectiveLifecyclePolicyErrorDetail, name: "member"))
    EncryptionConfig.add_member(:a_ws_owned_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "aWSOwnedKey"))
    EncryptionConfig.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "kmsKeyArn", traits: {"smithy.api#length" => {"min" => 10, "max" => 100}, "smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):kms:[a-z0-9-]+:[0-9]{12}:key/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"}))
    EncryptionConfig.type = Types::EncryptionConfig
    FipsEndpoints.add_member(:collection_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "collectionEndpoint"))
    FipsEndpoints.add_member(:dashboard_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dashboardEndpoint"))
    FipsEndpoints.type = Types::FipsEndpoints
    GetAccessPolicyInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPolicyType, name: "type", traits: {"smithy.api#required" => {}}))
    GetAccessPolicyInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "name", traits: {"smithy.api#required" => {}}))
    GetAccessPolicyInput.type = Types::GetAccessPolicyInput
    GetAccessPolicyOutput.add_member(:access_policy_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPolicyDetail, name: "accessPolicyDetail"))
    GetAccessPolicyOutput.type = Types::GetAccessPolicyOutput
    GetAccountSettingsInput.type = Types::GetAccountSettingsInput
    GetAccountSettingsOutput.add_member(:account_settings_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountSettingsDetail, name: "accountSettingsDetail"))
    GetAccountSettingsOutput.type = Types::GetAccountSettingsOutput
    GetIndexRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionId, name: "id", traits: {"smithy.api#required" => {}}))
    GetIndexRequest.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "indexName", traits: {"smithy.api#required" => {}}))
    GetIndexRequest.type = Types::GetIndexRequest
    GetIndexResponse.add_member(:index_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexSchema, name: "indexSchema"))
    GetIndexResponse.type = Types::GetIndexResponse
    GetPoliciesStatsInput.type = Types::GetPoliciesStatsInput
    GetPoliciesStatsOutput.add_member(:access_policy_stats, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPolicyStats, name: "AccessPolicyStats"))
    GetPoliciesStatsOutput.add_member(:security_policy_stats, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityPolicyStats, name: "SecurityPolicyStats"))
    GetPoliciesStatsOutput.add_member(:security_config_stats, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityConfigStats, name: "SecurityConfigStats"))
    GetPoliciesStatsOutput.add_member(:lifecycle_policy_stats, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyStats, name: "LifecyclePolicyStats"))
    GetPoliciesStatsOutput.add_member(:total_policy_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "TotalPolicyCount"))
    GetPoliciesStatsOutput.type = Types::GetPoliciesStatsOutput
    GetSecurityConfigInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityConfigId, name: "id", traits: {"smithy.api#required" => {}}))
    GetSecurityConfigInput.type = Types::GetSecurityConfigInput
    GetSecurityConfigOutput.add_member(:security_config_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityConfigDetail, name: "securityConfigDetail"))
    GetSecurityConfigOutput.type = Types::GetSecurityConfigOutput
    GetSecurityPolicyInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityPolicyType, name: "type", traits: {"smithy.api#required" => {}}))
    GetSecurityPolicyInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "name", traits: {"smithy.api#required" => {}}))
    GetSecurityPolicyInput.type = Types::GetSecurityPolicyInput
    GetSecurityPolicyOutput.add_member(:security_policy_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityPolicyDetail, name: "securityPolicyDetail"))
    GetSecurityPolicyOutput.type = Types::GetSecurityPolicyOutput
    IamFederationConfigOptions.add_member(:group_attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: IamFederationGroupAttribute, name: "groupAttribute"))
    IamFederationConfigOptions.add_member(:user_attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: IamFederationUserAttribute, name: "userAttribute"))
    IamFederationConfigOptions.type = Types::IamFederationConfigOptions
    IamIdentityCenterConfigOptions.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamIdentityCenterInstanceArn, name: "instanceArn"))
    IamIdentityCenterConfigOptions.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamIdentityCenterApplicationArn, name: "applicationArn"))
    IamIdentityCenterConfigOptions.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "applicationName"))
    IamIdentityCenterConfigOptions.add_member(:application_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "applicationDescription"))
    IamIdentityCenterConfigOptions.add_member(:user_attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: IamIdentityCenterUserAttribute, name: "userAttribute"))
    IamIdentityCenterConfigOptions.add_member(:group_attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: IamIdentityCenterGroupAttribute, name: "groupAttribute"))
    IamIdentityCenterConfigOptions.type = Types::IamIdentityCenterConfigOptions
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    InternalServerException.type = Types::InternalServerException
    LifecyclePolicyDetail.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyType, name: "type"))
    LifecyclePolicyDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "name"))
    LifecyclePolicyDetail.add_member(:policy_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyVersion, name: "policyVersion"))
    LifecyclePolicyDetail.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDescription, name: "description"))
    LifecyclePolicyDetail.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "policy"))
    LifecyclePolicyDetail.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "createdDate"))
    LifecyclePolicyDetail.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "lastModifiedDate"))
    LifecyclePolicyDetail.type = Types::LifecyclePolicyDetail
    LifecyclePolicyDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyDetail, name: "member"))
    LifecyclePolicyErrorDetail.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyType, name: "type"))
    LifecyclePolicyErrorDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "name"))
    LifecyclePolicyErrorDetail.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorMessage"))
    LifecyclePolicyErrorDetail.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorCode"))
    LifecyclePolicyErrorDetail.type = Types::LifecyclePolicyErrorDetail
    LifecyclePolicyErrorDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyErrorDetail, name: "member"))
    LifecyclePolicyIdentifier.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyType, name: "type", traits: {"smithy.api#required" => {}}))
    LifecyclePolicyIdentifier.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "name", traits: {"smithy.api#required" => {}}))
    LifecyclePolicyIdentifier.type = Types::LifecyclePolicyIdentifier
    LifecyclePolicyIdentifiers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyIdentifier, name: "member"))
    LifecyclePolicyResourceIdentifier.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyType, name: "type", traits: {"smithy.api#required" => {}}))
    LifecyclePolicyResourceIdentifier.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "resource", traits: {"smithy.api#required" => {}}))
    LifecyclePolicyResourceIdentifier.type = Types::LifecyclePolicyResourceIdentifier
    LifecyclePolicyResourceIdentifiers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyResourceIdentifier, name: "member"))
    LifecyclePolicyStats.add_member(:retention_policy_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "RetentionPolicyCount"))
    LifecyclePolicyStats.type = Types::LifecyclePolicyStats
    LifecyclePolicySummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicySummary, name: "member"))
    LifecyclePolicySummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyType, name: "type"))
    LifecyclePolicySummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "name"))
    LifecyclePolicySummary.add_member(:policy_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyVersion, name: "policyVersion"))
    LifecyclePolicySummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDescription, name: "description"))
    LifecyclePolicySummary.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "createdDate"))
    LifecyclePolicySummary.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "lastModifiedDate"))
    LifecyclePolicySummary.type = Types::LifecyclePolicySummary
    LifecycleResourceFilter.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleResource, name: "member"))
    ListAccessPoliciesInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPolicyType, name: "type", traits: {"smithy.api#required" => {}}))
    ListAccessPoliciesInput.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceFilter, name: "resource", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}}))
    ListAccessPoliciesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListAccessPoliciesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListAccessPoliciesInput.type = Types::ListAccessPoliciesInput
    ListAccessPoliciesOutput.add_member(:access_policy_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPolicySummaries, name: "accessPolicySummaries"))
    ListAccessPoliciesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListAccessPoliciesOutput.type = Types::ListAccessPoliciesOutput
    ListCollectionGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListCollectionGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListCollectionGroupsRequest.type = Types::ListCollectionGroupsRequest
    ListCollectionGroupsResponse.add_member(:collection_group_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionGroupSummaries, name: "collectionGroupSummaries"))
    ListCollectionGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListCollectionGroupsResponse.type = Types::ListCollectionGroupsResponse
    ListCollectionsInput.add_member(:collection_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionFilters, name: "collectionFilters"))
    ListCollectionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListCollectionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListCollectionsInput.type = Types::ListCollectionsInput
    ListCollectionsOutput.add_member(:collection_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionSummaries, name: "collectionSummaries"))
    ListCollectionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListCollectionsOutput.type = Types::ListCollectionsOutput
    ListLifecyclePoliciesRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyType, name: "type", traits: {"smithy.api#required" => {}}))
    ListLifecyclePoliciesRequest.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleResourceFilter, name: "resources", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}}))
    ListLifecyclePoliciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListLifecyclePoliciesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListLifecyclePoliciesRequest.type = Types::ListLifecyclePoliciesRequest
    ListLifecyclePoliciesResponse.add_member(:lifecycle_policy_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicySummaries, name: "lifecyclePolicySummaries"))
    ListLifecyclePoliciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListLifecyclePoliciesResponse.type = Types::ListLifecyclePoliciesResponse
    ListSecurityConfigsInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityConfigType, name: "type", traits: {"smithy.api#required" => {}}))
    ListSecurityConfigsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListSecurityConfigsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListSecurityConfigsInput.type = Types::ListSecurityConfigsInput
    ListSecurityConfigsOutput.add_member(:security_config_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityConfigSummaries, name: "securityConfigSummaries"))
    ListSecurityConfigsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListSecurityConfigsOutput.type = Types::ListSecurityConfigsOutput
    ListSecurityPoliciesInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityPolicyType, name: "type", traits: {"smithy.api#required" => {}}))
    ListSecurityPoliciesInput.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceFilter, name: "resource", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}}))
    ListSecurityPoliciesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListSecurityPoliciesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListSecurityPoliciesInput.type = Types::ListSecurityPoliciesInput
    ListSecurityPoliciesOutput.add_member(:security_policy_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityPolicySummaries, name: "securityPolicySummaries"))
    ListSecurityPoliciesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListSecurityPoliciesOutput.type = Types::ListSecurityPoliciesOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListVpcEndpointsInput.add_member(:vpc_endpoint_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointFilters, name: "vpcEndpointFilters"))
    ListVpcEndpointsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListVpcEndpointsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListVpcEndpointsInput.type = Types::ListVpcEndpointsInput
    ListVpcEndpointsOutput.add_member(:vpc_endpoint_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointSummaries, name: "vpcEndpointSummaries"))
    ListVpcEndpointsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListVpcEndpointsOutput.type = Types::ListVpcEndpointsOutput
    OcuLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    OcuLimitExceededException.type = Types::OcuLimitExceededException
    ResourceFilter.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SamlConfigOptions.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: SamlMetadata, name: "metadata", traits: {"smithy.api#required" => {}}))
    SamlConfigOptions.add_member(:user_attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: SamlUserAttribute, name: "userAttribute"))
    SamlConfigOptions.add_member(:group_attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: SamlGroupAttribute, name: "groupAttribute"))
    SamlConfigOptions.add_member(:open_search_serverless_entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenSearchServerlessEntityId, name: "openSearchServerlessEntityId"))
    SamlConfigOptions.add_member(:session_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "sessionTimeout", traits: {"smithy.api#range" => {"min" => 5, "max" => 720}}))
    SamlConfigOptions.type = Types::SamlConfigOptions
    SecurityConfigDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityConfigId, name: "id"))
    SecurityConfigDetail.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityConfigType, name: "type"))
    SecurityConfigDetail.add_member(:config_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyVersion, name: "configVersion"))
    SecurityConfigDetail.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigDescription, name: "description"))
    SecurityConfigDetail.add_member(:saml_options, ::Smithy::Schema::Shapes::MemberShape.new(target: SamlConfigOptions, name: "samlOptions"))
    SecurityConfigDetail.add_member(:iam_identity_center_options, ::Smithy::Schema::Shapes::MemberShape.new(target: IamIdentityCenterConfigOptions, name: "iamIdentityCenterOptions"))
    SecurityConfigDetail.add_member(:iam_federation_options, ::Smithy::Schema::Shapes::MemberShape.new(target: IamFederationConfigOptions, name: "iamFederationOptions"))
    SecurityConfigDetail.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "createdDate"))
    SecurityConfigDetail.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "lastModifiedDate"))
    SecurityConfigDetail.type = Types::SecurityConfigDetail
    SecurityConfigStats.add_member(:saml_config_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "SamlConfigCount"))
    SecurityConfigStats.type = Types::SecurityConfigStats
    SecurityConfigSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityConfigSummary, name: "member"))
    SecurityConfigSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityConfigId, name: "id"))
    SecurityConfigSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityConfigType, name: "type"))
    SecurityConfigSummary.add_member(:config_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyVersion, name: "configVersion"))
    SecurityConfigSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigDescription, name: "description"))
    SecurityConfigSummary.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "createdDate"))
    SecurityConfigSummary.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "lastModifiedDate"))
    SecurityConfigSummary.type = Types::SecurityConfigSummary
    SecurityGroupIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupId, name: "member"))
    SecurityPolicyDetail.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityPolicyType, name: "type"))
    SecurityPolicyDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "name"))
    SecurityPolicyDetail.add_member(:policy_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyVersion, name: "policyVersion"))
    SecurityPolicyDetail.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDescription, name: "description"))
    SecurityPolicyDetail.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "policy"))
    SecurityPolicyDetail.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "createdDate"))
    SecurityPolicyDetail.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "lastModifiedDate"))
    SecurityPolicyDetail.type = Types::SecurityPolicyDetail
    SecurityPolicyStats.add_member(:encryption_policy_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "EncryptionPolicyCount"))
    SecurityPolicyStats.add_member(:network_policy_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "NetworkPolicyCount"))
    SecurityPolicyStats.type = Types::SecurityPolicyStats
    SecurityPolicySummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityPolicySummary, name: "member"))
    SecurityPolicySummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityPolicyType, name: "type"))
    SecurityPolicySummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "name"))
    SecurityPolicySummary.add_member(:policy_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyVersion, name: "policyVersion"))
    SecurityPolicySummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDescription, name: "description"))
    SecurityPolicySummary.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "createdDate"))
    SecurityPolicySummary.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "lastModifiedDate"))
    SecurityPolicySummary.type = Types::SecurityPolicySummary
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "quotaCode"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SubnetIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "member"))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    Tags.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, name: "tagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateAccessPolicyInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPolicyType, name: "type", traits: {"smithy.api#required" => {}}))
    UpdateAccessPolicyInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "name", traits: {"smithy.api#required" => {}}))
    UpdateAccessPolicyInput.add_member(:policy_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyVersion, name: "policyVersion", traits: {"smithy.api#required" => {}}))
    UpdateAccessPolicyInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDescription, name: "description"))
    UpdateAccessPolicyInput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, name: "policy"))
    UpdateAccessPolicyInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    UpdateAccessPolicyInput.type = Types::UpdateAccessPolicyInput
    UpdateAccessPolicyOutput.add_member(:access_policy_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPolicyDetail, name: "accessPolicyDetail"))
    UpdateAccessPolicyOutput.type = Types::UpdateAccessPolicyOutput
    UpdateAccountSettingsInput.add_member(:capacity_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityLimits, name: "capacityLimits"))
    UpdateAccountSettingsInput.type = Types::UpdateAccountSettingsInput
    UpdateAccountSettingsOutput.add_member(:account_settings_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountSettingsDetail, name: "accountSettingsDetail"))
    UpdateAccountSettingsOutput.type = Types::UpdateAccountSettingsOutput
    UpdateCollectionDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionId, name: "id"))
    UpdateCollectionDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionName, name: "name"))
    UpdateCollectionDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionStatus, name: "status"))
    UpdateCollectionDetail.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionType, name: "type"))
    UpdateCollectionDetail.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    UpdateCollectionDetail.add_member(:vector_options, ::Smithy::Schema::Shapes::MemberShape.new(target: VectorOptions, name: "vectorOptions"))
    UpdateCollectionDetail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "arn"))
    UpdateCollectionDetail.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "createdDate"))
    UpdateCollectionDetail.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "lastModifiedDate"))
    UpdateCollectionDetail.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionProtection, name: "deletionProtection"))
    UpdateCollectionDetail.type = Types::UpdateCollectionDetail
    UpdateCollectionGroupDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionGroupId, name: "id"))
    UpdateCollectionGroupDetail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "arn"))
    UpdateCollectionGroupDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionGroupName, name: "name"))
    UpdateCollectionGroupDetail.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    UpdateCollectionGroupDetail.add_member(:capacity_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionGroupCapacityLimits, name: "capacityLimits"))
    UpdateCollectionGroupDetail.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "createdDate"))
    UpdateCollectionGroupDetail.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "lastModifiedDate"))
    UpdateCollectionGroupDetail.add_member(:generation, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessGeneration, name: "generation"))
    UpdateCollectionGroupDetail.type = Types::UpdateCollectionGroupDetail
    UpdateCollectionGroupRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionGroupId, name: "id", traits: {"smithy.api#required" => {}}))
    UpdateCollectionGroupRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#length" => {"max" => 1000}}))
    UpdateCollectionGroupRequest.add_member(:capacity_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionGroupCapacityLimits, name: "capacityLimits"))
    UpdateCollectionGroupRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    UpdateCollectionGroupRequest.type = Types::UpdateCollectionGroupRequest
    UpdateCollectionGroupResponse.add_member(:update_collection_group_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateCollectionGroupDetail, name: "updateCollectionGroupDetail"))
    UpdateCollectionGroupResponse.type = Types::UpdateCollectionGroupResponse
    UpdateCollectionInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionId, name: "id", traits: {"smithy.api#required" => {}}))
    UpdateCollectionInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#length" => {"max" => 1000}}))
    UpdateCollectionInput.add_member(:vector_options, ::Smithy::Schema::Shapes::MemberShape.new(target: VectorOptions, name: "vectorOptions"))
    UpdateCollectionInput.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionProtection, name: "deletionProtection"))
    UpdateCollectionInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    UpdateCollectionInput.type = Types::UpdateCollectionInput
    UpdateCollectionOutput.add_member(:update_collection_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateCollectionDetail, name: "updateCollectionDetail"))
    UpdateCollectionOutput.type = Types::UpdateCollectionOutput
    UpdateIamIdentityCenterConfigOptions.add_member(:user_attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: IamIdentityCenterUserAttribute, name: "userAttribute"))
    UpdateIamIdentityCenterConfigOptions.add_member(:group_attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: IamIdentityCenterGroupAttribute, name: "groupAttribute"))
    UpdateIamIdentityCenterConfigOptions.type = Types::UpdateIamIdentityCenterConfigOptions
    UpdateIndexRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionId, name: "id", traits: {"smithy.api#required" => {}}))
    UpdateIndexRequest.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "indexName", traits: {"smithy.api#required" => {}}))
    UpdateIndexRequest.add_member(:index_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexSchema, name: "indexSchema"))
    UpdateIndexRequest.type = Types::UpdateIndexRequest
    UpdateIndexResponse.type = Types::UpdateIndexResponse
    UpdateLifecyclePolicyRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyType, name: "type", traits: {"smithy.api#required" => {}}))
    UpdateLifecyclePolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "name", traits: {"smithy.api#required" => {}}))
    UpdateLifecyclePolicyRequest.add_member(:policy_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyVersion, name: "policyVersion", traits: {"smithy.api#required" => {}}))
    UpdateLifecyclePolicyRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDescription, name: "description"))
    UpdateLifecyclePolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, name: "policy"))
    UpdateLifecyclePolicyRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    UpdateLifecyclePolicyRequest.type = Types::UpdateLifecyclePolicyRequest
    UpdateLifecyclePolicyResponse.add_member(:lifecycle_policy_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyDetail, name: "lifecyclePolicyDetail"))
    UpdateLifecyclePolicyResponse.type = Types::UpdateLifecyclePolicyResponse
    UpdateSecurityConfigInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityConfigId, name: "id", traits: {"smithy.api#required" => {}}))
    UpdateSecurityConfigInput.add_member(:config_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyVersion, name: "configVersion", traits: {"smithy.api#required" => {}}))
    UpdateSecurityConfigInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigDescription, name: "description"))
    UpdateSecurityConfigInput.add_member(:saml_options, ::Smithy::Schema::Shapes::MemberShape.new(target: SamlConfigOptions, name: "samlOptions"))
    UpdateSecurityConfigInput.add_member(:iam_identity_center_options_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateIamIdentityCenterConfigOptions, name: "iamIdentityCenterOptionsUpdates"))
    UpdateSecurityConfigInput.add_member(:iam_federation_options, ::Smithy::Schema::Shapes::MemberShape.new(target: IamFederationConfigOptions, name: "iamFederationOptions"))
    UpdateSecurityConfigInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    UpdateSecurityConfigInput.type = Types::UpdateSecurityConfigInput
    UpdateSecurityConfigOutput.add_member(:security_config_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityConfigDetail, name: "securityConfigDetail"))
    UpdateSecurityConfigOutput.type = Types::UpdateSecurityConfigOutput
    UpdateSecurityPolicyInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityPolicyType, name: "type", traits: {"smithy.api#required" => {}}))
    UpdateSecurityPolicyInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "name", traits: {"smithy.api#required" => {}}))
    UpdateSecurityPolicyInput.add_member(:policy_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyVersion, name: "policyVersion", traits: {"smithy.api#required" => {}}))
    UpdateSecurityPolicyInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDescription, name: "description"))
    UpdateSecurityPolicyInput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, name: "policy"))
    UpdateSecurityPolicyInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    UpdateSecurityPolicyInput.type = Types::UpdateSecurityPolicyInput
    UpdateSecurityPolicyOutput.add_member(:security_policy_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityPolicyDetail, name: "securityPolicyDetail"))
    UpdateSecurityPolicyOutput.type = Types::UpdateSecurityPolicyOutput
    UpdateVpcEndpointDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointId, name: "id"))
    UpdateVpcEndpointDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointName, name: "name"))
    UpdateVpcEndpointDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointStatus, name: "status"))
    UpdateVpcEndpointDetail.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIds, name: "subnetIds"))
    UpdateVpcEndpointDetail.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, name: "securityGroupIds"))
    UpdateVpcEndpointDetail.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "lastModifiedDate"))
    UpdateVpcEndpointDetail.type = Types::UpdateVpcEndpointDetail
    UpdateVpcEndpointInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointId, name: "id", traits: {"smithy.api#required" => {}}))
    UpdateVpcEndpointInput.add_member(:add_subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIds, name: "addSubnetIds"))
    UpdateVpcEndpointInput.add_member(:remove_subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIds, name: "removeSubnetIds"))
    UpdateVpcEndpointInput.add_member(:add_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, name: "addSecurityGroupIds"))
    UpdateVpcEndpointInput.add_member(:remove_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, name: "removeSecurityGroupIds"))
    UpdateVpcEndpointInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    UpdateVpcEndpointInput.type = Types::UpdateVpcEndpointInput
    UpdateVpcEndpointOutput.add_member(:update_vpc_endpoint_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateVpcEndpointDetail, name: "UpdateVpcEndpointDetail"))
    UpdateVpcEndpointOutput.type = Types::UpdateVpcEndpointOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ValidationException.type = Types::ValidationException
    VectorOptions.add_member(:serverless_vector_acceleration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessVectorAccelerationStatus, name: "ServerlessVectorAcceleration", traits: {"smithy.api#required" => {}}))
    VectorOptions.type = Types::VectorOptions
    VpcEndpointDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointId, name: "id"))
    VpcEndpointDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointName, name: "name"))
    VpcEndpointDetail.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "vpcId"))
    VpcEndpointDetail.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIds, name: "subnetIds"))
    VpcEndpointDetail.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, name: "securityGroupIds"))
    VpcEndpointDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointStatus, name: "status"))
    VpcEndpointDetail.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "createdDate"))
    VpcEndpointDetail.add_member(:failure_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "failureCode"))
    VpcEndpointDetail.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "failureMessage"))
    VpcEndpointDetail.type = Types::VpcEndpointDetail
    VpcEndpointDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointDetail, name: "member"))
    VpcEndpointErrorDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointId, name: "id"))
    VpcEndpointErrorDetail.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorMessage"))
    VpcEndpointErrorDetail.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorCode"))
    VpcEndpointErrorDetail.type = Types::VpcEndpointErrorDetail
    VpcEndpointErrorDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointErrorDetail, name: "member"))
    VpcEndpointFilters.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointStatus, name: "status"))
    VpcEndpointFilters.type = Types::VpcEndpointFilters
    VpcEndpointIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointId, name: "member"))
    VpcEndpointSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointSummary, name: "member"))
    VpcEndpointSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointId, name: "id"))
    VpcEndpointSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointName, name: "name"))
    VpcEndpointSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointStatus, name: "status"))
    VpcEndpointSummary.type = Types::VpcEndpointSummary

    OpenSearchServerless = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.opensearchserverless#OpenSearchServerless"
      service.name = "OpenSearchServerless"
      service.version = "2021-11-01"
      service.traits = {"aws.api#service" => {"sdkId" => "OpenSearchServerless", "arnNamespace" => "aoss"}, "aws.auth#sigv4" => {"name" => "aoss"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "OpenSearch Service Serverless", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://aoss-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://aoss-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://aoss.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://aoss.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:batch_get_collection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#BatchGetCollection"
        operation.name = "BatchGetCollection"
        operation.input = BatchGetCollectionInput
        operation.output = BatchGetCollectionOutput
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:batch_get_collection_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#BatchGetCollectionGroup"
        operation.name = "BatchGetCollectionGroup"
        operation.input = BatchGetCollectionGroupRequest
        operation.output = BatchGetCollectionGroupResponse
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:batch_get_effective_lifecycle_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#BatchGetEffectiveLifecyclePolicy"
        operation.name = "BatchGetEffectiveLifecyclePolicy"
        operation.input = BatchGetEffectiveLifecyclePolicyRequest
        operation.output = BatchGetEffectiveLifecyclePolicyResponse
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:batch_get_lifecycle_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#BatchGetLifecyclePolicy"
        operation.name = "BatchGetLifecyclePolicy"
        operation.input = BatchGetLifecyclePolicyRequest
        operation.output = BatchGetLifecyclePolicyResponse
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:batch_get_vpc_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#BatchGetVpcEndpoint"
        operation.name = "BatchGetVpcEndpoint"
        operation.input = BatchGetVpcEndpointInput
        operation.output = BatchGetVpcEndpointOutput
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:create_access_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#CreateAccessPolicy"
        operation.name = "CreateAccessPolicy"
        operation.input = CreateAccessPolicyInput
        operation.output = CreateAccessPolicyOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_collection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#CreateCollection"
        operation.name = "CreateCollection"
        operation.input = CreateCollectionInput
        operation.output = CreateCollectionOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << OcuLimitExceededException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_collection_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#CreateCollectionGroup"
        operation.name = "CreateCollectionGroup"
        operation.input = CreateCollectionGroupRequest
        operation.output = CreateCollectionGroupResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_index, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#CreateIndex"
        operation.name = "CreateIndex"
        operation.input = CreateIndexRequest
        operation.output = CreateIndexResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_lifecycle_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#CreateLifecyclePolicy"
        operation.name = "CreateLifecyclePolicy"
        operation.input = CreateLifecyclePolicyRequest
        operation.output = CreateLifecyclePolicyResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_security_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#CreateSecurityConfig"
        operation.name = "CreateSecurityConfig"
        operation.input = CreateSecurityConfigInput
        operation.output = CreateSecurityConfigOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_security_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#CreateSecurityPolicy"
        operation.name = "CreateSecurityPolicy"
        operation.input = CreateSecurityPolicyInput
        operation.output = CreateSecurityPolicyOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_vpc_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#CreateVpcEndpoint"
        operation.name = "CreateVpcEndpoint"
        operation.input = CreateVpcEndpointInput
        operation.output = CreateVpcEndpointOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_access_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#DeleteAccessPolicy"
        operation.name = "DeleteAccessPolicy"
        operation.input = DeleteAccessPolicyInput
        operation.output = DeleteAccessPolicyOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_collection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#DeleteCollection"
        operation.name = "DeleteCollection"
        operation.input = DeleteCollectionInput
        operation.output = DeleteCollectionOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_collection_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#DeleteCollectionGroup"
        operation.name = "DeleteCollectionGroup"
        operation.input = DeleteCollectionGroupRequest
        operation.output = DeleteCollectionGroupResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_index, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#DeleteIndex"
        operation.name = "DeleteIndex"
        operation.input = DeleteIndexRequest
        operation.output = DeleteIndexResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_lifecycle_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#DeleteLifecyclePolicy"
        operation.name = "DeleteLifecyclePolicy"
        operation.input = DeleteLifecyclePolicyRequest
        operation.output = DeleteLifecyclePolicyResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_security_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#DeleteSecurityConfig"
        operation.name = "DeleteSecurityConfig"
        operation.input = DeleteSecurityConfigInput
        operation.output = DeleteSecurityConfigOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_security_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#DeleteSecurityPolicy"
        operation.name = "DeleteSecurityPolicy"
        operation.input = DeleteSecurityPolicyInput
        operation.output = DeleteSecurityPolicyOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_vpc_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#DeleteVpcEndpoint"
        operation.name = "DeleteVpcEndpoint"
        operation.input = DeleteVpcEndpointInput
        operation.output = DeleteVpcEndpointOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_access_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#GetAccessPolicy"
        operation.name = "GetAccessPolicy"
        operation.input = GetAccessPolicyInput
        operation.output = GetAccessPolicyOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_account_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#GetAccountSettings"
        operation.name = "GetAccountSettings"
        operation.input = GetAccountSettingsInput
        operation.output = GetAccountSettingsOutput
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_index, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#GetIndex"
        operation.name = "GetIndex"
        operation.input = GetIndexRequest
        operation.output = GetIndexResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_policies_stats, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#GetPoliciesStats"
        operation.name = "GetPoliciesStats"
        operation.input = GetPoliciesStatsInput
        operation.output = GetPoliciesStatsOutput
        operation.errors << InternalServerException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_security_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#GetSecurityConfig"
        operation.name = "GetSecurityConfig"
        operation.input = GetSecurityConfigInput
        operation.output = GetSecurityConfigOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_security_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#GetSecurityPolicy"
        operation.name = "GetSecurityPolicy"
        operation.input = GetSecurityPolicyInput
        operation.output = GetSecurityPolicyOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_access_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#ListAccessPolicies"
        operation.name = "ListAccessPolicies"
        operation.input = ListAccessPoliciesInput
        operation.output = ListAccessPoliciesOutput
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAccessPolicies.new
      end)
      service.add_operation(:list_collection_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#ListCollectionGroups"
        operation.name = "ListCollectionGroups"
        operation.input = ListCollectionGroupsRequest
        operation.output = ListCollectionGroupsResponse
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCollectionGroups.new
      end)
      service.add_operation(:list_collections, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#ListCollections"
        operation.name = "ListCollections"
        operation.input = ListCollectionsInput
        operation.output = ListCollectionsOutput
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCollections.new
      end)
      service.add_operation(:list_lifecycle_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#ListLifecyclePolicies"
        operation.name = "ListLifecyclePolicies"
        operation.input = ListLifecyclePoliciesRequest
        operation.output = ListLifecyclePoliciesResponse
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListLifecyclePolicies.new
      end)
      service.add_operation(:list_security_configs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#ListSecurityConfigs"
        operation.name = "ListSecurityConfigs"
        operation.input = ListSecurityConfigsInput
        operation.output = ListSecurityConfigsOutput
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSecurityConfigs.new
      end)
      service.add_operation(:list_security_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#ListSecurityPolicies"
        operation.name = "ListSecurityPolicies"
        operation.input = ListSecurityPoliciesInput
        operation.output = ListSecurityPoliciesOutput
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSecurityPolicies.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:list_vpc_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#ListVpcEndpoints"
        operation.name = "ListVpcEndpoints"
        operation.input = ListVpcEndpointsInput
        operation.output = ListVpcEndpointsOutput
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListVpcEndpoints.new
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_access_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#UpdateAccessPolicy"
        operation.name = "UpdateAccessPolicy"
        operation.input = UpdateAccessPolicyInput
        operation.output = UpdateAccessPolicyOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_account_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#UpdateAccountSettings"
        operation.name = "UpdateAccountSettings"
        operation.input = UpdateAccountSettingsInput
        operation.output = UpdateAccountSettingsOutput
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_collection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#UpdateCollection"
        operation.name = "UpdateCollection"
        operation.input = UpdateCollectionInput
        operation.output = UpdateCollectionOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_collection_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#UpdateCollectionGroup"
        operation.name = "UpdateCollectionGroup"
        operation.input = UpdateCollectionGroupRequest
        operation.output = UpdateCollectionGroupResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_index, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#UpdateIndex"
        operation.name = "UpdateIndex"
        operation.input = UpdateIndexRequest
        operation.output = UpdateIndexResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_lifecycle_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#UpdateLifecyclePolicy"
        operation.name = "UpdateLifecyclePolicy"
        operation.input = UpdateLifecyclePolicyRequest
        operation.output = UpdateLifecyclePolicyResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_security_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#UpdateSecurityConfig"
        operation.name = "UpdateSecurityConfig"
        operation.input = UpdateSecurityConfigInput
        operation.output = UpdateSecurityConfigOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_security_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#UpdateSecurityPolicy"
        operation.name = "UpdateSecurityPolicy"
        operation.input = UpdateSecurityPolicyInput
        operation.output = UpdateSecurityPolicyOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_vpc_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opensearchserverless#UpdateVpcEndpoint"
        operation.name = "UpdateVpcEndpoint"
        operation.input = UpdateVpcEndpointInput
        operation.output = UpdateVpcEndpointOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ValidationException
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
