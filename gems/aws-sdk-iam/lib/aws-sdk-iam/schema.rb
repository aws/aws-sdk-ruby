# frozen_string_literal: true

# This is generated code!

module Aws::IAM
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessAdvisorUsageGranularityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iam#AccessAdvisorUsageGranularityType", name: "AccessAdvisorUsageGranularityType")
    AccessDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#AccessDetail", name: "AccessDetail")
    AccessDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#AccessDetails", name: "AccessDetails")
    AccessKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#AccessKey", name: "AccessKey")
    AccessKeyLastUsed = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#AccessKeyLastUsed", name: "AccessKeyLastUsed")
    AccessKeyMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#AccessKeyMetadata", name: "AccessKeyMetadata")
    AccountNotManagementOrDelegatedAdministratorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#AccountNotManagementOrDelegatedAdministratorException", name: "AccountNotManagementOrDelegatedAdministratorException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ActionNameListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#ActionNameListType", name: "ActionNameListType")
    ActionNameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#ActionNameType", name: "ActionNameType", traits: {"smithy.api#length" => {"min" => 3, "max" => 128}})
    AddClientIDToOpenIDConnectProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#AddClientIDToOpenIDConnectProviderRequest", name: "AddClientIDToOpenIDConnectProviderRequest")
    AddRoleToInstanceProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#AddRoleToInstanceProfileRequest", name: "AddRoleToInstanceProfileRequest")
    AddUserToGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#AddUserToGroupRequest", name: "AddUserToGroupRequest")
    ArnListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#ArnListType", name: "ArnListType")
    AttachGroupPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#AttachGroupPolicyRequest", name: "AttachGroupPolicyRequest")
    AttachRolePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#AttachRolePolicyRequest", name: "AttachRolePolicyRequest")
    AttachUserPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#AttachUserPolicyRequest", name: "AttachUserPolicyRequest")
    AttachedPermissionsBoundary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#AttachedPermissionsBoundary", name: "AttachedPermissionsBoundary")
    AttachedPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#AttachedPolicy", name: "AttachedPolicy")
    BootstrapDatum = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.iam#BootstrapDatum", name: "BootstrapDatum", traits: {"smithy.api#sensitive" => {}})
    CallerIsNotManagementAccountException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#CallerIsNotManagementAccountException", name: "CallerIsNotManagementAccountException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CertificationKeyType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#CertificationKeyType", name: "CertificationKeyType", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\u0020-\\u00FF]+$"})
    CertificationMapType = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iam#CertificationMapType", name: "CertificationMapType")
    CertificationValueType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#CertificationValueType", name: "CertificationValueType", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[\\u0020-\\u00FF]+$"})
    ChangePasswordRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ChangePasswordRequest", name: "ChangePasswordRequest")
    ColumnNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iam#ColumnNumber", name: "ColumnNumber", traits: {"smithy.api#default" => 0})
    ConcurrentModificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ConcurrentModificationException", name: "ConcurrentModificationException", traits: {"aws.protocols#awsQueryError" => {"code" => "ConcurrentModification", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConcurrentModificationMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#ConcurrentModificationMessage", name: "ConcurrentModificationMessage")
    ContextEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ContextEntry", name: "ContextEntry")
    ContextEntryListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#ContextEntryListType", name: "ContextEntryListType")
    ContextKeyNameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#ContextKeyNameType", name: "ContextKeyNameType", traits: {"smithy.api#length" => {"min" => 5, "max" => 256}})
    ContextKeyNamesResultListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#ContextKeyNamesResultListType", name: "ContextKeyNamesResultListType")
    ContextKeyTypeEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iam#ContextKeyTypeEnum", name: "ContextKeyTypeEnum")
    ContextKeyValueListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#ContextKeyValueListType", name: "ContextKeyValueListType")
    ContextKeyValueType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#ContextKeyValueType", name: "ContextKeyValueType")
    CreateAccessKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#CreateAccessKeyRequest", name: "CreateAccessKeyRequest")
    CreateAccessKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#CreateAccessKeyResponse", name: "CreateAccessKeyResponse")
    CreateAccountAliasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#CreateAccountAliasRequest", name: "CreateAccountAliasRequest")
    CreateGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#CreateGroupRequest", name: "CreateGroupRequest")
    CreateGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#CreateGroupResponse", name: "CreateGroupResponse")
    CreateInstanceProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#CreateInstanceProfileRequest", name: "CreateInstanceProfileRequest")
    CreateInstanceProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#CreateInstanceProfileResponse", name: "CreateInstanceProfileResponse")
    CreateLoginProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#CreateLoginProfileRequest", name: "CreateLoginProfileRequest")
    CreateLoginProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#CreateLoginProfileResponse", name: "CreateLoginProfileResponse")
    CreateOpenIDConnectProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#CreateOpenIDConnectProviderRequest", name: "CreateOpenIDConnectProviderRequest")
    CreateOpenIDConnectProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#CreateOpenIDConnectProviderResponse", name: "CreateOpenIDConnectProviderResponse")
    CreatePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#CreatePolicyRequest", name: "CreatePolicyRequest")
    CreatePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#CreatePolicyResponse", name: "CreatePolicyResponse")
    CreatePolicyVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#CreatePolicyVersionRequest", name: "CreatePolicyVersionRequest")
    CreatePolicyVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#CreatePolicyVersionResponse", name: "CreatePolicyVersionResponse")
    CreateRoleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#CreateRoleRequest", name: "CreateRoleRequest")
    CreateRoleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#CreateRoleResponse", name: "CreateRoleResponse")
    CreateSAMLProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#CreateSAMLProviderRequest", name: "CreateSAMLProviderRequest")
    CreateSAMLProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#CreateSAMLProviderResponse", name: "CreateSAMLProviderResponse")
    CreateServiceLinkedRoleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#CreateServiceLinkedRoleRequest", name: "CreateServiceLinkedRoleRequest")
    CreateServiceLinkedRoleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#CreateServiceLinkedRoleResponse", name: "CreateServiceLinkedRoleResponse")
    CreateServiceSpecificCredentialRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#CreateServiceSpecificCredentialRequest", name: "CreateServiceSpecificCredentialRequest")
    CreateServiceSpecificCredentialResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#CreateServiceSpecificCredentialResponse", name: "CreateServiceSpecificCredentialResponse")
    CreateUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#CreateUserRequest", name: "CreateUserRequest")
    CreateUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#CreateUserResponse", name: "CreateUserResponse")
    CreateVirtualMFADeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#CreateVirtualMFADeviceRequest", name: "CreateVirtualMFADeviceRequest")
    CreateVirtualMFADeviceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#CreateVirtualMFADeviceResponse", name: "CreateVirtualMFADeviceResponse")
    CredentialReportExpiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#CredentialReportExpiredException", name: "CredentialReportExpiredException", traits: {"aws.protocols#awsQueryError" => {"code" => "ReportExpired", "httpResponseCode" => 410}, "smithy.api#error" => "client", "smithy.api#httpError" => 410})
    CredentialReportNotPresentException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#CredentialReportNotPresentException", name: "CredentialReportNotPresentException", traits: {"aws.protocols#awsQueryError" => {"code" => "ReportNotPresent", "httpResponseCode" => 410}, "smithy.api#error" => "client", "smithy.api#httpError" => 410})
    CredentialReportNotReadyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#CredentialReportNotReadyException", name: "CredentialReportNotReadyException", traits: {"aws.protocols#awsQueryError" => {"code" => "ReportInProgress", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DeactivateMFADeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#DeactivateMFADeviceRequest", name: "DeactivateMFADeviceRequest")
    DeleteAccessKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#DeleteAccessKeyRequest", name: "DeleteAccessKeyRequest")
    DeleteAccountAliasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#DeleteAccountAliasRequest", name: "DeleteAccountAliasRequest")
    DeleteConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#DeleteConflictException", name: "DeleteConflictException", traits: {"aws.protocols#awsQueryError" => {"code" => "DeleteConflict", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DeleteGroupPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#DeleteGroupPolicyRequest", name: "DeleteGroupPolicyRequest")
    DeleteGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#DeleteGroupRequest", name: "DeleteGroupRequest")
    DeleteInstanceProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#DeleteInstanceProfileRequest", name: "DeleteInstanceProfileRequest")
    DeleteLoginProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#DeleteLoginProfileRequest", name: "DeleteLoginProfileRequest")
    DeleteOpenIDConnectProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#DeleteOpenIDConnectProviderRequest", name: "DeleteOpenIDConnectProviderRequest")
    DeletePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#DeletePolicyRequest", name: "DeletePolicyRequest")
    DeletePolicyVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#DeletePolicyVersionRequest", name: "DeletePolicyVersionRequest")
    DeleteRolePermissionsBoundaryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#DeleteRolePermissionsBoundaryRequest", name: "DeleteRolePermissionsBoundaryRequest")
    DeleteRolePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#DeleteRolePolicyRequest", name: "DeleteRolePolicyRequest")
    DeleteRoleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#DeleteRoleRequest", name: "DeleteRoleRequest")
    DeleteSAMLProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#DeleteSAMLProviderRequest", name: "DeleteSAMLProviderRequest")
    DeleteSSHPublicKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#DeleteSSHPublicKeyRequest", name: "DeleteSSHPublicKeyRequest")
    DeleteServerCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#DeleteServerCertificateRequest", name: "DeleteServerCertificateRequest")
    DeleteServiceLinkedRoleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#DeleteServiceLinkedRoleRequest", name: "DeleteServiceLinkedRoleRequest")
    DeleteServiceLinkedRoleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#DeleteServiceLinkedRoleResponse", name: "DeleteServiceLinkedRoleResponse")
    DeleteServiceSpecificCredentialRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#DeleteServiceSpecificCredentialRequest", name: "DeleteServiceSpecificCredentialRequest")
    DeleteSigningCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#DeleteSigningCertificateRequest", name: "DeleteSigningCertificateRequest")
    DeleteUserPermissionsBoundaryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#DeleteUserPermissionsBoundaryRequest", name: "DeleteUserPermissionsBoundaryRequest")
    DeleteUserPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#DeleteUserPolicyRequest", name: "DeleteUserPolicyRequest")
    DeleteUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#DeleteUserRequest", name: "DeleteUserRequest")
    DeleteVirtualMFADeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#DeleteVirtualMFADeviceRequest", name: "DeleteVirtualMFADeviceRequest")
    DeletionTaskFailureReasonType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#DeletionTaskFailureReasonType", name: "DeletionTaskFailureReasonType")
    DeletionTaskIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#DeletionTaskIdType", name: "DeletionTaskIdType", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    DeletionTaskStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iam#DeletionTaskStatusType", name: "DeletionTaskStatusType")
    DetachGroupPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#DetachGroupPolicyRequest", name: "DetachGroupPolicyRequest")
    DetachRolePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#DetachRolePolicyRequest", name: "DetachRolePolicyRequest")
    DetachUserPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#DetachUserPolicyRequest", name: "DetachUserPolicyRequest")
    DisableOrganizationsRootCredentialsManagementRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#DisableOrganizationsRootCredentialsManagementRequest", name: "DisableOrganizationsRootCredentialsManagementRequest")
    DisableOrganizationsRootCredentialsManagementResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#DisableOrganizationsRootCredentialsManagementResponse", name: "DisableOrganizationsRootCredentialsManagementResponse")
    DisableOrganizationsRootSessionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#DisableOrganizationsRootSessionsRequest", name: "DisableOrganizationsRootSessionsRequest")
    DisableOrganizationsRootSessionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#DisableOrganizationsRootSessionsResponse", name: "DisableOrganizationsRootSessionsResponse")
    DuplicateCertificateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#DuplicateCertificateException", name: "DuplicateCertificateException", traits: {"aws.protocols#awsQueryError" => {"code" => "DuplicateCertificate", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DuplicateSSHPublicKeyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#DuplicateSSHPublicKeyException", name: "DuplicateSSHPublicKeyException", traits: {"aws.protocols#awsQueryError" => {"code" => "DuplicateSSHPublicKey", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EnableMFADeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#EnableMFADeviceRequest", name: "EnableMFADeviceRequest")
    EnableOrganizationsRootCredentialsManagementRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#EnableOrganizationsRootCredentialsManagementRequest", name: "EnableOrganizationsRootCredentialsManagementRequest")
    EnableOrganizationsRootCredentialsManagementResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#EnableOrganizationsRootCredentialsManagementResponse", name: "EnableOrganizationsRootCredentialsManagementResponse")
    EnableOrganizationsRootSessionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#EnableOrganizationsRootSessionsRequest", name: "EnableOrganizationsRootSessionsRequest")
    EnableOrganizationsRootSessionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#EnableOrganizationsRootSessionsResponse", name: "EnableOrganizationsRootSessionsResponse")
    EntityAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#EntityAlreadyExistsException", name: "EntityAlreadyExistsException", traits: {"aws.protocols#awsQueryError" => {"code" => "EntityAlreadyExists", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    EntityDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#EntityDetails", name: "EntityDetails")
    EntityInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#EntityInfo", name: "EntityInfo")
    EntityTemporarilyUnmodifiableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#EntityTemporarilyUnmodifiableException", name: "EntityTemporarilyUnmodifiableException", traits: {"aws.protocols#awsQueryError" => {"code" => "EntityTemporarilyUnmodifiable", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    EntityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iam#EntityType", name: "EntityType")
    ErrorDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ErrorDetails", name: "ErrorDetails")
    EvalDecisionDetailsType = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iam#EvalDecisionDetailsType", name: "EvalDecisionDetailsType")
    EvalDecisionSourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#EvalDecisionSourceType", name: "EvalDecisionSourceType", traits: {"smithy.api#length" => {"min" => 3, "max" => 256}})
    EvaluationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#EvaluationResult", name: "EvaluationResult")
    EvaluationResultsListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#EvaluationResultsListType", name: "EvaluationResultsListType")
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#ExceptionMessage", name: "ExceptionMessage")
    FeatureType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iam#FeatureType", name: "FeatureType")
    FeaturesListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#FeaturesListType", name: "FeaturesListType")
    GenerateCredentialReportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GenerateCredentialReportResponse", name: "GenerateCredentialReportResponse")
    GenerateOrganizationsAccessReportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GenerateOrganizationsAccessReportRequest", name: "GenerateOrganizationsAccessReportRequest")
    GenerateOrganizationsAccessReportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GenerateOrganizationsAccessReportResponse", name: "GenerateOrganizationsAccessReportResponse")
    GenerateServiceLastAccessedDetailsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GenerateServiceLastAccessedDetailsRequest", name: "GenerateServiceLastAccessedDetailsRequest")
    GenerateServiceLastAccessedDetailsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GenerateServiceLastAccessedDetailsResponse", name: "GenerateServiceLastAccessedDetailsResponse")
    GetAccessKeyLastUsedRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetAccessKeyLastUsedRequest", name: "GetAccessKeyLastUsedRequest")
    GetAccessKeyLastUsedResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetAccessKeyLastUsedResponse", name: "GetAccessKeyLastUsedResponse")
    GetAccountAuthorizationDetailsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetAccountAuthorizationDetailsRequest", name: "GetAccountAuthorizationDetailsRequest")
    GetAccountAuthorizationDetailsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetAccountAuthorizationDetailsResponse", name: "GetAccountAuthorizationDetailsResponse")
    GetAccountPasswordPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetAccountPasswordPolicyResponse", name: "GetAccountPasswordPolicyResponse")
    GetAccountSummaryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetAccountSummaryResponse", name: "GetAccountSummaryResponse")
    GetContextKeysForCustomPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetContextKeysForCustomPolicyOutput", name: "GetContextKeysForCustomPolicyOutput")
    GetContextKeysForCustomPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetContextKeysForCustomPolicyRequest", name: "GetContextKeysForCustomPolicyRequest")
    GetContextKeysForPrincipalPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetContextKeysForPrincipalPolicyOutput", name: "GetContextKeysForPrincipalPolicyOutput")
    GetContextKeysForPrincipalPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetContextKeysForPrincipalPolicyRequest", name: "GetContextKeysForPrincipalPolicyRequest")
    GetCredentialReportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetCredentialReportResponse", name: "GetCredentialReportResponse")
    GetGroupPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetGroupPolicyRequest", name: "GetGroupPolicyRequest")
    GetGroupPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetGroupPolicyResponse", name: "GetGroupPolicyResponse")
    GetGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetGroupRequest", name: "GetGroupRequest")
    GetGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetGroupResponse", name: "GetGroupResponse")
    GetInstanceProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetInstanceProfileRequest", name: "GetInstanceProfileRequest")
    GetInstanceProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetInstanceProfileResponse", name: "GetInstanceProfileResponse")
    GetLoginProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetLoginProfileRequest", name: "GetLoginProfileRequest")
    GetLoginProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetLoginProfileResponse", name: "GetLoginProfileResponse")
    GetMFADeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetMFADeviceRequest", name: "GetMFADeviceRequest")
    GetMFADeviceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetMFADeviceResponse", name: "GetMFADeviceResponse")
    GetOpenIDConnectProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetOpenIDConnectProviderRequest", name: "GetOpenIDConnectProviderRequest")
    GetOpenIDConnectProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetOpenIDConnectProviderResponse", name: "GetOpenIDConnectProviderResponse")
    GetOrganizationsAccessReportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetOrganizationsAccessReportRequest", name: "GetOrganizationsAccessReportRequest")
    GetOrganizationsAccessReportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetOrganizationsAccessReportResponse", name: "GetOrganizationsAccessReportResponse")
    GetPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetPolicyRequest", name: "GetPolicyRequest")
    GetPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetPolicyResponse", name: "GetPolicyResponse")
    GetPolicyVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetPolicyVersionRequest", name: "GetPolicyVersionRequest")
    GetPolicyVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetPolicyVersionResponse", name: "GetPolicyVersionResponse")
    GetRolePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetRolePolicyRequest", name: "GetRolePolicyRequest")
    GetRolePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetRolePolicyResponse", name: "GetRolePolicyResponse")
    GetRoleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetRoleRequest", name: "GetRoleRequest")
    GetRoleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetRoleResponse", name: "GetRoleResponse")
    GetSAMLProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetSAMLProviderRequest", name: "GetSAMLProviderRequest")
    GetSAMLProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetSAMLProviderResponse", name: "GetSAMLProviderResponse")
    GetSSHPublicKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetSSHPublicKeyRequest", name: "GetSSHPublicKeyRequest")
    GetSSHPublicKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetSSHPublicKeyResponse", name: "GetSSHPublicKeyResponse")
    GetServerCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetServerCertificateRequest", name: "GetServerCertificateRequest")
    GetServerCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetServerCertificateResponse", name: "GetServerCertificateResponse")
    GetServiceLastAccessedDetailsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetServiceLastAccessedDetailsRequest", name: "GetServiceLastAccessedDetailsRequest")
    GetServiceLastAccessedDetailsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetServiceLastAccessedDetailsResponse", name: "GetServiceLastAccessedDetailsResponse")
    GetServiceLastAccessedDetailsWithEntitiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetServiceLastAccessedDetailsWithEntitiesRequest", name: "GetServiceLastAccessedDetailsWithEntitiesRequest")
    GetServiceLastAccessedDetailsWithEntitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetServiceLastAccessedDetailsWithEntitiesResponse", name: "GetServiceLastAccessedDetailsWithEntitiesResponse")
    GetServiceLinkedRoleDeletionStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetServiceLinkedRoleDeletionStatusRequest", name: "GetServiceLinkedRoleDeletionStatusRequest")
    GetServiceLinkedRoleDeletionStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetServiceLinkedRoleDeletionStatusResponse", name: "GetServiceLinkedRoleDeletionStatusResponse")
    GetUserPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetUserPolicyRequest", name: "GetUserPolicyRequest")
    GetUserPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetUserPolicyResponse", name: "GetUserPolicyResponse")
    GetUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetUserRequest", name: "GetUserRequest")
    GetUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GetUserResponse", name: "GetUserResponse")
    Group = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#Group", name: "Group")
    GroupDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#GroupDetail", name: "GroupDetail")
    InstanceProfile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#InstanceProfile", name: "InstanceProfile")
    InvalidAuthenticationCodeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#InvalidAuthenticationCodeException", name: "InvalidAuthenticationCodeException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidAuthenticationCode", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    InvalidCertificateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#InvalidCertificateException", name: "InvalidCertificateException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidCertificate", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidInputException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#InvalidInputException", name: "InvalidInputException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidInput", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidPublicKeyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#InvalidPublicKeyException", name: "InvalidPublicKeyException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidPublicKey", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidUserTypeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#InvalidUserTypeException", name: "InvalidUserTypeException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidUserType", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KeyPairMismatchException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#KeyPairMismatchException", name: "KeyPairMismatchException", traits: {"aws.protocols#awsQueryError" => {"code" => "KeyPairMismatch", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#LimitExceededException", name: "LimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "LimitExceeded", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    LineNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iam#LineNumber", name: "LineNumber", traits: {"smithy.api#default" => 0})
    ListAccessKeysRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListAccessKeysRequest", name: "ListAccessKeysRequest")
    ListAccessKeysResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListAccessKeysResponse", name: "ListAccessKeysResponse")
    ListAccountAliasesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListAccountAliasesRequest", name: "ListAccountAliasesRequest")
    ListAccountAliasesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListAccountAliasesResponse", name: "ListAccountAliasesResponse")
    ListAttachedGroupPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListAttachedGroupPoliciesRequest", name: "ListAttachedGroupPoliciesRequest")
    ListAttachedGroupPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListAttachedGroupPoliciesResponse", name: "ListAttachedGroupPoliciesResponse")
    ListAttachedRolePoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListAttachedRolePoliciesRequest", name: "ListAttachedRolePoliciesRequest")
    ListAttachedRolePoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListAttachedRolePoliciesResponse", name: "ListAttachedRolePoliciesResponse")
    ListAttachedUserPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListAttachedUserPoliciesRequest", name: "ListAttachedUserPoliciesRequest")
    ListAttachedUserPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListAttachedUserPoliciesResponse", name: "ListAttachedUserPoliciesResponse")
    ListEntitiesForPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListEntitiesForPolicyRequest", name: "ListEntitiesForPolicyRequest")
    ListEntitiesForPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListEntitiesForPolicyResponse", name: "ListEntitiesForPolicyResponse")
    ListGroupPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListGroupPoliciesRequest", name: "ListGroupPoliciesRequest")
    ListGroupPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListGroupPoliciesResponse", name: "ListGroupPoliciesResponse")
    ListGroupsForUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListGroupsForUserRequest", name: "ListGroupsForUserRequest")
    ListGroupsForUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListGroupsForUserResponse", name: "ListGroupsForUserResponse")
    ListGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListGroupsRequest", name: "ListGroupsRequest")
    ListGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListGroupsResponse", name: "ListGroupsResponse")
    ListInstanceProfileTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListInstanceProfileTagsRequest", name: "ListInstanceProfileTagsRequest")
    ListInstanceProfileTagsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListInstanceProfileTagsResponse", name: "ListInstanceProfileTagsResponse")
    ListInstanceProfilesForRoleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListInstanceProfilesForRoleRequest", name: "ListInstanceProfilesForRoleRequest")
    ListInstanceProfilesForRoleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListInstanceProfilesForRoleResponse", name: "ListInstanceProfilesForRoleResponse")
    ListInstanceProfilesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListInstanceProfilesRequest", name: "ListInstanceProfilesRequest")
    ListInstanceProfilesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListInstanceProfilesResponse", name: "ListInstanceProfilesResponse")
    ListMFADeviceTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListMFADeviceTagsRequest", name: "ListMFADeviceTagsRequest")
    ListMFADeviceTagsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListMFADeviceTagsResponse", name: "ListMFADeviceTagsResponse")
    ListMFADevicesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListMFADevicesRequest", name: "ListMFADevicesRequest")
    ListMFADevicesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListMFADevicesResponse", name: "ListMFADevicesResponse")
    ListOpenIDConnectProviderTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListOpenIDConnectProviderTagsRequest", name: "ListOpenIDConnectProviderTagsRequest")
    ListOpenIDConnectProviderTagsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListOpenIDConnectProviderTagsResponse", name: "ListOpenIDConnectProviderTagsResponse")
    ListOpenIDConnectProvidersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListOpenIDConnectProvidersRequest", name: "ListOpenIDConnectProvidersRequest")
    ListOpenIDConnectProvidersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListOpenIDConnectProvidersResponse", name: "ListOpenIDConnectProvidersResponse")
    ListOrganizationsFeaturesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListOrganizationsFeaturesRequest", name: "ListOrganizationsFeaturesRequest")
    ListOrganizationsFeaturesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListOrganizationsFeaturesResponse", name: "ListOrganizationsFeaturesResponse")
    ListPoliciesGrantingServiceAccessEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListPoliciesGrantingServiceAccessEntry", name: "ListPoliciesGrantingServiceAccessEntry")
    ListPoliciesGrantingServiceAccessRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListPoliciesGrantingServiceAccessRequest", name: "ListPoliciesGrantingServiceAccessRequest")
    ListPoliciesGrantingServiceAccessResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListPoliciesGrantingServiceAccessResponse", name: "ListPoliciesGrantingServiceAccessResponse")
    ListPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListPoliciesRequest", name: "ListPoliciesRequest")
    ListPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListPoliciesResponse", name: "ListPoliciesResponse")
    ListPolicyTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListPolicyTagsRequest", name: "ListPolicyTagsRequest")
    ListPolicyTagsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListPolicyTagsResponse", name: "ListPolicyTagsResponse")
    ListPolicyVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListPolicyVersionsRequest", name: "ListPolicyVersionsRequest")
    ListPolicyVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListPolicyVersionsResponse", name: "ListPolicyVersionsResponse")
    ListRolePoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListRolePoliciesRequest", name: "ListRolePoliciesRequest")
    ListRolePoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListRolePoliciesResponse", name: "ListRolePoliciesResponse")
    ListRoleTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListRoleTagsRequest", name: "ListRoleTagsRequest")
    ListRoleTagsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListRoleTagsResponse", name: "ListRoleTagsResponse")
    ListRolesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListRolesRequest", name: "ListRolesRequest")
    ListRolesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListRolesResponse", name: "ListRolesResponse")
    ListSAMLProviderTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListSAMLProviderTagsRequest", name: "ListSAMLProviderTagsRequest")
    ListSAMLProviderTagsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListSAMLProviderTagsResponse", name: "ListSAMLProviderTagsResponse")
    ListSAMLProvidersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListSAMLProvidersRequest", name: "ListSAMLProvidersRequest")
    ListSAMLProvidersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListSAMLProvidersResponse", name: "ListSAMLProvidersResponse")
    ListSSHPublicKeysRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListSSHPublicKeysRequest", name: "ListSSHPublicKeysRequest")
    ListSSHPublicKeysResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListSSHPublicKeysResponse", name: "ListSSHPublicKeysResponse")
    ListServerCertificateTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListServerCertificateTagsRequest", name: "ListServerCertificateTagsRequest")
    ListServerCertificateTagsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListServerCertificateTagsResponse", name: "ListServerCertificateTagsResponse")
    ListServerCertificatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListServerCertificatesRequest", name: "ListServerCertificatesRequest")
    ListServerCertificatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListServerCertificatesResponse", name: "ListServerCertificatesResponse")
    ListServiceSpecificCredentialsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListServiceSpecificCredentialsRequest", name: "ListServiceSpecificCredentialsRequest")
    ListServiceSpecificCredentialsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListServiceSpecificCredentialsResponse", name: "ListServiceSpecificCredentialsResponse")
    ListSigningCertificatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListSigningCertificatesRequest", name: "ListSigningCertificatesRequest")
    ListSigningCertificatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListSigningCertificatesResponse", name: "ListSigningCertificatesResponse")
    ListUserPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListUserPoliciesRequest", name: "ListUserPoliciesRequest")
    ListUserPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListUserPoliciesResponse", name: "ListUserPoliciesResponse")
    ListUserTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListUserTagsRequest", name: "ListUserTagsRequest")
    ListUserTagsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListUserTagsResponse", name: "ListUserTagsResponse")
    ListUsersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListUsersRequest", name: "ListUsersRequest")
    ListUsersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListUsersResponse", name: "ListUsersResponse")
    ListVirtualMFADevicesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListVirtualMFADevicesRequest", name: "ListVirtualMFADevicesRequest")
    ListVirtualMFADevicesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ListVirtualMFADevicesResponse", name: "ListVirtualMFADevicesResponse")
    LoginProfile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#LoginProfile", name: "LoginProfile")
    MFADevice = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#MFADevice", name: "MFADevice")
    MalformedCertificateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#MalformedCertificateException", name: "MalformedCertificateException", traits: {"aws.protocols#awsQueryError" => {"code" => "MalformedCertificate", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MalformedPolicyDocumentException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#MalformedPolicyDocumentException", name: "MalformedPolicyDocumentException", traits: {"aws.protocols#awsQueryError" => {"code" => "MalformedPolicyDocument", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ManagedPolicyDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ManagedPolicyDetail", name: "ManagedPolicyDetail")
    ManagedPolicyDetailListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#ManagedPolicyDetailListType", name: "ManagedPolicyDetailListType")
    NoSuchEntityException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#NoSuchEntityException", name: "NoSuchEntityException", traits: {"aws.protocols#awsQueryError" => {"code" => "NoSuchEntity", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    OpenIDConnectProviderListEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#OpenIDConnectProviderListEntry", name: "OpenIDConnectProviderListEntry")
    OpenIDConnectProviderListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#OpenIDConnectProviderListType", name: "OpenIDConnectProviderListType")
    OpenIDConnectProviderUrlType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#OpenIDConnectProviderUrlType", name: "OpenIDConnectProviderUrlType", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    OpenIdIdpCommunicationErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#OpenIdIdpCommunicationErrorException", name: "OpenIdIdpCommunicationErrorException", traits: {"aws.protocols#awsQueryError" => {"code" => "OpenIdIdpCommunicationError", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    OrganizationIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#OrganizationIdType", name: "OrganizationIdType", traits: {"smithy.api#length" => {"min" => 0, "max" => 34}, "smithy.api#pattern" => "^o-[a-z0-9]{10,32}$"})
    OrganizationNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#OrganizationNotFoundException", name: "OrganizationNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    OrganizationNotInAllFeaturesModeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#OrganizationNotInAllFeaturesModeException", name: "OrganizationNotInAllFeaturesModeException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    OrganizationsDecisionDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#OrganizationsDecisionDetail", name: "OrganizationsDecisionDetail")
    PasswordPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#PasswordPolicy", name: "PasswordPolicy")
    PasswordPolicyViolationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#PasswordPolicyViolationException", name: "PasswordPolicyViolationException", traits: {"aws.protocols#awsQueryError" => {"code" => "PasswordPolicyViolation", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PermissionsBoundaryAttachmentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iam#PermissionsBoundaryAttachmentType", name: "PermissionsBoundaryAttachmentType")
    PermissionsBoundaryDecisionDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#PermissionsBoundaryDecisionDetail", name: "PermissionsBoundaryDecisionDetail")
    Policy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#Policy", name: "Policy")
    PolicyDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#PolicyDetail", name: "PolicyDetail")
    PolicyEvaluationDecisionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iam#PolicyEvaluationDecisionType", name: "PolicyEvaluationDecisionType")
    PolicyEvaluationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#PolicyEvaluationException", name: "PolicyEvaluationException", traits: {"aws.protocols#awsQueryError" => {"code" => "PolicyEvaluation", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    PolicyGrantingServiceAccess = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#PolicyGrantingServiceAccess", name: "PolicyGrantingServiceAccess")
    PolicyGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#PolicyGroup", name: "PolicyGroup")
    PolicyGroupListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#PolicyGroupListType", name: "PolicyGroupListType")
    PolicyIdentifierType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#PolicyIdentifierType", name: "PolicyIdentifierType")
    PolicyNotAttachableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#PolicyNotAttachableException", name: "PolicyNotAttachableException", traits: {"aws.protocols#awsQueryError" => {"code" => "PolicyNotAttachable", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PolicyRole = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#PolicyRole", name: "PolicyRole")
    PolicyRoleListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#PolicyRoleListType", name: "PolicyRoleListType")
    PolicySourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iam#PolicySourceType", name: "PolicySourceType")
    PolicyUsageType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iam#PolicyUsageType", name: "PolicyUsageType")
    PolicyUser = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#PolicyUser", name: "PolicyUser")
    PolicyUserListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#PolicyUserListType", name: "PolicyUserListType")
    PolicyVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#PolicyVersion", name: "PolicyVersion")
    Position = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#Position", name: "Position")
    PutGroupPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#PutGroupPolicyRequest", name: "PutGroupPolicyRequest")
    PutRolePermissionsBoundaryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#PutRolePermissionsBoundaryRequest", name: "PutRolePermissionsBoundaryRequest")
    PutRolePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#PutRolePolicyRequest", name: "PutRolePolicyRequest")
    PutUserPermissionsBoundaryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#PutUserPermissionsBoundaryRequest", name: "PutUserPermissionsBoundaryRequest")
    PutUserPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#PutUserPolicyRequest", name: "PutUserPolicyRequest")
    ReasonType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#ReasonType", name: "ReasonType", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    RegionNameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#RegionNameType", name: "RegionNameType", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    RemoveClientIDFromOpenIDConnectProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#RemoveClientIDFromOpenIDConnectProviderRequest", name: "RemoveClientIDFromOpenIDConnectProviderRequest")
    RemoveRoleFromInstanceProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#RemoveRoleFromInstanceProfileRequest", name: "RemoveRoleFromInstanceProfileRequest")
    RemoveUserFromGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#RemoveUserFromGroupRequest", name: "RemoveUserFromGroupRequest")
    ReportContentType = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.iam#ReportContentType", name: "ReportContentType")
    ReportFormatType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iam#ReportFormatType", name: "ReportFormatType")
    ReportGenerationLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ReportGenerationLimitExceededException", name: "ReportGenerationLimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "ReportGenerationLimitExceeded", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ReportStateDescriptionType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#ReportStateDescriptionType", name: "ReportStateDescriptionType")
    ReportStateType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iam#ReportStateType", name: "ReportStateType")
    ResetServiceSpecificCredentialRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ResetServiceSpecificCredentialRequest", name: "ResetServiceSpecificCredentialRequest")
    ResetServiceSpecificCredentialResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ResetServiceSpecificCredentialResponse", name: "ResetServiceSpecificCredentialResponse")
    ResourceHandlingOptionType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#ResourceHandlingOptionType", name: "ResourceHandlingOptionType", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ResourceNameListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#ResourceNameListType", name: "ResourceNameListType")
    ResourceNameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#ResourceNameType", name: "ResourceNameType", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ResourceSpecificResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ResourceSpecificResult", name: "ResourceSpecificResult")
    ResourceSpecificResultListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#ResourceSpecificResultListType", name: "ResourceSpecificResultListType")
    ResyncMFADeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ResyncMFADeviceRequest", name: "ResyncMFADeviceRequest")
    Role = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#Role", name: "Role")
    RoleDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#RoleDetail", name: "RoleDetail")
    RoleLastUsed = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#RoleLastUsed", name: "RoleLastUsed")
    RoleUsageListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#RoleUsageListType", name: "RoleUsageListType")
    RoleUsageType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#RoleUsageType", name: "RoleUsageType")
    SAMLMetadataDocumentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#SAMLMetadataDocumentType", name: "SAMLMetadataDocumentType", traits: {"smithy.api#length" => {"min" => 1000, "max" => 10000000}})
    SAMLPrivateKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#SAMLPrivateKey", name: "SAMLPrivateKey")
    SAMLProviderListEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#SAMLProviderListEntry", name: "SAMLProviderListEntry")
    SAMLProviderListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#SAMLProviderListType", name: "SAMLProviderListType")
    SAMLProviderNameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#SAMLProviderNameType", name: "SAMLProviderNameType", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w._-]+$"})
    SSHPublicKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#SSHPublicKey", name: "SSHPublicKey")
    SSHPublicKeyListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#SSHPublicKeyListType", name: "SSHPublicKeyListType")
    SSHPublicKeyMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#SSHPublicKeyMetadata", name: "SSHPublicKeyMetadata")
    ServerCertificate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ServerCertificate", name: "ServerCertificate")
    ServerCertificateMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ServerCertificateMetadata", name: "ServerCertificateMetadata")
    ServiceAccessNotEnabledException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ServiceAccessNotEnabledException", name: "ServiceAccessNotEnabledException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ServiceFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ServiceFailureException", name: "ServiceFailureException", traits: {"aws.protocols#awsQueryError" => {"code" => "ServiceFailure", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ServiceLastAccessed = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ServiceLastAccessed", name: "ServiceLastAccessed")
    ServiceNotSupportedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ServiceNotSupportedException", name: "ServiceNotSupportedException", traits: {"aws.protocols#awsQueryError" => {"code" => "NotSupportedService", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ServiceSpecificCredential = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ServiceSpecificCredential", name: "ServiceSpecificCredential")
    ServiceSpecificCredentialMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#ServiceSpecificCredentialMetadata", name: "ServiceSpecificCredentialMetadata")
    ServiceSpecificCredentialsListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#ServiceSpecificCredentialsListType", name: "ServiceSpecificCredentialsListType")
    ServicesLastAccessed = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#ServicesLastAccessed", name: "ServicesLastAccessed")
    SetDefaultPolicyVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#SetDefaultPolicyVersionRequest", name: "SetDefaultPolicyVersionRequest")
    SetSecurityTokenServicePreferencesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#SetSecurityTokenServicePreferencesRequest", name: "SetSecurityTokenServicePreferencesRequest")
    SigningCertificate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#SigningCertificate", name: "SigningCertificate")
    SimulateCustomPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#SimulateCustomPolicyOutput", name: "SimulateCustomPolicyOutput")
    SimulateCustomPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#SimulateCustomPolicyRequest", name: "SimulateCustomPolicyRequest")
    SimulatePrincipalPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#SimulatePrincipalPolicyOutput", name: "SimulatePrincipalPolicyOutput")
    SimulatePrincipalPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#SimulatePrincipalPolicyRequest", name: "SimulatePrincipalPolicyRequest")
    SimulationPolicyListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#SimulationPolicyListType", name: "SimulationPolicyListType")
    Statement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#Statement", name: "Statement")
    StatementListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#StatementListType", name: "StatementListType")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#Tag", name: "Tag")
    TagInstanceProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#TagInstanceProfileRequest", name: "TagInstanceProfileRequest")
    TagMFADeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#TagMFADeviceRequest", name: "TagMFADeviceRequest")
    TagOpenIDConnectProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#TagOpenIDConnectProviderRequest", name: "TagOpenIDConnectProviderRequest")
    TagPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#TagPolicyRequest", name: "TagPolicyRequest")
    TagRoleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#TagRoleRequest", name: "TagRoleRequest")
    TagSAMLProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#TagSAMLProviderRequest", name: "TagSAMLProviderRequest")
    TagServerCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#TagServerCertificateRequest", name: "TagServerCertificateRequest")
    TagUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#TagUserRequest", name: "TagUserRequest")
    TrackedActionLastAccessed = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#TrackedActionLastAccessed", name: "TrackedActionLastAccessed")
    TrackedActionsLastAccessed = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#TrackedActionsLastAccessed", name: "TrackedActionsLastAccessed")
    UnmodifiableEntityException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#UnmodifiableEntityException", name: "UnmodifiableEntityException", traits: {"aws.protocols#awsQueryError" => {"code" => "UnmodifiableEntity", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UnrecognizedPublicKeyEncodingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#UnrecognizedPublicKeyEncodingException", name: "UnrecognizedPublicKeyEncodingException", traits: {"aws.protocols#awsQueryError" => {"code" => "UnrecognizedPublicKeyEncoding", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagInstanceProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#UntagInstanceProfileRequest", name: "UntagInstanceProfileRequest")
    UntagMFADeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#UntagMFADeviceRequest", name: "UntagMFADeviceRequest")
    UntagOpenIDConnectProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#UntagOpenIDConnectProviderRequest", name: "UntagOpenIDConnectProviderRequest")
    UntagPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#UntagPolicyRequest", name: "UntagPolicyRequest")
    UntagRoleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#UntagRoleRequest", name: "UntagRoleRequest")
    UntagSAMLProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#UntagSAMLProviderRequest", name: "UntagSAMLProviderRequest")
    UntagServerCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#UntagServerCertificateRequest", name: "UntagServerCertificateRequest")
    UntagUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#UntagUserRequest", name: "UntagUserRequest")
    UpdateAccessKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#UpdateAccessKeyRequest", name: "UpdateAccessKeyRequest")
    UpdateAccountPasswordPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#UpdateAccountPasswordPolicyRequest", name: "UpdateAccountPasswordPolicyRequest")
    UpdateAssumeRolePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#UpdateAssumeRolePolicyRequest", name: "UpdateAssumeRolePolicyRequest")
    UpdateGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#UpdateGroupRequest", name: "UpdateGroupRequest")
    UpdateLoginProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#UpdateLoginProfileRequest", name: "UpdateLoginProfileRequest")
    UpdateOpenIDConnectProviderThumbprintRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#UpdateOpenIDConnectProviderThumbprintRequest", name: "UpdateOpenIDConnectProviderThumbprintRequest")
    UpdateRoleDescriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#UpdateRoleDescriptionRequest", name: "UpdateRoleDescriptionRequest")
    UpdateRoleDescriptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#UpdateRoleDescriptionResponse", name: "UpdateRoleDescriptionResponse")
    UpdateRoleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#UpdateRoleRequest", name: "UpdateRoleRequest")
    UpdateRoleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#UpdateRoleResponse", name: "UpdateRoleResponse")
    UpdateSAMLProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#UpdateSAMLProviderRequest", name: "UpdateSAMLProviderRequest")
    UpdateSAMLProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#UpdateSAMLProviderResponse", name: "UpdateSAMLProviderResponse")
    UpdateSSHPublicKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#UpdateSSHPublicKeyRequest", name: "UpdateSSHPublicKeyRequest")
    UpdateServerCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#UpdateServerCertificateRequest", name: "UpdateServerCertificateRequest")
    UpdateServiceSpecificCredentialRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#UpdateServiceSpecificCredentialRequest", name: "UpdateServiceSpecificCredentialRequest")
    UpdateSigningCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#UpdateSigningCertificateRequest", name: "UpdateSigningCertificateRequest")
    UpdateUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#UpdateUserRequest", name: "UpdateUserRequest")
    UploadSSHPublicKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#UploadSSHPublicKeyRequest", name: "UploadSSHPublicKeyRequest")
    UploadSSHPublicKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#UploadSSHPublicKeyResponse", name: "UploadSSHPublicKeyResponse")
    UploadServerCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#UploadServerCertificateRequest", name: "UploadServerCertificateRequest")
    UploadServerCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#UploadServerCertificateResponse", name: "UploadServerCertificateResponse")
    UploadSigningCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#UploadSigningCertificateRequest", name: "UploadSigningCertificateRequest")
    UploadSigningCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#UploadSigningCertificateResponse", name: "UploadSigningCertificateResponse")
    User = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#User", name: "User")
    UserDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#UserDetail", name: "UserDetail")
    VirtualMFADevice = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iam#VirtualMFADevice", name: "VirtualMFADevice")
    AccessKeyIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#accessKeyIdType", name: "AccessKeyIdType", traits: {"smithy.api#length" => {"min" => 16, "max" => 128}, "smithy.api#pattern" => "^[\\w]+$"})
    AccessKeyMetadataListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#accessKeyMetadataListType", name: "AccessKeyMetadataListType")
    AccessKeySecretType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#accessKeySecretType", name: "AccessKeySecretType", traits: {"smithy.api#sensitive" => {}})
    AccountAliasListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#accountAliasListType", name: "AccountAliasListType")
    AccountAliasType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#accountAliasType", name: "AccountAliasType", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9]([a-z0-9]|-(?!-)){1,61}[a-z0-9]$"})
    AllUsers = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iam#allUsers", name: "AllUsers")
    ArnType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#arnType", name: "ArnType", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}})
    AssertionEncryptionModeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iam#assertionEncryptionModeType", name: "AssertionEncryptionModeType")
    AssignmentStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iam#assignmentStatusType", name: "AssignmentStatusType")
    AttachedPoliciesListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#attachedPoliciesListType", name: "AttachedPoliciesListType")
    AttachmentCountType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iam#attachmentCountType", name: "AttachmentCountType")
    AuthenticationCodeType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#authenticationCodeType", name: "AuthenticationCodeType", traits: {"smithy.api#length" => {"min" => 6, "max" => 6}, "smithy.api#pattern" => "^[\\d]+$"})
    BooleanObjectType = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iam#booleanObjectType", name: "BooleanObjectType")
    BooleanType = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iam#booleanType", name: "BooleanType", traits: {"smithy.api#default" => false})
    CertificateBodyType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#certificateBodyType", name: "CertificateBodyType", traits: {"smithy.api#length" => {"min" => 1, "max" => 16384}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+$"})
    CertificateChainType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#certificateChainType", name: "CertificateChainType", traits: {"smithy.api#length" => {"min" => 1, "max" => 2097152}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+$"})
    CertificateIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#certificateIdType", name: "CertificateIdType", traits: {"smithy.api#length" => {"min" => 24, "max" => 128}, "smithy.api#pattern" => "^[\\w]+$"})
    CertificateListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#certificateListType", name: "CertificateListType")
    ClientIDListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#clientIDListType", name: "ClientIDListType")
    ClientIDType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#clientIDType", name: "ClientIDType", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    CredentialAgeDays = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iam#credentialAgeDays", name: "CredentialAgeDays", traits: {"smithy.api#range" => {"min" => 1, "max" => 36600}})
    CredentialReportExpiredExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#credentialReportExpiredExceptionMessage", name: "CredentialReportExpiredExceptionMessage")
    CredentialReportNotPresentExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#credentialReportNotPresentExceptionMessage", name: "CredentialReportNotPresentExceptionMessage")
    CredentialReportNotReadyExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#credentialReportNotReadyExceptionMessage", name: "CredentialReportNotReadyExceptionMessage")
    CustomSuffixType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#customSuffixType", name: "CustomSuffixType", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\w+=,.@-]+$"})
    DateType = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.iam#dateType", name: "DateType")
    DeleteConflictMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#deleteConflictMessage", name: "DeleteConflictMessage")
    DuplicateCertificateMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#duplicateCertificateMessage", name: "DuplicateCertificateMessage")
    DuplicateSSHPublicKeyMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#duplicateSSHPublicKeyMessage", name: "DuplicateSSHPublicKeyMessage")
    EncodingType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iam#encodingType", name: "EncodingType")
    EntityAlreadyExistsMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#entityAlreadyExistsMessage", name: "EntityAlreadyExistsMessage")
    EntityDetailsListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#entityDetailsListType", name: "EntityDetailsListType")
    EntityListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#entityListType", name: "EntityListType")
    EntityNameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#entityNameType", name: "EntityNameType", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w+=,.@-]+$"})
    EntityTemporarilyUnmodifiableMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#entityTemporarilyUnmodifiableMessage", name: "EntityTemporarilyUnmodifiableMessage")
    ExistingUserNameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#existingUserNameType", name: "ExistingUserNameType", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w+=,.@-]+$"})
    GlobalEndpointTokenVersion = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iam#globalEndpointTokenVersion", name: "GlobalEndpointTokenVersion")
    GroupDetailListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#groupDetailListType", name: "GroupDetailListType")
    GroupListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#groupListType", name: "GroupListType")
    GroupNameListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#groupNameListType", name: "GroupNameListType")
    GroupNameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#groupNameType", name: "GroupNameType", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w+=,.@-]+$"})
    IdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#idType", name: "IdType", traits: {"smithy.api#length" => {"min" => 16, "max" => 128}, "smithy.api#pattern" => "^[\\w]+$"})
    InstanceProfileListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#instanceProfileListType", name: "InstanceProfileListType")
    InstanceProfileNameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#instanceProfileNameType", name: "InstanceProfileNameType", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w+=,.@-]+$"})
    IntegerType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iam#integerType", name: "IntegerType")
    InvalidAuthenticationCodeMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#invalidAuthenticationCodeMessage", name: "InvalidAuthenticationCodeMessage")
    InvalidCertificateMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#invalidCertificateMessage", name: "InvalidCertificateMessage")
    InvalidInputMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#invalidInputMessage", name: "InvalidInputMessage")
    InvalidPublicKeyMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#invalidPublicKeyMessage", name: "InvalidPublicKeyMessage")
    InvalidUserTypeMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#invalidUserTypeMessage", name: "InvalidUserTypeMessage")
    JobIDType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#jobIDType", name: "JobIDType", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}})
    JobStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iam#jobStatusType", name: "JobStatusType")
    KeyPairMismatchMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#keyPairMismatchMessage", name: "KeyPairMismatchMessage")
    LimitExceededMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#limitExceededMessage", name: "LimitExceededMessage")
    ListPolicyGrantingServiceAccessResponseListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#listPolicyGrantingServiceAccessResponseListType", name: "ListPolicyGrantingServiceAccessResponseListType")
    MalformedCertificateMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#malformedCertificateMessage", name: "MalformedCertificateMessage")
    MalformedPolicyDocumentMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#malformedPolicyDocumentMessage", name: "MalformedPolicyDocumentMessage")
    MarkerType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#markerType", name: "MarkerType", traits: {"smithy.api#length" => {"min" => 1, "max" => 320}, "smithy.api#pattern" => "^[\\u0020-\\u00FF]+$"})
    MaxItemsType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iam#maxItemsType", name: "MaxItemsType", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MaxPasswordAgeType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iam#maxPasswordAgeType", name: "MaxPasswordAgeType", traits: {"smithy.api#range" => {"min" => 1, "max" => 1095}})
    MfaDeviceListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#mfaDeviceListType", name: "MfaDeviceListType")
    MinimumPasswordLengthType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iam#minimumPasswordLengthType", name: "MinimumPasswordLengthType", traits: {"smithy.api#range" => {"min" => 6, "max" => 128}})
    NoSuchEntityMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#noSuchEntityMessage", name: "NoSuchEntityMessage")
    OpenIdIdpCommunicationErrorExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#openIdIdpCommunicationErrorExceptionMessage", name: "OpenIdIdpCommunicationErrorExceptionMessage")
    OrganizationsEntityPathType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#organizationsEntityPathType", name: "OrganizationsEntityPathType", traits: {"smithy.api#length" => {"min" => 19, "max" => 427}, "smithy.api#pattern" => "^o-[0-9a-z]{10,32}\\/r-[0-9a-z]{4,32}[0-9a-z-\\/]*$"})
    OrganizationsPolicyIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#organizationsPolicyIdType", name: "OrganizationsPolicyIdType", traits: {"smithy.api#pattern" => "^p-[0-9a-zA-Z_]{8,128}$"})
    PasswordPolicyViolationMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#passwordPolicyViolationMessage", name: "PasswordPolicyViolationMessage")
    PasswordReusePreventionType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iam#passwordReusePreventionType", name: "PasswordReusePreventionType", traits: {"smithy.api#range" => {"min" => 1, "max" => 24}})
    PasswordType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#passwordType", name: "PasswordType", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+$", "smithy.api#sensitive" => {}})
    PathPrefixType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#pathPrefixType", name: "PathPrefixType", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^\\u002F[\\u0021-\\u007F]*$"})
    PathType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#pathType", name: "PathType", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^(\\u002F)|(\\u002F[\\u0021-\\u007E]+\\u002F)$"})
    PolicyDescriptionType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#policyDescriptionType", name: "PolicyDescriptionType", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    PolicyDetailListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#policyDetailListType", name: "PolicyDetailListType")
    PolicyDocumentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#policyDocumentType", name: "PolicyDocumentType", traits: {"smithy.api#length" => {"min" => 1, "max" => 131072}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+$"})
    PolicyDocumentVersionListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#policyDocumentVersionListType", name: "PolicyDocumentVersionListType")
    PolicyEvaluationErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#policyEvaluationErrorMessage", name: "PolicyEvaluationErrorMessage")
    PolicyGrantingServiceAccessListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#policyGrantingServiceAccessListType", name: "PolicyGrantingServiceAccessListType")
    PolicyListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#policyListType", name: "PolicyListType")
    PolicyNameListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#policyNameListType", name: "PolicyNameListType")
    PolicyNameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#policyNameType", name: "PolicyNameType", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w+=,.@-]+$"})
    PolicyNotAttachableMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#policyNotAttachableMessage", name: "PolicyNotAttachableMessage")
    PolicyOwnerEntityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iam#policyOwnerEntityType", name: "PolicyOwnerEntityType")
    PolicyPathType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#policyPathType", name: "PolicyPathType", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^((/[A-Za-z0-9\\.,\\+@=_-]+)*)/$"})
    PolicyScopeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iam#policyScopeType", name: "PolicyScopeType")
    PolicyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iam#policyType", name: "PolicyType")
    PolicyVersionIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#policyVersionIdType", name: "PolicyVersionIdType", traits: {"smithy.api#pattern" => "^v[1-9][0-9]*(\\.[A-Za-z0-9-]*)?$"})
    PrivateKeyIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#privateKeyIdType", name: "PrivateKeyIdType", traits: {"smithy.api#length" => {"min" => 22, "max" => 64}, "smithy.api#pattern" => "^[A-Z0-9]+$"})
    PrivateKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#privateKeyList", name: "PrivateKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    PrivateKeyType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#privateKeyType", name: "PrivateKeyType", traits: {"smithy.api#length" => {"min" => 1, "max" => 16384}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+$", "smithy.api#sensitive" => {}})
    PublicKeyFingerprintType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#publicKeyFingerprintType", name: "PublicKeyFingerprintType", traits: {"smithy.api#length" => {"min" => 48, "max" => 48}, "smithy.api#pattern" => "^[:\\w]+$"})
    PublicKeyIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#publicKeyIdType", name: "PublicKeyIdType", traits: {"smithy.api#length" => {"min" => 20, "max" => 128}, "smithy.api#pattern" => "^[\\w]+$"})
    PublicKeyMaterialType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#publicKeyMaterialType", name: "PublicKeyMaterialType", traits: {"smithy.api#length" => {"min" => 1, "max" => 16384}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+$"})
    ReportGenerationLimitExceededMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#reportGenerationLimitExceededMessage", name: "ReportGenerationLimitExceededMessage")
    ResponseMarkerType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#responseMarkerType", name: "ResponseMarkerType")
    RoleDescriptionType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#roleDescriptionType", name: "RoleDescriptionType", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u00A1-\\u00FF]*$"})
    RoleDetailListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#roleDetailListType", name: "RoleDetailListType")
    RoleListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#roleListType", name: "RoleListType")
    RoleMaxSessionDurationType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iam#roleMaxSessionDurationType", name: "RoleMaxSessionDurationType", traits: {"smithy.api#range" => {"min" => 3600, "max" => 43200}})
    RoleNameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#roleNameType", name: "RoleNameType", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\w+=,.@-]+$"})
    SerialNumberType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#serialNumberType", name: "SerialNumberType", traits: {"smithy.api#length" => {"min" => 9, "max" => 256}, "smithy.api#pattern" => "^[\\w+=/:,.@-]+$"})
    ServerCertificateMetadataListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#serverCertificateMetadataListType", name: "ServerCertificateMetadataListType")
    ServerCertificateNameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#serverCertificateNameType", name: "ServerCertificateNameType", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w+=,.@-]+$"})
    ServiceCredentialAlias = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#serviceCredentialAlias", name: "ServiceCredentialAlias", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#pattern" => "^[\\w+=,.@-]+$"})
    ServiceCredentialSecret = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#serviceCredentialSecret", name: "ServiceCredentialSecret", traits: {"smithy.api#sensitive" => {}})
    ServiceFailureExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#serviceFailureExceptionMessage", name: "ServiceFailureExceptionMessage")
    ServiceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#serviceName", name: "ServiceName")
    ServiceNameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#serviceNameType", name: "ServiceNameType")
    ServiceNamespaceListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#serviceNamespaceListType", name: "ServiceNamespaceListType", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    ServiceNamespaceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#serviceNamespaceType", name: "ServiceNamespaceType", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\w-]*$"})
    ServiceNotSupportedMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#serviceNotSupportedMessage", name: "ServiceNotSupportedMessage")
    ServicePassword = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#servicePassword", name: "ServicePassword", traits: {"smithy.api#sensitive" => {}})
    ServiceSpecificCredentialId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#serviceSpecificCredentialId", name: "ServiceSpecificCredentialId", traits: {"smithy.api#length" => {"min" => 20, "max" => 128}, "smithy.api#pattern" => "^[\\w]+$"})
    ServiceUserName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#serviceUserName", name: "ServiceUserName", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#pattern" => "^[\\w+=,.@-]*$"})
    SortKeyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iam#sortKeyType", name: "SortKeyType")
    StatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iam#statusType", name: "StatusType")
    StringType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#stringType", name: "StringType")
    SummaryKeyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iam#summaryKeyType", name: "SummaryKeyType")
    SummaryMapType = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iam#summaryMapType", name: "SummaryMapType")
    SummaryValueType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iam#summaryValueType", name: "SummaryValueType")
    TagKeyListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#tagKeyListType", name: "TagKeyListType", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagKeyType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#tagKeyType", name: "TagKeyType", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]+$"})
    TagListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#tagListType", name: "TagListType", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagValueType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#tagValueType", name: "TagValueType", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*$"})
    ThumbprintListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#thumbprintListType", name: "ThumbprintListType")
    ThumbprintType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#thumbprintType", name: "ThumbprintType", traits: {"smithy.api#length" => {"min" => 40, "max" => 40}})
    UnmodifiableEntityMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#unmodifiableEntityMessage", name: "UnmodifiableEntityMessage")
    UnrecognizedPublicKeyEncodingMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#unrecognizedPublicKeyEncodingMessage", name: "UnrecognizedPublicKeyEncodingMessage")
    UserDetailListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#userDetailListType", name: "UserDetailListType")
    UserListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#userListType", name: "UserListType")
    UserNameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#userNameType", name: "UserNameType", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\w+=,.@-]+$"})
    VirtualMFADeviceListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iam#virtualMFADeviceListType", name: "VirtualMFADeviceListType")
    VirtualMFADeviceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iam#virtualMFADeviceName", name: "VirtualMFADeviceName", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[\\w+=,.@-]+$"})

    AccessAdvisorUsageGranularityType.add_member(:service_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_LEVEL", traits: {"smithy.api#enumValue" => "SERVICE_LEVEL"}))
    AccessAdvisorUsageGranularityType.add_member(:action_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTION_LEVEL", traits: {"smithy.api#enumValue" => "ACTION_LEVEL"}))
    AccessDetail.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNameType, name: "ServiceName", traits: {"smithy.api#required" => {}}))
    AccessDetail.add_member(:service_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNamespaceType, name: "ServiceNamespace", traits: {"smithy.api#required" => {}}))
    AccessDetail.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "Region"))
    AccessDetail.add_member(:entity_path, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationsEntityPathType, name: "EntityPath"))
    AccessDetail.add_member(:last_authenticated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "LastAuthenticatedTime"))
    AccessDetail.add_member(:total_authenticated_entities, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerType, name: "TotalAuthenticatedEntities"))
    AccessDetail.type = Types::AccessDetail
    AccessDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessDetail, name: "member"))
    AccessKey.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameType, name: "UserName", traits: {"smithy.api#required" => {}}))
    AccessKey.add_member(:access_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessKeyIdType, name: "AccessKeyId", traits: {"smithy.api#required" => {}}))
    AccessKey.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusType, name: "Status", traits: {"smithy.api#required" => {}}))
    AccessKey.add_member(:secret_access_key, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessKeySecretType, name: "SecretAccessKey", traits: {"smithy.api#required" => {}}))
    AccessKey.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "CreateDate"))
    AccessKey.type = Types::AccessKey
    AccessKeyLastUsed.add_member(:last_used_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "LastUsedDate"))
    AccessKeyLastUsed.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "ServiceName", traits: {"smithy.api#required" => {}}))
    AccessKeyLastUsed.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "Region", traits: {"smithy.api#required" => {}}))
    AccessKeyLastUsed.type = Types::AccessKeyLastUsed
    AccessKeyMetadata.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameType, name: "UserName"))
    AccessKeyMetadata.add_member(:access_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessKeyIdType, name: "AccessKeyId"))
    AccessKeyMetadata.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusType, name: "Status"))
    AccessKeyMetadata.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "CreateDate"))
    AccessKeyMetadata.type = Types::AccessKeyMetadata
    AccountNotManagementOrDelegatedAdministratorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    AccountNotManagementOrDelegatedAdministratorException.type = Types::AccountNotManagementOrDelegatedAdministratorException
    ActionNameListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionNameType, name: "member"))
    AddClientIDToOpenIDConnectProviderRequest.add_member(:open_id_connect_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "OpenIDConnectProviderArn", traits: {"smithy.api#required" => {}}))
    AddClientIDToOpenIDConnectProviderRequest.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIDType, name: "ClientID", traits: {"smithy.api#required" => {}}))
    AddClientIDToOpenIDConnectProviderRequest.type = Types::AddClientIDToOpenIDConnectProviderRequest
    AddRoleToInstanceProfileRequest.add_member(:instance_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProfileNameType, name: "InstanceProfileName", traits: {"smithy.api#required" => {}}))
    AddRoleToInstanceProfileRequest.add_member(:role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameType, name: "RoleName", traits: {"smithy.api#required" => {}}))
    AddRoleToInstanceProfileRequest.type = Types::AddRoleToInstanceProfileRequest
    AddUserToGroupRequest.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupNameType, name: "GroupName", traits: {"smithy.api#required" => {}}))
    AddUserToGroupRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExistingUserNameType, name: "UserName", traits: {"smithy.api#required" => {}}))
    AddUserToGroupRequest.type = Types::AddUserToGroupRequest
    ArnListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "member"))
    AttachGroupPolicyRequest.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupNameType, name: "GroupName", traits: {"smithy.api#required" => {}}))
    AttachGroupPolicyRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "PolicyArn", traits: {"smithy.api#required" => {}}))
    AttachGroupPolicyRequest.type = Types::AttachGroupPolicyRequest
    AttachRolePolicyRequest.add_member(:role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameType, name: "RoleName", traits: {"smithy.api#required" => {}}))
    AttachRolePolicyRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "PolicyArn", traits: {"smithy.api#required" => {}}))
    AttachRolePolicyRequest.type = Types::AttachRolePolicyRequest
    AttachUserPolicyRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameType, name: "UserName", traits: {"smithy.api#required" => {}}))
    AttachUserPolicyRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "PolicyArn", traits: {"smithy.api#required" => {}}))
    AttachUserPolicyRequest.type = Types::AttachUserPolicyRequest
    AttachedPermissionsBoundary.add_member(:permissions_boundary_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionsBoundaryAttachmentType, name: "PermissionsBoundaryType"))
    AttachedPermissionsBoundary.add_member(:permissions_boundary_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "PermissionsBoundaryArn"))
    AttachedPermissionsBoundary.type = Types::AttachedPermissionsBoundary
    AttachedPolicy.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyNameType, name: "PolicyName"))
    AttachedPolicy.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "PolicyArn"))
    AttachedPolicy.type = Types::AttachedPolicy
    CallerIsNotManagementAccountException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    CallerIsNotManagementAccountException.type = Types::CallerIsNotManagementAccountException
    CertificationMapType.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificationKeyType, name: "key"))
    CertificationMapType.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificationValueType, name: "value"))
    ChangePasswordRequest.add_member(:old_password, ::Smithy::Schema::Shapes::MemberShape.new(target: PasswordType, name: "OldPassword", traits: {"smithy.api#required" => {}}))
    ChangePasswordRequest.add_member(:new_password, ::Smithy::Schema::Shapes::MemberShape.new(target: PasswordType, name: "NewPassword", traits: {"smithy.api#required" => {}}))
    ChangePasswordRequest.type = Types::ChangePasswordRequest
    ConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ConcurrentModificationMessage, name: "message"))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ContextEntry.add_member(:context_key_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextKeyNameType, name: "ContextKeyName"))
    ContextEntry.add_member(:context_key_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextKeyValueListType, name: "ContextKeyValues"))
    ContextEntry.add_member(:context_key_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextKeyTypeEnum, name: "ContextKeyType"))
    ContextEntry.type = Types::ContextEntry
    ContextEntryListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextEntry, name: "member"))
    ContextKeyNamesResultListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextKeyNameType, name: "member"))
    ContextKeyTypeEnum.add_member(:string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING", traits: {"smithy.api#enumValue" => "string"}))
    ContextKeyTypeEnum.add_member(:string_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING_LIST", traits: {"smithy.api#enumValue" => "stringList"}))
    ContextKeyTypeEnum.add_member(:numeric, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUMERIC", traits: {"smithy.api#enumValue" => "numeric"}))
    ContextKeyTypeEnum.add_member(:numeric_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUMERIC_LIST", traits: {"smithy.api#enumValue" => "numericList"}))
    ContextKeyTypeEnum.add_member(:boolean, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOOLEAN", traits: {"smithy.api#enumValue" => "boolean"}))
    ContextKeyTypeEnum.add_member(:boolean_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOOLEAN_LIST", traits: {"smithy.api#enumValue" => "booleanList"}))
    ContextKeyTypeEnum.add_member(:ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IP", traits: {"smithy.api#enumValue" => "ip"}))
    ContextKeyTypeEnum.add_member(:ip_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IP_LIST", traits: {"smithy.api#enumValue" => "ipList"}))
    ContextKeyTypeEnum.add_member(:binary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BINARY", traits: {"smithy.api#enumValue" => "binary"}))
    ContextKeyTypeEnum.add_member(:binary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BINARY_LIST", traits: {"smithy.api#enumValue" => "binaryList"}))
    ContextKeyTypeEnum.add_member(:date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATE", traits: {"smithy.api#enumValue" => "date"}))
    ContextKeyTypeEnum.add_member(:date_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATE_LIST", traits: {"smithy.api#enumValue" => "dateList"}))
    ContextKeyValueListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextKeyValueType, name: "member"))
    CreateAccessKeyRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExistingUserNameType, name: "UserName"))
    CreateAccessKeyRequest.type = Types::CreateAccessKeyRequest
    CreateAccessKeyResponse.add_member(:access_key, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessKey, name: "AccessKey", traits: {"smithy.api#required" => {}}))
    CreateAccessKeyResponse.type = Types::CreateAccessKeyResponse
    CreateAccountAliasRequest.add_member(:account_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAliasType, name: "AccountAlias", traits: {"smithy.api#required" => {}}))
    CreateAccountAliasRequest.type = Types::CreateAccountAliasRequest
    CreateGroupRequest.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: PathType, name: "Path"))
    CreateGroupRequest.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupNameType, name: "GroupName", traits: {"smithy.api#required" => {}}))
    CreateGroupRequest.type = Types::CreateGroupRequest
    CreateGroupResponse.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: Group, name: "Group", traits: {"smithy.api#required" => {}}))
    CreateGroupResponse.type = Types::CreateGroupResponse
    CreateInstanceProfileRequest.add_member(:instance_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProfileNameType, name: "InstanceProfileName", traits: {"smithy.api#required" => {}}))
    CreateInstanceProfileRequest.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: PathType, name: "Path"))
    CreateInstanceProfileRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags"))
    CreateInstanceProfileRequest.type = Types::CreateInstanceProfileRequest
    CreateInstanceProfileResponse.add_member(:instance_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProfile, name: "InstanceProfile", traits: {"smithy.api#required" => {}}))
    CreateInstanceProfileResponse.type = Types::CreateInstanceProfileResponse
    CreateLoginProfileRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameType, name: "UserName"))
    CreateLoginProfileRequest.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: PasswordType, name: "Password"))
    CreateLoginProfileRequest.add_member(:password_reset_required, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "PasswordResetRequired", traits: {"smithy.api#default" => false}))
    CreateLoginProfileRequest.type = Types::CreateLoginProfileRequest
    CreateLoginProfileResponse.add_member(:login_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: LoginProfile, name: "LoginProfile", traits: {"smithy.api#required" => {}}))
    CreateLoginProfileResponse.type = Types::CreateLoginProfileResponse
    CreateOpenIDConnectProviderRequest.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenIDConnectProviderUrlType, name: "Url", traits: {"smithy.api#required" => {}}))
    CreateOpenIDConnectProviderRequest.add_member(:client_id_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIDListType, name: "ClientIDList"))
    CreateOpenIDConnectProviderRequest.add_member(:thumbprint_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ThumbprintListType, name: "ThumbprintList"))
    CreateOpenIDConnectProviderRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags"))
    CreateOpenIDConnectProviderRequest.type = Types::CreateOpenIDConnectProviderRequest
    CreateOpenIDConnectProviderResponse.add_member(:open_id_connect_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "OpenIDConnectProviderArn"))
    CreateOpenIDConnectProviderResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags"))
    CreateOpenIDConnectProviderResponse.type = Types::CreateOpenIDConnectProviderResponse
    CreatePolicyRequest.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyNameType, name: "PolicyName", traits: {"smithy.api#required" => {}}))
    CreatePolicyRequest.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyPathType, name: "Path"))
    CreatePolicyRequest.add_member(:policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocumentType, name: "PolicyDocument", traits: {"smithy.api#required" => {}}))
    CreatePolicyRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDescriptionType, name: "Description"))
    CreatePolicyRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags"))
    CreatePolicyRequest.type = Types::CreatePolicyRequest
    CreatePolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "Policy"))
    CreatePolicyResponse.type = Types::CreatePolicyResponse
    CreatePolicyVersionRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "PolicyArn", traits: {"smithy.api#required" => {}}))
    CreatePolicyVersionRequest.add_member(:policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocumentType, name: "PolicyDocument", traits: {"smithy.api#required" => {}}))
    CreatePolicyVersionRequest.add_member(:set_as_default, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "SetAsDefault", traits: {"smithy.api#default" => false}))
    CreatePolicyVersionRequest.type = Types::CreatePolicyVersionRequest
    CreatePolicyVersionResponse.add_member(:policy_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyVersion, name: "PolicyVersion"))
    CreatePolicyVersionResponse.type = Types::CreatePolicyVersionResponse
    CreateRoleRequest.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: PathType, name: "Path"))
    CreateRoleRequest.add_member(:role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameType, name: "RoleName", traits: {"smithy.api#required" => {}}))
    CreateRoleRequest.add_member(:assume_role_policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocumentType, name: "AssumeRolePolicyDocument", traits: {"smithy.api#required" => {}}))
    CreateRoleRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleDescriptionType, name: "Description"))
    CreateRoleRequest.add_member(:max_session_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleMaxSessionDurationType, name: "MaxSessionDuration"))
    CreateRoleRequest.add_member(:permissions_boundary, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "PermissionsBoundary"))
    CreateRoleRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags"))
    CreateRoleRequest.type = Types::CreateRoleRequest
    CreateRoleResponse.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: Role, name: "Role", traits: {"smithy.api#required" => {}}))
    CreateRoleResponse.type = Types::CreateRoleResponse
    CreateSAMLProviderRequest.add_member(:saml_metadata_document, ::Smithy::Schema::Shapes::MemberShape.new(target: SAMLMetadataDocumentType, name: "SAMLMetadataDocument", traits: {"smithy.api#required" => {}}))
    CreateSAMLProviderRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SAMLProviderNameType, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateSAMLProviderRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags"))
    CreateSAMLProviderRequest.add_member(:assertion_encryption_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AssertionEncryptionModeType, name: "AssertionEncryptionMode"))
    CreateSAMLProviderRequest.add_member(:add_private_key, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateKeyType, name: "AddPrivateKey"))
    CreateSAMLProviderRequest.type = Types::CreateSAMLProviderRequest
    CreateSAMLProviderResponse.add_member(:saml_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "SAMLProviderArn"))
    CreateSAMLProviderResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags"))
    CreateSAMLProviderResponse.type = Types::CreateSAMLProviderResponse
    CreateServiceLinkedRoleRequest.add_member(:aws_service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupNameType, name: "AWSServiceName", traits: {"smithy.api#required" => {}}))
    CreateServiceLinkedRoleRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleDescriptionType, name: "Description"))
    CreateServiceLinkedRoleRequest.add_member(:custom_suffix, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomSuffixType, name: "CustomSuffix"))
    CreateServiceLinkedRoleRequest.type = Types::CreateServiceLinkedRoleRequest
    CreateServiceLinkedRoleResponse.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: Role, name: "Role"))
    CreateServiceLinkedRoleResponse.type = Types::CreateServiceLinkedRoleResponse
    CreateServiceSpecificCredentialRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameType, name: "UserName", traits: {"smithy.api#required" => {}}))
    CreateServiceSpecificCredentialRequest.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, name: "ServiceName", traits: {"smithy.api#required" => {}}))
    CreateServiceSpecificCredentialRequest.add_member(:credential_age_days, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialAgeDays, name: "CredentialAgeDays"))
    CreateServiceSpecificCredentialRequest.type = Types::CreateServiceSpecificCredentialRequest
    CreateServiceSpecificCredentialResponse.add_member(:service_specific_credential, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceSpecificCredential, name: "ServiceSpecificCredential"))
    CreateServiceSpecificCredentialResponse.type = Types::CreateServiceSpecificCredentialResponse
    CreateUserRequest.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: PathType, name: "Path"))
    CreateUserRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameType, name: "UserName", traits: {"smithy.api#required" => {}}))
    CreateUserRequest.add_member(:permissions_boundary, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "PermissionsBoundary"))
    CreateUserRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags"))
    CreateUserRequest.type = Types::CreateUserRequest
    CreateUserResponse.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: User, name: "User"))
    CreateUserResponse.type = Types::CreateUserResponse
    CreateVirtualMFADeviceRequest.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: PathType, name: "Path"))
    CreateVirtualMFADeviceRequest.add_member(:virtual_mfa_device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualMFADeviceName, name: "VirtualMFADeviceName", traits: {"smithy.api#required" => {}}))
    CreateVirtualMFADeviceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags"))
    CreateVirtualMFADeviceRequest.type = Types::CreateVirtualMFADeviceRequest
    CreateVirtualMFADeviceResponse.add_member(:virtual_mfa_device, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualMFADevice, name: "VirtualMFADevice", traits: {"smithy.api#required" => {}}))
    CreateVirtualMFADeviceResponse.type = Types::CreateVirtualMFADeviceResponse
    CredentialReportExpiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialReportExpiredExceptionMessage, name: "message"))
    CredentialReportExpiredException.type = Types::CredentialReportExpiredException
    CredentialReportNotPresentException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialReportNotPresentExceptionMessage, name: "message"))
    CredentialReportNotPresentException.type = Types::CredentialReportNotPresentException
    CredentialReportNotReadyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialReportNotReadyExceptionMessage, name: "message"))
    CredentialReportNotReadyException.type = Types::CredentialReportNotReadyException
    DeactivateMFADeviceRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExistingUserNameType, name: "UserName"))
    DeactivateMFADeviceRequest.add_member(:serial_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SerialNumberType, name: "SerialNumber", traits: {"smithy.api#required" => {}}))
    DeactivateMFADeviceRequest.type = Types::DeactivateMFADeviceRequest
    DeleteAccessKeyRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExistingUserNameType, name: "UserName"))
    DeleteAccessKeyRequest.add_member(:access_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessKeyIdType, name: "AccessKeyId", traits: {"smithy.api#required" => {}}))
    DeleteAccessKeyRequest.type = Types::DeleteAccessKeyRequest
    DeleteAccountAliasRequest.add_member(:account_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAliasType, name: "AccountAlias", traits: {"smithy.api#required" => {}}))
    DeleteAccountAliasRequest.type = Types::DeleteAccountAliasRequest
    DeleteConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteConflictMessage, name: "message"))
    DeleteConflictException.type = Types::DeleteConflictException
    DeleteGroupPolicyRequest.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupNameType, name: "GroupName", traits: {"smithy.api#required" => {}}))
    DeleteGroupPolicyRequest.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyNameType, name: "PolicyName", traits: {"smithy.api#required" => {}}))
    DeleteGroupPolicyRequest.type = Types::DeleteGroupPolicyRequest
    DeleteGroupRequest.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupNameType, name: "GroupName", traits: {"smithy.api#required" => {}}))
    DeleteGroupRequest.type = Types::DeleteGroupRequest
    DeleteInstanceProfileRequest.add_member(:instance_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProfileNameType, name: "InstanceProfileName", traits: {"smithy.api#required" => {}}))
    DeleteInstanceProfileRequest.type = Types::DeleteInstanceProfileRequest
    DeleteLoginProfileRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameType, name: "UserName"))
    DeleteLoginProfileRequest.type = Types::DeleteLoginProfileRequest
    DeleteOpenIDConnectProviderRequest.add_member(:open_id_connect_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "OpenIDConnectProviderArn", traits: {"smithy.api#required" => {}}))
    DeleteOpenIDConnectProviderRequest.type = Types::DeleteOpenIDConnectProviderRequest
    DeletePolicyRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "PolicyArn", traits: {"smithy.api#required" => {}}))
    DeletePolicyRequest.type = Types::DeletePolicyRequest
    DeletePolicyVersionRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "PolicyArn", traits: {"smithy.api#required" => {}}))
    DeletePolicyVersionRequest.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyVersionIdType, name: "VersionId", traits: {"smithy.api#required" => {}}))
    DeletePolicyVersionRequest.type = Types::DeletePolicyVersionRequest
    DeleteRolePermissionsBoundaryRequest.add_member(:role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameType, name: "RoleName", traits: {"smithy.api#required" => {}}))
    DeleteRolePermissionsBoundaryRequest.type = Types::DeleteRolePermissionsBoundaryRequest
    DeleteRolePolicyRequest.add_member(:role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameType, name: "RoleName", traits: {"smithy.api#required" => {}}))
    DeleteRolePolicyRequest.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyNameType, name: "PolicyName", traits: {"smithy.api#required" => {}}))
    DeleteRolePolicyRequest.type = Types::DeleteRolePolicyRequest
    DeleteRoleRequest.add_member(:role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameType, name: "RoleName", traits: {"smithy.api#required" => {}}))
    DeleteRoleRequest.type = Types::DeleteRoleRequest
    DeleteSAMLProviderRequest.add_member(:saml_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "SAMLProviderArn", traits: {"smithy.api#required" => {}}))
    DeleteSAMLProviderRequest.type = Types::DeleteSAMLProviderRequest
    DeleteSSHPublicKeyRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameType, name: "UserName", traits: {"smithy.api#required" => {}}))
    DeleteSSHPublicKeyRequest.add_member(:ssh_public_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicKeyIdType, name: "SSHPublicKeyId", traits: {"smithy.api#required" => {}}))
    DeleteSSHPublicKeyRequest.type = Types::DeleteSSHPublicKeyRequest
    DeleteServerCertificateRequest.add_member(:server_certificate_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerCertificateNameType, name: "ServerCertificateName", traits: {"smithy.api#required" => {}}))
    DeleteServerCertificateRequest.type = Types::DeleteServerCertificateRequest
    DeleteServiceLinkedRoleRequest.add_member(:role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameType, name: "RoleName", traits: {"smithy.api#required" => {}}))
    DeleteServiceLinkedRoleRequest.type = Types::DeleteServiceLinkedRoleRequest
    DeleteServiceLinkedRoleResponse.add_member(:deletion_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionTaskIdType, name: "DeletionTaskId", traits: {"smithy.api#required" => {}}))
    DeleteServiceLinkedRoleResponse.type = Types::DeleteServiceLinkedRoleResponse
    DeleteServiceSpecificCredentialRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameType, name: "UserName"))
    DeleteServiceSpecificCredentialRequest.add_member(:service_specific_credential_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceSpecificCredentialId, name: "ServiceSpecificCredentialId", traits: {"smithy.api#required" => {}}))
    DeleteServiceSpecificCredentialRequest.type = Types::DeleteServiceSpecificCredentialRequest
    DeleteSigningCertificateRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExistingUserNameType, name: "UserName"))
    DeleteSigningCertificateRequest.add_member(:certificate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateIdType, name: "CertificateId", traits: {"smithy.api#required" => {}}))
    DeleteSigningCertificateRequest.type = Types::DeleteSigningCertificateRequest
    DeleteUserPermissionsBoundaryRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameType, name: "UserName", traits: {"smithy.api#required" => {}}))
    DeleteUserPermissionsBoundaryRequest.type = Types::DeleteUserPermissionsBoundaryRequest
    DeleteUserPolicyRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExistingUserNameType, name: "UserName", traits: {"smithy.api#required" => {}}))
    DeleteUserPolicyRequest.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyNameType, name: "PolicyName", traits: {"smithy.api#required" => {}}))
    DeleteUserPolicyRequest.type = Types::DeleteUserPolicyRequest
    DeleteUserRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExistingUserNameType, name: "UserName", traits: {"smithy.api#required" => {}}))
    DeleteUserRequest.type = Types::DeleteUserRequest
    DeleteVirtualMFADeviceRequest.add_member(:serial_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SerialNumberType, name: "SerialNumber", traits: {"smithy.api#required" => {}}))
    DeleteVirtualMFADeviceRequest.type = Types::DeleteVirtualMFADeviceRequest
    DeletionTaskFailureReasonType.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ReasonType, name: "Reason"))
    DeletionTaskFailureReasonType.add_member(:role_usage_list, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleUsageListType, name: "RoleUsageList"))
    DeletionTaskFailureReasonType.type = Types::DeletionTaskFailureReasonType
    DeletionTaskStatusType.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    DeletionTaskStatusType.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    DeletionTaskStatusType.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DeletionTaskStatusType.add_member(:not_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_STARTED", traits: {"smithy.api#enumValue" => "NOT_STARTED"}))
    DetachGroupPolicyRequest.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupNameType, name: "GroupName", traits: {"smithy.api#required" => {}}))
    DetachGroupPolicyRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "PolicyArn", traits: {"smithy.api#required" => {}}))
    DetachGroupPolicyRequest.type = Types::DetachGroupPolicyRequest
    DetachRolePolicyRequest.add_member(:role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameType, name: "RoleName", traits: {"smithy.api#required" => {}}))
    DetachRolePolicyRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "PolicyArn", traits: {"smithy.api#required" => {}}))
    DetachRolePolicyRequest.type = Types::DetachRolePolicyRequest
    DetachUserPolicyRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameType, name: "UserName", traits: {"smithy.api#required" => {}}))
    DetachUserPolicyRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "PolicyArn", traits: {"smithy.api#required" => {}}))
    DetachUserPolicyRequest.type = Types::DetachUserPolicyRequest
    DisableOrganizationsRootCredentialsManagementRequest.type = Types::DisableOrganizationsRootCredentialsManagementRequest
    DisableOrganizationsRootCredentialsManagementResponse.add_member(:organization_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationIdType, name: "OrganizationId"))
    DisableOrganizationsRootCredentialsManagementResponse.add_member(:enabled_features, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturesListType, name: "EnabledFeatures"))
    DisableOrganizationsRootCredentialsManagementResponse.type = Types::DisableOrganizationsRootCredentialsManagementResponse
    DisableOrganizationsRootSessionsRequest.type = Types::DisableOrganizationsRootSessionsRequest
    DisableOrganizationsRootSessionsResponse.add_member(:organization_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationIdType, name: "OrganizationId"))
    DisableOrganizationsRootSessionsResponse.add_member(:enabled_features, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturesListType, name: "EnabledFeatures"))
    DisableOrganizationsRootSessionsResponse.type = Types::DisableOrganizationsRootSessionsResponse
    DuplicateCertificateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: DuplicateCertificateMessage, name: "message"))
    DuplicateCertificateException.type = Types::DuplicateCertificateException
    DuplicateSSHPublicKeyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: DuplicateSSHPublicKeyMessage, name: "message"))
    DuplicateSSHPublicKeyException.type = Types::DuplicateSSHPublicKeyException
    EnableMFADeviceRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExistingUserNameType, name: "UserName", traits: {"smithy.api#required" => {}}))
    EnableMFADeviceRequest.add_member(:serial_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SerialNumberType, name: "SerialNumber", traits: {"smithy.api#required" => {}}))
    EnableMFADeviceRequest.add_member(:authentication_code1, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationCodeType, name: "AuthenticationCode1", traits: {"smithy.api#required" => {}}))
    EnableMFADeviceRequest.add_member(:authentication_code2, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationCodeType, name: "AuthenticationCode2", traits: {"smithy.api#required" => {}}))
    EnableMFADeviceRequest.type = Types::EnableMFADeviceRequest
    EnableOrganizationsRootCredentialsManagementRequest.type = Types::EnableOrganizationsRootCredentialsManagementRequest
    EnableOrganizationsRootCredentialsManagementResponse.add_member(:organization_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationIdType, name: "OrganizationId"))
    EnableOrganizationsRootCredentialsManagementResponse.add_member(:enabled_features, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturesListType, name: "EnabledFeatures"))
    EnableOrganizationsRootCredentialsManagementResponse.type = Types::EnableOrganizationsRootCredentialsManagementResponse
    EnableOrganizationsRootSessionsRequest.type = Types::EnableOrganizationsRootSessionsRequest
    EnableOrganizationsRootSessionsResponse.add_member(:organization_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationIdType, name: "OrganizationId"))
    EnableOrganizationsRootSessionsResponse.add_member(:enabled_features, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturesListType, name: "EnabledFeatures"))
    EnableOrganizationsRootSessionsResponse.type = Types::EnableOrganizationsRootSessionsResponse
    EntityAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityAlreadyExistsMessage, name: "message"))
    EntityAlreadyExistsException.type = Types::EntityAlreadyExistsException
    EntityDetails.add_member(:entity_info, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityInfo, name: "EntityInfo", traits: {"smithy.api#required" => {}}))
    EntityDetails.add_member(:last_authenticated, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "LastAuthenticated"))
    EntityDetails.type = Types::EntityDetails
    EntityInfo.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "Arn", traits: {"smithy.api#required" => {}}))
    EntityInfo.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameType, name: "Name", traits: {"smithy.api#required" => {}}))
    EntityInfo.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyOwnerEntityType, name: "Type", traits: {"smithy.api#required" => {}}))
    EntityInfo.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "Id", traits: {"smithy.api#required" => {}}))
    EntityInfo.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: PathType, name: "Path"))
    EntityInfo.type = Types::EntityInfo
    EntityTemporarilyUnmodifiableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityTemporarilyUnmodifiableMessage, name: "message"))
    EntityTemporarilyUnmodifiableException.type = Types::EntityTemporarilyUnmodifiableException
    EntityType.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "User", traits: {"smithy.api#enumValue" => "User"}))
    EntityType.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Role", traits: {"smithy.api#enumValue" => "Role"}))
    EntityType.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Group", traits: {"smithy.api#enumValue" => "Group"}))
    EntityType.add_member(:local_managed_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LocalManagedPolicy", traits: {"smithy.api#enumValue" => "LocalManagedPolicy"}))
    EntityType.add_member(:aws_managed_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWSManagedPolicy", traits: {"smithy.api#enumValue" => "AWSManagedPolicy"}))
    ErrorDetails.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "Message", traits: {"smithy.api#required" => {}}))
    ErrorDetails.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "Code", traits: {"smithy.api#required" => {}}))
    ErrorDetails.type = Types::ErrorDetails
    EvalDecisionDetailsType.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: EvalDecisionSourceType, name: "key"))
    EvalDecisionDetailsType.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyEvaluationDecisionType, name: "value"))
    EvaluationResult.add_member(:eval_action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionNameType, name: "EvalActionName", traits: {"smithy.api#required" => {}}))
    EvaluationResult.add_member(:eval_resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameType, name: "EvalResourceName"))
    EvaluationResult.add_member(:eval_decision, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyEvaluationDecisionType, name: "EvalDecision", traits: {"smithy.api#required" => {}}))
    EvaluationResult.add_member(:matched_statements, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementListType, name: "MatchedStatements"))
    EvaluationResult.add_member(:missing_context_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextKeyNamesResultListType, name: "MissingContextValues"))
    EvaluationResult.add_member(:organizations_decision_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationsDecisionDetail, name: "OrganizationsDecisionDetail"))
    EvaluationResult.add_member(:permissions_boundary_decision_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionsBoundaryDecisionDetail, name: "PermissionsBoundaryDecisionDetail"))
    EvaluationResult.add_member(:eval_decision_details, ::Smithy::Schema::Shapes::MemberShape.new(target: EvalDecisionDetailsType, name: "EvalDecisionDetails"))
    EvaluationResult.add_member(:resource_specific_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSpecificResultListType, name: "ResourceSpecificResults"))
    EvaluationResult.type = Types::EvaluationResult
    EvaluationResultsListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationResult, name: "member"))
    FeatureType.add_member(:root_credentials_management, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROOT_CREDENTIALS_MANAGEMENT", traits: {"smithy.api#enumValue" => "RootCredentialsManagement"}))
    FeatureType.add_member(:root_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROOT_SESSIONS", traits: {"smithy.api#enumValue" => "RootSessions"}))
    FeaturesListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureType, name: "member"))
    GenerateCredentialReportResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportStateType, name: "State"))
    GenerateCredentialReportResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportStateDescriptionType, name: "Description"))
    GenerateCredentialReportResponse.type = Types::GenerateCredentialReportResponse
    GenerateOrganizationsAccessReportRequest.add_member(:entity_path, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationsEntityPathType, name: "EntityPath", traits: {"smithy.api#required" => {}}))
    GenerateOrganizationsAccessReportRequest.add_member(:organizations_policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationsPolicyIdType, name: "OrganizationsPolicyId"))
    GenerateOrganizationsAccessReportRequest.type = Types::GenerateOrganizationsAccessReportRequest
    GenerateOrganizationsAccessReportResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobIDType, name: "JobId"))
    GenerateOrganizationsAccessReportResponse.type = Types::GenerateOrganizationsAccessReportResponse
    GenerateServiceLastAccessedDetailsRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "Arn", traits: {"smithy.api#required" => {}}))
    GenerateServiceLastAccessedDetailsRequest.add_member(:granularity, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessAdvisorUsageGranularityType, name: "Granularity"))
    GenerateServiceLastAccessedDetailsRequest.type = Types::GenerateServiceLastAccessedDetailsRequest
    GenerateServiceLastAccessedDetailsResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobIDType, name: "JobId"))
    GenerateServiceLastAccessedDetailsResponse.type = Types::GenerateServiceLastAccessedDetailsResponse
    GetAccessKeyLastUsedRequest.add_member(:access_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessKeyIdType, name: "AccessKeyId", traits: {"smithy.api#required" => {}}))
    GetAccessKeyLastUsedRequest.type = Types::GetAccessKeyLastUsedRequest
    GetAccessKeyLastUsedResponse.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExistingUserNameType, name: "UserName"))
    GetAccessKeyLastUsedResponse.add_member(:access_key_last_used, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessKeyLastUsed, name: "AccessKeyLastUsed"))
    GetAccessKeyLastUsedResponse.type = Types::GetAccessKeyLastUsedResponse
    GetAccountAuthorizationDetailsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityListType, name: "Filter"))
    GetAccountAuthorizationDetailsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsType, name: "MaxItems"))
    GetAccountAuthorizationDetailsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    GetAccountAuthorizationDetailsRequest.type = Types::GetAccountAuthorizationDetailsRequest
    GetAccountAuthorizationDetailsResponse.add_member(:user_detail_list, ::Smithy::Schema::Shapes::MemberShape.new(target: UserDetailListType, name: "UserDetailList"))
    GetAccountAuthorizationDetailsResponse.add_member(:group_detail_list, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupDetailListType, name: "GroupDetailList"))
    GetAccountAuthorizationDetailsResponse.add_member(:role_detail_list, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleDetailListType, name: "RoleDetailList"))
    GetAccountAuthorizationDetailsResponse.add_member(:policies, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedPolicyDetailListType, name: "Policies"))
    GetAccountAuthorizationDetailsResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    GetAccountAuthorizationDetailsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMarkerType, name: "Marker"))
    GetAccountAuthorizationDetailsResponse.type = Types::GetAccountAuthorizationDetailsResponse
    GetAccountPasswordPolicyResponse.add_member(:password_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PasswordPolicy, name: "PasswordPolicy", traits: {"smithy.api#required" => {}}))
    GetAccountPasswordPolicyResponse.type = Types::GetAccountPasswordPolicyResponse
    GetAccountSummaryResponse.add_member(:summary_map, ::Smithy::Schema::Shapes::MemberShape.new(target: SummaryMapType, name: "SummaryMap"))
    GetAccountSummaryResponse.type = Types::GetAccountSummaryResponse
    GetContextKeysForCustomPolicyOutput.add_member(:context_key_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextKeyNamesResultListType, name: "ContextKeyNames"))
    GetContextKeysForCustomPolicyOutput.type = Types::GetContextKeysForCustomPolicyOutput
    GetContextKeysForCustomPolicyRequest.add_member(:policy_input_list, ::Smithy::Schema::Shapes::MemberShape.new(target: SimulationPolicyListType, name: "PolicyInputList", traits: {"smithy.api#required" => {}}))
    GetContextKeysForCustomPolicyRequest.type = Types::GetContextKeysForCustomPolicyRequest
    GetContextKeysForPrincipalPolicyOutput.add_member(:context_key_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextKeyNamesResultListType, name: "ContextKeyNames"))
    GetContextKeysForPrincipalPolicyOutput.type = Types::GetContextKeysForPrincipalPolicyOutput
    GetContextKeysForPrincipalPolicyRequest.add_member(:policy_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "PolicySourceArn", traits: {"smithy.api#required" => {}}))
    GetContextKeysForPrincipalPolicyRequest.add_member(:policy_input_list, ::Smithy::Schema::Shapes::MemberShape.new(target: SimulationPolicyListType, name: "PolicyInputList"))
    GetContextKeysForPrincipalPolicyRequest.type = Types::GetContextKeysForPrincipalPolicyRequest
    GetCredentialReportResponse.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportContentType, name: "Content"))
    GetCredentialReportResponse.add_member(:report_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportFormatType, name: "ReportFormat"))
    GetCredentialReportResponse.add_member(:generated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "GeneratedTime"))
    GetCredentialReportResponse.type = Types::GetCredentialReportResponse
    GetGroupPolicyRequest.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupNameType, name: "GroupName", traits: {"smithy.api#required" => {}}))
    GetGroupPolicyRequest.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyNameType, name: "PolicyName", traits: {"smithy.api#required" => {}}))
    GetGroupPolicyRequest.type = Types::GetGroupPolicyRequest
    GetGroupPolicyResponse.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupNameType, name: "GroupName", traits: {"smithy.api#required" => {}}))
    GetGroupPolicyResponse.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyNameType, name: "PolicyName", traits: {"smithy.api#required" => {}}))
    GetGroupPolicyResponse.add_member(:policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocumentType, name: "PolicyDocument", traits: {"smithy.api#required" => {}}))
    GetGroupPolicyResponse.type = Types::GetGroupPolicyResponse
    GetGroupRequest.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupNameType, name: "GroupName", traits: {"smithy.api#required" => {}}))
    GetGroupRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    GetGroupRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsType, name: "MaxItems"))
    GetGroupRequest.type = Types::GetGroupRequest
    GetGroupResponse.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: Group, name: "Group", traits: {"smithy.api#required" => {}}))
    GetGroupResponse.add_member(:users, ::Smithy::Schema::Shapes::MemberShape.new(target: UserListType, name: "Users", traits: {"smithy.api#required" => {}}))
    GetGroupResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    GetGroupResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMarkerType, name: "Marker"))
    GetGroupResponse.type = Types::GetGroupResponse
    GetInstanceProfileRequest.add_member(:instance_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProfileNameType, name: "InstanceProfileName", traits: {"smithy.api#required" => {}}))
    GetInstanceProfileRequest.type = Types::GetInstanceProfileRequest
    GetInstanceProfileResponse.add_member(:instance_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProfile, name: "InstanceProfile", traits: {"smithy.api#required" => {}}))
    GetInstanceProfileResponse.type = Types::GetInstanceProfileResponse
    GetLoginProfileRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameType, name: "UserName"))
    GetLoginProfileRequest.type = Types::GetLoginProfileRequest
    GetLoginProfileResponse.add_member(:login_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: LoginProfile, name: "LoginProfile", traits: {"smithy.api#required" => {}}))
    GetLoginProfileResponse.type = Types::GetLoginProfileResponse
    GetMFADeviceRequest.add_member(:serial_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SerialNumberType, name: "SerialNumber", traits: {"smithy.api#required" => {}}))
    GetMFADeviceRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameType, name: "UserName"))
    GetMFADeviceRequest.type = Types::GetMFADeviceRequest
    GetMFADeviceResponse.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameType, name: "UserName"))
    GetMFADeviceResponse.add_member(:serial_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SerialNumberType, name: "SerialNumber", traits: {"smithy.api#required" => {}}))
    GetMFADeviceResponse.add_member(:enable_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "EnableDate"))
    GetMFADeviceResponse.add_member(:certifications, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificationMapType, name: "Certifications"))
    GetMFADeviceResponse.type = Types::GetMFADeviceResponse
    GetOpenIDConnectProviderRequest.add_member(:open_id_connect_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "OpenIDConnectProviderArn", traits: {"smithy.api#required" => {}}))
    GetOpenIDConnectProviderRequest.type = Types::GetOpenIDConnectProviderRequest
    GetOpenIDConnectProviderResponse.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenIDConnectProviderUrlType, name: "Url"))
    GetOpenIDConnectProviderResponse.add_member(:client_id_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIDListType, name: "ClientIDList"))
    GetOpenIDConnectProviderResponse.add_member(:thumbprint_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ThumbprintListType, name: "ThumbprintList"))
    GetOpenIDConnectProviderResponse.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "CreateDate"))
    GetOpenIDConnectProviderResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags"))
    GetOpenIDConnectProviderResponse.type = Types::GetOpenIDConnectProviderResponse
    GetOrganizationsAccessReportRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobIDType, name: "JobId", traits: {"smithy.api#required" => {}}))
    GetOrganizationsAccessReportRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsType, name: "MaxItems"))
    GetOrganizationsAccessReportRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    GetOrganizationsAccessReportRequest.add_member(:sort_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SortKeyType, name: "SortKey"))
    GetOrganizationsAccessReportRequest.type = Types::GetOrganizationsAccessReportRequest
    GetOrganizationsAccessReportResponse.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatusType, name: "JobStatus", traits: {"smithy.api#required" => {}}))
    GetOrganizationsAccessReportResponse.add_member(:job_creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "JobCreationDate", traits: {"smithy.api#required" => {}}))
    GetOrganizationsAccessReportResponse.add_member(:job_completion_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "JobCompletionDate"))
    GetOrganizationsAccessReportResponse.add_member(:number_of_services_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerType, name: "NumberOfServicesAccessible"))
    GetOrganizationsAccessReportResponse.add_member(:number_of_services_not_accessed, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerType, name: "NumberOfServicesNotAccessed"))
    GetOrganizationsAccessReportResponse.add_member(:access_details, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessDetails, name: "AccessDetails"))
    GetOrganizationsAccessReportResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    GetOrganizationsAccessReportResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    GetOrganizationsAccessReportResponse.add_member(:error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetails, name: "ErrorDetails"))
    GetOrganizationsAccessReportResponse.type = Types::GetOrganizationsAccessReportResponse
    GetPolicyRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "PolicyArn", traits: {"smithy.api#required" => {}}))
    GetPolicyRequest.type = Types::GetPolicyRequest
    GetPolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "Policy"))
    GetPolicyResponse.type = Types::GetPolicyResponse
    GetPolicyVersionRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "PolicyArn", traits: {"smithy.api#required" => {}}))
    GetPolicyVersionRequest.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyVersionIdType, name: "VersionId", traits: {"smithy.api#required" => {}}))
    GetPolicyVersionRequest.type = Types::GetPolicyVersionRequest
    GetPolicyVersionResponse.add_member(:policy_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyVersion, name: "PolicyVersion"))
    GetPolicyVersionResponse.type = Types::GetPolicyVersionResponse
    GetRolePolicyRequest.add_member(:role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameType, name: "RoleName", traits: {"smithy.api#required" => {}}))
    GetRolePolicyRequest.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyNameType, name: "PolicyName", traits: {"smithy.api#required" => {}}))
    GetRolePolicyRequest.type = Types::GetRolePolicyRequest
    GetRolePolicyResponse.add_member(:role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameType, name: "RoleName", traits: {"smithy.api#required" => {}}))
    GetRolePolicyResponse.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyNameType, name: "PolicyName", traits: {"smithy.api#required" => {}}))
    GetRolePolicyResponse.add_member(:policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocumentType, name: "PolicyDocument", traits: {"smithy.api#required" => {}}))
    GetRolePolicyResponse.type = Types::GetRolePolicyResponse
    GetRoleRequest.add_member(:role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameType, name: "RoleName", traits: {"smithy.api#required" => {}}))
    GetRoleRequest.type = Types::GetRoleRequest
    GetRoleResponse.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: Role, name: "Role", traits: {"smithy.api#required" => {}}))
    GetRoleResponse.type = Types::GetRoleResponse
    GetSAMLProviderRequest.add_member(:saml_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "SAMLProviderArn", traits: {"smithy.api#required" => {}}))
    GetSAMLProviderRequest.type = Types::GetSAMLProviderRequest
    GetSAMLProviderResponse.add_member(:saml_provider_uuid, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateKeyIdType, name: "SAMLProviderUUID"))
    GetSAMLProviderResponse.add_member(:saml_metadata_document, ::Smithy::Schema::Shapes::MemberShape.new(target: SAMLMetadataDocumentType, name: "SAMLMetadataDocument"))
    GetSAMLProviderResponse.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "CreateDate"))
    GetSAMLProviderResponse.add_member(:valid_until, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "ValidUntil"))
    GetSAMLProviderResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags"))
    GetSAMLProviderResponse.add_member(:assertion_encryption_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AssertionEncryptionModeType, name: "AssertionEncryptionMode"))
    GetSAMLProviderResponse.add_member(:private_key_list, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateKeyList, name: "PrivateKeyList"))
    GetSAMLProviderResponse.type = Types::GetSAMLProviderResponse
    GetSSHPublicKeyRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameType, name: "UserName", traits: {"smithy.api#required" => {}}))
    GetSSHPublicKeyRequest.add_member(:ssh_public_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicKeyIdType, name: "SSHPublicKeyId", traits: {"smithy.api#required" => {}}))
    GetSSHPublicKeyRequest.add_member(:encoding, ::Smithy::Schema::Shapes::MemberShape.new(target: EncodingType, name: "Encoding", traits: {"smithy.api#required" => {}}))
    GetSSHPublicKeyRequest.type = Types::GetSSHPublicKeyRequest
    GetSSHPublicKeyResponse.add_member(:ssh_public_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SSHPublicKey, name: "SSHPublicKey"))
    GetSSHPublicKeyResponse.type = Types::GetSSHPublicKeyResponse
    GetServerCertificateRequest.add_member(:server_certificate_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerCertificateNameType, name: "ServerCertificateName", traits: {"smithy.api#required" => {}}))
    GetServerCertificateRequest.type = Types::GetServerCertificateRequest
    GetServerCertificateResponse.add_member(:server_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerCertificate, name: "ServerCertificate", traits: {"smithy.api#required" => {}}))
    GetServerCertificateResponse.type = Types::GetServerCertificateResponse
    GetServiceLastAccessedDetailsRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobIDType, name: "JobId", traits: {"smithy.api#required" => {}}))
    GetServiceLastAccessedDetailsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsType, name: "MaxItems"))
    GetServiceLastAccessedDetailsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    GetServiceLastAccessedDetailsRequest.type = Types::GetServiceLastAccessedDetailsRequest
    GetServiceLastAccessedDetailsResponse.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatusType, name: "JobStatus", traits: {"smithy.api#required" => {}}))
    GetServiceLastAccessedDetailsResponse.add_member(:job_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessAdvisorUsageGranularityType, name: "JobType"))
    GetServiceLastAccessedDetailsResponse.add_member(:job_creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "JobCreationDate", traits: {"smithy.api#required" => {}}))
    GetServiceLastAccessedDetailsResponse.add_member(:services_last_accessed, ::Smithy::Schema::Shapes::MemberShape.new(target: ServicesLastAccessed, name: "ServicesLastAccessed", traits: {"smithy.api#required" => {}}))
    GetServiceLastAccessedDetailsResponse.add_member(:job_completion_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "JobCompletionDate", traits: {"smithy.api#required" => {}}))
    GetServiceLastAccessedDetailsResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    GetServiceLastAccessedDetailsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMarkerType, name: "Marker"))
    GetServiceLastAccessedDetailsResponse.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetails, name: "Error"))
    GetServiceLastAccessedDetailsResponse.type = Types::GetServiceLastAccessedDetailsResponse
    GetServiceLastAccessedDetailsWithEntitiesRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobIDType, name: "JobId", traits: {"smithy.api#required" => {}}))
    GetServiceLastAccessedDetailsWithEntitiesRequest.add_member(:service_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNamespaceType, name: "ServiceNamespace", traits: {"smithy.api#required" => {}}))
    GetServiceLastAccessedDetailsWithEntitiesRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsType, name: "MaxItems"))
    GetServiceLastAccessedDetailsWithEntitiesRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    GetServiceLastAccessedDetailsWithEntitiesRequest.type = Types::GetServiceLastAccessedDetailsWithEntitiesRequest
    GetServiceLastAccessedDetailsWithEntitiesResponse.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatusType, name: "JobStatus", traits: {"smithy.api#required" => {}}))
    GetServiceLastAccessedDetailsWithEntitiesResponse.add_member(:job_creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "JobCreationDate", traits: {"smithy.api#required" => {}}))
    GetServiceLastAccessedDetailsWithEntitiesResponse.add_member(:job_completion_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "JobCompletionDate", traits: {"smithy.api#required" => {}}))
    GetServiceLastAccessedDetailsWithEntitiesResponse.add_member(:entity_details_list, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDetailsListType, name: "EntityDetailsList", traits: {"smithy.api#required" => {}}))
    GetServiceLastAccessedDetailsWithEntitiesResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    GetServiceLastAccessedDetailsWithEntitiesResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMarkerType, name: "Marker"))
    GetServiceLastAccessedDetailsWithEntitiesResponse.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetails, name: "Error"))
    GetServiceLastAccessedDetailsWithEntitiesResponse.type = Types::GetServiceLastAccessedDetailsWithEntitiesResponse
    GetServiceLinkedRoleDeletionStatusRequest.add_member(:deletion_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionTaskIdType, name: "DeletionTaskId", traits: {"smithy.api#required" => {}}))
    GetServiceLinkedRoleDeletionStatusRequest.type = Types::GetServiceLinkedRoleDeletionStatusRequest
    GetServiceLinkedRoleDeletionStatusResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionTaskStatusType, name: "Status", traits: {"smithy.api#required" => {}}))
    GetServiceLinkedRoleDeletionStatusResponse.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionTaskFailureReasonType, name: "Reason"))
    GetServiceLinkedRoleDeletionStatusResponse.type = Types::GetServiceLinkedRoleDeletionStatusResponse
    GetUserPolicyRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExistingUserNameType, name: "UserName", traits: {"smithy.api#required" => {}}))
    GetUserPolicyRequest.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyNameType, name: "PolicyName", traits: {"smithy.api#required" => {}}))
    GetUserPolicyRequest.type = Types::GetUserPolicyRequest
    GetUserPolicyResponse.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExistingUserNameType, name: "UserName", traits: {"smithy.api#required" => {}}))
    GetUserPolicyResponse.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyNameType, name: "PolicyName", traits: {"smithy.api#required" => {}}))
    GetUserPolicyResponse.add_member(:policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocumentType, name: "PolicyDocument", traits: {"smithy.api#required" => {}}))
    GetUserPolicyResponse.type = Types::GetUserPolicyResponse
    GetUserRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExistingUserNameType, name: "UserName"))
    GetUserRequest.type = Types::GetUserRequest
    GetUserResponse.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: User, name: "User", traits: {"smithy.api#required" => {}}))
    GetUserResponse.type = Types::GetUserResponse
    Group.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: PathType, name: "Path", traits: {"smithy.api#required" => {}}))
    Group.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupNameType, name: "GroupName", traits: {"smithy.api#required" => {}}))
    Group.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "GroupId", traits: {"smithy.api#required" => {}}))
    Group.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "Arn", traits: {"smithy.api#required" => {}}))
    Group.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "CreateDate", traits: {"smithy.api#required" => {}}))
    Group.type = Types::Group
    GroupDetail.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: PathType, name: "Path"))
    GroupDetail.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupNameType, name: "GroupName"))
    GroupDetail.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "GroupId"))
    GroupDetail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "Arn"))
    GroupDetail.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "CreateDate"))
    GroupDetail.add_member(:group_policy_list, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDetailListType, name: "GroupPolicyList"))
    GroupDetail.add_member(:attached_managed_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachedPoliciesListType, name: "AttachedManagedPolicies"))
    GroupDetail.type = Types::GroupDetail
    InstanceProfile.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: PathType, name: "Path", traits: {"smithy.api#required" => {}}))
    InstanceProfile.add_member(:instance_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProfileNameType, name: "InstanceProfileName", traits: {"smithy.api#required" => {}}))
    InstanceProfile.add_member(:instance_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "InstanceProfileId", traits: {"smithy.api#required" => {}}))
    InstanceProfile.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "Arn", traits: {"smithy.api#required" => {}}))
    InstanceProfile.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "CreateDate", traits: {"smithy.api#required" => {}}))
    InstanceProfile.add_member(:roles, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleListType, name: "Roles", traits: {"smithy.api#required" => {}}))
    InstanceProfile.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags"))
    InstanceProfile.type = Types::InstanceProfile
    InvalidAuthenticationCodeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: InvalidAuthenticationCodeMessage, name: "message"))
    InvalidAuthenticationCodeException.type = Types::InvalidAuthenticationCodeException
    InvalidCertificateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: InvalidCertificateMessage, name: "message"))
    InvalidCertificateException.type = Types::InvalidCertificateException
    InvalidInputException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: InvalidInputMessage, name: "message"))
    InvalidInputException.type = Types::InvalidInputException
    InvalidPublicKeyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: InvalidPublicKeyMessage, name: "message"))
    InvalidPublicKeyException.type = Types::InvalidPublicKeyException
    InvalidUserTypeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: InvalidUserTypeMessage, name: "message"))
    InvalidUserTypeException.type = Types::InvalidUserTypeException
    KeyPairMismatchException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyPairMismatchMessage, name: "message"))
    KeyPairMismatchException.type = Types::KeyPairMismatchException
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitExceededMessage, name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    ListAccessKeysRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExistingUserNameType, name: "UserName"))
    ListAccessKeysRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    ListAccessKeysRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsType, name: "MaxItems"))
    ListAccessKeysRequest.type = Types::ListAccessKeysRequest
    ListAccessKeysResponse.add_member(:access_key_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessKeyMetadataListType, name: "AccessKeyMetadata", traits: {"smithy.api#required" => {}}))
    ListAccessKeysResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    ListAccessKeysResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMarkerType, name: "Marker"))
    ListAccessKeysResponse.type = Types::ListAccessKeysResponse
    ListAccountAliasesRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    ListAccountAliasesRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsType, name: "MaxItems"))
    ListAccountAliasesRequest.type = Types::ListAccountAliasesRequest
    ListAccountAliasesResponse.add_member(:account_aliases, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAliasListType, name: "AccountAliases", traits: {"smithy.api#required" => {}}))
    ListAccountAliasesResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    ListAccountAliasesResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMarkerType, name: "Marker"))
    ListAccountAliasesResponse.type = Types::ListAccountAliasesResponse
    ListAttachedGroupPoliciesRequest.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupNameType, name: "GroupName", traits: {"smithy.api#required" => {}}))
    ListAttachedGroupPoliciesRequest.add_member(:path_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyPathType, name: "PathPrefix"))
    ListAttachedGroupPoliciesRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    ListAttachedGroupPoliciesRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsType, name: "MaxItems"))
    ListAttachedGroupPoliciesRequest.type = Types::ListAttachedGroupPoliciesRequest
    ListAttachedGroupPoliciesResponse.add_member(:attached_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachedPoliciesListType, name: "AttachedPolicies"))
    ListAttachedGroupPoliciesResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    ListAttachedGroupPoliciesResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMarkerType, name: "Marker"))
    ListAttachedGroupPoliciesResponse.type = Types::ListAttachedGroupPoliciesResponse
    ListAttachedRolePoliciesRequest.add_member(:role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameType, name: "RoleName", traits: {"smithy.api#required" => {}}))
    ListAttachedRolePoliciesRequest.add_member(:path_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyPathType, name: "PathPrefix"))
    ListAttachedRolePoliciesRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    ListAttachedRolePoliciesRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsType, name: "MaxItems"))
    ListAttachedRolePoliciesRequest.type = Types::ListAttachedRolePoliciesRequest
    ListAttachedRolePoliciesResponse.add_member(:attached_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachedPoliciesListType, name: "AttachedPolicies"))
    ListAttachedRolePoliciesResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    ListAttachedRolePoliciesResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMarkerType, name: "Marker"))
    ListAttachedRolePoliciesResponse.type = Types::ListAttachedRolePoliciesResponse
    ListAttachedUserPoliciesRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameType, name: "UserName", traits: {"smithy.api#required" => {}}))
    ListAttachedUserPoliciesRequest.add_member(:path_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyPathType, name: "PathPrefix"))
    ListAttachedUserPoliciesRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    ListAttachedUserPoliciesRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsType, name: "MaxItems"))
    ListAttachedUserPoliciesRequest.type = Types::ListAttachedUserPoliciesRequest
    ListAttachedUserPoliciesResponse.add_member(:attached_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachedPoliciesListType, name: "AttachedPolicies"))
    ListAttachedUserPoliciesResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    ListAttachedUserPoliciesResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMarkerType, name: "Marker"))
    ListAttachedUserPoliciesResponse.type = Types::ListAttachedUserPoliciesResponse
    ListEntitiesForPolicyRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "PolicyArn", traits: {"smithy.api#required" => {}}))
    ListEntitiesForPolicyRequest.add_member(:entity_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityType, name: "EntityFilter"))
    ListEntitiesForPolicyRequest.add_member(:path_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: PathType, name: "PathPrefix"))
    ListEntitiesForPolicyRequest.add_member(:policy_usage_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyUsageType, name: "PolicyUsageFilter"))
    ListEntitiesForPolicyRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    ListEntitiesForPolicyRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsType, name: "MaxItems"))
    ListEntitiesForPolicyRequest.type = Types::ListEntitiesForPolicyRequest
    ListEntitiesForPolicyResponse.add_member(:policy_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyGroupListType, name: "PolicyGroups"))
    ListEntitiesForPolicyResponse.add_member(:policy_users, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyUserListType, name: "PolicyUsers"))
    ListEntitiesForPolicyResponse.add_member(:policy_roles, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRoleListType, name: "PolicyRoles"))
    ListEntitiesForPolicyResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    ListEntitiesForPolicyResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMarkerType, name: "Marker"))
    ListEntitiesForPolicyResponse.type = Types::ListEntitiesForPolicyResponse
    ListGroupPoliciesRequest.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupNameType, name: "GroupName", traits: {"smithy.api#required" => {}}))
    ListGroupPoliciesRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    ListGroupPoliciesRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsType, name: "MaxItems"))
    ListGroupPoliciesRequest.type = Types::ListGroupPoliciesRequest
    ListGroupPoliciesResponse.add_member(:policy_names, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyNameListType, name: "PolicyNames", traits: {"smithy.api#required" => {}}))
    ListGroupPoliciesResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    ListGroupPoliciesResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMarkerType, name: "Marker"))
    ListGroupPoliciesResponse.type = Types::ListGroupPoliciesResponse
    ListGroupsForUserRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExistingUserNameType, name: "UserName", traits: {"smithy.api#required" => {}}))
    ListGroupsForUserRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    ListGroupsForUserRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsType, name: "MaxItems"))
    ListGroupsForUserRequest.type = Types::ListGroupsForUserRequest
    ListGroupsForUserResponse.add_member(:groups, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupListType, name: "Groups", traits: {"smithy.api#required" => {}}))
    ListGroupsForUserResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    ListGroupsForUserResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMarkerType, name: "Marker"))
    ListGroupsForUserResponse.type = Types::ListGroupsForUserResponse
    ListGroupsRequest.add_member(:path_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: PathPrefixType, name: "PathPrefix"))
    ListGroupsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    ListGroupsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsType, name: "MaxItems"))
    ListGroupsRequest.type = Types::ListGroupsRequest
    ListGroupsResponse.add_member(:groups, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupListType, name: "Groups", traits: {"smithy.api#required" => {}}))
    ListGroupsResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    ListGroupsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMarkerType, name: "Marker"))
    ListGroupsResponse.type = Types::ListGroupsResponse
    ListInstanceProfileTagsRequest.add_member(:instance_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProfileNameType, name: "InstanceProfileName", traits: {"smithy.api#required" => {}}))
    ListInstanceProfileTagsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    ListInstanceProfileTagsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsType, name: "MaxItems"))
    ListInstanceProfileTagsRequest.type = Types::ListInstanceProfileTagsRequest
    ListInstanceProfileTagsResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags", traits: {"smithy.api#required" => {}}))
    ListInstanceProfileTagsResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    ListInstanceProfileTagsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMarkerType, name: "Marker"))
    ListInstanceProfileTagsResponse.type = Types::ListInstanceProfileTagsResponse
    ListInstanceProfilesForRoleRequest.add_member(:role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameType, name: "RoleName", traits: {"smithy.api#required" => {}}))
    ListInstanceProfilesForRoleRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    ListInstanceProfilesForRoleRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsType, name: "MaxItems"))
    ListInstanceProfilesForRoleRequest.type = Types::ListInstanceProfilesForRoleRequest
    ListInstanceProfilesForRoleResponse.add_member(:instance_profiles, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProfileListType, name: "InstanceProfiles", traits: {"smithy.api#required" => {}}))
    ListInstanceProfilesForRoleResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    ListInstanceProfilesForRoleResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMarkerType, name: "Marker"))
    ListInstanceProfilesForRoleResponse.type = Types::ListInstanceProfilesForRoleResponse
    ListInstanceProfilesRequest.add_member(:path_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: PathPrefixType, name: "PathPrefix"))
    ListInstanceProfilesRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    ListInstanceProfilesRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsType, name: "MaxItems"))
    ListInstanceProfilesRequest.type = Types::ListInstanceProfilesRequest
    ListInstanceProfilesResponse.add_member(:instance_profiles, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProfileListType, name: "InstanceProfiles", traits: {"smithy.api#required" => {}}))
    ListInstanceProfilesResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    ListInstanceProfilesResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMarkerType, name: "Marker"))
    ListInstanceProfilesResponse.type = Types::ListInstanceProfilesResponse
    ListMFADeviceTagsRequest.add_member(:serial_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SerialNumberType, name: "SerialNumber", traits: {"smithy.api#required" => {}}))
    ListMFADeviceTagsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    ListMFADeviceTagsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsType, name: "MaxItems"))
    ListMFADeviceTagsRequest.type = Types::ListMFADeviceTagsRequest
    ListMFADeviceTagsResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags", traits: {"smithy.api#required" => {}}))
    ListMFADeviceTagsResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    ListMFADeviceTagsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMarkerType, name: "Marker"))
    ListMFADeviceTagsResponse.type = Types::ListMFADeviceTagsResponse
    ListMFADevicesRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExistingUserNameType, name: "UserName"))
    ListMFADevicesRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    ListMFADevicesRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsType, name: "MaxItems"))
    ListMFADevicesRequest.type = Types::ListMFADevicesRequest
    ListMFADevicesResponse.add_member(:mfa_devices, ::Smithy::Schema::Shapes::MemberShape.new(target: MfaDeviceListType, name: "MFADevices", traits: {"smithy.api#required" => {}}))
    ListMFADevicesResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    ListMFADevicesResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMarkerType, name: "Marker"))
    ListMFADevicesResponse.type = Types::ListMFADevicesResponse
    ListOpenIDConnectProviderTagsRequest.add_member(:open_id_connect_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "OpenIDConnectProviderArn", traits: {"smithy.api#required" => {}}))
    ListOpenIDConnectProviderTagsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    ListOpenIDConnectProviderTagsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsType, name: "MaxItems"))
    ListOpenIDConnectProviderTagsRequest.type = Types::ListOpenIDConnectProviderTagsRequest
    ListOpenIDConnectProviderTagsResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags", traits: {"smithy.api#required" => {}}))
    ListOpenIDConnectProviderTagsResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    ListOpenIDConnectProviderTagsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMarkerType, name: "Marker"))
    ListOpenIDConnectProviderTagsResponse.type = Types::ListOpenIDConnectProviderTagsResponse
    ListOpenIDConnectProvidersRequest.type = Types::ListOpenIDConnectProvidersRequest
    ListOpenIDConnectProvidersResponse.add_member(:open_id_connect_provider_list, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenIDConnectProviderListType, name: "OpenIDConnectProviderList"))
    ListOpenIDConnectProvidersResponse.type = Types::ListOpenIDConnectProvidersResponse
    ListOrganizationsFeaturesRequest.type = Types::ListOrganizationsFeaturesRequest
    ListOrganizationsFeaturesResponse.add_member(:organization_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationIdType, name: "OrganizationId"))
    ListOrganizationsFeaturesResponse.add_member(:enabled_features, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturesListType, name: "EnabledFeatures"))
    ListOrganizationsFeaturesResponse.type = Types::ListOrganizationsFeaturesResponse
    ListPoliciesGrantingServiceAccessEntry.add_member(:service_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNamespaceType, name: "ServiceNamespace"))
    ListPoliciesGrantingServiceAccessEntry.add_member(:policies, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyGrantingServiceAccessListType, name: "Policies"))
    ListPoliciesGrantingServiceAccessEntry.type = Types::ListPoliciesGrantingServiceAccessEntry
    ListPoliciesGrantingServiceAccessRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    ListPoliciesGrantingServiceAccessRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "Arn", traits: {"smithy.api#required" => {}}))
    ListPoliciesGrantingServiceAccessRequest.add_member(:service_namespaces, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNamespaceListType, name: "ServiceNamespaces", traits: {"smithy.api#required" => {}}))
    ListPoliciesGrantingServiceAccessRequest.type = Types::ListPoliciesGrantingServiceAccessRequest
    ListPoliciesGrantingServiceAccessResponse.add_member(:policies_granting_service_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ListPolicyGrantingServiceAccessResponseListType, name: "PoliciesGrantingServiceAccess", traits: {"smithy.api#required" => {}}))
    ListPoliciesGrantingServiceAccessResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    ListPoliciesGrantingServiceAccessResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMarkerType, name: "Marker"))
    ListPoliciesGrantingServiceAccessResponse.type = Types::ListPoliciesGrantingServiceAccessResponse
    ListPoliciesRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyScopeType, name: "Scope"))
    ListPoliciesRequest.add_member(:only_attached, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "OnlyAttached", traits: {"smithy.api#default" => false}))
    ListPoliciesRequest.add_member(:path_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyPathType, name: "PathPrefix"))
    ListPoliciesRequest.add_member(:policy_usage_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyUsageType, name: "PolicyUsageFilter"))
    ListPoliciesRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    ListPoliciesRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsType, name: "MaxItems"))
    ListPoliciesRequest.type = Types::ListPoliciesRequest
    ListPoliciesResponse.add_member(:policies, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyListType, name: "Policies"))
    ListPoliciesResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    ListPoliciesResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMarkerType, name: "Marker"))
    ListPoliciesResponse.type = Types::ListPoliciesResponse
    ListPolicyTagsRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "PolicyArn", traits: {"smithy.api#required" => {}}))
    ListPolicyTagsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    ListPolicyTagsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsType, name: "MaxItems"))
    ListPolicyTagsRequest.type = Types::ListPolicyTagsRequest
    ListPolicyTagsResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags", traits: {"smithy.api#required" => {}}))
    ListPolicyTagsResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    ListPolicyTagsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMarkerType, name: "Marker"))
    ListPolicyTagsResponse.type = Types::ListPolicyTagsResponse
    ListPolicyVersionsRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "PolicyArn", traits: {"smithy.api#required" => {}}))
    ListPolicyVersionsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    ListPolicyVersionsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsType, name: "MaxItems"))
    ListPolicyVersionsRequest.type = Types::ListPolicyVersionsRequest
    ListPolicyVersionsResponse.add_member(:versions, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocumentVersionListType, name: "Versions"))
    ListPolicyVersionsResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    ListPolicyVersionsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMarkerType, name: "Marker"))
    ListPolicyVersionsResponse.type = Types::ListPolicyVersionsResponse
    ListRolePoliciesRequest.add_member(:role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameType, name: "RoleName", traits: {"smithy.api#required" => {}}))
    ListRolePoliciesRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    ListRolePoliciesRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsType, name: "MaxItems"))
    ListRolePoliciesRequest.type = Types::ListRolePoliciesRequest
    ListRolePoliciesResponse.add_member(:policy_names, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyNameListType, name: "PolicyNames", traits: {"smithy.api#required" => {}}))
    ListRolePoliciesResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    ListRolePoliciesResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMarkerType, name: "Marker"))
    ListRolePoliciesResponse.type = Types::ListRolePoliciesResponse
    ListRoleTagsRequest.add_member(:role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameType, name: "RoleName", traits: {"smithy.api#required" => {}}))
    ListRoleTagsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    ListRoleTagsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsType, name: "MaxItems"))
    ListRoleTagsRequest.type = Types::ListRoleTagsRequest
    ListRoleTagsResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags", traits: {"smithy.api#required" => {}}))
    ListRoleTagsResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    ListRoleTagsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMarkerType, name: "Marker"))
    ListRoleTagsResponse.type = Types::ListRoleTagsResponse
    ListRolesRequest.add_member(:path_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: PathPrefixType, name: "PathPrefix"))
    ListRolesRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    ListRolesRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsType, name: "MaxItems"))
    ListRolesRequest.type = Types::ListRolesRequest
    ListRolesResponse.add_member(:roles, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleListType, name: "Roles", traits: {"smithy.api#required" => {}}))
    ListRolesResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    ListRolesResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMarkerType, name: "Marker"))
    ListRolesResponse.type = Types::ListRolesResponse
    ListSAMLProviderTagsRequest.add_member(:saml_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "SAMLProviderArn", traits: {"smithy.api#required" => {}}))
    ListSAMLProviderTagsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    ListSAMLProviderTagsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsType, name: "MaxItems"))
    ListSAMLProviderTagsRequest.type = Types::ListSAMLProviderTagsRequest
    ListSAMLProviderTagsResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags", traits: {"smithy.api#required" => {}}))
    ListSAMLProviderTagsResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    ListSAMLProviderTagsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMarkerType, name: "Marker"))
    ListSAMLProviderTagsResponse.type = Types::ListSAMLProviderTagsResponse
    ListSAMLProvidersRequest.type = Types::ListSAMLProvidersRequest
    ListSAMLProvidersResponse.add_member(:saml_provider_list, ::Smithy::Schema::Shapes::MemberShape.new(target: SAMLProviderListType, name: "SAMLProviderList"))
    ListSAMLProvidersResponse.type = Types::ListSAMLProvidersResponse
    ListSSHPublicKeysRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameType, name: "UserName"))
    ListSSHPublicKeysRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    ListSSHPublicKeysRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsType, name: "MaxItems"))
    ListSSHPublicKeysRequest.type = Types::ListSSHPublicKeysRequest
    ListSSHPublicKeysResponse.add_member(:ssh_public_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: SSHPublicKeyListType, name: "SSHPublicKeys"))
    ListSSHPublicKeysResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    ListSSHPublicKeysResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMarkerType, name: "Marker"))
    ListSSHPublicKeysResponse.type = Types::ListSSHPublicKeysResponse
    ListServerCertificateTagsRequest.add_member(:server_certificate_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerCertificateNameType, name: "ServerCertificateName", traits: {"smithy.api#required" => {}}))
    ListServerCertificateTagsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    ListServerCertificateTagsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsType, name: "MaxItems"))
    ListServerCertificateTagsRequest.type = Types::ListServerCertificateTagsRequest
    ListServerCertificateTagsResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags", traits: {"smithy.api#required" => {}}))
    ListServerCertificateTagsResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    ListServerCertificateTagsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMarkerType, name: "Marker"))
    ListServerCertificateTagsResponse.type = Types::ListServerCertificateTagsResponse
    ListServerCertificatesRequest.add_member(:path_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: PathPrefixType, name: "PathPrefix"))
    ListServerCertificatesRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    ListServerCertificatesRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsType, name: "MaxItems"))
    ListServerCertificatesRequest.type = Types::ListServerCertificatesRequest
    ListServerCertificatesResponse.add_member(:server_certificate_metadata_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerCertificateMetadataListType, name: "ServerCertificateMetadataList", traits: {"smithy.api#required" => {}}))
    ListServerCertificatesResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    ListServerCertificatesResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMarkerType, name: "Marker"))
    ListServerCertificatesResponse.type = Types::ListServerCertificatesResponse
    ListServiceSpecificCredentialsRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameType, name: "UserName"))
    ListServiceSpecificCredentialsRequest.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, name: "ServiceName"))
    ListServiceSpecificCredentialsRequest.add_member(:all_users, ::Smithy::Schema::Shapes::MemberShape.new(target: AllUsers, name: "AllUsers"))
    ListServiceSpecificCredentialsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    ListServiceSpecificCredentialsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsType, name: "MaxItems"))
    ListServiceSpecificCredentialsRequest.type = Types::ListServiceSpecificCredentialsRequest
    ListServiceSpecificCredentialsResponse.add_member(:service_specific_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceSpecificCredentialsListType, name: "ServiceSpecificCredentials"))
    ListServiceSpecificCredentialsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMarkerType, name: "Marker"))
    ListServiceSpecificCredentialsResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    ListServiceSpecificCredentialsResponse.type = Types::ListServiceSpecificCredentialsResponse
    ListSigningCertificatesRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExistingUserNameType, name: "UserName"))
    ListSigningCertificatesRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    ListSigningCertificatesRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsType, name: "MaxItems"))
    ListSigningCertificatesRequest.type = Types::ListSigningCertificatesRequest
    ListSigningCertificatesResponse.add_member(:certificates, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateListType, name: "Certificates", traits: {"smithy.api#required" => {}}))
    ListSigningCertificatesResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    ListSigningCertificatesResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMarkerType, name: "Marker"))
    ListSigningCertificatesResponse.type = Types::ListSigningCertificatesResponse
    ListUserPoliciesRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExistingUserNameType, name: "UserName", traits: {"smithy.api#required" => {}}))
    ListUserPoliciesRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    ListUserPoliciesRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsType, name: "MaxItems"))
    ListUserPoliciesRequest.type = Types::ListUserPoliciesRequest
    ListUserPoliciesResponse.add_member(:policy_names, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyNameListType, name: "PolicyNames", traits: {"smithy.api#required" => {}}))
    ListUserPoliciesResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    ListUserPoliciesResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMarkerType, name: "Marker"))
    ListUserPoliciesResponse.type = Types::ListUserPoliciesResponse
    ListUserTagsRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExistingUserNameType, name: "UserName", traits: {"smithy.api#required" => {}}))
    ListUserTagsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    ListUserTagsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsType, name: "MaxItems"))
    ListUserTagsRequest.type = Types::ListUserTagsRequest
    ListUserTagsResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags", traits: {"smithy.api#required" => {}}))
    ListUserTagsResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    ListUserTagsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMarkerType, name: "Marker"))
    ListUserTagsResponse.type = Types::ListUserTagsResponse
    ListUsersRequest.add_member(:path_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: PathPrefixType, name: "PathPrefix"))
    ListUsersRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    ListUsersRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsType, name: "MaxItems"))
    ListUsersRequest.type = Types::ListUsersRequest
    ListUsersResponse.add_member(:users, ::Smithy::Schema::Shapes::MemberShape.new(target: UserListType, name: "Users", traits: {"smithy.api#required" => {}}))
    ListUsersResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    ListUsersResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMarkerType, name: "Marker"))
    ListUsersResponse.type = Types::ListUsersResponse
    ListVirtualMFADevicesRequest.add_member(:assignment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssignmentStatusType, name: "AssignmentStatus"))
    ListVirtualMFADevicesRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    ListVirtualMFADevicesRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsType, name: "MaxItems"))
    ListVirtualMFADevicesRequest.type = Types::ListVirtualMFADevicesRequest
    ListVirtualMFADevicesResponse.add_member(:virtual_mfa_devices, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualMFADeviceListType, name: "VirtualMFADevices", traits: {"smithy.api#required" => {}}))
    ListVirtualMFADevicesResponse.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    ListVirtualMFADevicesResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMarkerType, name: "Marker"))
    ListVirtualMFADevicesResponse.type = Types::ListVirtualMFADevicesResponse
    LoginProfile.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameType, name: "UserName", traits: {"smithy.api#required" => {}}))
    LoginProfile.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "CreateDate", traits: {"smithy.api#required" => {}}))
    LoginProfile.add_member(:password_reset_required, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "PasswordResetRequired", traits: {"smithy.api#default" => false}))
    LoginProfile.type = Types::LoginProfile
    MFADevice.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameType, name: "UserName", traits: {"smithy.api#required" => {}}))
    MFADevice.add_member(:serial_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SerialNumberType, name: "SerialNumber", traits: {"smithy.api#required" => {}}))
    MFADevice.add_member(:enable_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "EnableDate", traits: {"smithy.api#required" => {}}))
    MFADevice.type = Types::MFADevice
    MalformedCertificateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MalformedCertificateMessage, name: "message"))
    MalformedCertificateException.type = Types::MalformedCertificateException
    MalformedPolicyDocumentException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MalformedPolicyDocumentMessage, name: "message"))
    MalformedPolicyDocumentException.type = Types::MalformedPolicyDocumentException
    ManagedPolicyDetail.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyNameType, name: "PolicyName"))
    ManagedPolicyDetail.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "PolicyId"))
    ManagedPolicyDetail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "Arn"))
    ManagedPolicyDetail.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyPathType, name: "Path"))
    ManagedPolicyDetail.add_member(:default_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyVersionIdType, name: "DefaultVersionId"))
    ManagedPolicyDetail.add_member(:attachment_count, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentCountType, name: "AttachmentCount"))
    ManagedPolicyDetail.add_member(:permissions_boundary_usage_count, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentCountType, name: "PermissionsBoundaryUsageCount"))
    ManagedPolicyDetail.add_member(:is_attachable, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsAttachable", traits: {"smithy.api#default" => false}))
    ManagedPolicyDetail.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDescriptionType, name: "Description"))
    ManagedPolicyDetail.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "CreateDate"))
    ManagedPolicyDetail.add_member(:update_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "UpdateDate"))
    ManagedPolicyDetail.add_member(:policy_version_list, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocumentVersionListType, name: "PolicyVersionList"))
    ManagedPolicyDetail.type = Types::ManagedPolicyDetail
    ManagedPolicyDetailListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedPolicyDetail, name: "member"))
    NoSuchEntityException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NoSuchEntityMessage, name: "message"))
    NoSuchEntityException.type = Types::NoSuchEntityException
    OpenIDConnectProviderListEntry.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "Arn"))
    OpenIDConnectProviderListEntry.type = Types::OpenIDConnectProviderListEntry
    OpenIDConnectProviderListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenIDConnectProviderListEntry, name: "member"))
    OpenIdIdpCommunicationErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenIdIdpCommunicationErrorExceptionMessage, name: "message"))
    OpenIdIdpCommunicationErrorException.type = Types::OpenIdIdpCommunicationErrorException
    OrganizationNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    OrganizationNotFoundException.type = Types::OrganizationNotFoundException
    OrganizationNotInAllFeaturesModeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    OrganizationNotInAllFeaturesModeException.type = Types::OrganizationNotInAllFeaturesModeException
    OrganizationsDecisionDetail.add_member(:allowed_by_organizations, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "AllowedByOrganizations", traits: {"smithy.api#default" => false}))
    OrganizationsDecisionDetail.type = Types::OrganizationsDecisionDetail
    PasswordPolicy.add_member(:minimum_password_length, ::Smithy::Schema::Shapes::MemberShape.new(target: MinimumPasswordLengthType, name: "MinimumPasswordLength"))
    PasswordPolicy.add_member(:require_symbols, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "RequireSymbols", traits: {"smithy.api#default" => false}))
    PasswordPolicy.add_member(:require_numbers, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "RequireNumbers", traits: {"smithy.api#default" => false}))
    PasswordPolicy.add_member(:require_uppercase_characters, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "RequireUppercaseCharacters", traits: {"smithy.api#default" => false}))
    PasswordPolicy.add_member(:require_lowercase_characters, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "RequireLowercaseCharacters", traits: {"smithy.api#default" => false}))
    PasswordPolicy.add_member(:allow_users_to_change_password, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "AllowUsersToChangePassword", traits: {"smithy.api#default" => false}))
    PasswordPolicy.add_member(:expire_passwords, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "ExpirePasswords", traits: {"smithy.api#default" => false}))
    PasswordPolicy.add_member(:max_password_age, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxPasswordAgeType, name: "MaxPasswordAge"))
    PasswordPolicy.add_member(:password_reuse_prevention, ::Smithy::Schema::Shapes::MemberShape.new(target: PasswordReusePreventionType, name: "PasswordReusePrevention"))
    PasswordPolicy.add_member(:hard_expiry, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObjectType, name: "HardExpiry"))
    PasswordPolicy.type = Types::PasswordPolicy
    PasswordPolicyViolationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: PasswordPolicyViolationMessage, name: "message"))
    PasswordPolicyViolationException.type = Types::PasswordPolicyViolationException
    PermissionsBoundaryAttachmentType.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Policy", traits: {"smithy.api#enumValue" => "PermissionsBoundaryPolicy"}))
    PermissionsBoundaryDecisionDetail.add_member(:allowed_by_permissions_boundary, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "AllowedByPermissionsBoundary", traits: {"smithy.api#default" => false}))
    PermissionsBoundaryDecisionDetail.type = Types::PermissionsBoundaryDecisionDetail
    Policy.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyNameType, name: "PolicyName"))
    Policy.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "PolicyId"))
    Policy.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "Arn"))
    Policy.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyPathType, name: "Path"))
    Policy.add_member(:default_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyVersionIdType, name: "DefaultVersionId"))
    Policy.add_member(:attachment_count, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentCountType, name: "AttachmentCount"))
    Policy.add_member(:permissions_boundary_usage_count, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentCountType, name: "PermissionsBoundaryUsageCount"))
    Policy.add_member(:is_attachable, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsAttachable", traits: {"smithy.api#default" => false}))
    Policy.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDescriptionType, name: "Description"))
    Policy.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "CreateDate"))
    Policy.add_member(:update_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "UpdateDate"))
    Policy.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags"))
    Policy.type = Types::Policy
    PolicyDetail.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyNameType, name: "PolicyName"))
    PolicyDetail.add_member(:policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocumentType, name: "PolicyDocument"))
    PolicyDetail.type = Types::PolicyDetail
    PolicyEvaluationDecisionType.add_member(:allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOWED", traits: {"smithy.api#enumValue" => "allowed"}))
    PolicyEvaluationDecisionType.add_member(:explicit_deny, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPLICIT_DENY", traits: {"smithy.api#enumValue" => "explicitDeny"}))
    PolicyEvaluationDecisionType.add_member(:implicit_deny, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPLICIT_DENY", traits: {"smithy.api#enumValue" => "implicitDeny"}))
    PolicyEvaluationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyEvaluationErrorMessage, name: "message"))
    PolicyEvaluationException.type = Types::PolicyEvaluationException
    PolicyGrantingServiceAccess.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyNameType, name: "PolicyName", traits: {"smithy.api#required" => {}}))
    PolicyGrantingServiceAccess.add_member(:policy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyType, name: "PolicyType", traits: {"smithy.api#required" => {}}))
    PolicyGrantingServiceAccess.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "PolicyArn"))
    PolicyGrantingServiceAccess.add_member(:entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyOwnerEntityType, name: "EntityType"))
    PolicyGrantingServiceAccess.add_member(:entity_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityNameType, name: "EntityName"))
    PolicyGrantingServiceAccess.type = Types::PolicyGrantingServiceAccess
    PolicyGroup.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupNameType, name: "GroupName"))
    PolicyGroup.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "GroupId"))
    PolicyGroup.type = Types::PolicyGroup
    PolicyGroupListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyGroup, name: "member"))
    PolicyNotAttachableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyNotAttachableMessage, name: "message"))
    PolicyNotAttachableException.type = Types::PolicyNotAttachableException
    PolicyRole.add_member(:role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameType, name: "RoleName"))
    PolicyRole.add_member(:role_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "RoleId"))
    PolicyRole.type = Types::PolicyRole
    PolicyRoleListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRole, name: "member"))
    PolicySourceType.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER", traits: {"smithy.api#enumValue" => "user"}))
    PolicySourceType.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GROUP", traits: {"smithy.api#enumValue" => "group"}))
    PolicySourceType.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLE", traits: {"smithy.api#enumValue" => "role"}))
    PolicySourceType.add_member(:aws_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_MANAGED", traits: {"smithy.api#enumValue" => "aws-managed"}))
    PolicySourceType.add_member(:user_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER_MANAGED", traits: {"smithy.api#enumValue" => "user-managed"}))
    PolicySourceType.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE", traits: {"smithy.api#enumValue" => "resource"}))
    PolicySourceType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "none"}))
    PolicyUsageType.add_member(:permissions_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PermissionsPolicy", traits: {"smithy.api#enumValue" => "PermissionsPolicy"}))
    PolicyUsageType.add_member(:permissions_boundary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PermissionsBoundary", traits: {"smithy.api#enumValue" => "PermissionsBoundary"}))
    PolicyUser.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameType, name: "UserName"))
    PolicyUser.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "UserId"))
    PolicyUser.type = Types::PolicyUser
    PolicyUserListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyUser, name: "member"))
    PolicyVersion.add_member(:document, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocumentType, name: "Document"))
    PolicyVersion.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyVersionIdType, name: "VersionId"))
    PolicyVersion.add_member(:is_default_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsDefaultVersion", traits: {"smithy.api#default" => false}))
    PolicyVersion.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "CreateDate"))
    PolicyVersion.type = Types::PolicyVersion
    Position.add_member(:line, ::Smithy::Schema::Shapes::MemberShape.new(target: LineNumber, name: "Line", traits: {"smithy.api#default" => 0}))
    Position.add_member(:column, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnNumber, name: "Column", traits: {"smithy.api#default" => 0}))
    Position.type = Types::Position
    PutGroupPolicyRequest.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupNameType, name: "GroupName", traits: {"smithy.api#required" => {}}))
    PutGroupPolicyRequest.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyNameType, name: "PolicyName", traits: {"smithy.api#required" => {}}))
    PutGroupPolicyRequest.add_member(:policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocumentType, name: "PolicyDocument", traits: {"smithy.api#required" => {}}))
    PutGroupPolicyRequest.type = Types::PutGroupPolicyRequest
    PutRolePermissionsBoundaryRequest.add_member(:role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameType, name: "RoleName", traits: {"smithy.api#required" => {}}))
    PutRolePermissionsBoundaryRequest.add_member(:permissions_boundary, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "PermissionsBoundary", traits: {"smithy.api#required" => {}}))
    PutRolePermissionsBoundaryRequest.type = Types::PutRolePermissionsBoundaryRequest
    PutRolePolicyRequest.add_member(:role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameType, name: "RoleName", traits: {"smithy.api#required" => {}}))
    PutRolePolicyRequest.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyNameType, name: "PolicyName", traits: {"smithy.api#required" => {}}))
    PutRolePolicyRequest.add_member(:policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocumentType, name: "PolicyDocument", traits: {"smithy.api#required" => {}}))
    PutRolePolicyRequest.type = Types::PutRolePolicyRequest
    PutUserPermissionsBoundaryRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameType, name: "UserName", traits: {"smithy.api#required" => {}}))
    PutUserPermissionsBoundaryRequest.add_member(:permissions_boundary, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "PermissionsBoundary", traits: {"smithy.api#required" => {}}))
    PutUserPermissionsBoundaryRequest.type = Types::PutUserPermissionsBoundaryRequest
    PutUserPolicyRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExistingUserNameType, name: "UserName", traits: {"smithy.api#required" => {}}))
    PutUserPolicyRequest.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyNameType, name: "PolicyName", traits: {"smithy.api#required" => {}}))
    PutUserPolicyRequest.add_member(:policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocumentType, name: "PolicyDocument", traits: {"smithy.api#required" => {}}))
    PutUserPolicyRequest.type = Types::PutUserPolicyRequest
    RemoveClientIDFromOpenIDConnectProviderRequest.add_member(:open_id_connect_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "OpenIDConnectProviderArn", traits: {"smithy.api#required" => {}}))
    RemoveClientIDFromOpenIDConnectProviderRequest.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIDType, name: "ClientID", traits: {"smithy.api#required" => {}}))
    RemoveClientIDFromOpenIDConnectProviderRequest.type = Types::RemoveClientIDFromOpenIDConnectProviderRequest
    RemoveRoleFromInstanceProfileRequest.add_member(:instance_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProfileNameType, name: "InstanceProfileName", traits: {"smithy.api#required" => {}}))
    RemoveRoleFromInstanceProfileRequest.add_member(:role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameType, name: "RoleName", traits: {"smithy.api#required" => {}}))
    RemoveRoleFromInstanceProfileRequest.type = Types::RemoveRoleFromInstanceProfileRequest
    RemoveUserFromGroupRequest.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupNameType, name: "GroupName", traits: {"smithy.api#required" => {}}))
    RemoveUserFromGroupRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExistingUserNameType, name: "UserName", traits: {"smithy.api#required" => {}}))
    RemoveUserFromGroupRequest.type = Types::RemoveUserFromGroupRequest
    ReportFormatType.add_member(:text_csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "text_csv", traits: {"smithy.api#enumValue" => "text/csv"}))
    ReportGenerationLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportGenerationLimitExceededMessage, name: "message"))
    ReportGenerationLimitExceededException.type = Types::ReportGenerationLimitExceededException
    ReportStateType.add_member(:started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTED", traits: {"smithy.api#enumValue" => "STARTED"}))
    ReportStateType.add_member(:inprogress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INPROGRESS", traits: {"smithy.api#enumValue" => "INPROGRESS"}))
    ReportStateType.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    ResetServiceSpecificCredentialRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameType, name: "UserName"))
    ResetServiceSpecificCredentialRequest.add_member(:service_specific_credential_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceSpecificCredentialId, name: "ServiceSpecificCredentialId", traits: {"smithy.api#required" => {}}))
    ResetServiceSpecificCredentialRequest.type = Types::ResetServiceSpecificCredentialRequest
    ResetServiceSpecificCredentialResponse.add_member(:service_specific_credential, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceSpecificCredential, name: "ServiceSpecificCredential"))
    ResetServiceSpecificCredentialResponse.type = Types::ResetServiceSpecificCredentialResponse
    ResourceNameListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameType, name: "member"))
    ResourceSpecificResult.add_member(:eval_resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameType, name: "EvalResourceName", traits: {"smithy.api#required" => {}}))
    ResourceSpecificResult.add_member(:eval_resource_decision, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyEvaluationDecisionType, name: "EvalResourceDecision", traits: {"smithy.api#required" => {}}))
    ResourceSpecificResult.add_member(:matched_statements, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementListType, name: "MatchedStatements"))
    ResourceSpecificResult.add_member(:missing_context_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextKeyNamesResultListType, name: "MissingContextValues"))
    ResourceSpecificResult.add_member(:eval_decision_details, ::Smithy::Schema::Shapes::MemberShape.new(target: EvalDecisionDetailsType, name: "EvalDecisionDetails"))
    ResourceSpecificResult.add_member(:permissions_boundary_decision_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionsBoundaryDecisionDetail, name: "PermissionsBoundaryDecisionDetail"))
    ResourceSpecificResult.type = Types::ResourceSpecificResult
    ResourceSpecificResultListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSpecificResult, name: "member"))
    ResyncMFADeviceRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExistingUserNameType, name: "UserName", traits: {"smithy.api#required" => {}}))
    ResyncMFADeviceRequest.add_member(:serial_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SerialNumberType, name: "SerialNumber", traits: {"smithy.api#required" => {}}))
    ResyncMFADeviceRequest.add_member(:authentication_code1, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationCodeType, name: "AuthenticationCode1", traits: {"smithy.api#required" => {}}))
    ResyncMFADeviceRequest.add_member(:authentication_code2, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationCodeType, name: "AuthenticationCode2", traits: {"smithy.api#required" => {}}))
    ResyncMFADeviceRequest.type = Types::ResyncMFADeviceRequest
    Role.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: PathType, name: "Path", traits: {"smithy.api#required" => {}}))
    Role.add_member(:role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameType, name: "RoleName", traits: {"smithy.api#required" => {}}))
    Role.add_member(:role_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "RoleId", traits: {"smithy.api#required" => {}}))
    Role.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "Arn", traits: {"smithy.api#required" => {}}))
    Role.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "CreateDate", traits: {"smithy.api#required" => {}}))
    Role.add_member(:assume_role_policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocumentType, name: "AssumeRolePolicyDocument"))
    Role.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleDescriptionType, name: "Description"))
    Role.add_member(:max_session_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleMaxSessionDurationType, name: "MaxSessionDuration"))
    Role.add_member(:permissions_boundary, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachedPermissionsBoundary, name: "PermissionsBoundary"))
    Role.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags"))
    Role.add_member(:role_last_used, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleLastUsed, name: "RoleLastUsed"))
    Role.type = Types::Role
    RoleDetail.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: PathType, name: "Path"))
    RoleDetail.add_member(:role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameType, name: "RoleName"))
    RoleDetail.add_member(:role_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "RoleId"))
    RoleDetail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "Arn"))
    RoleDetail.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "CreateDate"))
    RoleDetail.add_member(:assume_role_policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocumentType, name: "AssumeRolePolicyDocument"))
    RoleDetail.add_member(:instance_profile_list, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProfileListType, name: "InstanceProfileList"))
    RoleDetail.add_member(:role_policy_list, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDetailListType, name: "RolePolicyList"))
    RoleDetail.add_member(:attached_managed_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachedPoliciesListType, name: "AttachedManagedPolicies"))
    RoleDetail.add_member(:permissions_boundary, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachedPermissionsBoundary, name: "PermissionsBoundary"))
    RoleDetail.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags"))
    RoleDetail.add_member(:role_last_used, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleLastUsed, name: "RoleLastUsed"))
    RoleDetail.type = Types::RoleDetail
    RoleLastUsed.add_member(:last_used_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "LastUsedDate"))
    RoleLastUsed.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "Region"))
    RoleLastUsed.type = Types::RoleLastUsed
    RoleUsageListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleUsageType, name: "member"))
    RoleUsageType.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionNameType, name: "Region"))
    RoleUsageType.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnListType, name: "Resources"))
    RoleUsageType.type = Types::RoleUsageType
    SAMLPrivateKey.add_member(:key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateKeyIdType, name: "KeyId"))
    SAMLPrivateKey.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "Timestamp"))
    SAMLPrivateKey.type = Types::SAMLPrivateKey
    SAMLProviderListEntry.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "Arn"))
    SAMLProviderListEntry.add_member(:valid_until, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "ValidUntil"))
    SAMLProviderListEntry.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "CreateDate"))
    SAMLProviderListEntry.type = Types::SAMLProviderListEntry
    SAMLProviderListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SAMLProviderListEntry, name: "member"))
    SSHPublicKey.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameType, name: "UserName", traits: {"smithy.api#required" => {}}))
    SSHPublicKey.add_member(:ssh_public_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicKeyIdType, name: "SSHPublicKeyId", traits: {"smithy.api#required" => {}}))
    SSHPublicKey.add_member(:fingerprint, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicKeyFingerprintType, name: "Fingerprint", traits: {"smithy.api#required" => {}}))
    SSHPublicKey.add_member(:ssh_public_key_body, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicKeyMaterialType, name: "SSHPublicKeyBody", traits: {"smithy.api#required" => {}}))
    SSHPublicKey.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusType, name: "Status", traits: {"smithy.api#required" => {}}))
    SSHPublicKey.add_member(:upload_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "UploadDate"))
    SSHPublicKey.type = Types::SSHPublicKey
    SSHPublicKeyListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SSHPublicKeyMetadata, name: "member"))
    SSHPublicKeyMetadata.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameType, name: "UserName", traits: {"smithy.api#required" => {}}))
    SSHPublicKeyMetadata.add_member(:ssh_public_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicKeyIdType, name: "SSHPublicKeyId", traits: {"smithy.api#required" => {}}))
    SSHPublicKeyMetadata.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusType, name: "Status", traits: {"smithy.api#required" => {}}))
    SSHPublicKeyMetadata.add_member(:upload_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "UploadDate", traits: {"smithy.api#required" => {}}))
    SSHPublicKeyMetadata.type = Types::SSHPublicKeyMetadata
    ServerCertificate.add_member(:server_certificate_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerCertificateMetadata, name: "ServerCertificateMetadata", traits: {"smithy.api#required" => {}}))
    ServerCertificate.add_member(:certificate_body, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateBodyType, name: "CertificateBody", traits: {"smithy.api#required" => {}}))
    ServerCertificate.add_member(:certificate_chain, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateChainType, name: "CertificateChain"))
    ServerCertificate.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags"))
    ServerCertificate.type = Types::ServerCertificate
    ServerCertificateMetadata.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: PathType, name: "Path", traits: {"smithy.api#required" => {}}))
    ServerCertificateMetadata.add_member(:server_certificate_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerCertificateNameType, name: "ServerCertificateName", traits: {"smithy.api#required" => {}}))
    ServerCertificateMetadata.add_member(:server_certificate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "ServerCertificateId", traits: {"smithy.api#required" => {}}))
    ServerCertificateMetadata.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "Arn", traits: {"smithy.api#required" => {}}))
    ServerCertificateMetadata.add_member(:upload_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "UploadDate"))
    ServerCertificateMetadata.add_member(:expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "Expiration"))
    ServerCertificateMetadata.type = Types::ServerCertificateMetadata
    ServiceAccessNotEnabledException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    ServiceAccessNotEnabledException.type = Types::ServiceAccessNotEnabledException
    ServiceFailureException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceFailureExceptionMessage, name: "message"))
    ServiceFailureException.type = Types::ServiceFailureException
    ServiceLastAccessed.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNameType, name: "ServiceName", traits: {"smithy.api#required" => {}}))
    ServiceLastAccessed.add_member(:last_authenticated, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "LastAuthenticated"))
    ServiceLastAccessed.add_member(:service_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNamespaceType, name: "ServiceNamespace", traits: {"smithy.api#required" => {}}))
    ServiceLastAccessed.add_member(:last_authenticated_entity, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "LastAuthenticatedEntity"))
    ServiceLastAccessed.add_member(:last_authenticated_region, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "LastAuthenticatedRegion"))
    ServiceLastAccessed.add_member(:total_authenticated_entities, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerType, name: "TotalAuthenticatedEntities"))
    ServiceLastAccessed.add_member(:tracked_actions_last_accessed, ::Smithy::Schema::Shapes::MemberShape.new(target: TrackedActionsLastAccessed, name: "TrackedActionsLastAccessed"))
    ServiceLastAccessed.type = Types::ServiceLastAccessed
    ServiceNotSupportedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNotSupportedMessage, name: "message"))
    ServiceNotSupportedException.type = Types::ServiceNotSupportedException
    ServiceSpecificCredential.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "CreateDate", traits: {"smithy.api#required" => {}}))
    ServiceSpecificCredential.add_member(:expiration_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "ExpirationDate"))
    ServiceSpecificCredential.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, name: "ServiceName", traits: {"smithy.api#required" => {}}))
    ServiceSpecificCredential.add_member(:service_user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceUserName, name: "ServiceUserName", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => ""}))
    ServiceSpecificCredential.add_member(:service_password, ::Smithy::Schema::Shapes::MemberShape.new(target: ServicePassword, name: "ServicePassword", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => ""}))
    ServiceSpecificCredential.add_member(:service_credential_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCredentialAlias, name: "ServiceCredentialAlias"))
    ServiceSpecificCredential.add_member(:service_credential_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCredentialSecret, name: "ServiceCredentialSecret"))
    ServiceSpecificCredential.add_member(:service_specific_credential_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceSpecificCredentialId, name: "ServiceSpecificCredentialId", traits: {"smithy.api#required" => {}}))
    ServiceSpecificCredential.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameType, name: "UserName", traits: {"smithy.api#required" => {}}))
    ServiceSpecificCredential.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusType, name: "Status", traits: {"smithy.api#required" => {}}))
    ServiceSpecificCredential.type = Types::ServiceSpecificCredential
    ServiceSpecificCredentialMetadata.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameType, name: "UserName", traits: {"smithy.api#required" => {}}))
    ServiceSpecificCredentialMetadata.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusType, name: "Status", traits: {"smithy.api#required" => {}}))
    ServiceSpecificCredentialMetadata.add_member(:service_user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceUserName, name: "ServiceUserName", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => ""}))
    ServiceSpecificCredentialMetadata.add_member(:service_credential_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCredentialAlias, name: "ServiceCredentialAlias"))
    ServiceSpecificCredentialMetadata.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "CreateDate", traits: {"smithy.api#required" => {}}))
    ServiceSpecificCredentialMetadata.add_member(:expiration_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "ExpirationDate"))
    ServiceSpecificCredentialMetadata.add_member(:service_specific_credential_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceSpecificCredentialId, name: "ServiceSpecificCredentialId", traits: {"smithy.api#required" => {}}))
    ServiceSpecificCredentialMetadata.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, name: "ServiceName", traits: {"smithy.api#required" => {}}))
    ServiceSpecificCredentialMetadata.type = Types::ServiceSpecificCredentialMetadata
    ServiceSpecificCredentialsListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceSpecificCredentialMetadata, name: "member"))
    ServicesLastAccessed.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLastAccessed, name: "member"))
    SetDefaultPolicyVersionRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "PolicyArn", traits: {"smithy.api#required" => {}}))
    SetDefaultPolicyVersionRequest.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyVersionIdType, name: "VersionId", traits: {"smithy.api#required" => {}}))
    SetDefaultPolicyVersionRequest.type = Types::SetDefaultPolicyVersionRequest
    SetSecurityTokenServicePreferencesRequest.add_member(:global_endpoint_token_version, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalEndpointTokenVersion, name: "GlobalEndpointTokenVersion", traits: {"smithy.api#required" => {}}))
    SetSecurityTokenServicePreferencesRequest.type = Types::SetSecurityTokenServicePreferencesRequest
    SigningCertificate.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameType, name: "UserName", traits: {"smithy.api#required" => {}}))
    SigningCertificate.add_member(:certificate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateIdType, name: "CertificateId", traits: {"smithy.api#required" => {}}))
    SigningCertificate.add_member(:certificate_body, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateBodyType, name: "CertificateBody", traits: {"smithy.api#required" => {}}))
    SigningCertificate.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusType, name: "Status", traits: {"smithy.api#required" => {}}))
    SigningCertificate.add_member(:upload_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "UploadDate"))
    SigningCertificate.type = Types::SigningCertificate
    SimulateCustomPolicyOutput.add_member(:evaluation_results, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationResultsListType, name: "EvaluationResults"))
    SimulateCustomPolicyOutput.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    SimulateCustomPolicyOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMarkerType, name: "Marker"))
    SimulateCustomPolicyOutput.type = Types::SimulateCustomPolicyOutput
    SimulateCustomPolicyRequest.add_member(:policy_input_list, ::Smithy::Schema::Shapes::MemberShape.new(target: SimulationPolicyListType, name: "PolicyInputList", traits: {"smithy.api#required" => {}}))
    SimulateCustomPolicyRequest.add_member(:permissions_boundary_policy_input_list, ::Smithy::Schema::Shapes::MemberShape.new(target: SimulationPolicyListType, name: "PermissionsBoundaryPolicyInputList"))
    SimulateCustomPolicyRequest.add_member(:action_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionNameListType, name: "ActionNames", traits: {"smithy.api#required" => {}}))
    SimulateCustomPolicyRequest.add_member(:resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameListType, name: "ResourceArns"))
    SimulateCustomPolicyRequest.add_member(:resource_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocumentType, name: "ResourcePolicy"))
    SimulateCustomPolicyRequest.add_member(:resource_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameType, name: "ResourceOwner"))
    SimulateCustomPolicyRequest.add_member(:caller_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameType, name: "CallerArn"))
    SimulateCustomPolicyRequest.add_member(:context_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextEntryListType, name: "ContextEntries"))
    SimulateCustomPolicyRequest.add_member(:resource_handling_option, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceHandlingOptionType, name: "ResourceHandlingOption"))
    SimulateCustomPolicyRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsType, name: "MaxItems"))
    SimulateCustomPolicyRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    SimulateCustomPolicyRequest.type = Types::SimulateCustomPolicyRequest
    SimulatePrincipalPolicyOutput.add_member(:evaluation_results, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationResultsListType, name: "EvaluationResults"))
    SimulatePrincipalPolicyOutput.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "IsTruncated", traits: {"smithy.api#default" => false}))
    SimulatePrincipalPolicyOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseMarkerType, name: "Marker"))
    SimulatePrincipalPolicyOutput.type = Types::SimulatePrincipalPolicyOutput
    SimulatePrincipalPolicyRequest.add_member(:policy_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "PolicySourceArn", traits: {"smithy.api#required" => {}}))
    SimulatePrincipalPolicyRequest.add_member(:policy_input_list, ::Smithy::Schema::Shapes::MemberShape.new(target: SimulationPolicyListType, name: "PolicyInputList"))
    SimulatePrincipalPolicyRequest.add_member(:permissions_boundary_policy_input_list, ::Smithy::Schema::Shapes::MemberShape.new(target: SimulationPolicyListType, name: "PermissionsBoundaryPolicyInputList"))
    SimulatePrincipalPolicyRequest.add_member(:action_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionNameListType, name: "ActionNames", traits: {"smithy.api#required" => {}}))
    SimulatePrincipalPolicyRequest.add_member(:resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameListType, name: "ResourceArns"))
    SimulatePrincipalPolicyRequest.add_member(:resource_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocumentType, name: "ResourcePolicy"))
    SimulatePrincipalPolicyRequest.add_member(:resource_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameType, name: "ResourceOwner"))
    SimulatePrincipalPolicyRequest.add_member(:caller_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameType, name: "CallerArn"))
    SimulatePrincipalPolicyRequest.add_member(:context_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextEntryListType, name: "ContextEntries"))
    SimulatePrincipalPolicyRequest.add_member(:resource_handling_option, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceHandlingOptionType, name: "ResourceHandlingOption"))
    SimulatePrincipalPolicyRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItemsType, name: "MaxItems"))
    SimulatePrincipalPolicyRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkerType, name: "Marker"))
    SimulatePrincipalPolicyRequest.type = Types::SimulatePrincipalPolicyRequest
    SimulationPolicyListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocumentType, name: "member"))
    Statement.add_member(:source_policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyIdentifierType, name: "SourcePolicyId"))
    Statement.add_member(:source_policy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicySourceType, name: "SourcePolicyType"))
    Statement.add_member(:start_position, ::Smithy::Schema::Shapes::MemberShape.new(target: Position, name: "StartPosition"))
    Statement.add_member(:end_position, ::Smithy::Schema::Shapes::MemberShape.new(target: Position, name: "EndPosition"))
    Statement.type = Types::Statement
    StatementListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Statement, name: "member"))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyType, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValueType, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagInstanceProfileRequest.add_member(:instance_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProfileNameType, name: "InstanceProfileName", traits: {"smithy.api#required" => {}}))
    TagInstanceProfileRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagInstanceProfileRequest.type = Types::TagInstanceProfileRequest
    TagMFADeviceRequest.add_member(:serial_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SerialNumberType, name: "SerialNumber", traits: {"smithy.api#required" => {}}))
    TagMFADeviceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagMFADeviceRequest.type = Types::TagMFADeviceRequest
    TagOpenIDConnectProviderRequest.add_member(:open_id_connect_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "OpenIDConnectProviderArn", traits: {"smithy.api#required" => {}}))
    TagOpenIDConnectProviderRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagOpenIDConnectProviderRequest.type = Types::TagOpenIDConnectProviderRequest
    TagPolicyRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "PolicyArn", traits: {"smithy.api#required" => {}}))
    TagPolicyRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagPolicyRequest.type = Types::TagPolicyRequest
    TagRoleRequest.add_member(:role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameType, name: "RoleName", traits: {"smithy.api#required" => {}}))
    TagRoleRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagRoleRequest.type = Types::TagRoleRequest
    TagSAMLProviderRequest.add_member(:saml_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "SAMLProviderArn", traits: {"smithy.api#required" => {}}))
    TagSAMLProviderRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagSAMLProviderRequest.type = Types::TagSAMLProviderRequest
    TagServerCertificateRequest.add_member(:server_certificate_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerCertificateNameType, name: "ServerCertificateName", traits: {"smithy.api#required" => {}}))
    TagServerCertificateRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagServerCertificateRequest.type = Types::TagServerCertificateRequest
    TagUserRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExistingUserNameType, name: "UserName", traits: {"smithy.api#required" => {}}))
    TagUserRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagUserRequest.type = Types::TagUserRequest
    TrackedActionLastAccessed.add_member(:action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "ActionName"))
    TrackedActionLastAccessed.add_member(:last_accessed_entity, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "LastAccessedEntity"))
    TrackedActionLastAccessed.add_member(:last_accessed_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "LastAccessedTime"))
    TrackedActionLastAccessed.add_member(:last_accessed_region, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "LastAccessedRegion"))
    TrackedActionLastAccessed.type = Types::TrackedActionLastAccessed
    TrackedActionsLastAccessed.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TrackedActionLastAccessed, name: "member"))
    UnmodifiableEntityException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: UnmodifiableEntityMessage, name: "message"))
    UnmodifiableEntityException.type = Types::UnmodifiableEntityException
    UnrecognizedPublicKeyEncodingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: UnrecognizedPublicKeyEncodingMessage, name: "message"))
    UnrecognizedPublicKeyEncodingException.type = Types::UnrecognizedPublicKeyEncodingException
    UntagInstanceProfileRequest.add_member(:instance_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProfileNameType, name: "InstanceProfileName", traits: {"smithy.api#required" => {}}))
    UntagInstanceProfileRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyListType, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagInstanceProfileRequest.type = Types::UntagInstanceProfileRequest
    UntagMFADeviceRequest.add_member(:serial_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SerialNumberType, name: "SerialNumber", traits: {"smithy.api#required" => {}}))
    UntagMFADeviceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyListType, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagMFADeviceRequest.type = Types::UntagMFADeviceRequest
    UntagOpenIDConnectProviderRequest.add_member(:open_id_connect_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "OpenIDConnectProviderArn", traits: {"smithy.api#required" => {}}))
    UntagOpenIDConnectProviderRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyListType, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagOpenIDConnectProviderRequest.type = Types::UntagOpenIDConnectProviderRequest
    UntagPolicyRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "PolicyArn", traits: {"smithy.api#required" => {}}))
    UntagPolicyRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyListType, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagPolicyRequest.type = Types::UntagPolicyRequest
    UntagRoleRequest.add_member(:role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameType, name: "RoleName", traits: {"smithy.api#required" => {}}))
    UntagRoleRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyListType, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagRoleRequest.type = Types::UntagRoleRequest
    UntagSAMLProviderRequest.add_member(:saml_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "SAMLProviderArn", traits: {"smithy.api#required" => {}}))
    UntagSAMLProviderRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyListType, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagSAMLProviderRequest.type = Types::UntagSAMLProviderRequest
    UntagServerCertificateRequest.add_member(:server_certificate_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerCertificateNameType, name: "ServerCertificateName", traits: {"smithy.api#required" => {}}))
    UntagServerCertificateRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyListType, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagServerCertificateRequest.type = Types::UntagServerCertificateRequest
    UntagUserRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExistingUserNameType, name: "UserName", traits: {"smithy.api#required" => {}}))
    UntagUserRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyListType, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagUserRequest.type = Types::UntagUserRequest
    UpdateAccessKeyRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExistingUserNameType, name: "UserName"))
    UpdateAccessKeyRequest.add_member(:access_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessKeyIdType, name: "AccessKeyId", traits: {"smithy.api#required" => {}}))
    UpdateAccessKeyRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusType, name: "Status", traits: {"smithy.api#required" => {}}))
    UpdateAccessKeyRequest.type = Types::UpdateAccessKeyRequest
    UpdateAccountPasswordPolicyRequest.add_member(:minimum_password_length, ::Smithy::Schema::Shapes::MemberShape.new(target: MinimumPasswordLengthType, name: "MinimumPasswordLength"))
    UpdateAccountPasswordPolicyRequest.add_member(:require_symbols, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "RequireSymbols", traits: {"smithy.api#default" => false}))
    UpdateAccountPasswordPolicyRequest.add_member(:require_numbers, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "RequireNumbers", traits: {"smithy.api#default" => false}))
    UpdateAccountPasswordPolicyRequest.add_member(:require_uppercase_characters, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "RequireUppercaseCharacters", traits: {"smithy.api#default" => false}))
    UpdateAccountPasswordPolicyRequest.add_member(:require_lowercase_characters, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "RequireLowercaseCharacters", traits: {"smithy.api#default" => false}))
    UpdateAccountPasswordPolicyRequest.add_member(:allow_users_to_change_password, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "AllowUsersToChangePassword", traits: {"smithy.api#default" => false}))
    UpdateAccountPasswordPolicyRequest.add_member(:max_password_age, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxPasswordAgeType, name: "MaxPasswordAge"))
    UpdateAccountPasswordPolicyRequest.add_member(:password_reuse_prevention, ::Smithy::Schema::Shapes::MemberShape.new(target: PasswordReusePreventionType, name: "PasswordReusePrevention"))
    UpdateAccountPasswordPolicyRequest.add_member(:hard_expiry, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObjectType, name: "HardExpiry"))
    UpdateAccountPasswordPolicyRequest.type = Types::UpdateAccountPasswordPolicyRequest
    UpdateAssumeRolePolicyRequest.add_member(:role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameType, name: "RoleName", traits: {"smithy.api#required" => {}}))
    UpdateAssumeRolePolicyRequest.add_member(:policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocumentType, name: "PolicyDocument", traits: {"smithy.api#required" => {}}))
    UpdateAssumeRolePolicyRequest.type = Types::UpdateAssumeRolePolicyRequest
    UpdateGroupRequest.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupNameType, name: "GroupName", traits: {"smithy.api#required" => {}}))
    UpdateGroupRequest.add_member(:new_path, ::Smithy::Schema::Shapes::MemberShape.new(target: PathType, name: "NewPath"))
    UpdateGroupRequest.add_member(:new_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupNameType, name: "NewGroupName"))
    UpdateGroupRequest.type = Types::UpdateGroupRequest
    UpdateLoginProfileRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameType, name: "UserName", traits: {"smithy.api#required" => {}}))
    UpdateLoginProfileRequest.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: PasswordType, name: "Password"))
    UpdateLoginProfileRequest.add_member(:password_reset_required, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObjectType, name: "PasswordResetRequired"))
    UpdateLoginProfileRequest.type = Types::UpdateLoginProfileRequest
    UpdateOpenIDConnectProviderThumbprintRequest.add_member(:open_id_connect_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "OpenIDConnectProviderArn", traits: {"smithy.api#required" => {}}))
    UpdateOpenIDConnectProviderThumbprintRequest.add_member(:thumbprint_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ThumbprintListType, name: "ThumbprintList", traits: {"smithy.api#required" => {}}))
    UpdateOpenIDConnectProviderThumbprintRequest.type = Types::UpdateOpenIDConnectProviderThumbprintRequest
    UpdateRoleDescriptionRequest.add_member(:role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameType, name: "RoleName", traits: {"smithy.api#required" => {}}))
    UpdateRoleDescriptionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleDescriptionType, name: "Description", traits: {"smithy.api#required" => {}}))
    UpdateRoleDescriptionRequest.type = Types::UpdateRoleDescriptionRequest
    UpdateRoleDescriptionResponse.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: Role, name: "Role"))
    UpdateRoleDescriptionResponse.type = Types::UpdateRoleDescriptionResponse
    UpdateRoleRequest.add_member(:role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameType, name: "RoleName", traits: {"smithy.api#required" => {}}))
    UpdateRoleRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleDescriptionType, name: "Description"))
    UpdateRoleRequest.add_member(:max_session_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleMaxSessionDurationType, name: "MaxSessionDuration"))
    UpdateRoleRequest.type = Types::UpdateRoleRequest
    UpdateRoleResponse.type = Types::UpdateRoleResponse
    UpdateSAMLProviderRequest.add_member(:saml_metadata_document, ::Smithy::Schema::Shapes::MemberShape.new(target: SAMLMetadataDocumentType, name: "SAMLMetadataDocument"))
    UpdateSAMLProviderRequest.add_member(:saml_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "SAMLProviderArn", traits: {"smithy.api#required" => {}}))
    UpdateSAMLProviderRequest.add_member(:assertion_encryption_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AssertionEncryptionModeType, name: "AssertionEncryptionMode"))
    UpdateSAMLProviderRequest.add_member(:add_private_key, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateKeyType, name: "AddPrivateKey"))
    UpdateSAMLProviderRequest.add_member(:remove_private_key, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateKeyIdType, name: "RemovePrivateKey"))
    UpdateSAMLProviderRequest.type = Types::UpdateSAMLProviderRequest
    UpdateSAMLProviderResponse.add_member(:saml_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "SAMLProviderArn"))
    UpdateSAMLProviderResponse.type = Types::UpdateSAMLProviderResponse
    UpdateSSHPublicKeyRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameType, name: "UserName", traits: {"smithy.api#required" => {}}))
    UpdateSSHPublicKeyRequest.add_member(:ssh_public_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicKeyIdType, name: "SSHPublicKeyId", traits: {"smithy.api#required" => {}}))
    UpdateSSHPublicKeyRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusType, name: "Status", traits: {"smithy.api#required" => {}}))
    UpdateSSHPublicKeyRequest.type = Types::UpdateSSHPublicKeyRequest
    UpdateServerCertificateRequest.add_member(:server_certificate_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerCertificateNameType, name: "ServerCertificateName", traits: {"smithy.api#required" => {}}))
    UpdateServerCertificateRequest.add_member(:new_path, ::Smithy::Schema::Shapes::MemberShape.new(target: PathType, name: "NewPath"))
    UpdateServerCertificateRequest.add_member(:new_server_certificate_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerCertificateNameType, name: "NewServerCertificateName"))
    UpdateServerCertificateRequest.type = Types::UpdateServerCertificateRequest
    UpdateServiceSpecificCredentialRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameType, name: "UserName"))
    UpdateServiceSpecificCredentialRequest.add_member(:service_specific_credential_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceSpecificCredentialId, name: "ServiceSpecificCredentialId", traits: {"smithy.api#required" => {}}))
    UpdateServiceSpecificCredentialRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusType, name: "Status", traits: {"smithy.api#required" => {}}))
    UpdateServiceSpecificCredentialRequest.type = Types::UpdateServiceSpecificCredentialRequest
    UpdateSigningCertificateRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExistingUserNameType, name: "UserName"))
    UpdateSigningCertificateRequest.add_member(:certificate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateIdType, name: "CertificateId", traits: {"smithy.api#required" => {}}))
    UpdateSigningCertificateRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusType, name: "Status", traits: {"smithy.api#required" => {}}))
    UpdateSigningCertificateRequest.type = Types::UpdateSigningCertificateRequest
    UpdateUserRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExistingUserNameType, name: "UserName", traits: {"smithy.api#required" => {}}))
    UpdateUserRequest.add_member(:new_path, ::Smithy::Schema::Shapes::MemberShape.new(target: PathType, name: "NewPath"))
    UpdateUserRequest.add_member(:new_user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameType, name: "NewUserName"))
    UpdateUserRequest.type = Types::UpdateUserRequest
    UploadSSHPublicKeyRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameType, name: "UserName", traits: {"smithy.api#required" => {}}))
    UploadSSHPublicKeyRequest.add_member(:ssh_public_key_body, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicKeyMaterialType, name: "SSHPublicKeyBody", traits: {"smithy.api#required" => {}}))
    UploadSSHPublicKeyRequest.type = Types::UploadSSHPublicKeyRequest
    UploadSSHPublicKeyResponse.add_member(:ssh_public_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SSHPublicKey, name: "SSHPublicKey"))
    UploadSSHPublicKeyResponse.type = Types::UploadSSHPublicKeyResponse
    UploadServerCertificateRequest.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: PathType, name: "Path"))
    UploadServerCertificateRequest.add_member(:server_certificate_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerCertificateNameType, name: "ServerCertificateName", traits: {"smithy.api#required" => {}}))
    UploadServerCertificateRequest.add_member(:certificate_body, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateBodyType, name: "CertificateBody", traits: {"smithy.api#required" => {}}))
    UploadServerCertificateRequest.add_member(:private_key, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateKeyType, name: "PrivateKey", traits: {"smithy.api#required" => {}}))
    UploadServerCertificateRequest.add_member(:certificate_chain, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateChainType, name: "CertificateChain"))
    UploadServerCertificateRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags"))
    UploadServerCertificateRequest.type = Types::UploadServerCertificateRequest
    UploadServerCertificateResponse.add_member(:server_certificate_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerCertificateMetadata, name: "ServerCertificateMetadata"))
    UploadServerCertificateResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags"))
    UploadServerCertificateResponse.type = Types::UploadServerCertificateResponse
    UploadSigningCertificateRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExistingUserNameType, name: "UserName"))
    UploadSigningCertificateRequest.add_member(:certificate_body, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateBodyType, name: "CertificateBody", traits: {"smithy.api#required" => {}}))
    UploadSigningCertificateRequest.type = Types::UploadSigningCertificateRequest
    UploadSigningCertificateResponse.add_member(:certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningCertificate, name: "Certificate", traits: {"smithy.api#required" => {}}))
    UploadSigningCertificateResponse.type = Types::UploadSigningCertificateResponse
    User.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: PathType, name: "Path", traits: {"smithy.api#required" => {}}))
    User.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameType, name: "UserName", traits: {"smithy.api#required" => {}}))
    User.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "UserId", traits: {"smithy.api#required" => {}}))
    User.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "Arn", traits: {"smithy.api#required" => {}}))
    User.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "CreateDate", traits: {"smithy.api#required" => {}}))
    User.add_member(:password_last_used, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "PasswordLastUsed"))
    User.add_member(:permissions_boundary, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachedPermissionsBoundary, name: "PermissionsBoundary"))
    User.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags"))
    User.type = Types::User
    UserDetail.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: PathType, name: "Path"))
    UserDetail.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameType, name: "UserName"))
    UserDetail.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdType, name: "UserId"))
    UserDetail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "Arn"))
    UserDetail.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "CreateDate"))
    UserDetail.add_member(:user_policy_list, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDetailListType, name: "UserPolicyList"))
    UserDetail.add_member(:group_list, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupNameListType, name: "GroupList"))
    UserDetail.add_member(:attached_managed_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachedPoliciesListType, name: "AttachedManagedPolicies"))
    UserDetail.add_member(:permissions_boundary, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachedPermissionsBoundary, name: "PermissionsBoundary"))
    UserDetail.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags"))
    UserDetail.type = Types::UserDetail
    VirtualMFADevice.add_member(:serial_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SerialNumberType, name: "SerialNumber", traits: {"smithy.api#required" => {}}))
    VirtualMFADevice.add_member(:base32_string_seed, ::Smithy::Schema::Shapes::MemberShape.new(target: BootstrapDatum, name: "Base32StringSeed"))
    VirtualMFADevice.add_member(:qr_code_png, ::Smithy::Schema::Shapes::MemberShape.new(target: BootstrapDatum, name: "QRCodePNG"))
    VirtualMFADevice.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: User, name: "User"))
    VirtualMFADevice.add_member(:enable_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "EnableDate"))
    VirtualMFADevice.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListType, name: "Tags"))
    VirtualMFADevice.type = Types::VirtualMFADevice
    AccessKeyMetadataListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessKeyMetadata, name: "member"))
    AccountAliasListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAliasType, name: "member"))
    AssertionEncryptionModeType.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Required", traits: {"smithy.api#enumValue" => "Required"}))
    AssertionEncryptionModeType.add_member(:allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Allowed", traits: {"smithy.api#enumValue" => "Allowed"}))
    AssignmentStatusType.add_member(:assigned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Assigned", traits: {"smithy.api#enumValue" => "Assigned"}))
    AssignmentStatusType.add_member(:unassigned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Unassigned", traits: {"smithy.api#enumValue" => "Unassigned"}))
    AssignmentStatusType.add_member(:any, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Any", traits: {"smithy.api#enumValue" => "Any"}))
    AttachedPoliciesListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachedPolicy, name: "member"))
    CertificateListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningCertificate, name: "member"))
    ClientIDListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIDType, name: "member"))
    EncodingType.add_member(:ssh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SSH", traits: {"smithy.api#enumValue" => "SSH"}))
    EncodingType.add_member(:pem, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PEM", traits: {"smithy.api#enumValue" => "PEM"}))
    EntityDetailsListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDetails, name: "member"))
    EntityListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityType, name: "member"))
    GlobalEndpointTokenVersion.add_member(:v1_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "v1Token", traits: {"smithy.api#enumValue" => "v1Token"}))
    GlobalEndpointTokenVersion.add_member(:v2_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "v2Token", traits: {"smithy.api#enumValue" => "v2Token"}))
    GroupDetailListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupDetail, name: "member"))
    GroupListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Group, name: "member"))
    GroupNameListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupNameType, name: "member"))
    InstanceProfileListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProfile, name: "member"))
    JobStatusType.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    JobStatusType.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    JobStatusType.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ListPolicyGrantingServiceAccessResponseListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListPoliciesGrantingServiceAccessEntry, name: "member"))
    MfaDeviceListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MFADevice, name: "member"))
    PolicyDetailListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDetail, name: "member"))
    PolicyDocumentVersionListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyVersion, name: "member"))
    PolicyGrantingServiceAccessListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyGrantingServiceAccess, name: "member"))
    PolicyListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "member"))
    PolicyNameListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyNameType, name: "member"))
    PolicyOwnerEntityType.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER", traits: {"smithy.api#enumValue" => "USER"}))
    PolicyOwnerEntityType.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLE", traits: {"smithy.api#enumValue" => "ROLE"}))
    PolicyOwnerEntityType.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GROUP", traits: {"smithy.api#enumValue" => "GROUP"}))
    PolicyScopeType.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "All", traits: {"smithy.api#enumValue" => "All"}))
    PolicyScopeType.add_member(:aws, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS", traits: {"smithy.api#enumValue" => "AWS"}))
    PolicyScopeType.add_member(:local, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Local", traits: {"smithy.api#enumValue" => "Local"}))
    PolicyType.add_member(:inline, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INLINE", traits: {"smithy.api#enumValue" => "INLINE"}))
    PolicyType.add_member(:managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANAGED", traits: {"smithy.api#enumValue" => "MANAGED"}))
    PrivateKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SAMLPrivateKey, name: "member"))
    RoleDetailListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleDetail, name: "member"))
    RoleListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Role, name: "member"))
    ServerCertificateMetadataListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerCertificateMetadata, name: "member"))
    ServiceNamespaceListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNamespaceType, name: "member"))
    SortKeyType.add_member(:service_namespace_ascending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_NAMESPACE_ASCENDING", traits: {"smithy.api#enumValue" => "SERVICE_NAMESPACE_ASCENDING"}))
    SortKeyType.add_member(:service_namespace_descending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_NAMESPACE_DESCENDING", traits: {"smithy.api#enumValue" => "SERVICE_NAMESPACE_DESCENDING"}))
    SortKeyType.add_member(:last_authenticated_time_ascending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAST_AUTHENTICATED_TIME_ASCENDING", traits: {"smithy.api#enumValue" => "LAST_AUTHENTICATED_TIME_ASCENDING"}))
    SortKeyType.add_member(:last_authenticated_time_descending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAST_AUTHENTICATED_TIME_DESCENDING", traits: {"smithy.api#enumValue" => "LAST_AUTHENTICATED_TIME_DESCENDING"}))
    StatusType.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Active", traits: {"smithy.api#enumValue" => "Active"}))
    StatusType.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Inactive", traits: {"smithy.api#enumValue" => "Inactive"}))
    StatusType.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Expired", traits: {"smithy.api#enumValue" => "Expired"}))
    SummaryKeyType.add_member(:users, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Users", traits: {"smithy.api#enumValue" => "Users"}))
    SummaryKeyType.add_member(:users_quota, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UsersQuota", traits: {"smithy.api#enumValue" => "UsersQuota"}))
    SummaryKeyType.add_member(:groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Groups", traits: {"smithy.api#enumValue" => "Groups"}))
    SummaryKeyType.add_member(:groups_quota, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GroupsQuota", traits: {"smithy.api#enumValue" => "GroupsQuota"}))
    SummaryKeyType.add_member(:server_certificates, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ServerCertificates", traits: {"smithy.api#enumValue" => "ServerCertificates"}))
    SummaryKeyType.add_member(:server_certificates_quota, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ServerCertificatesQuota", traits: {"smithy.api#enumValue" => "ServerCertificatesQuota"}))
    SummaryKeyType.add_member(:user_policy_size_quota, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UserPolicySizeQuota", traits: {"smithy.api#enumValue" => "UserPolicySizeQuota"}))
    SummaryKeyType.add_member(:group_policy_size_quota, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GroupPolicySizeQuota", traits: {"smithy.api#enumValue" => "GroupPolicySizeQuota"}))
    SummaryKeyType.add_member(:groups_per_user_quota, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GroupsPerUserQuota", traits: {"smithy.api#enumValue" => "GroupsPerUserQuota"}))
    SummaryKeyType.add_member(:signing_certificates_per_user_quota, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SigningCertificatesPerUserQuota", traits: {"smithy.api#enumValue" => "SigningCertificatesPerUserQuota"}))
    SummaryKeyType.add_member(:access_keys_per_user_quota, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AccessKeysPerUserQuota", traits: {"smithy.api#enumValue" => "AccessKeysPerUserQuota"}))
    SummaryKeyType.add_member(:mfa_devices, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MFADevices", traits: {"smithy.api#enumValue" => "MFADevices"}))
    SummaryKeyType.add_member(:mfa_devices_in_use, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MFADevicesInUse", traits: {"smithy.api#enumValue" => "MFADevicesInUse"}))
    SummaryKeyType.add_member(:account_mfa_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AccountMFAEnabled", traits: {"smithy.api#enumValue" => "AccountMFAEnabled"}))
    SummaryKeyType.add_member(:account_access_keys_present, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AccountAccessKeysPresent", traits: {"smithy.api#enumValue" => "AccountAccessKeysPresent"}))
    SummaryKeyType.add_member(:account_password_present, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AccountPasswordPresent", traits: {"smithy.api#enumValue" => "AccountPasswordPresent"}))
    SummaryKeyType.add_member(:account_signing_certificates_present, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AccountSigningCertificatesPresent", traits: {"smithy.api#enumValue" => "AccountSigningCertificatesPresent"}))
    SummaryKeyType.add_member(:attached_policies_per_group_quota, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AttachedPoliciesPerGroupQuota", traits: {"smithy.api#enumValue" => "AttachedPoliciesPerGroupQuota"}))
    SummaryKeyType.add_member(:attached_policies_per_role_quota, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AttachedPoliciesPerRoleQuota", traits: {"smithy.api#enumValue" => "AttachedPoliciesPerRoleQuota"}))
    SummaryKeyType.add_member(:attached_policies_per_user_quota, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AttachedPoliciesPerUserQuota", traits: {"smithy.api#enumValue" => "AttachedPoliciesPerUserQuota"}))
    SummaryKeyType.add_member(:policies, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Policies", traits: {"smithy.api#enumValue" => "Policies"}))
    SummaryKeyType.add_member(:policies_quota, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PoliciesQuota", traits: {"smithy.api#enumValue" => "PoliciesQuota"}))
    SummaryKeyType.add_member(:policy_size_quota, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PolicySizeQuota", traits: {"smithy.api#enumValue" => "PolicySizeQuota"}))
    SummaryKeyType.add_member(:policy_versions_in_use, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PolicyVersionsInUse", traits: {"smithy.api#enumValue" => "PolicyVersionsInUse"}))
    SummaryKeyType.add_member(:policy_versions_in_use_quota, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PolicyVersionsInUseQuota", traits: {"smithy.api#enumValue" => "PolicyVersionsInUseQuota"}))
    SummaryKeyType.add_member(:versions_per_policy_quota, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VersionsPerPolicyQuota", traits: {"smithy.api#enumValue" => "VersionsPerPolicyQuota"}))
    SummaryKeyType.add_member(:global_endpoint_token_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GlobalEndpointTokenVersion", traits: {"smithy.api#enumValue" => "GlobalEndpointTokenVersion"}))
    SummaryMapType.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: SummaryKeyType, name: "key"))
    SummaryMapType.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SummaryValueType, name: "value"))
    TagKeyListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyType, name: "member"))
    TagListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    ThumbprintListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ThumbprintType, name: "member"))
    UserDetailListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UserDetail, name: "member"))
    UserListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: User, name: "member"))
    VirtualMFADeviceListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualMFADevice, name: "member"))

    AWSIdentityManagementV20100508 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.iam#AWSIdentityManagementV20100508"
      service.name = "AWSIdentityManagementV20100508"
      service.version = "2010-05-08"
      service.traits = {"aws.api#service" => {"sdkId" => "IAM", "arnNamespace" => "iam", "cloudFormationName" => "IAM", "cloudTrailEventSource" => "iam.amazonaws.com", "endpointPrefix" => "iam"}, "aws.auth#sigv4" => {"name" => "iam"}, "aws.protocols#awsQuery" => {}, "smithy.api#title" => "AWS Identity and Access Management", "smithy.api#xmlNamespace" => {"uri" => "https://iam.amazonaws.com/doc/2010-05-08/"}}
      service.add_operation(:add_client_id_to_open_id_connect_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#AddClientIDToOpenIDConnectProvider"
        operation.name = "AddClientIDToOpenIDConnectProvider"
        operation.input = AddClientIDToOpenIDConnectProviderRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:add_role_to_instance_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#AddRoleToInstanceProfile"
        operation.name = "AddRoleToInstanceProfile"
        operation.input = AddRoleToInstanceProfileRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << EntityAlreadyExistsException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.errors << UnmodifiableEntityException
        operation.traits = {}
      end)
      service.add_operation(:add_user_to_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#AddUserToGroup"
        operation.name = "AddUserToGroup"
        operation.input = AddUserToGroupRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:attach_group_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#AttachGroupPolicy"
        operation.name = "AttachGroupPolicy"
        operation.input = AttachGroupPolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << PolicyNotAttachableException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:attach_role_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#AttachRolePolicy"
        operation.name = "AttachRolePolicy"
        operation.input = AttachRolePolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << PolicyNotAttachableException
        operation.errors << ServiceFailureException
        operation.errors << UnmodifiableEntityException
        operation.traits = {}
      end)
      service.add_operation(:attach_user_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#AttachUserPolicy"
        operation.name = "AttachUserPolicy"
        operation.input = AttachUserPolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << PolicyNotAttachableException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:change_password, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#ChangePassword"
        operation.name = "ChangePassword"
        operation.input = ChangePasswordRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << EntityTemporarilyUnmodifiableException
        operation.errors << InvalidUserTypeException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << PasswordPolicyViolationException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:create_access_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#CreateAccessKey"
        operation.name = "CreateAccessKey"
        operation.input = CreateAccessKeyRequest
        operation.output = CreateAccessKeyResponse
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:create_account_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#CreateAccountAlias"
        operation.name = "CreateAccountAlias"
        operation.input = CreateAccountAliasRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << EntityAlreadyExistsException
        operation.errors << LimitExceededException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:create_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#CreateGroup"
        operation.name = "CreateGroup"
        operation.input = CreateGroupRequest
        operation.output = CreateGroupResponse
        operation.errors << EntityAlreadyExistsException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:create_instance_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#CreateInstanceProfile"
        operation.name = "CreateInstanceProfile"
        operation.input = CreateInstanceProfileRequest
        operation.output = CreateInstanceProfileResponse
        operation.errors << ConcurrentModificationException
        operation.errors << EntityAlreadyExistsException
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:create_login_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#CreateLoginProfile"
        operation.name = "CreateLoginProfile"
        operation.input = CreateLoginProfileRequest
        operation.output = CreateLoginProfileResponse
        operation.errors << EntityAlreadyExistsException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << PasswordPolicyViolationException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:create_open_id_connect_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#CreateOpenIDConnectProvider"
        operation.name = "CreateOpenIDConnectProvider"
        operation.input = CreateOpenIDConnectProviderRequest
        operation.output = CreateOpenIDConnectProviderResponse
        operation.errors << ConcurrentModificationException
        operation.errors << EntityAlreadyExistsException
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << OpenIdIdpCommunicationErrorException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:create_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#CreatePolicy"
        operation.name = "CreatePolicy"
        operation.input = CreatePolicyRequest
        operation.output = CreatePolicyResponse
        operation.errors << ConcurrentModificationException
        operation.errors << EntityAlreadyExistsException
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << MalformedPolicyDocumentException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:create_policy_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#CreatePolicyVersion"
        operation.name = "CreatePolicyVersion"
        operation.input = CreatePolicyVersionRequest
        operation.output = CreatePolicyVersionResponse
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << MalformedPolicyDocumentException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:create_role, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#CreateRole"
        operation.name = "CreateRole"
        operation.input = CreateRoleRequest
        operation.output = CreateRoleResponse
        operation.errors << ConcurrentModificationException
        operation.errors << EntityAlreadyExistsException
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << MalformedPolicyDocumentException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:create_saml_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#CreateSAMLProvider"
        operation.name = "CreateSAMLProvider"
        operation.input = CreateSAMLProviderRequest
        operation.output = CreateSAMLProviderResponse
        operation.errors << ConcurrentModificationException
        operation.errors << EntityAlreadyExistsException
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:create_service_linked_role, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#CreateServiceLinkedRole"
        operation.name = "CreateServiceLinkedRole"
        operation.input = CreateServiceLinkedRoleRequest
        operation.output = CreateServiceLinkedRoleResponse
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:create_service_specific_credential, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#CreateServiceSpecificCredential"
        operation.name = "CreateServiceSpecificCredential"
        operation.input = CreateServiceSpecificCredentialRequest
        operation.output = CreateServiceSpecificCredentialResponse
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceNotSupportedException
        operation.traits = {}
      end)
      service.add_operation(:create_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#CreateUser"
        operation.name = "CreateUser"
        operation.input = CreateUserRequest
        operation.output = CreateUserResponse
        operation.errors << ConcurrentModificationException
        operation.errors << EntityAlreadyExistsException
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:create_virtual_mfa_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#CreateVirtualMFADevice"
        operation.name = "CreateVirtualMFADevice"
        operation.input = CreateVirtualMFADeviceRequest
        operation.output = CreateVirtualMFADeviceResponse
        operation.errors << ConcurrentModificationException
        operation.errors << EntityAlreadyExistsException
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:deactivate_mfa_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#DeactivateMFADevice"
        operation.name = "DeactivateMFADevice"
        operation.input = DeactivateMFADeviceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << EntityTemporarilyUnmodifiableException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:delete_access_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#DeleteAccessKey"
        operation.name = "DeleteAccessKey"
        operation.input = DeleteAccessKeyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:delete_account_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#DeleteAccountAlias"
        operation.name = "DeleteAccountAlias"
        operation.input = DeleteAccountAliasRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:delete_account_password_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#DeleteAccountPasswordPolicy"
        operation.name = "DeleteAccountPasswordPolicy"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:delete_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#DeleteGroup"
        operation.name = "DeleteGroup"
        operation.input = DeleteGroupRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << DeleteConflictException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:delete_group_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#DeleteGroupPolicy"
        operation.name = "DeleteGroupPolicy"
        operation.input = DeleteGroupPolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:delete_instance_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#DeleteInstanceProfile"
        operation.name = "DeleteInstanceProfile"
        operation.input = DeleteInstanceProfileRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << DeleteConflictException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:delete_login_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#DeleteLoginProfile"
        operation.name = "DeleteLoginProfile"
        operation.input = DeleteLoginProfileRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << EntityTemporarilyUnmodifiableException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:delete_open_id_connect_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#DeleteOpenIDConnectProvider"
        operation.name = "DeleteOpenIDConnectProvider"
        operation.input = DeleteOpenIDConnectProviderRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:delete_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#DeletePolicy"
        operation.name = "DeletePolicy"
        operation.input = DeletePolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << DeleteConflictException
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:delete_policy_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#DeletePolicyVersion"
        operation.name = "DeletePolicyVersion"
        operation.input = DeletePolicyVersionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << DeleteConflictException
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:delete_role, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#DeleteRole"
        operation.name = "DeleteRole"
        operation.input = DeleteRoleRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << DeleteConflictException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.errors << UnmodifiableEntityException
        operation.traits = {}
      end)
      service.add_operation(:delete_role_permissions_boundary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#DeleteRolePermissionsBoundary"
        operation.name = "DeleteRolePermissionsBoundary"
        operation.input = DeleteRolePermissionsBoundaryRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.errors << UnmodifiableEntityException
        operation.traits = {}
      end)
      service.add_operation(:delete_role_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#DeleteRolePolicy"
        operation.name = "DeleteRolePolicy"
        operation.input = DeleteRolePolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.errors << UnmodifiableEntityException
        operation.traits = {}
      end)
      service.add_operation(:delete_saml_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#DeleteSAMLProvider"
        operation.name = "DeleteSAMLProvider"
        operation.input = DeleteSAMLProviderRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:delete_ssh_public_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#DeleteSSHPublicKey"
        operation.name = "DeleteSSHPublicKey"
        operation.input = DeleteSSHPublicKeyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << NoSuchEntityException
        operation.traits = {}
      end)
      service.add_operation(:delete_server_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#DeleteServerCertificate"
        operation.name = "DeleteServerCertificate"
        operation.input = DeleteServerCertificateRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << DeleteConflictException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:delete_service_linked_role, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#DeleteServiceLinkedRole"
        operation.name = "DeleteServiceLinkedRole"
        operation.input = DeleteServiceLinkedRoleRequest
        operation.output = DeleteServiceLinkedRoleResponse
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:delete_service_specific_credential, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#DeleteServiceSpecificCredential"
        operation.name = "DeleteServiceSpecificCredential"
        operation.input = DeleteServiceSpecificCredentialRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << NoSuchEntityException
        operation.traits = {}
      end)
      service.add_operation(:delete_signing_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#DeleteSigningCertificate"
        operation.name = "DeleteSigningCertificate"
        operation.input = DeleteSigningCertificateRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:delete_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#DeleteUser"
        operation.name = "DeleteUser"
        operation.input = DeleteUserRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << DeleteConflictException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:delete_user_permissions_boundary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#DeleteUserPermissionsBoundary"
        operation.name = "DeleteUserPermissionsBoundary"
        operation.input = DeleteUserPermissionsBoundaryRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:delete_user_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#DeleteUserPolicy"
        operation.name = "DeleteUserPolicy"
        operation.input = DeleteUserPolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:delete_virtual_mfa_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#DeleteVirtualMFADevice"
        operation.name = "DeleteVirtualMFADevice"
        operation.input = DeleteVirtualMFADeviceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << DeleteConflictException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:detach_group_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#DetachGroupPolicy"
        operation.name = "DetachGroupPolicy"
        operation.input = DetachGroupPolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:detach_role_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#DetachRolePolicy"
        operation.name = "DetachRolePolicy"
        operation.input = DetachRolePolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.errors << UnmodifiableEntityException
        operation.traits = {}
      end)
      service.add_operation(:detach_user_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#DetachUserPolicy"
        operation.name = "DetachUserPolicy"
        operation.input = DetachUserPolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:disable_organizations_root_credentials_management, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#DisableOrganizationsRootCredentialsManagement"
        operation.name = "DisableOrganizationsRootCredentialsManagement"
        operation.input = DisableOrganizationsRootCredentialsManagementRequest
        operation.output = DisableOrganizationsRootCredentialsManagementResponse
        operation.errors << AccountNotManagementOrDelegatedAdministratorException
        operation.errors << OrganizationNotFoundException
        operation.errors << OrganizationNotInAllFeaturesModeException
        operation.errors << ServiceAccessNotEnabledException
        operation.traits = {}
      end)
      service.add_operation(:disable_organizations_root_sessions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#DisableOrganizationsRootSessions"
        operation.name = "DisableOrganizationsRootSessions"
        operation.input = DisableOrganizationsRootSessionsRequest
        operation.output = DisableOrganizationsRootSessionsResponse
        operation.errors << AccountNotManagementOrDelegatedAdministratorException
        operation.errors << OrganizationNotFoundException
        operation.errors << OrganizationNotInAllFeaturesModeException
        operation.errors << ServiceAccessNotEnabledException
        operation.traits = {}
      end)
      service.add_operation(:enable_mfa_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#EnableMFADevice"
        operation.name = "EnableMFADevice"
        operation.input = EnableMFADeviceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << EntityAlreadyExistsException
        operation.errors << EntityTemporarilyUnmodifiableException
        operation.errors << InvalidAuthenticationCodeException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:enable_organizations_root_credentials_management, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#EnableOrganizationsRootCredentialsManagement"
        operation.name = "EnableOrganizationsRootCredentialsManagement"
        operation.input = EnableOrganizationsRootCredentialsManagementRequest
        operation.output = EnableOrganizationsRootCredentialsManagementResponse
        operation.errors << AccountNotManagementOrDelegatedAdministratorException
        operation.errors << CallerIsNotManagementAccountException
        operation.errors << OrganizationNotFoundException
        operation.errors << OrganizationNotInAllFeaturesModeException
        operation.errors << ServiceAccessNotEnabledException
        operation.traits = {}
      end)
      service.add_operation(:enable_organizations_root_sessions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#EnableOrganizationsRootSessions"
        operation.name = "EnableOrganizationsRootSessions"
        operation.input = EnableOrganizationsRootSessionsRequest
        operation.output = EnableOrganizationsRootSessionsResponse
        operation.errors << AccountNotManagementOrDelegatedAdministratorException
        operation.errors << CallerIsNotManagementAccountException
        operation.errors << OrganizationNotFoundException
        operation.errors << OrganizationNotInAllFeaturesModeException
        operation.errors << ServiceAccessNotEnabledException
        operation.traits = {}
      end)
      service.add_operation(:generate_credential_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#GenerateCredentialReport"
        operation.name = "GenerateCredentialReport"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = GenerateCredentialReportResponse
        operation.errors << LimitExceededException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:generate_organizations_access_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#GenerateOrganizationsAccessReport"
        operation.name = "GenerateOrganizationsAccessReport"
        operation.input = GenerateOrganizationsAccessReportRequest
        operation.output = GenerateOrganizationsAccessReportResponse
        operation.errors << ReportGenerationLimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:generate_service_last_accessed_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#GenerateServiceLastAccessedDetails"
        operation.name = "GenerateServiceLastAccessedDetails"
        operation.input = GenerateServiceLastAccessedDetailsRequest
        operation.output = GenerateServiceLastAccessedDetailsResponse
        operation.errors << InvalidInputException
        operation.errors << NoSuchEntityException
        operation.traits = {}
      end)
      service.add_operation(:get_access_key_last_used, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#GetAccessKeyLastUsed"
        operation.name = "GetAccessKeyLastUsed"
        operation.input = GetAccessKeyLastUsedRequest
        operation.output = GetAccessKeyLastUsedResponse
        operation.traits = {}
      end)
      service.add_operation(:get_account_authorization_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#GetAccountAuthorizationDetails"
        operation.name = "GetAccountAuthorizationDetails"
        operation.input = GetAccountAuthorizationDetailsRequest
        operation.output = GetAccountAuthorizationDetailsResponse
        operation.errors << ServiceFailureException
        operation.traits = {}
        operation[:paginator] = Paginators::GetAccountAuthorizationDetails.new
      end)
      service.add_operation(:get_account_password_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#GetAccountPasswordPolicy"
        operation.name = "GetAccountPasswordPolicy"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = GetAccountPasswordPolicyResponse
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:get_account_summary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#GetAccountSummary"
        operation.name = "GetAccountSummary"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = GetAccountSummaryResponse
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:get_context_keys_for_custom_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#GetContextKeysForCustomPolicy"
        operation.name = "GetContextKeysForCustomPolicy"
        operation.input = GetContextKeysForCustomPolicyRequest
        operation.output = GetContextKeysForCustomPolicyOutput
        operation.errors << InvalidInputException
        operation.traits = {}
      end)
      service.add_operation(:get_context_keys_for_principal_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#GetContextKeysForPrincipalPolicy"
        operation.name = "GetContextKeysForPrincipalPolicy"
        operation.input = GetContextKeysForPrincipalPolicyRequest
        operation.output = GetContextKeysForPrincipalPolicyOutput
        operation.errors << InvalidInputException
        operation.errors << NoSuchEntityException
        operation.traits = {}
      end)
      service.add_operation(:get_credential_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#GetCredentialReport"
        operation.name = "GetCredentialReport"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = GetCredentialReportResponse
        operation.errors << CredentialReportExpiredException
        operation.errors << CredentialReportNotPresentException
        operation.errors << CredentialReportNotReadyException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:get_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#GetGroup"
        operation.name = "GetGroup"
        operation.input = GetGroupRequest
        operation.output = GetGroupResponse
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
        operation[:paginator] = Paginators::GetGroup.new
      end)
      service.add_operation(:get_group_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#GetGroupPolicy"
        operation.name = "GetGroupPolicy"
        operation.input = GetGroupPolicyRequest
        operation.output = GetGroupPolicyResponse
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:get_instance_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#GetInstanceProfile"
        operation.name = "GetInstanceProfile"
        operation.input = GetInstanceProfileRequest
        operation.output = GetInstanceProfileResponse
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:get_login_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#GetLoginProfile"
        operation.name = "GetLoginProfile"
        operation.input = GetLoginProfileRequest
        operation.output = GetLoginProfileResponse
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:get_mfa_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#GetMFADevice"
        operation.name = "GetMFADevice"
        operation.input = GetMFADeviceRequest
        operation.output = GetMFADeviceResponse
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:get_open_id_connect_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#GetOpenIDConnectProvider"
        operation.name = "GetOpenIDConnectProvider"
        operation.input = GetOpenIDConnectProviderRequest
        operation.output = GetOpenIDConnectProviderResponse
        operation.errors << InvalidInputException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:get_organizations_access_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#GetOrganizationsAccessReport"
        operation.name = "GetOrganizationsAccessReport"
        operation.input = GetOrganizationsAccessReportRequest
        operation.output = GetOrganizationsAccessReportResponse
        operation.errors << NoSuchEntityException
        operation.traits = {}
      end)
      service.add_operation(:get_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#GetPolicy"
        operation.name = "GetPolicy"
        operation.input = GetPolicyRequest
        operation.output = GetPolicyResponse
        operation.errors << InvalidInputException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {"smithy.api#suppress" => ["WaitableTraitInvalidErrorType"]}
      end)
      service.add_operation(:get_policy_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#GetPolicyVersion"
        operation.name = "GetPolicyVersion"
        operation.input = GetPolicyVersionRequest
        operation.output = GetPolicyVersionResponse
        operation.errors << InvalidInputException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:get_role, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#GetRole"
        operation.name = "GetRole"
        operation.input = GetRoleRequest
        operation.output = GetRoleResponse
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {"smithy.api#suppress" => ["WaitableTraitInvalidErrorType"]}
      end)
      service.add_operation(:get_role_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#GetRolePolicy"
        operation.name = "GetRolePolicy"
        operation.input = GetRolePolicyRequest
        operation.output = GetRolePolicyResponse
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:get_saml_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#GetSAMLProvider"
        operation.name = "GetSAMLProvider"
        operation.input = GetSAMLProviderRequest
        operation.output = GetSAMLProviderResponse
        operation.errors << InvalidInputException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:get_ssh_public_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#GetSSHPublicKey"
        operation.name = "GetSSHPublicKey"
        operation.input = GetSSHPublicKeyRequest
        operation.output = GetSSHPublicKeyResponse
        operation.errors << NoSuchEntityException
        operation.errors << UnrecognizedPublicKeyEncodingException
        operation.traits = {}
      end)
      service.add_operation(:get_server_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#GetServerCertificate"
        operation.name = "GetServerCertificate"
        operation.input = GetServerCertificateRequest
        operation.output = GetServerCertificateResponse
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:get_service_last_accessed_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#GetServiceLastAccessedDetails"
        operation.name = "GetServiceLastAccessedDetails"
        operation.input = GetServiceLastAccessedDetailsRequest
        operation.output = GetServiceLastAccessedDetailsResponse
        operation.errors << InvalidInputException
        operation.errors << NoSuchEntityException
        operation.traits = {}
      end)
      service.add_operation(:get_service_last_accessed_details_with_entities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#GetServiceLastAccessedDetailsWithEntities"
        operation.name = "GetServiceLastAccessedDetailsWithEntities"
        operation.input = GetServiceLastAccessedDetailsWithEntitiesRequest
        operation.output = GetServiceLastAccessedDetailsWithEntitiesResponse
        operation.errors << InvalidInputException
        operation.errors << NoSuchEntityException
        operation.traits = {}
      end)
      service.add_operation(:get_service_linked_role_deletion_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#GetServiceLinkedRoleDeletionStatus"
        operation.name = "GetServiceLinkedRoleDeletionStatus"
        operation.input = GetServiceLinkedRoleDeletionStatusRequest
        operation.output = GetServiceLinkedRoleDeletionStatusResponse
        operation.errors << InvalidInputException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:get_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#GetUser"
        operation.name = "GetUser"
        operation.input = GetUserRequest
        operation.output = GetUserResponse
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {"smithy.api#suppress" => ["WaitableTraitInvalidErrorType"], "smithy.test#smokeTests" => [{"id" => "GetUserFailure", "params" => {"UserName" => "fake_user"}, "vendorParams" => {"region" => "us-east-1"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"failure" => {}}}]}
      end)
      service.add_operation(:get_user_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#GetUserPolicy"
        operation.name = "GetUserPolicy"
        operation.input = GetUserPolicyRequest
        operation.output = GetUserPolicyResponse
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:list_access_keys, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#ListAccessKeys"
        operation.name = "ListAccessKeys"
        operation.input = ListAccessKeysRequest
        operation.output = ListAccessKeysResponse
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAccessKeys.new
      end)
      service.add_operation(:list_account_aliases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#ListAccountAliases"
        operation.name = "ListAccountAliases"
        operation.input = ListAccountAliasesRequest
        operation.output = ListAccountAliasesResponse
        operation.errors << ServiceFailureException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAccountAliases.new
      end)
      service.add_operation(:list_attached_group_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#ListAttachedGroupPolicies"
        operation.name = "ListAttachedGroupPolicies"
        operation.input = ListAttachedGroupPoliciesRequest
        operation.output = ListAttachedGroupPoliciesResponse
        operation.errors << InvalidInputException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAttachedGroupPolicies.new
      end)
      service.add_operation(:list_attached_role_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#ListAttachedRolePolicies"
        operation.name = "ListAttachedRolePolicies"
        operation.input = ListAttachedRolePoliciesRequest
        operation.output = ListAttachedRolePoliciesResponse
        operation.errors << InvalidInputException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAttachedRolePolicies.new
      end)
      service.add_operation(:list_attached_user_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#ListAttachedUserPolicies"
        operation.name = "ListAttachedUserPolicies"
        operation.input = ListAttachedUserPoliciesRequest
        operation.output = ListAttachedUserPoliciesResponse
        operation.errors << InvalidInputException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAttachedUserPolicies.new
      end)
      service.add_operation(:list_entities_for_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#ListEntitiesForPolicy"
        operation.name = "ListEntitiesForPolicy"
        operation.input = ListEntitiesForPolicyRequest
        operation.output = ListEntitiesForPolicyResponse
        operation.errors << InvalidInputException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
        operation[:paginator] = Paginators::ListEntitiesForPolicy.new
      end)
      service.add_operation(:list_group_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#ListGroupPolicies"
        operation.name = "ListGroupPolicies"
        operation.input = ListGroupPoliciesRequest
        operation.output = ListGroupPoliciesResponse
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
        operation[:paginator] = Paginators::ListGroupPolicies.new
      end)
      service.add_operation(:list_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#ListGroups"
        operation.name = "ListGroups"
        operation.input = ListGroupsRequest
        operation.output = ListGroupsResponse
        operation.errors << ServiceFailureException
        operation.traits = {}
        operation[:paginator] = Paginators::ListGroups.new
      end)
      service.add_operation(:list_groups_for_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#ListGroupsForUser"
        operation.name = "ListGroupsForUser"
        operation.input = ListGroupsForUserRequest
        operation.output = ListGroupsForUserResponse
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
        operation[:paginator] = Paginators::ListGroupsForUser.new
      end)
      service.add_operation(:list_instance_profile_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#ListInstanceProfileTags"
        operation.name = "ListInstanceProfileTags"
        operation.input = ListInstanceProfileTagsRequest
        operation.output = ListInstanceProfileTagsResponse
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
        operation[:paginator] = Paginators::ListInstanceProfileTags.new
      end)
      service.add_operation(:list_instance_profiles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#ListInstanceProfiles"
        operation.name = "ListInstanceProfiles"
        operation.input = ListInstanceProfilesRequest
        operation.output = ListInstanceProfilesResponse
        operation.errors << ServiceFailureException
        operation.traits = {}
        operation[:paginator] = Paginators::ListInstanceProfiles.new
      end)
      service.add_operation(:list_instance_profiles_for_role, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#ListInstanceProfilesForRole"
        operation.name = "ListInstanceProfilesForRole"
        operation.input = ListInstanceProfilesForRoleRequest
        operation.output = ListInstanceProfilesForRoleResponse
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
        operation[:paginator] = Paginators::ListInstanceProfilesForRole.new
      end)
      service.add_operation(:list_mfa_device_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#ListMFADeviceTags"
        operation.name = "ListMFADeviceTags"
        operation.input = ListMFADeviceTagsRequest
        operation.output = ListMFADeviceTagsResponse
        operation.errors << InvalidInputException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
        operation[:paginator] = Paginators::ListMFADeviceTags.new
      end)
      service.add_operation(:list_mfa_devices, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#ListMFADevices"
        operation.name = "ListMFADevices"
        operation.input = ListMFADevicesRequest
        operation.output = ListMFADevicesResponse
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
        operation[:paginator] = Paginators::ListMFADevices.new
      end)
      service.add_operation(:list_open_id_connect_provider_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#ListOpenIDConnectProviderTags"
        operation.name = "ListOpenIDConnectProviderTags"
        operation.input = ListOpenIDConnectProviderTagsRequest
        operation.output = ListOpenIDConnectProviderTagsResponse
        operation.errors << InvalidInputException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
        operation[:paginator] = Paginators::ListOpenIDConnectProviderTags.new
      end)
      service.add_operation(:list_open_id_connect_providers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#ListOpenIDConnectProviders"
        operation.name = "ListOpenIDConnectProviders"
        operation.input = ListOpenIDConnectProvidersRequest
        operation.output = ListOpenIDConnectProvidersResponse
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:list_organizations_features, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#ListOrganizationsFeatures"
        operation.name = "ListOrganizationsFeatures"
        operation.input = ListOrganizationsFeaturesRequest
        operation.output = ListOrganizationsFeaturesResponse
        operation.errors << AccountNotManagementOrDelegatedAdministratorException
        operation.errors << OrganizationNotFoundException
        operation.errors << OrganizationNotInAllFeaturesModeException
        operation.errors << ServiceAccessNotEnabledException
        operation.traits = {}
      end)
      service.add_operation(:list_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#ListPolicies"
        operation.name = "ListPolicies"
        operation.input = ListPoliciesRequest
        operation.output = ListPoliciesResponse
        operation.errors << ServiceFailureException
        operation.traits = {}
        operation[:paginator] = Paginators::ListPolicies.new
      end)
      service.add_operation(:list_policies_granting_service_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#ListPoliciesGrantingServiceAccess"
        operation.name = "ListPoliciesGrantingServiceAccess"
        operation.input = ListPoliciesGrantingServiceAccessRequest
        operation.output = ListPoliciesGrantingServiceAccessResponse
        operation.errors << InvalidInputException
        operation.errors << NoSuchEntityException
        operation.traits = {}
      end)
      service.add_operation(:list_policy_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#ListPolicyTags"
        operation.name = "ListPolicyTags"
        operation.input = ListPolicyTagsRequest
        operation.output = ListPolicyTagsResponse
        operation.errors << InvalidInputException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
        operation[:paginator] = Paginators::ListPolicyTags.new
      end)
      service.add_operation(:list_policy_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#ListPolicyVersions"
        operation.name = "ListPolicyVersions"
        operation.input = ListPolicyVersionsRequest
        operation.output = ListPolicyVersionsResponse
        operation.errors << InvalidInputException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
        operation[:paginator] = Paginators::ListPolicyVersions.new
      end)
      service.add_operation(:list_role_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#ListRolePolicies"
        operation.name = "ListRolePolicies"
        operation.input = ListRolePoliciesRequest
        operation.output = ListRolePoliciesResponse
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
        operation[:paginator] = Paginators::ListRolePolicies.new
      end)
      service.add_operation(:list_role_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#ListRoleTags"
        operation.name = "ListRoleTags"
        operation.input = ListRoleTagsRequest
        operation.output = ListRoleTagsResponse
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
        operation[:paginator] = Paginators::ListRoleTags.new
      end)
      service.add_operation(:list_roles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#ListRoles"
        operation.name = "ListRoles"
        operation.input = ListRolesRequest
        operation.output = ListRolesResponse
        operation.errors << ServiceFailureException
        operation.traits = {}
        operation[:paginator] = Paginators::ListRoles.new
      end)
      service.add_operation(:list_saml_provider_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#ListSAMLProviderTags"
        operation.name = "ListSAMLProviderTags"
        operation.input = ListSAMLProviderTagsRequest
        operation.output = ListSAMLProviderTagsResponse
        operation.errors << InvalidInputException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
        operation[:paginator] = Paginators::ListSAMLProviderTags.new
      end)
      service.add_operation(:list_saml_providers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#ListSAMLProviders"
        operation.name = "ListSAMLProviders"
        operation.input = ListSAMLProvidersRequest
        operation.output = ListSAMLProvidersResponse
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:list_ssh_public_keys, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#ListSSHPublicKeys"
        operation.name = "ListSSHPublicKeys"
        operation.input = ListSSHPublicKeysRequest
        operation.output = ListSSHPublicKeysResponse
        operation.errors << NoSuchEntityException
        operation.traits = {}
        operation[:paginator] = Paginators::ListSSHPublicKeys.new
      end)
      service.add_operation(:list_server_certificate_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#ListServerCertificateTags"
        operation.name = "ListServerCertificateTags"
        operation.input = ListServerCertificateTagsRequest
        operation.output = ListServerCertificateTagsResponse
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
        operation[:paginator] = Paginators::ListServerCertificateTags.new
      end)
      service.add_operation(:list_server_certificates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#ListServerCertificates"
        operation.name = "ListServerCertificates"
        operation.input = ListServerCertificatesRequest
        operation.output = ListServerCertificatesResponse
        operation.errors << ServiceFailureException
        operation.traits = {}
        operation[:paginator] = Paginators::ListServerCertificates.new
      end)
      service.add_operation(:list_service_specific_credentials, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#ListServiceSpecificCredentials"
        operation.name = "ListServiceSpecificCredentials"
        operation.input = ListServiceSpecificCredentialsRequest
        operation.output = ListServiceSpecificCredentialsResponse
        operation.errors << NoSuchEntityException
        operation.errors << ServiceNotSupportedException
        operation.traits = {}
      end)
      service.add_operation(:list_signing_certificates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#ListSigningCertificates"
        operation.name = "ListSigningCertificates"
        operation.input = ListSigningCertificatesRequest
        operation.output = ListSigningCertificatesResponse
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
        operation[:paginator] = Paginators::ListSigningCertificates.new
      end)
      service.add_operation(:list_user_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#ListUserPolicies"
        operation.name = "ListUserPolicies"
        operation.input = ListUserPoliciesRequest
        operation.output = ListUserPoliciesResponse
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
        operation[:paginator] = Paginators::ListUserPolicies.new
      end)
      service.add_operation(:list_user_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#ListUserTags"
        operation.name = "ListUserTags"
        operation.input = ListUserTagsRequest
        operation.output = ListUserTagsResponse
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
        operation[:paginator] = Paginators::ListUserTags.new
      end)
      service.add_operation(:list_users, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#ListUsers"
        operation.name = "ListUsers"
        operation.input = ListUsersRequest
        operation.output = ListUsersResponse
        operation.errors << ServiceFailureException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListUsersSuccess", "params" => {}, "vendorParams" => {"region" => "us-east-1"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListUsers.new
      end)
      service.add_operation(:list_virtual_mfa_devices, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#ListVirtualMFADevices"
        operation.name = "ListVirtualMFADevices"
        operation.input = ListVirtualMFADevicesRequest
        operation.output = ListVirtualMFADevicesResponse
        operation.traits = {}
        operation[:paginator] = Paginators::ListVirtualMFADevices.new
      end)
      service.add_operation(:put_group_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#PutGroupPolicy"
        operation.name = "PutGroupPolicy"
        operation.input = PutGroupPolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << LimitExceededException
        operation.errors << MalformedPolicyDocumentException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:put_role_permissions_boundary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#PutRolePermissionsBoundary"
        operation.name = "PutRolePermissionsBoundary"
        operation.input = PutRolePermissionsBoundaryRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << NoSuchEntityException
        operation.errors << PolicyNotAttachableException
        operation.errors << ServiceFailureException
        operation.errors << UnmodifiableEntityException
        operation.traits = {}
      end)
      service.add_operation(:put_role_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#PutRolePolicy"
        operation.name = "PutRolePolicy"
        operation.input = PutRolePolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << LimitExceededException
        operation.errors << MalformedPolicyDocumentException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.errors << UnmodifiableEntityException
        operation.traits = {}
      end)
      service.add_operation(:put_user_permissions_boundary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#PutUserPermissionsBoundary"
        operation.name = "PutUserPermissionsBoundary"
        operation.input = PutUserPermissionsBoundaryRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << NoSuchEntityException
        operation.errors << PolicyNotAttachableException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:put_user_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#PutUserPolicy"
        operation.name = "PutUserPolicy"
        operation.input = PutUserPolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << LimitExceededException
        operation.errors << MalformedPolicyDocumentException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:remove_client_id_from_open_id_connect_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#RemoveClientIDFromOpenIDConnectProvider"
        operation.name = "RemoveClientIDFromOpenIDConnectProvider"
        operation.input = RemoveClientIDFromOpenIDConnectProviderRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:remove_role_from_instance_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#RemoveRoleFromInstanceProfile"
        operation.name = "RemoveRoleFromInstanceProfile"
        operation.input = RemoveRoleFromInstanceProfileRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.errors << UnmodifiableEntityException
        operation.traits = {}
      end)
      service.add_operation(:remove_user_from_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#RemoveUserFromGroup"
        operation.name = "RemoveUserFromGroup"
        operation.input = RemoveUserFromGroupRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:reset_service_specific_credential, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#ResetServiceSpecificCredential"
        operation.name = "ResetServiceSpecificCredential"
        operation.input = ResetServiceSpecificCredentialRequest
        operation.output = ResetServiceSpecificCredentialResponse
        operation.errors << NoSuchEntityException
        operation.traits = {}
      end)
      service.add_operation(:resync_mfa_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#ResyncMFADevice"
        operation.name = "ResyncMFADevice"
        operation.input = ResyncMFADeviceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidAuthenticationCodeException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:set_default_policy_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#SetDefaultPolicyVersion"
        operation.name = "SetDefaultPolicyVersion"
        operation.input = SetDefaultPolicyVersionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:set_security_token_service_preferences, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#SetSecurityTokenServicePreferences"
        operation.name = "SetSecurityTokenServicePreferences"
        operation.input = SetSecurityTokenServicePreferencesRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:simulate_custom_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#SimulateCustomPolicy"
        operation.name = "SimulateCustomPolicy"
        operation.input = SimulateCustomPolicyRequest
        operation.output = SimulateCustomPolicyOutput
        operation.errors << InvalidInputException
        operation.errors << PolicyEvaluationException
        operation.traits = {}
        operation[:paginator] = Paginators::SimulateCustomPolicy.new
      end)
      service.add_operation(:simulate_principal_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#SimulatePrincipalPolicy"
        operation.name = "SimulatePrincipalPolicy"
        operation.input = SimulatePrincipalPolicyRequest
        operation.output = SimulatePrincipalPolicyOutput
        operation.errors << InvalidInputException
        operation.errors << NoSuchEntityException
        operation.errors << PolicyEvaluationException
        operation.traits = {}
        operation[:paginator] = Paginators::SimulatePrincipalPolicy.new
      end)
      service.add_operation(:tag_instance_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#TagInstanceProfile"
        operation.name = "TagInstanceProfile"
        operation.input = TagInstanceProfileRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:tag_mfa_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#TagMFADevice"
        operation.name = "TagMFADevice"
        operation.input = TagMFADeviceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:tag_open_id_connect_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#TagOpenIDConnectProvider"
        operation.name = "TagOpenIDConnectProvider"
        operation.input = TagOpenIDConnectProviderRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:tag_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#TagPolicy"
        operation.name = "TagPolicy"
        operation.input = TagPolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:tag_role, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#TagRole"
        operation.name = "TagRole"
        operation.input = TagRoleRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:tag_saml_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#TagSAMLProvider"
        operation.name = "TagSAMLProvider"
        operation.input = TagSAMLProviderRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:tag_server_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#TagServerCertificate"
        operation.name = "TagServerCertificate"
        operation.input = TagServerCertificateRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:tag_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#TagUser"
        operation.name = "TagUser"
        operation.input = TagUserRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:untag_instance_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#UntagInstanceProfile"
        operation.name = "UntagInstanceProfile"
        operation.input = UntagInstanceProfileRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidInputException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:untag_mfa_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#UntagMFADevice"
        operation.name = "UntagMFADevice"
        operation.input = UntagMFADeviceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidInputException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:untag_open_id_connect_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#UntagOpenIDConnectProvider"
        operation.name = "UntagOpenIDConnectProvider"
        operation.input = UntagOpenIDConnectProviderRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidInputException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:untag_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#UntagPolicy"
        operation.name = "UntagPolicy"
        operation.input = UntagPolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidInputException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:untag_role, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#UntagRole"
        operation.name = "UntagRole"
        operation.input = UntagRoleRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:untag_saml_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#UntagSAMLProvider"
        operation.name = "UntagSAMLProvider"
        operation.input = UntagSAMLProviderRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidInputException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:untag_server_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#UntagServerCertificate"
        operation.name = "UntagServerCertificate"
        operation.input = UntagServerCertificateRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidInputException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:untag_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#UntagUser"
        operation.name = "UntagUser"
        operation.input = UntagUserRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:update_access_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#UpdateAccessKey"
        operation.name = "UpdateAccessKey"
        operation.input = UpdateAccessKeyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:update_account_password_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#UpdateAccountPasswordPolicy"
        operation.name = "UpdateAccountPasswordPolicy"
        operation.input = UpdateAccountPasswordPolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << LimitExceededException
        operation.errors << MalformedPolicyDocumentException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:update_assume_role_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#UpdateAssumeRolePolicy"
        operation.name = "UpdateAssumeRolePolicy"
        operation.input = UpdateAssumeRolePolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << LimitExceededException
        operation.errors << MalformedPolicyDocumentException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.errors << UnmodifiableEntityException
        operation.traits = {}
      end)
      service.add_operation(:update_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#UpdateGroup"
        operation.name = "UpdateGroup"
        operation.input = UpdateGroupRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << EntityAlreadyExistsException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:update_login_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#UpdateLoginProfile"
        operation.name = "UpdateLoginProfile"
        operation.input = UpdateLoginProfileRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << EntityTemporarilyUnmodifiableException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << PasswordPolicyViolationException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:update_open_id_connect_provider_thumbprint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#UpdateOpenIDConnectProviderThumbprint"
        operation.name = "UpdateOpenIDConnectProviderThumbprint"
        operation.input = UpdateOpenIDConnectProviderThumbprintRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:update_role, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#UpdateRole"
        operation.name = "UpdateRole"
        operation.input = UpdateRoleRequest
        operation.output = UpdateRoleResponse
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.errors << UnmodifiableEntityException
        operation.traits = {}
      end)
      service.add_operation(:update_role_description, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#UpdateRoleDescription"
        operation.name = "UpdateRoleDescription"
        operation.input = UpdateRoleDescriptionRequest
        operation.output = UpdateRoleDescriptionResponse
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.errors << UnmodifiableEntityException
        operation.traits = {}
      end)
      service.add_operation(:update_saml_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#UpdateSAMLProvider"
        operation.name = "UpdateSAMLProvider"
        operation.input = UpdateSAMLProviderRequest
        operation.output = UpdateSAMLProviderResponse
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:update_ssh_public_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#UpdateSSHPublicKey"
        operation.name = "UpdateSSHPublicKey"
        operation.input = UpdateSSHPublicKeyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << NoSuchEntityException
        operation.traits = {}
      end)
      service.add_operation(:update_server_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#UpdateServerCertificate"
        operation.name = "UpdateServerCertificate"
        operation.input = UpdateServerCertificateRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << EntityAlreadyExistsException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:update_service_specific_credential, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#UpdateServiceSpecificCredential"
        operation.name = "UpdateServiceSpecificCredential"
        operation.input = UpdateServiceSpecificCredentialRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << NoSuchEntityException
        operation.traits = {}
      end)
      service.add_operation(:update_signing_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#UpdateSigningCertificate"
        operation.name = "UpdateSigningCertificate"
        operation.input = UpdateSigningCertificateRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:update_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#UpdateUser"
        operation.name = "UpdateUser"
        operation.input = UpdateUserRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << EntityAlreadyExistsException
        operation.errors << EntityTemporarilyUnmodifiableException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:upload_ssh_public_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#UploadSSHPublicKey"
        operation.name = "UploadSSHPublicKey"
        operation.input = UploadSSHPublicKeyRequest
        operation.output = UploadSSHPublicKeyResponse
        operation.errors << DuplicateSSHPublicKeyException
        operation.errors << InvalidPublicKeyException
        operation.errors << LimitExceededException
        operation.errors << NoSuchEntityException
        operation.errors << UnrecognizedPublicKeyEncodingException
        operation.traits = {}
      end)
      service.add_operation(:upload_server_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#UploadServerCertificate"
        operation.name = "UploadServerCertificate"
        operation.input = UploadServerCertificateRequest
        operation.output = UploadServerCertificateResponse
        operation.errors << ConcurrentModificationException
        operation.errors << EntityAlreadyExistsException
        operation.errors << InvalidInputException
        operation.errors << KeyPairMismatchException
        operation.errors << LimitExceededException
        operation.errors << MalformedCertificateException
        operation.errors << ServiceFailureException
        operation.traits = {}
      end)
      service.add_operation(:upload_signing_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iam#UploadSigningCertificate"
        operation.name = "UploadSigningCertificate"
        operation.input = UploadSigningCertificateRequest
        operation.output = UploadSigningCertificateResponse
        operation.errors << ConcurrentModificationException
        operation.errors << DuplicateCertificateException
        operation.errors << EntityAlreadyExistsException
        operation.errors << InvalidCertificateException
        operation.errors << LimitExceededException
        operation.errors << MalformedCertificateException
        operation.errors << NoSuchEntityException
        operation.errors << ServiceFailureException
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
