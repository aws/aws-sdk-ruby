# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::SSOAdmin
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessControlAttribute = Shapes::StructureShape.new(name: 'AccessControlAttribute')
    AccessControlAttributeKey = Shapes::StringShape.new(name: 'AccessControlAttributeKey')
    AccessControlAttributeList = Shapes::ListShape.new(name: 'AccessControlAttributeList')
    AccessControlAttributeValue = Shapes::StructureShape.new(name: 'AccessControlAttributeValue')
    AccessControlAttributeValueSource = Shapes::StringShape.new(name: 'AccessControlAttributeValueSource')
    AccessControlAttributeValueSourceList = Shapes::ListShape.new(name: 'AccessControlAttributeValueSourceList')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessDeniedExceptionMessage = Shapes::StringShape.new(name: 'AccessDeniedExceptionMessage')
    AccountAssignment = Shapes::StructureShape.new(name: 'AccountAssignment')
    AccountAssignmentForPrincipal = Shapes::StructureShape.new(name: 'AccountAssignmentForPrincipal')
    AccountAssignmentList = Shapes::ListShape.new(name: 'AccountAssignmentList')
    AccountAssignmentListForPrincipal = Shapes::ListShape.new(name: 'AccountAssignmentListForPrincipal')
    AccountAssignmentOperationStatus = Shapes::StructureShape.new(name: 'AccountAssignmentOperationStatus')
    AccountAssignmentOperationStatusList = Shapes::ListShape.new(name: 'AccountAssignmentOperationStatusList')
    AccountAssignmentOperationStatusMetadata = Shapes::StructureShape.new(name: 'AccountAssignmentOperationStatusMetadata')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AccountList = Shapes::ListShape.new(name: 'AccountList')
    ActorPolicyDocument = Shapes::DocumentShape.new(name: 'ActorPolicyDocument', document: true)
    Application = Shapes::StructureShape.new(name: 'Application')
    ApplicationArn = Shapes::StringShape.new(name: 'ApplicationArn')
    ApplicationAssignment = Shapes::StructureShape.new(name: 'ApplicationAssignment')
    ApplicationAssignmentForPrincipal = Shapes::StructureShape.new(name: 'ApplicationAssignmentForPrincipal')
    ApplicationAssignmentListForPrincipal = Shapes::ListShape.new(name: 'ApplicationAssignmentListForPrincipal')
    ApplicationAssignmentsList = Shapes::ListShape.new(name: 'ApplicationAssignmentsList')
    ApplicationList = Shapes::ListShape.new(name: 'ApplicationList')
    ApplicationNameType = Shapes::StringShape.new(name: 'ApplicationNameType')
    ApplicationProvider = Shapes::StructureShape.new(name: 'ApplicationProvider')
    ApplicationProviderArn = Shapes::StringShape.new(name: 'ApplicationProviderArn')
    ApplicationProviderList = Shapes::ListShape.new(name: 'ApplicationProviderList')
    ApplicationStatus = Shapes::StringShape.new(name: 'ApplicationStatus')
    ApplicationUrl = Shapes::StringShape.new(name: 'ApplicationUrl')
    ApplicationVisibility = Shapes::StringShape.new(name: 'ApplicationVisibility')
    AssignmentRequired = Shapes::BooleanShape.new(name: 'AssignmentRequired')
    AttachCustomerManagedPolicyReferenceToPermissionSetRequest = Shapes::StructureShape.new(name: 'AttachCustomerManagedPolicyReferenceToPermissionSetRequest')
    AttachCustomerManagedPolicyReferenceToPermissionSetResponse = Shapes::StructureShape.new(name: 'AttachCustomerManagedPolicyReferenceToPermissionSetResponse')
    AttachManagedPolicyToPermissionSetRequest = Shapes::StructureShape.new(name: 'AttachManagedPolicyToPermissionSetRequest')
    AttachManagedPolicyToPermissionSetResponse = Shapes::StructureShape.new(name: 'AttachManagedPolicyToPermissionSetResponse')
    AttachedManagedPolicy = Shapes::StructureShape.new(name: 'AttachedManagedPolicy')
    AttachedManagedPolicyList = Shapes::ListShape.new(name: 'AttachedManagedPolicyList')
    AuthenticationMethod = Shapes::UnionShape.new(name: 'AuthenticationMethod')
    AuthenticationMethodItem = Shapes::StructureShape.new(name: 'AuthenticationMethodItem')
    AuthenticationMethodType = Shapes::StringShape.new(name: 'AuthenticationMethodType')
    AuthenticationMethods = Shapes::ListShape.new(name: 'AuthenticationMethods')
    AuthorizationCodeGrant = Shapes::StructureShape.new(name: 'AuthorizationCodeGrant')
    AuthorizedTokenIssuer = Shapes::StructureShape.new(name: 'AuthorizedTokenIssuer')
    AuthorizedTokenIssuers = Shapes::ListShape.new(name: 'AuthorizedTokenIssuers')
    ClaimAttributePath = Shapes::StringShape.new(name: 'ClaimAttributePath')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConflictExceptionMessage = Shapes::StringShape.new(name: 'ConflictExceptionMessage')
    CreateAccountAssignmentRequest = Shapes::StructureShape.new(name: 'CreateAccountAssignmentRequest')
    CreateAccountAssignmentResponse = Shapes::StructureShape.new(name: 'CreateAccountAssignmentResponse')
    CreateApplicationAssignmentRequest = Shapes::StructureShape.new(name: 'CreateApplicationAssignmentRequest')
    CreateApplicationAssignmentResponse = Shapes::StructureShape.new(name: 'CreateApplicationAssignmentResponse')
    CreateApplicationRequest = Shapes::StructureShape.new(name: 'CreateApplicationRequest')
    CreateApplicationResponse = Shapes::StructureShape.new(name: 'CreateApplicationResponse')
    CreateInstanceAccessControlAttributeConfigurationRequest = Shapes::StructureShape.new(name: 'CreateInstanceAccessControlAttributeConfigurationRequest')
    CreateInstanceAccessControlAttributeConfigurationResponse = Shapes::StructureShape.new(name: 'CreateInstanceAccessControlAttributeConfigurationResponse')
    CreateInstanceRequest = Shapes::StructureShape.new(name: 'CreateInstanceRequest')
    CreateInstanceResponse = Shapes::StructureShape.new(name: 'CreateInstanceResponse')
    CreatePermissionSetRequest = Shapes::StructureShape.new(name: 'CreatePermissionSetRequest')
    CreatePermissionSetResponse = Shapes::StructureShape.new(name: 'CreatePermissionSetResponse')
    CreateTrustedTokenIssuerRequest = Shapes::StructureShape.new(name: 'CreateTrustedTokenIssuerRequest')
    CreateTrustedTokenIssuerResponse = Shapes::StructureShape.new(name: 'CreateTrustedTokenIssuerResponse')
    CustomerManagedPolicyReference = Shapes::StructureShape.new(name: 'CustomerManagedPolicyReference')
    CustomerManagedPolicyReferenceList = Shapes::ListShape.new(name: 'CustomerManagedPolicyReferenceList')
    Date = Shapes::TimestampShape.new(name: 'Date')
    DeleteAccountAssignmentRequest = Shapes::StructureShape.new(name: 'DeleteAccountAssignmentRequest')
    DeleteAccountAssignmentResponse = Shapes::StructureShape.new(name: 'DeleteAccountAssignmentResponse')
    DeleteApplicationAccessScopeRequest = Shapes::StructureShape.new(name: 'DeleteApplicationAccessScopeRequest')
    DeleteApplicationAssignmentRequest = Shapes::StructureShape.new(name: 'DeleteApplicationAssignmentRequest')
    DeleteApplicationAssignmentResponse = Shapes::StructureShape.new(name: 'DeleteApplicationAssignmentResponse')
    DeleteApplicationAuthenticationMethodRequest = Shapes::StructureShape.new(name: 'DeleteApplicationAuthenticationMethodRequest')
    DeleteApplicationGrantRequest = Shapes::StructureShape.new(name: 'DeleteApplicationGrantRequest')
    DeleteApplicationRequest = Shapes::StructureShape.new(name: 'DeleteApplicationRequest')
    DeleteApplicationResponse = Shapes::StructureShape.new(name: 'DeleteApplicationResponse')
    DeleteInlinePolicyFromPermissionSetRequest = Shapes::StructureShape.new(name: 'DeleteInlinePolicyFromPermissionSetRequest')
    DeleteInlinePolicyFromPermissionSetResponse = Shapes::StructureShape.new(name: 'DeleteInlinePolicyFromPermissionSetResponse')
    DeleteInstanceAccessControlAttributeConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteInstanceAccessControlAttributeConfigurationRequest')
    DeleteInstanceAccessControlAttributeConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteInstanceAccessControlAttributeConfigurationResponse')
    DeleteInstanceRequest = Shapes::StructureShape.new(name: 'DeleteInstanceRequest')
    DeleteInstanceResponse = Shapes::StructureShape.new(name: 'DeleteInstanceResponse')
    DeletePermissionSetRequest = Shapes::StructureShape.new(name: 'DeletePermissionSetRequest')
    DeletePermissionSetResponse = Shapes::StructureShape.new(name: 'DeletePermissionSetResponse')
    DeletePermissionsBoundaryFromPermissionSetRequest = Shapes::StructureShape.new(name: 'DeletePermissionsBoundaryFromPermissionSetRequest')
    DeletePermissionsBoundaryFromPermissionSetResponse = Shapes::StructureShape.new(name: 'DeletePermissionsBoundaryFromPermissionSetResponse')
    DeleteTrustedTokenIssuerRequest = Shapes::StructureShape.new(name: 'DeleteTrustedTokenIssuerRequest')
    DeleteTrustedTokenIssuerResponse = Shapes::StructureShape.new(name: 'DeleteTrustedTokenIssuerResponse')
    DescribeAccountAssignmentCreationStatusRequest = Shapes::StructureShape.new(name: 'DescribeAccountAssignmentCreationStatusRequest')
    DescribeAccountAssignmentCreationStatusResponse = Shapes::StructureShape.new(name: 'DescribeAccountAssignmentCreationStatusResponse')
    DescribeAccountAssignmentDeletionStatusRequest = Shapes::StructureShape.new(name: 'DescribeAccountAssignmentDeletionStatusRequest')
    DescribeAccountAssignmentDeletionStatusResponse = Shapes::StructureShape.new(name: 'DescribeAccountAssignmentDeletionStatusResponse')
    DescribeApplicationAssignmentRequest = Shapes::StructureShape.new(name: 'DescribeApplicationAssignmentRequest')
    DescribeApplicationAssignmentResponse = Shapes::StructureShape.new(name: 'DescribeApplicationAssignmentResponse')
    DescribeApplicationProviderRequest = Shapes::StructureShape.new(name: 'DescribeApplicationProviderRequest')
    DescribeApplicationProviderResponse = Shapes::StructureShape.new(name: 'DescribeApplicationProviderResponse')
    DescribeApplicationRequest = Shapes::StructureShape.new(name: 'DescribeApplicationRequest')
    DescribeApplicationResponse = Shapes::StructureShape.new(name: 'DescribeApplicationResponse')
    DescribeInstanceAccessControlAttributeConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeInstanceAccessControlAttributeConfigurationRequest')
    DescribeInstanceAccessControlAttributeConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeInstanceAccessControlAttributeConfigurationResponse')
    DescribeInstanceRequest = Shapes::StructureShape.new(name: 'DescribeInstanceRequest')
    DescribeInstanceResponse = Shapes::StructureShape.new(name: 'DescribeInstanceResponse')
    DescribePermissionSetProvisioningStatusRequest = Shapes::StructureShape.new(name: 'DescribePermissionSetProvisioningStatusRequest')
    DescribePermissionSetProvisioningStatusResponse = Shapes::StructureShape.new(name: 'DescribePermissionSetProvisioningStatusResponse')
    DescribePermissionSetRequest = Shapes::StructureShape.new(name: 'DescribePermissionSetRequest')
    DescribePermissionSetResponse = Shapes::StructureShape.new(name: 'DescribePermissionSetResponse')
    DescribeTrustedTokenIssuerRequest = Shapes::StructureShape.new(name: 'DescribeTrustedTokenIssuerRequest')
    DescribeTrustedTokenIssuerResponse = Shapes::StructureShape.new(name: 'DescribeTrustedTokenIssuerResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    DetachCustomerManagedPolicyReferenceFromPermissionSetRequest = Shapes::StructureShape.new(name: 'DetachCustomerManagedPolicyReferenceFromPermissionSetRequest')
    DetachCustomerManagedPolicyReferenceFromPermissionSetResponse = Shapes::StructureShape.new(name: 'DetachCustomerManagedPolicyReferenceFromPermissionSetResponse')
    DetachManagedPolicyFromPermissionSetRequest = Shapes::StructureShape.new(name: 'DetachManagedPolicyFromPermissionSetRequest')
    DetachManagedPolicyFromPermissionSetResponse = Shapes::StructureShape.new(name: 'DetachManagedPolicyFromPermissionSetResponse')
    DisplayData = Shapes::StructureShape.new(name: 'DisplayData')
    Duration = Shapes::StringShape.new(name: 'Duration')
    FederationProtocol = Shapes::StringShape.new(name: 'FederationProtocol')
    GetApplicationAccessScopeRequest = Shapes::StructureShape.new(name: 'GetApplicationAccessScopeRequest')
    GetApplicationAccessScopeResponse = Shapes::StructureShape.new(name: 'GetApplicationAccessScopeResponse')
    GetApplicationAssignmentConfigurationRequest = Shapes::StructureShape.new(name: 'GetApplicationAssignmentConfigurationRequest')
    GetApplicationAssignmentConfigurationResponse = Shapes::StructureShape.new(name: 'GetApplicationAssignmentConfigurationResponse')
    GetApplicationAuthenticationMethodRequest = Shapes::StructureShape.new(name: 'GetApplicationAuthenticationMethodRequest')
    GetApplicationAuthenticationMethodResponse = Shapes::StructureShape.new(name: 'GetApplicationAuthenticationMethodResponse')
    GetApplicationGrantRequest = Shapes::StructureShape.new(name: 'GetApplicationGrantRequest')
    GetApplicationGrantResponse = Shapes::StructureShape.new(name: 'GetApplicationGrantResponse')
    GetApplicationSessionConfigurationRequest = Shapes::StructureShape.new(name: 'GetApplicationSessionConfigurationRequest')
    GetApplicationSessionConfigurationResponse = Shapes::StructureShape.new(name: 'GetApplicationSessionConfigurationResponse')
    GetInlinePolicyForPermissionSetRequest = Shapes::StructureShape.new(name: 'GetInlinePolicyForPermissionSetRequest')
    GetInlinePolicyForPermissionSetResponse = Shapes::StructureShape.new(name: 'GetInlinePolicyForPermissionSetResponse')
    GetPermissionsBoundaryForPermissionSetRequest = Shapes::StructureShape.new(name: 'GetPermissionsBoundaryForPermissionSetRequest')
    GetPermissionsBoundaryForPermissionSetResponse = Shapes::StructureShape.new(name: 'GetPermissionsBoundaryForPermissionSetResponse')
    Grant = Shapes::UnionShape.new(name: 'Grant')
    GrantItem = Shapes::StructureShape.new(name: 'GrantItem')
    GrantType = Shapes::StringShape.new(name: 'GrantType')
    Grants = Shapes::ListShape.new(name: 'Grants')
    IamAuthenticationMethod = Shapes::StructureShape.new(name: 'IamAuthenticationMethod')
    IconUrl = Shapes::StringShape.new(name: 'IconUrl')
    Id = Shapes::StringShape.new(name: 'Id')
    InstanceAccessControlAttributeConfiguration = Shapes::StructureShape.new(name: 'InstanceAccessControlAttributeConfiguration')
    InstanceAccessControlAttributeConfigurationStatus = Shapes::StringShape.new(name: 'InstanceAccessControlAttributeConfigurationStatus')
    InstanceAccessControlAttributeConfigurationStatusReason = Shapes::StringShape.new(name: 'InstanceAccessControlAttributeConfigurationStatusReason')
    InstanceArn = Shapes::StringShape.new(name: 'InstanceArn')
    InstanceList = Shapes::ListShape.new(name: 'InstanceList')
    InstanceMetadata = Shapes::StructureShape.new(name: 'InstanceMetadata')
    InstanceStatus = Shapes::StringShape.new(name: 'InstanceStatus')
    InternalFailureMessage = Shapes::StringShape.new(name: 'InternalFailureMessage')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    JMESPath = Shapes::StringShape.new(name: 'JMESPath')
    JwksRetrievalOption = Shapes::StringShape.new(name: 'JwksRetrievalOption')
    JwtBearerGrant = Shapes::StructureShape.new(name: 'JwtBearerGrant')
    ListAccountAssignmentCreationStatusRequest = Shapes::StructureShape.new(name: 'ListAccountAssignmentCreationStatusRequest')
    ListAccountAssignmentCreationStatusResponse = Shapes::StructureShape.new(name: 'ListAccountAssignmentCreationStatusResponse')
    ListAccountAssignmentDeletionStatusRequest = Shapes::StructureShape.new(name: 'ListAccountAssignmentDeletionStatusRequest')
    ListAccountAssignmentDeletionStatusResponse = Shapes::StructureShape.new(name: 'ListAccountAssignmentDeletionStatusResponse')
    ListAccountAssignmentsFilter = Shapes::StructureShape.new(name: 'ListAccountAssignmentsFilter')
    ListAccountAssignmentsForPrincipalRequest = Shapes::StructureShape.new(name: 'ListAccountAssignmentsForPrincipalRequest')
    ListAccountAssignmentsForPrincipalResponse = Shapes::StructureShape.new(name: 'ListAccountAssignmentsForPrincipalResponse')
    ListAccountAssignmentsRequest = Shapes::StructureShape.new(name: 'ListAccountAssignmentsRequest')
    ListAccountAssignmentsResponse = Shapes::StructureShape.new(name: 'ListAccountAssignmentsResponse')
    ListAccountsForProvisionedPermissionSetRequest = Shapes::StructureShape.new(name: 'ListAccountsForProvisionedPermissionSetRequest')
    ListAccountsForProvisionedPermissionSetResponse = Shapes::StructureShape.new(name: 'ListAccountsForProvisionedPermissionSetResponse')
    ListApplicationAccessScopesRequest = Shapes::StructureShape.new(name: 'ListApplicationAccessScopesRequest')
    ListApplicationAccessScopesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListApplicationAccessScopesRequestMaxResultsInteger')
    ListApplicationAccessScopesResponse = Shapes::StructureShape.new(name: 'ListApplicationAccessScopesResponse')
    ListApplicationAssignmentsFilter = Shapes::StructureShape.new(name: 'ListApplicationAssignmentsFilter')
    ListApplicationAssignmentsForPrincipalRequest = Shapes::StructureShape.new(name: 'ListApplicationAssignmentsForPrincipalRequest')
    ListApplicationAssignmentsForPrincipalResponse = Shapes::StructureShape.new(name: 'ListApplicationAssignmentsForPrincipalResponse')
    ListApplicationAssignmentsRequest = Shapes::StructureShape.new(name: 'ListApplicationAssignmentsRequest')
    ListApplicationAssignmentsResponse = Shapes::StructureShape.new(name: 'ListApplicationAssignmentsResponse')
    ListApplicationAuthenticationMethodsRequest = Shapes::StructureShape.new(name: 'ListApplicationAuthenticationMethodsRequest')
    ListApplicationAuthenticationMethodsResponse = Shapes::StructureShape.new(name: 'ListApplicationAuthenticationMethodsResponse')
    ListApplicationGrantsRequest = Shapes::StructureShape.new(name: 'ListApplicationGrantsRequest')
    ListApplicationGrantsResponse = Shapes::StructureShape.new(name: 'ListApplicationGrantsResponse')
    ListApplicationProvidersRequest = Shapes::StructureShape.new(name: 'ListApplicationProvidersRequest')
    ListApplicationProvidersResponse = Shapes::StructureShape.new(name: 'ListApplicationProvidersResponse')
    ListApplicationsFilter = Shapes::StructureShape.new(name: 'ListApplicationsFilter')
    ListApplicationsRequest = Shapes::StructureShape.new(name: 'ListApplicationsRequest')
    ListApplicationsResponse = Shapes::StructureShape.new(name: 'ListApplicationsResponse')
    ListCustomerManagedPolicyReferencesInPermissionSetRequest = Shapes::StructureShape.new(name: 'ListCustomerManagedPolicyReferencesInPermissionSetRequest')
    ListCustomerManagedPolicyReferencesInPermissionSetResponse = Shapes::StructureShape.new(name: 'ListCustomerManagedPolicyReferencesInPermissionSetResponse')
    ListInstancesRequest = Shapes::StructureShape.new(name: 'ListInstancesRequest')
    ListInstancesResponse = Shapes::StructureShape.new(name: 'ListInstancesResponse')
    ListManagedPoliciesInPermissionSetRequest = Shapes::StructureShape.new(name: 'ListManagedPoliciesInPermissionSetRequest')
    ListManagedPoliciesInPermissionSetResponse = Shapes::StructureShape.new(name: 'ListManagedPoliciesInPermissionSetResponse')
    ListPermissionSetProvisioningStatusRequest = Shapes::StructureShape.new(name: 'ListPermissionSetProvisioningStatusRequest')
    ListPermissionSetProvisioningStatusResponse = Shapes::StructureShape.new(name: 'ListPermissionSetProvisioningStatusResponse')
    ListPermissionSetsProvisionedToAccountRequest = Shapes::StructureShape.new(name: 'ListPermissionSetsProvisionedToAccountRequest')
    ListPermissionSetsProvisionedToAccountResponse = Shapes::StructureShape.new(name: 'ListPermissionSetsProvisionedToAccountResponse')
    ListPermissionSetsRequest = Shapes::StructureShape.new(name: 'ListPermissionSetsRequest')
    ListPermissionSetsResponse = Shapes::StructureShape.new(name: 'ListPermissionSetsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTrustedTokenIssuersRequest = Shapes::StructureShape.new(name: 'ListTrustedTokenIssuersRequest')
    ListTrustedTokenIssuersResponse = Shapes::StructureShape.new(name: 'ListTrustedTokenIssuersResponse')
    ManagedPolicyArn = Shapes::StringShape.new(name: 'ManagedPolicyArn')
    ManagedPolicyName = Shapes::StringShape.new(name: 'ManagedPolicyName')
    ManagedPolicyPath = Shapes::StringShape.new(name: 'ManagedPolicyPath')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Name = Shapes::StringShape.new(name: 'Name')
    NameType = Shapes::StringShape.new(name: 'NameType')
    OidcJwtConfiguration = Shapes::StructureShape.new(name: 'OidcJwtConfiguration')
    OidcJwtUpdateConfiguration = Shapes::StructureShape.new(name: 'OidcJwtUpdateConfiguration')
    OperationStatusFilter = Shapes::StructureShape.new(name: 'OperationStatusFilter')
    PermissionSet = Shapes::StructureShape.new(name: 'PermissionSet')
    PermissionSetArn = Shapes::StringShape.new(name: 'PermissionSetArn')
    PermissionSetDescription = Shapes::StringShape.new(name: 'PermissionSetDescription')
    PermissionSetList = Shapes::ListShape.new(name: 'PermissionSetList')
    PermissionSetName = Shapes::StringShape.new(name: 'PermissionSetName')
    PermissionSetPolicyDocument = Shapes::StringShape.new(name: 'PermissionSetPolicyDocument')
    PermissionSetProvisioningStatus = Shapes::StructureShape.new(name: 'PermissionSetProvisioningStatus')
    PermissionSetProvisioningStatusList = Shapes::ListShape.new(name: 'PermissionSetProvisioningStatusList')
    PermissionSetProvisioningStatusMetadata = Shapes::StructureShape.new(name: 'PermissionSetProvisioningStatusMetadata')
    PermissionsBoundary = Shapes::StructureShape.new(name: 'PermissionsBoundary')
    PortalOptions = Shapes::StructureShape.new(name: 'PortalOptions')
    PrincipalId = Shapes::StringShape.new(name: 'PrincipalId')
    PrincipalType = Shapes::StringShape.new(name: 'PrincipalType')
    ProvisionPermissionSetRequest = Shapes::StructureShape.new(name: 'ProvisionPermissionSetRequest')
    ProvisionPermissionSetResponse = Shapes::StructureShape.new(name: 'ProvisionPermissionSetResponse')
    ProvisionTargetType = Shapes::StringShape.new(name: 'ProvisionTargetType')
    ProvisioningStatus = Shapes::StringShape.new(name: 'ProvisioningStatus')
    PutApplicationAccessScopeRequest = Shapes::StructureShape.new(name: 'PutApplicationAccessScopeRequest')
    PutApplicationAssignmentConfigurationRequest = Shapes::StructureShape.new(name: 'PutApplicationAssignmentConfigurationRequest')
    PutApplicationAssignmentConfigurationResponse = Shapes::StructureShape.new(name: 'PutApplicationAssignmentConfigurationResponse')
    PutApplicationAuthenticationMethodRequest = Shapes::StructureShape.new(name: 'PutApplicationAuthenticationMethodRequest')
    PutApplicationGrantRequest = Shapes::StructureShape.new(name: 'PutApplicationGrantRequest')
    PutApplicationSessionConfigurationRequest = Shapes::StructureShape.new(name: 'PutApplicationSessionConfigurationRequest')
    PutApplicationSessionConfigurationResponse = Shapes::StructureShape.new(name: 'PutApplicationSessionConfigurationResponse')
    PutInlinePolicyToPermissionSetRequest = Shapes::StructureShape.new(name: 'PutInlinePolicyToPermissionSetRequest')
    PutInlinePolicyToPermissionSetResponse = Shapes::StructureShape.new(name: 'PutInlinePolicyToPermissionSetResponse')
    PutPermissionsBoundaryToPermissionSetRequest = Shapes::StructureShape.new(name: 'PutPermissionsBoundaryToPermissionSetRequest')
    PutPermissionsBoundaryToPermissionSetResponse = Shapes::StructureShape.new(name: 'PutPermissionsBoundaryToPermissionSetResponse')
    Reason = Shapes::StringShape.new(name: 'Reason')
    RedirectUris = Shapes::ListShape.new(name: 'RedirectUris')
    RefreshTokenGrant = Shapes::StructureShape.new(name: 'RefreshTokenGrant')
    RelayState = Shapes::StringShape.new(name: 'RelayState')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceNotFoundMessage = Shapes::StringShape.new(name: 'ResourceNotFoundMessage')
    ResourceServerConfig = Shapes::StructureShape.new(name: 'ResourceServerConfig')
    ResourceServerScope = Shapes::StringShape.new(name: 'ResourceServerScope')
    ResourceServerScopeDetails = Shapes::StructureShape.new(name: 'ResourceServerScopeDetails')
    ResourceServerScopes = Shapes::MapShape.new(name: 'ResourceServerScopes')
    Scope = Shapes::StringShape.new(name: 'Scope')
    ScopeDetails = Shapes::StructureShape.new(name: 'ScopeDetails')
    ScopeTarget = Shapes::StringShape.new(name: 'ScopeTarget')
    ScopeTargets = Shapes::ListShape.new(name: 'ScopeTargets')
    Scopes = Shapes::ListShape.new(name: 'Scopes')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceQuotaExceededMessage = Shapes::StringShape.new(name: 'ServiceQuotaExceededMessage')
    SignInOptions = Shapes::StructureShape.new(name: 'SignInOptions')
    SignInOrigin = Shapes::StringShape.new(name: 'SignInOrigin')
    StatusValues = Shapes::StringShape.new(name: 'StatusValues')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TaggableResourceArn = Shapes::StringShape.new(name: 'TaggableResourceArn')
    TargetId = Shapes::StringShape.new(name: 'TargetId')
    TargetType = Shapes::StringShape.new(name: 'TargetType')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    ThrottlingExceptionMessage = Shapes::StringShape.new(name: 'ThrottlingExceptionMessage')
    Token = Shapes::StringShape.new(name: 'Token')
    TokenExchangeGrant = Shapes::StructureShape.new(name: 'TokenExchangeGrant')
    TokenIssuerAudience = Shapes::StringShape.new(name: 'TokenIssuerAudience')
    TokenIssuerAudiences = Shapes::ListShape.new(name: 'TokenIssuerAudiences')
    TrustedTokenIssuerArn = Shapes::StringShape.new(name: 'TrustedTokenIssuerArn')
    TrustedTokenIssuerConfiguration = Shapes::UnionShape.new(name: 'TrustedTokenIssuerConfiguration')
    TrustedTokenIssuerList = Shapes::ListShape.new(name: 'TrustedTokenIssuerList')
    TrustedTokenIssuerMetadata = Shapes::StructureShape.new(name: 'TrustedTokenIssuerMetadata')
    TrustedTokenIssuerName = Shapes::StringShape.new(name: 'TrustedTokenIssuerName')
    TrustedTokenIssuerType = Shapes::StringShape.new(name: 'TrustedTokenIssuerType')
    TrustedTokenIssuerUpdateConfiguration = Shapes::UnionShape.new(name: 'TrustedTokenIssuerUpdateConfiguration')
    TrustedTokenIssuerUrl = Shapes::StringShape.new(name: 'TrustedTokenIssuerUrl')
    URI = Shapes::StringShape.new(name: 'URI')
    UUId = Shapes::StringShape.new(name: 'UUId')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateApplicationPortalOptions = Shapes::StructureShape.new(name: 'UpdateApplicationPortalOptions')
    UpdateApplicationRequest = Shapes::StructureShape.new(name: 'UpdateApplicationRequest')
    UpdateApplicationResponse = Shapes::StructureShape.new(name: 'UpdateApplicationResponse')
    UpdateInstanceAccessControlAttributeConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateInstanceAccessControlAttributeConfigurationRequest')
    UpdateInstanceAccessControlAttributeConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateInstanceAccessControlAttributeConfigurationResponse')
    UpdateInstanceRequest = Shapes::StructureShape.new(name: 'UpdateInstanceRequest')
    UpdateInstanceResponse = Shapes::StructureShape.new(name: 'UpdateInstanceResponse')
    UpdatePermissionSetRequest = Shapes::StructureShape.new(name: 'UpdatePermissionSetRequest')
    UpdatePermissionSetResponse = Shapes::StructureShape.new(name: 'UpdatePermissionSetResponse')
    UpdateTrustedTokenIssuerRequest = Shapes::StructureShape.new(name: 'UpdateTrustedTokenIssuerRequest')
    UpdateTrustedTokenIssuerResponse = Shapes::StructureShape.new(name: 'UpdateTrustedTokenIssuerResponse')
    UserBackgroundSessionApplicationStatus = Shapes::StringShape.new(name: 'UserBackgroundSessionApplicationStatus')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionMessage = Shapes::StringShape.new(name: 'ValidationExceptionMessage')

    AccessControlAttribute.add_member(:key, Shapes::ShapeRef.new(shape: AccessControlAttributeKey, required: true, location_name: "Key"))
    AccessControlAttribute.add_member(:value, Shapes::ShapeRef.new(shape: AccessControlAttributeValue, required: true, location_name: "Value"))
    AccessControlAttribute.struct_class = Types::AccessControlAttribute

    AccessControlAttributeList.member = Shapes::ShapeRef.new(shape: AccessControlAttribute)

    AccessControlAttributeValue.add_member(:source, Shapes::ShapeRef.new(shape: AccessControlAttributeValueSourceList, required: true, location_name: "Source"))
    AccessControlAttributeValue.struct_class = Types::AccessControlAttributeValue

    AccessControlAttributeValueSourceList.member = Shapes::ShapeRef.new(shape: AccessControlAttributeValueSource)

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: AccessDeniedExceptionMessage, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountAssignment.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    AccountAssignment.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, location_name: "PermissionSetArn"))
    AccountAssignment.add_member(:principal_type, Shapes::ShapeRef.new(shape: PrincipalType, location_name: "PrincipalType"))
    AccountAssignment.add_member(:principal_id, Shapes::ShapeRef.new(shape: PrincipalId, location_name: "PrincipalId"))
    AccountAssignment.struct_class = Types::AccountAssignment

    AccountAssignmentForPrincipal.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    AccountAssignmentForPrincipal.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, location_name: "PermissionSetArn"))
    AccountAssignmentForPrincipal.add_member(:principal_id, Shapes::ShapeRef.new(shape: PrincipalId, location_name: "PrincipalId"))
    AccountAssignmentForPrincipal.add_member(:principal_type, Shapes::ShapeRef.new(shape: PrincipalType, location_name: "PrincipalType"))
    AccountAssignmentForPrincipal.struct_class = Types::AccountAssignmentForPrincipal

    AccountAssignmentList.member = Shapes::ShapeRef.new(shape: AccountAssignment)

    AccountAssignmentListForPrincipal.member = Shapes::ShapeRef.new(shape: AccountAssignmentForPrincipal)

    AccountAssignmentOperationStatus.add_member(:status, Shapes::ShapeRef.new(shape: StatusValues, location_name: "Status"))
    AccountAssignmentOperationStatus.add_member(:request_id, Shapes::ShapeRef.new(shape: UUId, location_name: "RequestId"))
    AccountAssignmentOperationStatus.add_member(:failure_reason, Shapes::ShapeRef.new(shape: Reason, location_name: "FailureReason"))
    AccountAssignmentOperationStatus.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, location_name: "TargetId"))
    AccountAssignmentOperationStatus.add_member(:target_type, Shapes::ShapeRef.new(shape: TargetType, location_name: "TargetType"))
    AccountAssignmentOperationStatus.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, location_name: "PermissionSetArn"))
    AccountAssignmentOperationStatus.add_member(:principal_type, Shapes::ShapeRef.new(shape: PrincipalType, location_name: "PrincipalType"))
    AccountAssignmentOperationStatus.add_member(:principal_id, Shapes::ShapeRef.new(shape: PrincipalId, location_name: "PrincipalId"))
    AccountAssignmentOperationStatus.add_member(:created_date, Shapes::ShapeRef.new(shape: Date, location_name: "CreatedDate"))
    AccountAssignmentOperationStatus.struct_class = Types::AccountAssignmentOperationStatus

    AccountAssignmentOperationStatusList.member = Shapes::ShapeRef.new(shape: AccountAssignmentOperationStatusMetadata)

    AccountAssignmentOperationStatusMetadata.add_member(:status, Shapes::ShapeRef.new(shape: StatusValues, location_name: "Status"))
    AccountAssignmentOperationStatusMetadata.add_member(:request_id, Shapes::ShapeRef.new(shape: UUId, location_name: "RequestId"))
    AccountAssignmentOperationStatusMetadata.add_member(:created_date, Shapes::ShapeRef.new(shape: Date, location_name: "CreatedDate"))
    AccountAssignmentOperationStatusMetadata.struct_class = Types::AccountAssignmentOperationStatusMetadata

    AccountList.member = Shapes::ShapeRef.new(shape: AccountId)

    Application.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, location_name: "ApplicationArn"))
    Application.add_member(:application_provider_arn, Shapes::ShapeRef.new(shape: ApplicationProviderArn, location_name: "ApplicationProviderArn"))
    Application.add_member(:name, Shapes::ShapeRef.new(shape: ApplicationNameType, location_name: "Name"))
    Application.add_member(:application_account, Shapes::ShapeRef.new(shape: AccountId, location_name: "ApplicationAccount"))
    Application.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, location_name: "InstanceArn"))
    Application.add_member(:status, Shapes::ShapeRef.new(shape: ApplicationStatus, location_name: "Status"))
    Application.add_member(:portal_options, Shapes::ShapeRef.new(shape: PortalOptions, location_name: "PortalOptions"))
    Application.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    Application.add_member(:created_date, Shapes::ShapeRef.new(shape: Date, location_name: "CreatedDate"))
    Application.struct_class = Types::Application

    ApplicationAssignment.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location_name: "ApplicationArn"))
    ApplicationAssignment.add_member(:principal_id, Shapes::ShapeRef.new(shape: PrincipalId, required: true, location_name: "PrincipalId"))
    ApplicationAssignment.add_member(:principal_type, Shapes::ShapeRef.new(shape: PrincipalType, required: true, location_name: "PrincipalType"))
    ApplicationAssignment.struct_class = Types::ApplicationAssignment

    ApplicationAssignmentForPrincipal.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, location_name: "ApplicationArn"))
    ApplicationAssignmentForPrincipal.add_member(:principal_id, Shapes::ShapeRef.new(shape: PrincipalId, location_name: "PrincipalId"))
    ApplicationAssignmentForPrincipal.add_member(:principal_type, Shapes::ShapeRef.new(shape: PrincipalType, location_name: "PrincipalType"))
    ApplicationAssignmentForPrincipal.struct_class = Types::ApplicationAssignmentForPrincipal

    ApplicationAssignmentListForPrincipal.member = Shapes::ShapeRef.new(shape: ApplicationAssignmentForPrincipal)

    ApplicationAssignmentsList.member = Shapes::ShapeRef.new(shape: ApplicationAssignment)

    ApplicationList.member = Shapes::ShapeRef.new(shape: Application)

    ApplicationProvider.add_member(:application_provider_arn, Shapes::ShapeRef.new(shape: ApplicationProviderArn, required: true, location_name: "ApplicationProviderArn"))
    ApplicationProvider.add_member(:federation_protocol, Shapes::ShapeRef.new(shape: FederationProtocol, location_name: "FederationProtocol"))
    ApplicationProvider.add_member(:display_data, Shapes::ShapeRef.new(shape: DisplayData, location_name: "DisplayData"))
    ApplicationProvider.add_member(:resource_server_config, Shapes::ShapeRef.new(shape: ResourceServerConfig, location_name: "ResourceServerConfig"))
    ApplicationProvider.struct_class = Types::ApplicationProvider

    ApplicationProviderList.member = Shapes::ShapeRef.new(shape: ApplicationProvider)

    AttachCustomerManagedPolicyReferenceToPermissionSetRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    AttachCustomerManagedPolicyReferenceToPermissionSetRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    AttachCustomerManagedPolicyReferenceToPermissionSetRequest.add_member(:customer_managed_policy_reference, Shapes::ShapeRef.new(shape: CustomerManagedPolicyReference, required: true, location_name: "CustomerManagedPolicyReference"))
    AttachCustomerManagedPolicyReferenceToPermissionSetRequest.struct_class = Types::AttachCustomerManagedPolicyReferenceToPermissionSetRequest

    AttachCustomerManagedPolicyReferenceToPermissionSetResponse.struct_class = Types::AttachCustomerManagedPolicyReferenceToPermissionSetResponse

    AttachManagedPolicyToPermissionSetRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    AttachManagedPolicyToPermissionSetRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    AttachManagedPolicyToPermissionSetRequest.add_member(:managed_policy_arn, Shapes::ShapeRef.new(shape: ManagedPolicyArn, required: true, location_name: "ManagedPolicyArn"))
    AttachManagedPolicyToPermissionSetRequest.struct_class = Types::AttachManagedPolicyToPermissionSetRequest

    AttachManagedPolicyToPermissionSetResponse.struct_class = Types::AttachManagedPolicyToPermissionSetResponse

    AttachedManagedPolicy.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    AttachedManagedPolicy.add_member(:arn, Shapes::ShapeRef.new(shape: ManagedPolicyArn, location_name: "Arn"))
    AttachedManagedPolicy.struct_class = Types::AttachedManagedPolicy

    AttachedManagedPolicyList.member = Shapes::ShapeRef.new(shape: AttachedManagedPolicy)

    AuthenticationMethod.add_member(:iam, Shapes::ShapeRef.new(shape: IamAuthenticationMethod, location_name: "Iam"))
    AuthenticationMethod.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AuthenticationMethod.add_member_subclass(:iam, Types::AuthenticationMethod::Iam)
    AuthenticationMethod.add_member_subclass(:unknown, Types::AuthenticationMethod::Unknown)
    AuthenticationMethod.struct_class = Types::AuthenticationMethod

    AuthenticationMethodItem.add_member(:authentication_method_type, Shapes::ShapeRef.new(shape: AuthenticationMethodType, location_name: "AuthenticationMethodType"))
    AuthenticationMethodItem.add_member(:authentication_method, Shapes::ShapeRef.new(shape: AuthenticationMethod, location_name: "AuthenticationMethod"))
    AuthenticationMethodItem.struct_class = Types::AuthenticationMethodItem

    AuthenticationMethods.member = Shapes::ShapeRef.new(shape: AuthenticationMethodItem)

    AuthorizationCodeGrant.add_member(:redirect_uris, Shapes::ShapeRef.new(shape: RedirectUris, location_name: "RedirectUris"))
    AuthorizationCodeGrant.struct_class = Types::AuthorizationCodeGrant

    AuthorizedTokenIssuer.add_member(:trusted_token_issuer_arn, Shapes::ShapeRef.new(shape: TrustedTokenIssuerArn, location_name: "TrustedTokenIssuerArn"))
    AuthorizedTokenIssuer.add_member(:authorized_audiences, Shapes::ShapeRef.new(shape: TokenIssuerAudiences, location_name: "AuthorizedAudiences"))
    AuthorizedTokenIssuer.struct_class = Types::AuthorizedTokenIssuer

    AuthorizedTokenIssuers.member = Shapes::ShapeRef.new(shape: AuthorizedTokenIssuer)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ConflictExceptionMessage, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateAccountAssignmentRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    CreateAccountAssignmentRequest.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, required: true, location_name: "TargetId"))
    CreateAccountAssignmentRequest.add_member(:target_type, Shapes::ShapeRef.new(shape: TargetType, required: true, location_name: "TargetType"))
    CreateAccountAssignmentRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    CreateAccountAssignmentRequest.add_member(:principal_type, Shapes::ShapeRef.new(shape: PrincipalType, required: true, location_name: "PrincipalType"))
    CreateAccountAssignmentRequest.add_member(:principal_id, Shapes::ShapeRef.new(shape: PrincipalId, required: true, location_name: "PrincipalId"))
    CreateAccountAssignmentRequest.struct_class = Types::CreateAccountAssignmentRequest

    CreateAccountAssignmentResponse.add_member(:account_assignment_creation_status, Shapes::ShapeRef.new(shape: AccountAssignmentOperationStatus, location_name: "AccountAssignmentCreationStatus"))
    CreateAccountAssignmentResponse.struct_class = Types::CreateAccountAssignmentResponse

    CreateApplicationAssignmentRequest.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location_name: "ApplicationArn"))
    CreateApplicationAssignmentRequest.add_member(:principal_id, Shapes::ShapeRef.new(shape: PrincipalId, required: true, location_name: "PrincipalId"))
    CreateApplicationAssignmentRequest.add_member(:principal_type, Shapes::ShapeRef.new(shape: PrincipalType, required: true, location_name: "PrincipalType"))
    CreateApplicationAssignmentRequest.struct_class = Types::CreateApplicationAssignmentRequest

    CreateApplicationAssignmentResponse.struct_class = Types::CreateApplicationAssignmentResponse

    CreateApplicationRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    CreateApplicationRequest.add_member(:application_provider_arn, Shapes::ShapeRef.new(shape: ApplicationProviderArn, required: true, location_name: "ApplicationProviderArn"))
    CreateApplicationRequest.add_member(:name, Shapes::ShapeRef.new(shape: ApplicationNameType, required: true, location_name: "Name"))
    CreateApplicationRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateApplicationRequest.add_member(:portal_options, Shapes::ShapeRef.new(shape: PortalOptions, location_name: "PortalOptions"))
    CreateApplicationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateApplicationRequest.add_member(:status, Shapes::ShapeRef.new(shape: ApplicationStatus, location_name: "Status"))
    CreateApplicationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateApplicationRequest.struct_class = Types::CreateApplicationRequest

    CreateApplicationResponse.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, location_name: "ApplicationArn"))
    CreateApplicationResponse.struct_class = Types::CreateApplicationResponse

    CreateInstanceAccessControlAttributeConfigurationRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    CreateInstanceAccessControlAttributeConfigurationRequest.add_member(:instance_access_control_attribute_configuration, Shapes::ShapeRef.new(shape: InstanceAccessControlAttributeConfiguration, required: true, location_name: "InstanceAccessControlAttributeConfiguration"))
    CreateInstanceAccessControlAttributeConfigurationRequest.struct_class = Types::CreateInstanceAccessControlAttributeConfigurationRequest

    CreateInstanceAccessControlAttributeConfigurationResponse.struct_class = Types::CreateInstanceAccessControlAttributeConfigurationResponse

    CreateInstanceRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameType, location_name: "Name"))
    CreateInstanceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateInstanceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateInstanceRequest.struct_class = Types::CreateInstanceRequest

    CreateInstanceResponse.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, location_name: "InstanceArn"))
    CreateInstanceResponse.struct_class = Types::CreateInstanceResponse

    CreatePermissionSetRequest.add_member(:name, Shapes::ShapeRef.new(shape: PermissionSetName, required: true, location_name: "Name"))
    CreatePermissionSetRequest.add_member(:description, Shapes::ShapeRef.new(shape: PermissionSetDescription, location_name: "Description"))
    CreatePermissionSetRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    CreatePermissionSetRequest.add_member(:session_duration, Shapes::ShapeRef.new(shape: Duration, location_name: "SessionDuration"))
    CreatePermissionSetRequest.add_member(:relay_state, Shapes::ShapeRef.new(shape: RelayState, location_name: "RelayState"))
    CreatePermissionSetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreatePermissionSetRequest.struct_class = Types::CreatePermissionSetRequest

    CreatePermissionSetResponse.add_member(:permission_set, Shapes::ShapeRef.new(shape: PermissionSet, location_name: "PermissionSet"))
    CreatePermissionSetResponse.struct_class = Types::CreatePermissionSetResponse

    CreateTrustedTokenIssuerRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    CreateTrustedTokenIssuerRequest.add_member(:name, Shapes::ShapeRef.new(shape: TrustedTokenIssuerName, required: true, location_name: "Name"))
    CreateTrustedTokenIssuerRequest.add_member(:trusted_token_issuer_type, Shapes::ShapeRef.new(shape: TrustedTokenIssuerType, required: true, location_name: "TrustedTokenIssuerType"))
    CreateTrustedTokenIssuerRequest.add_member(:trusted_token_issuer_configuration, Shapes::ShapeRef.new(shape: TrustedTokenIssuerConfiguration, required: true, location_name: "TrustedTokenIssuerConfiguration"))
    CreateTrustedTokenIssuerRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateTrustedTokenIssuerRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateTrustedTokenIssuerRequest.struct_class = Types::CreateTrustedTokenIssuerRequest

    CreateTrustedTokenIssuerResponse.add_member(:trusted_token_issuer_arn, Shapes::ShapeRef.new(shape: TrustedTokenIssuerArn, location_name: "TrustedTokenIssuerArn"))
    CreateTrustedTokenIssuerResponse.struct_class = Types::CreateTrustedTokenIssuerResponse

    CustomerManagedPolicyReference.add_member(:name, Shapes::ShapeRef.new(shape: ManagedPolicyName, required: true, location_name: "Name"))
    CustomerManagedPolicyReference.add_member(:path, Shapes::ShapeRef.new(shape: ManagedPolicyPath, location_name: "Path"))
    CustomerManagedPolicyReference.struct_class = Types::CustomerManagedPolicyReference

    CustomerManagedPolicyReferenceList.member = Shapes::ShapeRef.new(shape: CustomerManagedPolicyReference)

    DeleteAccountAssignmentRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    DeleteAccountAssignmentRequest.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, required: true, location_name: "TargetId"))
    DeleteAccountAssignmentRequest.add_member(:target_type, Shapes::ShapeRef.new(shape: TargetType, required: true, location_name: "TargetType"))
    DeleteAccountAssignmentRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    DeleteAccountAssignmentRequest.add_member(:principal_type, Shapes::ShapeRef.new(shape: PrincipalType, required: true, location_name: "PrincipalType"))
    DeleteAccountAssignmentRequest.add_member(:principal_id, Shapes::ShapeRef.new(shape: PrincipalId, required: true, location_name: "PrincipalId"))
    DeleteAccountAssignmentRequest.struct_class = Types::DeleteAccountAssignmentRequest

    DeleteAccountAssignmentResponse.add_member(:account_assignment_deletion_status, Shapes::ShapeRef.new(shape: AccountAssignmentOperationStatus, location_name: "AccountAssignmentDeletionStatus"))
    DeleteAccountAssignmentResponse.struct_class = Types::DeleteAccountAssignmentResponse

    DeleteApplicationAccessScopeRequest.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location_name: "ApplicationArn"))
    DeleteApplicationAccessScopeRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    DeleteApplicationAccessScopeRequest.struct_class = Types::DeleteApplicationAccessScopeRequest

    DeleteApplicationAssignmentRequest.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location_name: "ApplicationArn"))
    DeleteApplicationAssignmentRequest.add_member(:principal_id, Shapes::ShapeRef.new(shape: PrincipalId, required: true, location_name: "PrincipalId"))
    DeleteApplicationAssignmentRequest.add_member(:principal_type, Shapes::ShapeRef.new(shape: PrincipalType, required: true, location_name: "PrincipalType"))
    DeleteApplicationAssignmentRequest.struct_class = Types::DeleteApplicationAssignmentRequest

    DeleteApplicationAssignmentResponse.struct_class = Types::DeleteApplicationAssignmentResponse

    DeleteApplicationAuthenticationMethodRequest.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location_name: "ApplicationArn"))
    DeleteApplicationAuthenticationMethodRequest.add_member(:authentication_method_type, Shapes::ShapeRef.new(shape: AuthenticationMethodType, required: true, location_name: "AuthenticationMethodType"))
    DeleteApplicationAuthenticationMethodRequest.struct_class = Types::DeleteApplicationAuthenticationMethodRequest

    DeleteApplicationGrantRequest.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location_name: "ApplicationArn"))
    DeleteApplicationGrantRequest.add_member(:grant_type, Shapes::ShapeRef.new(shape: GrantType, required: true, location_name: "GrantType"))
    DeleteApplicationGrantRequest.struct_class = Types::DeleteApplicationGrantRequest

    DeleteApplicationRequest.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location_name: "ApplicationArn"))
    DeleteApplicationRequest.struct_class = Types::DeleteApplicationRequest

    DeleteApplicationResponse.struct_class = Types::DeleteApplicationResponse

    DeleteInlinePolicyFromPermissionSetRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    DeleteInlinePolicyFromPermissionSetRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    DeleteInlinePolicyFromPermissionSetRequest.struct_class = Types::DeleteInlinePolicyFromPermissionSetRequest

    DeleteInlinePolicyFromPermissionSetResponse.struct_class = Types::DeleteInlinePolicyFromPermissionSetResponse

    DeleteInstanceAccessControlAttributeConfigurationRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    DeleteInstanceAccessControlAttributeConfigurationRequest.struct_class = Types::DeleteInstanceAccessControlAttributeConfigurationRequest

    DeleteInstanceAccessControlAttributeConfigurationResponse.struct_class = Types::DeleteInstanceAccessControlAttributeConfigurationResponse

    DeleteInstanceRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    DeleteInstanceRequest.struct_class = Types::DeleteInstanceRequest

    DeleteInstanceResponse.struct_class = Types::DeleteInstanceResponse

    DeletePermissionSetRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    DeletePermissionSetRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    DeletePermissionSetRequest.struct_class = Types::DeletePermissionSetRequest

    DeletePermissionSetResponse.struct_class = Types::DeletePermissionSetResponse

    DeletePermissionsBoundaryFromPermissionSetRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    DeletePermissionsBoundaryFromPermissionSetRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    DeletePermissionsBoundaryFromPermissionSetRequest.struct_class = Types::DeletePermissionsBoundaryFromPermissionSetRequest

    DeletePermissionsBoundaryFromPermissionSetResponse.struct_class = Types::DeletePermissionsBoundaryFromPermissionSetResponse

    DeleteTrustedTokenIssuerRequest.add_member(:trusted_token_issuer_arn, Shapes::ShapeRef.new(shape: TrustedTokenIssuerArn, required: true, location_name: "TrustedTokenIssuerArn"))
    DeleteTrustedTokenIssuerRequest.struct_class = Types::DeleteTrustedTokenIssuerRequest

    DeleteTrustedTokenIssuerResponse.struct_class = Types::DeleteTrustedTokenIssuerResponse

    DescribeAccountAssignmentCreationStatusRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    DescribeAccountAssignmentCreationStatusRequest.add_member(:account_assignment_creation_request_id, Shapes::ShapeRef.new(shape: UUId, required: true, location_name: "AccountAssignmentCreationRequestId"))
    DescribeAccountAssignmentCreationStatusRequest.struct_class = Types::DescribeAccountAssignmentCreationStatusRequest

    DescribeAccountAssignmentCreationStatusResponse.add_member(:account_assignment_creation_status, Shapes::ShapeRef.new(shape: AccountAssignmentOperationStatus, location_name: "AccountAssignmentCreationStatus"))
    DescribeAccountAssignmentCreationStatusResponse.struct_class = Types::DescribeAccountAssignmentCreationStatusResponse

    DescribeAccountAssignmentDeletionStatusRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    DescribeAccountAssignmentDeletionStatusRequest.add_member(:account_assignment_deletion_request_id, Shapes::ShapeRef.new(shape: UUId, required: true, location_name: "AccountAssignmentDeletionRequestId"))
    DescribeAccountAssignmentDeletionStatusRequest.struct_class = Types::DescribeAccountAssignmentDeletionStatusRequest

    DescribeAccountAssignmentDeletionStatusResponse.add_member(:account_assignment_deletion_status, Shapes::ShapeRef.new(shape: AccountAssignmentOperationStatus, location_name: "AccountAssignmentDeletionStatus"))
    DescribeAccountAssignmentDeletionStatusResponse.struct_class = Types::DescribeAccountAssignmentDeletionStatusResponse

    DescribeApplicationAssignmentRequest.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location_name: "ApplicationArn"))
    DescribeApplicationAssignmentRequest.add_member(:principal_id, Shapes::ShapeRef.new(shape: PrincipalId, required: true, location_name: "PrincipalId"))
    DescribeApplicationAssignmentRequest.add_member(:principal_type, Shapes::ShapeRef.new(shape: PrincipalType, required: true, location_name: "PrincipalType"))
    DescribeApplicationAssignmentRequest.struct_class = Types::DescribeApplicationAssignmentRequest

    DescribeApplicationAssignmentResponse.add_member(:principal_type, Shapes::ShapeRef.new(shape: PrincipalType, location_name: "PrincipalType"))
    DescribeApplicationAssignmentResponse.add_member(:principal_id, Shapes::ShapeRef.new(shape: PrincipalId, location_name: "PrincipalId"))
    DescribeApplicationAssignmentResponse.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, location_name: "ApplicationArn"))
    DescribeApplicationAssignmentResponse.struct_class = Types::DescribeApplicationAssignmentResponse

    DescribeApplicationProviderRequest.add_member(:application_provider_arn, Shapes::ShapeRef.new(shape: ApplicationProviderArn, required: true, location_name: "ApplicationProviderArn"))
    DescribeApplicationProviderRequest.struct_class = Types::DescribeApplicationProviderRequest

    DescribeApplicationProviderResponse.add_member(:application_provider_arn, Shapes::ShapeRef.new(shape: ApplicationProviderArn, required: true, location_name: "ApplicationProviderArn"))
    DescribeApplicationProviderResponse.add_member(:federation_protocol, Shapes::ShapeRef.new(shape: FederationProtocol, location_name: "FederationProtocol"))
    DescribeApplicationProviderResponse.add_member(:display_data, Shapes::ShapeRef.new(shape: DisplayData, location_name: "DisplayData"))
    DescribeApplicationProviderResponse.add_member(:resource_server_config, Shapes::ShapeRef.new(shape: ResourceServerConfig, location_name: "ResourceServerConfig"))
    DescribeApplicationProviderResponse.struct_class = Types::DescribeApplicationProviderResponse

    DescribeApplicationRequest.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location_name: "ApplicationArn"))
    DescribeApplicationRequest.struct_class = Types::DescribeApplicationRequest

    DescribeApplicationResponse.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, location_name: "ApplicationArn"))
    DescribeApplicationResponse.add_member(:application_provider_arn, Shapes::ShapeRef.new(shape: ApplicationProviderArn, location_name: "ApplicationProviderArn"))
    DescribeApplicationResponse.add_member(:name, Shapes::ShapeRef.new(shape: ApplicationNameType, location_name: "Name"))
    DescribeApplicationResponse.add_member(:application_account, Shapes::ShapeRef.new(shape: AccountId, location_name: "ApplicationAccount"))
    DescribeApplicationResponse.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, location_name: "InstanceArn"))
    DescribeApplicationResponse.add_member(:status, Shapes::ShapeRef.new(shape: ApplicationStatus, location_name: "Status"))
    DescribeApplicationResponse.add_member(:portal_options, Shapes::ShapeRef.new(shape: PortalOptions, location_name: "PortalOptions"))
    DescribeApplicationResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    DescribeApplicationResponse.add_member(:created_date, Shapes::ShapeRef.new(shape: Date, location_name: "CreatedDate"))
    DescribeApplicationResponse.struct_class = Types::DescribeApplicationResponse

    DescribeInstanceAccessControlAttributeConfigurationRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    DescribeInstanceAccessControlAttributeConfigurationRequest.struct_class = Types::DescribeInstanceAccessControlAttributeConfigurationRequest

    DescribeInstanceAccessControlAttributeConfigurationResponse.add_member(:status, Shapes::ShapeRef.new(shape: InstanceAccessControlAttributeConfigurationStatus, location_name: "Status"))
    DescribeInstanceAccessControlAttributeConfigurationResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: InstanceAccessControlAttributeConfigurationStatusReason, location_name: "StatusReason"))
    DescribeInstanceAccessControlAttributeConfigurationResponse.add_member(:instance_access_control_attribute_configuration, Shapes::ShapeRef.new(shape: InstanceAccessControlAttributeConfiguration, location_name: "InstanceAccessControlAttributeConfiguration"))
    DescribeInstanceAccessControlAttributeConfigurationResponse.struct_class = Types::DescribeInstanceAccessControlAttributeConfigurationResponse

    DescribeInstanceRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    DescribeInstanceRequest.struct_class = Types::DescribeInstanceRequest

    DescribeInstanceResponse.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, location_name: "InstanceArn"))
    DescribeInstanceResponse.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: Id, location_name: "IdentityStoreId"))
    DescribeInstanceResponse.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "OwnerAccountId"))
    DescribeInstanceResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameType, location_name: "Name"))
    DescribeInstanceResponse.add_member(:created_date, Shapes::ShapeRef.new(shape: Date, location_name: "CreatedDate"))
    DescribeInstanceResponse.add_member(:status, Shapes::ShapeRef.new(shape: InstanceStatus, location_name: "Status"))
    DescribeInstanceResponse.struct_class = Types::DescribeInstanceResponse

    DescribePermissionSetProvisioningStatusRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    DescribePermissionSetProvisioningStatusRequest.add_member(:provision_permission_set_request_id, Shapes::ShapeRef.new(shape: UUId, required: true, location_name: "ProvisionPermissionSetRequestId"))
    DescribePermissionSetProvisioningStatusRequest.struct_class = Types::DescribePermissionSetProvisioningStatusRequest

    DescribePermissionSetProvisioningStatusResponse.add_member(:permission_set_provisioning_status, Shapes::ShapeRef.new(shape: PermissionSetProvisioningStatus, location_name: "PermissionSetProvisioningStatus"))
    DescribePermissionSetProvisioningStatusResponse.struct_class = Types::DescribePermissionSetProvisioningStatusResponse

    DescribePermissionSetRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    DescribePermissionSetRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    DescribePermissionSetRequest.struct_class = Types::DescribePermissionSetRequest

    DescribePermissionSetResponse.add_member(:permission_set, Shapes::ShapeRef.new(shape: PermissionSet, location_name: "PermissionSet"))
    DescribePermissionSetResponse.struct_class = Types::DescribePermissionSetResponse

    DescribeTrustedTokenIssuerRequest.add_member(:trusted_token_issuer_arn, Shapes::ShapeRef.new(shape: TrustedTokenIssuerArn, required: true, location_name: "TrustedTokenIssuerArn"))
    DescribeTrustedTokenIssuerRequest.struct_class = Types::DescribeTrustedTokenIssuerRequest

    DescribeTrustedTokenIssuerResponse.add_member(:trusted_token_issuer_arn, Shapes::ShapeRef.new(shape: TrustedTokenIssuerArn, location_name: "TrustedTokenIssuerArn"))
    DescribeTrustedTokenIssuerResponse.add_member(:name, Shapes::ShapeRef.new(shape: TrustedTokenIssuerName, location_name: "Name"))
    DescribeTrustedTokenIssuerResponse.add_member(:trusted_token_issuer_type, Shapes::ShapeRef.new(shape: TrustedTokenIssuerType, location_name: "TrustedTokenIssuerType"))
    DescribeTrustedTokenIssuerResponse.add_member(:trusted_token_issuer_configuration, Shapes::ShapeRef.new(shape: TrustedTokenIssuerConfiguration, location_name: "TrustedTokenIssuerConfiguration"))
    DescribeTrustedTokenIssuerResponse.struct_class = Types::DescribeTrustedTokenIssuerResponse

    DetachCustomerManagedPolicyReferenceFromPermissionSetRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    DetachCustomerManagedPolicyReferenceFromPermissionSetRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    DetachCustomerManagedPolicyReferenceFromPermissionSetRequest.add_member(:customer_managed_policy_reference, Shapes::ShapeRef.new(shape: CustomerManagedPolicyReference, required: true, location_name: "CustomerManagedPolicyReference"))
    DetachCustomerManagedPolicyReferenceFromPermissionSetRequest.struct_class = Types::DetachCustomerManagedPolicyReferenceFromPermissionSetRequest

    DetachCustomerManagedPolicyReferenceFromPermissionSetResponse.struct_class = Types::DetachCustomerManagedPolicyReferenceFromPermissionSetResponse

    DetachManagedPolicyFromPermissionSetRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    DetachManagedPolicyFromPermissionSetRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    DetachManagedPolicyFromPermissionSetRequest.add_member(:managed_policy_arn, Shapes::ShapeRef.new(shape: ManagedPolicyArn, required: true, location_name: "ManagedPolicyArn"))
    DetachManagedPolicyFromPermissionSetRequest.struct_class = Types::DetachManagedPolicyFromPermissionSetRequest

    DetachManagedPolicyFromPermissionSetResponse.struct_class = Types::DetachManagedPolicyFromPermissionSetResponse

    DisplayData.add_member(:display_name, Shapes::ShapeRef.new(shape: Name, location_name: "DisplayName"))
    DisplayData.add_member(:icon_url, Shapes::ShapeRef.new(shape: IconUrl, location_name: "IconUrl"))
    DisplayData.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    DisplayData.struct_class = Types::DisplayData

    GetApplicationAccessScopeRequest.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location_name: "ApplicationArn"))
    GetApplicationAccessScopeRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    GetApplicationAccessScopeRequest.struct_class = Types::GetApplicationAccessScopeRequest

    GetApplicationAccessScopeResponse.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    GetApplicationAccessScopeResponse.add_member(:authorized_targets, Shapes::ShapeRef.new(shape: ScopeTargets, location_name: "AuthorizedTargets"))
    GetApplicationAccessScopeResponse.struct_class = Types::GetApplicationAccessScopeResponse

    GetApplicationAssignmentConfigurationRequest.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location_name: "ApplicationArn"))
    GetApplicationAssignmentConfigurationRequest.struct_class = Types::GetApplicationAssignmentConfigurationRequest

    GetApplicationAssignmentConfigurationResponse.add_member(:assignment_required, Shapes::ShapeRef.new(shape: AssignmentRequired, required: true, location_name: "AssignmentRequired"))
    GetApplicationAssignmentConfigurationResponse.struct_class = Types::GetApplicationAssignmentConfigurationResponse

    GetApplicationAuthenticationMethodRequest.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location_name: "ApplicationArn"))
    GetApplicationAuthenticationMethodRequest.add_member(:authentication_method_type, Shapes::ShapeRef.new(shape: AuthenticationMethodType, required: true, location_name: "AuthenticationMethodType"))
    GetApplicationAuthenticationMethodRequest.struct_class = Types::GetApplicationAuthenticationMethodRequest

    GetApplicationAuthenticationMethodResponse.add_member(:authentication_method, Shapes::ShapeRef.new(shape: AuthenticationMethod, location_name: "AuthenticationMethod"))
    GetApplicationAuthenticationMethodResponse.struct_class = Types::GetApplicationAuthenticationMethodResponse

    GetApplicationGrantRequest.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location_name: "ApplicationArn"))
    GetApplicationGrantRequest.add_member(:grant_type, Shapes::ShapeRef.new(shape: GrantType, required: true, location_name: "GrantType"))
    GetApplicationGrantRequest.struct_class = Types::GetApplicationGrantRequest

    GetApplicationGrantResponse.add_member(:grant, Shapes::ShapeRef.new(shape: Grant, required: true, location_name: "Grant"))
    GetApplicationGrantResponse.struct_class = Types::GetApplicationGrantResponse

    GetApplicationSessionConfigurationRequest.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location_name: "ApplicationArn"))
    GetApplicationSessionConfigurationRequest.struct_class = Types::GetApplicationSessionConfigurationRequest

    GetApplicationSessionConfigurationResponse.add_member(:user_background_session_application_status, Shapes::ShapeRef.new(shape: UserBackgroundSessionApplicationStatus, location_name: "UserBackgroundSessionApplicationStatus"))
    GetApplicationSessionConfigurationResponse.struct_class = Types::GetApplicationSessionConfigurationResponse

    GetInlinePolicyForPermissionSetRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    GetInlinePolicyForPermissionSetRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    GetInlinePolicyForPermissionSetRequest.struct_class = Types::GetInlinePolicyForPermissionSetRequest

    GetInlinePolicyForPermissionSetResponse.add_member(:inline_policy, Shapes::ShapeRef.new(shape: PermissionSetPolicyDocument, location_name: "InlinePolicy"))
    GetInlinePolicyForPermissionSetResponse.struct_class = Types::GetInlinePolicyForPermissionSetResponse

    GetPermissionsBoundaryForPermissionSetRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    GetPermissionsBoundaryForPermissionSetRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    GetPermissionsBoundaryForPermissionSetRequest.struct_class = Types::GetPermissionsBoundaryForPermissionSetRequest

    GetPermissionsBoundaryForPermissionSetResponse.add_member(:permissions_boundary, Shapes::ShapeRef.new(shape: PermissionsBoundary, location_name: "PermissionsBoundary"))
    GetPermissionsBoundaryForPermissionSetResponse.struct_class = Types::GetPermissionsBoundaryForPermissionSetResponse

    Grant.add_member(:authorization_code, Shapes::ShapeRef.new(shape: AuthorizationCodeGrant, location_name: "AuthorizationCode"))
    Grant.add_member(:jwt_bearer, Shapes::ShapeRef.new(shape: JwtBearerGrant, location_name: "JwtBearer"))
    Grant.add_member(:refresh_token, Shapes::ShapeRef.new(shape: RefreshTokenGrant, location_name: "RefreshToken"))
    Grant.add_member(:token_exchange, Shapes::ShapeRef.new(shape: TokenExchangeGrant, location_name: "TokenExchange"))
    Grant.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Grant.add_member_subclass(:authorization_code, Types::Grant::AuthorizationCode)
    Grant.add_member_subclass(:jwt_bearer, Types::Grant::JwtBearer)
    Grant.add_member_subclass(:refresh_token, Types::Grant::RefreshToken)
    Grant.add_member_subclass(:token_exchange, Types::Grant::TokenExchange)
    Grant.add_member_subclass(:unknown, Types::Grant::Unknown)
    Grant.struct_class = Types::Grant

    GrantItem.add_member(:grant_type, Shapes::ShapeRef.new(shape: GrantType, required: true, location_name: "GrantType"))
    GrantItem.add_member(:grant, Shapes::ShapeRef.new(shape: Grant, required: true, location_name: "Grant"))
    GrantItem.struct_class = Types::GrantItem

    Grants.member = Shapes::ShapeRef.new(shape: GrantItem)

    IamAuthenticationMethod.add_member(:actor_policy, Shapes::ShapeRef.new(shape: ActorPolicyDocument, required: true, location_name: "ActorPolicy"))
    IamAuthenticationMethod.struct_class = Types::IamAuthenticationMethod

    InstanceAccessControlAttributeConfiguration.add_member(:access_control_attributes, Shapes::ShapeRef.new(shape: AccessControlAttributeList, required: true, location_name: "AccessControlAttributes"))
    InstanceAccessControlAttributeConfiguration.struct_class = Types::InstanceAccessControlAttributeConfiguration

    InstanceList.member = Shapes::ShapeRef.new(shape: InstanceMetadata)

    InstanceMetadata.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, location_name: "InstanceArn"))
    InstanceMetadata.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: Id, location_name: "IdentityStoreId"))
    InstanceMetadata.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "OwnerAccountId"))
    InstanceMetadata.add_member(:name, Shapes::ShapeRef.new(shape: NameType, location_name: "Name"))
    InstanceMetadata.add_member(:created_date, Shapes::ShapeRef.new(shape: Date, location_name: "CreatedDate"))
    InstanceMetadata.add_member(:status, Shapes::ShapeRef.new(shape: InstanceStatus, location_name: "Status"))
    InstanceMetadata.struct_class = Types::InstanceMetadata

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: InternalFailureMessage, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    JwtBearerGrant.add_member(:authorized_token_issuers, Shapes::ShapeRef.new(shape: AuthorizedTokenIssuers, location_name: "AuthorizedTokenIssuers"))
    JwtBearerGrant.struct_class = Types::JwtBearerGrant

    ListAccountAssignmentCreationStatusRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    ListAccountAssignmentCreationStatusRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListAccountAssignmentCreationStatusRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListAccountAssignmentCreationStatusRequest.add_member(:filter, Shapes::ShapeRef.new(shape: OperationStatusFilter, location_name: "Filter"))
    ListAccountAssignmentCreationStatusRequest.struct_class = Types::ListAccountAssignmentCreationStatusRequest

    ListAccountAssignmentCreationStatusResponse.add_member(:account_assignments_creation_status, Shapes::ShapeRef.new(shape: AccountAssignmentOperationStatusList, location_name: "AccountAssignmentsCreationStatus"))
    ListAccountAssignmentCreationStatusResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListAccountAssignmentCreationStatusResponse.struct_class = Types::ListAccountAssignmentCreationStatusResponse

    ListAccountAssignmentDeletionStatusRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    ListAccountAssignmentDeletionStatusRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListAccountAssignmentDeletionStatusRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListAccountAssignmentDeletionStatusRequest.add_member(:filter, Shapes::ShapeRef.new(shape: OperationStatusFilter, location_name: "Filter"))
    ListAccountAssignmentDeletionStatusRequest.struct_class = Types::ListAccountAssignmentDeletionStatusRequest

    ListAccountAssignmentDeletionStatusResponse.add_member(:account_assignments_deletion_status, Shapes::ShapeRef.new(shape: AccountAssignmentOperationStatusList, location_name: "AccountAssignmentsDeletionStatus"))
    ListAccountAssignmentDeletionStatusResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListAccountAssignmentDeletionStatusResponse.struct_class = Types::ListAccountAssignmentDeletionStatusResponse

    ListAccountAssignmentsFilter.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    ListAccountAssignmentsFilter.struct_class = Types::ListAccountAssignmentsFilter

    ListAccountAssignmentsForPrincipalRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    ListAccountAssignmentsForPrincipalRequest.add_member(:principal_id, Shapes::ShapeRef.new(shape: PrincipalId, required: true, location_name: "PrincipalId"))
    ListAccountAssignmentsForPrincipalRequest.add_member(:principal_type, Shapes::ShapeRef.new(shape: PrincipalType, required: true, location_name: "PrincipalType"))
    ListAccountAssignmentsForPrincipalRequest.add_member(:filter, Shapes::ShapeRef.new(shape: ListAccountAssignmentsFilter, location_name: "Filter"))
    ListAccountAssignmentsForPrincipalRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListAccountAssignmentsForPrincipalRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListAccountAssignmentsForPrincipalRequest.struct_class = Types::ListAccountAssignmentsForPrincipalRequest

    ListAccountAssignmentsForPrincipalResponse.add_member(:account_assignments, Shapes::ShapeRef.new(shape: AccountAssignmentListForPrincipal, location_name: "AccountAssignments"))
    ListAccountAssignmentsForPrincipalResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListAccountAssignmentsForPrincipalResponse.struct_class = Types::ListAccountAssignmentsForPrincipalResponse

    ListAccountAssignmentsRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    ListAccountAssignmentsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: TargetId, required: true, location_name: "AccountId"))
    ListAccountAssignmentsRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    ListAccountAssignmentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListAccountAssignmentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListAccountAssignmentsRequest.struct_class = Types::ListAccountAssignmentsRequest

    ListAccountAssignmentsResponse.add_member(:account_assignments, Shapes::ShapeRef.new(shape: AccountAssignmentList, location_name: "AccountAssignments"))
    ListAccountAssignmentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListAccountAssignmentsResponse.struct_class = Types::ListAccountAssignmentsResponse

    ListAccountsForProvisionedPermissionSetRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    ListAccountsForProvisionedPermissionSetRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    ListAccountsForProvisionedPermissionSetRequest.add_member(:provisioning_status, Shapes::ShapeRef.new(shape: ProvisioningStatus, location_name: "ProvisioningStatus"))
    ListAccountsForProvisionedPermissionSetRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListAccountsForProvisionedPermissionSetRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListAccountsForProvisionedPermissionSetRequest.struct_class = Types::ListAccountsForProvisionedPermissionSetRequest

    ListAccountsForProvisionedPermissionSetResponse.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountList, location_name: "AccountIds"))
    ListAccountsForProvisionedPermissionSetResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListAccountsForProvisionedPermissionSetResponse.struct_class = Types::ListAccountsForProvisionedPermissionSetResponse

    ListApplicationAccessScopesRequest.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location_name: "ApplicationArn"))
    ListApplicationAccessScopesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListApplicationAccessScopesRequestMaxResultsInteger, location_name: "MaxResults"))
    ListApplicationAccessScopesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListApplicationAccessScopesRequest.struct_class = Types::ListApplicationAccessScopesRequest

    ListApplicationAccessScopesResponse.add_member(:scopes, Shapes::ShapeRef.new(shape: Scopes, required: true, location_name: "Scopes"))
    ListApplicationAccessScopesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListApplicationAccessScopesResponse.struct_class = Types::ListApplicationAccessScopesResponse

    ListApplicationAssignmentsFilter.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, location_name: "ApplicationArn"))
    ListApplicationAssignmentsFilter.struct_class = Types::ListApplicationAssignmentsFilter

    ListApplicationAssignmentsForPrincipalRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    ListApplicationAssignmentsForPrincipalRequest.add_member(:principal_id, Shapes::ShapeRef.new(shape: PrincipalId, required: true, location_name: "PrincipalId"))
    ListApplicationAssignmentsForPrincipalRequest.add_member(:principal_type, Shapes::ShapeRef.new(shape: PrincipalType, required: true, location_name: "PrincipalType"))
    ListApplicationAssignmentsForPrincipalRequest.add_member(:filter, Shapes::ShapeRef.new(shape: ListApplicationAssignmentsFilter, location_name: "Filter"))
    ListApplicationAssignmentsForPrincipalRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListApplicationAssignmentsForPrincipalRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListApplicationAssignmentsForPrincipalRequest.struct_class = Types::ListApplicationAssignmentsForPrincipalRequest

    ListApplicationAssignmentsForPrincipalResponse.add_member(:application_assignments, Shapes::ShapeRef.new(shape: ApplicationAssignmentListForPrincipal, location_name: "ApplicationAssignments"))
    ListApplicationAssignmentsForPrincipalResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListApplicationAssignmentsForPrincipalResponse.struct_class = Types::ListApplicationAssignmentsForPrincipalResponse

    ListApplicationAssignmentsRequest.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location_name: "ApplicationArn"))
    ListApplicationAssignmentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListApplicationAssignmentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListApplicationAssignmentsRequest.struct_class = Types::ListApplicationAssignmentsRequest

    ListApplicationAssignmentsResponse.add_member(:application_assignments, Shapes::ShapeRef.new(shape: ApplicationAssignmentsList, location_name: "ApplicationAssignments"))
    ListApplicationAssignmentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListApplicationAssignmentsResponse.struct_class = Types::ListApplicationAssignmentsResponse

    ListApplicationAuthenticationMethodsRequest.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location_name: "ApplicationArn"))
    ListApplicationAuthenticationMethodsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListApplicationAuthenticationMethodsRequest.struct_class = Types::ListApplicationAuthenticationMethodsRequest

    ListApplicationAuthenticationMethodsResponse.add_member(:authentication_methods, Shapes::ShapeRef.new(shape: AuthenticationMethods, location_name: "AuthenticationMethods"))
    ListApplicationAuthenticationMethodsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListApplicationAuthenticationMethodsResponse.struct_class = Types::ListApplicationAuthenticationMethodsResponse

    ListApplicationGrantsRequest.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location_name: "ApplicationArn"))
    ListApplicationGrantsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListApplicationGrantsRequest.struct_class = Types::ListApplicationGrantsRequest

    ListApplicationGrantsResponse.add_member(:grants, Shapes::ShapeRef.new(shape: Grants, required: true, location_name: "Grants"))
    ListApplicationGrantsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListApplicationGrantsResponse.struct_class = Types::ListApplicationGrantsResponse

    ListApplicationProvidersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListApplicationProvidersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListApplicationProvidersRequest.struct_class = Types::ListApplicationProvidersRequest

    ListApplicationProvidersResponse.add_member(:application_providers, Shapes::ShapeRef.new(shape: ApplicationProviderList, location_name: "ApplicationProviders"))
    ListApplicationProvidersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListApplicationProvidersResponse.struct_class = Types::ListApplicationProvidersResponse

    ListApplicationsFilter.add_member(:application_account, Shapes::ShapeRef.new(shape: AccountId, location_name: "ApplicationAccount"))
    ListApplicationsFilter.add_member(:application_provider, Shapes::ShapeRef.new(shape: ApplicationProviderArn, location_name: "ApplicationProvider"))
    ListApplicationsFilter.struct_class = Types::ListApplicationsFilter

    ListApplicationsRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    ListApplicationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListApplicationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListApplicationsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: ListApplicationsFilter, location_name: "Filter"))
    ListApplicationsRequest.struct_class = Types::ListApplicationsRequest

    ListApplicationsResponse.add_member(:applications, Shapes::ShapeRef.new(shape: ApplicationList, location_name: "Applications"))
    ListApplicationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListApplicationsResponse.struct_class = Types::ListApplicationsResponse

    ListCustomerManagedPolicyReferencesInPermissionSetRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    ListCustomerManagedPolicyReferencesInPermissionSetRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    ListCustomerManagedPolicyReferencesInPermissionSetRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListCustomerManagedPolicyReferencesInPermissionSetRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListCustomerManagedPolicyReferencesInPermissionSetRequest.struct_class = Types::ListCustomerManagedPolicyReferencesInPermissionSetRequest

    ListCustomerManagedPolicyReferencesInPermissionSetResponse.add_member(:customer_managed_policy_references, Shapes::ShapeRef.new(shape: CustomerManagedPolicyReferenceList, location_name: "CustomerManagedPolicyReferences"))
    ListCustomerManagedPolicyReferencesInPermissionSetResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListCustomerManagedPolicyReferencesInPermissionSetResponse.struct_class = Types::ListCustomerManagedPolicyReferencesInPermissionSetResponse

    ListInstancesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListInstancesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListInstancesRequest.struct_class = Types::ListInstancesRequest

    ListInstancesResponse.add_member(:instances, Shapes::ShapeRef.new(shape: InstanceList, location_name: "Instances"))
    ListInstancesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListInstancesResponse.struct_class = Types::ListInstancesResponse

    ListManagedPoliciesInPermissionSetRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    ListManagedPoliciesInPermissionSetRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    ListManagedPoliciesInPermissionSetRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListManagedPoliciesInPermissionSetRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListManagedPoliciesInPermissionSetRequest.struct_class = Types::ListManagedPoliciesInPermissionSetRequest

    ListManagedPoliciesInPermissionSetResponse.add_member(:attached_managed_policies, Shapes::ShapeRef.new(shape: AttachedManagedPolicyList, location_name: "AttachedManagedPolicies"))
    ListManagedPoliciesInPermissionSetResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListManagedPoliciesInPermissionSetResponse.struct_class = Types::ListManagedPoliciesInPermissionSetResponse

    ListPermissionSetProvisioningStatusRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    ListPermissionSetProvisioningStatusRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListPermissionSetProvisioningStatusRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPermissionSetProvisioningStatusRequest.add_member(:filter, Shapes::ShapeRef.new(shape: OperationStatusFilter, location_name: "Filter"))
    ListPermissionSetProvisioningStatusRequest.struct_class = Types::ListPermissionSetProvisioningStatusRequest

    ListPermissionSetProvisioningStatusResponse.add_member(:permission_sets_provisioning_status, Shapes::ShapeRef.new(shape: PermissionSetProvisioningStatusList, location_name: "PermissionSetsProvisioningStatus"))
    ListPermissionSetProvisioningStatusResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPermissionSetProvisioningStatusResponse.struct_class = Types::ListPermissionSetProvisioningStatusResponse

    ListPermissionSetsProvisionedToAccountRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    ListPermissionSetsProvisionedToAccountRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    ListPermissionSetsProvisionedToAccountRequest.add_member(:provisioning_status, Shapes::ShapeRef.new(shape: ProvisioningStatus, location_name: "ProvisioningStatus"))
    ListPermissionSetsProvisionedToAccountRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListPermissionSetsProvisionedToAccountRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPermissionSetsProvisionedToAccountRequest.struct_class = Types::ListPermissionSetsProvisionedToAccountRequest

    ListPermissionSetsProvisionedToAccountResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPermissionSetsProvisionedToAccountResponse.add_member(:permission_sets, Shapes::ShapeRef.new(shape: PermissionSetList, location_name: "PermissionSets"))
    ListPermissionSetsProvisionedToAccountResponse.struct_class = Types::ListPermissionSetsProvisionedToAccountResponse

    ListPermissionSetsRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    ListPermissionSetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPermissionSetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListPermissionSetsRequest.struct_class = Types::ListPermissionSetsRequest

    ListPermissionSetsResponse.add_member(:permission_sets, Shapes::ShapeRef.new(shape: PermissionSetList, location_name: "PermissionSets"))
    ListPermissionSetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPermissionSetsResponse.struct_class = Types::ListPermissionSetsResponse

    ListTagsForResourceRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, location_name: "InstanceArn"))
    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTrustedTokenIssuersRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    ListTrustedTokenIssuersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListTrustedTokenIssuersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListTrustedTokenIssuersRequest.struct_class = Types::ListTrustedTokenIssuersRequest

    ListTrustedTokenIssuersResponse.add_member(:trusted_token_issuers, Shapes::ShapeRef.new(shape: TrustedTokenIssuerList, location_name: "TrustedTokenIssuers"))
    ListTrustedTokenIssuersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListTrustedTokenIssuersResponse.struct_class = Types::ListTrustedTokenIssuersResponse

    OidcJwtConfiguration.add_member(:issuer_url, Shapes::ShapeRef.new(shape: TrustedTokenIssuerUrl, required: true, location_name: "IssuerUrl"))
    OidcJwtConfiguration.add_member(:claim_attribute_path, Shapes::ShapeRef.new(shape: ClaimAttributePath, required: true, location_name: "ClaimAttributePath"))
    OidcJwtConfiguration.add_member(:identity_store_attribute_path, Shapes::ShapeRef.new(shape: JMESPath, required: true, location_name: "IdentityStoreAttributePath"))
    OidcJwtConfiguration.add_member(:jwks_retrieval_option, Shapes::ShapeRef.new(shape: JwksRetrievalOption, required: true, location_name: "JwksRetrievalOption"))
    OidcJwtConfiguration.struct_class = Types::OidcJwtConfiguration

    OidcJwtUpdateConfiguration.add_member(:claim_attribute_path, Shapes::ShapeRef.new(shape: ClaimAttributePath, location_name: "ClaimAttributePath"))
    OidcJwtUpdateConfiguration.add_member(:identity_store_attribute_path, Shapes::ShapeRef.new(shape: JMESPath, location_name: "IdentityStoreAttributePath"))
    OidcJwtUpdateConfiguration.add_member(:jwks_retrieval_option, Shapes::ShapeRef.new(shape: JwksRetrievalOption, location_name: "JwksRetrievalOption"))
    OidcJwtUpdateConfiguration.struct_class = Types::OidcJwtUpdateConfiguration

    OperationStatusFilter.add_member(:status, Shapes::ShapeRef.new(shape: StatusValues, location_name: "Status"))
    OperationStatusFilter.struct_class = Types::OperationStatusFilter

    PermissionSet.add_member(:name, Shapes::ShapeRef.new(shape: PermissionSetName, location_name: "Name"))
    PermissionSet.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, location_name: "PermissionSetArn"))
    PermissionSet.add_member(:description, Shapes::ShapeRef.new(shape: PermissionSetDescription, location_name: "Description"))
    PermissionSet.add_member(:created_date, Shapes::ShapeRef.new(shape: Date, location_name: "CreatedDate"))
    PermissionSet.add_member(:session_duration, Shapes::ShapeRef.new(shape: Duration, location_name: "SessionDuration"))
    PermissionSet.add_member(:relay_state, Shapes::ShapeRef.new(shape: RelayState, location_name: "RelayState"))
    PermissionSet.struct_class = Types::PermissionSet

    PermissionSetList.member = Shapes::ShapeRef.new(shape: PermissionSetArn)

    PermissionSetProvisioningStatus.add_member(:status, Shapes::ShapeRef.new(shape: StatusValues, location_name: "Status"))
    PermissionSetProvisioningStatus.add_member(:request_id, Shapes::ShapeRef.new(shape: UUId, location_name: "RequestId"))
    PermissionSetProvisioningStatus.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    PermissionSetProvisioningStatus.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, location_name: "PermissionSetArn"))
    PermissionSetProvisioningStatus.add_member(:failure_reason, Shapes::ShapeRef.new(shape: Reason, location_name: "FailureReason"))
    PermissionSetProvisioningStatus.add_member(:created_date, Shapes::ShapeRef.new(shape: Date, location_name: "CreatedDate"))
    PermissionSetProvisioningStatus.struct_class = Types::PermissionSetProvisioningStatus

    PermissionSetProvisioningStatusList.member = Shapes::ShapeRef.new(shape: PermissionSetProvisioningStatusMetadata)

    PermissionSetProvisioningStatusMetadata.add_member(:status, Shapes::ShapeRef.new(shape: StatusValues, location_name: "Status"))
    PermissionSetProvisioningStatusMetadata.add_member(:request_id, Shapes::ShapeRef.new(shape: UUId, location_name: "RequestId"))
    PermissionSetProvisioningStatusMetadata.add_member(:created_date, Shapes::ShapeRef.new(shape: Date, location_name: "CreatedDate"))
    PermissionSetProvisioningStatusMetadata.struct_class = Types::PermissionSetProvisioningStatusMetadata

    PermissionsBoundary.add_member(:customer_managed_policy_reference, Shapes::ShapeRef.new(shape: CustomerManagedPolicyReference, location_name: "CustomerManagedPolicyReference"))
    PermissionsBoundary.add_member(:managed_policy_arn, Shapes::ShapeRef.new(shape: ManagedPolicyArn, location_name: "ManagedPolicyArn"))
    PermissionsBoundary.struct_class = Types::PermissionsBoundary

    PortalOptions.add_member(:sign_in_options, Shapes::ShapeRef.new(shape: SignInOptions, location_name: "SignInOptions"))
    PortalOptions.add_member(:visibility, Shapes::ShapeRef.new(shape: ApplicationVisibility, location_name: "Visibility"))
    PortalOptions.struct_class = Types::PortalOptions

    ProvisionPermissionSetRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    ProvisionPermissionSetRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    ProvisionPermissionSetRequest.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, location_name: "TargetId"))
    ProvisionPermissionSetRequest.add_member(:target_type, Shapes::ShapeRef.new(shape: ProvisionTargetType, required: true, location_name: "TargetType"))
    ProvisionPermissionSetRequest.struct_class = Types::ProvisionPermissionSetRequest

    ProvisionPermissionSetResponse.add_member(:permission_set_provisioning_status, Shapes::ShapeRef.new(shape: PermissionSetProvisioningStatus, location_name: "PermissionSetProvisioningStatus"))
    ProvisionPermissionSetResponse.struct_class = Types::ProvisionPermissionSetResponse

    PutApplicationAccessScopeRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    PutApplicationAccessScopeRequest.add_member(:authorized_targets, Shapes::ShapeRef.new(shape: ScopeTargets, location_name: "AuthorizedTargets"))
    PutApplicationAccessScopeRequest.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location_name: "ApplicationArn"))
    PutApplicationAccessScopeRequest.struct_class = Types::PutApplicationAccessScopeRequest

    PutApplicationAssignmentConfigurationRequest.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location_name: "ApplicationArn"))
    PutApplicationAssignmentConfigurationRequest.add_member(:assignment_required, Shapes::ShapeRef.new(shape: AssignmentRequired, required: true, location_name: "AssignmentRequired"))
    PutApplicationAssignmentConfigurationRequest.struct_class = Types::PutApplicationAssignmentConfigurationRequest

    PutApplicationAssignmentConfigurationResponse.struct_class = Types::PutApplicationAssignmentConfigurationResponse

    PutApplicationAuthenticationMethodRequest.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location_name: "ApplicationArn"))
    PutApplicationAuthenticationMethodRequest.add_member(:authentication_method_type, Shapes::ShapeRef.new(shape: AuthenticationMethodType, required: true, location_name: "AuthenticationMethodType"))
    PutApplicationAuthenticationMethodRequest.add_member(:authentication_method, Shapes::ShapeRef.new(shape: AuthenticationMethod, required: true, location_name: "AuthenticationMethod"))
    PutApplicationAuthenticationMethodRequest.struct_class = Types::PutApplicationAuthenticationMethodRequest

    PutApplicationGrantRequest.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location_name: "ApplicationArn"))
    PutApplicationGrantRequest.add_member(:grant_type, Shapes::ShapeRef.new(shape: GrantType, required: true, location_name: "GrantType"))
    PutApplicationGrantRequest.add_member(:grant, Shapes::ShapeRef.new(shape: Grant, required: true, location_name: "Grant"))
    PutApplicationGrantRequest.struct_class = Types::PutApplicationGrantRequest

    PutApplicationSessionConfigurationRequest.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location_name: "ApplicationArn"))
    PutApplicationSessionConfigurationRequest.add_member(:user_background_session_application_status, Shapes::ShapeRef.new(shape: UserBackgroundSessionApplicationStatus, location_name: "UserBackgroundSessionApplicationStatus"))
    PutApplicationSessionConfigurationRequest.struct_class = Types::PutApplicationSessionConfigurationRequest

    PutApplicationSessionConfigurationResponse.struct_class = Types::PutApplicationSessionConfigurationResponse

    PutInlinePolicyToPermissionSetRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    PutInlinePolicyToPermissionSetRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    PutInlinePolicyToPermissionSetRequest.add_member(:inline_policy, Shapes::ShapeRef.new(shape: PermissionSetPolicyDocument, required: true, location_name: "InlinePolicy"))
    PutInlinePolicyToPermissionSetRequest.struct_class = Types::PutInlinePolicyToPermissionSetRequest

    PutInlinePolicyToPermissionSetResponse.struct_class = Types::PutInlinePolicyToPermissionSetResponse

    PutPermissionsBoundaryToPermissionSetRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    PutPermissionsBoundaryToPermissionSetRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    PutPermissionsBoundaryToPermissionSetRequest.add_member(:permissions_boundary, Shapes::ShapeRef.new(shape: PermissionsBoundary, required: true, location_name: "PermissionsBoundary"))
    PutPermissionsBoundaryToPermissionSetRequest.struct_class = Types::PutPermissionsBoundaryToPermissionSetRequest

    PutPermissionsBoundaryToPermissionSetResponse.struct_class = Types::PutPermissionsBoundaryToPermissionSetResponse

    RedirectUris.member = Shapes::ShapeRef.new(shape: URI)

    RefreshTokenGrant.struct_class = Types::RefreshTokenGrant

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ResourceNotFoundMessage, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceServerConfig.add_member(:scopes, Shapes::ShapeRef.new(shape: ResourceServerScopes, location_name: "Scopes"))
    ResourceServerConfig.struct_class = Types::ResourceServerConfig

    ResourceServerScopeDetails.add_member(:long_description, Shapes::ShapeRef.new(shape: Description, location_name: "LongDescription"))
    ResourceServerScopeDetails.add_member(:detailed_title, Shapes::ShapeRef.new(shape: Description, location_name: "DetailedTitle"))
    ResourceServerScopeDetails.struct_class = Types::ResourceServerScopeDetails

    ResourceServerScopes.key = Shapes::ShapeRef.new(shape: ResourceServerScope)
    ResourceServerScopes.value = Shapes::ShapeRef.new(shape: ResourceServerScopeDetails)

    ScopeDetails.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "Scope"))
    ScopeDetails.add_member(:authorized_targets, Shapes::ShapeRef.new(shape: ScopeTargets, location_name: "AuthorizedTargets"))
    ScopeDetails.struct_class = Types::ScopeDetails

    ScopeTargets.member = Shapes::ShapeRef.new(shape: ScopeTarget)

    Scopes.member = Shapes::ShapeRef.new(shape: ScopeDetails)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ServiceQuotaExceededMessage, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SignInOptions.add_member(:origin, Shapes::ShapeRef.new(shape: SignInOrigin, required: true, location_name: "Origin"))
    SignInOptions.add_member(:application_url, Shapes::ShapeRef.new(shape: ApplicationUrl, location_name: "ApplicationUrl"))
    SignInOptions.struct_class = Types::SignInOptions

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, location_name: "InstanceArn"))
    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ThrottlingExceptionMessage, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TokenExchangeGrant.struct_class = Types::TokenExchangeGrant

    TokenIssuerAudiences.member = Shapes::ShapeRef.new(shape: TokenIssuerAudience)

    TrustedTokenIssuerConfiguration.add_member(:oidc_jwt_configuration, Shapes::ShapeRef.new(shape: OidcJwtConfiguration, location_name: "OidcJwtConfiguration"))
    TrustedTokenIssuerConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    TrustedTokenIssuerConfiguration.add_member_subclass(:oidc_jwt_configuration, Types::TrustedTokenIssuerConfiguration::OidcJwtConfiguration)
    TrustedTokenIssuerConfiguration.add_member_subclass(:unknown, Types::TrustedTokenIssuerConfiguration::Unknown)
    TrustedTokenIssuerConfiguration.struct_class = Types::TrustedTokenIssuerConfiguration

    TrustedTokenIssuerList.member = Shapes::ShapeRef.new(shape: TrustedTokenIssuerMetadata)

    TrustedTokenIssuerMetadata.add_member(:trusted_token_issuer_arn, Shapes::ShapeRef.new(shape: TrustedTokenIssuerArn, location_name: "TrustedTokenIssuerArn"))
    TrustedTokenIssuerMetadata.add_member(:name, Shapes::ShapeRef.new(shape: TrustedTokenIssuerName, location_name: "Name"))
    TrustedTokenIssuerMetadata.add_member(:trusted_token_issuer_type, Shapes::ShapeRef.new(shape: TrustedTokenIssuerType, location_name: "TrustedTokenIssuerType"))
    TrustedTokenIssuerMetadata.struct_class = Types::TrustedTokenIssuerMetadata

    TrustedTokenIssuerUpdateConfiguration.add_member(:oidc_jwt_configuration, Shapes::ShapeRef.new(shape: OidcJwtUpdateConfiguration, location_name: "OidcJwtConfiguration"))
    TrustedTokenIssuerUpdateConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    TrustedTokenIssuerUpdateConfiguration.add_member_subclass(:oidc_jwt_configuration, Types::TrustedTokenIssuerUpdateConfiguration::OidcJwtConfiguration)
    TrustedTokenIssuerUpdateConfiguration.add_member_subclass(:unknown, Types::TrustedTokenIssuerUpdateConfiguration::Unknown)
    TrustedTokenIssuerUpdateConfiguration.struct_class = Types::TrustedTokenIssuerUpdateConfiguration

    UntagResourceRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, location_name: "InstanceArn"))
    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateApplicationPortalOptions.add_member(:sign_in_options, Shapes::ShapeRef.new(shape: SignInOptions, location_name: "SignInOptions"))
    UpdateApplicationPortalOptions.struct_class = Types::UpdateApplicationPortalOptions

    UpdateApplicationRequest.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location_name: "ApplicationArn"))
    UpdateApplicationRequest.add_member(:name, Shapes::ShapeRef.new(shape: ApplicationNameType, location_name: "Name"))
    UpdateApplicationRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateApplicationRequest.add_member(:status, Shapes::ShapeRef.new(shape: ApplicationStatus, location_name: "Status"))
    UpdateApplicationRequest.add_member(:portal_options, Shapes::ShapeRef.new(shape: UpdateApplicationPortalOptions, location_name: "PortalOptions"))
    UpdateApplicationRequest.struct_class = Types::UpdateApplicationRequest

    UpdateApplicationResponse.struct_class = Types::UpdateApplicationResponse

    UpdateInstanceAccessControlAttributeConfigurationRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    UpdateInstanceAccessControlAttributeConfigurationRequest.add_member(:instance_access_control_attribute_configuration, Shapes::ShapeRef.new(shape: InstanceAccessControlAttributeConfiguration, required: true, location_name: "InstanceAccessControlAttributeConfiguration"))
    UpdateInstanceAccessControlAttributeConfigurationRequest.struct_class = Types::UpdateInstanceAccessControlAttributeConfigurationRequest

    UpdateInstanceAccessControlAttributeConfigurationResponse.struct_class = Types::UpdateInstanceAccessControlAttributeConfigurationResponse

    UpdateInstanceRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameType, required: true, location_name: "Name"))
    UpdateInstanceRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    UpdateInstanceRequest.struct_class = Types::UpdateInstanceRequest

    UpdateInstanceResponse.struct_class = Types::UpdateInstanceResponse

    UpdatePermissionSetRequest.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, required: true, location_name: "InstanceArn"))
    UpdatePermissionSetRequest.add_member(:permission_set_arn, Shapes::ShapeRef.new(shape: PermissionSetArn, required: true, location_name: "PermissionSetArn"))
    UpdatePermissionSetRequest.add_member(:description, Shapes::ShapeRef.new(shape: PermissionSetDescription, location_name: "Description"))
    UpdatePermissionSetRequest.add_member(:session_duration, Shapes::ShapeRef.new(shape: Duration, location_name: "SessionDuration"))
    UpdatePermissionSetRequest.add_member(:relay_state, Shapes::ShapeRef.new(shape: RelayState, location_name: "RelayState"))
    UpdatePermissionSetRequest.struct_class = Types::UpdatePermissionSetRequest

    UpdatePermissionSetResponse.struct_class = Types::UpdatePermissionSetResponse

    UpdateTrustedTokenIssuerRequest.add_member(:trusted_token_issuer_arn, Shapes::ShapeRef.new(shape: TrustedTokenIssuerArn, required: true, location_name: "TrustedTokenIssuerArn"))
    UpdateTrustedTokenIssuerRequest.add_member(:name, Shapes::ShapeRef.new(shape: TrustedTokenIssuerName, location_name: "Name"))
    UpdateTrustedTokenIssuerRequest.add_member(:trusted_token_issuer_configuration, Shapes::ShapeRef.new(shape: TrustedTokenIssuerUpdateConfiguration, location_name: "TrustedTokenIssuerConfiguration"))
    UpdateTrustedTokenIssuerRequest.struct_class = Types::UpdateTrustedTokenIssuerRequest

    UpdateTrustedTokenIssuerResponse.struct_class = Types::UpdateTrustedTokenIssuerResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ValidationExceptionMessage, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-07-20"

      api.metadata = {
        "apiVersion" => "2020-07-20",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "sso",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceAbbreviation" => "SSO Admin",
        "serviceFullName" => "AWS Single Sign-On Admin",
        "serviceId" => "SSO Admin",
        "signatureVersion" => "v4",
        "signingName" => "sso",
        "targetPrefix" => "SWBExternalService",
        "uid" => "sso-admin-2020-07-20",
      }

      api.add_operation(:attach_customer_managed_policy_reference_to_permission_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AttachCustomerManagedPolicyReferenceToPermissionSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AttachCustomerManagedPolicyReferenceToPermissionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: AttachCustomerManagedPolicyReferenceToPermissionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:attach_managed_policy_to_permission_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AttachManagedPolicyToPermissionSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AttachManagedPolicyToPermissionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: AttachManagedPolicyToPermissionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_account_assignment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAccountAssignment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAccountAssignmentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAccountAssignmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_application_assignment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApplicationAssignment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateApplicationAssignmentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateApplicationAssignmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_instance_access_control_attribute_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateInstanceAccessControlAttributeConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateInstanceAccessControlAttributeConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateInstanceAccessControlAttributeConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_permission_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePermissionSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePermissionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePermissionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_trusted_token_issuer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTrustedTokenIssuer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateTrustedTokenIssuerRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTrustedTokenIssuerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_account_assignment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccountAssignment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAccountAssignmentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAccountAssignmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_application_access_scope, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApplicationAccessScope"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteApplicationAccessScopeRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_application_assignment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApplicationAssignment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteApplicationAssignmentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteApplicationAssignmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_application_authentication_method, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApplicationAuthenticationMethod"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteApplicationAuthenticationMethodRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_application_grant, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApplicationGrant"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteApplicationGrantRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_inline_policy_from_permission_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInlinePolicyFromPermissionSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteInlinePolicyFromPermissionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteInlinePolicyFromPermissionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_instance_access_control_attribute_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInstanceAccessControlAttributeConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteInstanceAccessControlAttributeConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteInstanceAccessControlAttributeConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_permission_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePermissionSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeletePermissionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePermissionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_permissions_boundary_from_permission_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePermissionsBoundaryFromPermissionSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeletePermissionsBoundaryFromPermissionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePermissionsBoundaryFromPermissionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_trusted_token_issuer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTrustedTokenIssuer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTrustedTokenIssuerRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTrustedTokenIssuerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:describe_account_assignment_creation_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccountAssignmentCreationStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAccountAssignmentCreationStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAccountAssignmentCreationStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_account_assignment_deletion_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccountAssignmentDeletionStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAccountAssignmentDeletionStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAccountAssignmentDeletionStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_application_assignment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeApplicationAssignment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeApplicationAssignmentRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeApplicationAssignmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_application_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeApplicationProvider"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeApplicationProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeApplicationProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_instance_access_control_attribute_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInstanceAccessControlAttributeConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeInstanceAccessControlAttributeConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInstanceAccessControlAttributeConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_permission_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePermissionSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePermissionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePermissionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_permission_set_provisioning_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePermissionSetProvisioningStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePermissionSetProvisioningStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePermissionSetProvisioningStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_trusted_token_issuer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTrustedTokenIssuer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTrustedTokenIssuerRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTrustedTokenIssuerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:detach_customer_managed_policy_reference_from_permission_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetachCustomerManagedPolicyReferenceFromPermissionSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetachCustomerManagedPolicyReferenceFromPermissionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DetachCustomerManagedPolicyReferenceFromPermissionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:detach_managed_policy_from_permission_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetachManagedPolicyFromPermissionSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetachManagedPolicyFromPermissionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DetachManagedPolicyFromPermissionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_application_access_scope, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApplicationAccessScope"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetApplicationAccessScopeRequest)
        o.output = Shapes::ShapeRef.new(shape: GetApplicationAccessScopeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_application_assignment_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApplicationAssignmentConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetApplicationAssignmentConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetApplicationAssignmentConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_application_authentication_method, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApplicationAuthenticationMethod"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetApplicationAuthenticationMethodRequest)
        o.output = Shapes::ShapeRef.new(shape: GetApplicationAuthenticationMethodResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_application_grant, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApplicationGrant"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetApplicationGrantRequest)
        o.output = Shapes::ShapeRef.new(shape: GetApplicationGrantResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_application_session_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApplicationSessionConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetApplicationSessionConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetApplicationSessionConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_inline_policy_for_permission_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInlinePolicyForPermissionSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetInlinePolicyForPermissionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInlinePolicyForPermissionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_permissions_boundary_for_permission_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPermissionsBoundaryForPermissionSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPermissionsBoundaryForPermissionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPermissionsBoundaryForPermissionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_account_assignment_creation_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccountAssignmentCreationStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAccountAssignmentCreationStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccountAssignmentCreationStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_account_assignment_deletion_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccountAssignmentDeletionStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAccountAssignmentDeletionStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccountAssignmentDeletionStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_account_assignments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccountAssignments"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAccountAssignmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccountAssignmentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_account_assignments_for_principal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccountAssignmentsForPrincipal"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAccountAssignmentsForPrincipalRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccountAssignmentsForPrincipalResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_accounts_for_provisioned_permission_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccountsForProvisionedPermissionSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAccountsForProvisionedPermissionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccountsForProvisionedPermissionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_application_access_scopes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApplicationAccessScopes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListApplicationAccessScopesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApplicationAccessScopesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_application_assignments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApplicationAssignments"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListApplicationAssignmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApplicationAssignmentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_application_assignments_for_principal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApplicationAssignmentsForPrincipal"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListApplicationAssignmentsForPrincipalRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApplicationAssignmentsForPrincipalResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_application_authentication_methods, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApplicationAuthenticationMethods"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListApplicationAuthenticationMethodsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApplicationAuthenticationMethodsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_application_grants, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApplicationGrants"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListApplicationGrantsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApplicationGrantsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_application_providers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApplicationProviders"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListApplicationProvidersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApplicationProvidersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApplications"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListApplicationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApplicationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_customer_managed_policy_references_in_permission_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCustomerManagedPolicyReferencesInPermissionSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCustomerManagedPolicyReferencesInPermissionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCustomerManagedPolicyReferencesInPermissionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListInstancesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInstancesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_managed_policies_in_permission_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListManagedPoliciesInPermissionSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListManagedPoliciesInPermissionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: ListManagedPoliciesInPermissionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_permission_set_provisioning_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPermissionSetProvisioningStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPermissionSetProvisioningStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPermissionSetProvisioningStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_permission_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPermissionSets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPermissionSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPermissionSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_permission_sets_provisioned_to_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPermissionSetsProvisionedToAccount"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPermissionSetsProvisionedToAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPermissionSetsProvisionedToAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_trusted_token_issuers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTrustedTokenIssuers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTrustedTokenIssuersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTrustedTokenIssuersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:provision_permission_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ProvisionPermissionSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ProvisionPermissionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: ProvisionPermissionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:put_application_access_scope, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutApplicationAccessScope"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutApplicationAccessScopeRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:put_application_assignment_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutApplicationAssignmentConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutApplicationAssignmentConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutApplicationAssignmentConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:put_application_authentication_method, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutApplicationAuthenticationMethod"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutApplicationAuthenticationMethodRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:put_application_grant, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutApplicationGrant"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutApplicationGrantRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:put_application_session_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutApplicationSessionConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutApplicationSessionConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutApplicationSessionConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:put_inline_policy_to_permission_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutInlinePolicyToPermissionSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutInlinePolicyToPermissionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: PutInlinePolicyToPermissionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:put_permissions_boundary_to_permission_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutPermissionsBoundaryToPermissionSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutPermissionsBoundaryToPermissionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: PutPermissionsBoundaryToPermissionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_instance_access_control_attribute_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateInstanceAccessControlAttributeConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateInstanceAccessControlAttributeConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateInstanceAccessControlAttributeConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_permission_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePermissionSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdatePermissionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePermissionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_trusted_token_issuer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTrustedTokenIssuer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateTrustedTokenIssuerRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTrustedTokenIssuerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)
    end

  end
end
