# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IAM
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessAdvisorUsageGranularityType = Shapes::StringShape.new(name: 'AccessAdvisorUsageGranularityType')
    AccessDetail = Shapes::StructureShape.new(name: 'AccessDetail')
    AccessDetails = Shapes::ListShape.new(name: 'AccessDetails')
    AccessKey = Shapes::StructureShape.new(name: 'AccessKey')
    AccessKeyLastUsed = Shapes::StructureShape.new(name: 'AccessKeyLastUsed')
    AccessKeyMetadata = Shapes::StructureShape.new(name: 'AccessKeyMetadata')
    ActionNameListType = Shapes::ListShape.new(name: 'ActionNameListType')
    ActionNameType = Shapes::StringShape.new(name: 'ActionNameType')
    AddClientIDToOpenIDConnectProviderRequest = Shapes::StructureShape.new(name: 'AddClientIDToOpenIDConnectProviderRequest')
    AddRoleToInstanceProfileRequest = Shapes::StructureShape.new(name: 'AddRoleToInstanceProfileRequest')
    AddUserToGroupRequest = Shapes::StructureShape.new(name: 'AddUserToGroupRequest')
    ArnListType = Shapes::ListShape.new(name: 'ArnListType')
    AttachGroupPolicyRequest = Shapes::StructureShape.new(name: 'AttachGroupPolicyRequest')
    AttachRolePolicyRequest = Shapes::StructureShape.new(name: 'AttachRolePolicyRequest')
    AttachUserPolicyRequest = Shapes::StructureShape.new(name: 'AttachUserPolicyRequest')
    AttachedPermissionsBoundary = Shapes::StructureShape.new(name: 'AttachedPermissionsBoundary')
    AttachedPolicy = Shapes::StructureShape.new(name: 'AttachedPolicy')
    BootstrapDatum = Shapes::BlobShape.new(name: 'BootstrapDatum')
    ChangePasswordRequest = Shapes::StructureShape.new(name: 'ChangePasswordRequest')
    ColumnNumber = Shapes::IntegerShape.new(name: 'ColumnNumber')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    ConcurrentModificationMessage = Shapes::StringShape.new(name: 'ConcurrentModificationMessage')
    ContextEntry = Shapes::StructureShape.new(name: 'ContextEntry')
    ContextEntryListType = Shapes::ListShape.new(name: 'ContextEntryListType')
    ContextKeyNameType = Shapes::StringShape.new(name: 'ContextKeyNameType')
    ContextKeyNamesResultListType = Shapes::ListShape.new(name: 'ContextKeyNamesResultListType')
    ContextKeyTypeEnum = Shapes::StringShape.new(name: 'ContextKeyTypeEnum')
    ContextKeyValueListType = Shapes::ListShape.new(name: 'ContextKeyValueListType')
    ContextKeyValueType = Shapes::StringShape.new(name: 'ContextKeyValueType')
    CreateAccessKeyRequest = Shapes::StructureShape.new(name: 'CreateAccessKeyRequest')
    CreateAccessKeyResponse = Shapes::StructureShape.new(name: 'CreateAccessKeyResponse')
    CreateAccountAliasRequest = Shapes::StructureShape.new(name: 'CreateAccountAliasRequest')
    CreateGroupRequest = Shapes::StructureShape.new(name: 'CreateGroupRequest')
    CreateGroupResponse = Shapes::StructureShape.new(name: 'CreateGroupResponse')
    CreateInstanceProfileRequest = Shapes::StructureShape.new(name: 'CreateInstanceProfileRequest')
    CreateInstanceProfileResponse = Shapes::StructureShape.new(name: 'CreateInstanceProfileResponse')
    CreateLoginProfileRequest = Shapes::StructureShape.new(name: 'CreateLoginProfileRequest')
    CreateLoginProfileResponse = Shapes::StructureShape.new(name: 'CreateLoginProfileResponse')
    CreateOpenIDConnectProviderRequest = Shapes::StructureShape.new(name: 'CreateOpenIDConnectProviderRequest')
    CreateOpenIDConnectProviderResponse = Shapes::StructureShape.new(name: 'CreateOpenIDConnectProviderResponse')
    CreatePolicyRequest = Shapes::StructureShape.new(name: 'CreatePolicyRequest')
    CreatePolicyResponse = Shapes::StructureShape.new(name: 'CreatePolicyResponse')
    CreatePolicyVersionRequest = Shapes::StructureShape.new(name: 'CreatePolicyVersionRequest')
    CreatePolicyVersionResponse = Shapes::StructureShape.new(name: 'CreatePolicyVersionResponse')
    CreateRoleRequest = Shapes::StructureShape.new(name: 'CreateRoleRequest')
    CreateRoleResponse = Shapes::StructureShape.new(name: 'CreateRoleResponse')
    CreateSAMLProviderRequest = Shapes::StructureShape.new(name: 'CreateSAMLProviderRequest')
    CreateSAMLProviderResponse = Shapes::StructureShape.new(name: 'CreateSAMLProviderResponse')
    CreateServiceLinkedRoleRequest = Shapes::StructureShape.new(name: 'CreateServiceLinkedRoleRequest')
    CreateServiceLinkedRoleResponse = Shapes::StructureShape.new(name: 'CreateServiceLinkedRoleResponse')
    CreateServiceSpecificCredentialRequest = Shapes::StructureShape.new(name: 'CreateServiceSpecificCredentialRequest')
    CreateServiceSpecificCredentialResponse = Shapes::StructureShape.new(name: 'CreateServiceSpecificCredentialResponse')
    CreateUserRequest = Shapes::StructureShape.new(name: 'CreateUserRequest')
    CreateUserResponse = Shapes::StructureShape.new(name: 'CreateUserResponse')
    CreateVirtualMFADeviceRequest = Shapes::StructureShape.new(name: 'CreateVirtualMFADeviceRequest')
    CreateVirtualMFADeviceResponse = Shapes::StructureShape.new(name: 'CreateVirtualMFADeviceResponse')
    CredentialReportExpiredException = Shapes::StructureShape.new(name: 'CredentialReportExpiredException')
    CredentialReportNotPresentException = Shapes::StructureShape.new(name: 'CredentialReportNotPresentException')
    CredentialReportNotReadyException = Shapes::StructureShape.new(name: 'CredentialReportNotReadyException')
    DeactivateMFADeviceRequest = Shapes::StructureShape.new(name: 'DeactivateMFADeviceRequest')
    DeleteAccessKeyRequest = Shapes::StructureShape.new(name: 'DeleteAccessKeyRequest')
    DeleteAccountAliasRequest = Shapes::StructureShape.new(name: 'DeleteAccountAliasRequest')
    DeleteConflictException = Shapes::StructureShape.new(name: 'DeleteConflictException')
    DeleteGroupPolicyRequest = Shapes::StructureShape.new(name: 'DeleteGroupPolicyRequest')
    DeleteGroupRequest = Shapes::StructureShape.new(name: 'DeleteGroupRequest')
    DeleteInstanceProfileRequest = Shapes::StructureShape.new(name: 'DeleteInstanceProfileRequest')
    DeleteLoginProfileRequest = Shapes::StructureShape.new(name: 'DeleteLoginProfileRequest')
    DeleteOpenIDConnectProviderRequest = Shapes::StructureShape.new(name: 'DeleteOpenIDConnectProviderRequest')
    DeletePolicyRequest = Shapes::StructureShape.new(name: 'DeletePolicyRequest')
    DeletePolicyVersionRequest = Shapes::StructureShape.new(name: 'DeletePolicyVersionRequest')
    DeleteRolePermissionsBoundaryRequest = Shapes::StructureShape.new(name: 'DeleteRolePermissionsBoundaryRequest')
    DeleteRolePolicyRequest = Shapes::StructureShape.new(name: 'DeleteRolePolicyRequest')
    DeleteRoleRequest = Shapes::StructureShape.new(name: 'DeleteRoleRequest')
    DeleteSAMLProviderRequest = Shapes::StructureShape.new(name: 'DeleteSAMLProviderRequest')
    DeleteSSHPublicKeyRequest = Shapes::StructureShape.new(name: 'DeleteSSHPublicKeyRequest')
    DeleteServerCertificateRequest = Shapes::StructureShape.new(name: 'DeleteServerCertificateRequest')
    DeleteServiceLinkedRoleRequest = Shapes::StructureShape.new(name: 'DeleteServiceLinkedRoleRequest')
    DeleteServiceLinkedRoleResponse = Shapes::StructureShape.new(name: 'DeleteServiceLinkedRoleResponse')
    DeleteServiceSpecificCredentialRequest = Shapes::StructureShape.new(name: 'DeleteServiceSpecificCredentialRequest')
    DeleteSigningCertificateRequest = Shapes::StructureShape.new(name: 'DeleteSigningCertificateRequest')
    DeleteUserPermissionsBoundaryRequest = Shapes::StructureShape.new(name: 'DeleteUserPermissionsBoundaryRequest')
    DeleteUserPolicyRequest = Shapes::StructureShape.new(name: 'DeleteUserPolicyRequest')
    DeleteUserRequest = Shapes::StructureShape.new(name: 'DeleteUserRequest')
    DeleteVirtualMFADeviceRequest = Shapes::StructureShape.new(name: 'DeleteVirtualMFADeviceRequest')
    DeletionTaskFailureReasonType = Shapes::StructureShape.new(name: 'DeletionTaskFailureReasonType')
    DeletionTaskIdType = Shapes::StringShape.new(name: 'DeletionTaskIdType')
    DeletionTaskStatusType = Shapes::StringShape.new(name: 'DeletionTaskStatusType')
    DetachGroupPolicyRequest = Shapes::StructureShape.new(name: 'DetachGroupPolicyRequest')
    DetachRolePolicyRequest = Shapes::StructureShape.new(name: 'DetachRolePolicyRequest')
    DetachUserPolicyRequest = Shapes::StructureShape.new(name: 'DetachUserPolicyRequest')
    DuplicateCertificateException = Shapes::StructureShape.new(name: 'DuplicateCertificateException')
    DuplicateSSHPublicKeyException = Shapes::StructureShape.new(name: 'DuplicateSSHPublicKeyException')
    EnableMFADeviceRequest = Shapes::StructureShape.new(name: 'EnableMFADeviceRequest')
    EntityAlreadyExistsException = Shapes::StructureShape.new(name: 'EntityAlreadyExistsException')
    EntityDetails = Shapes::StructureShape.new(name: 'EntityDetails')
    EntityInfo = Shapes::StructureShape.new(name: 'EntityInfo')
    EntityTemporarilyUnmodifiableException = Shapes::StructureShape.new(name: 'EntityTemporarilyUnmodifiableException')
    EntityType = Shapes::StringShape.new(name: 'EntityType')
    ErrorDetails = Shapes::StructureShape.new(name: 'ErrorDetails')
    EvalDecisionDetailsType = Shapes::MapShape.new(name: 'EvalDecisionDetailsType')
    EvalDecisionSourceType = Shapes::StringShape.new(name: 'EvalDecisionSourceType')
    EvaluationResult = Shapes::StructureShape.new(name: 'EvaluationResult')
    EvaluationResultsListType = Shapes::ListShape.new(name: 'EvaluationResultsListType')
    GenerateCredentialReportResponse = Shapes::StructureShape.new(name: 'GenerateCredentialReportResponse')
    GenerateOrganizationsAccessReportRequest = Shapes::StructureShape.new(name: 'GenerateOrganizationsAccessReportRequest')
    GenerateOrganizationsAccessReportResponse = Shapes::StructureShape.new(name: 'GenerateOrganizationsAccessReportResponse')
    GenerateServiceLastAccessedDetailsRequest = Shapes::StructureShape.new(name: 'GenerateServiceLastAccessedDetailsRequest')
    GenerateServiceLastAccessedDetailsResponse = Shapes::StructureShape.new(name: 'GenerateServiceLastAccessedDetailsResponse')
    GetAccessKeyLastUsedRequest = Shapes::StructureShape.new(name: 'GetAccessKeyLastUsedRequest')
    GetAccessKeyLastUsedResponse = Shapes::StructureShape.new(name: 'GetAccessKeyLastUsedResponse')
    GetAccountAuthorizationDetailsRequest = Shapes::StructureShape.new(name: 'GetAccountAuthorizationDetailsRequest')
    GetAccountAuthorizationDetailsResponse = Shapes::StructureShape.new(name: 'GetAccountAuthorizationDetailsResponse')
    GetAccountPasswordPolicyResponse = Shapes::StructureShape.new(name: 'GetAccountPasswordPolicyResponse')
    GetAccountSummaryResponse = Shapes::StructureShape.new(name: 'GetAccountSummaryResponse')
    GetContextKeysForCustomPolicyRequest = Shapes::StructureShape.new(name: 'GetContextKeysForCustomPolicyRequest')
    GetContextKeysForPolicyResponse = Shapes::StructureShape.new(name: 'GetContextKeysForPolicyResponse')
    GetContextKeysForPrincipalPolicyRequest = Shapes::StructureShape.new(name: 'GetContextKeysForPrincipalPolicyRequest')
    GetCredentialReportResponse = Shapes::StructureShape.new(name: 'GetCredentialReportResponse')
    GetGroupPolicyRequest = Shapes::StructureShape.new(name: 'GetGroupPolicyRequest')
    GetGroupPolicyResponse = Shapes::StructureShape.new(name: 'GetGroupPolicyResponse')
    GetGroupRequest = Shapes::StructureShape.new(name: 'GetGroupRequest')
    GetGroupResponse = Shapes::StructureShape.new(name: 'GetGroupResponse')
    GetInstanceProfileRequest = Shapes::StructureShape.new(name: 'GetInstanceProfileRequest')
    GetInstanceProfileResponse = Shapes::StructureShape.new(name: 'GetInstanceProfileResponse')
    GetLoginProfileRequest = Shapes::StructureShape.new(name: 'GetLoginProfileRequest')
    GetLoginProfileResponse = Shapes::StructureShape.new(name: 'GetLoginProfileResponse')
    GetOpenIDConnectProviderRequest = Shapes::StructureShape.new(name: 'GetOpenIDConnectProviderRequest')
    GetOpenIDConnectProviderResponse = Shapes::StructureShape.new(name: 'GetOpenIDConnectProviderResponse')
    GetOrganizationsAccessReportRequest = Shapes::StructureShape.new(name: 'GetOrganizationsAccessReportRequest')
    GetOrganizationsAccessReportResponse = Shapes::StructureShape.new(name: 'GetOrganizationsAccessReportResponse')
    GetPolicyRequest = Shapes::StructureShape.new(name: 'GetPolicyRequest')
    GetPolicyResponse = Shapes::StructureShape.new(name: 'GetPolicyResponse')
    GetPolicyVersionRequest = Shapes::StructureShape.new(name: 'GetPolicyVersionRequest')
    GetPolicyVersionResponse = Shapes::StructureShape.new(name: 'GetPolicyVersionResponse')
    GetRolePolicyRequest = Shapes::StructureShape.new(name: 'GetRolePolicyRequest')
    GetRolePolicyResponse = Shapes::StructureShape.new(name: 'GetRolePolicyResponse')
    GetRoleRequest = Shapes::StructureShape.new(name: 'GetRoleRequest')
    GetRoleResponse = Shapes::StructureShape.new(name: 'GetRoleResponse')
    GetSAMLProviderRequest = Shapes::StructureShape.new(name: 'GetSAMLProviderRequest')
    GetSAMLProviderResponse = Shapes::StructureShape.new(name: 'GetSAMLProviderResponse')
    GetSSHPublicKeyRequest = Shapes::StructureShape.new(name: 'GetSSHPublicKeyRequest')
    GetSSHPublicKeyResponse = Shapes::StructureShape.new(name: 'GetSSHPublicKeyResponse')
    GetServerCertificateRequest = Shapes::StructureShape.new(name: 'GetServerCertificateRequest')
    GetServerCertificateResponse = Shapes::StructureShape.new(name: 'GetServerCertificateResponse')
    GetServiceLastAccessedDetailsRequest = Shapes::StructureShape.new(name: 'GetServiceLastAccessedDetailsRequest')
    GetServiceLastAccessedDetailsResponse = Shapes::StructureShape.new(name: 'GetServiceLastAccessedDetailsResponse')
    GetServiceLastAccessedDetailsWithEntitiesRequest = Shapes::StructureShape.new(name: 'GetServiceLastAccessedDetailsWithEntitiesRequest')
    GetServiceLastAccessedDetailsWithEntitiesResponse = Shapes::StructureShape.new(name: 'GetServiceLastAccessedDetailsWithEntitiesResponse')
    GetServiceLinkedRoleDeletionStatusRequest = Shapes::StructureShape.new(name: 'GetServiceLinkedRoleDeletionStatusRequest')
    GetServiceLinkedRoleDeletionStatusResponse = Shapes::StructureShape.new(name: 'GetServiceLinkedRoleDeletionStatusResponse')
    GetUserPolicyRequest = Shapes::StructureShape.new(name: 'GetUserPolicyRequest')
    GetUserPolicyResponse = Shapes::StructureShape.new(name: 'GetUserPolicyResponse')
    GetUserRequest = Shapes::StructureShape.new(name: 'GetUserRequest')
    GetUserResponse = Shapes::StructureShape.new(name: 'GetUserResponse')
    Group = Shapes::StructureShape.new(name: 'Group')
    GroupDetail = Shapes::StructureShape.new(name: 'GroupDetail')
    InstanceProfile = Shapes::StructureShape.new(name: 'InstanceProfile')
    InvalidAuthenticationCodeException = Shapes::StructureShape.new(name: 'InvalidAuthenticationCodeException')
    InvalidCertificateException = Shapes::StructureShape.new(name: 'InvalidCertificateException')
    InvalidInputException = Shapes::StructureShape.new(name: 'InvalidInputException')
    InvalidPublicKeyException = Shapes::StructureShape.new(name: 'InvalidPublicKeyException')
    InvalidUserTypeException = Shapes::StructureShape.new(name: 'InvalidUserTypeException')
    KeyPairMismatchException = Shapes::StructureShape.new(name: 'KeyPairMismatchException')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    LineNumber = Shapes::IntegerShape.new(name: 'LineNumber')
    ListAccessKeysRequest = Shapes::StructureShape.new(name: 'ListAccessKeysRequest')
    ListAccessKeysResponse = Shapes::StructureShape.new(name: 'ListAccessKeysResponse')
    ListAccountAliasesRequest = Shapes::StructureShape.new(name: 'ListAccountAliasesRequest')
    ListAccountAliasesResponse = Shapes::StructureShape.new(name: 'ListAccountAliasesResponse')
    ListAttachedGroupPoliciesRequest = Shapes::StructureShape.new(name: 'ListAttachedGroupPoliciesRequest')
    ListAttachedGroupPoliciesResponse = Shapes::StructureShape.new(name: 'ListAttachedGroupPoliciesResponse')
    ListAttachedRolePoliciesRequest = Shapes::StructureShape.new(name: 'ListAttachedRolePoliciesRequest')
    ListAttachedRolePoliciesResponse = Shapes::StructureShape.new(name: 'ListAttachedRolePoliciesResponse')
    ListAttachedUserPoliciesRequest = Shapes::StructureShape.new(name: 'ListAttachedUserPoliciesRequest')
    ListAttachedUserPoliciesResponse = Shapes::StructureShape.new(name: 'ListAttachedUserPoliciesResponse')
    ListEntitiesForPolicyRequest = Shapes::StructureShape.new(name: 'ListEntitiesForPolicyRequest')
    ListEntitiesForPolicyResponse = Shapes::StructureShape.new(name: 'ListEntitiesForPolicyResponse')
    ListGroupPoliciesRequest = Shapes::StructureShape.new(name: 'ListGroupPoliciesRequest')
    ListGroupPoliciesResponse = Shapes::StructureShape.new(name: 'ListGroupPoliciesResponse')
    ListGroupsForUserRequest = Shapes::StructureShape.new(name: 'ListGroupsForUserRequest')
    ListGroupsForUserResponse = Shapes::StructureShape.new(name: 'ListGroupsForUserResponse')
    ListGroupsRequest = Shapes::StructureShape.new(name: 'ListGroupsRequest')
    ListGroupsResponse = Shapes::StructureShape.new(name: 'ListGroupsResponse')
    ListInstanceProfilesForRoleRequest = Shapes::StructureShape.new(name: 'ListInstanceProfilesForRoleRequest')
    ListInstanceProfilesForRoleResponse = Shapes::StructureShape.new(name: 'ListInstanceProfilesForRoleResponse')
    ListInstanceProfilesRequest = Shapes::StructureShape.new(name: 'ListInstanceProfilesRequest')
    ListInstanceProfilesResponse = Shapes::StructureShape.new(name: 'ListInstanceProfilesResponse')
    ListMFADevicesRequest = Shapes::StructureShape.new(name: 'ListMFADevicesRequest')
    ListMFADevicesResponse = Shapes::StructureShape.new(name: 'ListMFADevicesResponse')
    ListOpenIDConnectProvidersRequest = Shapes::StructureShape.new(name: 'ListOpenIDConnectProvidersRequest')
    ListOpenIDConnectProvidersResponse = Shapes::StructureShape.new(name: 'ListOpenIDConnectProvidersResponse')
    ListPoliciesGrantingServiceAccessEntry = Shapes::StructureShape.new(name: 'ListPoliciesGrantingServiceAccessEntry')
    ListPoliciesGrantingServiceAccessRequest = Shapes::StructureShape.new(name: 'ListPoliciesGrantingServiceAccessRequest')
    ListPoliciesGrantingServiceAccessResponse = Shapes::StructureShape.new(name: 'ListPoliciesGrantingServiceAccessResponse')
    ListPoliciesRequest = Shapes::StructureShape.new(name: 'ListPoliciesRequest')
    ListPoliciesResponse = Shapes::StructureShape.new(name: 'ListPoliciesResponse')
    ListPolicyVersionsRequest = Shapes::StructureShape.new(name: 'ListPolicyVersionsRequest')
    ListPolicyVersionsResponse = Shapes::StructureShape.new(name: 'ListPolicyVersionsResponse')
    ListRolePoliciesRequest = Shapes::StructureShape.new(name: 'ListRolePoliciesRequest')
    ListRolePoliciesResponse = Shapes::StructureShape.new(name: 'ListRolePoliciesResponse')
    ListRoleTagsRequest = Shapes::StructureShape.new(name: 'ListRoleTagsRequest')
    ListRoleTagsResponse = Shapes::StructureShape.new(name: 'ListRoleTagsResponse')
    ListRolesRequest = Shapes::StructureShape.new(name: 'ListRolesRequest')
    ListRolesResponse = Shapes::StructureShape.new(name: 'ListRolesResponse')
    ListSAMLProvidersRequest = Shapes::StructureShape.new(name: 'ListSAMLProvidersRequest')
    ListSAMLProvidersResponse = Shapes::StructureShape.new(name: 'ListSAMLProvidersResponse')
    ListSSHPublicKeysRequest = Shapes::StructureShape.new(name: 'ListSSHPublicKeysRequest')
    ListSSHPublicKeysResponse = Shapes::StructureShape.new(name: 'ListSSHPublicKeysResponse')
    ListServerCertificatesRequest = Shapes::StructureShape.new(name: 'ListServerCertificatesRequest')
    ListServerCertificatesResponse = Shapes::StructureShape.new(name: 'ListServerCertificatesResponse')
    ListServiceSpecificCredentialsRequest = Shapes::StructureShape.new(name: 'ListServiceSpecificCredentialsRequest')
    ListServiceSpecificCredentialsResponse = Shapes::StructureShape.new(name: 'ListServiceSpecificCredentialsResponse')
    ListSigningCertificatesRequest = Shapes::StructureShape.new(name: 'ListSigningCertificatesRequest')
    ListSigningCertificatesResponse = Shapes::StructureShape.new(name: 'ListSigningCertificatesResponse')
    ListUserPoliciesRequest = Shapes::StructureShape.new(name: 'ListUserPoliciesRequest')
    ListUserPoliciesResponse = Shapes::StructureShape.new(name: 'ListUserPoliciesResponse')
    ListUserTagsRequest = Shapes::StructureShape.new(name: 'ListUserTagsRequest')
    ListUserTagsResponse = Shapes::StructureShape.new(name: 'ListUserTagsResponse')
    ListUsersRequest = Shapes::StructureShape.new(name: 'ListUsersRequest')
    ListUsersResponse = Shapes::StructureShape.new(name: 'ListUsersResponse')
    ListVirtualMFADevicesRequest = Shapes::StructureShape.new(name: 'ListVirtualMFADevicesRequest')
    ListVirtualMFADevicesResponse = Shapes::StructureShape.new(name: 'ListVirtualMFADevicesResponse')
    LoginProfile = Shapes::StructureShape.new(name: 'LoginProfile')
    MFADevice = Shapes::StructureShape.new(name: 'MFADevice')
    MalformedCertificateException = Shapes::StructureShape.new(name: 'MalformedCertificateException')
    MalformedPolicyDocumentException = Shapes::StructureShape.new(name: 'MalformedPolicyDocumentException')
    ManagedPolicyDetail = Shapes::StructureShape.new(name: 'ManagedPolicyDetail')
    ManagedPolicyDetailListType = Shapes::ListShape.new(name: 'ManagedPolicyDetailListType')
    NoSuchEntityException = Shapes::StructureShape.new(name: 'NoSuchEntityException')
    OpenIDConnectProviderListEntry = Shapes::StructureShape.new(name: 'OpenIDConnectProviderListEntry')
    OpenIDConnectProviderListType = Shapes::ListShape.new(name: 'OpenIDConnectProviderListType')
    OpenIDConnectProviderUrlType = Shapes::StringShape.new(name: 'OpenIDConnectProviderUrlType')
    OrganizationsDecisionDetail = Shapes::StructureShape.new(name: 'OrganizationsDecisionDetail')
    PasswordPolicy = Shapes::StructureShape.new(name: 'PasswordPolicy')
    PasswordPolicyViolationException = Shapes::StructureShape.new(name: 'PasswordPolicyViolationException')
    PermissionsBoundaryAttachmentType = Shapes::StringShape.new(name: 'PermissionsBoundaryAttachmentType')
    PermissionsBoundaryDecisionDetail = Shapes::StructureShape.new(name: 'PermissionsBoundaryDecisionDetail')
    Policy = Shapes::StructureShape.new(name: 'Policy')
    PolicyDetail = Shapes::StructureShape.new(name: 'PolicyDetail')
    PolicyEvaluationDecisionType = Shapes::StringShape.new(name: 'PolicyEvaluationDecisionType')
    PolicyEvaluationException = Shapes::StructureShape.new(name: 'PolicyEvaluationException')
    PolicyGrantingServiceAccess = Shapes::StructureShape.new(name: 'PolicyGrantingServiceAccess')
    PolicyGroup = Shapes::StructureShape.new(name: 'PolicyGroup')
    PolicyGroupListType = Shapes::ListShape.new(name: 'PolicyGroupListType')
    PolicyIdentifierType = Shapes::StringShape.new(name: 'PolicyIdentifierType')
    PolicyNotAttachableException = Shapes::StructureShape.new(name: 'PolicyNotAttachableException')
    PolicyRole = Shapes::StructureShape.new(name: 'PolicyRole')
    PolicyRoleListType = Shapes::ListShape.new(name: 'PolicyRoleListType')
    PolicySourceType = Shapes::StringShape.new(name: 'PolicySourceType')
    PolicyUsageType = Shapes::StringShape.new(name: 'PolicyUsageType')
    PolicyUser = Shapes::StructureShape.new(name: 'PolicyUser')
    PolicyUserListType = Shapes::ListShape.new(name: 'PolicyUserListType')
    PolicyVersion = Shapes::StructureShape.new(name: 'PolicyVersion')
    Position = Shapes::StructureShape.new(name: 'Position')
    PutGroupPolicyRequest = Shapes::StructureShape.new(name: 'PutGroupPolicyRequest')
    PutRolePermissionsBoundaryRequest = Shapes::StructureShape.new(name: 'PutRolePermissionsBoundaryRequest')
    PutRolePolicyRequest = Shapes::StructureShape.new(name: 'PutRolePolicyRequest')
    PutUserPermissionsBoundaryRequest = Shapes::StructureShape.new(name: 'PutUserPermissionsBoundaryRequest')
    PutUserPolicyRequest = Shapes::StructureShape.new(name: 'PutUserPolicyRequest')
    ReasonType = Shapes::StringShape.new(name: 'ReasonType')
    RegionNameType = Shapes::StringShape.new(name: 'RegionNameType')
    RemoveClientIDFromOpenIDConnectProviderRequest = Shapes::StructureShape.new(name: 'RemoveClientIDFromOpenIDConnectProviderRequest')
    RemoveRoleFromInstanceProfileRequest = Shapes::StructureShape.new(name: 'RemoveRoleFromInstanceProfileRequest')
    RemoveUserFromGroupRequest = Shapes::StructureShape.new(name: 'RemoveUserFromGroupRequest')
    ReportContentType = Shapes::BlobShape.new(name: 'ReportContentType')
    ReportFormatType = Shapes::StringShape.new(name: 'ReportFormatType')
    ReportGenerationLimitExceededException = Shapes::StructureShape.new(name: 'ReportGenerationLimitExceededException')
    ReportStateDescriptionType = Shapes::StringShape.new(name: 'ReportStateDescriptionType')
    ReportStateType = Shapes::StringShape.new(name: 'ReportStateType')
    ResetServiceSpecificCredentialRequest = Shapes::StructureShape.new(name: 'ResetServiceSpecificCredentialRequest')
    ResetServiceSpecificCredentialResponse = Shapes::StructureShape.new(name: 'ResetServiceSpecificCredentialResponse')
    ResourceHandlingOptionType = Shapes::StringShape.new(name: 'ResourceHandlingOptionType')
    ResourceNameListType = Shapes::ListShape.new(name: 'ResourceNameListType')
    ResourceNameType = Shapes::StringShape.new(name: 'ResourceNameType')
    ResourceSpecificResult = Shapes::StructureShape.new(name: 'ResourceSpecificResult')
    ResourceSpecificResultListType = Shapes::ListShape.new(name: 'ResourceSpecificResultListType')
    ResyncMFADeviceRequest = Shapes::StructureShape.new(name: 'ResyncMFADeviceRequest')
    Role = Shapes::StructureShape.new(name: 'Role')
    RoleDetail = Shapes::StructureShape.new(name: 'RoleDetail')
    RoleLastUsed = Shapes::StructureShape.new(name: 'RoleLastUsed')
    RoleUsageListType = Shapes::ListShape.new(name: 'RoleUsageListType')
    RoleUsageType = Shapes::StructureShape.new(name: 'RoleUsageType')
    SAMLMetadataDocumentType = Shapes::StringShape.new(name: 'SAMLMetadataDocumentType')
    SAMLProviderListEntry = Shapes::StructureShape.new(name: 'SAMLProviderListEntry')
    SAMLProviderListType = Shapes::ListShape.new(name: 'SAMLProviderListType')
    SAMLProviderNameType = Shapes::StringShape.new(name: 'SAMLProviderNameType')
    SSHPublicKey = Shapes::StructureShape.new(name: 'SSHPublicKey')
    SSHPublicKeyListType = Shapes::ListShape.new(name: 'SSHPublicKeyListType')
    SSHPublicKeyMetadata = Shapes::StructureShape.new(name: 'SSHPublicKeyMetadata')
    ServerCertificate = Shapes::StructureShape.new(name: 'ServerCertificate')
    ServerCertificateMetadata = Shapes::StructureShape.new(name: 'ServerCertificateMetadata')
    ServiceFailureException = Shapes::StructureShape.new(name: 'ServiceFailureException')
    ServiceLastAccessed = Shapes::StructureShape.new(name: 'ServiceLastAccessed')
    ServiceNotSupportedException = Shapes::StructureShape.new(name: 'ServiceNotSupportedException')
    ServiceSpecificCredential = Shapes::StructureShape.new(name: 'ServiceSpecificCredential')
    ServiceSpecificCredentialMetadata = Shapes::StructureShape.new(name: 'ServiceSpecificCredentialMetadata')
    ServiceSpecificCredentialsListType = Shapes::ListShape.new(name: 'ServiceSpecificCredentialsListType')
    ServicesLastAccessed = Shapes::ListShape.new(name: 'ServicesLastAccessed')
    SetDefaultPolicyVersionRequest = Shapes::StructureShape.new(name: 'SetDefaultPolicyVersionRequest')
    SetSecurityTokenServicePreferencesRequest = Shapes::StructureShape.new(name: 'SetSecurityTokenServicePreferencesRequest')
    SigningCertificate = Shapes::StructureShape.new(name: 'SigningCertificate')
    SimulateCustomPolicyRequest = Shapes::StructureShape.new(name: 'SimulateCustomPolicyRequest')
    SimulatePolicyResponse = Shapes::StructureShape.new(name: 'SimulatePolicyResponse')
    SimulatePrincipalPolicyRequest = Shapes::StructureShape.new(name: 'SimulatePrincipalPolicyRequest')
    SimulationPolicyListType = Shapes::ListShape.new(name: 'SimulationPolicyListType')
    Statement = Shapes::StructureShape.new(name: 'Statement')
    StatementListType = Shapes::ListShape.new(name: 'StatementListType')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagRoleRequest = Shapes::StructureShape.new(name: 'TagRoleRequest')
    TagUserRequest = Shapes::StructureShape.new(name: 'TagUserRequest')
    TrackedActionLastAccessed = Shapes::StructureShape.new(name: 'TrackedActionLastAccessed')
    TrackedActionsLastAccessed = Shapes::ListShape.new(name: 'TrackedActionsLastAccessed')
    UnmodifiableEntityException = Shapes::StructureShape.new(name: 'UnmodifiableEntityException')
    UnrecognizedPublicKeyEncodingException = Shapes::StructureShape.new(name: 'UnrecognizedPublicKeyEncodingException')
    UntagRoleRequest = Shapes::StructureShape.new(name: 'UntagRoleRequest')
    UntagUserRequest = Shapes::StructureShape.new(name: 'UntagUserRequest')
    UpdateAccessKeyRequest = Shapes::StructureShape.new(name: 'UpdateAccessKeyRequest')
    UpdateAccountPasswordPolicyRequest = Shapes::StructureShape.new(name: 'UpdateAccountPasswordPolicyRequest')
    UpdateAssumeRolePolicyRequest = Shapes::StructureShape.new(name: 'UpdateAssumeRolePolicyRequest')
    UpdateGroupRequest = Shapes::StructureShape.new(name: 'UpdateGroupRequest')
    UpdateLoginProfileRequest = Shapes::StructureShape.new(name: 'UpdateLoginProfileRequest')
    UpdateOpenIDConnectProviderThumbprintRequest = Shapes::StructureShape.new(name: 'UpdateOpenIDConnectProviderThumbprintRequest')
    UpdateRoleDescriptionRequest = Shapes::StructureShape.new(name: 'UpdateRoleDescriptionRequest')
    UpdateRoleDescriptionResponse = Shapes::StructureShape.new(name: 'UpdateRoleDescriptionResponse')
    UpdateRoleRequest = Shapes::StructureShape.new(name: 'UpdateRoleRequest')
    UpdateRoleResponse = Shapes::StructureShape.new(name: 'UpdateRoleResponse')
    UpdateSAMLProviderRequest = Shapes::StructureShape.new(name: 'UpdateSAMLProviderRequest')
    UpdateSAMLProviderResponse = Shapes::StructureShape.new(name: 'UpdateSAMLProviderResponse')
    UpdateSSHPublicKeyRequest = Shapes::StructureShape.new(name: 'UpdateSSHPublicKeyRequest')
    UpdateServerCertificateRequest = Shapes::StructureShape.new(name: 'UpdateServerCertificateRequest')
    UpdateServiceSpecificCredentialRequest = Shapes::StructureShape.new(name: 'UpdateServiceSpecificCredentialRequest')
    UpdateSigningCertificateRequest = Shapes::StructureShape.new(name: 'UpdateSigningCertificateRequest')
    UpdateUserRequest = Shapes::StructureShape.new(name: 'UpdateUserRequest')
    UploadSSHPublicKeyRequest = Shapes::StructureShape.new(name: 'UploadSSHPublicKeyRequest')
    UploadSSHPublicKeyResponse = Shapes::StructureShape.new(name: 'UploadSSHPublicKeyResponse')
    UploadServerCertificateRequest = Shapes::StructureShape.new(name: 'UploadServerCertificateRequest')
    UploadServerCertificateResponse = Shapes::StructureShape.new(name: 'UploadServerCertificateResponse')
    UploadSigningCertificateRequest = Shapes::StructureShape.new(name: 'UploadSigningCertificateRequest')
    UploadSigningCertificateResponse = Shapes::StructureShape.new(name: 'UploadSigningCertificateResponse')
    User = Shapes::StructureShape.new(name: 'User')
    UserDetail = Shapes::StructureShape.new(name: 'UserDetail')
    VirtualMFADevice = Shapes::StructureShape.new(name: 'VirtualMFADevice')
    accessKeyIdType = Shapes::StringShape.new(name: 'accessKeyIdType')
    accessKeyMetadataListType = Shapes::ListShape.new(name: 'accessKeyMetadataListType')
    accessKeySecretType = Shapes::StringShape.new(name: 'accessKeySecretType')
    accountAliasListType = Shapes::ListShape.new(name: 'accountAliasListType')
    accountAliasType = Shapes::StringShape.new(name: 'accountAliasType')
    arnType = Shapes::StringShape.new(name: 'arnType')
    assignmentStatusType = Shapes::StringShape.new(name: 'assignmentStatusType')
    attachedPoliciesListType = Shapes::ListShape.new(name: 'attachedPoliciesListType')
    attachmentCountType = Shapes::IntegerShape.new(name: 'attachmentCountType')
    authenticationCodeType = Shapes::StringShape.new(name: 'authenticationCodeType')
    booleanObjectType = Shapes::BooleanShape.new(name: 'booleanObjectType')
    booleanType = Shapes::BooleanShape.new(name: 'booleanType')
    certificateBodyType = Shapes::StringShape.new(name: 'certificateBodyType')
    certificateChainType = Shapes::StringShape.new(name: 'certificateChainType')
    certificateIdType = Shapes::StringShape.new(name: 'certificateIdType')
    certificateListType = Shapes::ListShape.new(name: 'certificateListType')
    clientIDListType = Shapes::ListShape.new(name: 'clientIDListType')
    clientIDType = Shapes::StringShape.new(name: 'clientIDType')
    credentialReportExpiredExceptionMessage = Shapes::StringShape.new(name: 'credentialReportExpiredExceptionMessage')
    credentialReportNotPresentExceptionMessage = Shapes::StringShape.new(name: 'credentialReportNotPresentExceptionMessage')
    credentialReportNotReadyExceptionMessage = Shapes::StringShape.new(name: 'credentialReportNotReadyExceptionMessage')
    customSuffixType = Shapes::StringShape.new(name: 'customSuffixType')
    dateType = Shapes::TimestampShape.new(name: 'dateType')
    deleteConflictMessage = Shapes::StringShape.new(name: 'deleteConflictMessage')
    duplicateCertificateMessage = Shapes::StringShape.new(name: 'duplicateCertificateMessage')
    duplicateSSHPublicKeyMessage = Shapes::StringShape.new(name: 'duplicateSSHPublicKeyMessage')
    encodingType = Shapes::StringShape.new(name: 'encodingType')
    entityAlreadyExistsMessage = Shapes::StringShape.new(name: 'entityAlreadyExistsMessage')
    entityDetailsListType = Shapes::ListShape.new(name: 'entityDetailsListType')
    entityListType = Shapes::ListShape.new(name: 'entityListType')
    entityNameType = Shapes::StringShape.new(name: 'entityNameType')
    entityTemporarilyUnmodifiableMessage = Shapes::StringShape.new(name: 'entityTemporarilyUnmodifiableMessage')
    existingUserNameType = Shapes::StringShape.new(name: 'existingUserNameType')
    globalEndpointTokenVersion = Shapes::StringShape.new(name: 'globalEndpointTokenVersion')
    groupDetailListType = Shapes::ListShape.new(name: 'groupDetailListType')
    groupListType = Shapes::ListShape.new(name: 'groupListType')
    groupNameListType = Shapes::ListShape.new(name: 'groupNameListType')
    groupNameType = Shapes::StringShape.new(name: 'groupNameType')
    idType = Shapes::StringShape.new(name: 'idType')
    instanceProfileListType = Shapes::ListShape.new(name: 'instanceProfileListType')
    instanceProfileNameType = Shapes::StringShape.new(name: 'instanceProfileNameType')
    integerType = Shapes::IntegerShape.new(name: 'integerType')
    invalidAuthenticationCodeMessage = Shapes::StringShape.new(name: 'invalidAuthenticationCodeMessage')
    invalidCertificateMessage = Shapes::StringShape.new(name: 'invalidCertificateMessage')
    invalidInputMessage = Shapes::StringShape.new(name: 'invalidInputMessage')
    invalidPublicKeyMessage = Shapes::StringShape.new(name: 'invalidPublicKeyMessage')
    invalidUserTypeMessage = Shapes::StringShape.new(name: 'invalidUserTypeMessage')
    jobIDType = Shapes::StringShape.new(name: 'jobIDType')
    jobStatusType = Shapes::StringShape.new(name: 'jobStatusType')
    keyPairMismatchMessage = Shapes::StringShape.new(name: 'keyPairMismatchMessage')
    limitExceededMessage = Shapes::StringShape.new(name: 'limitExceededMessage')
    listPolicyGrantingServiceAccessResponseListType = Shapes::ListShape.new(name: 'listPolicyGrantingServiceAccessResponseListType')
    malformedCertificateMessage = Shapes::StringShape.new(name: 'malformedCertificateMessage')
    malformedPolicyDocumentMessage = Shapes::StringShape.new(name: 'malformedPolicyDocumentMessage')
    markerType = Shapes::StringShape.new(name: 'markerType')
    maxItemsType = Shapes::IntegerShape.new(name: 'maxItemsType')
    maxPasswordAgeType = Shapes::IntegerShape.new(name: 'maxPasswordAgeType')
    mfaDeviceListType = Shapes::ListShape.new(name: 'mfaDeviceListType')
    minimumPasswordLengthType = Shapes::IntegerShape.new(name: 'minimumPasswordLengthType')
    noSuchEntityMessage = Shapes::StringShape.new(name: 'noSuchEntityMessage')
    organizationsEntityPathType = Shapes::StringShape.new(name: 'organizationsEntityPathType')
    organizationsPolicyIdType = Shapes::StringShape.new(name: 'organizationsPolicyIdType')
    passwordPolicyViolationMessage = Shapes::StringShape.new(name: 'passwordPolicyViolationMessage')
    passwordReusePreventionType = Shapes::IntegerShape.new(name: 'passwordReusePreventionType')
    passwordType = Shapes::StringShape.new(name: 'passwordType')
    pathPrefixType = Shapes::StringShape.new(name: 'pathPrefixType')
    pathType = Shapes::StringShape.new(name: 'pathType')
    policyDescriptionType = Shapes::StringShape.new(name: 'policyDescriptionType')
    policyDetailListType = Shapes::ListShape.new(name: 'policyDetailListType')
    policyDocumentType = Shapes::StringShape.new(name: 'policyDocumentType')
    policyDocumentVersionListType = Shapes::ListShape.new(name: 'policyDocumentVersionListType')
    policyEvaluationErrorMessage = Shapes::StringShape.new(name: 'policyEvaluationErrorMessage')
    policyGrantingServiceAccessListType = Shapes::ListShape.new(name: 'policyGrantingServiceAccessListType')
    policyListType = Shapes::ListShape.new(name: 'policyListType')
    policyNameListType = Shapes::ListShape.new(name: 'policyNameListType')
    policyNameType = Shapes::StringShape.new(name: 'policyNameType')
    policyNotAttachableMessage = Shapes::StringShape.new(name: 'policyNotAttachableMessage')
    policyOwnerEntityType = Shapes::StringShape.new(name: 'policyOwnerEntityType')
    policyPathType = Shapes::StringShape.new(name: 'policyPathType')
    policyScopeType = Shapes::StringShape.new(name: 'policyScopeType')
    policyType = Shapes::StringShape.new(name: 'policyType')
    policyVersionIdType = Shapes::StringShape.new(name: 'policyVersionIdType')
    privateKeyType = Shapes::StringShape.new(name: 'privateKeyType')
    publicKeyFingerprintType = Shapes::StringShape.new(name: 'publicKeyFingerprintType')
    publicKeyIdType = Shapes::StringShape.new(name: 'publicKeyIdType')
    publicKeyMaterialType = Shapes::StringShape.new(name: 'publicKeyMaterialType')
    reportGenerationLimitExceededMessage = Shapes::StringShape.new(name: 'reportGenerationLimitExceededMessage')
    responseMarkerType = Shapes::StringShape.new(name: 'responseMarkerType')
    roleDescriptionType = Shapes::StringShape.new(name: 'roleDescriptionType')
    roleDetailListType = Shapes::ListShape.new(name: 'roleDetailListType')
    roleListType = Shapes::ListShape.new(name: 'roleListType')
    roleMaxSessionDurationType = Shapes::IntegerShape.new(name: 'roleMaxSessionDurationType')
    roleNameType = Shapes::StringShape.new(name: 'roleNameType')
    serialNumberType = Shapes::StringShape.new(name: 'serialNumberType')
    serverCertificateMetadataListType = Shapes::ListShape.new(name: 'serverCertificateMetadataListType')
    serverCertificateNameType = Shapes::StringShape.new(name: 'serverCertificateNameType')
    serviceFailureExceptionMessage = Shapes::StringShape.new(name: 'serviceFailureExceptionMessage')
    serviceName = Shapes::StringShape.new(name: 'serviceName')
    serviceNameType = Shapes::StringShape.new(name: 'serviceNameType')
    serviceNamespaceListType = Shapes::ListShape.new(name: 'serviceNamespaceListType')
    serviceNamespaceType = Shapes::StringShape.new(name: 'serviceNamespaceType')
    serviceNotSupportedMessage = Shapes::StringShape.new(name: 'serviceNotSupportedMessage')
    servicePassword = Shapes::StringShape.new(name: 'servicePassword')
    serviceSpecificCredentialId = Shapes::StringShape.new(name: 'serviceSpecificCredentialId')
    serviceUserName = Shapes::StringShape.new(name: 'serviceUserName')
    sortKeyType = Shapes::StringShape.new(name: 'sortKeyType')
    statusType = Shapes::StringShape.new(name: 'statusType')
    stringType = Shapes::StringShape.new(name: 'stringType')
    summaryKeyType = Shapes::StringShape.new(name: 'summaryKeyType')
    summaryMapType = Shapes::MapShape.new(name: 'summaryMapType')
    summaryValueType = Shapes::IntegerShape.new(name: 'summaryValueType')
    tagKeyListType = Shapes::ListShape.new(name: 'tagKeyListType')
    tagKeyType = Shapes::StringShape.new(name: 'tagKeyType')
    tagListType = Shapes::ListShape.new(name: 'tagListType')
    tagValueType = Shapes::StringShape.new(name: 'tagValueType')
    thumbprintListType = Shapes::ListShape.new(name: 'thumbprintListType')
    thumbprintType = Shapes::StringShape.new(name: 'thumbprintType')
    unmodifiableEntityMessage = Shapes::StringShape.new(name: 'unmodifiableEntityMessage')
    unrecognizedPublicKeyEncodingMessage = Shapes::StringShape.new(name: 'unrecognizedPublicKeyEncodingMessage')
    userDetailListType = Shapes::ListShape.new(name: 'userDetailListType')
    userListType = Shapes::ListShape.new(name: 'userListType')
    userNameType = Shapes::StringShape.new(name: 'userNameType')
    virtualMFADeviceListType = Shapes::ListShape.new(name: 'virtualMFADeviceListType')
    virtualMFADeviceName = Shapes::StringShape.new(name: 'virtualMFADeviceName')

    AccessDetail.add_member(:service_name, Shapes::ShapeRef.new(shape: serviceNameType, required: true, location_name: "ServiceName"))
    AccessDetail.add_member(:service_namespace, Shapes::ShapeRef.new(shape: serviceNamespaceType, required: true, location_name: "ServiceNamespace"))
    AccessDetail.add_member(:region, Shapes::ShapeRef.new(shape: stringType, location_name: "Region"))
    AccessDetail.add_member(:entity_path, Shapes::ShapeRef.new(shape: organizationsEntityPathType, location_name: "EntityPath"))
    AccessDetail.add_member(:last_authenticated_time, Shapes::ShapeRef.new(shape: dateType, location_name: "LastAuthenticatedTime"))
    AccessDetail.add_member(:total_authenticated_entities, Shapes::ShapeRef.new(shape: integerType, location_name: "TotalAuthenticatedEntities"))
    AccessDetail.struct_class = Types::AccessDetail

    AccessDetails.member = Shapes::ShapeRef.new(shape: AccessDetail)

    AccessKey.add_member(:user_name, Shapes::ShapeRef.new(shape: userNameType, required: true, location_name: "UserName"))
    AccessKey.add_member(:access_key_id, Shapes::ShapeRef.new(shape: accessKeyIdType, required: true, location_name: "AccessKeyId"))
    AccessKey.add_member(:status, Shapes::ShapeRef.new(shape: statusType, required: true, location_name: "Status"))
    AccessKey.add_member(:secret_access_key, Shapes::ShapeRef.new(shape: accessKeySecretType, required: true, location_name: "SecretAccessKey"))
    AccessKey.add_member(:create_date, Shapes::ShapeRef.new(shape: dateType, location_name: "CreateDate"))
    AccessKey.struct_class = Types::AccessKey

    AccessKeyLastUsed.add_member(:last_used_date, Shapes::ShapeRef.new(shape: dateType, required: true, location_name: "LastUsedDate"))
    AccessKeyLastUsed.add_member(:service_name, Shapes::ShapeRef.new(shape: stringType, required: true, location_name: "ServiceName"))
    AccessKeyLastUsed.add_member(:region, Shapes::ShapeRef.new(shape: stringType, required: true, location_name: "Region"))
    AccessKeyLastUsed.struct_class = Types::AccessKeyLastUsed

    AccessKeyMetadata.add_member(:user_name, Shapes::ShapeRef.new(shape: userNameType, location_name: "UserName"))
    AccessKeyMetadata.add_member(:access_key_id, Shapes::ShapeRef.new(shape: accessKeyIdType, location_name: "AccessKeyId"))
    AccessKeyMetadata.add_member(:status, Shapes::ShapeRef.new(shape: statusType, location_name: "Status"))
    AccessKeyMetadata.add_member(:create_date, Shapes::ShapeRef.new(shape: dateType, location_name: "CreateDate"))
    AccessKeyMetadata.struct_class = Types::AccessKeyMetadata

    ActionNameListType.member = Shapes::ShapeRef.new(shape: ActionNameType)

    AddClientIDToOpenIDConnectProviderRequest.add_member(:open_id_connect_provider_arn, Shapes::ShapeRef.new(shape: arnType, required: true, location_name: "OpenIDConnectProviderArn"))
    AddClientIDToOpenIDConnectProviderRequest.add_member(:client_id, Shapes::ShapeRef.new(shape: clientIDType, required: true, location_name: "ClientID"))
    AddClientIDToOpenIDConnectProviderRequest.struct_class = Types::AddClientIDToOpenIDConnectProviderRequest

    AddRoleToInstanceProfileRequest.add_member(:instance_profile_name, Shapes::ShapeRef.new(shape: instanceProfileNameType, required: true, location_name: "InstanceProfileName"))
    AddRoleToInstanceProfileRequest.add_member(:role_name, Shapes::ShapeRef.new(shape: roleNameType, required: true, location_name: "RoleName"))
    AddRoleToInstanceProfileRequest.struct_class = Types::AddRoleToInstanceProfileRequest

    AddUserToGroupRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: groupNameType, required: true, location_name: "GroupName"))
    AddUserToGroupRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: existingUserNameType, required: true, location_name: "UserName"))
    AddUserToGroupRequest.struct_class = Types::AddUserToGroupRequest

    ArnListType.member = Shapes::ShapeRef.new(shape: arnType)

    AttachGroupPolicyRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: groupNameType, required: true, location_name: "GroupName"))
    AttachGroupPolicyRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: arnType, required: true, location_name: "PolicyArn"))
    AttachGroupPolicyRequest.struct_class = Types::AttachGroupPolicyRequest

    AttachRolePolicyRequest.add_member(:role_name, Shapes::ShapeRef.new(shape: roleNameType, required: true, location_name: "RoleName"))
    AttachRolePolicyRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: arnType, required: true, location_name: "PolicyArn"))
    AttachRolePolicyRequest.struct_class = Types::AttachRolePolicyRequest

    AttachUserPolicyRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: userNameType, required: true, location_name: "UserName"))
    AttachUserPolicyRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: arnType, required: true, location_name: "PolicyArn"))
    AttachUserPolicyRequest.struct_class = Types::AttachUserPolicyRequest

    AttachedPermissionsBoundary.add_member(:permissions_boundary_type, Shapes::ShapeRef.new(shape: PermissionsBoundaryAttachmentType, location_name: "PermissionsBoundaryType"))
    AttachedPermissionsBoundary.add_member(:permissions_boundary_arn, Shapes::ShapeRef.new(shape: arnType, location_name: "PermissionsBoundaryArn"))
    AttachedPermissionsBoundary.struct_class = Types::AttachedPermissionsBoundary

    AttachedPolicy.add_member(:policy_name, Shapes::ShapeRef.new(shape: policyNameType, location_name: "PolicyName"))
    AttachedPolicy.add_member(:policy_arn, Shapes::ShapeRef.new(shape: arnType, location_name: "PolicyArn"))
    AttachedPolicy.struct_class = Types::AttachedPolicy

    ChangePasswordRequest.add_member(:old_password, Shapes::ShapeRef.new(shape: passwordType, required: true, location_name: "OldPassword"))
    ChangePasswordRequest.add_member(:new_password, Shapes::ShapeRef.new(shape: passwordType, required: true, location_name: "NewPassword"))
    ChangePasswordRequest.struct_class = Types::ChangePasswordRequest

    ConcurrentModificationException.add_member(:message, Shapes::ShapeRef.new(shape: ConcurrentModificationMessage, location_name: "message"))
    ConcurrentModificationException.struct_class = Types::ConcurrentModificationException

    ContextEntry.add_member(:context_key_name, Shapes::ShapeRef.new(shape: ContextKeyNameType, location_name: "ContextKeyName"))
    ContextEntry.add_member(:context_key_values, Shapes::ShapeRef.new(shape: ContextKeyValueListType, location_name: "ContextKeyValues"))
    ContextEntry.add_member(:context_key_type, Shapes::ShapeRef.new(shape: ContextKeyTypeEnum, location_name: "ContextKeyType"))
    ContextEntry.struct_class = Types::ContextEntry

    ContextEntryListType.member = Shapes::ShapeRef.new(shape: ContextEntry)

    ContextKeyNamesResultListType.member = Shapes::ShapeRef.new(shape: ContextKeyNameType)

    ContextKeyValueListType.member = Shapes::ShapeRef.new(shape: ContextKeyValueType)

    CreateAccessKeyRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: existingUserNameType, location_name: "UserName"))
    CreateAccessKeyRequest.struct_class = Types::CreateAccessKeyRequest

    CreateAccessKeyResponse.add_member(:access_key, Shapes::ShapeRef.new(shape: AccessKey, required: true, location_name: "AccessKey"))
    CreateAccessKeyResponse.struct_class = Types::CreateAccessKeyResponse

    CreateAccountAliasRequest.add_member(:account_alias, Shapes::ShapeRef.new(shape: accountAliasType, required: true, location_name: "AccountAlias"))
    CreateAccountAliasRequest.struct_class = Types::CreateAccountAliasRequest

    CreateGroupRequest.add_member(:path, Shapes::ShapeRef.new(shape: pathType, location_name: "Path"))
    CreateGroupRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: groupNameType, required: true, location_name: "GroupName"))
    CreateGroupRequest.struct_class = Types::CreateGroupRequest

    CreateGroupResponse.add_member(:group, Shapes::ShapeRef.new(shape: Group, required: true, location_name: "Group"))
    CreateGroupResponse.struct_class = Types::CreateGroupResponse

    CreateInstanceProfileRequest.add_member(:instance_profile_name, Shapes::ShapeRef.new(shape: instanceProfileNameType, required: true, location_name: "InstanceProfileName"))
    CreateInstanceProfileRequest.add_member(:path, Shapes::ShapeRef.new(shape: pathType, location_name: "Path"))
    CreateInstanceProfileRequest.struct_class = Types::CreateInstanceProfileRequest

    CreateInstanceProfileResponse.add_member(:instance_profile, Shapes::ShapeRef.new(shape: InstanceProfile, required: true, location_name: "InstanceProfile"))
    CreateInstanceProfileResponse.struct_class = Types::CreateInstanceProfileResponse

    CreateLoginProfileRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: userNameType, required: true, location_name: "UserName"))
    CreateLoginProfileRequest.add_member(:password, Shapes::ShapeRef.new(shape: passwordType, required: true, location_name: "Password"))
    CreateLoginProfileRequest.add_member(:password_reset_required, Shapes::ShapeRef.new(shape: booleanType, location_name: "PasswordResetRequired"))
    CreateLoginProfileRequest.struct_class = Types::CreateLoginProfileRequest

    CreateLoginProfileResponse.add_member(:login_profile, Shapes::ShapeRef.new(shape: LoginProfile, required: true, location_name: "LoginProfile"))
    CreateLoginProfileResponse.struct_class = Types::CreateLoginProfileResponse

    CreateOpenIDConnectProviderRequest.add_member(:url, Shapes::ShapeRef.new(shape: OpenIDConnectProviderUrlType, required: true, location_name: "Url"))
    CreateOpenIDConnectProviderRequest.add_member(:client_id_list, Shapes::ShapeRef.new(shape: clientIDListType, location_name: "ClientIDList"))
    CreateOpenIDConnectProviderRequest.add_member(:thumbprint_list, Shapes::ShapeRef.new(shape: thumbprintListType, required: true, location_name: "ThumbprintList"))
    CreateOpenIDConnectProviderRequest.struct_class = Types::CreateOpenIDConnectProviderRequest

    CreateOpenIDConnectProviderResponse.add_member(:open_id_connect_provider_arn, Shapes::ShapeRef.new(shape: arnType, location_name: "OpenIDConnectProviderArn"))
    CreateOpenIDConnectProviderResponse.struct_class = Types::CreateOpenIDConnectProviderResponse

    CreatePolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: policyNameType, required: true, location_name: "PolicyName"))
    CreatePolicyRequest.add_member(:path, Shapes::ShapeRef.new(shape: policyPathType, location_name: "Path"))
    CreatePolicyRequest.add_member(:policy_document, Shapes::ShapeRef.new(shape: policyDocumentType, required: true, location_name: "PolicyDocument"))
    CreatePolicyRequest.add_member(:description, Shapes::ShapeRef.new(shape: policyDescriptionType, location_name: "Description"))
    CreatePolicyRequest.struct_class = Types::CreatePolicyRequest

    CreatePolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, location_name: "Policy"))
    CreatePolicyResponse.struct_class = Types::CreatePolicyResponse

    CreatePolicyVersionRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: arnType, required: true, location_name: "PolicyArn"))
    CreatePolicyVersionRequest.add_member(:policy_document, Shapes::ShapeRef.new(shape: policyDocumentType, required: true, location_name: "PolicyDocument"))
    CreatePolicyVersionRequest.add_member(:set_as_default, Shapes::ShapeRef.new(shape: booleanType, location_name: "SetAsDefault"))
    CreatePolicyVersionRequest.struct_class = Types::CreatePolicyVersionRequest

    CreatePolicyVersionResponse.add_member(:policy_version, Shapes::ShapeRef.new(shape: PolicyVersion, location_name: "PolicyVersion"))
    CreatePolicyVersionResponse.struct_class = Types::CreatePolicyVersionResponse

    CreateRoleRequest.add_member(:path, Shapes::ShapeRef.new(shape: pathType, location_name: "Path"))
    CreateRoleRequest.add_member(:role_name, Shapes::ShapeRef.new(shape: roleNameType, required: true, location_name: "RoleName"))
    CreateRoleRequest.add_member(:assume_role_policy_document, Shapes::ShapeRef.new(shape: policyDocumentType, required: true, location_name: "AssumeRolePolicyDocument"))
    CreateRoleRequest.add_member(:description, Shapes::ShapeRef.new(shape: roleDescriptionType, location_name: "Description"))
    CreateRoleRequest.add_member(:max_session_duration, Shapes::ShapeRef.new(shape: roleMaxSessionDurationType, location_name: "MaxSessionDuration"))
    CreateRoleRequest.add_member(:permissions_boundary, Shapes::ShapeRef.new(shape: arnType, location_name: "PermissionsBoundary"))
    CreateRoleRequest.add_member(:tags, Shapes::ShapeRef.new(shape: tagListType, location_name: "Tags"))
    CreateRoleRequest.struct_class = Types::CreateRoleRequest

    CreateRoleResponse.add_member(:role, Shapes::ShapeRef.new(shape: Role, required: true, location_name: "Role"))
    CreateRoleResponse.struct_class = Types::CreateRoleResponse

    CreateSAMLProviderRequest.add_member(:saml_metadata_document, Shapes::ShapeRef.new(shape: SAMLMetadataDocumentType, required: true, location_name: "SAMLMetadataDocument"))
    CreateSAMLProviderRequest.add_member(:name, Shapes::ShapeRef.new(shape: SAMLProviderNameType, required: true, location_name: "Name"))
    CreateSAMLProviderRequest.struct_class = Types::CreateSAMLProviderRequest

    CreateSAMLProviderResponse.add_member(:saml_provider_arn, Shapes::ShapeRef.new(shape: arnType, location_name: "SAMLProviderArn"))
    CreateSAMLProviderResponse.struct_class = Types::CreateSAMLProviderResponse

    CreateServiceLinkedRoleRequest.add_member(:aws_service_name, Shapes::ShapeRef.new(shape: groupNameType, required: true, location_name: "AWSServiceName"))
    CreateServiceLinkedRoleRequest.add_member(:description, Shapes::ShapeRef.new(shape: roleDescriptionType, location_name: "Description"))
    CreateServiceLinkedRoleRequest.add_member(:custom_suffix, Shapes::ShapeRef.new(shape: customSuffixType, location_name: "CustomSuffix"))
    CreateServiceLinkedRoleRequest.struct_class = Types::CreateServiceLinkedRoleRequest

    CreateServiceLinkedRoleResponse.add_member(:role, Shapes::ShapeRef.new(shape: Role, location_name: "Role"))
    CreateServiceLinkedRoleResponse.struct_class = Types::CreateServiceLinkedRoleResponse

    CreateServiceSpecificCredentialRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: userNameType, required: true, location_name: "UserName"))
    CreateServiceSpecificCredentialRequest.add_member(:service_name, Shapes::ShapeRef.new(shape: serviceName, required: true, location_name: "ServiceName"))
    CreateServiceSpecificCredentialRequest.struct_class = Types::CreateServiceSpecificCredentialRequest

    CreateServiceSpecificCredentialResponse.add_member(:service_specific_credential, Shapes::ShapeRef.new(shape: ServiceSpecificCredential, location_name: "ServiceSpecificCredential"))
    CreateServiceSpecificCredentialResponse.struct_class = Types::CreateServiceSpecificCredentialResponse

    CreateUserRequest.add_member(:path, Shapes::ShapeRef.new(shape: pathType, location_name: "Path"))
    CreateUserRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: userNameType, required: true, location_name: "UserName"))
    CreateUserRequest.add_member(:permissions_boundary, Shapes::ShapeRef.new(shape: arnType, location_name: "PermissionsBoundary"))
    CreateUserRequest.add_member(:tags, Shapes::ShapeRef.new(shape: tagListType, location_name: "Tags"))
    CreateUserRequest.struct_class = Types::CreateUserRequest

    CreateUserResponse.add_member(:user, Shapes::ShapeRef.new(shape: User, location_name: "User"))
    CreateUserResponse.struct_class = Types::CreateUserResponse

    CreateVirtualMFADeviceRequest.add_member(:path, Shapes::ShapeRef.new(shape: pathType, location_name: "Path"))
    CreateVirtualMFADeviceRequest.add_member(:virtual_mfa_device_name, Shapes::ShapeRef.new(shape: virtualMFADeviceName, required: true, location_name: "VirtualMFADeviceName"))
    CreateVirtualMFADeviceRequest.struct_class = Types::CreateVirtualMFADeviceRequest

    CreateVirtualMFADeviceResponse.add_member(:virtual_mfa_device, Shapes::ShapeRef.new(shape: VirtualMFADevice, required: true, location_name: "VirtualMFADevice"))
    CreateVirtualMFADeviceResponse.struct_class = Types::CreateVirtualMFADeviceResponse

    CredentialReportExpiredException.add_member(:message, Shapes::ShapeRef.new(shape: credentialReportExpiredExceptionMessage, location_name: "message"))
    CredentialReportExpiredException.struct_class = Types::CredentialReportExpiredException

    CredentialReportNotPresentException.add_member(:message, Shapes::ShapeRef.new(shape: credentialReportNotPresentExceptionMessage, location_name: "message"))
    CredentialReportNotPresentException.struct_class = Types::CredentialReportNotPresentException

    CredentialReportNotReadyException.add_member(:message, Shapes::ShapeRef.new(shape: credentialReportNotReadyExceptionMessage, location_name: "message"))
    CredentialReportNotReadyException.struct_class = Types::CredentialReportNotReadyException

    DeactivateMFADeviceRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: existingUserNameType, required: true, location_name: "UserName"))
    DeactivateMFADeviceRequest.add_member(:serial_number, Shapes::ShapeRef.new(shape: serialNumberType, required: true, location_name: "SerialNumber"))
    DeactivateMFADeviceRequest.struct_class = Types::DeactivateMFADeviceRequest

    DeleteAccessKeyRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: existingUserNameType, location_name: "UserName"))
    DeleteAccessKeyRequest.add_member(:access_key_id, Shapes::ShapeRef.new(shape: accessKeyIdType, required: true, location_name: "AccessKeyId"))
    DeleteAccessKeyRequest.struct_class = Types::DeleteAccessKeyRequest

    DeleteAccountAliasRequest.add_member(:account_alias, Shapes::ShapeRef.new(shape: accountAliasType, required: true, location_name: "AccountAlias"))
    DeleteAccountAliasRequest.struct_class = Types::DeleteAccountAliasRequest

    DeleteConflictException.add_member(:message, Shapes::ShapeRef.new(shape: deleteConflictMessage, location_name: "message"))
    DeleteConflictException.struct_class = Types::DeleteConflictException

    DeleteGroupPolicyRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: groupNameType, required: true, location_name: "GroupName"))
    DeleteGroupPolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: policyNameType, required: true, location_name: "PolicyName"))
    DeleteGroupPolicyRequest.struct_class = Types::DeleteGroupPolicyRequest

    DeleteGroupRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: groupNameType, required: true, location_name: "GroupName"))
    DeleteGroupRequest.struct_class = Types::DeleteGroupRequest

    DeleteInstanceProfileRequest.add_member(:instance_profile_name, Shapes::ShapeRef.new(shape: instanceProfileNameType, required: true, location_name: "InstanceProfileName"))
    DeleteInstanceProfileRequest.struct_class = Types::DeleteInstanceProfileRequest

    DeleteLoginProfileRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: userNameType, required: true, location_name: "UserName"))
    DeleteLoginProfileRequest.struct_class = Types::DeleteLoginProfileRequest

    DeleteOpenIDConnectProviderRequest.add_member(:open_id_connect_provider_arn, Shapes::ShapeRef.new(shape: arnType, required: true, location_name: "OpenIDConnectProviderArn"))
    DeleteOpenIDConnectProviderRequest.struct_class = Types::DeleteOpenIDConnectProviderRequest

    DeletePolicyRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: arnType, required: true, location_name: "PolicyArn"))
    DeletePolicyRequest.struct_class = Types::DeletePolicyRequest

    DeletePolicyVersionRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: arnType, required: true, location_name: "PolicyArn"))
    DeletePolicyVersionRequest.add_member(:version_id, Shapes::ShapeRef.new(shape: policyVersionIdType, required: true, location_name: "VersionId"))
    DeletePolicyVersionRequest.struct_class = Types::DeletePolicyVersionRequest

    DeleteRolePermissionsBoundaryRequest.add_member(:role_name, Shapes::ShapeRef.new(shape: roleNameType, required: true, location_name: "RoleName"))
    DeleteRolePermissionsBoundaryRequest.struct_class = Types::DeleteRolePermissionsBoundaryRequest

    DeleteRolePolicyRequest.add_member(:role_name, Shapes::ShapeRef.new(shape: roleNameType, required: true, location_name: "RoleName"))
    DeleteRolePolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: policyNameType, required: true, location_name: "PolicyName"))
    DeleteRolePolicyRequest.struct_class = Types::DeleteRolePolicyRequest

    DeleteRoleRequest.add_member(:role_name, Shapes::ShapeRef.new(shape: roleNameType, required: true, location_name: "RoleName"))
    DeleteRoleRequest.struct_class = Types::DeleteRoleRequest

    DeleteSAMLProviderRequest.add_member(:saml_provider_arn, Shapes::ShapeRef.new(shape: arnType, required: true, location_name: "SAMLProviderArn"))
    DeleteSAMLProviderRequest.struct_class = Types::DeleteSAMLProviderRequest

    DeleteSSHPublicKeyRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: userNameType, required: true, location_name: "UserName"))
    DeleteSSHPublicKeyRequest.add_member(:ssh_public_key_id, Shapes::ShapeRef.new(shape: publicKeyIdType, required: true, location_name: "SSHPublicKeyId"))
    DeleteSSHPublicKeyRequest.struct_class = Types::DeleteSSHPublicKeyRequest

    DeleteServerCertificateRequest.add_member(:server_certificate_name, Shapes::ShapeRef.new(shape: serverCertificateNameType, required: true, location_name: "ServerCertificateName"))
    DeleteServerCertificateRequest.struct_class = Types::DeleteServerCertificateRequest

    DeleteServiceLinkedRoleRequest.add_member(:role_name, Shapes::ShapeRef.new(shape: roleNameType, required: true, location_name: "RoleName"))
    DeleteServiceLinkedRoleRequest.struct_class = Types::DeleteServiceLinkedRoleRequest

    DeleteServiceLinkedRoleResponse.add_member(:deletion_task_id, Shapes::ShapeRef.new(shape: DeletionTaskIdType, required: true, location_name: "DeletionTaskId"))
    DeleteServiceLinkedRoleResponse.struct_class = Types::DeleteServiceLinkedRoleResponse

    DeleteServiceSpecificCredentialRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: userNameType, location_name: "UserName"))
    DeleteServiceSpecificCredentialRequest.add_member(:service_specific_credential_id, Shapes::ShapeRef.new(shape: serviceSpecificCredentialId, required: true, location_name: "ServiceSpecificCredentialId"))
    DeleteServiceSpecificCredentialRequest.struct_class = Types::DeleteServiceSpecificCredentialRequest

    DeleteSigningCertificateRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: existingUserNameType, location_name: "UserName"))
    DeleteSigningCertificateRequest.add_member(:certificate_id, Shapes::ShapeRef.new(shape: certificateIdType, required: true, location_name: "CertificateId"))
    DeleteSigningCertificateRequest.struct_class = Types::DeleteSigningCertificateRequest

    DeleteUserPermissionsBoundaryRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: userNameType, required: true, location_name: "UserName"))
    DeleteUserPermissionsBoundaryRequest.struct_class = Types::DeleteUserPermissionsBoundaryRequest

    DeleteUserPolicyRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: existingUserNameType, required: true, location_name: "UserName"))
    DeleteUserPolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: policyNameType, required: true, location_name: "PolicyName"))
    DeleteUserPolicyRequest.struct_class = Types::DeleteUserPolicyRequest

    DeleteUserRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: existingUserNameType, required: true, location_name: "UserName"))
    DeleteUserRequest.struct_class = Types::DeleteUserRequest

    DeleteVirtualMFADeviceRequest.add_member(:serial_number, Shapes::ShapeRef.new(shape: serialNumberType, required: true, location_name: "SerialNumber"))
    DeleteVirtualMFADeviceRequest.struct_class = Types::DeleteVirtualMFADeviceRequest

    DeletionTaskFailureReasonType.add_member(:reason, Shapes::ShapeRef.new(shape: ReasonType, location_name: "Reason"))
    DeletionTaskFailureReasonType.add_member(:role_usage_list, Shapes::ShapeRef.new(shape: RoleUsageListType, location_name: "RoleUsageList"))
    DeletionTaskFailureReasonType.struct_class = Types::DeletionTaskFailureReasonType

    DetachGroupPolicyRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: groupNameType, required: true, location_name: "GroupName"))
    DetachGroupPolicyRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: arnType, required: true, location_name: "PolicyArn"))
    DetachGroupPolicyRequest.struct_class = Types::DetachGroupPolicyRequest

    DetachRolePolicyRequest.add_member(:role_name, Shapes::ShapeRef.new(shape: roleNameType, required: true, location_name: "RoleName"))
    DetachRolePolicyRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: arnType, required: true, location_name: "PolicyArn"))
    DetachRolePolicyRequest.struct_class = Types::DetachRolePolicyRequest

    DetachUserPolicyRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: userNameType, required: true, location_name: "UserName"))
    DetachUserPolicyRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: arnType, required: true, location_name: "PolicyArn"))
    DetachUserPolicyRequest.struct_class = Types::DetachUserPolicyRequest

    DuplicateCertificateException.add_member(:message, Shapes::ShapeRef.new(shape: duplicateCertificateMessage, location_name: "message"))
    DuplicateCertificateException.struct_class = Types::DuplicateCertificateException

    DuplicateSSHPublicKeyException.add_member(:message, Shapes::ShapeRef.new(shape: duplicateSSHPublicKeyMessage, location_name: "message"))
    DuplicateSSHPublicKeyException.struct_class = Types::DuplicateSSHPublicKeyException

    EnableMFADeviceRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: existingUserNameType, required: true, location_name: "UserName"))
    EnableMFADeviceRequest.add_member(:serial_number, Shapes::ShapeRef.new(shape: serialNumberType, required: true, location_name: "SerialNumber"))
    EnableMFADeviceRequest.add_member(:authentication_code_1, Shapes::ShapeRef.new(shape: authenticationCodeType, required: true, location_name: "AuthenticationCode1"))
    EnableMFADeviceRequest.add_member(:authentication_code_2, Shapes::ShapeRef.new(shape: authenticationCodeType, required: true, location_name: "AuthenticationCode2"))
    EnableMFADeviceRequest.struct_class = Types::EnableMFADeviceRequest

    EntityAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: entityAlreadyExistsMessage, location_name: "message"))
    EntityAlreadyExistsException.struct_class = Types::EntityAlreadyExistsException

    EntityDetails.add_member(:entity_info, Shapes::ShapeRef.new(shape: EntityInfo, required: true, location_name: "EntityInfo"))
    EntityDetails.add_member(:last_authenticated, Shapes::ShapeRef.new(shape: dateType, location_name: "LastAuthenticated"))
    EntityDetails.struct_class = Types::EntityDetails

    EntityInfo.add_member(:arn, Shapes::ShapeRef.new(shape: arnType, required: true, location_name: "Arn"))
    EntityInfo.add_member(:name, Shapes::ShapeRef.new(shape: userNameType, required: true, location_name: "Name"))
    EntityInfo.add_member(:type, Shapes::ShapeRef.new(shape: policyOwnerEntityType, required: true, location_name: "Type"))
    EntityInfo.add_member(:id, Shapes::ShapeRef.new(shape: idType, required: true, location_name: "Id"))
    EntityInfo.add_member(:path, Shapes::ShapeRef.new(shape: pathType, location_name: "Path"))
    EntityInfo.struct_class = Types::EntityInfo

    EntityTemporarilyUnmodifiableException.add_member(:message, Shapes::ShapeRef.new(shape: entityTemporarilyUnmodifiableMessage, location_name: "message"))
    EntityTemporarilyUnmodifiableException.struct_class = Types::EntityTemporarilyUnmodifiableException

    ErrorDetails.add_member(:message, Shapes::ShapeRef.new(shape: stringType, required: true, location_name: "Message"))
    ErrorDetails.add_member(:code, Shapes::ShapeRef.new(shape: stringType, required: true, location_name: "Code"))
    ErrorDetails.struct_class = Types::ErrorDetails

    EvalDecisionDetailsType.key = Shapes::ShapeRef.new(shape: EvalDecisionSourceType)
    EvalDecisionDetailsType.value = Shapes::ShapeRef.new(shape: PolicyEvaluationDecisionType)

    EvaluationResult.add_member(:eval_action_name, Shapes::ShapeRef.new(shape: ActionNameType, required: true, location_name: "EvalActionName"))
    EvaluationResult.add_member(:eval_resource_name, Shapes::ShapeRef.new(shape: ResourceNameType, location_name: "EvalResourceName"))
    EvaluationResult.add_member(:eval_decision, Shapes::ShapeRef.new(shape: PolicyEvaluationDecisionType, required: true, location_name: "EvalDecision"))
    EvaluationResult.add_member(:matched_statements, Shapes::ShapeRef.new(shape: StatementListType, location_name: "MatchedStatements"))
    EvaluationResult.add_member(:missing_context_values, Shapes::ShapeRef.new(shape: ContextKeyNamesResultListType, location_name: "MissingContextValues"))
    EvaluationResult.add_member(:organizations_decision_detail, Shapes::ShapeRef.new(shape: OrganizationsDecisionDetail, location_name: "OrganizationsDecisionDetail"))
    EvaluationResult.add_member(:permissions_boundary_decision_detail, Shapes::ShapeRef.new(shape: PermissionsBoundaryDecisionDetail, location_name: "PermissionsBoundaryDecisionDetail"))
    EvaluationResult.add_member(:eval_decision_details, Shapes::ShapeRef.new(shape: EvalDecisionDetailsType, location_name: "EvalDecisionDetails"))
    EvaluationResult.add_member(:resource_specific_results, Shapes::ShapeRef.new(shape: ResourceSpecificResultListType, location_name: "ResourceSpecificResults"))
    EvaluationResult.struct_class = Types::EvaluationResult

    EvaluationResultsListType.member = Shapes::ShapeRef.new(shape: EvaluationResult)

    GenerateCredentialReportResponse.add_member(:state, Shapes::ShapeRef.new(shape: ReportStateType, location_name: "State"))
    GenerateCredentialReportResponse.add_member(:description, Shapes::ShapeRef.new(shape: ReportStateDescriptionType, location_name: "Description"))
    GenerateCredentialReportResponse.struct_class = Types::GenerateCredentialReportResponse

    GenerateOrganizationsAccessReportRequest.add_member(:entity_path, Shapes::ShapeRef.new(shape: organizationsEntityPathType, required: true, location_name: "EntityPath"))
    GenerateOrganizationsAccessReportRequest.add_member(:organizations_policy_id, Shapes::ShapeRef.new(shape: organizationsPolicyIdType, location_name: "OrganizationsPolicyId"))
    GenerateOrganizationsAccessReportRequest.struct_class = Types::GenerateOrganizationsAccessReportRequest

    GenerateOrganizationsAccessReportResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: jobIDType, location_name: "JobId"))
    GenerateOrganizationsAccessReportResponse.struct_class = Types::GenerateOrganizationsAccessReportResponse

    GenerateServiceLastAccessedDetailsRequest.add_member(:arn, Shapes::ShapeRef.new(shape: arnType, required: true, location_name: "Arn"))
    GenerateServiceLastAccessedDetailsRequest.add_member(:granularity, Shapes::ShapeRef.new(shape: AccessAdvisorUsageGranularityType, location_name: "Granularity"))
    GenerateServiceLastAccessedDetailsRequest.struct_class = Types::GenerateServiceLastAccessedDetailsRequest

    GenerateServiceLastAccessedDetailsResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: jobIDType, location_name: "JobId"))
    GenerateServiceLastAccessedDetailsResponse.struct_class = Types::GenerateServiceLastAccessedDetailsResponse

    GetAccessKeyLastUsedRequest.add_member(:access_key_id, Shapes::ShapeRef.new(shape: accessKeyIdType, required: true, location_name: "AccessKeyId"))
    GetAccessKeyLastUsedRequest.struct_class = Types::GetAccessKeyLastUsedRequest

    GetAccessKeyLastUsedResponse.add_member(:user_name, Shapes::ShapeRef.new(shape: existingUserNameType, location_name: "UserName"))
    GetAccessKeyLastUsedResponse.add_member(:access_key_last_used, Shapes::ShapeRef.new(shape: AccessKeyLastUsed, location_name: "AccessKeyLastUsed"))
    GetAccessKeyLastUsedResponse.struct_class = Types::GetAccessKeyLastUsedResponse

    GetAccountAuthorizationDetailsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: entityListType, location_name: "Filter"))
    GetAccountAuthorizationDetailsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: maxItemsType, location_name: "MaxItems"))
    GetAccountAuthorizationDetailsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: markerType, location_name: "Marker"))
    GetAccountAuthorizationDetailsRequest.struct_class = Types::GetAccountAuthorizationDetailsRequest

    GetAccountAuthorizationDetailsResponse.add_member(:user_detail_list, Shapes::ShapeRef.new(shape: userDetailListType, location_name: "UserDetailList"))
    GetAccountAuthorizationDetailsResponse.add_member(:group_detail_list, Shapes::ShapeRef.new(shape: groupDetailListType, location_name: "GroupDetailList"))
    GetAccountAuthorizationDetailsResponse.add_member(:role_detail_list, Shapes::ShapeRef.new(shape: roleDetailListType, location_name: "RoleDetailList"))
    GetAccountAuthorizationDetailsResponse.add_member(:policies, Shapes::ShapeRef.new(shape: ManagedPolicyDetailListType, location_name: "Policies"))
    GetAccountAuthorizationDetailsResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: booleanType, location_name: "IsTruncated"))
    GetAccountAuthorizationDetailsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: responseMarkerType, location_name: "Marker"))
    GetAccountAuthorizationDetailsResponse.struct_class = Types::GetAccountAuthorizationDetailsResponse

    GetAccountPasswordPolicyResponse.add_member(:password_policy, Shapes::ShapeRef.new(shape: PasswordPolicy, required: true, location_name: "PasswordPolicy"))
    GetAccountPasswordPolicyResponse.struct_class = Types::GetAccountPasswordPolicyResponse

    GetAccountSummaryResponse.add_member(:summary_map, Shapes::ShapeRef.new(shape: summaryMapType, location_name: "SummaryMap"))
    GetAccountSummaryResponse.struct_class = Types::GetAccountSummaryResponse

    GetContextKeysForCustomPolicyRequest.add_member(:policy_input_list, Shapes::ShapeRef.new(shape: SimulationPolicyListType, required: true, location_name: "PolicyInputList"))
    GetContextKeysForCustomPolicyRequest.struct_class = Types::GetContextKeysForCustomPolicyRequest

    GetContextKeysForPolicyResponse.add_member(:context_key_names, Shapes::ShapeRef.new(shape: ContextKeyNamesResultListType, location_name: "ContextKeyNames"))
    GetContextKeysForPolicyResponse.struct_class = Types::GetContextKeysForPolicyResponse

    GetContextKeysForPrincipalPolicyRequest.add_member(:policy_source_arn, Shapes::ShapeRef.new(shape: arnType, required: true, location_name: "PolicySourceArn"))
    GetContextKeysForPrincipalPolicyRequest.add_member(:policy_input_list, Shapes::ShapeRef.new(shape: SimulationPolicyListType, location_name: "PolicyInputList"))
    GetContextKeysForPrincipalPolicyRequest.struct_class = Types::GetContextKeysForPrincipalPolicyRequest

    GetCredentialReportResponse.add_member(:content, Shapes::ShapeRef.new(shape: ReportContentType, location_name: "Content"))
    GetCredentialReportResponse.add_member(:report_format, Shapes::ShapeRef.new(shape: ReportFormatType, location_name: "ReportFormat"))
    GetCredentialReportResponse.add_member(:generated_time, Shapes::ShapeRef.new(shape: dateType, location_name: "GeneratedTime"))
    GetCredentialReportResponse.struct_class = Types::GetCredentialReportResponse

    GetGroupPolicyRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: groupNameType, required: true, location_name: "GroupName"))
    GetGroupPolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: policyNameType, required: true, location_name: "PolicyName"))
    GetGroupPolicyRequest.struct_class = Types::GetGroupPolicyRequest

    GetGroupPolicyResponse.add_member(:group_name, Shapes::ShapeRef.new(shape: groupNameType, required: true, location_name: "GroupName"))
    GetGroupPolicyResponse.add_member(:policy_name, Shapes::ShapeRef.new(shape: policyNameType, required: true, location_name: "PolicyName"))
    GetGroupPolicyResponse.add_member(:policy_document, Shapes::ShapeRef.new(shape: policyDocumentType, required: true, location_name: "PolicyDocument"))
    GetGroupPolicyResponse.struct_class = Types::GetGroupPolicyResponse

    GetGroupRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: groupNameType, required: true, location_name: "GroupName"))
    GetGroupRequest.add_member(:marker, Shapes::ShapeRef.new(shape: markerType, location_name: "Marker"))
    GetGroupRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: maxItemsType, location_name: "MaxItems"))
    GetGroupRequest.struct_class = Types::GetGroupRequest

    GetGroupResponse.add_member(:group, Shapes::ShapeRef.new(shape: Group, required: true, location_name: "Group"))
    GetGroupResponse.add_member(:users, Shapes::ShapeRef.new(shape: userListType, required: true, location_name: "Users"))
    GetGroupResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: booleanType, location_name: "IsTruncated"))
    GetGroupResponse.add_member(:marker, Shapes::ShapeRef.new(shape: responseMarkerType, location_name: "Marker"))
    GetGroupResponse.struct_class = Types::GetGroupResponse

    GetInstanceProfileRequest.add_member(:instance_profile_name, Shapes::ShapeRef.new(shape: instanceProfileNameType, required: true, location_name: "InstanceProfileName"))
    GetInstanceProfileRequest.struct_class = Types::GetInstanceProfileRequest

    GetInstanceProfileResponse.add_member(:instance_profile, Shapes::ShapeRef.new(shape: InstanceProfile, required: true, location_name: "InstanceProfile"))
    GetInstanceProfileResponse.struct_class = Types::GetInstanceProfileResponse

    GetLoginProfileRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: userNameType, required: true, location_name: "UserName"))
    GetLoginProfileRequest.struct_class = Types::GetLoginProfileRequest

    GetLoginProfileResponse.add_member(:login_profile, Shapes::ShapeRef.new(shape: LoginProfile, required: true, location_name: "LoginProfile"))
    GetLoginProfileResponse.struct_class = Types::GetLoginProfileResponse

    GetOpenIDConnectProviderRequest.add_member(:open_id_connect_provider_arn, Shapes::ShapeRef.new(shape: arnType, required: true, location_name: "OpenIDConnectProviderArn"))
    GetOpenIDConnectProviderRequest.struct_class = Types::GetOpenIDConnectProviderRequest

    GetOpenIDConnectProviderResponse.add_member(:url, Shapes::ShapeRef.new(shape: OpenIDConnectProviderUrlType, location_name: "Url"))
    GetOpenIDConnectProviderResponse.add_member(:client_id_list, Shapes::ShapeRef.new(shape: clientIDListType, location_name: "ClientIDList"))
    GetOpenIDConnectProviderResponse.add_member(:thumbprint_list, Shapes::ShapeRef.new(shape: thumbprintListType, location_name: "ThumbprintList"))
    GetOpenIDConnectProviderResponse.add_member(:create_date, Shapes::ShapeRef.new(shape: dateType, location_name: "CreateDate"))
    GetOpenIDConnectProviderResponse.struct_class = Types::GetOpenIDConnectProviderResponse

    GetOrganizationsAccessReportRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: jobIDType, required: true, location_name: "JobId"))
    GetOrganizationsAccessReportRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: maxItemsType, location_name: "MaxItems"))
    GetOrganizationsAccessReportRequest.add_member(:marker, Shapes::ShapeRef.new(shape: markerType, location_name: "Marker"))
    GetOrganizationsAccessReportRequest.add_member(:sort_key, Shapes::ShapeRef.new(shape: sortKeyType, location_name: "SortKey"))
    GetOrganizationsAccessReportRequest.struct_class = Types::GetOrganizationsAccessReportRequest

    GetOrganizationsAccessReportResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: jobStatusType, required: true, location_name: "JobStatus"))
    GetOrganizationsAccessReportResponse.add_member(:job_creation_date, Shapes::ShapeRef.new(shape: dateType, required: true, location_name: "JobCreationDate"))
    GetOrganizationsAccessReportResponse.add_member(:job_completion_date, Shapes::ShapeRef.new(shape: dateType, location_name: "JobCompletionDate"))
    GetOrganizationsAccessReportResponse.add_member(:number_of_services_accessible, Shapes::ShapeRef.new(shape: integerType, location_name: "NumberOfServicesAccessible"))
    GetOrganizationsAccessReportResponse.add_member(:number_of_services_not_accessed, Shapes::ShapeRef.new(shape: integerType, location_name: "NumberOfServicesNotAccessed"))
    GetOrganizationsAccessReportResponse.add_member(:access_details, Shapes::ShapeRef.new(shape: AccessDetails, location_name: "AccessDetails"))
    GetOrganizationsAccessReportResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: booleanType, location_name: "IsTruncated"))
    GetOrganizationsAccessReportResponse.add_member(:marker, Shapes::ShapeRef.new(shape: markerType, location_name: "Marker"))
    GetOrganizationsAccessReportResponse.add_member(:error_details, Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "ErrorDetails"))
    GetOrganizationsAccessReportResponse.struct_class = Types::GetOrganizationsAccessReportResponse

    GetPolicyRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: arnType, required: true, location_name: "PolicyArn"))
    GetPolicyRequest.struct_class = Types::GetPolicyRequest

    GetPolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, location_name: "Policy"))
    GetPolicyResponse.struct_class = Types::GetPolicyResponse

    GetPolicyVersionRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: arnType, required: true, location_name: "PolicyArn"))
    GetPolicyVersionRequest.add_member(:version_id, Shapes::ShapeRef.new(shape: policyVersionIdType, required: true, location_name: "VersionId"))
    GetPolicyVersionRequest.struct_class = Types::GetPolicyVersionRequest

    GetPolicyVersionResponse.add_member(:policy_version, Shapes::ShapeRef.new(shape: PolicyVersion, location_name: "PolicyVersion"))
    GetPolicyVersionResponse.struct_class = Types::GetPolicyVersionResponse

    GetRolePolicyRequest.add_member(:role_name, Shapes::ShapeRef.new(shape: roleNameType, required: true, location_name: "RoleName"))
    GetRolePolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: policyNameType, required: true, location_name: "PolicyName"))
    GetRolePolicyRequest.struct_class = Types::GetRolePolicyRequest

    GetRolePolicyResponse.add_member(:role_name, Shapes::ShapeRef.new(shape: roleNameType, required: true, location_name: "RoleName"))
    GetRolePolicyResponse.add_member(:policy_name, Shapes::ShapeRef.new(shape: policyNameType, required: true, location_name: "PolicyName"))
    GetRolePolicyResponse.add_member(:policy_document, Shapes::ShapeRef.new(shape: policyDocumentType, required: true, location_name: "PolicyDocument"))
    GetRolePolicyResponse.struct_class = Types::GetRolePolicyResponse

    GetRoleRequest.add_member(:role_name, Shapes::ShapeRef.new(shape: roleNameType, required: true, location_name: "RoleName"))
    GetRoleRequest.struct_class = Types::GetRoleRequest

    GetRoleResponse.add_member(:role, Shapes::ShapeRef.new(shape: Role, required: true, location_name: "Role"))
    GetRoleResponse.struct_class = Types::GetRoleResponse

    GetSAMLProviderRequest.add_member(:saml_provider_arn, Shapes::ShapeRef.new(shape: arnType, required: true, location_name: "SAMLProviderArn"))
    GetSAMLProviderRequest.struct_class = Types::GetSAMLProviderRequest

    GetSAMLProviderResponse.add_member(:saml_metadata_document, Shapes::ShapeRef.new(shape: SAMLMetadataDocumentType, location_name: "SAMLMetadataDocument"))
    GetSAMLProviderResponse.add_member(:create_date, Shapes::ShapeRef.new(shape: dateType, location_name: "CreateDate"))
    GetSAMLProviderResponse.add_member(:valid_until, Shapes::ShapeRef.new(shape: dateType, location_name: "ValidUntil"))
    GetSAMLProviderResponse.struct_class = Types::GetSAMLProviderResponse

    GetSSHPublicKeyRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: userNameType, required: true, location_name: "UserName"))
    GetSSHPublicKeyRequest.add_member(:ssh_public_key_id, Shapes::ShapeRef.new(shape: publicKeyIdType, required: true, location_name: "SSHPublicKeyId"))
    GetSSHPublicKeyRequest.add_member(:encoding, Shapes::ShapeRef.new(shape: encodingType, required: true, location_name: "Encoding"))
    GetSSHPublicKeyRequest.struct_class = Types::GetSSHPublicKeyRequest

    GetSSHPublicKeyResponse.add_member(:ssh_public_key, Shapes::ShapeRef.new(shape: SSHPublicKey, location_name: "SSHPublicKey"))
    GetSSHPublicKeyResponse.struct_class = Types::GetSSHPublicKeyResponse

    GetServerCertificateRequest.add_member(:server_certificate_name, Shapes::ShapeRef.new(shape: serverCertificateNameType, required: true, location_name: "ServerCertificateName"))
    GetServerCertificateRequest.struct_class = Types::GetServerCertificateRequest

    GetServerCertificateResponse.add_member(:server_certificate, Shapes::ShapeRef.new(shape: ServerCertificate, required: true, location_name: "ServerCertificate"))
    GetServerCertificateResponse.struct_class = Types::GetServerCertificateResponse

    GetServiceLastAccessedDetailsRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: jobIDType, required: true, location_name: "JobId"))
    GetServiceLastAccessedDetailsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: maxItemsType, location_name: "MaxItems"))
    GetServiceLastAccessedDetailsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: markerType, location_name: "Marker"))
    GetServiceLastAccessedDetailsRequest.struct_class = Types::GetServiceLastAccessedDetailsRequest

    GetServiceLastAccessedDetailsResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: jobStatusType, required: true, location_name: "JobStatus"))
    GetServiceLastAccessedDetailsResponse.add_member(:job_type, Shapes::ShapeRef.new(shape: AccessAdvisorUsageGranularityType, location_name: "JobType"))
    GetServiceLastAccessedDetailsResponse.add_member(:job_creation_date, Shapes::ShapeRef.new(shape: dateType, required: true, location_name: "JobCreationDate"))
    GetServiceLastAccessedDetailsResponse.add_member(:services_last_accessed, Shapes::ShapeRef.new(shape: ServicesLastAccessed, required: true, location_name: "ServicesLastAccessed"))
    GetServiceLastAccessedDetailsResponse.add_member(:job_completion_date, Shapes::ShapeRef.new(shape: dateType, required: true, location_name: "JobCompletionDate"))
    GetServiceLastAccessedDetailsResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: booleanType, location_name: "IsTruncated"))
    GetServiceLastAccessedDetailsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: responseMarkerType, location_name: "Marker"))
    GetServiceLastAccessedDetailsResponse.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "Error"))
    GetServiceLastAccessedDetailsResponse.struct_class = Types::GetServiceLastAccessedDetailsResponse

    GetServiceLastAccessedDetailsWithEntitiesRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: jobIDType, required: true, location_name: "JobId"))
    GetServiceLastAccessedDetailsWithEntitiesRequest.add_member(:service_namespace, Shapes::ShapeRef.new(shape: serviceNamespaceType, required: true, location_name: "ServiceNamespace"))
    GetServiceLastAccessedDetailsWithEntitiesRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: maxItemsType, location_name: "MaxItems"))
    GetServiceLastAccessedDetailsWithEntitiesRequest.add_member(:marker, Shapes::ShapeRef.new(shape: markerType, location_name: "Marker"))
    GetServiceLastAccessedDetailsWithEntitiesRequest.struct_class = Types::GetServiceLastAccessedDetailsWithEntitiesRequest

    GetServiceLastAccessedDetailsWithEntitiesResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: jobStatusType, required: true, location_name: "JobStatus"))
    GetServiceLastAccessedDetailsWithEntitiesResponse.add_member(:job_creation_date, Shapes::ShapeRef.new(shape: dateType, required: true, location_name: "JobCreationDate"))
    GetServiceLastAccessedDetailsWithEntitiesResponse.add_member(:job_completion_date, Shapes::ShapeRef.new(shape: dateType, required: true, location_name: "JobCompletionDate"))
    GetServiceLastAccessedDetailsWithEntitiesResponse.add_member(:entity_details_list, Shapes::ShapeRef.new(shape: entityDetailsListType, required: true, location_name: "EntityDetailsList"))
    GetServiceLastAccessedDetailsWithEntitiesResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: booleanType, location_name: "IsTruncated"))
    GetServiceLastAccessedDetailsWithEntitiesResponse.add_member(:marker, Shapes::ShapeRef.new(shape: responseMarkerType, location_name: "Marker"))
    GetServiceLastAccessedDetailsWithEntitiesResponse.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "Error"))
    GetServiceLastAccessedDetailsWithEntitiesResponse.struct_class = Types::GetServiceLastAccessedDetailsWithEntitiesResponse

    GetServiceLinkedRoleDeletionStatusRequest.add_member(:deletion_task_id, Shapes::ShapeRef.new(shape: DeletionTaskIdType, required: true, location_name: "DeletionTaskId"))
    GetServiceLinkedRoleDeletionStatusRequest.struct_class = Types::GetServiceLinkedRoleDeletionStatusRequest

    GetServiceLinkedRoleDeletionStatusResponse.add_member(:status, Shapes::ShapeRef.new(shape: DeletionTaskStatusType, required: true, location_name: "Status"))
    GetServiceLinkedRoleDeletionStatusResponse.add_member(:reason, Shapes::ShapeRef.new(shape: DeletionTaskFailureReasonType, location_name: "Reason"))
    GetServiceLinkedRoleDeletionStatusResponse.struct_class = Types::GetServiceLinkedRoleDeletionStatusResponse

    GetUserPolicyRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: existingUserNameType, required: true, location_name: "UserName"))
    GetUserPolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: policyNameType, required: true, location_name: "PolicyName"))
    GetUserPolicyRequest.struct_class = Types::GetUserPolicyRequest

    GetUserPolicyResponse.add_member(:user_name, Shapes::ShapeRef.new(shape: existingUserNameType, required: true, location_name: "UserName"))
    GetUserPolicyResponse.add_member(:policy_name, Shapes::ShapeRef.new(shape: policyNameType, required: true, location_name: "PolicyName"))
    GetUserPolicyResponse.add_member(:policy_document, Shapes::ShapeRef.new(shape: policyDocumentType, required: true, location_name: "PolicyDocument"))
    GetUserPolicyResponse.struct_class = Types::GetUserPolicyResponse

    GetUserRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: existingUserNameType, location_name: "UserName"))
    GetUserRequest.struct_class = Types::GetUserRequest

    GetUserResponse.add_member(:user, Shapes::ShapeRef.new(shape: User, required: true, location_name: "User"))
    GetUserResponse.struct_class = Types::GetUserResponse

    Group.add_member(:path, Shapes::ShapeRef.new(shape: pathType, required: true, location_name: "Path"))
    Group.add_member(:group_name, Shapes::ShapeRef.new(shape: groupNameType, required: true, location_name: "GroupName"))
    Group.add_member(:group_id, Shapes::ShapeRef.new(shape: idType, required: true, location_name: "GroupId"))
    Group.add_member(:arn, Shapes::ShapeRef.new(shape: arnType, required: true, location_name: "Arn"))
    Group.add_member(:create_date, Shapes::ShapeRef.new(shape: dateType, required: true, location_name: "CreateDate"))
    Group.struct_class = Types::Group

    GroupDetail.add_member(:path, Shapes::ShapeRef.new(shape: pathType, location_name: "Path"))
    GroupDetail.add_member(:group_name, Shapes::ShapeRef.new(shape: groupNameType, location_name: "GroupName"))
    GroupDetail.add_member(:group_id, Shapes::ShapeRef.new(shape: idType, location_name: "GroupId"))
    GroupDetail.add_member(:arn, Shapes::ShapeRef.new(shape: arnType, location_name: "Arn"))
    GroupDetail.add_member(:create_date, Shapes::ShapeRef.new(shape: dateType, location_name: "CreateDate"))
    GroupDetail.add_member(:group_policy_list, Shapes::ShapeRef.new(shape: policyDetailListType, location_name: "GroupPolicyList"))
    GroupDetail.add_member(:attached_managed_policies, Shapes::ShapeRef.new(shape: attachedPoliciesListType, location_name: "AttachedManagedPolicies"))
    GroupDetail.struct_class = Types::GroupDetail

    InstanceProfile.add_member(:path, Shapes::ShapeRef.new(shape: pathType, required: true, location_name: "Path"))
    InstanceProfile.add_member(:instance_profile_name, Shapes::ShapeRef.new(shape: instanceProfileNameType, required: true, location_name: "InstanceProfileName"))
    InstanceProfile.add_member(:instance_profile_id, Shapes::ShapeRef.new(shape: idType, required: true, location_name: "InstanceProfileId"))
    InstanceProfile.add_member(:arn, Shapes::ShapeRef.new(shape: arnType, required: true, location_name: "Arn"))
    InstanceProfile.add_member(:create_date, Shapes::ShapeRef.new(shape: dateType, required: true, location_name: "CreateDate"))
    InstanceProfile.add_member(:roles, Shapes::ShapeRef.new(shape: roleListType, required: true, location_name: "Roles"))
    InstanceProfile.struct_class = Types::InstanceProfile

    InvalidAuthenticationCodeException.add_member(:message, Shapes::ShapeRef.new(shape: invalidAuthenticationCodeMessage, location_name: "message"))
    InvalidAuthenticationCodeException.struct_class = Types::InvalidAuthenticationCodeException

    InvalidCertificateException.add_member(:message, Shapes::ShapeRef.new(shape: invalidCertificateMessage, location_name: "message"))
    InvalidCertificateException.struct_class = Types::InvalidCertificateException

    InvalidInputException.add_member(:message, Shapes::ShapeRef.new(shape: invalidInputMessage, location_name: "message"))
    InvalidInputException.struct_class = Types::InvalidInputException

    InvalidPublicKeyException.add_member(:message, Shapes::ShapeRef.new(shape: invalidPublicKeyMessage, location_name: "message"))
    InvalidPublicKeyException.struct_class = Types::InvalidPublicKeyException

    InvalidUserTypeException.add_member(:message, Shapes::ShapeRef.new(shape: invalidUserTypeMessage, location_name: "message"))
    InvalidUserTypeException.struct_class = Types::InvalidUserTypeException

    KeyPairMismatchException.add_member(:message, Shapes::ShapeRef.new(shape: keyPairMismatchMessage, location_name: "message"))
    KeyPairMismatchException.struct_class = Types::KeyPairMismatchException

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: limitExceededMessage, location_name: "message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListAccessKeysRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: existingUserNameType, location_name: "UserName"))
    ListAccessKeysRequest.add_member(:marker, Shapes::ShapeRef.new(shape: markerType, location_name: "Marker"))
    ListAccessKeysRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: maxItemsType, location_name: "MaxItems"))
    ListAccessKeysRequest.struct_class = Types::ListAccessKeysRequest

    ListAccessKeysResponse.add_member(:access_key_metadata, Shapes::ShapeRef.new(shape: accessKeyMetadataListType, required: true, location_name: "AccessKeyMetadata"))
    ListAccessKeysResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: booleanType, location_name: "IsTruncated"))
    ListAccessKeysResponse.add_member(:marker, Shapes::ShapeRef.new(shape: responseMarkerType, location_name: "Marker"))
    ListAccessKeysResponse.struct_class = Types::ListAccessKeysResponse

    ListAccountAliasesRequest.add_member(:marker, Shapes::ShapeRef.new(shape: markerType, location_name: "Marker"))
    ListAccountAliasesRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: maxItemsType, location_name: "MaxItems"))
    ListAccountAliasesRequest.struct_class = Types::ListAccountAliasesRequest

    ListAccountAliasesResponse.add_member(:account_aliases, Shapes::ShapeRef.new(shape: accountAliasListType, required: true, location_name: "AccountAliases"))
    ListAccountAliasesResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: booleanType, location_name: "IsTruncated"))
    ListAccountAliasesResponse.add_member(:marker, Shapes::ShapeRef.new(shape: responseMarkerType, location_name: "Marker"))
    ListAccountAliasesResponse.struct_class = Types::ListAccountAliasesResponse

    ListAttachedGroupPoliciesRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: groupNameType, required: true, location_name: "GroupName"))
    ListAttachedGroupPoliciesRequest.add_member(:path_prefix, Shapes::ShapeRef.new(shape: policyPathType, location_name: "PathPrefix"))
    ListAttachedGroupPoliciesRequest.add_member(:marker, Shapes::ShapeRef.new(shape: markerType, location_name: "Marker"))
    ListAttachedGroupPoliciesRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: maxItemsType, location_name: "MaxItems"))
    ListAttachedGroupPoliciesRequest.struct_class = Types::ListAttachedGroupPoliciesRequest

    ListAttachedGroupPoliciesResponse.add_member(:attached_policies, Shapes::ShapeRef.new(shape: attachedPoliciesListType, location_name: "AttachedPolicies"))
    ListAttachedGroupPoliciesResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: booleanType, location_name: "IsTruncated"))
    ListAttachedGroupPoliciesResponse.add_member(:marker, Shapes::ShapeRef.new(shape: responseMarkerType, location_name: "Marker"))
    ListAttachedGroupPoliciesResponse.struct_class = Types::ListAttachedGroupPoliciesResponse

    ListAttachedRolePoliciesRequest.add_member(:role_name, Shapes::ShapeRef.new(shape: roleNameType, required: true, location_name: "RoleName"))
    ListAttachedRolePoliciesRequest.add_member(:path_prefix, Shapes::ShapeRef.new(shape: policyPathType, location_name: "PathPrefix"))
    ListAttachedRolePoliciesRequest.add_member(:marker, Shapes::ShapeRef.new(shape: markerType, location_name: "Marker"))
    ListAttachedRolePoliciesRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: maxItemsType, location_name: "MaxItems"))
    ListAttachedRolePoliciesRequest.struct_class = Types::ListAttachedRolePoliciesRequest

    ListAttachedRolePoliciesResponse.add_member(:attached_policies, Shapes::ShapeRef.new(shape: attachedPoliciesListType, location_name: "AttachedPolicies"))
    ListAttachedRolePoliciesResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: booleanType, location_name: "IsTruncated"))
    ListAttachedRolePoliciesResponse.add_member(:marker, Shapes::ShapeRef.new(shape: responseMarkerType, location_name: "Marker"))
    ListAttachedRolePoliciesResponse.struct_class = Types::ListAttachedRolePoliciesResponse

    ListAttachedUserPoliciesRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: userNameType, required: true, location_name: "UserName"))
    ListAttachedUserPoliciesRequest.add_member(:path_prefix, Shapes::ShapeRef.new(shape: policyPathType, location_name: "PathPrefix"))
    ListAttachedUserPoliciesRequest.add_member(:marker, Shapes::ShapeRef.new(shape: markerType, location_name: "Marker"))
    ListAttachedUserPoliciesRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: maxItemsType, location_name: "MaxItems"))
    ListAttachedUserPoliciesRequest.struct_class = Types::ListAttachedUserPoliciesRequest

    ListAttachedUserPoliciesResponse.add_member(:attached_policies, Shapes::ShapeRef.new(shape: attachedPoliciesListType, location_name: "AttachedPolicies"))
    ListAttachedUserPoliciesResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: booleanType, location_name: "IsTruncated"))
    ListAttachedUserPoliciesResponse.add_member(:marker, Shapes::ShapeRef.new(shape: responseMarkerType, location_name: "Marker"))
    ListAttachedUserPoliciesResponse.struct_class = Types::ListAttachedUserPoliciesResponse

    ListEntitiesForPolicyRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: arnType, required: true, location_name: "PolicyArn"))
    ListEntitiesForPolicyRequest.add_member(:entity_filter, Shapes::ShapeRef.new(shape: EntityType, location_name: "EntityFilter"))
    ListEntitiesForPolicyRequest.add_member(:path_prefix, Shapes::ShapeRef.new(shape: pathType, location_name: "PathPrefix"))
    ListEntitiesForPolicyRequest.add_member(:policy_usage_filter, Shapes::ShapeRef.new(shape: PolicyUsageType, location_name: "PolicyUsageFilter"))
    ListEntitiesForPolicyRequest.add_member(:marker, Shapes::ShapeRef.new(shape: markerType, location_name: "Marker"))
    ListEntitiesForPolicyRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: maxItemsType, location_name: "MaxItems"))
    ListEntitiesForPolicyRequest.struct_class = Types::ListEntitiesForPolicyRequest

    ListEntitiesForPolicyResponse.add_member(:policy_groups, Shapes::ShapeRef.new(shape: PolicyGroupListType, location_name: "PolicyGroups"))
    ListEntitiesForPolicyResponse.add_member(:policy_users, Shapes::ShapeRef.new(shape: PolicyUserListType, location_name: "PolicyUsers"))
    ListEntitiesForPolicyResponse.add_member(:policy_roles, Shapes::ShapeRef.new(shape: PolicyRoleListType, location_name: "PolicyRoles"))
    ListEntitiesForPolicyResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: booleanType, location_name: "IsTruncated"))
    ListEntitiesForPolicyResponse.add_member(:marker, Shapes::ShapeRef.new(shape: responseMarkerType, location_name: "Marker"))
    ListEntitiesForPolicyResponse.struct_class = Types::ListEntitiesForPolicyResponse

    ListGroupPoliciesRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: groupNameType, required: true, location_name: "GroupName"))
    ListGroupPoliciesRequest.add_member(:marker, Shapes::ShapeRef.new(shape: markerType, location_name: "Marker"))
    ListGroupPoliciesRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: maxItemsType, location_name: "MaxItems"))
    ListGroupPoliciesRequest.struct_class = Types::ListGroupPoliciesRequest

    ListGroupPoliciesResponse.add_member(:policy_names, Shapes::ShapeRef.new(shape: policyNameListType, required: true, location_name: "PolicyNames"))
    ListGroupPoliciesResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: booleanType, location_name: "IsTruncated"))
    ListGroupPoliciesResponse.add_member(:marker, Shapes::ShapeRef.new(shape: responseMarkerType, location_name: "Marker"))
    ListGroupPoliciesResponse.struct_class = Types::ListGroupPoliciesResponse

    ListGroupsForUserRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: existingUserNameType, required: true, location_name: "UserName"))
    ListGroupsForUserRequest.add_member(:marker, Shapes::ShapeRef.new(shape: markerType, location_name: "Marker"))
    ListGroupsForUserRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: maxItemsType, location_name: "MaxItems"))
    ListGroupsForUserRequest.struct_class = Types::ListGroupsForUserRequest

    ListGroupsForUserResponse.add_member(:groups, Shapes::ShapeRef.new(shape: groupListType, required: true, location_name: "Groups"))
    ListGroupsForUserResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: booleanType, location_name: "IsTruncated"))
    ListGroupsForUserResponse.add_member(:marker, Shapes::ShapeRef.new(shape: responseMarkerType, location_name: "Marker"))
    ListGroupsForUserResponse.struct_class = Types::ListGroupsForUserResponse

    ListGroupsRequest.add_member(:path_prefix, Shapes::ShapeRef.new(shape: pathPrefixType, location_name: "PathPrefix"))
    ListGroupsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: markerType, location_name: "Marker"))
    ListGroupsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: maxItemsType, location_name: "MaxItems"))
    ListGroupsRequest.struct_class = Types::ListGroupsRequest

    ListGroupsResponse.add_member(:groups, Shapes::ShapeRef.new(shape: groupListType, required: true, location_name: "Groups"))
    ListGroupsResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: booleanType, location_name: "IsTruncated"))
    ListGroupsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: responseMarkerType, location_name: "Marker"))
    ListGroupsResponse.struct_class = Types::ListGroupsResponse

    ListInstanceProfilesForRoleRequest.add_member(:role_name, Shapes::ShapeRef.new(shape: roleNameType, required: true, location_name: "RoleName"))
    ListInstanceProfilesForRoleRequest.add_member(:marker, Shapes::ShapeRef.new(shape: markerType, location_name: "Marker"))
    ListInstanceProfilesForRoleRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: maxItemsType, location_name: "MaxItems"))
    ListInstanceProfilesForRoleRequest.struct_class = Types::ListInstanceProfilesForRoleRequest

    ListInstanceProfilesForRoleResponse.add_member(:instance_profiles, Shapes::ShapeRef.new(shape: instanceProfileListType, required: true, location_name: "InstanceProfiles"))
    ListInstanceProfilesForRoleResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: booleanType, location_name: "IsTruncated"))
    ListInstanceProfilesForRoleResponse.add_member(:marker, Shapes::ShapeRef.new(shape: responseMarkerType, location_name: "Marker"))
    ListInstanceProfilesForRoleResponse.struct_class = Types::ListInstanceProfilesForRoleResponse

    ListInstanceProfilesRequest.add_member(:path_prefix, Shapes::ShapeRef.new(shape: pathPrefixType, location_name: "PathPrefix"))
    ListInstanceProfilesRequest.add_member(:marker, Shapes::ShapeRef.new(shape: markerType, location_name: "Marker"))
    ListInstanceProfilesRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: maxItemsType, location_name: "MaxItems"))
    ListInstanceProfilesRequest.struct_class = Types::ListInstanceProfilesRequest

    ListInstanceProfilesResponse.add_member(:instance_profiles, Shapes::ShapeRef.new(shape: instanceProfileListType, required: true, location_name: "InstanceProfiles"))
    ListInstanceProfilesResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: booleanType, location_name: "IsTruncated"))
    ListInstanceProfilesResponse.add_member(:marker, Shapes::ShapeRef.new(shape: responseMarkerType, location_name: "Marker"))
    ListInstanceProfilesResponse.struct_class = Types::ListInstanceProfilesResponse

    ListMFADevicesRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: existingUserNameType, location_name: "UserName"))
    ListMFADevicesRequest.add_member(:marker, Shapes::ShapeRef.new(shape: markerType, location_name: "Marker"))
    ListMFADevicesRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: maxItemsType, location_name: "MaxItems"))
    ListMFADevicesRequest.struct_class = Types::ListMFADevicesRequest

    ListMFADevicesResponse.add_member(:mfa_devices, Shapes::ShapeRef.new(shape: mfaDeviceListType, required: true, location_name: "MFADevices"))
    ListMFADevicesResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: booleanType, location_name: "IsTruncated"))
    ListMFADevicesResponse.add_member(:marker, Shapes::ShapeRef.new(shape: responseMarkerType, location_name: "Marker"))
    ListMFADevicesResponse.struct_class = Types::ListMFADevicesResponse

    ListOpenIDConnectProvidersRequest.struct_class = Types::ListOpenIDConnectProvidersRequest

    ListOpenIDConnectProvidersResponse.add_member(:open_id_connect_provider_list, Shapes::ShapeRef.new(shape: OpenIDConnectProviderListType, location_name: "OpenIDConnectProviderList"))
    ListOpenIDConnectProvidersResponse.struct_class = Types::ListOpenIDConnectProvidersResponse

    ListPoliciesGrantingServiceAccessEntry.add_member(:service_namespace, Shapes::ShapeRef.new(shape: serviceNamespaceType, location_name: "ServiceNamespace"))
    ListPoliciesGrantingServiceAccessEntry.add_member(:policies, Shapes::ShapeRef.new(shape: policyGrantingServiceAccessListType, location_name: "Policies"))
    ListPoliciesGrantingServiceAccessEntry.struct_class = Types::ListPoliciesGrantingServiceAccessEntry

    ListPoliciesGrantingServiceAccessRequest.add_member(:marker, Shapes::ShapeRef.new(shape: markerType, location_name: "Marker"))
    ListPoliciesGrantingServiceAccessRequest.add_member(:arn, Shapes::ShapeRef.new(shape: arnType, required: true, location_name: "Arn"))
    ListPoliciesGrantingServiceAccessRequest.add_member(:service_namespaces, Shapes::ShapeRef.new(shape: serviceNamespaceListType, required: true, location_name: "ServiceNamespaces"))
    ListPoliciesGrantingServiceAccessRequest.struct_class = Types::ListPoliciesGrantingServiceAccessRequest

    ListPoliciesGrantingServiceAccessResponse.add_member(:policies_granting_service_access, Shapes::ShapeRef.new(shape: listPolicyGrantingServiceAccessResponseListType, required: true, location_name: "PoliciesGrantingServiceAccess"))
    ListPoliciesGrantingServiceAccessResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: booleanType, location_name: "IsTruncated"))
    ListPoliciesGrantingServiceAccessResponse.add_member(:marker, Shapes::ShapeRef.new(shape: responseMarkerType, location_name: "Marker"))
    ListPoliciesGrantingServiceAccessResponse.struct_class = Types::ListPoliciesGrantingServiceAccessResponse

    ListPoliciesRequest.add_member(:scope, Shapes::ShapeRef.new(shape: policyScopeType, location_name: "Scope"))
    ListPoliciesRequest.add_member(:only_attached, Shapes::ShapeRef.new(shape: booleanType, location_name: "OnlyAttached"))
    ListPoliciesRequest.add_member(:path_prefix, Shapes::ShapeRef.new(shape: policyPathType, location_name: "PathPrefix"))
    ListPoliciesRequest.add_member(:policy_usage_filter, Shapes::ShapeRef.new(shape: PolicyUsageType, location_name: "PolicyUsageFilter"))
    ListPoliciesRequest.add_member(:marker, Shapes::ShapeRef.new(shape: markerType, location_name: "Marker"))
    ListPoliciesRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: maxItemsType, location_name: "MaxItems"))
    ListPoliciesRequest.struct_class = Types::ListPoliciesRequest

    ListPoliciesResponse.add_member(:policies, Shapes::ShapeRef.new(shape: policyListType, location_name: "Policies"))
    ListPoliciesResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: booleanType, location_name: "IsTruncated"))
    ListPoliciesResponse.add_member(:marker, Shapes::ShapeRef.new(shape: responseMarkerType, location_name: "Marker"))
    ListPoliciesResponse.struct_class = Types::ListPoliciesResponse

    ListPolicyVersionsRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: arnType, required: true, location_name: "PolicyArn"))
    ListPolicyVersionsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: markerType, location_name: "Marker"))
    ListPolicyVersionsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: maxItemsType, location_name: "MaxItems"))
    ListPolicyVersionsRequest.struct_class = Types::ListPolicyVersionsRequest

    ListPolicyVersionsResponse.add_member(:versions, Shapes::ShapeRef.new(shape: policyDocumentVersionListType, location_name: "Versions"))
    ListPolicyVersionsResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: booleanType, location_name: "IsTruncated"))
    ListPolicyVersionsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: responseMarkerType, location_name: "Marker"))
    ListPolicyVersionsResponse.struct_class = Types::ListPolicyVersionsResponse

    ListRolePoliciesRequest.add_member(:role_name, Shapes::ShapeRef.new(shape: roleNameType, required: true, location_name: "RoleName"))
    ListRolePoliciesRequest.add_member(:marker, Shapes::ShapeRef.new(shape: markerType, location_name: "Marker"))
    ListRolePoliciesRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: maxItemsType, location_name: "MaxItems"))
    ListRolePoliciesRequest.struct_class = Types::ListRolePoliciesRequest

    ListRolePoliciesResponse.add_member(:policy_names, Shapes::ShapeRef.new(shape: policyNameListType, required: true, location_name: "PolicyNames"))
    ListRolePoliciesResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: booleanType, location_name: "IsTruncated"))
    ListRolePoliciesResponse.add_member(:marker, Shapes::ShapeRef.new(shape: responseMarkerType, location_name: "Marker"))
    ListRolePoliciesResponse.struct_class = Types::ListRolePoliciesResponse

    ListRoleTagsRequest.add_member(:role_name, Shapes::ShapeRef.new(shape: roleNameType, required: true, location_name: "RoleName"))
    ListRoleTagsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: markerType, location_name: "Marker"))
    ListRoleTagsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: maxItemsType, location_name: "MaxItems"))
    ListRoleTagsRequest.struct_class = Types::ListRoleTagsRequest

    ListRoleTagsResponse.add_member(:tags, Shapes::ShapeRef.new(shape: tagListType, required: true, location_name: "Tags"))
    ListRoleTagsResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: booleanType, location_name: "IsTruncated"))
    ListRoleTagsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: responseMarkerType, location_name: "Marker"))
    ListRoleTagsResponse.struct_class = Types::ListRoleTagsResponse

    ListRolesRequest.add_member(:path_prefix, Shapes::ShapeRef.new(shape: pathPrefixType, location_name: "PathPrefix"))
    ListRolesRequest.add_member(:marker, Shapes::ShapeRef.new(shape: markerType, location_name: "Marker"))
    ListRolesRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: maxItemsType, location_name: "MaxItems"))
    ListRolesRequest.struct_class = Types::ListRolesRequest

    ListRolesResponse.add_member(:roles, Shapes::ShapeRef.new(shape: roleListType, required: true, location_name: "Roles"))
    ListRolesResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: booleanType, location_name: "IsTruncated"))
    ListRolesResponse.add_member(:marker, Shapes::ShapeRef.new(shape: responseMarkerType, location_name: "Marker"))
    ListRolesResponse.struct_class = Types::ListRolesResponse

    ListSAMLProvidersRequest.struct_class = Types::ListSAMLProvidersRequest

    ListSAMLProvidersResponse.add_member(:saml_provider_list, Shapes::ShapeRef.new(shape: SAMLProviderListType, location_name: "SAMLProviderList"))
    ListSAMLProvidersResponse.struct_class = Types::ListSAMLProvidersResponse

    ListSSHPublicKeysRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: userNameType, location_name: "UserName"))
    ListSSHPublicKeysRequest.add_member(:marker, Shapes::ShapeRef.new(shape: markerType, location_name: "Marker"))
    ListSSHPublicKeysRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: maxItemsType, location_name: "MaxItems"))
    ListSSHPublicKeysRequest.struct_class = Types::ListSSHPublicKeysRequest

    ListSSHPublicKeysResponse.add_member(:ssh_public_keys, Shapes::ShapeRef.new(shape: SSHPublicKeyListType, location_name: "SSHPublicKeys"))
    ListSSHPublicKeysResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: booleanType, location_name: "IsTruncated"))
    ListSSHPublicKeysResponse.add_member(:marker, Shapes::ShapeRef.new(shape: responseMarkerType, location_name: "Marker"))
    ListSSHPublicKeysResponse.struct_class = Types::ListSSHPublicKeysResponse

    ListServerCertificatesRequest.add_member(:path_prefix, Shapes::ShapeRef.new(shape: pathPrefixType, location_name: "PathPrefix"))
    ListServerCertificatesRequest.add_member(:marker, Shapes::ShapeRef.new(shape: markerType, location_name: "Marker"))
    ListServerCertificatesRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: maxItemsType, location_name: "MaxItems"))
    ListServerCertificatesRequest.struct_class = Types::ListServerCertificatesRequest

    ListServerCertificatesResponse.add_member(:server_certificate_metadata_list, Shapes::ShapeRef.new(shape: serverCertificateMetadataListType, required: true, location_name: "ServerCertificateMetadataList"))
    ListServerCertificatesResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: booleanType, location_name: "IsTruncated"))
    ListServerCertificatesResponse.add_member(:marker, Shapes::ShapeRef.new(shape: responseMarkerType, location_name: "Marker"))
    ListServerCertificatesResponse.struct_class = Types::ListServerCertificatesResponse

    ListServiceSpecificCredentialsRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: userNameType, location_name: "UserName"))
    ListServiceSpecificCredentialsRequest.add_member(:service_name, Shapes::ShapeRef.new(shape: serviceName, location_name: "ServiceName"))
    ListServiceSpecificCredentialsRequest.struct_class = Types::ListServiceSpecificCredentialsRequest

    ListServiceSpecificCredentialsResponse.add_member(:service_specific_credentials, Shapes::ShapeRef.new(shape: ServiceSpecificCredentialsListType, location_name: "ServiceSpecificCredentials"))
    ListServiceSpecificCredentialsResponse.struct_class = Types::ListServiceSpecificCredentialsResponse

    ListSigningCertificatesRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: existingUserNameType, location_name: "UserName"))
    ListSigningCertificatesRequest.add_member(:marker, Shapes::ShapeRef.new(shape: markerType, location_name: "Marker"))
    ListSigningCertificatesRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: maxItemsType, location_name: "MaxItems"))
    ListSigningCertificatesRequest.struct_class = Types::ListSigningCertificatesRequest

    ListSigningCertificatesResponse.add_member(:certificates, Shapes::ShapeRef.new(shape: certificateListType, required: true, location_name: "Certificates"))
    ListSigningCertificatesResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: booleanType, location_name: "IsTruncated"))
    ListSigningCertificatesResponse.add_member(:marker, Shapes::ShapeRef.new(shape: responseMarkerType, location_name: "Marker"))
    ListSigningCertificatesResponse.struct_class = Types::ListSigningCertificatesResponse

    ListUserPoliciesRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: existingUserNameType, required: true, location_name: "UserName"))
    ListUserPoliciesRequest.add_member(:marker, Shapes::ShapeRef.new(shape: markerType, location_name: "Marker"))
    ListUserPoliciesRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: maxItemsType, location_name: "MaxItems"))
    ListUserPoliciesRequest.struct_class = Types::ListUserPoliciesRequest

    ListUserPoliciesResponse.add_member(:policy_names, Shapes::ShapeRef.new(shape: policyNameListType, required: true, location_name: "PolicyNames"))
    ListUserPoliciesResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: booleanType, location_name: "IsTruncated"))
    ListUserPoliciesResponse.add_member(:marker, Shapes::ShapeRef.new(shape: responseMarkerType, location_name: "Marker"))
    ListUserPoliciesResponse.struct_class = Types::ListUserPoliciesResponse

    ListUserTagsRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: existingUserNameType, required: true, location_name: "UserName"))
    ListUserTagsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: markerType, location_name: "Marker"))
    ListUserTagsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: maxItemsType, location_name: "MaxItems"))
    ListUserTagsRequest.struct_class = Types::ListUserTagsRequest

    ListUserTagsResponse.add_member(:tags, Shapes::ShapeRef.new(shape: tagListType, required: true, location_name: "Tags"))
    ListUserTagsResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: booleanType, location_name: "IsTruncated"))
    ListUserTagsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: responseMarkerType, location_name: "Marker"))
    ListUserTagsResponse.struct_class = Types::ListUserTagsResponse

    ListUsersRequest.add_member(:path_prefix, Shapes::ShapeRef.new(shape: pathPrefixType, location_name: "PathPrefix"))
    ListUsersRequest.add_member(:marker, Shapes::ShapeRef.new(shape: markerType, location_name: "Marker"))
    ListUsersRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: maxItemsType, location_name: "MaxItems"))
    ListUsersRequest.struct_class = Types::ListUsersRequest

    ListUsersResponse.add_member(:users, Shapes::ShapeRef.new(shape: userListType, required: true, location_name: "Users"))
    ListUsersResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: booleanType, location_name: "IsTruncated"))
    ListUsersResponse.add_member(:marker, Shapes::ShapeRef.new(shape: responseMarkerType, location_name: "Marker"))
    ListUsersResponse.struct_class = Types::ListUsersResponse

    ListVirtualMFADevicesRequest.add_member(:assignment_status, Shapes::ShapeRef.new(shape: assignmentStatusType, location_name: "AssignmentStatus"))
    ListVirtualMFADevicesRequest.add_member(:marker, Shapes::ShapeRef.new(shape: markerType, location_name: "Marker"))
    ListVirtualMFADevicesRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: maxItemsType, location_name: "MaxItems"))
    ListVirtualMFADevicesRequest.struct_class = Types::ListVirtualMFADevicesRequest

    ListVirtualMFADevicesResponse.add_member(:virtual_mfa_devices, Shapes::ShapeRef.new(shape: virtualMFADeviceListType, required: true, location_name: "VirtualMFADevices"))
    ListVirtualMFADevicesResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: booleanType, location_name: "IsTruncated"))
    ListVirtualMFADevicesResponse.add_member(:marker, Shapes::ShapeRef.new(shape: responseMarkerType, location_name: "Marker"))
    ListVirtualMFADevicesResponse.struct_class = Types::ListVirtualMFADevicesResponse

    LoginProfile.add_member(:user_name, Shapes::ShapeRef.new(shape: userNameType, required: true, location_name: "UserName"))
    LoginProfile.add_member(:create_date, Shapes::ShapeRef.new(shape: dateType, required: true, location_name: "CreateDate"))
    LoginProfile.add_member(:password_reset_required, Shapes::ShapeRef.new(shape: booleanType, location_name: "PasswordResetRequired"))
    LoginProfile.struct_class = Types::LoginProfile

    MFADevice.add_member(:user_name, Shapes::ShapeRef.new(shape: userNameType, required: true, location_name: "UserName"))
    MFADevice.add_member(:serial_number, Shapes::ShapeRef.new(shape: serialNumberType, required: true, location_name: "SerialNumber"))
    MFADevice.add_member(:enable_date, Shapes::ShapeRef.new(shape: dateType, required: true, location_name: "EnableDate"))
    MFADevice.struct_class = Types::MFADevice

    MalformedCertificateException.add_member(:message, Shapes::ShapeRef.new(shape: malformedCertificateMessage, location_name: "message"))
    MalformedCertificateException.struct_class = Types::MalformedCertificateException

    MalformedPolicyDocumentException.add_member(:message, Shapes::ShapeRef.new(shape: malformedPolicyDocumentMessage, location_name: "message"))
    MalformedPolicyDocumentException.struct_class = Types::MalformedPolicyDocumentException

    ManagedPolicyDetail.add_member(:policy_name, Shapes::ShapeRef.new(shape: policyNameType, location_name: "PolicyName"))
    ManagedPolicyDetail.add_member(:policy_id, Shapes::ShapeRef.new(shape: idType, location_name: "PolicyId"))
    ManagedPolicyDetail.add_member(:arn, Shapes::ShapeRef.new(shape: arnType, location_name: "Arn"))
    ManagedPolicyDetail.add_member(:path, Shapes::ShapeRef.new(shape: policyPathType, location_name: "Path"))
    ManagedPolicyDetail.add_member(:default_version_id, Shapes::ShapeRef.new(shape: policyVersionIdType, location_name: "DefaultVersionId"))
    ManagedPolicyDetail.add_member(:attachment_count, Shapes::ShapeRef.new(shape: attachmentCountType, location_name: "AttachmentCount"))
    ManagedPolicyDetail.add_member(:permissions_boundary_usage_count, Shapes::ShapeRef.new(shape: attachmentCountType, location_name: "PermissionsBoundaryUsageCount"))
    ManagedPolicyDetail.add_member(:is_attachable, Shapes::ShapeRef.new(shape: booleanType, location_name: "IsAttachable"))
    ManagedPolicyDetail.add_member(:description, Shapes::ShapeRef.new(shape: policyDescriptionType, location_name: "Description"))
    ManagedPolicyDetail.add_member(:create_date, Shapes::ShapeRef.new(shape: dateType, location_name: "CreateDate"))
    ManagedPolicyDetail.add_member(:update_date, Shapes::ShapeRef.new(shape: dateType, location_name: "UpdateDate"))
    ManagedPolicyDetail.add_member(:policy_version_list, Shapes::ShapeRef.new(shape: policyDocumentVersionListType, location_name: "PolicyVersionList"))
    ManagedPolicyDetail.struct_class = Types::ManagedPolicyDetail

    ManagedPolicyDetailListType.member = Shapes::ShapeRef.new(shape: ManagedPolicyDetail)

    NoSuchEntityException.add_member(:message, Shapes::ShapeRef.new(shape: noSuchEntityMessage, location_name: "message"))
    NoSuchEntityException.struct_class = Types::NoSuchEntityException

    OpenIDConnectProviderListEntry.add_member(:arn, Shapes::ShapeRef.new(shape: arnType, location_name: "Arn"))
    OpenIDConnectProviderListEntry.struct_class = Types::OpenIDConnectProviderListEntry

    OpenIDConnectProviderListType.member = Shapes::ShapeRef.new(shape: OpenIDConnectProviderListEntry)

    OrganizationsDecisionDetail.add_member(:allowed_by_organizations, Shapes::ShapeRef.new(shape: booleanType, location_name: "AllowedByOrganizations"))
    OrganizationsDecisionDetail.struct_class = Types::OrganizationsDecisionDetail

    PasswordPolicy.add_member(:minimum_password_length, Shapes::ShapeRef.new(shape: minimumPasswordLengthType, location_name: "MinimumPasswordLength"))
    PasswordPolicy.add_member(:require_symbols, Shapes::ShapeRef.new(shape: booleanType, location_name: "RequireSymbols"))
    PasswordPolicy.add_member(:require_numbers, Shapes::ShapeRef.new(shape: booleanType, location_name: "RequireNumbers"))
    PasswordPolicy.add_member(:require_uppercase_characters, Shapes::ShapeRef.new(shape: booleanType, location_name: "RequireUppercaseCharacters"))
    PasswordPolicy.add_member(:require_lowercase_characters, Shapes::ShapeRef.new(shape: booleanType, location_name: "RequireLowercaseCharacters"))
    PasswordPolicy.add_member(:allow_users_to_change_password, Shapes::ShapeRef.new(shape: booleanType, location_name: "AllowUsersToChangePassword"))
    PasswordPolicy.add_member(:expire_passwords, Shapes::ShapeRef.new(shape: booleanType, location_name: "ExpirePasswords"))
    PasswordPolicy.add_member(:max_password_age, Shapes::ShapeRef.new(shape: maxPasswordAgeType, location_name: "MaxPasswordAge"))
    PasswordPolicy.add_member(:password_reuse_prevention, Shapes::ShapeRef.new(shape: passwordReusePreventionType, location_name: "PasswordReusePrevention"))
    PasswordPolicy.add_member(:hard_expiry, Shapes::ShapeRef.new(shape: booleanObjectType, location_name: "HardExpiry"))
    PasswordPolicy.struct_class = Types::PasswordPolicy

    PasswordPolicyViolationException.add_member(:message, Shapes::ShapeRef.new(shape: passwordPolicyViolationMessage, location_name: "message"))
    PasswordPolicyViolationException.struct_class = Types::PasswordPolicyViolationException

    PermissionsBoundaryDecisionDetail.add_member(:allowed_by_permissions_boundary, Shapes::ShapeRef.new(shape: booleanType, location_name: "AllowedByPermissionsBoundary"))
    PermissionsBoundaryDecisionDetail.struct_class = Types::PermissionsBoundaryDecisionDetail

    Policy.add_member(:policy_name, Shapes::ShapeRef.new(shape: policyNameType, location_name: "PolicyName"))
    Policy.add_member(:policy_id, Shapes::ShapeRef.new(shape: idType, location_name: "PolicyId"))
    Policy.add_member(:arn, Shapes::ShapeRef.new(shape: arnType, location_name: "Arn"))
    Policy.add_member(:path, Shapes::ShapeRef.new(shape: policyPathType, location_name: "Path"))
    Policy.add_member(:default_version_id, Shapes::ShapeRef.new(shape: policyVersionIdType, location_name: "DefaultVersionId"))
    Policy.add_member(:attachment_count, Shapes::ShapeRef.new(shape: attachmentCountType, location_name: "AttachmentCount"))
    Policy.add_member(:permissions_boundary_usage_count, Shapes::ShapeRef.new(shape: attachmentCountType, location_name: "PermissionsBoundaryUsageCount"))
    Policy.add_member(:is_attachable, Shapes::ShapeRef.new(shape: booleanType, location_name: "IsAttachable"))
    Policy.add_member(:description, Shapes::ShapeRef.new(shape: policyDescriptionType, location_name: "Description"))
    Policy.add_member(:create_date, Shapes::ShapeRef.new(shape: dateType, location_name: "CreateDate"))
    Policy.add_member(:update_date, Shapes::ShapeRef.new(shape: dateType, location_name: "UpdateDate"))
    Policy.struct_class = Types::Policy

    PolicyDetail.add_member(:policy_name, Shapes::ShapeRef.new(shape: policyNameType, location_name: "PolicyName"))
    PolicyDetail.add_member(:policy_document, Shapes::ShapeRef.new(shape: policyDocumentType, location_name: "PolicyDocument"))
    PolicyDetail.struct_class = Types::PolicyDetail

    PolicyEvaluationException.add_member(:message, Shapes::ShapeRef.new(shape: policyEvaluationErrorMessage, location_name: "message"))
    PolicyEvaluationException.struct_class = Types::PolicyEvaluationException

    PolicyGrantingServiceAccess.add_member(:policy_name, Shapes::ShapeRef.new(shape: policyNameType, required: true, location_name: "PolicyName"))
    PolicyGrantingServiceAccess.add_member(:policy_type, Shapes::ShapeRef.new(shape: policyType, required: true, location_name: "PolicyType"))
    PolicyGrantingServiceAccess.add_member(:policy_arn, Shapes::ShapeRef.new(shape: arnType, location_name: "PolicyArn"))
    PolicyGrantingServiceAccess.add_member(:entity_type, Shapes::ShapeRef.new(shape: policyOwnerEntityType, location_name: "EntityType"))
    PolicyGrantingServiceAccess.add_member(:entity_name, Shapes::ShapeRef.new(shape: entityNameType, location_name: "EntityName"))
    PolicyGrantingServiceAccess.struct_class = Types::PolicyGrantingServiceAccess

    PolicyGroup.add_member(:group_name, Shapes::ShapeRef.new(shape: groupNameType, location_name: "GroupName"))
    PolicyGroup.add_member(:group_id, Shapes::ShapeRef.new(shape: idType, location_name: "GroupId"))
    PolicyGroup.struct_class = Types::PolicyGroup

    PolicyGroupListType.member = Shapes::ShapeRef.new(shape: PolicyGroup)

    PolicyNotAttachableException.add_member(:message, Shapes::ShapeRef.new(shape: policyNotAttachableMessage, location_name: "message"))
    PolicyNotAttachableException.struct_class = Types::PolicyNotAttachableException

    PolicyRole.add_member(:role_name, Shapes::ShapeRef.new(shape: roleNameType, location_name: "RoleName"))
    PolicyRole.add_member(:role_id, Shapes::ShapeRef.new(shape: idType, location_name: "RoleId"))
    PolicyRole.struct_class = Types::PolicyRole

    PolicyRoleListType.member = Shapes::ShapeRef.new(shape: PolicyRole)

    PolicyUser.add_member(:user_name, Shapes::ShapeRef.new(shape: userNameType, location_name: "UserName"))
    PolicyUser.add_member(:user_id, Shapes::ShapeRef.new(shape: idType, location_name: "UserId"))
    PolicyUser.struct_class = Types::PolicyUser

    PolicyUserListType.member = Shapes::ShapeRef.new(shape: PolicyUser)

    PolicyVersion.add_member(:document, Shapes::ShapeRef.new(shape: policyDocumentType, location_name: "Document"))
    PolicyVersion.add_member(:version_id, Shapes::ShapeRef.new(shape: policyVersionIdType, location_name: "VersionId"))
    PolicyVersion.add_member(:is_default_version, Shapes::ShapeRef.new(shape: booleanType, location_name: "IsDefaultVersion"))
    PolicyVersion.add_member(:create_date, Shapes::ShapeRef.new(shape: dateType, location_name: "CreateDate"))
    PolicyVersion.struct_class = Types::PolicyVersion

    Position.add_member(:line, Shapes::ShapeRef.new(shape: LineNumber, location_name: "Line"))
    Position.add_member(:column, Shapes::ShapeRef.new(shape: ColumnNumber, location_name: "Column"))
    Position.struct_class = Types::Position

    PutGroupPolicyRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: groupNameType, required: true, location_name: "GroupName"))
    PutGroupPolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: policyNameType, required: true, location_name: "PolicyName"))
    PutGroupPolicyRequest.add_member(:policy_document, Shapes::ShapeRef.new(shape: policyDocumentType, required: true, location_name: "PolicyDocument"))
    PutGroupPolicyRequest.struct_class = Types::PutGroupPolicyRequest

    PutRolePermissionsBoundaryRequest.add_member(:role_name, Shapes::ShapeRef.new(shape: roleNameType, required: true, location_name: "RoleName"))
    PutRolePermissionsBoundaryRequest.add_member(:permissions_boundary, Shapes::ShapeRef.new(shape: arnType, required: true, location_name: "PermissionsBoundary"))
    PutRolePermissionsBoundaryRequest.struct_class = Types::PutRolePermissionsBoundaryRequest

    PutRolePolicyRequest.add_member(:role_name, Shapes::ShapeRef.new(shape: roleNameType, required: true, location_name: "RoleName"))
    PutRolePolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: policyNameType, required: true, location_name: "PolicyName"))
    PutRolePolicyRequest.add_member(:policy_document, Shapes::ShapeRef.new(shape: policyDocumentType, required: true, location_name: "PolicyDocument"))
    PutRolePolicyRequest.struct_class = Types::PutRolePolicyRequest

    PutUserPermissionsBoundaryRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: userNameType, required: true, location_name: "UserName"))
    PutUserPermissionsBoundaryRequest.add_member(:permissions_boundary, Shapes::ShapeRef.new(shape: arnType, required: true, location_name: "PermissionsBoundary"))
    PutUserPermissionsBoundaryRequest.struct_class = Types::PutUserPermissionsBoundaryRequest

    PutUserPolicyRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: existingUserNameType, required: true, location_name: "UserName"))
    PutUserPolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: policyNameType, required: true, location_name: "PolicyName"))
    PutUserPolicyRequest.add_member(:policy_document, Shapes::ShapeRef.new(shape: policyDocumentType, required: true, location_name: "PolicyDocument"))
    PutUserPolicyRequest.struct_class = Types::PutUserPolicyRequest

    RemoveClientIDFromOpenIDConnectProviderRequest.add_member(:open_id_connect_provider_arn, Shapes::ShapeRef.new(shape: arnType, required: true, location_name: "OpenIDConnectProviderArn"))
    RemoveClientIDFromOpenIDConnectProviderRequest.add_member(:client_id, Shapes::ShapeRef.new(shape: clientIDType, required: true, location_name: "ClientID"))
    RemoveClientIDFromOpenIDConnectProviderRequest.struct_class = Types::RemoveClientIDFromOpenIDConnectProviderRequest

    RemoveRoleFromInstanceProfileRequest.add_member(:instance_profile_name, Shapes::ShapeRef.new(shape: instanceProfileNameType, required: true, location_name: "InstanceProfileName"))
    RemoveRoleFromInstanceProfileRequest.add_member(:role_name, Shapes::ShapeRef.new(shape: roleNameType, required: true, location_name: "RoleName"))
    RemoveRoleFromInstanceProfileRequest.struct_class = Types::RemoveRoleFromInstanceProfileRequest

    RemoveUserFromGroupRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: groupNameType, required: true, location_name: "GroupName"))
    RemoveUserFromGroupRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: existingUserNameType, required: true, location_name: "UserName"))
    RemoveUserFromGroupRequest.struct_class = Types::RemoveUserFromGroupRequest

    ReportGenerationLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: reportGenerationLimitExceededMessage, location_name: "message"))
    ReportGenerationLimitExceededException.struct_class = Types::ReportGenerationLimitExceededException

    ResetServiceSpecificCredentialRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: userNameType, location_name: "UserName"))
    ResetServiceSpecificCredentialRequest.add_member(:service_specific_credential_id, Shapes::ShapeRef.new(shape: serviceSpecificCredentialId, required: true, location_name: "ServiceSpecificCredentialId"))
    ResetServiceSpecificCredentialRequest.struct_class = Types::ResetServiceSpecificCredentialRequest

    ResetServiceSpecificCredentialResponse.add_member(:service_specific_credential, Shapes::ShapeRef.new(shape: ServiceSpecificCredential, location_name: "ServiceSpecificCredential"))
    ResetServiceSpecificCredentialResponse.struct_class = Types::ResetServiceSpecificCredentialResponse

    ResourceNameListType.member = Shapes::ShapeRef.new(shape: ResourceNameType)

    ResourceSpecificResult.add_member(:eval_resource_name, Shapes::ShapeRef.new(shape: ResourceNameType, required: true, location_name: "EvalResourceName"))
    ResourceSpecificResult.add_member(:eval_resource_decision, Shapes::ShapeRef.new(shape: PolicyEvaluationDecisionType, required: true, location_name: "EvalResourceDecision"))
    ResourceSpecificResult.add_member(:matched_statements, Shapes::ShapeRef.new(shape: StatementListType, location_name: "MatchedStatements"))
    ResourceSpecificResult.add_member(:missing_context_values, Shapes::ShapeRef.new(shape: ContextKeyNamesResultListType, location_name: "MissingContextValues"))
    ResourceSpecificResult.add_member(:eval_decision_details, Shapes::ShapeRef.new(shape: EvalDecisionDetailsType, location_name: "EvalDecisionDetails"))
    ResourceSpecificResult.add_member(:permissions_boundary_decision_detail, Shapes::ShapeRef.new(shape: PermissionsBoundaryDecisionDetail, location_name: "PermissionsBoundaryDecisionDetail"))
    ResourceSpecificResult.struct_class = Types::ResourceSpecificResult

    ResourceSpecificResultListType.member = Shapes::ShapeRef.new(shape: ResourceSpecificResult)

    ResyncMFADeviceRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: existingUserNameType, required: true, location_name: "UserName"))
    ResyncMFADeviceRequest.add_member(:serial_number, Shapes::ShapeRef.new(shape: serialNumberType, required: true, location_name: "SerialNumber"))
    ResyncMFADeviceRequest.add_member(:authentication_code_1, Shapes::ShapeRef.new(shape: authenticationCodeType, required: true, location_name: "AuthenticationCode1"))
    ResyncMFADeviceRequest.add_member(:authentication_code_2, Shapes::ShapeRef.new(shape: authenticationCodeType, required: true, location_name: "AuthenticationCode2"))
    ResyncMFADeviceRequest.struct_class = Types::ResyncMFADeviceRequest

    Role.add_member(:path, Shapes::ShapeRef.new(shape: pathType, required: true, location_name: "Path"))
    Role.add_member(:role_name, Shapes::ShapeRef.new(shape: roleNameType, required: true, location_name: "RoleName"))
    Role.add_member(:role_id, Shapes::ShapeRef.new(shape: idType, required: true, location_name: "RoleId"))
    Role.add_member(:arn, Shapes::ShapeRef.new(shape: arnType, required: true, location_name: "Arn"))
    Role.add_member(:create_date, Shapes::ShapeRef.new(shape: dateType, required: true, location_name: "CreateDate"))
    Role.add_member(:assume_role_policy_document, Shapes::ShapeRef.new(shape: policyDocumentType, location_name: "AssumeRolePolicyDocument"))
    Role.add_member(:description, Shapes::ShapeRef.new(shape: roleDescriptionType, location_name: "Description"))
    Role.add_member(:max_session_duration, Shapes::ShapeRef.new(shape: roleMaxSessionDurationType, location_name: "MaxSessionDuration"))
    Role.add_member(:permissions_boundary, Shapes::ShapeRef.new(shape: AttachedPermissionsBoundary, location_name: "PermissionsBoundary"))
    Role.add_member(:tags, Shapes::ShapeRef.new(shape: tagListType, location_name: "Tags"))
    Role.add_member(:role_last_used, Shapes::ShapeRef.new(shape: RoleLastUsed, location_name: "RoleLastUsed"))
    Role.struct_class = Types::Role

    RoleDetail.add_member(:path, Shapes::ShapeRef.new(shape: pathType, location_name: "Path"))
    RoleDetail.add_member(:role_name, Shapes::ShapeRef.new(shape: roleNameType, location_name: "RoleName"))
    RoleDetail.add_member(:role_id, Shapes::ShapeRef.new(shape: idType, location_name: "RoleId"))
    RoleDetail.add_member(:arn, Shapes::ShapeRef.new(shape: arnType, location_name: "Arn"))
    RoleDetail.add_member(:create_date, Shapes::ShapeRef.new(shape: dateType, location_name: "CreateDate"))
    RoleDetail.add_member(:assume_role_policy_document, Shapes::ShapeRef.new(shape: policyDocumentType, location_name: "AssumeRolePolicyDocument"))
    RoleDetail.add_member(:instance_profile_list, Shapes::ShapeRef.new(shape: instanceProfileListType, location_name: "InstanceProfileList"))
    RoleDetail.add_member(:role_policy_list, Shapes::ShapeRef.new(shape: policyDetailListType, location_name: "RolePolicyList"))
    RoleDetail.add_member(:attached_managed_policies, Shapes::ShapeRef.new(shape: attachedPoliciesListType, location_name: "AttachedManagedPolicies"))
    RoleDetail.add_member(:permissions_boundary, Shapes::ShapeRef.new(shape: AttachedPermissionsBoundary, location_name: "PermissionsBoundary"))
    RoleDetail.add_member(:tags, Shapes::ShapeRef.new(shape: tagListType, location_name: "Tags"))
    RoleDetail.add_member(:role_last_used, Shapes::ShapeRef.new(shape: RoleLastUsed, location_name: "RoleLastUsed"))
    RoleDetail.struct_class = Types::RoleDetail

    RoleLastUsed.add_member(:last_used_date, Shapes::ShapeRef.new(shape: dateType, location_name: "LastUsedDate"))
    RoleLastUsed.add_member(:region, Shapes::ShapeRef.new(shape: stringType, location_name: "Region"))
    RoleLastUsed.struct_class = Types::RoleLastUsed

    RoleUsageListType.member = Shapes::ShapeRef.new(shape: RoleUsageType)

    RoleUsageType.add_member(:region, Shapes::ShapeRef.new(shape: RegionNameType, location_name: "Region"))
    RoleUsageType.add_member(:resources, Shapes::ShapeRef.new(shape: ArnListType, location_name: "Resources"))
    RoleUsageType.struct_class = Types::RoleUsageType

    SAMLProviderListEntry.add_member(:arn, Shapes::ShapeRef.new(shape: arnType, location_name: "Arn"))
    SAMLProviderListEntry.add_member(:valid_until, Shapes::ShapeRef.new(shape: dateType, location_name: "ValidUntil"))
    SAMLProviderListEntry.add_member(:create_date, Shapes::ShapeRef.new(shape: dateType, location_name: "CreateDate"))
    SAMLProviderListEntry.struct_class = Types::SAMLProviderListEntry

    SAMLProviderListType.member = Shapes::ShapeRef.new(shape: SAMLProviderListEntry)

    SSHPublicKey.add_member(:user_name, Shapes::ShapeRef.new(shape: userNameType, required: true, location_name: "UserName"))
    SSHPublicKey.add_member(:ssh_public_key_id, Shapes::ShapeRef.new(shape: publicKeyIdType, required: true, location_name: "SSHPublicKeyId"))
    SSHPublicKey.add_member(:fingerprint, Shapes::ShapeRef.new(shape: publicKeyFingerprintType, required: true, location_name: "Fingerprint"))
    SSHPublicKey.add_member(:ssh_public_key_body, Shapes::ShapeRef.new(shape: publicKeyMaterialType, required: true, location_name: "SSHPublicKeyBody"))
    SSHPublicKey.add_member(:status, Shapes::ShapeRef.new(shape: statusType, required: true, location_name: "Status"))
    SSHPublicKey.add_member(:upload_date, Shapes::ShapeRef.new(shape: dateType, location_name: "UploadDate"))
    SSHPublicKey.struct_class = Types::SSHPublicKey

    SSHPublicKeyListType.member = Shapes::ShapeRef.new(shape: SSHPublicKeyMetadata)

    SSHPublicKeyMetadata.add_member(:user_name, Shapes::ShapeRef.new(shape: userNameType, required: true, location_name: "UserName"))
    SSHPublicKeyMetadata.add_member(:ssh_public_key_id, Shapes::ShapeRef.new(shape: publicKeyIdType, required: true, location_name: "SSHPublicKeyId"))
    SSHPublicKeyMetadata.add_member(:status, Shapes::ShapeRef.new(shape: statusType, required: true, location_name: "Status"))
    SSHPublicKeyMetadata.add_member(:upload_date, Shapes::ShapeRef.new(shape: dateType, required: true, location_name: "UploadDate"))
    SSHPublicKeyMetadata.struct_class = Types::SSHPublicKeyMetadata

    ServerCertificate.add_member(:server_certificate_metadata, Shapes::ShapeRef.new(shape: ServerCertificateMetadata, required: true, location_name: "ServerCertificateMetadata"))
    ServerCertificate.add_member(:certificate_body, Shapes::ShapeRef.new(shape: certificateBodyType, required: true, location_name: "CertificateBody"))
    ServerCertificate.add_member(:certificate_chain, Shapes::ShapeRef.new(shape: certificateChainType, location_name: "CertificateChain"))
    ServerCertificate.struct_class = Types::ServerCertificate

    ServerCertificateMetadata.add_member(:path, Shapes::ShapeRef.new(shape: pathType, required: true, location_name: "Path"))
    ServerCertificateMetadata.add_member(:server_certificate_name, Shapes::ShapeRef.new(shape: serverCertificateNameType, required: true, location_name: "ServerCertificateName"))
    ServerCertificateMetadata.add_member(:server_certificate_id, Shapes::ShapeRef.new(shape: idType, required: true, location_name: "ServerCertificateId"))
    ServerCertificateMetadata.add_member(:arn, Shapes::ShapeRef.new(shape: arnType, required: true, location_name: "Arn"))
    ServerCertificateMetadata.add_member(:upload_date, Shapes::ShapeRef.new(shape: dateType, location_name: "UploadDate"))
    ServerCertificateMetadata.add_member(:expiration, Shapes::ShapeRef.new(shape: dateType, location_name: "Expiration"))
    ServerCertificateMetadata.struct_class = Types::ServerCertificateMetadata

    ServiceFailureException.add_member(:message, Shapes::ShapeRef.new(shape: serviceFailureExceptionMessage, location_name: "message"))
    ServiceFailureException.struct_class = Types::ServiceFailureException

    ServiceLastAccessed.add_member(:service_name, Shapes::ShapeRef.new(shape: serviceNameType, required: true, location_name: "ServiceName"))
    ServiceLastAccessed.add_member(:last_authenticated, Shapes::ShapeRef.new(shape: dateType, location_name: "LastAuthenticated"))
    ServiceLastAccessed.add_member(:service_namespace, Shapes::ShapeRef.new(shape: serviceNamespaceType, required: true, location_name: "ServiceNamespace"))
    ServiceLastAccessed.add_member(:last_authenticated_entity, Shapes::ShapeRef.new(shape: arnType, location_name: "LastAuthenticatedEntity"))
    ServiceLastAccessed.add_member(:last_authenticated_region, Shapes::ShapeRef.new(shape: stringType, location_name: "LastAuthenticatedRegion"))
    ServiceLastAccessed.add_member(:total_authenticated_entities, Shapes::ShapeRef.new(shape: integerType, location_name: "TotalAuthenticatedEntities"))
    ServiceLastAccessed.add_member(:tracked_actions_last_accessed, Shapes::ShapeRef.new(shape: TrackedActionsLastAccessed, location_name: "TrackedActionsLastAccessed"))
    ServiceLastAccessed.struct_class = Types::ServiceLastAccessed

    ServiceNotSupportedException.add_member(:message, Shapes::ShapeRef.new(shape: serviceNotSupportedMessage, location_name: "message"))
    ServiceNotSupportedException.struct_class = Types::ServiceNotSupportedException

    ServiceSpecificCredential.add_member(:create_date, Shapes::ShapeRef.new(shape: dateType, required: true, location_name: "CreateDate"))
    ServiceSpecificCredential.add_member(:service_name, Shapes::ShapeRef.new(shape: serviceName, required: true, location_name: "ServiceName"))
    ServiceSpecificCredential.add_member(:service_user_name, Shapes::ShapeRef.new(shape: serviceUserName, required: true, location_name: "ServiceUserName"))
    ServiceSpecificCredential.add_member(:service_password, Shapes::ShapeRef.new(shape: servicePassword, required: true, location_name: "ServicePassword"))
    ServiceSpecificCredential.add_member(:service_specific_credential_id, Shapes::ShapeRef.new(shape: serviceSpecificCredentialId, required: true, location_name: "ServiceSpecificCredentialId"))
    ServiceSpecificCredential.add_member(:user_name, Shapes::ShapeRef.new(shape: userNameType, required: true, location_name: "UserName"))
    ServiceSpecificCredential.add_member(:status, Shapes::ShapeRef.new(shape: statusType, required: true, location_name: "Status"))
    ServiceSpecificCredential.struct_class = Types::ServiceSpecificCredential

    ServiceSpecificCredentialMetadata.add_member(:user_name, Shapes::ShapeRef.new(shape: userNameType, required: true, location_name: "UserName"))
    ServiceSpecificCredentialMetadata.add_member(:status, Shapes::ShapeRef.new(shape: statusType, required: true, location_name: "Status"))
    ServiceSpecificCredentialMetadata.add_member(:service_user_name, Shapes::ShapeRef.new(shape: serviceUserName, required: true, location_name: "ServiceUserName"))
    ServiceSpecificCredentialMetadata.add_member(:create_date, Shapes::ShapeRef.new(shape: dateType, required: true, location_name: "CreateDate"))
    ServiceSpecificCredentialMetadata.add_member(:service_specific_credential_id, Shapes::ShapeRef.new(shape: serviceSpecificCredentialId, required: true, location_name: "ServiceSpecificCredentialId"))
    ServiceSpecificCredentialMetadata.add_member(:service_name, Shapes::ShapeRef.new(shape: serviceName, required: true, location_name: "ServiceName"))
    ServiceSpecificCredentialMetadata.struct_class = Types::ServiceSpecificCredentialMetadata

    ServiceSpecificCredentialsListType.member = Shapes::ShapeRef.new(shape: ServiceSpecificCredentialMetadata)

    ServicesLastAccessed.member = Shapes::ShapeRef.new(shape: ServiceLastAccessed)

    SetDefaultPolicyVersionRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: arnType, required: true, location_name: "PolicyArn"))
    SetDefaultPolicyVersionRequest.add_member(:version_id, Shapes::ShapeRef.new(shape: policyVersionIdType, required: true, location_name: "VersionId"))
    SetDefaultPolicyVersionRequest.struct_class = Types::SetDefaultPolicyVersionRequest

    SetSecurityTokenServicePreferencesRequest.add_member(:global_endpoint_token_version, Shapes::ShapeRef.new(shape: globalEndpointTokenVersion, required: true, location_name: "GlobalEndpointTokenVersion"))
    SetSecurityTokenServicePreferencesRequest.struct_class = Types::SetSecurityTokenServicePreferencesRequest

    SigningCertificate.add_member(:user_name, Shapes::ShapeRef.new(shape: userNameType, required: true, location_name: "UserName"))
    SigningCertificate.add_member(:certificate_id, Shapes::ShapeRef.new(shape: certificateIdType, required: true, location_name: "CertificateId"))
    SigningCertificate.add_member(:certificate_body, Shapes::ShapeRef.new(shape: certificateBodyType, required: true, location_name: "CertificateBody"))
    SigningCertificate.add_member(:status, Shapes::ShapeRef.new(shape: statusType, required: true, location_name: "Status"))
    SigningCertificate.add_member(:upload_date, Shapes::ShapeRef.new(shape: dateType, location_name: "UploadDate"))
    SigningCertificate.struct_class = Types::SigningCertificate

    SimulateCustomPolicyRequest.add_member(:policy_input_list, Shapes::ShapeRef.new(shape: SimulationPolicyListType, required: true, location_name: "PolicyInputList"))
    SimulateCustomPolicyRequest.add_member(:permissions_boundary_policy_input_list, Shapes::ShapeRef.new(shape: SimulationPolicyListType, location_name: "PermissionsBoundaryPolicyInputList"))
    SimulateCustomPolicyRequest.add_member(:action_names, Shapes::ShapeRef.new(shape: ActionNameListType, required: true, location_name: "ActionNames"))
    SimulateCustomPolicyRequest.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceNameListType, location_name: "ResourceArns"))
    SimulateCustomPolicyRequest.add_member(:resource_policy, Shapes::ShapeRef.new(shape: policyDocumentType, location_name: "ResourcePolicy"))
    SimulateCustomPolicyRequest.add_member(:resource_owner, Shapes::ShapeRef.new(shape: ResourceNameType, location_name: "ResourceOwner"))
    SimulateCustomPolicyRequest.add_member(:caller_arn, Shapes::ShapeRef.new(shape: ResourceNameType, location_name: "CallerArn"))
    SimulateCustomPolicyRequest.add_member(:context_entries, Shapes::ShapeRef.new(shape: ContextEntryListType, location_name: "ContextEntries"))
    SimulateCustomPolicyRequest.add_member(:resource_handling_option, Shapes::ShapeRef.new(shape: ResourceHandlingOptionType, location_name: "ResourceHandlingOption"))
    SimulateCustomPolicyRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: maxItemsType, location_name: "MaxItems"))
    SimulateCustomPolicyRequest.add_member(:marker, Shapes::ShapeRef.new(shape: markerType, location_name: "Marker"))
    SimulateCustomPolicyRequest.struct_class = Types::SimulateCustomPolicyRequest

    SimulatePolicyResponse.add_member(:evaluation_results, Shapes::ShapeRef.new(shape: EvaluationResultsListType, location_name: "EvaluationResults"))
    SimulatePolicyResponse.add_member(:is_truncated, Shapes::ShapeRef.new(shape: booleanType, location_name: "IsTruncated"))
    SimulatePolicyResponse.add_member(:marker, Shapes::ShapeRef.new(shape: responseMarkerType, location_name: "Marker"))
    SimulatePolicyResponse.struct_class = Types::SimulatePolicyResponse

    SimulatePrincipalPolicyRequest.add_member(:policy_source_arn, Shapes::ShapeRef.new(shape: arnType, required: true, location_name: "PolicySourceArn"))
    SimulatePrincipalPolicyRequest.add_member(:policy_input_list, Shapes::ShapeRef.new(shape: SimulationPolicyListType, location_name: "PolicyInputList"))
    SimulatePrincipalPolicyRequest.add_member(:permissions_boundary_policy_input_list, Shapes::ShapeRef.new(shape: SimulationPolicyListType, location_name: "PermissionsBoundaryPolicyInputList"))
    SimulatePrincipalPolicyRequest.add_member(:action_names, Shapes::ShapeRef.new(shape: ActionNameListType, required: true, location_name: "ActionNames"))
    SimulatePrincipalPolicyRequest.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceNameListType, location_name: "ResourceArns"))
    SimulatePrincipalPolicyRequest.add_member(:resource_policy, Shapes::ShapeRef.new(shape: policyDocumentType, location_name: "ResourcePolicy"))
    SimulatePrincipalPolicyRequest.add_member(:resource_owner, Shapes::ShapeRef.new(shape: ResourceNameType, location_name: "ResourceOwner"))
    SimulatePrincipalPolicyRequest.add_member(:caller_arn, Shapes::ShapeRef.new(shape: ResourceNameType, location_name: "CallerArn"))
    SimulatePrincipalPolicyRequest.add_member(:context_entries, Shapes::ShapeRef.new(shape: ContextEntryListType, location_name: "ContextEntries"))
    SimulatePrincipalPolicyRequest.add_member(:resource_handling_option, Shapes::ShapeRef.new(shape: ResourceHandlingOptionType, location_name: "ResourceHandlingOption"))
    SimulatePrincipalPolicyRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: maxItemsType, location_name: "MaxItems"))
    SimulatePrincipalPolicyRequest.add_member(:marker, Shapes::ShapeRef.new(shape: markerType, location_name: "Marker"))
    SimulatePrincipalPolicyRequest.struct_class = Types::SimulatePrincipalPolicyRequest

    SimulationPolicyListType.member = Shapes::ShapeRef.new(shape: policyDocumentType)

    Statement.add_member(:source_policy_id, Shapes::ShapeRef.new(shape: PolicyIdentifierType, location_name: "SourcePolicyId"))
    Statement.add_member(:source_policy_type, Shapes::ShapeRef.new(shape: PolicySourceType, location_name: "SourcePolicyType"))
    Statement.add_member(:start_position, Shapes::ShapeRef.new(shape: Position, location_name: "StartPosition"))
    Statement.add_member(:end_position, Shapes::ShapeRef.new(shape: Position, location_name: "EndPosition"))
    Statement.struct_class = Types::Statement

    StatementListType.member = Shapes::ShapeRef.new(shape: Statement)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: tagKeyType, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: tagValueType, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagRoleRequest.add_member(:role_name, Shapes::ShapeRef.new(shape: roleNameType, required: true, location_name: "RoleName"))
    TagRoleRequest.add_member(:tags, Shapes::ShapeRef.new(shape: tagListType, required: true, location_name: "Tags"))
    TagRoleRequest.struct_class = Types::TagRoleRequest

    TagUserRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: existingUserNameType, required: true, location_name: "UserName"))
    TagUserRequest.add_member(:tags, Shapes::ShapeRef.new(shape: tagListType, required: true, location_name: "Tags"))
    TagUserRequest.struct_class = Types::TagUserRequest

    TrackedActionLastAccessed.add_member(:action_name, Shapes::ShapeRef.new(shape: stringType, location_name: "ActionName"))
    TrackedActionLastAccessed.add_member(:last_accessed_entity, Shapes::ShapeRef.new(shape: arnType, location_name: "LastAccessedEntity"))
    TrackedActionLastAccessed.add_member(:last_accessed_time, Shapes::ShapeRef.new(shape: dateType, location_name: "LastAccessedTime"))
    TrackedActionLastAccessed.add_member(:last_accessed_region, Shapes::ShapeRef.new(shape: stringType, location_name: "LastAccessedRegion"))
    TrackedActionLastAccessed.struct_class = Types::TrackedActionLastAccessed

    TrackedActionsLastAccessed.member = Shapes::ShapeRef.new(shape: TrackedActionLastAccessed)

    UnmodifiableEntityException.add_member(:message, Shapes::ShapeRef.new(shape: unmodifiableEntityMessage, location_name: "message"))
    UnmodifiableEntityException.struct_class = Types::UnmodifiableEntityException

    UnrecognizedPublicKeyEncodingException.add_member(:message, Shapes::ShapeRef.new(shape: unrecognizedPublicKeyEncodingMessage, location_name: "message"))
    UnrecognizedPublicKeyEncodingException.struct_class = Types::UnrecognizedPublicKeyEncodingException

    UntagRoleRequest.add_member(:role_name, Shapes::ShapeRef.new(shape: roleNameType, required: true, location_name: "RoleName"))
    UntagRoleRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: tagKeyListType, required: true, location_name: "TagKeys"))
    UntagRoleRequest.struct_class = Types::UntagRoleRequest

    UntagUserRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: existingUserNameType, required: true, location_name: "UserName"))
    UntagUserRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: tagKeyListType, required: true, location_name: "TagKeys"))
    UntagUserRequest.struct_class = Types::UntagUserRequest

    UpdateAccessKeyRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: existingUserNameType, location_name: "UserName"))
    UpdateAccessKeyRequest.add_member(:access_key_id, Shapes::ShapeRef.new(shape: accessKeyIdType, required: true, location_name: "AccessKeyId"))
    UpdateAccessKeyRequest.add_member(:status, Shapes::ShapeRef.new(shape: statusType, required: true, location_name: "Status"))
    UpdateAccessKeyRequest.struct_class = Types::UpdateAccessKeyRequest

    UpdateAccountPasswordPolicyRequest.add_member(:minimum_password_length, Shapes::ShapeRef.new(shape: minimumPasswordLengthType, location_name: "MinimumPasswordLength"))
    UpdateAccountPasswordPolicyRequest.add_member(:require_symbols, Shapes::ShapeRef.new(shape: booleanType, location_name: "RequireSymbols"))
    UpdateAccountPasswordPolicyRequest.add_member(:require_numbers, Shapes::ShapeRef.new(shape: booleanType, location_name: "RequireNumbers"))
    UpdateAccountPasswordPolicyRequest.add_member(:require_uppercase_characters, Shapes::ShapeRef.new(shape: booleanType, location_name: "RequireUppercaseCharacters"))
    UpdateAccountPasswordPolicyRequest.add_member(:require_lowercase_characters, Shapes::ShapeRef.new(shape: booleanType, location_name: "RequireLowercaseCharacters"))
    UpdateAccountPasswordPolicyRequest.add_member(:allow_users_to_change_password, Shapes::ShapeRef.new(shape: booleanType, location_name: "AllowUsersToChangePassword"))
    UpdateAccountPasswordPolicyRequest.add_member(:max_password_age, Shapes::ShapeRef.new(shape: maxPasswordAgeType, location_name: "MaxPasswordAge"))
    UpdateAccountPasswordPolicyRequest.add_member(:password_reuse_prevention, Shapes::ShapeRef.new(shape: passwordReusePreventionType, location_name: "PasswordReusePrevention"))
    UpdateAccountPasswordPolicyRequest.add_member(:hard_expiry, Shapes::ShapeRef.new(shape: booleanObjectType, location_name: "HardExpiry"))
    UpdateAccountPasswordPolicyRequest.struct_class = Types::UpdateAccountPasswordPolicyRequest

    UpdateAssumeRolePolicyRequest.add_member(:role_name, Shapes::ShapeRef.new(shape: roleNameType, required: true, location_name: "RoleName"))
    UpdateAssumeRolePolicyRequest.add_member(:policy_document, Shapes::ShapeRef.new(shape: policyDocumentType, required: true, location_name: "PolicyDocument"))
    UpdateAssumeRolePolicyRequest.struct_class = Types::UpdateAssumeRolePolicyRequest

    UpdateGroupRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: groupNameType, required: true, location_name: "GroupName"))
    UpdateGroupRequest.add_member(:new_path, Shapes::ShapeRef.new(shape: pathType, location_name: "NewPath"))
    UpdateGroupRequest.add_member(:new_group_name, Shapes::ShapeRef.new(shape: groupNameType, location_name: "NewGroupName"))
    UpdateGroupRequest.struct_class = Types::UpdateGroupRequest

    UpdateLoginProfileRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: userNameType, required: true, location_name: "UserName"))
    UpdateLoginProfileRequest.add_member(:password, Shapes::ShapeRef.new(shape: passwordType, location_name: "Password"))
    UpdateLoginProfileRequest.add_member(:password_reset_required, Shapes::ShapeRef.new(shape: booleanObjectType, location_name: "PasswordResetRequired"))
    UpdateLoginProfileRequest.struct_class = Types::UpdateLoginProfileRequest

    UpdateOpenIDConnectProviderThumbprintRequest.add_member(:open_id_connect_provider_arn, Shapes::ShapeRef.new(shape: arnType, required: true, location_name: "OpenIDConnectProviderArn"))
    UpdateOpenIDConnectProviderThumbprintRequest.add_member(:thumbprint_list, Shapes::ShapeRef.new(shape: thumbprintListType, required: true, location_name: "ThumbprintList"))
    UpdateOpenIDConnectProviderThumbprintRequest.struct_class = Types::UpdateOpenIDConnectProviderThumbprintRequest

    UpdateRoleDescriptionRequest.add_member(:role_name, Shapes::ShapeRef.new(shape: roleNameType, required: true, location_name: "RoleName"))
    UpdateRoleDescriptionRequest.add_member(:description, Shapes::ShapeRef.new(shape: roleDescriptionType, required: true, location_name: "Description"))
    UpdateRoleDescriptionRequest.struct_class = Types::UpdateRoleDescriptionRequest

    UpdateRoleDescriptionResponse.add_member(:role, Shapes::ShapeRef.new(shape: Role, location_name: "Role"))
    UpdateRoleDescriptionResponse.struct_class = Types::UpdateRoleDescriptionResponse

    UpdateRoleRequest.add_member(:role_name, Shapes::ShapeRef.new(shape: roleNameType, required: true, location_name: "RoleName"))
    UpdateRoleRequest.add_member(:description, Shapes::ShapeRef.new(shape: roleDescriptionType, location_name: "Description"))
    UpdateRoleRequest.add_member(:max_session_duration, Shapes::ShapeRef.new(shape: roleMaxSessionDurationType, location_name: "MaxSessionDuration"))
    UpdateRoleRequest.struct_class = Types::UpdateRoleRequest

    UpdateRoleResponse.struct_class = Types::UpdateRoleResponse

    UpdateSAMLProviderRequest.add_member(:saml_metadata_document, Shapes::ShapeRef.new(shape: SAMLMetadataDocumentType, required: true, location_name: "SAMLMetadataDocument"))
    UpdateSAMLProviderRequest.add_member(:saml_provider_arn, Shapes::ShapeRef.new(shape: arnType, required: true, location_name: "SAMLProviderArn"))
    UpdateSAMLProviderRequest.struct_class = Types::UpdateSAMLProviderRequest

    UpdateSAMLProviderResponse.add_member(:saml_provider_arn, Shapes::ShapeRef.new(shape: arnType, location_name: "SAMLProviderArn"))
    UpdateSAMLProviderResponse.struct_class = Types::UpdateSAMLProviderResponse

    UpdateSSHPublicKeyRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: userNameType, required: true, location_name: "UserName"))
    UpdateSSHPublicKeyRequest.add_member(:ssh_public_key_id, Shapes::ShapeRef.new(shape: publicKeyIdType, required: true, location_name: "SSHPublicKeyId"))
    UpdateSSHPublicKeyRequest.add_member(:status, Shapes::ShapeRef.new(shape: statusType, required: true, location_name: "Status"))
    UpdateSSHPublicKeyRequest.struct_class = Types::UpdateSSHPublicKeyRequest

    UpdateServerCertificateRequest.add_member(:server_certificate_name, Shapes::ShapeRef.new(shape: serverCertificateNameType, required: true, location_name: "ServerCertificateName"))
    UpdateServerCertificateRequest.add_member(:new_path, Shapes::ShapeRef.new(shape: pathType, location_name: "NewPath"))
    UpdateServerCertificateRequest.add_member(:new_server_certificate_name, Shapes::ShapeRef.new(shape: serverCertificateNameType, location_name: "NewServerCertificateName"))
    UpdateServerCertificateRequest.struct_class = Types::UpdateServerCertificateRequest

    UpdateServiceSpecificCredentialRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: userNameType, location_name: "UserName"))
    UpdateServiceSpecificCredentialRequest.add_member(:service_specific_credential_id, Shapes::ShapeRef.new(shape: serviceSpecificCredentialId, required: true, location_name: "ServiceSpecificCredentialId"))
    UpdateServiceSpecificCredentialRequest.add_member(:status, Shapes::ShapeRef.new(shape: statusType, required: true, location_name: "Status"))
    UpdateServiceSpecificCredentialRequest.struct_class = Types::UpdateServiceSpecificCredentialRequest

    UpdateSigningCertificateRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: existingUserNameType, location_name: "UserName"))
    UpdateSigningCertificateRequest.add_member(:certificate_id, Shapes::ShapeRef.new(shape: certificateIdType, required: true, location_name: "CertificateId"))
    UpdateSigningCertificateRequest.add_member(:status, Shapes::ShapeRef.new(shape: statusType, required: true, location_name: "Status"))
    UpdateSigningCertificateRequest.struct_class = Types::UpdateSigningCertificateRequest

    UpdateUserRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: existingUserNameType, required: true, location_name: "UserName"))
    UpdateUserRequest.add_member(:new_path, Shapes::ShapeRef.new(shape: pathType, location_name: "NewPath"))
    UpdateUserRequest.add_member(:new_user_name, Shapes::ShapeRef.new(shape: userNameType, location_name: "NewUserName"))
    UpdateUserRequest.struct_class = Types::UpdateUserRequest

    UploadSSHPublicKeyRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: userNameType, required: true, location_name: "UserName"))
    UploadSSHPublicKeyRequest.add_member(:ssh_public_key_body, Shapes::ShapeRef.new(shape: publicKeyMaterialType, required: true, location_name: "SSHPublicKeyBody"))
    UploadSSHPublicKeyRequest.struct_class = Types::UploadSSHPublicKeyRequest

    UploadSSHPublicKeyResponse.add_member(:ssh_public_key, Shapes::ShapeRef.new(shape: SSHPublicKey, location_name: "SSHPublicKey"))
    UploadSSHPublicKeyResponse.struct_class = Types::UploadSSHPublicKeyResponse

    UploadServerCertificateRequest.add_member(:path, Shapes::ShapeRef.new(shape: pathType, location_name: "Path"))
    UploadServerCertificateRequest.add_member(:server_certificate_name, Shapes::ShapeRef.new(shape: serverCertificateNameType, required: true, location_name: "ServerCertificateName"))
    UploadServerCertificateRequest.add_member(:certificate_body, Shapes::ShapeRef.new(shape: certificateBodyType, required: true, location_name: "CertificateBody"))
    UploadServerCertificateRequest.add_member(:private_key, Shapes::ShapeRef.new(shape: privateKeyType, required: true, location_name: "PrivateKey"))
    UploadServerCertificateRequest.add_member(:certificate_chain, Shapes::ShapeRef.new(shape: certificateChainType, location_name: "CertificateChain"))
    UploadServerCertificateRequest.struct_class = Types::UploadServerCertificateRequest

    UploadServerCertificateResponse.add_member(:server_certificate_metadata, Shapes::ShapeRef.new(shape: ServerCertificateMetadata, location_name: "ServerCertificateMetadata"))
    UploadServerCertificateResponse.struct_class = Types::UploadServerCertificateResponse

    UploadSigningCertificateRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: existingUserNameType, location_name: "UserName"))
    UploadSigningCertificateRequest.add_member(:certificate_body, Shapes::ShapeRef.new(shape: certificateBodyType, required: true, location_name: "CertificateBody"))
    UploadSigningCertificateRequest.struct_class = Types::UploadSigningCertificateRequest

    UploadSigningCertificateResponse.add_member(:certificate, Shapes::ShapeRef.new(shape: SigningCertificate, required: true, location_name: "Certificate"))
    UploadSigningCertificateResponse.struct_class = Types::UploadSigningCertificateResponse

    User.add_member(:path, Shapes::ShapeRef.new(shape: pathType, required: true, location_name: "Path"))
    User.add_member(:user_name, Shapes::ShapeRef.new(shape: userNameType, required: true, location_name: "UserName"))
    User.add_member(:user_id, Shapes::ShapeRef.new(shape: idType, required: true, location_name: "UserId"))
    User.add_member(:arn, Shapes::ShapeRef.new(shape: arnType, required: true, location_name: "Arn"))
    User.add_member(:create_date, Shapes::ShapeRef.new(shape: dateType, required: true, location_name: "CreateDate"))
    User.add_member(:password_last_used, Shapes::ShapeRef.new(shape: dateType, location_name: "PasswordLastUsed"))
    User.add_member(:permissions_boundary, Shapes::ShapeRef.new(shape: AttachedPermissionsBoundary, location_name: "PermissionsBoundary"))
    User.add_member(:tags, Shapes::ShapeRef.new(shape: tagListType, location_name: "Tags"))
    User.struct_class = Types::User

    UserDetail.add_member(:path, Shapes::ShapeRef.new(shape: pathType, location_name: "Path"))
    UserDetail.add_member(:user_name, Shapes::ShapeRef.new(shape: userNameType, location_name: "UserName"))
    UserDetail.add_member(:user_id, Shapes::ShapeRef.new(shape: idType, location_name: "UserId"))
    UserDetail.add_member(:arn, Shapes::ShapeRef.new(shape: arnType, location_name: "Arn"))
    UserDetail.add_member(:create_date, Shapes::ShapeRef.new(shape: dateType, location_name: "CreateDate"))
    UserDetail.add_member(:user_policy_list, Shapes::ShapeRef.new(shape: policyDetailListType, location_name: "UserPolicyList"))
    UserDetail.add_member(:group_list, Shapes::ShapeRef.new(shape: groupNameListType, location_name: "GroupList"))
    UserDetail.add_member(:attached_managed_policies, Shapes::ShapeRef.new(shape: attachedPoliciesListType, location_name: "AttachedManagedPolicies"))
    UserDetail.add_member(:permissions_boundary, Shapes::ShapeRef.new(shape: AttachedPermissionsBoundary, location_name: "PermissionsBoundary"))
    UserDetail.add_member(:tags, Shapes::ShapeRef.new(shape: tagListType, location_name: "Tags"))
    UserDetail.struct_class = Types::UserDetail

    VirtualMFADevice.add_member(:serial_number, Shapes::ShapeRef.new(shape: serialNumberType, required: true, location_name: "SerialNumber"))
    VirtualMFADevice.add_member(:base_32_string_seed, Shapes::ShapeRef.new(shape: BootstrapDatum, location_name: "Base32StringSeed"))
    VirtualMFADevice.add_member(:qr_code_png, Shapes::ShapeRef.new(shape: BootstrapDatum, location_name: "QRCodePNG"))
    VirtualMFADevice.add_member(:user, Shapes::ShapeRef.new(shape: User, location_name: "User"))
    VirtualMFADevice.add_member(:enable_date, Shapes::ShapeRef.new(shape: dateType, location_name: "EnableDate"))
    VirtualMFADevice.struct_class = Types::VirtualMFADevice

    accessKeyMetadataListType.member = Shapes::ShapeRef.new(shape: AccessKeyMetadata)

    accountAliasListType.member = Shapes::ShapeRef.new(shape: accountAliasType)

    attachedPoliciesListType.member = Shapes::ShapeRef.new(shape: AttachedPolicy)

    certificateListType.member = Shapes::ShapeRef.new(shape: SigningCertificate)

    clientIDListType.member = Shapes::ShapeRef.new(shape: clientIDType)

    entityDetailsListType.member = Shapes::ShapeRef.new(shape: EntityDetails)

    entityListType.member = Shapes::ShapeRef.new(shape: EntityType)

    groupDetailListType.member = Shapes::ShapeRef.new(shape: GroupDetail)

    groupListType.member = Shapes::ShapeRef.new(shape: Group)

    groupNameListType.member = Shapes::ShapeRef.new(shape: groupNameType)

    instanceProfileListType.member = Shapes::ShapeRef.new(shape: InstanceProfile)

    listPolicyGrantingServiceAccessResponseListType.member = Shapes::ShapeRef.new(shape: ListPoliciesGrantingServiceAccessEntry)

    mfaDeviceListType.member = Shapes::ShapeRef.new(shape: MFADevice)

    policyDetailListType.member = Shapes::ShapeRef.new(shape: PolicyDetail)

    policyDocumentVersionListType.member = Shapes::ShapeRef.new(shape: PolicyVersion)

    policyGrantingServiceAccessListType.member = Shapes::ShapeRef.new(shape: PolicyGrantingServiceAccess)

    policyListType.member = Shapes::ShapeRef.new(shape: Policy)

    policyNameListType.member = Shapes::ShapeRef.new(shape: policyNameType)

    roleDetailListType.member = Shapes::ShapeRef.new(shape: RoleDetail)

    roleListType.member = Shapes::ShapeRef.new(shape: Role)

    serverCertificateMetadataListType.member = Shapes::ShapeRef.new(shape: ServerCertificateMetadata)

    serviceNamespaceListType.member = Shapes::ShapeRef.new(shape: serviceNamespaceType)

    summaryMapType.key = Shapes::ShapeRef.new(shape: summaryKeyType)
    summaryMapType.value = Shapes::ShapeRef.new(shape: summaryValueType)

    tagKeyListType.member = Shapes::ShapeRef.new(shape: tagKeyType)

    tagListType.member = Shapes::ShapeRef.new(shape: Tag)

    thumbprintListType.member = Shapes::ShapeRef.new(shape: thumbprintType)

    userDetailListType.member = Shapes::ShapeRef.new(shape: UserDetail)

    userListType.member = Shapes::ShapeRef.new(shape: User)

    virtualMFADeviceListType.member = Shapes::ShapeRef.new(shape: VirtualMFADevice)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2010-05-08"

      api.metadata = {
        "apiVersion" => "2010-05-08",
        "endpointPrefix" => "iam",
        "globalEndpoint" => "iam.amazonaws.com",
        "protocol" => "query",
        "serviceAbbreviation" => "IAM",
        "serviceFullName" => "AWS Identity and Access Management",
        "serviceId" => "IAM",
        "signatureVersion" => "v4",
        "uid" => "iam-2010-05-08",
        "xmlNamespace" => "https://iam.amazonaws.com/doc/2010-05-08/",
      }

      api.add_operation(:add_client_id_to_open_id_connect_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddClientIDToOpenIDConnectProvider"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddClientIDToOpenIDConnectProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:add_role_to_instance_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddRoleToInstanceProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddRoleToInstanceProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnmodifiableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:add_user_to_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddUserToGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddUserToGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:attach_group_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AttachGroupPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AttachGroupPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyNotAttachableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:attach_role_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AttachRolePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AttachRolePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: UnmodifiableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyNotAttachableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:attach_user_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AttachUserPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AttachUserPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyNotAttachableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:change_password, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ChangePassword"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ChangePasswordRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidUserTypeException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: EntityTemporarilyUnmodifiableException)
        o.errors << Shapes::ShapeRef.new(shape: PasswordPolicyViolationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_access_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAccessKey"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAccessKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAccessKeyResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_account_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAccountAlias"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAccountAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_instance_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateInstanceProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateInstanceProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateInstanceProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_login_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLoginProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLoginProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLoginProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: PasswordPolicyViolationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_open_id_connect_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateOpenIDConnectProvider"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateOpenIDConnectProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateOpenIDConnectProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedPolicyDocumentException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_policy_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePolicyVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePolicyVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePolicyVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedPolicyDocumentException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_role, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRole"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateRoleRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRoleResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedPolicyDocumentException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_saml_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSAMLProvider"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateSAMLProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSAMLProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_service_linked_role, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateServiceLinkedRole"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateServiceLinkedRoleRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateServiceLinkedRoleResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_service_specific_credential, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateServiceSpecificCredential"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateServiceSpecificCredentialRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateServiceSpecificCredentialResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceNotSupportedException)
      end)

      api.add_operation(:create_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_virtual_mfa_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVirtualMFADevice"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateVirtualMFADeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateVirtualMFADeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:deactivate_mfa_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeactivateMFADevice"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeactivateMFADeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: EntityTemporarilyUnmodifiableException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_access_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccessKey"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAccessKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_account_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccountAlias"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAccountAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_account_password_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccountPasswordPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: DeleteConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_group_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGroupPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteGroupPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_instance_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInstanceProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteInstanceProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: DeleteConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_login_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLoginProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteLoginProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: EntityTemporarilyUnmodifiableException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_open_id_connect_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteOpenIDConnectProvider"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteOpenIDConnectProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeletePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: DeleteConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_policy_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePolicyVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeletePolicyVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: DeleteConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_role, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRole"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRoleRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: DeleteConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnmodifiableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_role_permissions_boundary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRolePermissionsBoundary"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRolePermissionsBoundaryRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: UnmodifiableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_role_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRolePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRolePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnmodifiableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_saml_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSAMLProvider"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSAMLProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_ssh_public_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSSHPublicKey"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSSHPublicKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
      end)

      api.add_operation(:delete_server_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteServerCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteServerCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: DeleteConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_service_linked_role, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteServiceLinkedRole"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteServiceLinkedRoleRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteServiceLinkedRoleResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_service_specific_credential, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteServiceSpecificCredential"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteServiceSpecificCredentialRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
      end)

      api.add_operation(:delete_signing_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSigningCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSigningCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteUserRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: DeleteConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_user_permissions_boundary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUserPermissionsBoundary"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteUserPermissionsBoundaryRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_user_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUserPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteUserPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_virtual_mfa_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVirtualMFADevice"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteVirtualMFADeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: DeleteConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:detach_group_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetachGroupPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetachGroupPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:detach_role_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetachRolePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetachRolePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: UnmodifiableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:detach_user_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetachUserPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetachUserPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:enable_mfa_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableMFADevice"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: EnableMFADeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: EntityTemporarilyUnmodifiableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAuthenticationCodeException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:generate_credential_report, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GenerateCredentialReport"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: GenerateCredentialReportResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:generate_organizations_access_report, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GenerateOrganizationsAccessReport"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GenerateOrganizationsAccessReportRequest)
        o.output = Shapes::ShapeRef.new(shape: GenerateOrganizationsAccessReportResponse)
        o.errors << Shapes::ShapeRef.new(shape: ReportGenerationLimitExceededException)
      end)

      api.add_operation(:generate_service_last_accessed_details, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GenerateServiceLastAccessedDetails"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GenerateServiceLastAccessedDetailsRequest)
        o.output = Shapes::ShapeRef.new(shape: GenerateServiceLastAccessedDetailsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:get_access_key_last_used, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccessKeyLastUsed"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAccessKeyLastUsedRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccessKeyLastUsedResponse)
      end)

      api.add_operation(:get_account_authorization_details, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccountAuthorizationDetails"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAccountAuthorizationDetailsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccountAuthorizationDetailsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          more_results: "is_truncated",
          limit_key: "max_items",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:get_account_password_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccountPasswordPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: GetAccountPasswordPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_account_summary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccountSummary"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: GetAccountSummaryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_context_keys_for_custom_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetContextKeysForCustomPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetContextKeysForCustomPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetContextKeysForPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:get_context_keys_for_principal_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetContextKeysForPrincipalPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetContextKeysForPrincipalPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetContextKeysForPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:get_credential_report, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCredentialReport"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: GetCredentialReportResponse)
        o.errors << Shapes::ShapeRef.new(shape: CredentialReportNotPresentException)
        o.errors << Shapes::ShapeRef.new(shape: CredentialReportExpiredException)
        o.errors << Shapes::ShapeRef.new(shape: CredentialReportNotReadyException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: GetGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          more_results: "is_truncated",
          limit_key: "max_items",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:get_group_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGroupPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetGroupPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetGroupPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_instance_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInstanceProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetInstanceProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInstanceProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_login_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLoginProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetLoginProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLoginProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_open_id_connect_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOpenIDConnectProvider"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetOpenIDConnectProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: GetOpenIDConnectProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_organizations_access_report, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOrganizationsAccessReport"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetOrganizationsAccessReportRequest)
        o.output = Shapes::ShapeRef.new(shape: GetOrganizationsAccessReportResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
      end)

      api.add_operation(:get_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_policy_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPolicyVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPolicyVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPolicyVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_role, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRole"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRoleRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRoleResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_role_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRolePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRolePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRolePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_saml_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSAMLProvider"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSAMLProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSAMLProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_ssh_public_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSSHPublicKey"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSSHPublicKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSSHPublicKeyResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: UnrecognizedPublicKeyEncodingException)
      end)

      api.add_operation(:get_server_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetServerCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetServerCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetServerCertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_service_last_accessed_details, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetServiceLastAccessedDetails"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetServiceLastAccessedDetailsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetServiceLastAccessedDetailsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:get_service_last_accessed_details_with_entities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetServiceLastAccessedDetailsWithEntities"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetServiceLastAccessedDetailsWithEntitiesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetServiceLastAccessedDetailsWithEntitiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:get_service_linked_role_deletion_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetServiceLinkedRoleDeletionStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetServiceLinkedRoleDeletionStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetServiceLinkedRoleDeletionStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetUserRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_user_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUserPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetUserPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUserPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:list_access_keys, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccessKeys"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAccessKeysRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccessKeysResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          more_results: "is_truncated",
          limit_key: "max_items",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_account_aliases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccountAliases"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAccountAliasesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccountAliasesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          more_results: "is_truncated",
          limit_key: "max_items",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_attached_group_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAttachedGroupPolicies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAttachedGroupPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAttachedGroupPoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          more_results: "is_truncated",
          limit_key: "max_items",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_attached_role_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAttachedRolePolicies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAttachedRolePoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAttachedRolePoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          more_results: "is_truncated",
          limit_key: "max_items",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_attached_user_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAttachedUserPolicies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAttachedUserPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAttachedUserPoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          more_results: "is_truncated",
          limit_key: "max_items",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_entities_for_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEntitiesForPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEntitiesForPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEntitiesForPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          more_results: "is_truncated",
          limit_key: "max_items",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_group_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGroupPolicies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListGroupPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGroupPoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          more_results: "is_truncated",
          limit_key: "max_items",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          more_results: "is_truncated",
          limit_key: "max_items",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_groups_for_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGroupsForUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListGroupsForUserRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGroupsForUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          more_results: "is_truncated",
          limit_key: "max_items",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_instance_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInstanceProfiles"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListInstanceProfilesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInstanceProfilesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          more_results: "is_truncated",
          limit_key: "max_items",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_instance_profiles_for_role, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInstanceProfilesForRole"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListInstanceProfilesForRoleRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInstanceProfilesForRoleResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          more_results: "is_truncated",
          limit_key: "max_items",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_mfa_devices, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMFADevices"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListMFADevicesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMFADevicesResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          more_results: "is_truncated",
          limit_key: "max_items",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_open_id_connect_providers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOpenIDConnectProviders"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListOpenIDConnectProvidersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOpenIDConnectProvidersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:list_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPolicies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          more_results: "is_truncated",
          limit_key: "max_items",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_policies_granting_service_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPoliciesGrantingServiceAccess"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPoliciesGrantingServiceAccessRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPoliciesGrantingServiceAccessResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:list_policy_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPolicyVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPolicyVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPolicyVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          more_results: "is_truncated",
          limit_key: "max_items",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_role_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRolePolicies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRolePoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRolePoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          more_results: "is_truncated",
          limit_key: "max_items",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_role_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRoleTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRoleTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRoleTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:list_roles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRoles"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRolesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRolesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          more_results: "is_truncated",
          limit_key: "max_items",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_saml_providers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSAMLProviders"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSAMLProvidersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSAMLProvidersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:list_ssh_public_keys, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSSHPublicKeys"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSSHPublicKeysRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSSHPublicKeysResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o[:pager] = Aws::Pager.new(
          more_results: "is_truncated",
          limit_key: "max_items",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_server_certificates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServerCertificates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListServerCertificatesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListServerCertificatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          more_results: "is_truncated",
          limit_key: "max_items",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_service_specific_credentials, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServiceSpecificCredentials"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListServiceSpecificCredentialsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListServiceSpecificCredentialsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceNotSupportedException)
      end)

      api.add_operation(:list_signing_certificates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSigningCertificates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSigningCertificatesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSigningCertificatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          more_results: "is_truncated",
          limit_key: "max_items",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_user_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUserPolicies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListUserPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUserPoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          more_results: "is_truncated",
          limit_key: "max_items",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_user_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUserTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListUserTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUserTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:list_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUsers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListUsersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUsersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          more_results: "is_truncated",
          limit_key: "max_items",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_virtual_mfa_devices, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVirtualMFADevices"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListVirtualMFADevicesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListVirtualMFADevicesResponse)
        o[:pager] = Aws::Pager.new(
          more_results: "is_truncated",
          limit_key: "max_items",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:put_group_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutGroupPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutGroupPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedPolicyDocumentException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:put_role_permissions_boundary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutRolePermissionsBoundary"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutRolePermissionsBoundaryRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: UnmodifiableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyNotAttachableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:put_role_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutRolePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutRolePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedPolicyDocumentException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: UnmodifiableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:put_user_permissions_boundary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutUserPermissionsBoundary"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutUserPermissionsBoundaryRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyNotAttachableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:put_user_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutUserPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutUserPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedPolicyDocumentException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:remove_client_id_from_open_id_connect_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveClientIDFromOpenIDConnectProvider"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveClientIDFromOpenIDConnectProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:remove_role_from_instance_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveRoleFromInstanceProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveRoleFromInstanceProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnmodifiableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:remove_user_from_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveUserFromGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveUserFromGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:reset_service_specific_credential, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResetServiceSpecificCredential"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ResetServiceSpecificCredentialRequest)
        o.output = Shapes::ShapeRef.new(shape: ResetServiceSpecificCredentialResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
      end)

      api.add_operation(:resync_mfa_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResyncMFADevice"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ResyncMFADeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidAuthenticationCodeException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:set_default_policy_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetDefaultPolicyVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetDefaultPolicyVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:set_security_token_service_preferences, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetSecurityTokenServicePreferences"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetSecurityTokenServicePreferencesRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:simulate_custom_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SimulateCustomPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SimulateCustomPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: SimulatePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyEvaluationException)
        o[:pager] = Aws::Pager.new(
          more_results: "is_truncated",
          limit_key: "max_items",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:simulate_principal_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SimulatePrincipalPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SimulatePrincipalPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: SimulatePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyEvaluationException)
        o[:pager] = Aws::Pager.new(
          more_results: "is_truncated",
          limit_key: "max_items",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:tag_role, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagRole"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagRoleRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:tag_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagUserRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:untag_role, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagRole"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagRoleRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:untag_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagUserRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_access_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAccessKey"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAccessKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_account_password_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAccountPasswordPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAccountPasswordPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedPolicyDocumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_assume_role_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAssumeRolePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAssumeRolePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedPolicyDocumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnmodifiableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_login_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLoginProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateLoginProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: EntityTemporarilyUnmodifiableException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: PasswordPolicyViolationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_open_id_connect_provider_thumbprint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateOpenIDConnectProviderThumbprint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateOpenIDConnectProviderThumbprintRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_role, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRole"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateRoleRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRoleResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnmodifiableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_role_description, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRoleDescription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateRoleDescriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRoleDescriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: UnmodifiableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_saml_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSAMLProvider"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateSAMLProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSAMLProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_ssh_public_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSSHPublicKey"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateSSHPublicKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
      end)

      api.add_operation(:update_server_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateServerCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateServerCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_service_specific_credential, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateServiceSpecificCredential"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateServiceSpecificCredentialRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
      end)

      api.add_operation(:update_signing_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSigningCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateSigningCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: EntityTemporarilyUnmodifiableException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:upload_ssh_public_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UploadSSHPublicKey"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UploadSSHPublicKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: UploadSSHPublicKeyResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPublicKeyException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateSSHPublicKeyException)
        o.errors << Shapes::ShapeRef.new(shape: UnrecognizedPublicKeyEncodingException)
      end)

      api.add_operation(:upload_server_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UploadServerCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UploadServerCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: UploadServerCertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedCertificateException)
        o.errors << Shapes::ShapeRef.new(shape: KeyPairMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:upload_signing_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UploadSigningCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UploadSigningCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: UploadSigningCertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: EntityAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedCertificateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCertificateException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateCertificateException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)
    end

  end
end
