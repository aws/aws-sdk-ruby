# frozen_string_literal: true

# This is generated code!

module Aws::SSOAdmin
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessControlAttribute = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#AccessControlAttribute', name: 'AccessControlAttribute')
    AccessControlAttributeKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#AccessControlAttributeKey', name: 'AccessControlAttributeKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@]+$"})
    AccessControlAttributeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssoadmin#AccessControlAttributeList', name: 'AccessControlAttributeList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    AccessControlAttributeValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#AccessControlAttributeValue', name: 'AccessControlAttributeValue')
    AccessControlAttributeValueSource = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#AccessControlAttributeValueSource', name: 'AccessControlAttributeValueSource', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@\\[\\]\\{\\}\\$\\\\\"]*$"})
    AccessControlAttributeValueSourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssoadmin#AccessControlAttributeValueSourceList', name: 'AccessControlAttributeValueSourceList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessDeniedExceptionMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#AccessDeniedExceptionMessage', name: 'AccessDeniedExceptionMessage')
    AccountAssignment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#AccountAssignment', name: 'AccountAssignment')
    AccountAssignmentForPrincipal = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#AccountAssignmentForPrincipal', name: 'AccountAssignmentForPrincipal')
    AccountAssignmentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssoadmin#AccountAssignmentList', name: 'AccountAssignmentList')
    AccountAssignmentListForPrincipal = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssoadmin#AccountAssignmentListForPrincipal', name: 'AccountAssignmentListForPrincipal')
    AccountAssignmentOperationStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#AccountAssignmentOperationStatus', name: 'AccountAssignmentOperationStatus')
    AccountAssignmentOperationStatusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssoadmin#AccountAssignmentOperationStatusList', name: 'AccountAssignmentOperationStatusList')
    AccountAssignmentOperationStatusMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#AccountAssignmentOperationStatusMetadata', name: 'AccountAssignmentOperationStatusMetadata')
    AccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#AccountId', name: 'AccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    AccountList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssoadmin#AccountList', name: 'AccountList')
    ActorPolicyDocument = Smithy::Schema::Shapes::DocumentShape.new(id: 'com.amazonaws.ssoadmin#ActorPolicyDocument', name: 'ActorPolicyDocument')
    Application = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#Application', name: 'Application')
    ApplicationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#ApplicationArn', name: 'ApplicationArn', traits: {"smithy.api#length" => {"min" => 10, "max" => 1224}, "smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):sso::\\d{12}:application/(sso)?ins-[a-zA-Z0-9-.]{16}/apl-[a-zA-Z0-9]{16}$"})
    ApplicationAssignment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ApplicationAssignment', name: 'ApplicationAssignment')
    ApplicationAssignmentForPrincipal = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ApplicationAssignmentForPrincipal', name: 'ApplicationAssignmentForPrincipal')
    ApplicationAssignmentListForPrincipal = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssoadmin#ApplicationAssignmentListForPrincipal', name: 'ApplicationAssignmentListForPrincipal')
    ApplicationAssignmentsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssoadmin#ApplicationAssignmentsList', name: 'ApplicationAssignmentsList')
    ApplicationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssoadmin#ApplicationList', name: 'ApplicationList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ApplicationNameType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#ApplicationNameType', name: 'ApplicationNameType', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    ApplicationProvider = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ApplicationProvider', name: 'ApplicationProvider')
    ApplicationProviderArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#ApplicationProviderArn', name: 'ApplicationProviderArn', traits: {"smithy.api#length" => {"min" => 10, "max" => 1224}, "smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):sso::aws:applicationProvider/[a-zA-Z0-9-/]+$"})
    ApplicationProviderList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssoadmin#ApplicationProviderList', name: 'ApplicationProviderList')
    ApplicationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssoadmin#ApplicationStatus', name: 'ApplicationStatus')
    ApplicationUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#ApplicationUrl', name: 'ApplicationUrl', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^http(s)?:\\/\\/[-a-zA-Z0-9+&@#\\/%?=~_|!:,.;]*[-a-zA-Z0-9+&bb@#\\/%?=~_|]$"})
    ApplicationVisibility = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssoadmin#ApplicationVisibility', name: 'ApplicationVisibility', traits: {"smithy.api#default" => "ENABLED"})
    AssignmentRequired = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.ssoadmin#AssignmentRequired', name: 'AssignmentRequired', traits: {"smithy.api#default" => true})
    AttachCustomerManagedPolicyReferenceToPermissionSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#AttachCustomerManagedPolicyReferenceToPermissionSetRequest', name: 'AttachCustomerManagedPolicyReferenceToPermissionSetRequest')
    AttachCustomerManagedPolicyReferenceToPermissionSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#AttachCustomerManagedPolicyReferenceToPermissionSetResponse', name: 'AttachCustomerManagedPolicyReferenceToPermissionSetResponse')
    AttachManagedPolicyToPermissionSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#AttachManagedPolicyToPermissionSetRequest', name: 'AttachManagedPolicyToPermissionSetRequest')
    AttachManagedPolicyToPermissionSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#AttachManagedPolicyToPermissionSetResponse', name: 'AttachManagedPolicyToPermissionSetResponse')
    AttachedManagedPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#AttachedManagedPolicy', name: 'AttachedManagedPolicy')
    AttachedManagedPolicyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssoadmin#AttachedManagedPolicyList', name: 'AttachedManagedPolicyList')
    AuthenticationMethod = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.ssoadmin#AuthenticationMethod', name: 'AuthenticationMethod')
    AuthenticationMethodItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#AuthenticationMethodItem', name: 'AuthenticationMethodItem')
    AuthenticationMethodType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssoadmin#AuthenticationMethodType', name: 'AuthenticationMethodType')
    AuthenticationMethods = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssoadmin#AuthenticationMethods', name: 'AuthenticationMethods')
    AuthorizationCodeGrant = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#AuthorizationCodeGrant', name: 'AuthorizationCodeGrant')
    AuthorizedTokenIssuer = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#AuthorizedTokenIssuer', name: 'AuthorizedTokenIssuer')
    AuthorizedTokenIssuers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssoadmin#AuthorizedTokenIssuers', name: 'AuthorizedTokenIssuers', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ClaimAttributePath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#ClaimAttributePath', name: 'ClaimAttributePath', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^\\p{L}+(?:(\\.|\\_)\\p{L}+){0,2}$"})
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[!-~]+$"})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictExceptionMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#ConflictExceptionMessage', name: 'ConflictExceptionMessage')
    CreateAccountAssignmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#CreateAccountAssignmentRequest', name: 'CreateAccountAssignmentRequest')
    CreateAccountAssignmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#CreateAccountAssignmentResponse', name: 'CreateAccountAssignmentResponse')
    CreateApplicationAssignmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#CreateApplicationAssignmentRequest', name: 'CreateApplicationAssignmentRequest')
    CreateApplicationAssignmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#CreateApplicationAssignmentResponse', name: 'CreateApplicationAssignmentResponse')
    CreateApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#CreateApplicationRequest', name: 'CreateApplicationRequest')
    CreateApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#CreateApplicationResponse', name: 'CreateApplicationResponse')
    CreateInstanceAccessControlAttributeConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#CreateInstanceAccessControlAttributeConfigurationRequest', name: 'CreateInstanceAccessControlAttributeConfigurationRequest')
    CreateInstanceAccessControlAttributeConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#CreateInstanceAccessControlAttributeConfigurationResponse', name: 'CreateInstanceAccessControlAttributeConfigurationResponse')
    CreateInstanceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#CreateInstanceRequest', name: 'CreateInstanceRequest')
    CreateInstanceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#CreateInstanceResponse', name: 'CreateInstanceResponse')
    CreatePermissionSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#CreatePermissionSetRequest', name: 'CreatePermissionSetRequest')
    CreatePermissionSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#CreatePermissionSetResponse', name: 'CreatePermissionSetResponse')
    CreateTrustedTokenIssuerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#CreateTrustedTokenIssuerRequest', name: 'CreateTrustedTokenIssuerRequest')
    CreateTrustedTokenIssuerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#CreateTrustedTokenIssuerResponse', name: 'CreateTrustedTokenIssuerResponse')
    CustomerManagedPolicyReference = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#CustomerManagedPolicyReference', name: 'CustomerManagedPolicyReference')
    CustomerManagedPolicyReferenceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssoadmin#CustomerManagedPolicyReferenceList', name: 'CustomerManagedPolicyReferenceList')
    Date = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.ssoadmin#Date', name: 'Date')
    DeleteAccountAssignmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DeleteAccountAssignmentRequest', name: 'DeleteAccountAssignmentRequest')
    DeleteAccountAssignmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DeleteAccountAssignmentResponse', name: 'DeleteAccountAssignmentResponse')
    DeleteApplicationAccessScopeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DeleteApplicationAccessScopeRequest', name: 'DeleteApplicationAccessScopeRequest')
    DeleteApplicationAssignmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DeleteApplicationAssignmentRequest', name: 'DeleteApplicationAssignmentRequest')
    DeleteApplicationAssignmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DeleteApplicationAssignmentResponse', name: 'DeleteApplicationAssignmentResponse')
    DeleteApplicationAuthenticationMethodRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DeleteApplicationAuthenticationMethodRequest', name: 'DeleteApplicationAuthenticationMethodRequest')
    DeleteApplicationGrantRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DeleteApplicationGrantRequest', name: 'DeleteApplicationGrantRequest')
    DeleteApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DeleteApplicationRequest', name: 'DeleteApplicationRequest')
    DeleteApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DeleteApplicationResponse', name: 'DeleteApplicationResponse')
    DeleteInlinePolicyFromPermissionSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DeleteInlinePolicyFromPermissionSetRequest', name: 'DeleteInlinePolicyFromPermissionSetRequest')
    DeleteInlinePolicyFromPermissionSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DeleteInlinePolicyFromPermissionSetResponse', name: 'DeleteInlinePolicyFromPermissionSetResponse')
    DeleteInstanceAccessControlAttributeConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DeleteInstanceAccessControlAttributeConfigurationRequest', name: 'DeleteInstanceAccessControlAttributeConfigurationRequest')
    DeleteInstanceAccessControlAttributeConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DeleteInstanceAccessControlAttributeConfigurationResponse', name: 'DeleteInstanceAccessControlAttributeConfigurationResponse')
    DeleteInstanceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DeleteInstanceRequest', name: 'DeleteInstanceRequest')
    DeleteInstanceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DeleteInstanceResponse', name: 'DeleteInstanceResponse')
    DeletePermissionSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DeletePermissionSetRequest', name: 'DeletePermissionSetRequest')
    DeletePermissionSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DeletePermissionSetResponse', name: 'DeletePermissionSetResponse')
    DeletePermissionsBoundaryFromPermissionSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DeletePermissionsBoundaryFromPermissionSetRequest', name: 'DeletePermissionsBoundaryFromPermissionSetRequest')
    DeletePermissionsBoundaryFromPermissionSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DeletePermissionsBoundaryFromPermissionSetResponse', name: 'DeletePermissionsBoundaryFromPermissionSetResponse')
    DeleteTrustedTokenIssuerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DeleteTrustedTokenIssuerRequest', name: 'DeleteTrustedTokenIssuerRequest')
    DeleteTrustedTokenIssuerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DeleteTrustedTokenIssuerResponse', name: 'DeleteTrustedTokenIssuerResponse')
    DescribeAccountAssignmentCreationStatusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DescribeAccountAssignmentCreationStatusRequest', name: 'DescribeAccountAssignmentCreationStatusRequest')
    DescribeAccountAssignmentCreationStatusResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DescribeAccountAssignmentCreationStatusResponse', name: 'DescribeAccountAssignmentCreationStatusResponse')
    DescribeAccountAssignmentDeletionStatusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DescribeAccountAssignmentDeletionStatusRequest', name: 'DescribeAccountAssignmentDeletionStatusRequest')
    DescribeAccountAssignmentDeletionStatusResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DescribeAccountAssignmentDeletionStatusResponse', name: 'DescribeAccountAssignmentDeletionStatusResponse')
    DescribeApplicationAssignmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DescribeApplicationAssignmentRequest', name: 'DescribeApplicationAssignmentRequest')
    DescribeApplicationAssignmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DescribeApplicationAssignmentResponse', name: 'DescribeApplicationAssignmentResponse')
    DescribeApplicationProviderRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DescribeApplicationProviderRequest', name: 'DescribeApplicationProviderRequest')
    DescribeApplicationProviderResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DescribeApplicationProviderResponse', name: 'DescribeApplicationProviderResponse')
    DescribeApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DescribeApplicationRequest', name: 'DescribeApplicationRequest')
    DescribeApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DescribeApplicationResponse', name: 'DescribeApplicationResponse')
    DescribeInstanceAccessControlAttributeConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DescribeInstanceAccessControlAttributeConfigurationRequest', name: 'DescribeInstanceAccessControlAttributeConfigurationRequest')
    DescribeInstanceAccessControlAttributeConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DescribeInstanceAccessControlAttributeConfigurationResponse', name: 'DescribeInstanceAccessControlAttributeConfigurationResponse')
    DescribeInstanceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DescribeInstanceRequest', name: 'DescribeInstanceRequest')
    DescribeInstanceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DescribeInstanceResponse', name: 'DescribeInstanceResponse')
    DescribePermissionSetProvisioningStatusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DescribePermissionSetProvisioningStatusRequest', name: 'DescribePermissionSetProvisioningStatusRequest')
    DescribePermissionSetProvisioningStatusResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DescribePermissionSetProvisioningStatusResponse', name: 'DescribePermissionSetProvisioningStatusResponse')
    DescribePermissionSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DescribePermissionSetRequest', name: 'DescribePermissionSetRequest')
    DescribePermissionSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DescribePermissionSetResponse', name: 'DescribePermissionSetResponse')
    DescribeTrustedTokenIssuerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DescribeTrustedTokenIssuerRequest', name: 'DescribeTrustedTokenIssuerRequest')
    DescribeTrustedTokenIssuerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DescribeTrustedTokenIssuerResponse', name: 'DescribeTrustedTokenIssuerResponse')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    DetachCustomerManagedPolicyReferenceFromPermissionSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DetachCustomerManagedPolicyReferenceFromPermissionSetRequest', name: 'DetachCustomerManagedPolicyReferenceFromPermissionSetRequest')
    DetachCustomerManagedPolicyReferenceFromPermissionSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DetachCustomerManagedPolicyReferenceFromPermissionSetResponse', name: 'DetachCustomerManagedPolicyReferenceFromPermissionSetResponse')
    DetachManagedPolicyFromPermissionSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DetachManagedPolicyFromPermissionSetRequest', name: 'DetachManagedPolicyFromPermissionSetRequest')
    DetachManagedPolicyFromPermissionSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DetachManagedPolicyFromPermissionSetResponse', name: 'DetachManagedPolicyFromPermissionSetResponse')
    DisplayData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#DisplayData', name: 'DisplayData')
    Duration = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#Duration', name: 'Duration', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^(-?)P(?=\\d|T\\d)(?:(\\d+)Y)?(?:(\\d+)M)?(?:(\\d+)([DW]))?(?:T(?:(\\d+)H)?(?:(\\d+)M)?(?:(\\d+(?:\\.\\d+)?)S)?)?$"})
    FederationProtocol = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssoadmin#FederationProtocol', name: 'FederationProtocol')
    GetApplicationAccessScopeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#GetApplicationAccessScopeRequest', name: 'GetApplicationAccessScopeRequest')
    GetApplicationAccessScopeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#GetApplicationAccessScopeResponse', name: 'GetApplicationAccessScopeResponse')
    GetApplicationAssignmentConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#GetApplicationAssignmentConfigurationRequest', name: 'GetApplicationAssignmentConfigurationRequest')
    GetApplicationAssignmentConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#GetApplicationAssignmentConfigurationResponse', name: 'GetApplicationAssignmentConfigurationResponse')
    GetApplicationAuthenticationMethodRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#GetApplicationAuthenticationMethodRequest', name: 'GetApplicationAuthenticationMethodRequest')
    GetApplicationAuthenticationMethodResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#GetApplicationAuthenticationMethodResponse', name: 'GetApplicationAuthenticationMethodResponse')
    GetApplicationGrantRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#GetApplicationGrantRequest', name: 'GetApplicationGrantRequest')
    GetApplicationGrantResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#GetApplicationGrantResponse', name: 'GetApplicationGrantResponse')
    GetApplicationSessionConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#GetApplicationSessionConfigurationRequest', name: 'GetApplicationSessionConfigurationRequest')
    GetApplicationSessionConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#GetApplicationSessionConfigurationResponse', name: 'GetApplicationSessionConfigurationResponse')
    GetInlinePolicyForPermissionSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#GetInlinePolicyForPermissionSetRequest', name: 'GetInlinePolicyForPermissionSetRequest')
    GetInlinePolicyForPermissionSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#GetInlinePolicyForPermissionSetResponse', name: 'GetInlinePolicyForPermissionSetResponse')
    GetPermissionsBoundaryForPermissionSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#GetPermissionsBoundaryForPermissionSetRequest', name: 'GetPermissionsBoundaryForPermissionSetRequest')
    GetPermissionsBoundaryForPermissionSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#GetPermissionsBoundaryForPermissionSetResponse', name: 'GetPermissionsBoundaryForPermissionSetResponse')
    Grant = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.ssoadmin#Grant', name: 'Grant')
    GrantItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#GrantItem', name: 'GrantItem')
    GrantType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssoadmin#GrantType', name: 'GrantType')
    Grants = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssoadmin#Grants', name: 'Grants')
    IamAuthenticationMethod = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#IamAuthenticationMethod', name: 'IamAuthenticationMethod')
    IconUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#IconUrl', name: 'IconUrl', traits: {"smithy.api#length" => {"min" => 1, "max" => 768}, "smithy.api#pattern" => "^(http|https):\\/\\/.*$"})
    Id = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#Id', name: 'Id', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-]*$"})
    InstanceAccessControlAttributeConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#InstanceAccessControlAttributeConfiguration', name: 'InstanceAccessControlAttributeConfiguration')
    InstanceAccessControlAttributeConfigurationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssoadmin#InstanceAccessControlAttributeConfigurationStatus', name: 'InstanceAccessControlAttributeConfigurationStatus')
    InstanceAccessControlAttributeConfigurationStatusReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#InstanceAccessControlAttributeConfigurationStatusReason', name: 'InstanceAccessControlAttributeConfigurationStatusReason')
    InstanceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#InstanceArn', name: 'InstanceArn', traits: {"smithy.api#length" => {"min" => 10, "max" => 1224}, "smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):sso:::instance/(sso)?ins-[a-zA-Z0-9-.]{16}$"})
    InstanceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssoadmin#InstanceList', name: 'InstanceList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    InstanceMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#InstanceMetadata', name: 'InstanceMetadata')
    InstanceStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssoadmin#InstanceStatus', name: 'InstanceStatus')
    InternalFailureMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#InternalFailureMessage', name: 'InternalFailureMessage')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    JMESPath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#JMESPath', name: 'JMESPath', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^\\p{L}+(?:\\.\\p{L}+){0,2}$"})
    JwksRetrievalOption = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssoadmin#JwksRetrievalOption', name: 'JwksRetrievalOption')
    JwtBearerGrant = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#JwtBearerGrant', name: 'JwtBearerGrant')
    ListAccountAssignmentCreationStatusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListAccountAssignmentCreationStatusRequest', name: 'ListAccountAssignmentCreationStatusRequest')
    ListAccountAssignmentCreationStatusResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListAccountAssignmentCreationStatusResponse', name: 'ListAccountAssignmentCreationStatusResponse')
    ListAccountAssignmentDeletionStatusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListAccountAssignmentDeletionStatusRequest', name: 'ListAccountAssignmentDeletionStatusRequest')
    ListAccountAssignmentDeletionStatusResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListAccountAssignmentDeletionStatusResponse', name: 'ListAccountAssignmentDeletionStatusResponse')
    ListAccountAssignmentsFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListAccountAssignmentsFilter', name: 'ListAccountAssignmentsFilter')
    ListAccountAssignmentsForPrincipalRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListAccountAssignmentsForPrincipalRequest', name: 'ListAccountAssignmentsForPrincipalRequest')
    ListAccountAssignmentsForPrincipalResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListAccountAssignmentsForPrincipalResponse', name: 'ListAccountAssignmentsForPrincipalResponse')
    ListAccountAssignmentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListAccountAssignmentsRequest', name: 'ListAccountAssignmentsRequest')
    ListAccountAssignmentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListAccountAssignmentsResponse', name: 'ListAccountAssignmentsResponse')
    ListAccountsForProvisionedPermissionSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListAccountsForProvisionedPermissionSetRequest', name: 'ListAccountsForProvisionedPermissionSetRequest')
    ListAccountsForProvisionedPermissionSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListAccountsForProvisionedPermissionSetResponse', name: 'ListAccountsForProvisionedPermissionSetResponse')
    ListApplicationAccessScopesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListApplicationAccessScopesRequest', name: 'ListApplicationAccessScopesRequest')
    ListApplicationAccessScopesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListApplicationAccessScopesResponse', name: 'ListApplicationAccessScopesResponse')
    ListApplicationAssignmentsFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListApplicationAssignmentsFilter', name: 'ListApplicationAssignmentsFilter')
    ListApplicationAssignmentsForPrincipalRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListApplicationAssignmentsForPrincipalRequest', name: 'ListApplicationAssignmentsForPrincipalRequest')
    ListApplicationAssignmentsForPrincipalResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListApplicationAssignmentsForPrincipalResponse', name: 'ListApplicationAssignmentsForPrincipalResponse')
    ListApplicationAssignmentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListApplicationAssignmentsRequest', name: 'ListApplicationAssignmentsRequest')
    ListApplicationAssignmentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListApplicationAssignmentsResponse', name: 'ListApplicationAssignmentsResponse')
    ListApplicationAuthenticationMethodsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListApplicationAuthenticationMethodsRequest', name: 'ListApplicationAuthenticationMethodsRequest')
    ListApplicationAuthenticationMethodsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListApplicationAuthenticationMethodsResponse', name: 'ListApplicationAuthenticationMethodsResponse')
    ListApplicationGrantsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListApplicationGrantsRequest', name: 'ListApplicationGrantsRequest')
    ListApplicationGrantsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListApplicationGrantsResponse', name: 'ListApplicationGrantsResponse')
    ListApplicationProvidersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListApplicationProvidersRequest', name: 'ListApplicationProvidersRequest')
    ListApplicationProvidersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListApplicationProvidersResponse', name: 'ListApplicationProvidersResponse')
    ListApplicationsFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListApplicationsFilter', name: 'ListApplicationsFilter')
    ListApplicationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListApplicationsRequest', name: 'ListApplicationsRequest')
    ListApplicationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListApplicationsResponse', name: 'ListApplicationsResponse')
    ListCustomerManagedPolicyReferencesInPermissionSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListCustomerManagedPolicyReferencesInPermissionSetRequest', name: 'ListCustomerManagedPolicyReferencesInPermissionSetRequest')
    ListCustomerManagedPolicyReferencesInPermissionSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListCustomerManagedPolicyReferencesInPermissionSetResponse', name: 'ListCustomerManagedPolicyReferencesInPermissionSetResponse')
    ListInstancesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListInstancesRequest', name: 'ListInstancesRequest')
    ListInstancesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListInstancesResponse', name: 'ListInstancesResponse')
    ListManagedPoliciesInPermissionSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListManagedPoliciesInPermissionSetRequest', name: 'ListManagedPoliciesInPermissionSetRequest')
    ListManagedPoliciesInPermissionSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListManagedPoliciesInPermissionSetResponse', name: 'ListManagedPoliciesInPermissionSetResponse')
    ListPermissionSetProvisioningStatusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListPermissionSetProvisioningStatusRequest', name: 'ListPermissionSetProvisioningStatusRequest')
    ListPermissionSetProvisioningStatusResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListPermissionSetProvisioningStatusResponse', name: 'ListPermissionSetProvisioningStatusResponse')
    ListPermissionSetsProvisionedToAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListPermissionSetsProvisionedToAccountRequest', name: 'ListPermissionSetsProvisionedToAccountRequest')
    ListPermissionSetsProvisionedToAccountResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListPermissionSetsProvisionedToAccountResponse', name: 'ListPermissionSetsProvisionedToAccountResponse')
    ListPermissionSetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListPermissionSetsRequest', name: 'ListPermissionSetsRequest')
    ListPermissionSetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListPermissionSetsResponse', name: 'ListPermissionSetsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListTrustedTokenIssuersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListTrustedTokenIssuersRequest', name: 'ListTrustedTokenIssuersRequest')
    ListTrustedTokenIssuersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ListTrustedTokenIssuersResponse', name: 'ListTrustedTokenIssuersResponse')
    ManagedPolicyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#ManagedPolicyArn', name: 'ManagedPolicyArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):iam::aws:policy((/[A-Za-z0-9\\.,\\+@=_-]+)*)/([A-Za-z0-9\\.,\\+=@_-]+)$"})
    ManagedPolicyName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#ManagedPolicyName', name: 'ManagedPolicyName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w+=,.@-]+$"})
    ManagedPolicyPath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#ManagedPolicyPath', name: 'ManagedPolicyPath', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^((/[A-Za-z0-9\\.,\\+@=_-]+)*)/$"})
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ssoadmin#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    Name = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#Name', name: 'Name', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    NameType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#NameType', name: 'NameType', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[\\w+=,.@-]+$"})
    OidcJwtConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#OidcJwtConfiguration', name: 'OidcJwtConfiguration')
    OidcJwtUpdateConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#OidcJwtUpdateConfiguration', name: 'OidcJwtUpdateConfiguration')
    OperationStatusFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#OperationStatusFilter', name: 'OperationStatusFilter')
    PermissionSet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#PermissionSet', name: 'PermissionSet')
    PermissionSetArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#PermissionSetArn', name: 'PermissionSetArn', traits: {"smithy.api#length" => {"min" => 10, "max" => 1224}, "smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):sso:::permissionSet/(sso)?ins-[a-zA-Z0-9-.]{16}/ps-[a-zA-Z0-9-./]{16}$"})
    PermissionSetDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#PermissionSetDescription', name: 'PermissionSetDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 700}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u00A1-\\u00FF]*$"})
    PermissionSetList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssoadmin#PermissionSetList', name: 'PermissionSetList')
    PermissionSetName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#PermissionSetName', name: 'PermissionSetName', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[\\w+=,.@-]+$"})
    PermissionSetPolicyDocument = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#PermissionSetPolicyDocument', name: 'PermissionSetPolicyDocument', traits: {"smithy.api#length" => {"min" => 1, "max" => 32768}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+$"})
    PermissionSetProvisioningStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#PermissionSetProvisioningStatus', name: 'PermissionSetProvisioningStatus')
    PermissionSetProvisioningStatusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssoadmin#PermissionSetProvisioningStatusList', name: 'PermissionSetProvisioningStatusList')
    PermissionSetProvisioningStatusMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#PermissionSetProvisioningStatusMetadata', name: 'PermissionSetProvisioningStatusMetadata')
    PermissionsBoundary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#PermissionsBoundary', name: 'PermissionsBoundary')
    PortalOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#PortalOptions', name: 'PortalOptions')
    PrincipalId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#PrincipalId', name: 'PrincipalId', traits: {"smithy.api#length" => {"min" => 1, "max" => 47}, "smithy.api#pattern" => "^([0-9a-f]{10}-|)[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}$"})
    PrincipalType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssoadmin#PrincipalType', name: 'PrincipalType')
    ProvisionPermissionSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ProvisionPermissionSetRequest', name: 'ProvisionPermissionSetRequest')
    ProvisionPermissionSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ProvisionPermissionSetResponse', name: 'ProvisionPermissionSetResponse')
    ProvisionTargetType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssoadmin#ProvisionTargetType', name: 'ProvisionTargetType')
    ProvisioningStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssoadmin#ProvisioningStatus', name: 'ProvisioningStatus')
    PutApplicationAccessScopeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#PutApplicationAccessScopeRequest', name: 'PutApplicationAccessScopeRequest')
    PutApplicationAssignmentConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#PutApplicationAssignmentConfigurationRequest', name: 'PutApplicationAssignmentConfigurationRequest')
    PutApplicationAssignmentConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#PutApplicationAssignmentConfigurationResponse', name: 'PutApplicationAssignmentConfigurationResponse')
    PutApplicationAuthenticationMethodRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#PutApplicationAuthenticationMethodRequest', name: 'PutApplicationAuthenticationMethodRequest')
    PutApplicationGrantRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#PutApplicationGrantRequest', name: 'PutApplicationGrantRequest')
    PutApplicationSessionConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#PutApplicationSessionConfigurationRequest', name: 'PutApplicationSessionConfigurationRequest')
    PutApplicationSessionConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#PutApplicationSessionConfigurationResponse', name: 'PutApplicationSessionConfigurationResponse')
    PutInlinePolicyToPermissionSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#PutInlinePolicyToPermissionSetRequest', name: 'PutInlinePolicyToPermissionSetRequest')
    PutInlinePolicyToPermissionSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#PutInlinePolicyToPermissionSetResponse', name: 'PutInlinePolicyToPermissionSetResponse')
    PutPermissionsBoundaryToPermissionSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#PutPermissionsBoundaryToPermissionSetRequest', name: 'PutPermissionsBoundaryToPermissionSetRequest')
    PutPermissionsBoundaryToPermissionSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#PutPermissionsBoundaryToPermissionSetResponse', name: 'PutPermissionsBoundaryToPermissionSetResponse')
    Reason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#Reason', name: 'Reason', traits: {"smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{Z}\\p{S}\\p{N}\\p{P}]*$"})
    RedirectUris = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssoadmin#RedirectUris', name: 'RedirectUris', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    RefreshTokenGrant = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#RefreshTokenGrant', name: 'RefreshTokenGrant')
    RelayState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#RelayState', name: 'RelayState', traits: {"smithy.api#length" => {"min" => 1, "max" => 240}, "smithy.api#pattern" => "^[a-zA-Z0-9&$@#\\\\\\/%?=~\\-_'\"|!:,.;*+\\[\\]\\ \\(\\)\\{\\}]+$"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceNotFoundMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#ResourceNotFoundMessage', name: 'ResourceNotFoundMessage')
    ResourceServerConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ResourceServerConfig', name: 'ResourceServerConfig')
    ResourceServerScope = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#ResourceServerScope', name: 'ResourceServerScope', traits: {"smithy.api#length" => {"min" => 1, "max" => 80}, "smithy.api#pattern" => "^[^:=\\-\\.\\s][0-9a-zA-Z_:\\-\\.]+$"})
    ResourceServerScopeDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ResourceServerScopeDetails', name: 'ResourceServerScopeDetails')
    ResourceServerScopes = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.ssoadmin#ResourceServerScopes', name: 'ResourceServerScopes')
    Scope = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#Scope', name: 'Scope', traits: {"smithy.api#pattern" => "^([A-Za-z0-9_]{1,50})(:[A-Za-z0-9_]{1,50}){0,1}(:[A-Za-z0-9_]{1,50}){0,1}$"})
    ScopeDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ScopeDetails', name: 'ScopeDetails')
    ScopeTarget = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#ScopeTarget', name: 'ScopeTarget', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):sso::(\\d{12}:application/(sso)?ins-[a-zA-Z0-9-.]{16}/apl-[a-zA-Z0-9]{16}|:instance/(sso)?ins-[a-zA-Z0-9-.]{16})$"})
    ScopeTargets = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssoadmin#ScopeTargets', name: 'ScopeTargets', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Scopes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssoadmin#Scopes', name: 'Scopes', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceQuotaExceededMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#ServiceQuotaExceededMessage', name: 'ServiceQuotaExceededMessage')
    SignInOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#SignInOptions', name: 'SignInOptions')
    SignInOrigin = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssoadmin#SignInOrigin', name: 'SignInOrigin')
    StatusValues = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssoadmin#StatusValues', name: 'StatusValues')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssoadmin#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 75}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssoadmin#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 75}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TaggableResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#TaggableResourceArn', name: 'TaggableResourceArn', traits: {"smithy.api#length" => {"min" => 10, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):sso::((:instance/(sso)?ins-[a-zA-Z0-9-.]{16})|(:permissionSet/(sso)?ins-[a-zA-Z0-9-.]{16}/ps-[a-zA-Z0-9-./]{16})|(\\d{12}:application/(sso)?ins-[a-zA-Z0-9-.]{16}/apl-[a-zA-Z0-9]{16})|(\\d{12}:trustedTokenIssuer/(sso)?ins-[a-zA-Z0-9-.]{16}/tti-[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}))$"})
    TargetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#TargetId', name: 'TargetId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    TargetType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssoadmin#TargetType', name: 'TargetType')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ThrottlingExceptionMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#ThrottlingExceptionMessage', name: 'ThrottlingExceptionMessage')
    Token = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#Token', name: 'Token', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[-a-zA-Z0-9+=/_]*$"})
    TokenExchangeGrant = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#TokenExchangeGrant', name: 'TokenExchangeGrant')
    TokenIssuerAudience = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#TokenIssuerAudience', name: 'TokenIssuerAudience', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    TokenIssuerAudiences = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssoadmin#TokenIssuerAudiences', name: 'TokenIssuerAudiences', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    TrustedTokenIssuerArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#TrustedTokenIssuerArn', name: 'TrustedTokenIssuerArn', traits: {"smithy.api#length" => {"min" => 10, "max" => 1224}, "smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):sso::\\d{12}:trustedTokenIssuer/(sso)?ins-[a-zA-Z0-9-.]{16}/tti-[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    TrustedTokenIssuerConfiguration = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.ssoadmin#TrustedTokenIssuerConfiguration', name: 'TrustedTokenIssuerConfiguration')
    TrustedTokenIssuerList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ssoadmin#TrustedTokenIssuerList', name: 'TrustedTokenIssuerList')
    TrustedTokenIssuerMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#TrustedTokenIssuerMetadata', name: 'TrustedTokenIssuerMetadata')
    TrustedTokenIssuerName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#TrustedTokenIssuerName', name: 'TrustedTokenIssuerName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\w+=,.@-]+$"})
    TrustedTokenIssuerType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssoadmin#TrustedTokenIssuerType', name: 'TrustedTokenIssuerType')
    TrustedTokenIssuerUpdateConfiguration = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.ssoadmin#TrustedTokenIssuerUpdateConfiguration', name: 'TrustedTokenIssuerUpdateConfiguration')
    TrustedTokenIssuerUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#TrustedTokenIssuerUrl', name: 'TrustedTokenIssuerUrl', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^https?:\\/\\/[-a-zA-Z0-9+&@\\/%=~_|!:,.;]*[-a-zA-Z0-9+&@\\/%=~_|]$"})
    URI = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#URI', name: 'URI')
    UUId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#UUId', name: 'UUId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^\\b[0-9a-f]{8}\\b-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-\\b[0-9a-f]{12}\\b$"})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateApplicationPortalOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#UpdateApplicationPortalOptions', name: 'UpdateApplicationPortalOptions')
    UpdateApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#UpdateApplicationRequest', name: 'UpdateApplicationRequest')
    UpdateApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#UpdateApplicationResponse', name: 'UpdateApplicationResponse')
    UpdateInstanceAccessControlAttributeConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#UpdateInstanceAccessControlAttributeConfigurationRequest', name: 'UpdateInstanceAccessControlAttributeConfigurationRequest')
    UpdateInstanceAccessControlAttributeConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#UpdateInstanceAccessControlAttributeConfigurationResponse', name: 'UpdateInstanceAccessControlAttributeConfigurationResponse')
    UpdateInstanceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#UpdateInstanceRequest', name: 'UpdateInstanceRequest')
    UpdateInstanceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#UpdateInstanceResponse', name: 'UpdateInstanceResponse')
    UpdatePermissionSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#UpdatePermissionSetRequest', name: 'UpdatePermissionSetRequest')
    UpdatePermissionSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#UpdatePermissionSetResponse', name: 'UpdatePermissionSetResponse')
    UpdateTrustedTokenIssuerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#UpdateTrustedTokenIssuerRequest', name: 'UpdateTrustedTokenIssuerRequest')
    UpdateTrustedTokenIssuerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#UpdateTrustedTokenIssuerResponse', name: 'UpdateTrustedTokenIssuerResponse')
    UserBackgroundSessionApplicationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ssoadmin#UserBackgroundSessionApplicationStatus', name: 'UserBackgroundSessionApplicationStatus')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ssoadmin#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ssoadmin#ValidationExceptionMessage', name: 'ValidationExceptionMessage')

    AccessControlAttribute.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessControlAttributeKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The name of the attribute associated with your identities in your identity source. This is used to map a specified attribute in your identity source with an attribute in IAM Identity Center.</p>", "smithy.api#required" => {}}))
    AccessControlAttribute.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessControlAttributeValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value used for mapping a specified attribute to an identity source.</p>", "smithy.api#required" => {}}))
    AccessControlAttribute.type = Types::AccessControlAttribute
    AccessControlAttributeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccessControlAttribute)
    AccessControlAttributeValue.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessControlAttributeValueSourceList, location_name: 'Source', traits: {"smithy.api#documentation" => "<p>The identity source to use when mapping a specified attribute to IAM Identity Center.</p>", "smithy.api#required" => {}}))
    AccessControlAttributeValue.type = Types::AccessControlAttributeValue
    AccessControlAttributeValueSourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccessControlAttributeValueSource)
    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedExceptionMessage, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountAssignment.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Web Services account.</p>"}))
    AccountAssignment.add_member(:permission_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetArn, location_name: 'PermissionSetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the permission set. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>"}))
    AccountAssignment.add_member(:principal_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalType, location_name: 'PrincipalType', traits: {"smithy.api#documentation" => "<p>The entity type for which the assignment will be created.</p>"}))
    AccountAssignment.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalId, location_name: 'PrincipalId', traits: {"smithy.api#documentation" => "<p>An identifier for an object in IAM Identity Center, such as a user or group. PrincipalIds are GUIDs (For example, f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about PrincipalIds in IAM Identity Center, see the <a href=\"/singlesignon/latest/IdentityStoreAPIReference/welcome.html\">IAM Identity Center Identity Store API Reference</a>.</p>"}))
    AccountAssignment.type = Types::AccountAssignment
    AccountAssignmentForPrincipal.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The account ID number of the Amazon Web Services account.</p>"}))
    AccountAssignmentForPrincipal.add_member(:permission_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetArn, location_name: 'PermissionSetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center permission set assigned to this principal for this Amazon Web Services account.</p>"}))
    AccountAssignmentForPrincipal.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalId, location_name: 'PrincipalId', traits: {"smithy.api#documentation" => "<p>The ID of the principal.</p>"}))
    AccountAssignmentForPrincipal.add_member(:principal_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalType, location_name: 'PrincipalType', traits: {"smithy.api#documentation" => "<p>The type of the principal.</p>"}))
    AccountAssignmentForPrincipal.type = Types::AccountAssignmentForPrincipal
    AccountAssignmentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAssignment)
    AccountAssignmentListForPrincipal.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAssignmentForPrincipal)
    AccountAssignmentOperationStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusValues, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the permission set provisioning process.</p>"}))
    AccountAssignmentOperationStatus.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUId, location_name: 'RequestId', traits: {"smithy.api#documentation" => "<p>The identifier for tracking the request operation that is generated by the universally unique identifier (UUID) workflow.</p>"}))
    AccountAssignmentOperationStatus.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Reason, location_name: 'FailureReason', traits: {"smithy.api#documentation" => "<p>The message that contains an error or exception in case of an operation failure.</p>"}))
    AccountAssignmentOperationStatus.add_member(:target_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetId, location_name: 'TargetId', traits: {"smithy.api#documentation" => "<p>TargetID is an Amazon Web Services account identifier, (For example, 123456789012).</p>"}))
    AccountAssignmentOperationStatus.add_member(:target_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetType, location_name: 'TargetType', traits: {"smithy.api#documentation" => "<p>The entity type for which the assignment will be created.</p>"}))
    AccountAssignmentOperationStatus.add_member(:permission_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetArn, location_name: 'PermissionSetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the permission set. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>"}))
    AccountAssignmentOperationStatus.add_member(:principal_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalType, location_name: 'PrincipalType', traits: {"smithy.api#documentation" => "<p>The entity type for which the assignment will be created.</p>"}))
    AccountAssignmentOperationStatus.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalId, location_name: 'PrincipalId', traits: {"smithy.api#documentation" => "<p>An identifier for an object in IAM Identity Center, such as a user or group. PrincipalIds are GUIDs (For example, f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about PrincipalIds in IAM Identity Center, see the <a href=\"/singlesignon/latest/IdentityStoreAPIReference/welcome.html\">IAM Identity Center Identity Store API Reference</a>.</p>"}))
    AccountAssignmentOperationStatus.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreatedDate', traits: {"smithy.api#documentation" => "<p>The date that the permission set was created.</p>"}))
    AccountAssignmentOperationStatus.type = Types::AccountAssignmentOperationStatus
    AccountAssignmentOperationStatusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAssignmentOperationStatusMetadata)
    AccountAssignmentOperationStatusMetadata.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusValues, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the permission set provisioning process.</p>"}))
    AccountAssignmentOperationStatusMetadata.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUId, location_name: 'RequestId', traits: {"smithy.api#documentation" => "<p>The identifier for tracking the request operation that is generated by the universally unique identifier (UUID) workflow.</p>"}))
    AccountAssignmentOperationStatusMetadata.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreatedDate', traits: {"smithy.api#documentation" => "<p>The date that the permission set was created.</p>"}))
    AccountAssignmentOperationStatusMetadata.type = Types::AccountAssignmentOperationStatusMetadata
    AccountList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId)
    Application.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'ApplicationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the application.</p>"}))
    Application.add_member(:application_provider_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationProviderArn, location_name: 'ApplicationProviderArn', traits: {"smithy.api#documentation" => "<p>The ARN of the application provider for this application.</p>"}))
    Application.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationNameType, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the application.</p>"}))
    Application.add_member(:application_account, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'ApplicationAccount', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID number of the application.</p>"}))
    Application.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the instance of IAM Identity Center that is configured with this application.</p>"}))
    Application.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the application in this instance of IAM Identity Center.</p>"}))
    Application.add_member(:portal_options, Smithy::Schema::Shapes::ShapeRef.new(shape: PortalOptions, location_name: 'PortalOptions', traits: {"smithy.api#documentation" => "<p>A structure that describes the options for the access portal associated with this application.</p>"}))
    Application.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the application.</p>"}))
    Application.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreatedDate', traits: {"smithy.api#documentation" => "<p>The date and time when the application was originally created.</p>"}))
    Application.type = Types::Application
    ApplicationAssignment.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'ApplicationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the application that has principals assigned.</p>", "smithy.api#required" => {}}))
    ApplicationAssignment.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalId, location_name: 'PrincipalId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the principal assigned to the application.</p>", "smithy.api#required" => {}}))
    ApplicationAssignment.add_member(:principal_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalType, location_name: 'PrincipalType', traits: {"smithy.api#documentation" => "<p>The type of the principal assigned to the application.</p>", "smithy.api#required" => {}}))
    ApplicationAssignment.type = Types::ApplicationAssignment
    ApplicationAssignmentForPrincipal.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'ApplicationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the application to which the specified principal is assigned.</p>"}))
    ApplicationAssignmentForPrincipal.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalId, location_name: 'PrincipalId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the principal assigned to the application.</p>"}))
    ApplicationAssignmentForPrincipal.add_member(:principal_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalType, location_name: 'PrincipalType', traits: {"smithy.api#documentation" => "<p>The type of the principal assigned to the application.</p>"}))
    ApplicationAssignmentForPrincipal.type = Types::ApplicationAssignmentForPrincipal
    ApplicationAssignmentListForPrincipal.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationAssignmentForPrincipal)
    ApplicationAssignmentsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationAssignment)
    ApplicationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Application)
    ApplicationProvider.add_member(:application_provider_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationProviderArn, location_name: 'ApplicationProviderArn', traits: {"smithy.api#documentation" => "<p>The ARN of the application provider.</p>", "smithy.api#required" => {}}))
    ApplicationProvider.add_member(:federation_protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: FederationProtocol, location_name: 'FederationProtocol', traits: {"smithy.api#documentation" => "<p>The protocol that the application provider uses to perform federation.</p>"}))
    ApplicationProvider.add_member(:display_data, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayData, location_name: 'DisplayData', traits: {"smithy.api#documentation" => "<p>A structure that describes how IAM Identity Center represents the application provider in the portal.</p>"}))
    ApplicationProvider.add_member(:resource_server_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceServerConfig, location_name: 'ResourceServerConfig', traits: {"smithy.api#documentation" => "<p>A structure that describes the application provider's resource server.</p>"}))
    ApplicationProvider.type = Types::ApplicationProvider
    ApplicationProviderList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationProvider)
    ApplicationStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    ApplicationStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    ApplicationVisibility.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    ApplicationVisibility.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    AttachCustomerManagedPolicyReferenceToPermissionSetRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance under which the operation will be executed. </p>", "smithy.api#required" => {}}))
    AttachCustomerManagedPolicyReferenceToPermissionSetRequest.add_member(:permission_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetArn, location_name: 'PermissionSetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>PermissionSet</code>.</p>", "smithy.api#required" => {}}))
    AttachCustomerManagedPolicyReferenceToPermissionSetRequest.add_member(:customer_managed_policy_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerManagedPolicyReference, location_name: 'CustomerManagedPolicyReference', traits: {"smithy.api#documentation" => "<p>Specifies the name and path of a customer managed policy. You must have an IAM policy that matches the name and path in each Amazon Web Services account where you want to deploy your permission set.</p>", "smithy.api#required" => {}}))
    AttachCustomerManagedPolicyReferenceToPermissionSetRequest.type = Types::AttachCustomerManagedPolicyReferenceToPermissionSetRequest
    AttachCustomerManagedPolicyReferenceToPermissionSetResponse.type = Types::AttachCustomerManagedPolicyReferenceToPermissionSetResponse
    AttachManagedPolicyToPermissionSetRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>", "smithy.api#required" => {}}))
    AttachManagedPolicyToPermissionSetRequest.add_member(:permission_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetArn, location_name: 'PermissionSetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <a>PermissionSet</a> that the managed policy should be attached to.</p>", "smithy.api#required" => {}}))
    AttachManagedPolicyToPermissionSetRequest.add_member(:managed_policy_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedPolicyArn, location_name: 'ManagedPolicyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services managed policy ARN to be attached to a permission set.</p>", "smithy.api#required" => {}}))
    AttachManagedPolicyToPermissionSetRequest.type = Types::AttachManagedPolicyToPermissionSetRequest
    AttachManagedPolicyToPermissionSetResponse.type = Types::AttachManagedPolicyToPermissionSetResponse
    AttachedManagedPolicy.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the Amazon Web Services managed policy.</p>"}))
    AttachedManagedPolicy.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedPolicyArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN of the Amazon Web Services managed policy. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>"}))
    AttachedManagedPolicy.type = Types::AttachedManagedPolicy
    AttachedManagedPolicyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AttachedManagedPolicy)
    AuthenticationMethod.add_member(:iam, Types::AuthenticationMethod::Iam, Smithy::Schema::Shapes::ShapeRef.new(shape: IamAuthenticationMethod, location_name: 'Iam', traits: {"smithy.api#documentation" => "<p>A structure that describes details for IAM authentication.</p>"}))
    AuthenticationMethod.add_member(:unknown, Types::AuthenticationMethod::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    AuthenticationMethod.type = Types::AuthenticationMethod
    AuthenticationMethodItem.add_member(:authentication_method_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationMethodType, location_name: 'AuthenticationMethodType', traits: {"smithy.api#documentation" => "<p>The type of authentication that is used by this method.</p>"}))
    AuthenticationMethodItem.add_member(:authentication_method, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationMethod, location_name: 'AuthenticationMethod', traits: {"smithy.api#documentation" => "<p>A structure that describes an authentication method. The contents of this structure is determined by the <code>AuthenticationMethodType</code>.</p>"}))
    AuthenticationMethodItem.type = Types::AuthenticationMethodItem
    AuthenticationMethodType.add_member(:iam, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM', traits: {"smithy.api#enumValue" => "IAM"}))
    AuthenticationMethods.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationMethodItem)
    AuthorizationCodeGrant.add_member(:redirect_uris, Smithy::Schema::Shapes::ShapeRef.new(shape: RedirectUris, location_name: 'RedirectUris', traits: {"smithy.api#documentation" => "<p>A list of URIs that are valid locations to redirect a user's browser after the user is authorized.</p> <note> <p>RedirectUris is required when the grant type is <code>authorization_code</code>.</p> </note>"}))
    AuthorizationCodeGrant.type = Types::AuthorizationCodeGrant
    AuthorizedTokenIssuer.add_member(:trusted_token_issuer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedTokenIssuerArn, location_name: 'TrustedTokenIssuerArn', traits: {"smithy.api#documentation" => "<p>The ARN of the trusted token issuer.</p>"}))
    AuthorizedTokenIssuer.add_member(:authorized_audiences, Smithy::Schema::Shapes::ShapeRef.new(shape: TokenIssuerAudiences, location_name: 'AuthorizedAudiences', traits: {"smithy.api#documentation" => "<p>An array list of authorized audiences, or applications, that can consume the tokens generated by the associated trusted token issuer.</p>"}))
    AuthorizedTokenIssuer.type = Types::AuthorizedTokenIssuer
    AuthorizedTokenIssuers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizedTokenIssuer)
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictExceptionMessage, location_name: 'Message'))
    ConflictException.type = Types::ConflictException
    CreateAccountAssignmentRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>", "smithy.api#required" => {}}))
    CreateAccountAssignmentRequest.add_member(:target_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetId, location_name: 'TargetId', traits: {"smithy.api#documentation" => "<p>TargetID is an Amazon Web Services account identifier, (For example, 123456789012).</p>", "smithy.api#required" => {}}))
    CreateAccountAssignmentRequest.add_member(:target_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetType, location_name: 'TargetType', traits: {"smithy.api#documentation" => "<p>The entity type for which the assignment will be created.</p>", "smithy.api#required" => {}}))
    CreateAccountAssignmentRequest.add_member(:permission_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetArn, location_name: 'PermissionSetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the permission set that the admin wants to grant the principal access to.</p>", "smithy.api#required" => {}}))
    CreateAccountAssignmentRequest.add_member(:principal_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalType, location_name: 'PrincipalType', traits: {"smithy.api#documentation" => "<p>The entity type for which the assignment will be created.</p>", "smithy.api#required" => {}}))
    CreateAccountAssignmentRequest.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalId, location_name: 'PrincipalId', traits: {"smithy.api#documentation" => "<p>An identifier for an object in IAM Identity Center, such as a user or group. PrincipalIds are GUIDs (For example, f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about PrincipalIds in IAM Identity Center, see the <a href=\"/singlesignon/latest/IdentityStoreAPIReference/welcome.html\">IAM Identity Center Identity Store API Reference</a>.</p>", "smithy.api#required" => {}}))
    CreateAccountAssignmentRequest.type = Types::CreateAccountAssignmentRequest
    CreateAccountAssignmentResponse.add_member(:account_assignment_creation_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAssignmentOperationStatus, location_name: 'AccountAssignmentCreationStatus', traits: {"smithy.api#documentation" => "<p>The status object for the account assignment creation operation.</p>"}))
    CreateAccountAssignmentResponse.type = Types::CreateAccountAssignmentResponse
    CreateApplicationAssignmentRequest.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'ApplicationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the application for which the assignment is created.</p>", "smithy.api#required" => {}}))
    CreateApplicationAssignmentRequest.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalId, location_name: 'PrincipalId', traits: {"smithy.api#documentation" => "<p>An identifier for an object in IAM Identity Center, such as a user or group. PrincipalIds are GUIDs (For example, f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about PrincipalIds in IAM Identity Center, see the <a href=\"https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/welcome.html\">IAM Identity Center Identity Store API Reference</a>.</p>", "smithy.api#required" => {}}))
    CreateApplicationAssignmentRequest.add_member(:principal_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalType, location_name: 'PrincipalType', traits: {"smithy.api#documentation" => "<p>The entity type for which the assignment will be created.</p>", "smithy.api#required" => {}}))
    CreateApplicationAssignmentRequest.type = Types::CreateApplicationAssignmentRequest
    CreateApplicationAssignmentResponse.type = Types::CreateApplicationAssignmentResponse
    CreateApplicationRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the instance of IAM Identity Center under which the operation will run. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>", "smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:application_provider_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationProviderArn, location_name: 'ApplicationProviderArn', traits: {"smithy.api#documentation" => "<p>The ARN of the application provider under which the operation will run.</p>", "smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationNameType, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the .</p>", "smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the .</p>"}))
    CreateApplicationRequest.add_member(:portal_options, Smithy::Schema::Shapes::ShapeRef.new(shape: PortalOptions, location_name: 'PortalOptions', traits: {"smithy.api#documentation" => "<p>A structure that describes the options for the portal associated with an application.</p>"}))
    CreateApplicationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Specifies tags to be attached to the application.</p>"}))
    CreateApplicationRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Specifies whether the application is enabled or disabled.</p>"}))
    CreateApplicationRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Specifies a unique, case-sensitive ID that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href=\"https://wikipedia.org/wiki/Universally_unique_identifier\">UUID type of value</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>ClientToken</code>, but with different parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateApplicationRequest.type = Types::CreateApplicationRequest
    CreateApplicationResponse.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'ApplicationArn', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the application.</p>"}))
    CreateApplicationResponse.type = Types::CreateApplicationResponse
    CreateInstanceAccessControlAttributeConfigurationRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance under which the operation will be executed.</p>", "smithy.api#required" => {}}))
    CreateInstanceAccessControlAttributeConfigurationRequest.add_member(:instance_access_control_attribute_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceAccessControlAttributeConfiguration, location_name: 'InstanceAccessControlAttributeConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies the IAM Identity Center identity store attributes to add to your ABAC configuration. When using an external identity provider as an identity source, you can pass attributes through the SAML assertion. Doing so provides an alternative to configuring attributes from the IAM Identity Center identity store. If a SAML assertion passes any of these attributes, IAM Identity Center will replace the attribute value with the value from the IAM Identity Center identity store.</p>", "smithy.api#required" => {}}))
    CreateInstanceAccessControlAttributeConfigurationRequest.type = Types::CreateInstanceAccessControlAttributeConfigurationRequest
    CreateInstanceAccessControlAttributeConfigurationResponse.type = Types::CreateInstanceAccessControlAttributeConfigurationResponse
    CreateInstanceRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameType, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the instance of IAM Identity Center.</p>"}))
    CreateInstanceRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Specifies a unique, case-sensitive ID that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href=\"https://wikipedia.org/wiki/Universally_unique_identifier\">UUID type of value</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>ClientToken</code>, but with different parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateInstanceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Specifies tags to be attached to the instance of IAM Identity Center.</p>"}))
    CreateInstanceRequest.type = Types::CreateInstanceRequest
    CreateInstanceResponse.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the instance of IAM Identity Center under which the operation will run. </p> <p>For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>"}))
    CreateInstanceResponse.type = Types::CreateInstanceResponse
    CreatePermissionSetRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the <a>PermissionSet</a>.</p>", "smithy.api#required" => {}}))
    CreatePermissionSetRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the <a>PermissionSet</a>.</p>"}))
    CreatePermissionSetRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>", "smithy.api#required" => {}}))
    CreatePermissionSetRequest.add_member(:session_duration, Smithy::Schema::Shapes::ShapeRef.new(shape: Duration, location_name: 'SessionDuration', traits: {"smithy.api#documentation" => "<p>The length of time that the application user sessions are valid in the ISO-8601 standard.</p>"}))
    CreatePermissionSetRequest.add_member(:relay_state, Smithy::Schema::Shapes::ShapeRef.new(shape: RelayState, location_name: 'RelayState', traits: {"smithy.api#documentation" => "<p>Used to redirect users within the application during the federation authentication process.</p>"}))
    CreatePermissionSetRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to attach to the new <a>PermissionSet</a>.</p>"}))
    CreatePermissionSetRequest.type = Types::CreatePermissionSetRequest
    CreatePermissionSetResponse.add_member(:permission_set, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSet, location_name: 'PermissionSet', traits: {"smithy.api#documentation" => "<p>Defines the level of access on an Amazon Web Services account.</p>"}))
    CreatePermissionSetResponse.type = Types::CreatePermissionSetResponse
    CreateTrustedTokenIssuerRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the instance of IAM Identity Center to contain the new trusted token issuer configuration.</p>", "smithy.api#required" => {}}))
    CreateTrustedTokenIssuerRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedTokenIssuerName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Specifies the name of the new trusted token issuer configuration.</p>", "smithy.api#required" => {}}))
    CreateTrustedTokenIssuerRequest.add_member(:trusted_token_issuer_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedTokenIssuerType, location_name: 'TrustedTokenIssuerType', traits: {"smithy.api#documentation" => "<p>Specifies the type of the new trusted token issuer.</p>", "smithy.api#required" => {}}))
    CreateTrustedTokenIssuerRequest.add_member(:trusted_token_issuer_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedTokenIssuerConfiguration, location_name: 'TrustedTokenIssuerConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies settings that apply to the new trusted token issuer configuration. The settings that are available depend on what <code>TrustedTokenIssuerType</code> you specify.</p>", "smithy.api#required" => {}}))
    CreateTrustedTokenIssuerRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Specifies a unique, case-sensitive ID that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href=\"https://wikipedia.org/wiki/Universally_unique_identifier\">UUID type of value.</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>ClientToken</code>, but with different parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateTrustedTokenIssuerRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Specifies tags to be attached to the new trusted token issuer configuration.</p>"}))
    CreateTrustedTokenIssuerRequest.type = Types::CreateTrustedTokenIssuerRequest
    CreateTrustedTokenIssuerResponse.add_member(:trusted_token_issuer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedTokenIssuerArn, location_name: 'TrustedTokenIssuerArn', traits: {"smithy.api#documentation" => "<p>The ARN of the new trusted token issuer configuration.</p>"}))
    CreateTrustedTokenIssuerResponse.type = Types::CreateTrustedTokenIssuerResponse
    CustomerManagedPolicyReference.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedPolicyName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the IAM policy that you have configured in each account where you want to deploy your permission set.</p>", "smithy.api#required" => {}}))
    CustomerManagedPolicyReference.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedPolicyPath, location_name: 'Path', traits: {"smithy.api#documentation" => "<p>The path to the IAM policy that you have configured in each account where you want to deploy your permission set. The default is <code>/</code>. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-friendly-names\">Friendly names and paths</a> in the <i>IAM User Guide</i>.</p>"}))
    CustomerManagedPolicyReference.type = Types::CustomerManagedPolicyReference
    CustomerManagedPolicyReferenceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerManagedPolicyReference)
    DeleteAccountAssignmentRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>", "smithy.api#required" => {}}))
    DeleteAccountAssignmentRequest.add_member(:target_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetId, location_name: 'TargetId', traits: {"smithy.api#documentation" => "<p>TargetID is an Amazon Web Services account identifier, (For example, 123456789012).</p>", "smithy.api#required" => {}}))
    DeleteAccountAssignmentRequest.add_member(:target_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetType, location_name: 'TargetType', traits: {"smithy.api#documentation" => "<p>The entity type for which the assignment will be deleted.</p>", "smithy.api#required" => {}}))
    DeleteAccountAssignmentRequest.add_member(:permission_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetArn, location_name: 'PermissionSetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the permission set that will be used to remove access.</p>", "smithy.api#required" => {}}))
    DeleteAccountAssignmentRequest.add_member(:principal_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalType, location_name: 'PrincipalType', traits: {"smithy.api#documentation" => "<p>The entity type for which the assignment will be deleted.</p>", "smithy.api#required" => {}}))
    DeleteAccountAssignmentRequest.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalId, location_name: 'PrincipalId', traits: {"smithy.api#documentation" => "<p>An identifier for an object in IAM Identity Center, such as a user or group. PrincipalIds are GUIDs (For example, f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about PrincipalIds in IAM Identity Center, see the <a href=\"/singlesignon/latest/IdentityStoreAPIReference/welcome.html\">IAM Identity Center Identity Store API Reference</a>.</p>", "smithy.api#required" => {}}))
    DeleteAccountAssignmentRequest.type = Types::DeleteAccountAssignmentRequest
    DeleteAccountAssignmentResponse.add_member(:account_assignment_deletion_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAssignmentOperationStatus, location_name: 'AccountAssignmentDeletionStatus', traits: {"smithy.api#documentation" => "<p>The status object for the account assignment deletion operation.</p>"}))
    DeleteAccountAssignmentResponse.type = Types::DeleteAccountAssignmentResponse
    DeleteApplicationAccessScopeRequest.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'ApplicationArn', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the application with the access scope to delete.</p>", "smithy.api#required" => {}}))
    DeleteApplicationAccessScopeRequest.add_member(:scope, Smithy::Schema::Shapes::ShapeRef.new(shape: Scope, location_name: 'Scope', traits: {"smithy.api#documentation" => "<p>Specifies the name of the access scope to remove from the application.</p>", "smithy.api#required" => {}}))
    DeleteApplicationAccessScopeRequest.type = Types::DeleteApplicationAccessScopeRequest
    DeleteApplicationAssignmentRequest.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'ApplicationArn', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the application.</p>", "smithy.api#required" => {}}))
    DeleteApplicationAssignmentRequest.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalId, location_name: 'PrincipalId', traits: {"smithy.api#documentation" => "<p>An identifier for an object in IAM Identity Center, such as a user or group. PrincipalIds are GUIDs (For example, f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about PrincipalIds in IAM Identity Center, see the <a href=\"https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/welcome.html\">IAM Identity Center Identity Store API Reference</a>.</p>", "smithy.api#required" => {}}))
    DeleteApplicationAssignmentRequest.add_member(:principal_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalType, location_name: 'PrincipalType', traits: {"smithy.api#documentation" => "<p>The entity type for which the assignment will be deleted.</p>", "smithy.api#required" => {}}))
    DeleteApplicationAssignmentRequest.type = Types::DeleteApplicationAssignmentRequest
    DeleteApplicationAssignmentResponse.type = Types::DeleteApplicationAssignmentResponse
    DeleteApplicationAuthenticationMethodRequest.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'ApplicationArn', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the application with the authentication method to delete.</p>", "smithy.api#required" => {}}))
    DeleteApplicationAuthenticationMethodRequest.add_member(:authentication_method_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationMethodType, location_name: 'AuthenticationMethodType', traits: {"smithy.api#documentation" => "<p>Specifies the authentication method type to delete from the application.</p>", "smithy.api#required" => {}}))
    DeleteApplicationAuthenticationMethodRequest.type = Types::DeleteApplicationAuthenticationMethodRequest
    DeleteApplicationGrantRequest.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'ApplicationArn', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the application with the grant to delete.</p>", "smithy.api#required" => {}}))
    DeleteApplicationGrantRequest.add_member(:grant_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GrantType, location_name: 'GrantType', traits: {"smithy.api#documentation" => "<p>Specifies the type of grant to delete from the application.</p>", "smithy.api#required" => {}}))
    DeleteApplicationGrantRequest.type = Types::DeleteApplicationGrantRequest
    DeleteApplicationRequest.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'ApplicationArn', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the application. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>. </p>", "smithy.api#required" => {}}))
    DeleteApplicationRequest.type = Types::DeleteApplicationRequest
    DeleteApplicationResponse.type = Types::DeleteApplicationResponse
    DeleteInlinePolicyFromPermissionSetRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>", "smithy.api#required" => {}}))
    DeleteInlinePolicyFromPermissionSetRequest.add_member(:permission_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetArn, location_name: 'PermissionSetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the permission set that will be used to remove access.</p>", "smithy.api#required" => {}}))
    DeleteInlinePolicyFromPermissionSetRequest.type = Types::DeleteInlinePolicyFromPermissionSetRequest
    DeleteInlinePolicyFromPermissionSetResponse.type = Types::DeleteInlinePolicyFromPermissionSetResponse
    DeleteInstanceAccessControlAttributeConfigurationRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance under which the operation will be executed.</p>", "smithy.api#required" => {}}))
    DeleteInstanceAccessControlAttributeConfigurationRequest.type = Types::DeleteInstanceAccessControlAttributeConfigurationRequest
    DeleteInstanceAccessControlAttributeConfigurationResponse.type = Types::DeleteInstanceAccessControlAttributeConfigurationResponse
    DeleteInstanceRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the instance of IAM Identity Center under which the operation will run.</p>", "smithy.api#required" => {}}))
    DeleteInstanceRequest.type = Types::DeleteInstanceRequest
    DeleteInstanceResponse.type = Types::DeleteInstanceResponse
    DeletePermissionSetRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>", "smithy.api#required" => {}}))
    DeletePermissionSetRequest.add_member(:permission_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetArn, location_name: 'PermissionSetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the permission set that should be deleted.</p>", "smithy.api#required" => {}}))
    DeletePermissionSetRequest.type = Types::DeletePermissionSetRequest
    DeletePermissionSetResponse.type = Types::DeletePermissionSetResponse
    DeletePermissionsBoundaryFromPermissionSetRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance under which the operation will be executed. </p>", "smithy.api#required" => {}}))
    DeletePermissionsBoundaryFromPermissionSetRequest.add_member(:permission_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetArn, location_name: 'PermissionSetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>PermissionSet</code>.</p>", "smithy.api#required" => {}}))
    DeletePermissionsBoundaryFromPermissionSetRequest.type = Types::DeletePermissionsBoundaryFromPermissionSetRequest
    DeletePermissionsBoundaryFromPermissionSetResponse.type = Types::DeletePermissionsBoundaryFromPermissionSetResponse
    DeleteTrustedTokenIssuerRequest.add_member(:trusted_token_issuer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedTokenIssuerArn, location_name: 'TrustedTokenIssuerArn', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the trusted token issuer configuration to delete.</p>", "smithy.api#required" => {}}))
    DeleteTrustedTokenIssuerRequest.type = Types::DeleteTrustedTokenIssuerRequest
    DeleteTrustedTokenIssuerResponse.type = Types::DeleteTrustedTokenIssuerResponse
    DescribeAccountAssignmentCreationStatusRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>", "smithy.api#required" => {}}))
    DescribeAccountAssignmentCreationStatusRequest.add_member(:account_assignment_creation_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUId, location_name: 'AccountAssignmentCreationRequestId', traits: {"smithy.api#documentation" => "<p>The identifier that is used to track the request operation progress.</p>", "smithy.api#required" => {}}))
    DescribeAccountAssignmentCreationStatusRequest.type = Types::DescribeAccountAssignmentCreationStatusRequest
    DescribeAccountAssignmentCreationStatusResponse.add_member(:account_assignment_creation_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAssignmentOperationStatus, location_name: 'AccountAssignmentCreationStatus', traits: {"smithy.api#documentation" => "<p>The status object for the account assignment creation operation.</p>"}))
    DescribeAccountAssignmentCreationStatusResponse.type = Types::DescribeAccountAssignmentCreationStatusResponse
    DescribeAccountAssignmentDeletionStatusRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>", "smithy.api#required" => {}}))
    DescribeAccountAssignmentDeletionStatusRequest.add_member(:account_assignment_deletion_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUId, location_name: 'AccountAssignmentDeletionRequestId', traits: {"smithy.api#documentation" => "<p>The identifier that is used to track the request operation progress.</p>", "smithy.api#required" => {}}))
    DescribeAccountAssignmentDeletionStatusRequest.type = Types::DescribeAccountAssignmentDeletionStatusRequest
    DescribeAccountAssignmentDeletionStatusResponse.add_member(:account_assignment_deletion_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAssignmentOperationStatus, location_name: 'AccountAssignmentDeletionStatus', traits: {"smithy.api#documentation" => "<p>The status object for the account assignment deletion operation.</p>"}))
    DescribeAccountAssignmentDeletionStatusResponse.type = Types::DescribeAccountAssignmentDeletionStatusResponse
    DescribeApplicationAssignmentRequest.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'ApplicationArn', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the application. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>", "smithy.api#required" => {}}))
    DescribeApplicationAssignmentRequest.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalId, location_name: 'PrincipalId', traits: {"smithy.api#documentation" => "<p>An identifier for an object in IAM Identity Center, such as a user or group. PrincipalIds are GUIDs (For example, f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about PrincipalIds in IAM Identity Center, see the <a href=\"https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/welcome.html\">IAM Identity Center Identity Store API Reference</a>.</p>", "smithy.api#required" => {}}))
    DescribeApplicationAssignmentRequest.add_member(:principal_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalType, location_name: 'PrincipalType', traits: {"smithy.api#documentation" => "<p>The entity type for which the assignment will be created.</p>", "smithy.api#required" => {}}))
    DescribeApplicationAssignmentRequest.type = Types::DescribeApplicationAssignmentRequest
    DescribeApplicationAssignmentResponse.add_member(:principal_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalType, location_name: 'PrincipalType', traits: {"smithy.api#documentation" => "<p>The entity type for which the assignment will be created.</p>"}))
    DescribeApplicationAssignmentResponse.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalId, location_name: 'PrincipalId', traits: {"smithy.api#documentation" => "<p>An identifier for an object in IAM Identity Center, such as a user or group. PrincipalIds are GUIDs (For example, f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about PrincipalIds in IAM Identity Center, see the <a href=\"https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/welcome.html\">IAM Identity Center Identity Store API Reference</a>.</p>"}))
    DescribeApplicationAssignmentResponse.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'ApplicationArn', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the application. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>"}))
    DescribeApplicationAssignmentResponse.type = Types::DescribeApplicationAssignmentResponse
    DescribeApplicationProviderRequest.add_member(:application_provider_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationProviderArn, location_name: 'ApplicationProviderArn', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the application provider for which you want details.</p>", "smithy.api#required" => {}}))
    DescribeApplicationProviderRequest.type = Types::DescribeApplicationProviderRequest
    DescribeApplicationProviderResponse.add_member(:application_provider_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationProviderArn, location_name: 'ApplicationProviderArn', traits: {"smithy.api#documentation" => "<p>The ARN of the application provider.</p>", "smithy.api#required" => {}}))
    DescribeApplicationProviderResponse.add_member(:federation_protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: FederationProtocol, location_name: 'FederationProtocol', traits: {"smithy.api#documentation" => "<p>The protocol used to federate to the application provider.</p>"}))
    DescribeApplicationProviderResponse.add_member(:display_data, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayData, location_name: 'DisplayData', traits: {"smithy.api#documentation" => "<p>A structure with details about the display data for the application provider.</p>"}))
    DescribeApplicationProviderResponse.add_member(:resource_server_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceServerConfig, location_name: 'ResourceServerConfig', traits: {"smithy.api#documentation" => "<p>A structure with details about the receiving application.</p>"}))
    DescribeApplicationProviderResponse.type = Types::DescribeApplicationProviderResponse
    DescribeApplicationRequest.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'ApplicationArn', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the application. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>", "smithy.api#required" => {}}))
    DescribeApplicationRequest.type = Types::DescribeApplicationRequest
    DescribeApplicationResponse.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'ApplicationArn', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the application.</p>"}))
    DescribeApplicationResponse.add_member(:application_provider_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationProviderArn, location_name: 'ApplicationProviderArn', traits: {"smithy.api#documentation" => "<p>The ARN of the application provider under which the operation will run.</p>"}))
    DescribeApplicationResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationNameType, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The application name.</p>"}))
    DescribeApplicationResponse.add_member(:application_account, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'ApplicationAccount', traits: {"smithy.api#documentation" => "<p>The account ID.</p>"}))
    DescribeApplicationResponse.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center application under which the operation will run. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>"}))
    DescribeApplicationResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Specifies whether the application is enabled or disabled.</p>"}))
    DescribeApplicationResponse.add_member(:portal_options, Smithy::Schema::Shapes::ShapeRef.new(shape: PortalOptions, location_name: 'PortalOptions', traits: {"smithy.api#documentation" => "<p>A structure that describes the options for the portal associated with an application.</p>"}))
    DescribeApplicationResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the .</p>"}))
    DescribeApplicationResponse.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreatedDate', traits: {"smithy.api#documentation" => "<p>The date the application was created.</p>"}))
    DescribeApplicationResponse.type = Types::DescribeApplicationResponse
    DescribeInstanceAccessControlAttributeConfigurationRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance under which the operation will be executed.</p>", "smithy.api#required" => {}}))
    DescribeInstanceAccessControlAttributeConfigurationRequest.type = Types::DescribeInstanceAccessControlAttributeConfigurationRequest
    DescribeInstanceAccessControlAttributeConfigurationResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceAccessControlAttributeConfigurationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the attribute configuration process.</p>"}))
    DescribeInstanceAccessControlAttributeConfigurationResponse.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceAccessControlAttributeConfigurationStatusReason, location_name: 'StatusReason', traits: {"smithy.api#documentation" => "<p>Provides more details about the current status of the specified attribute.</p>"}))
    DescribeInstanceAccessControlAttributeConfigurationResponse.add_member(:instance_access_control_attribute_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceAccessControlAttributeConfiguration, location_name: 'InstanceAccessControlAttributeConfiguration', traits: {"smithy.api#documentation" => "<p>Gets the list of IAM Identity Center identity store attributes that have been added to your ABAC configuration.</p>"}))
    DescribeInstanceAccessControlAttributeConfigurationResponse.type = Types::DescribeInstanceAccessControlAttributeConfigurationResponse
    DescribeInstanceRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the instance of IAM Identity Center under which the operation will run.</p>", "smithy.api#required" => {}}))
    DescribeInstanceRequest.type = Types::DescribeInstanceRequest
    DescribeInstanceResponse.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the instance of IAM Identity Center under which the operation will run. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>"}))
    DescribeInstanceResponse.add_member(:identity_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'IdentityStoreId', traits: {"smithy.api#documentation" => "<p>The identifier of the identity store that is connected to the instance of IAM Identity Center.</p>"}))
    DescribeInstanceResponse.add_member(:owner_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'OwnerAccountId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Web Services account for which the instance was created.</p>"}))
    DescribeInstanceResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameType, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Specifies the instance name.</p>"}))
    DescribeInstanceResponse.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreatedDate', traits: {"smithy.api#documentation" => "<p>The date the instance was created.</p>"}))
    DescribeInstanceResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the instance. </p>"}))
    DescribeInstanceResponse.type = Types::DescribeInstanceResponse
    DescribePermissionSetProvisioningStatusRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>", "smithy.api#required" => {}}))
    DescribePermissionSetProvisioningStatusRequest.add_member(:provision_permission_set_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUId, location_name: 'ProvisionPermissionSetRequestId', traits: {"smithy.api#documentation" => "<p>The identifier that is provided by the <a>ProvisionPermissionSet</a> call to retrieve the current status of the provisioning workflow.</p>", "smithy.api#required" => {}}))
    DescribePermissionSetProvisioningStatusRequest.type = Types::DescribePermissionSetProvisioningStatusRequest
    DescribePermissionSetProvisioningStatusResponse.add_member(:permission_set_provisioning_status, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetProvisioningStatus, location_name: 'PermissionSetProvisioningStatus', traits: {"smithy.api#documentation" => "<p>The status object for the permission set provisioning operation.</p>"}))
    DescribePermissionSetProvisioningStatusResponse.type = Types::DescribePermissionSetProvisioningStatusResponse
    DescribePermissionSetRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>", "smithy.api#required" => {}}))
    DescribePermissionSetRequest.add_member(:permission_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetArn, location_name: 'PermissionSetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the permission set. </p>", "smithy.api#required" => {}}))
    DescribePermissionSetRequest.type = Types::DescribePermissionSetRequest
    DescribePermissionSetResponse.add_member(:permission_set, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSet, location_name: 'PermissionSet', traits: {"smithy.api#documentation" => "<p>Describes the level of access on an Amazon Web Services account.</p>"}))
    DescribePermissionSetResponse.type = Types::DescribePermissionSetResponse
    DescribeTrustedTokenIssuerRequest.add_member(:trusted_token_issuer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedTokenIssuerArn, location_name: 'TrustedTokenIssuerArn', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the trusted token issuer configuration that you want details about.</p>", "smithy.api#required" => {}}))
    DescribeTrustedTokenIssuerRequest.type = Types::DescribeTrustedTokenIssuerRequest
    DescribeTrustedTokenIssuerResponse.add_member(:trusted_token_issuer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedTokenIssuerArn, location_name: 'TrustedTokenIssuerArn', traits: {"smithy.api#documentation" => "<p>The ARN of the trusted token issuer configuration.</p>"}))
    DescribeTrustedTokenIssuerResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedTokenIssuerName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the trusted token issuer configuration.</p>"}))
    DescribeTrustedTokenIssuerResponse.add_member(:trusted_token_issuer_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedTokenIssuerType, location_name: 'TrustedTokenIssuerType', traits: {"smithy.api#documentation" => "<p>The type of the trusted token issuer.</p>"}))
    DescribeTrustedTokenIssuerResponse.add_member(:trusted_token_issuer_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedTokenIssuerConfiguration, location_name: 'TrustedTokenIssuerConfiguration', traits: {"smithy.api#documentation" => "<p>A structure the describes the settings that apply of this trusted token issuer.</p>"}))
    DescribeTrustedTokenIssuerResponse.type = Types::DescribeTrustedTokenIssuerResponse
    DetachCustomerManagedPolicyReferenceFromPermissionSetRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance under which the operation will be executed. </p>", "smithy.api#required" => {}}))
    DetachCustomerManagedPolicyReferenceFromPermissionSetRequest.add_member(:permission_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetArn, location_name: 'PermissionSetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>PermissionSet</code>.</p>", "smithy.api#required" => {}}))
    DetachCustomerManagedPolicyReferenceFromPermissionSetRequest.add_member(:customer_managed_policy_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerManagedPolicyReference, location_name: 'CustomerManagedPolicyReference', traits: {"smithy.api#documentation" => "<p>Specifies the name and path of a customer managed policy. You must have an IAM policy that matches the name and path in each Amazon Web Services account where you want to deploy your permission set.</p>", "smithy.api#required" => {}}))
    DetachCustomerManagedPolicyReferenceFromPermissionSetRequest.type = Types::DetachCustomerManagedPolicyReferenceFromPermissionSetRequest
    DetachCustomerManagedPolicyReferenceFromPermissionSetResponse.type = Types::DetachCustomerManagedPolicyReferenceFromPermissionSetResponse
    DetachManagedPolicyFromPermissionSetRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>", "smithy.api#required" => {}}))
    DetachManagedPolicyFromPermissionSetRequest.add_member(:permission_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetArn, location_name: 'PermissionSetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <a>PermissionSet</a> from which the policy should be detached.</p>", "smithy.api#required" => {}}))
    DetachManagedPolicyFromPermissionSetRequest.add_member(:managed_policy_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedPolicyArn, location_name: 'ManagedPolicyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services managed policy ARN to be detached from a permission set.</p>", "smithy.api#required" => {}}))
    DetachManagedPolicyFromPermissionSetRequest.type = Types::DetachManagedPolicyFromPermissionSetRequest
    DetachManagedPolicyFromPermissionSetResponse.type = Types::DetachManagedPolicyFromPermissionSetResponse
    DisplayData.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'DisplayName', traits: {"smithy.api#documentation" => "<p>The name of the application provider that appears in the portal.</p>"}))
    DisplayData.add_member(:icon_url, Smithy::Schema::Shapes::ShapeRef.new(shape: IconUrl, location_name: 'IconUrl', traits: {"smithy.api#documentation" => "<p>A URL that points to an icon that represents the application provider.</p>"}))
    DisplayData.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the application provider that appears in the portal.</p>"}))
    DisplayData.type = Types::DisplayData
    FederationProtocol.add_member(:saml, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAML', traits: {"smithy.api#enumValue" => "SAML"}))
    FederationProtocol.add_member(:oauth, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OAUTH', traits: {"smithy.api#enumValue" => "OAUTH"}))
    GetApplicationAccessScopeRequest.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'ApplicationArn', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the application with the access scope that you want to retrieve.</p>", "smithy.api#required" => {}}))
    GetApplicationAccessScopeRequest.add_member(:scope, Smithy::Schema::Shapes::ShapeRef.new(shape: Scope, location_name: 'Scope', traits: {"smithy.api#documentation" => "<p>Specifies the name of the access scope for which you want the authorized targets.</p>", "smithy.api#required" => {}}))
    GetApplicationAccessScopeRequest.type = Types::GetApplicationAccessScopeRequest
    GetApplicationAccessScopeResponse.add_member(:scope, Smithy::Schema::Shapes::ShapeRef.new(shape: Scope, location_name: 'Scope', traits: {"smithy.api#documentation" => "<p>The name of the access scope that can be used with the authorized targets.</p>", "smithy.api#required" => {}}))
    GetApplicationAccessScopeResponse.add_member(:authorized_targets, Smithy::Schema::Shapes::ShapeRef.new(shape: ScopeTargets, location_name: 'AuthorizedTargets', traits: {"smithy.api#documentation" => "<p>An array of authorized targets associated with this access scope.</p>"}))
    GetApplicationAccessScopeResponse.type = Types::GetApplicationAccessScopeResponse
    GetApplicationAssignmentConfigurationRequest.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'ApplicationArn', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the application. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>", "smithy.api#required" => {}}))
    GetApplicationAssignmentConfigurationRequest.type = Types::GetApplicationAssignmentConfigurationRequest
    GetApplicationAssignmentConfigurationResponse.add_member(:assignment_required, Smithy::Schema::Shapes::ShapeRef.new(shape: AssignmentRequired, location_name: 'AssignmentRequired', traits: {"smithy.api#default" => true, "smithy.api#documentation" => "<p>If <code>AssignmentsRequired</code> is <code>true</code> (default value), users don’t have access to the application unless an assignment is created using the <a href=\"https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_CreateApplicationAssignment.html\">CreateApplicationAssignment API</a>. If <code>false</code>, all users have access to the application. </p>", "smithy.api#required" => {}}))
    GetApplicationAssignmentConfigurationResponse.type = Types::GetApplicationAssignmentConfigurationResponse
    GetApplicationAuthenticationMethodRequest.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'ApplicationArn', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the application.</p>", "smithy.api#required" => {}}))
    GetApplicationAuthenticationMethodRequest.add_member(:authentication_method_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationMethodType, location_name: 'AuthenticationMethodType', traits: {"smithy.api#documentation" => "<p>Specifies the type of authentication method for which you want details.</p>", "smithy.api#required" => {}}))
    GetApplicationAuthenticationMethodRequest.type = Types::GetApplicationAuthenticationMethodRequest
    GetApplicationAuthenticationMethodResponse.add_member(:authentication_method, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationMethod, location_name: 'AuthenticationMethod', traits: {"smithy.api#documentation" => "<p>A structure that contains details about the requested authentication method.</p>"}))
    GetApplicationAuthenticationMethodResponse.type = Types::GetApplicationAuthenticationMethodResponse
    GetApplicationGrantRequest.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'ApplicationArn', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the application that contains the grant.</p>", "smithy.api#required" => {}}))
    GetApplicationGrantRequest.add_member(:grant_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GrantType, location_name: 'GrantType', traits: {"smithy.api#documentation" => "<p>Specifies the type of grant.</p>", "smithy.api#required" => {}}))
    GetApplicationGrantRequest.type = Types::GetApplicationGrantRequest
    GetApplicationGrantResponse.add_member(:grant, Smithy::Schema::Shapes::ShapeRef.new(shape: Grant, location_name: 'Grant', traits: {"smithy.api#documentation" => "<p>A structure that describes the requested grant.</p>", "smithy.api#required" => {}}))
    GetApplicationGrantResponse.type = Types::GetApplicationGrantResponse
    GetApplicationSessionConfigurationRequest.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'ApplicationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the application for which to retrieve the session configuration.</p>", "smithy.api#required" => {}}))
    GetApplicationSessionConfigurationRequest.type = Types::GetApplicationSessionConfigurationRequest
    GetApplicationSessionConfigurationResponse.add_member(:user_background_session_application_status, Smithy::Schema::Shapes::ShapeRef.new(shape: UserBackgroundSessionApplicationStatus, location_name: 'UserBackgroundSessionApplicationStatus', traits: {"smithy.api#documentation" => "<p>The status of user background sessions for the application. </p>"}))
    GetApplicationSessionConfigurationResponse.type = Types::GetApplicationSessionConfigurationResponse
    GetInlinePolicyForPermissionSetRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>", "smithy.api#required" => {}}))
    GetInlinePolicyForPermissionSetRequest.add_member(:permission_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetArn, location_name: 'PermissionSetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the permission set.</p>", "smithy.api#required" => {}}))
    GetInlinePolicyForPermissionSetRequest.type = Types::GetInlinePolicyForPermissionSetRequest
    GetInlinePolicyForPermissionSetResponse.add_member(:inline_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetPolicyDocument, location_name: 'InlinePolicy', traits: {"smithy.api#documentation" => "<p>The inline policy that is attached to the permission set.</p> <note> <p>For <code>Length Constraints</code>, if a valid ARN is provided for a permission set, it is possible for an empty inline policy to be returned.</p> </note>"}))
    GetInlinePolicyForPermissionSetResponse.type = Types::GetInlinePolicyForPermissionSetResponse
    GetPermissionsBoundaryForPermissionSetRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance under which the operation will be executed. </p>", "smithy.api#required" => {}}))
    GetPermissionsBoundaryForPermissionSetRequest.add_member(:permission_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetArn, location_name: 'PermissionSetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>PermissionSet</code>.</p>", "smithy.api#required" => {}}))
    GetPermissionsBoundaryForPermissionSetRequest.type = Types::GetPermissionsBoundaryForPermissionSetRequest
    GetPermissionsBoundaryForPermissionSetResponse.add_member(:permissions_boundary, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionsBoundary, location_name: 'PermissionsBoundary', traits: {"smithy.api#documentation" => "<p>The permissions boundary attached to the specified permission set.</p>"}))
    GetPermissionsBoundaryForPermissionSetResponse.type = Types::GetPermissionsBoundaryForPermissionSetResponse
    Grant.add_member(:authorization_code, Types::Grant::AuthorizationCode, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationCodeGrant, location_name: 'AuthorizationCode', traits: {"smithy.api#documentation" => "<p>Configuration options for the <code>authorization_code</code> grant type.</p>"}))
    Grant.add_member(:jwt_bearer, Types::Grant::JwtBearer, Smithy::Schema::Shapes::ShapeRef.new(shape: JwtBearerGrant, location_name: 'JwtBearer', traits: {"smithy.api#documentation" => "<p>Configuration options for the <code>urn:ietf:params:oauth:grant-type:jwt-bearer</code> grant type.</p>"}))
    Grant.add_member(:refresh_token, Types::Grant::RefreshToken, Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshTokenGrant, location_name: 'RefreshToken', traits: {"smithy.api#documentation" => "<p>Configuration options for the <code>refresh_token</code> grant type.</p>"}))
    Grant.add_member(:token_exchange, Types::Grant::TokenExchange, Smithy::Schema::Shapes::ShapeRef.new(shape: TokenExchangeGrant, location_name: 'TokenExchange', traits: {"smithy.api#documentation" => "<p>Configuration options for the <code>urn:ietf:params:oauth:grant-type:token-exchange</code> grant type.</p>"}))
    Grant.add_member(:unknown, Types::Grant::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    Grant.type = Types::Grant
    GrantItem.add_member(:grant_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GrantType, location_name: 'GrantType', traits: {"smithy.api#documentation" => "<p>The type of the selected grant.</p>", "smithy.api#required" => {}}))
    GrantItem.add_member(:grant, Smithy::Schema::Shapes::ShapeRef.new(shape: Grant, location_name: 'Grant', traits: {"smithy.api#documentation" => "<p>The configuration structure for the selected grant.</p>", "smithy.api#required" => {}}))
    GrantItem.type = Types::GrantItem
    GrantType.add_member(:authorization_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTHORIZATION_CODE', traits: {"smithy.api#enumValue" => "authorization_code"}))
    GrantType.add_member(:refresh_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REFRESH_TOKEN', traits: {"smithy.api#enumValue" => "refresh_token"}))
    GrantType.add_member(:jwt_bearer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JWT_BEARER', traits: {"smithy.api#enumValue" => "urn:ietf:params:oauth:grant-type:jwt-bearer"}))
    GrantType.add_member(:token_exchange, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TOKEN_EXCHANGE', traits: {"smithy.api#enumValue" => "urn:ietf:params:oauth:grant-type:token-exchange"}))
    Grants.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GrantItem)
    IamAuthenticationMethod.add_member(:actor_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ActorPolicyDocument, location_name: 'ActorPolicy', traits: {"smithy.api#documentation" => "<p>An IAM policy document in JSON.</p>", "smithy.api#required" => {}}))
    IamAuthenticationMethod.type = Types::IamAuthenticationMethod
    InstanceAccessControlAttributeConfiguration.add_member(:access_control_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessControlAttributeList, location_name: 'AccessControlAttributes', traits: {"smithy.api#documentation" => "<p>Lists the attributes that are configured for ABAC in the specified IAM Identity Center instance.</p>", "smithy.api#required" => {}}))
    InstanceAccessControlAttributeConfiguration.type = Types::InstanceAccessControlAttributeConfiguration
    InstanceAccessControlAttributeConfigurationStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    InstanceAccessControlAttributeConfigurationStatus.add_member(:creation_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATION_IN_PROGRESS', traits: {"smithy.api#enumValue" => "CREATION_IN_PROGRESS"}))
    InstanceAccessControlAttributeConfigurationStatus.add_member(:creation_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATION_FAILED', traits: {"smithy.api#enumValue" => "CREATION_FAILED"}))
    InstanceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceMetadata)
    InstanceMetadata.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>"}))
    InstanceMetadata.add_member(:identity_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'IdentityStoreId', traits: {"smithy.api#documentation" => "<p>The identifier of the identity store that is connected to the Identity Center instance.</p>"}))
    InstanceMetadata.add_member(:owner_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'OwnerAccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID number of the owner of the Identity Center instance.</p>"}))
    InstanceMetadata.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameType, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the Identity Center instance.</p>"}))
    InstanceMetadata.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreatedDate', traits: {"smithy.api#documentation" => "<p>The date and time that the Identity Center instance was created.</p>"}))
    InstanceMetadata.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of this Identity Center instance.</p>"}))
    InstanceMetadata.type = Types::InstanceMetadata
    InstanceStatus.add_member(:create_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    InstanceStatus.add_member(:delete_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    InstanceStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureMessage, location_name: 'Message'))
    InternalServerException.type = Types::InternalServerException
    JwksRetrievalOption.add_member(:open_id_discovery, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPEN_ID_DISCOVERY', traits: {"smithy.api#enumValue" => "OPEN_ID_DISCOVERY"}))
    JwtBearerGrant.add_member(:authorized_token_issuers, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizedTokenIssuers, location_name: 'AuthorizedTokenIssuers', traits: {"smithy.api#documentation" => "<p>A list of allowed token issuers trusted by the Identity Center instances for this application.</p> <note> <p> <code>AuthorizedTokenIssuers</code> is required when the grant type is <code>JwtBearerGrant</code>.</p> </note>"}))
    JwtBearerGrant.type = Types::JwtBearerGrant
    ListAccountAssignmentCreationStatusRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>", "smithy.api#required" => {}}))
    ListAccountAssignmentCreationStatusRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to display for the assignment.</p>"}))
    ListAccountAssignmentCreationStatusRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"}))
    ListAccountAssignmentCreationStatusRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationStatusFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>Filters results based on the passed attribute value.</p>"}))
    ListAccountAssignmentCreationStatusRequest.type = Types::ListAccountAssignmentCreationStatusRequest
    ListAccountAssignmentCreationStatusResponse.add_member(:account_assignments_creation_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAssignmentOperationStatusList, location_name: 'AccountAssignmentsCreationStatus', traits: {"smithy.api#documentation" => "<p>The status object for the account assignment creation operation.</p>"}))
    ListAccountAssignmentCreationStatusResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"}))
    ListAccountAssignmentCreationStatusResponse.type = Types::ListAccountAssignmentCreationStatusResponse
    ListAccountAssignmentDeletionStatusRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>", "smithy.api#required" => {}}))
    ListAccountAssignmentDeletionStatusRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to display for the assignment.</p>"}))
    ListAccountAssignmentDeletionStatusRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"}))
    ListAccountAssignmentDeletionStatusRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationStatusFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>Filters results based on the passed attribute value.</p>"}))
    ListAccountAssignmentDeletionStatusRequest.type = Types::ListAccountAssignmentDeletionStatusRequest
    ListAccountAssignmentDeletionStatusResponse.add_member(:account_assignments_deletion_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAssignmentOperationStatusList, location_name: 'AccountAssignmentsDeletionStatus', traits: {"smithy.api#documentation" => "<p>The status object for the account assignment deletion operation.</p>"}))
    ListAccountAssignmentDeletionStatusResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"}))
    ListAccountAssignmentDeletionStatusResponse.type = Types::ListAccountAssignmentDeletionStatusResponse
    ListAccountAssignmentsFilter.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The ID number of an Amazon Web Services account that filters the results in the response.</p>"}))
    ListAccountAssignmentsFilter.type = Types::ListAccountAssignmentsFilter
    ListAccountAssignmentsForPrincipalRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the instance of IAM Identity Center that contains the principal.</p>", "smithy.api#required" => {}}))
    ListAccountAssignmentsForPrincipalRequest.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalId, location_name: 'PrincipalId', traits: {"smithy.api#documentation" => "<p>Specifies the principal for which you want to retrieve the list of account assignments.</p>", "smithy.api#required" => {}}))
    ListAccountAssignmentsForPrincipalRequest.add_member(:principal_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalType, location_name: 'PrincipalType', traits: {"smithy.api#documentation" => "<p>Specifies the type of the principal.</p>", "smithy.api#required" => {}}))
    ListAccountAssignmentsForPrincipalRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountAssignmentsFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>Specifies an Amazon Web Services account ID number. Results are filtered to only those that match this ID number.</p>"}))
    ListAccountAssignmentsForPrincipalRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Specifies that you want to receive the next page of results. Valid only if you received a <code>NextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>NextToken</code> response to request the next page of results.</p>"}))
    ListAccountAssignmentsForPrincipalRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>Specifies the total number of results that you want included in each response. If additional items exist beyond the number you specify, the <code>NextToken</code> response element is returned with a value (not null). Include the specified value as the <code>NextToken</code> request parameter in the next call to the operation to get the next set of results. Note that the service might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>"}))
    ListAccountAssignmentsForPrincipalRequest.type = Types::ListAccountAssignmentsForPrincipalRequest
    ListAccountAssignmentsForPrincipalResponse.add_member(:account_assignments, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAssignmentListForPrincipal, location_name: 'AccountAssignments', traits: {"smithy.api#documentation" => "<p>An array list of the account assignments for the principal.</p>"}))
    ListAccountAssignmentsForPrincipalResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, this value indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>. This indicates that this is the last page of results.</p>"}))
    ListAccountAssignmentsForPrincipalResponse.type = Types::ListAccountAssignmentsForPrincipalResponse
    ListAccountAssignmentsRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>", "smithy.api#required" => {}}))
    ListAccountAssignmentsRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Web Services account from which to list the assignments.</p>", "smithy.api#required" => {}}))
    ListAccountAssignmentsRequest.add_member(:permission_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetArn, location_name: 'PermissionSetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the permission set from which to list assignments.</p>", "smithy.api#required" => {}}))
    ListAccountAssignmentsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to display for the assignment.</p>"}))
    ListAccountAssignmentsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"}))
    ListAccountAssignmentsRequest.type = Types::ListAccountAssignmentsRequest
    ListAccountAssignmentsResponse.add_member(:account_assignments, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAssignmentList, location_name: 'AccountAssignments', traits: {"smithy.api#documentation" => "<p>The list of assignments that match the input Amazon Web Services account and permission set.</p>"}))
    ListAccountAssignmentsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"}))
    ListAccountAssignmentsResponse.type = Types::ListAccountAssignmentsResponse
    ListAccountsForProvisionedPermissionSetRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>", "smithy.api#required" => {}}))
    ListAccountsForProvisionedPermissionSetRequest.add_member(:permission_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetArn, location_name: 'PermissionSetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <a>PermissionSet</a> from which the associated Amazon Web Services accounts will be listed.</p>", "smithy.api#required" => {}}))
    ListAccountsForProvisionedPermissionSetRequest.add_member(:provisioning_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningStatus, location_name: 'ProvisioningStatus', traits: {"smithy.api#documentation" => "<p>The permission set provisioning status for an Amazon Web Services account.</p>"}))
    ListAccountsForProvisionedPermissionSetRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to display for the <a>PermissionSet</a>.</p>"}))
    ListAccountsForProvisionedPermissionSetRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"}))
    ListAccountsForProvisionedPermissionSetRequest.type = Types::ListAccountsForProvisionedPermissionSetRequest
    ListAccountsForProvisionedPermissionSetResponse.add_member(:account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountList, location_name: 'AccountIds', traits: {"smithy.api#documentation" => "<p>The list of Amazon Web Services <code>AccountIds</code>.</p>"}))
    ListAccountsForProvisionedPermissionSetResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"}))
    ListAccountsForProvisionedPermissionSetResponse.type = Types::ListAccountsForProvisionedPermissionSetResponse
    ListApplicationAccessScopesRequest.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'ApplicationArn', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the application.</p>", "smithy.api#required" => {}}))
    ListApplicationAccessScopesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 10, "smithy.api#documentation" => "<p>Specifies the total number of results that you want included in each response. If additional items exist beyond the number you specify, the <code>NextToken</code> response element is returned with a value (not null). Include the specified value as the <code>NextToken</code> request parameter in the next call to the operation to get the next set of results. Note that the service might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>", "smithy.api#range" => {"min" => 1, "max" => 10}}))
    ListApplicationAccessScopesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Specifies that you want to receive the next page of results. Valid only if you received a <code>NextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>NextToken</code> response to request the next page of results.</p>"}))
    ListApplicationAccessScopesRequest.type = Types::ListApplicationAccessScopesRequest
    ListApplicationAccessScopesResponse.add_member(:scopes, Smithy::Schema::Shapes::ShapeRef.new(shape: Scopes, location_name: 'Scopes', traits: {"smithy.api#documentation" => "<p>An array list of access scopes and their authorized targets that are associated with the application.</p>", "smithy.api#required" => {}}))
    ListApplicationAccessScopesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, this value indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>. This indicates that this is the last page of results.</p>"}))
    ListApplicationAccessScopesResponse.type = Types::ListApplicationAccessScopesResponse
    ListApplicationAssignmentsFilter.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'ApplicationArn', traits: {"smithy.api#documentation" => "<p>The ARN of an application.</p>"}))
    ListApplicationAssignmentsFilter.type = Types::ListApplicationAssignmentsFilter
    ListApplicationAssignmentsForPrincipalRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>Specifies the instance of IAM Identity Center that contains principal and applications.</p>", "smithy.api#required" => {}}))
    ListApplicationAssignmentsForPrincipalRequest.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalId, location_name: 'PrincipalId', traits: {"smithy.api#documentation" => "<p>Specifies the unique identifier of the principal for which you want to retrieve its assignments.</p>", "smithy.api#required" => {}}))
    ListApplicationAssignmentsForPrincipalRequest.add_member(:principal_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalType, location_name: 'PrincipalType', traits: {"smithy.api#documentation" => "<p>Specifies the type of the principal for which you want to retrieve its assignments.</p>", "smithy.api#required" => {}}))
    ListApplicationAssignmentsForPrincipalRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationAssignmentsFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>Filters the output to include only assignments associated with the application that has the specified ARN.</p>"}))
    ListApplicationAssignmentsForPrincipalRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Specifies that you want to receive the next page of results. Valid only if you received a <code>NextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>NextToken</code> response to request the next page of results.</p>"}))
    ListApplicationAssignmentsForPrincipalRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>Specifies the total number of results that you want included in each response. If additional items exist beyond the number you specify, the <code>NextToken</code> response element is returned with a value (not null). Include the specified value as the <code>NextToken</code> request parameter in the next call to the operation to get the next set of results. Note that the service might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>"}))
    ListApplicationAssignmentsForPrincipalRequest.type = Types::ListApplicationAssignmentsForPrincipalRequest
    ListApplicationAssignmentsForPrincipalResponse.add_member(:application_assignments, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationAssignmentListForPrincipal, location_name: 'ApplicationAssignments', traits: {"smithy.api#documentation" => "<p>An array list of the application assignments for the specified principal.</p>"}))
    ListApplicationAssignmentsForPrincipalResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, this value indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>. This indicates that this is the last page of results.</p>"}))
    ListApplicationAssignmentsForPrincipalResponse.type = Types::ListApplicationAssignmentsForPrincipalResponse
    ListApplicationAssignmentsRequest.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'ApplicationArn', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the application.</p>", "smithy.api#required" => {}}))
    ListApplicationAssignmentsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Specifies the total number of results that you want included in each response. If additional items exist beyond the number you specify, the <code>NextToken</code> response element is returned with a value (not null). Include the specified value as the <code>NextToken</code> request parameter in the next call to the operation to get the next set of results. Note that the service might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>"}))
    ListApplicationAssignmentsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Specifies that you want to receive the next page of results. Valid only if you received a <code>NextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>NextToken</code> response to request the next page of results.</p>"}))
    ListApplicationAssignmentsRequest.type = Types::ListApplicationAssignmentsRequest
    ListApplicationAssignmentsResponse.add_member(:application_assignments, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationAssignmentsList, location_name: 'ApplicationAssignments', traits: {"smithy.api#documentation" => "<p>The list of users assigned to an application.</p>"}))
    ListApplicationAssignmentsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, this value indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>. This indicates that this is the last page of results.</p>"}))
    ListApplicationAssignmentsResponse.type = Types::ListApplicationAssignmentsResponse
    ListApplicationAuthenticationMethodsRequest.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'ApplicationArn', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the application with the authentication methods you want to list.</p>", "smithy.api#required" => {}}))
    ListApplicationAuthenticationMethodsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Specifies that you want to receive the next page of results. Valid only if you received a <code>NextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>NextToken</code> response to request the next page of results.</p>"}))
    ListApplicationAuthenticationMethodsRequest.type = Types::ListApplicationAuthenticationMethodsRequest
    ListApplicationAuthenticationMethodsResponse.add_member(:authentication_methods, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationMethods, location_name: 'AuthenticationMethods', traits: {"smithy.api#documentation" => "<p>An array list of authentication methods for the specified application.</p>"}))
    ListApplicationAuthenticationMethodsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, this value indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>. This indicates that this is the last page of results.</p>"}))
    ListApplicationAuthenticationMethodsResponse.type = Types::ListApplicationAuthenticationMethodsResponse
    ListApplicationGrantsRequest.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'ApplicationArn', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the application whose grants you want to list.</p>", "smithy.api#required" => {}}))
    ListApplicationGrantsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Specifies that you want to receive the next page of results. Valid only if you received a <code>NextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>NextToken</code> response to request the next page of results.</p>"}))
    ListApplicationGrantsRequest.type = Types::ListApplicationGrantsRequest
    ListApplicationGrantsResponse.add_member(:grants, Smithy::Schema::Shapes::ShapeRef.new(shape: Grants, location_name: 'Grants', traits: {"smithy.api#documentation" => "<p>An array list of structures that describe the requested grants.</p>", "smithy.api#required" => {}}))
    ListApplicationGrantsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, this value indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>. This indicates that this is the last page of results.</p>"}))
    ListApplicationGrantsResponse.type = Types::ListApplicationGrantsResponse
    ListApplicationProvidersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Specifies the total number of results that you want included in each response. If additional items exist beyond the number you specify, the <code>NextToken</code> response element is returned with a value (not null). Include the specified value as the <code>NextToken</code> request parameter in the next call to the operation to get the next set of results. Note that the service might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>"}))
    ListApplicationProvidersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Specifies that you want to receive the next page of results. Valid only if you received a <code>NextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>NextToken</code> response to request the next page of results.</p>"}))
    ListApplicationProvidersRequest.type = Types::ListApplicationProvidersRequest
    ListApplicationProvidersResponse.add_member(:application_providers, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationProviderList, location_name: 'ApplicationProviders', traits: {"smithy.api#documentation" => "<p>An array list of structures that describe application providers.</p>"}))
    ListApplicationProvidersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, this value indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>. This indicates that this is the last page of results.</p>"}))
    ListApplicationProvidersResponse.type = Types::ListApplicationProvidersResponse
    ListApplicationsFilter.add_member(:application_account, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'ApplicationAccount', traits: {"smithy.api#documentation" => "<p>An Amazon Web Services account ID number that filters the results in the response.</p>"}))
    ListApplicationsFilter.add_member(:application_provider, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationProviderArn, location_name: 'ApplicationProvider', traits: {"smithy.api#documentation" => "<p>The ARN of an application provider that can filter the results in the response.</p>"}))
    ListApplicationsFilter.type = Types::ListApplicationsFilter
    ListApplicationsRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center application under which the operation will run. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>", "smithy.api#required" => {}}))
    ListApplicationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Specifies the total number of results that you want included in each response. If additional items exist beyond the number you specify, the <code>NextToken</code> response element is returned with a value (not null). Include the specified value as the <code>NextToken</code> request parameter in the next call to the operation to get the next set of results. Note that the service might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>"}))
    ListApplicationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Specifies that you want to receive the next page of results. Valid only if you received a <code>NextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>NextToken</code> response to request the next page of results.</p>"}))
    ListApplicationsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>Filters response results. </p>"}))
    ListApplicationsRequest.type = Types::ListApplicationsRequest
    ListApplicationsResponse.add_member(:applications, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationList, location_name: 'Applications', traits: {"smithy.api#documentation" => "<p>Retrieves all applications associated with the instance.</p>"}))
    ListApplicationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, this value indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>. This indicates that this is the last page of results.</p>"}))
    ListApplicationsResponse.type = Types::ListApplicationsResponse
    ListCustomerManagedPolicyReferencesInPermissionSetRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance under which the operation will be executed. </p>", "smithy.api#required" => {}}))
    ListCustomerManagedPolicyReferencesInPermissionSetRequest.add_member(:permission_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetArn, location_name: 'PermissionSetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>PermissionSet</code>. </p>", "smithy.api#required" => {}}))
    ListCustomerManagedPolicyReferencesInPermissionSetRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to display for the list call.</p>"}))
    ListCustomerManagedPolicyReferencesInPermissionSetRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"}))
    ListCustomerManagedPolicyReferencesInPermissionSetRequest.type = Types::ListCustomerManagedPolicyReferencesInPermissionSetRequest
    ListCustomerManagedPolicyReferencesInPermissionSetResponse.add_member(:customer_managed_policy_references, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerManagedPolicyReferenceList, location_name: 'CustomerManagedPolicyReferences', traits: {"smithy.api#documentation" => "<p>Specifies the names and paths of the customer managed policies that you have attached to your permission set.</p>"}))
    ListCustomerManagedPolicyReferencesInPermissionSetResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"}))
    ListCustomerManagedPolicyReferencesInPermissionSetResponse.type = Types::ListCustomerManagedPolicyReferencesInPermissionSetResponse
    ListInstancesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to display for the instance.</p>"}))
    ListInstancesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"}))
    ListInstancesRequest.type = Types::ListInstancesRequest
    ListInstancesResponse.add_member(:instances, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceList, location_name: 'Instances', traits: {"smithy.api#documentation" => "<p>Lists the IAM Identity Center instances that the caller has access to.</p>"}))
    ListInstancesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"}))
    ListInstancesResponse.type = Types::ListInstancesResponse
    ListManagedPoliciesInPermissionSetRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>", "smithy.api#required" => {}}))
    ListManagedPoliciesInPermissionSetRequest.add_member(:permission_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetArn, location_name: 'PermissionSetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <a>PermissionSet</a> whose managed policies will be listed.</p>", "smithy.api#required" => {}}))
    ListManagedPoliciesInPermissionSetRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to display for the <a>PermissionSet</a>.</p>"}))
    ListManagedPoliciesInPermissionSetRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"}))
    ListManagedPoliciesInPermissionSetRequest.type = Types::ListManagedPoliciesInPermissionSetRequest
    ListManagedPoliciesInPermissionSetResponse.add_member(:attached_managed_policies, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachedManagedPolicyList, location_name: 'AttachedManagedPolicies', traits: {"smithy.api#documentation" => "<p>An array of the <a>AttachedManagedPolicy</a> data type object.</p>"}))
    ListManagedPoliciesInPermissionSetResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"}))
    ListManagedPoliciesInPermissionSetResponse.type = Types::ListManagedPoliciesInPermissionSetResponse
    ListPermissionSetProvisioningStatusRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>", "smithy.api#required" => {}}))
    ListPermissionSetProvisioningStatusRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to display for the assignment.</p>"}))
    ListPermissionSetProvisioningStatusRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"}))
    ListPermissionSetProvisioningStatusRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationStatusFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>Filters results based on the passed attribute value.</p>"}))
    ListPermissionSetProvisioningStatusRequest.type = Types::ListPermissionSetProvisioningStatusRequest
    ListPermissionSetProvisioningStatusResponse.add_member(:permission_sets_provisioning_status, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetProvisioningStatusList, location_name: 'PermissionSetsProvisioningStatus', traits: {"smithy.api#documentation" => "<p>The status object for the permission set provisioning operation.</p>"}))
    ListPermissionSetProvisioningStatusResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"}))
    ListPermissionSetProvisioningStatusResponse.type = Types::ListPermissionSetProvisioningStatusResponse
    ListPermissionSetsProvisionedToAccountRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>", "smithy.api#required" => {}}))
    ListPermissionSetsProvisionedToAccountRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Web Services account from which to list the assignments.</p>", "smithy.api#required" => {}}))
    ListPermissionSetsProvisionedToAccountRequest.add_member(:provisioning_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisioningStatus, location_name: 'ProvisioningStatus', traits: {"smithy.api#documentation" => "<p>The status object for the permission set provisioning operation.</p>"}))
    ListPermissionSetsProvisionedToAccountRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to display for the assignment.</p>"}))
    ListPermissionSetsProvisionedToAccountRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"}))
    ListPermissionSetsProvisionedToAccountRequest.type = Types::ListPermissionSetsProvisionedToAccountRequest
    ListPermissionSetsProvisionedToAccountResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"}))
    ListPermissionSetsProvisionedToAccountResponse.add_member(:permission_sets, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetList, location_name: 'PermissionSets', traits: {"smithy.api#documentation" => "<p>Defines the level of access that an Amazon Web Services account has.</p>"}))
    ListPermissionSetsProvisionedToAccountResponse.type = Types::ListPermissionSetsProvisionedToAccountResponse
    ListPermissionSetsRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>", "smithy.api#required" => {}}))
    ListPermissionSetsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"}))
    ListPermissionSetsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to display for the assignment.</p>"}))
    ListPermissionSetsRequest.type = Types::ListPermissionSetsRequest
    ListPermissionSetsResponse.add_member(:permission_sets, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetList, location_name: 'PermissionSets', traits: {"smithy.api#documentation" => "<p>Defines the level of access on an Amazon Web Services account.</p>"}))
    ListPermissionSetsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"}))
    ListPermissionSetsResponse.type = Types::ListPermissionSetsResponse
    ListTagsForResourceRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>"}))
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TaggableResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource with the tags to be listed.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A set of key-value pairs that are used to manage the resource.</p>"}))
    ListTagsForResourceResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTrustedTokenIssuersRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the instance of IAM Identity Center with the trusted token issuer configurations that you want to list.</p>", "smithy.api#required" => {}}))
    ListTrustedTokenIssuersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Specifies the total number of results that you want included in each response. If additional items exist beyond the number you specify, the <code>NextToken</code> response element is returned with a value (not null). Include the specified value as the <code>NextToken</code> request parameter in the next call to the operation to get the next set of results. Note that the service might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>"}))
    ListTrustedTokenIssuersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Specifies that you want to receive the next page of results. Valid only if you received a <code>NextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>NextToken</code> response to request the next page of results.</p>"}))
    ListTrustedTokenIssuersRequest.type = Types::ListTrustedTokenIssuersRequest
    ListTrustedTokenIssuersResponse.add_member(:trusted_token_issuers, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedTokenIssuerList, location_name: 'TrustedTokenIssuers', traits: {"smithy.api#documentation" => "<p>An array list of the trusted token issuer configurations.</p>"}))
    ListTrustedTokenIssuersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, this value indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>. This indicates that this is the last page of results.</p>"}))
    ListTrustedTokenIssuersResponse.type = Types::ListTrustedTokenIssuersResponse
    OidcJwtConfiguration.add_member(:issuer_url, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedTokenIssuerUrl, location_name: 'IssuerUrl', traits: {"smithy.api#documentation" => "<p>The URL that IAM Identity Center uses for OpenID Discovery. OpenID Discovery is used to obtain the information required to verify the tokens that the trusted token issuer generates.</p>", "smithy.api#required" => {}}))
    OidcJwtConfiguration.add_member(:claim_attribute_path, Smithy::Schema::Shapes::ShapeRef.new(shape: ClaimAttributePath, location_name: 'ClaimAttributePath', traits: {"smithy.api#documentation" => "<p>The path of the source attribute in the JWT from the trusted token issuer. The attribute mapped by this JMESPath expression is compared against the attribute mapped by <code>IdentityStoreAttributePath</code> when a trusted token issuer token is exchanged for an IAM Identity Center token.</p>", "smithy.api#required" => {}}))
    OidcJwtConfiguration.add_member(:identity_store_attribute_path, Smithy::Schema::Shapes::ShapeRef.new(shape: JMESPath, location_name: 'IdentityStoreAttributePath', traits: {"smithy.api#documentation" => "<p>The path of the destination attribute in a JWT from IAM Identity Center. The attribute mapped by this JMESPath expression is compared against the attribute mapped by <code>ClaimAttributePath</code> when a trusted token issuer token is exchanged for an IAM Identity Center token. </p>", "smithy.api#required" => {}}))
    OidcJwtConfiguration.add_member(:jwks_retrieval_option, Smithy::Schema::Shapes::ShapeRef.new(shape: JwksRetrievalOption, location_name: 'JwksRetrievalOption', traits: {"smithy.api#documentation" => "<p>The method that the trusted token issuer can use to retrieve the JSON Web Key Set used to verify a JWT.</p>", "smithy.api#required" => {}}))
    OidcJwtConfiguration.type = Types::OidcJwtConfiguration
    OidcJwtUpdateConfiguration.add_member(:claim_attribute_path, Smithy::Schema::Shapes::ShapeRef.new(shape: ClaimAttributePath, location_name: 'ClaimAttributePath', traits: {"smithy.api#documentation" => "<p>The path of the source attribute in the JWT from the trusted token issuer. The attribute mapped by this JMESPath expression is compared against the attribute mapped by <code>IdentityStoreAttributePath</code> when a trusted token issuer token is exchanged for an IAM Identity Center token.</p>"}))
    OidcJwtUpdateConfiguration.add_member(:identity_store_attribute_path, Smithy::Schema::Shapes::ShapeRef.new(shape: JMESPath, location_name: 'IdentityStoreAttributePath', traits: {"smithy.api#documentation" => "<p>The path of the destination attribute in a JWT from IAM Identity Center. The attribute mapped by this JMESPath expression is compared against the attribute mapped by <code>ClaimAttributePath</code> when a trusted token issuer token is exchanged for an IAM Identity Center token.</p>"}))
    OidcJwtUpdateConfiguration.add_member(:jwks_retrieval_option, Smithy::Schema::Shapes::ShapeRef.new(shape: JwksRetrievalOption, location_name: 'JwksRetrievalOption', traits: {"smithy.api#documentation" => "<p>The method that the trusted token issuer can use to retrieve the JSON Web Key Set used to verify a JWT.</p>"}))
    OidcJwtUpdateConfiguration.type = Types::OidcJwtUpdateConfiguration
    OperationStatusFilter.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusValues, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Filters the list operations result based on the status attribute.</p>"}))
    OperationStatusFilter.type = Types::OperationStatusFilter
    PermissionSet.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the permission set.</p>"}))
    PermissionSet.add_member(:permission_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetArn, location_name: 'PermissionSetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the permission set. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>"}))
    PermissionSet.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the <a>PermissionSet</a>.</p>"}))
    PermissionSet.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreatedDate', traits: {"smithy.api#documentation" => "<p>The date that the permission set was created.</p>"}))
    PermissionSet.add_member(:session_duration, Smithy::Schema::Shapes::ShapeRef.new(shape: Duration, location_name: 'SessionDuration', traits: {"smithy.api#documentation" => "<p>The length of time that the application user sessions are valid for in the ISO-8601 standard.</p>"}))
    PermissionSet.add_member(:relay_state, Smithy::Schema::Shapes::ShapeRef.new(shape: RelayState, location_name: 'RelayState', traits: {"smithy.api#documentation" => "<p>Used to redirect users within the application during the federation authentication process.</p>"}))
    PermissionSet.type = Types::PermissionSet
    PermissionSetList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetArn)
    PermissionSetProvisioningStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusValues, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the permission set provisioning process.</p>"}))
    PermissionSetProvisioningStatus.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUId, location_name: 'RequestId', traits: {"smithy.api#documentation" => "<p>The identifier for tracking the request operation that is generated by the universally unique identifier (UUID) workflow.</p>"}))
    PermissionSetProvisioningStatus.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Web Services account from which to list the assignments.</p>"}))
    PermissionSetProvisioningStatus.add_member(:permission_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetArn, location_name: 'PermissionSetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the permission set that is being provisioned. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>"}))
    PermissionSetProvisioningStatus.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Reason, location_name: 'FailureReason', traits: {"smithy.api#documentation" => "<p>The message that contains an error or exception in case of an operation failure.</p>"}))
    PermissionSetProvisioningStatus.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreatedDate', traits: {"smithy.api#documentation" => "<p>The date that the permission set was created.</p>"}))
    PermissionSetProvisioningStatus.type = Types::PermissionSetProvisioningStatus
    PermissionSetProvisioningStatusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetProvisioningStatusMetadata)
    PermissionSetProvisioningStatusMetadata.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusValues, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the permission set provisioning process.</p>"}))
    PermissionSetProvisioningStatusMetadata.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUId, location_name: 'RequestId', traits: {"smithy.api#documentation" => "<p>The identifier for tracking the request operation that is generated by the universally unique identifier (UUID) workflow.</p>"}))
    PermissionSetProvisioningStatusMetadata.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreatedDate', traits: {"smithy.api#documentation" => "<p>The date that the permission set was created.</p>"}))
    PermissionSetProvisioningStatusMetadata.type = Types::PermissionSetProvisioningStatusMetadata
    PermissionsBoundary.add_member(:customer_managed_policy_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerManagedPolicyReference, location_name: 'CustomerManagedPolicyReference', traits: {"smithy.api#documentation" => "<p>Specifies the name and path of a customer managed policy. You must have an IAM policy that matches the name and path in each Amazon Web Services account where you want to deploy your permission set.</p>"}))
    PermissionsBoundary.add_member(:managed_policy_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedPolicyArn, location_name: 'ManagedPolicyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services managed policy ARN that you want to attach to a permission set as a permissions boundary.</p>"}))
    PermissionsBoundary.type = Types::PermissionsBoundary
    PortalOptions.add_member(:sign_in_options, Smithy::Schema::Shapes::ShapeRef.new(shape: SignInOptions, location_name: 'SignInOptions', traits: {"smithy.api#documentation" => "<p>A structure that describes the sign-in options for the access portal.</p>"}))
    PortalOptions.add_member(:visibility, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVisibility, location_name: 'Visibility', traits: {"smithy.api#default" => "ENABLED", "smithy.api#documentation" => "<p>Indicates whether this application is visible in the access portal.</p>"}))
    PortalOptions.type = Types::PortalOptions
    PrincipalType.add_member(:user, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER', traits: {"smithy.api#enumValue" => "USER"}))
    PrincipalType.add_member(:group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GROUP', traits: {"smithy.api#enumValue" => "GROUP"}))
    ProvisionPermissionSetRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>", "smithy.api#required" => {}}))
    ProvisionPermissionSetRequest.add_member(:permission_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetArn, location_name: 'PermissionSetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the permission set.</p>", "smithy.api#required" => {}}))
    ProvisionPermissionSetRequest.add_member(:target_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetId, location_name: 'TargetId', traits: {"smithy.api#documentation" => "<p>TargetID is an Amazon Web Services account identifier, (For example, 123456789012).</p>"}))
    ProvisionPermissionSetRequest.add_member(:target_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionTargetType, location_name: 'TargetType', traits: {"smithy.api#documentation" => "<p>The entity type for which the assignment will be created.</p>", "smithy.api#required" => {}}))
    ProvisionPermissionSetRequest.type = Types::ProvisionPermissionSetRequest
    ProvisionPermissionSetResponse.add_member(:permission_set_provisioning_status, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetProvisioningStatus, location_name: 'PermissionSetProvisioningStatus', traits: {"smithy.api#documentation" => "<p>The status object for the permission set provisioning operation.</p>"}))
    ProvisionPermissionSetResponse.type = Types::ProvisionPermissionSetResponse
    ProvisionTargetType.add_member(:aws_account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_ACCOUNT', traits: {"smithy.api#enumValue" => "AWS_ACCOUNT"}))
    ProvisionTargetType.add_member(:all_provisioned_accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL_PROVISIONED_ACCOUNTS', traits: {"smithy.api#enumValue" => "ALL_PROVISIONED_ACCOUNTS"}))
    ProvisioningStatus.add_member(:latest_permission_set_provisioned, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LATEST_PERMISSION_SET_PROVISIONED', traits: {"smithy.api#enumValue" => "LATEST_PERMISSION_SET_PROVISIONED"}))
    ProvisioningStatus.add_member(:latest_permission_set_not_provisioned, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LATEST_PERMISSION_SET_NOT_PROVISIONED', traits: {"smithy.api#enumValue" => "LATEST_PERMISSION_SET_NOT_PROVISIONED"}))
    PutApplicationAccessScopeRequest.add_member(:scope, Smithy::Schema::Shapes::ShapeRef.new(shape: Scope, location_name: 'Scope', traits: {"smithy.api#documentation" => "<p>Specifies the name of the access scope to be associated with the specified targets.</p>", "smithy.api#required" => {}}))
    PutApplicationAccessScopeRequest.add_member(:authorized_targets, Smithy::Schema::Shapes::ShapeRef.new(shape: ScopeTargets, location_name: 'AuthorizedTargets', traits: {"smithy.api#documentation" => "<p>Specifies an array list of ARNs that represent the authorized targets for this access scope.</p>"}))
    PutApplicationAccessScopeRequest.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'ApplicationArn', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the application with the access scope with the targets to add or update.</p>", "smithy.api#required" => {}}))
    PutApplicationAccessScopeRequest.type = Types::PutApplicationAccessScopeRequest
    PutApplicationAssignmentConfigurationRequest.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'ApplicationArn', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the application. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>", "smithy.api#required" => {}}))
    PutApplicationAssignmentConfigurationRequest.add_member(:assignment_required, Smithy::Schema::Shapes::ShapeRef.new(shape: AssignmentRequired, location_name: 'AssignmentRequired', traits: {"smithy.api#default" => true, "smithy.api#documentation" => "<p>If <code>AssignmentsRequired</code> is <code>true</code> (default value), users don’t have access to the application unless an assignment is created using the <a href=\"https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_CreateApplicationAssignment.html\">CreateApplicationAssignment API</a>. If <code>false</code>, all users have access to the application. </p>", "smithy.api#required" => {}}))
    PutApplicationAssignmentConfigurationRequest.type = Types::PutApplicationAssignmentConfigurationRequest
    PutApplicationAssignmentConfigurationResponse.type = Types::PutApplicationAssignmentConfigurationResponse
    PutApplicationAuthenticationMethodRequest.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'ApplicationArn', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the application with the authentication method to add or update.</p>", "smithy.api#required" => {}}))
    PutApplicationAuthenticationMethodRequest.add_member(:authentication_method_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationMethodType, location_name: 'AuthenticationMethodType', traits: {"smithy.api#documentation" => "<p>Specifies the type of the authentication method that you want to add or update.</p>", "smithy.api#required" => {}}))
    PutApplicationAuthenticationMethodRequest.add_member(:authentication_method, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationMethod, location_name: 'AuthenticationMethod', traits: {"smithy.api#documentation" => "<p>Specifies a structure that describes the authentication method to add or update. The structure type you provide is determined by the <code>AuthenticationMethodType</code> parameter.</p>", "smithy.api#required" => {}}))
    PutApplicationAuthenticationMethodRequest.type = Types::PutApplicationAuthenticationMethodRequest
    PutApplicationGrantRequest.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'ApplicationArn', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the application to update.</p>", "smithy.api#required" => {}}))
    PutApplicationGrantRequest.add_member(:grant_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GrantType, location_name: 'GrantType', traits: {"smithy.api#documentation" => "<p>Specifies the type of grant to update.</p>", "smithy.api#required" => {}}))
    PutApplicationGrantRequest.add_member(:grant, Smithy::Schema::Shapes::ShapeRef.new(shape: Grant, location_name: 'Grant', traits: {"smithy.api#documentation" => "<p>Specifies a structure that describes the grant to update.</p>", "smithy.api#required" => {}}))
    PutApplicationGrantRequest.type = Types::PutApplicationGrantRequest
    PutApplicationSessionConfigurationRequest.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'ApplicationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the application for which to update the session configuration.</p>", "smithy.api#required" => {}}))
    PutApplicationSessionConfigurationRequest.add_member(:user_background_session_application_status, Smithy::Schema::Shapes::ShapeRef.new(shape: UserBackgroundSessionApplicationStatus, location_name: 'UserBackgroundSessionApplicationStatus', traits: {"smithy.api#documentation" => "<p>The status of user background sessions for the application.</p>"}))
    PutApplicationSessionConfigurationRequest.type = Types::PutApplicationSessionConfigurationRequest
    PutApplicationSessionConfigurationResponse.type = Types::PutApplicationSessionConfigurationResponse
    PutInlinePolicyToPermissionSetRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>", "smithy.api#required" => {}}))
    PutInlinePolicyToPermissionSetRequest.add_member(:permission_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetArn, location_name: 'PermissionSetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the permission set.</p>", "smithy.api#required" => {}}))
    PutInlinePolicyToPermissionSetRequest.add_member(:inline_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetPolicyDocument, location_name: 'InlinePolicy', traits: {"smithy.api#documentation" => "<p>The inline policy to attach to a <a>PermissionSet</a>.</p>", "smithy.api#required" => {}}))
    PutInlinePolicyToPermissionSetRequest.type = Types::PutInlinePolicyToPermissionSetRequest
    PutInlinePolicyToPermissionSetResponse.type = Types::PutInlinePolicyToPermissionSetResponse
    PutPermissionsBoundaryToPermissionSetRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance under which the operation will be executed. </p>", "smithy.api#required" => {}}))
    PutPermissionsBoundaryToPermissionSetRequest.add_member(:permission_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetArn, location_name: 'PermissionSetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>PermissionSet</code>.</p>", "smithy.api#required" => {}}))
    PutPermissionsBoundaryToPermissionSetRequest.add_member(:permissions_boundary, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionsBoundary, location_name: 'PermissionsBoundary', traits: {"smithy.api#documentation" => "<p>The permissions boundary that you want to attach to a <code>PermissionSet</code>.</p>", "smithy.api#required" => {}}))
    PutPermissionsBoundaryToPermissionSetRequest.type = Types::PutPermissionsBoundaryToPermissionSetRequest
    PutPermissionsBoundaryToPermissionSetResponse.type = Types::PutPermissionsBoundaryToPermissionSetResponse
    RedirectUris.member = Smithy::Schema::Shapes::ShapeRef.new(shape: URI)
    RefreshTokenGrant.type = Types::RefreshTokenGrant
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundMessage, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceServerConfig.add_member(:scopes, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceServerScopes, location_name: 'Scopes', traits: {"smithy.api#documentation" => "<p>A list of the IAM Identity Center access scopes that are associated with this resource server.</p>"}))
    ResourceServerConfig.type = Types::ResourceServerConfig
    ResourceServerScopeDetails.add_member(:long_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'LongDescription', traits: {"smithy.api#documentation" => "<p>The description of an access scope for a resource server.</p>"}))
    ResourceServerScopeDetails.add_member(:detailed_title, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'DetailedTitle', traits: {"smithy.api#documentation" => "<p>The title of an access scope for a resource server.</p>"}))
    ResourceServerScopeDetails.type = Types::ResourceServerScopeDetails
    ResourceServerScopes.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceServerScope)
    ResourceServerScopes.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceServerScopeDetails)
    ScopeDetails.add_member(:scope, Smithy::Schema::Shapes::ShapeRef.new(shape: Scope, location_name: 'Scope', traits: {"smithy.api#documentation" => "<p>The name of the access scope.</p>", "smithy.api#required" => {}}))
    ScopeDetails.add_member(:authorized_targets, Smithy::Schema::Shapes::ShapeRef.new(shape: ScopeTargets, location_name: 'AuthorizedTargets', traits: {"smithy.api#documentation" => "<p>An array list of ARNs of applications.</p>"}))
    ScopeDetails.type = Types::ScopeDetails
    ScopeTargets.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ScopeTarget)
    Scopes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ScopeDetails)
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededMessage, location_name: 'Message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SignInOptions.add_member(:origin, Smithy::Schema::Shapes::ShapeRef.new(shape: SignInOrigin, location_name: 'Origin', traits: {"smithy.api#documentation" => "<p>This determines how IAM Identity Center navigates the user to the target application. It can be one of the following values:</p> <ul> <li> <p> <code>APPLICATION</code>: IAM Identity Center redirects the customer to the configured <code>ApplicationUrl</code>.</p> </li> <li> <p> <code>IDENTITY_CENTER</code>: IAM Identity Center uses SAML identity-provider initiated authentication to sign the customer directly into a SAML-based application.</p> </li> </ul>", "smithy.api#required" => {}}))
    SignInOptions.add_member(:application_url, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationUrl, location_name: 'ApplicationUrl', traits: {"smithy.api#documentation" => "<p>The URL that accepts authentication requests for an application. This is a required parameter if the <code>Origin</code> parameter is <code>APPLICATION</code>.</p>"}))
    SignInOptions.type = Types::SignInOptions
    SignInOrigin.add_member(:identity_center, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IDENTITY_CENTER', traits: {"smithy.api#enumValue" => "IDENTITY_CENTER"}))
    SignInOrigin.add_member(:application, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPLICATION', traits: {"smithy.api#enumValue" => "APPLICATION"}))
    StatusValues.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    StatusValues.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    StatusValues.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The key for the tag.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of the tag.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>"}))
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TaggableResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource with the tags to be listed.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A set of key-value pairs that are used to manage the resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TargetType.add_member(:aws_account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_ACCOUNT', traits: {"smithy.api#enumValue" => "AWS_ACCOUNT"}))
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingExceptionMessage, location_name: 'Message'))
    ThrottlingException.type = Types::ThrottlingException
    TokenExchangeGrant.type = Types::TokenExchangeGrant
    TokenIssuerAudiences.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TokenIssuerAudience)
    TrustedTokenIssuerConfiguration.add_member(:oidc_jwt_configuration, Types::TrustedTokenIssuerConfiguration::OidcJwtConfiguration, Smithy::Schema::Shapes::ShapeRef.new(shape: OidcJwtConfiguration, location_name: 'OidcJwtConfiguration', traits: {"smithy.api#documentation" => "<p>A structure that describes the settings for a trusted token issuer that works with OpenID Connect (OIDC) by using JSON Web Tokens (JWT).</p>"}))
    TrustedTokenIssuerConfiguration.add_member(:unknown, Types::TrustedTokenIssuerConfiguration::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    TrustedTokenIssuerConfiguration.type = Types::TrustedTokenIssuerConfiguration
    TrustedTokenIssuerList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedTokenIssuerMetadata)
    TrustedTokenIssuerMetadata.add_member(:trusted_token_issuer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedTokenIssuerArn, location_name: 'TrustedTokenIssuerArn', traits: {"smithy.api#documentation" => "<p>The ARN of the trusted token issuer configuration in the instance of IAM Identity Center.</p>"}))
    TrustedTokenIssuerMetadata.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedTokenIssuerName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the trusted token issuer configuration in the instance of IAM Identity Center.</p>"}))
    TrustedTokenIssuerMetadata.add_member(:trusted_token_issuer_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedTokenIssuerType, location_name: 'TrustedTokenIssuerType', traits: {"smithy.api#documentation" => "<p>The type of trusted token issuer.</p>"}))
    TrustedTokenIssuerMetadata.type = Types::TrustedTokenIssuerMetadata
    TrustedTokenIssuerType.add_member(:oidc_jwt, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OIDC_JWT', traits: {"smithy.api#enumValue" => "OIDC_JWT"}))
    TrustedTokenIssuerUpdateConfiguration.add_member(:oidc_jwt_configuration, Types::TrustedTokenIssuerUpdateConfiguration::OidcJwtConfiguration, Smithy::Schema::Shapes::ShapeRef.new(shape: OidcJwtUpdateConfiguration, location_name: 'OidcJwtConfiguration', traits: {"smithy.api#documentation" => "<p>A structure that describes an updated configuration for a trusted token issuer that uses OpenID Connect (OIDC) with JSON web tokens (JWT).</p>"}))
    TrustedTokenIssuerUpdateConfiguration.add_member(:unknown, Types::TrustedTokenIssuerUpdateConfiguration::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    TrustedTokenIssuerUpdateConfiguration.type = Types::TrustedTokenIssuerUpdateConfiguration
    UntagResourceRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>"}))
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TaggableResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource with the tags to be listed.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The keys of tags that are attached to the resource.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateApplicationPortalOptions.add_member(:sign_in_options, Smithy::Schema::Shapes::ShapeRef.new(shape: SignInOptions, location_name: 'SignInOptions'))
    UpdateApplicationPortalOptions.type = Types::UpdateApplicationPortalOptions
    UpdateApplicationRequest.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'ApplicationArn', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the application. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>", "smithy.api#required" => {}}))
    UpdateApplicationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationNameType, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Specifies the updated name for the application.</p>"}))
    UpdateApplicationRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the .</p>"}))
    UpdateApplicationRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Specifies whether the application is enabled or disabled.</p>"}))
    UpdateApplicationRequest.add_member(:portal_options, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationPortalOptions, location_name: 'PortalOptions', traits: {"smithy.api#documentation" => "<p>A structure that describes the options for the portal associated with an application.</p>"}))
    UpdateApplicationRequest.type = Types::UpdateApplicationRequest
    UpdateApplicationResponse.type = Types::UpdateApplicationResponse
    UpdateInstanceAccessControlAttributeConfigurationRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance under which the operation will be executed.</p>", "smithy.api#required" => {}}))
    UpdateInstanceAccessControlAttributeConfigurationRequest.add_member(:instance_access_control_attribute_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceAccessControlAttributeConfiguration, location_name: 'InstanceAccessControlAttributeConfiguration', traits: {"smithy.api#documentation" => "<p>Updates the attributes for your ABAC configuration.</p>", "smithy.api#required" => {}}))
    UpdateInstanceAccessControlAttributeConfigurationRequest.type = Types::UpdateInstanceAccessControlAttributeConfigurationRequest
    UpdateInstanceAccessControlAttributeConfigurationResponse.type = Types::UpdateInstanceAccessControlAttributeConfigurationResponse
    UpdateInstanceRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameType, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Updates the instance name.</p>", "smithy.api#required" => {}}))
    UpdateInstanceRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the instance of IAM Identity Center under which the operation will run. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>", "smithy.api#required" => {}}))
    UpdateInstanceRequest.type = Types::UpdateInstanceRequest
    UpdateInstanceResponse.type = Types::UpdateInstanceResponse
    UpdatePermissionSetRequest.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>", "smithy.api#required" => {}}))
    UpdatePermissionSetRequest.add_member(:permission_set_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetArn, location_name: 'PermissionSetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the permission set.</p>", "smithy.api#required" => {}}))
    UpdatePermissionSetRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionSetDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the <a>PermissionSet</a>.</p>"}))
    UpdatePermissionSetRequest.add_member(:session_duration, Smithy::Schema::Shapes::ShapeRef.new(shape: Duration, location_name: 'SessionDuration', traits: {"smithy.api#documentation" => "<p>The length of time that the application user sessions are valid for in the ISO-8601 standard.</p>"}))
    UpdatePermissionSetRequest.add_member(:relay_state, Smithy::Schema::Shapes::ShapeRef.new(shape: RelayState, location_name: 'RelayState', traits: {"smithy.api#documentation" => "<p>Used to redirect users within the application during the federation authentication process.</p>"}))
    UpdatePermissionSetRequest.type = Types::UpdatePermissionSetRequest
    UpdatePermissionSetResponse.type = Types::UpdatePermissionSetResponse
    UpdateTrustedTokenIssuerRequest.add_member(:trusted_token_issuer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedTokenIssuerArn, location_name: 'TrustedTokenIssuerArn', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the trusted token issuer configuration that you want to update.</p>", "smithy.api#required" => {}}))
    UpdateTrustedTokenIssuerRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedTokenIssuerName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Specifies the updated name to be applied to the trusted token issuer configuration.</p>"}))
    UpdateTrustedTokenIssuerRequest.add_member(:trusted_token_issuer_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedTokenIssuerUpdateConfiguration, location_name: 'TrustedTokenIssuerConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies a structure with settings to apply to the specified trusted token issuer. The settings that you can provide are determined by the type of the trusted token issuer that you are updating.</p>"}))
    UpdateTrustedTokenIssuerRequest.type = Types::UpdateTrustedTokenIssuerRequest
    UpdateTrustedTokenIssuerResponse.type = Types::UpdateTrustedTokenIssuerResponse
    UserBackgroundSessionApplicationStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    UserBackgroundSessionApplicationStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionMessage, location_name: 'Message'))
    ValidationException.type = Types::ValidationException

    SWBExternalService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.ssoadmin#SWBExternalService"
      service.name = "SWBExternalService"
      service.version = "2020-07-20"
      service.traits = {"aws.api#service" => {"sdkId" => "SSO Admin", "arnNamespace" => "sso", "cloudFormationName" => "SSO", "cloudTrailEventSource" => "sso.amazonaws.com", "endpointPrefix" => "sso"}, "aws.auth#sigv4" => {"name" => "sso"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#suppress" => ["DeprecatedShape"], "smithy.api#title" => "AWS Single Sign-On Admin"}
      service.add_operation(:attach_customer_managed_policy_reference_to_permission_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#AttachCustomerManagedPolicyReferenceToPermissionSet"
        operation.name = "AttachCustomerManagedPolicyReferenceToPermissionSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AttachCustomerManagedPolicyReferenceToPermissionSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AttachCustomerManagedPolicyReferenceToPermissionSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:attach_managed_policy_to_permission_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#AttachManagedPolicyToPermissionSet"
        operation.name = "AttachManagedPolicyToPermissionSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AttachManagedPolicyToPermissionSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AttachManagedPolicyToPermissionSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_account_assignment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#CreateAccountAssignment"
        operation.name = "CreateAccountAssignment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountAssignmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountAssignmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#CreateApplication"
        operation.name = "CreateApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_application_assignment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#CreateApplicationAssignment"
        operation.name = "CreateApplicationAssignment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationAssignmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationAssignmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#CreateInstance"
        operation.name = "CreateInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInstanceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInstanceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_instance_access_control_attribute_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#CreateInstanceAccessControlAttributeConfiguration"
        operation.name = "CreateInstanceAccessControlAttributeConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInstanceAccessControlAttributeConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInstanceAccessControlAttributeConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_permission_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#CreatePermissionSet"
        operation.name = "CreatePermissionSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePermissionSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePermissionSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_trusted_token_issuer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#CreateTrustedTokenIssuer"
        operation.name = "CreateTrustedTokenIssuer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTrustedTokenIssuerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTrustedTokenIssuerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_account_assignment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DeleteAccountAssignment"
        operation.name = "DeleteAccountAssignment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAccountAssignmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAccountAssignmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DeleteApplication"
        operation.name = "DeleteApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_application_access_scope, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DeleteApplicationAccessScope"
        operation.name = "DeleteApplicationAccessScope"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationAccessScopeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_application_assignment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DeleteApplicationAssignment"
        operation.name = "DeleteApplicationAssignment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationAssignmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationAssignmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_application_authentication_method, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DeleteApplicationAuthenticationMethod"
        operation.name = "DeleteApplicationAuthenticationMethod"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationAuthenticationMethodRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_application_grant, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DeleteApplicationGrant"
        operation.name = "DeleteApplicationGrant"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationGrantRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_inline_policy_from_permission_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DeleteInlinePolicyFromPermissionSet"
        operation.name = "DeleteInlinePolicyFromPermissionSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInlinePolicyFromPermissionSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInlinePolicyFromPermissionSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DeleteInstance"
        operation.name = "DeleteInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInstanceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInstanceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_instance_access_control_attribute_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DeleteInstanceAccessControlAttributeConfiguration"
        operation.name = "DeleteInstanceAccessControlAttributeConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInstanceAccessControlAttributeConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInstanceAccessControlAttributeConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_permission_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DeletePermissionSet"
        operation.name = "DeletePermissionSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePermissionSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePermissionSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_permissions_boundary_from_permission_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DeletePermissionsBoundaryFromPermissionSet"
        operation.name = "DeletePermissionsBoundaryFromPermissionSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePermissionsBoundaryFromPermissionSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePermissionsBoundaryFromPermissionSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_trusted_token_issuer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DeleteTrustedTokenIssuer"
        operation.name = "DeleteTrustedTokenIssuer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTrustedTokenIssuerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTrustedTokenIssuerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_account_assignment_creation_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DescribeAccountAssignmentCreationStatus"
        operation.name = "DescribeAccountAssignmentCreationStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountAssignmentCreationStatusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountAssignmentCreationStatusResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_account_assignment_deletion_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DescribeAccountAssignmentDeletionStatus"
        operation.name = "DescribeAccountAssignmentDeletionStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountAssignmentDeletionStatusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountAssignmentDeletionStatusResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DescribeApplication"
        operation.name = "DescribeApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_application_assignment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DescribeApplicationAssignment"
        operation.name = "DescribeApplicationAssignment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationAssignmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationAssignmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_application_provider, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DescribeApplicationProvider"
        operation.name = "DescribeApplicationProvider"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationProviderRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationProviderResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DescribeInstance"
        operation.name = "DescribeInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInstanceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInstanceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_instance_access_control_attribute_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DescribeInstanceAccessControlAttributeConfiguration"
        operation.name = "DescribeInstanceAccessControlAttributeConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInstanceAccessControlAttributeConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInstanceAccessControlAttributeConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_permission_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DescribePermissionSet"
        operation.name = "DescribePermissionSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePermissionSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePermissionSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_permission_set_provisioning_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DescribePermissionSetProvisioningStatus"
        operation.name = "DescribePermissionSetProvisioningStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePermissionSetProvisioningStatusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePermissionSetProvisioningStatusResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_trusted_token_issuer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DescribeTrustedTokenIssuer"
        operation.name = "DescribeTrustedTokenIssuer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTrustedTokenIssuerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTrustedTokenIssuerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:detach_customer_managed_policy_reference_from_permission_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DetachCustomerManagedPolicyReferenceFromPermissionSet"
        operation.name = "DetachCustomerManagedPolicyReferenceFromPermissionSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DetachCustomerManagedPolicyReferenceFromPermissionSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DetachCustomerManagedPolicyReferenceFromPermissionSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:detach_managed_policy_from_permission_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DetachManagedPolicyFromPermissionSet"
        operation.name = "DetachManagedPolicyFromPermissionSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DetachManagedPolicyFromPermissionSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DetachManagedPolicyFromPermissionSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_application_access_scope, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#GetApplicationAccessScope"
        operation.name = "GetApplicationAccessScope"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationAccessScopeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationAccessScopeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_application_assignment_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#GetApplicationAssignmentConfiguration"
        operation.name = "GetApplicationAssignmentConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationAssignmentConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationAssignmentConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_application_authentication_method, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#GetApplicationAuthenticationMethod"
        operation.name = "GetApplicationAuthenticationMethod"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationAuthenticationMethodRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationAuthenticationMethodResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_application_grant, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#GetApplicationGrant"
        operation.name = "GetApplicationGrant"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationGrantRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationGrantResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_application_session_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#GetApplicationSessionConfiguration"
        operation.name = "GetApplicationSessionConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationSessionConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationSessionConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_inline_policy_for_permission_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#GetInlinePolicyForPermissionSet"
        operation.name = "GetInlinePolicyForPermissionSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInlinePolicyForPermissionSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInlinePolicyForPermissionSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_permissions_boundary_for_permission_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#GetPermissionsBoundaryForPermissionSet"
        operation.name = "GetPermissionsBoundaryForPermissionSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPermissionsBoundaryForPermissionSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPermissionsBoundaryForPermissionSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_account_assignment_creation_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListAccountAssignmentCreationStatus"
        operation.name = "ListAccountAssignmentCreationStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountAssignmentCreationStatusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountAssignmentCreationStatusResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAccountAssignmentCreationStatus.new
      end)
      service.add_operation(:list_account_assignment_deletion_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListAccountAssignmentDeletionStatus"
        operation.name = "ListAccountAssignmentDeletionStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountAssignmentDeletionStatusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountAssignmentDeletionStatusResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAccountAssignmentDeletionStatus.new
      end)
      service.add_operation(:list_account_assignments, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListAccountAssignments"
        operation.name = "ListAccountAssignments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountAssignmentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountAssignmentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAccountAssignments.new
      end)
      service.add_operation(:list_account_assignments_for_principal, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListAccountAssignmentsForPrincipal"
        operation.name = "ListAccountAssignmentsForPrincipal"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountAssignmentsForPrincipalRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountAssignmentsForPrincipalResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAccountAssignmentsForPrincipal.new
      end)
      service.add_operation(:list_accounts_for_provisioned_permission_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListAccountsForProvisionedPermissionSet"
        operation.name = "ListAccountsForProvisionedPermissionSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountsForProvisionedPermissionSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountsForProvisionedPermissionSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAccountsForProvisionedPermissionSet.new
      end)
      service.add_operation(:list_application_access_scopes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListApplicationAccessScopes"
        operation.name = "ListApplicationAccessScopes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationAccessScopesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationAccessScopesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListApplicationAccessScopes.new
      end)
      service.add_operation(:list_application_assignments, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListApplicationAssignments"
        operation.name = "ListApplicationAssignments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationAssignmentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationAssignmentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListApplicationAssignments.new
      end)
      service.add_operation(:list_application_assignments_for_principal, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListApplicationAssignmentsForPrincipal"
        operation.name = "ListApplicationAssignmentsForPrincipal"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationAssignmentsForPrincipalRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationAssignmentsForPrincipalResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListApplicationAssignmentsForPrincipal.new
      end)
      service.add_operation(:list_application_authentication_methods, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListApplicationAuthenticationMethods"
        operation.name = "ListApplicationAuthenticationMethods"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationAuthenticationMethodsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationAuthenticationMethodsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListApplicationAuthenticationMethods.new
      end)
      service.add_operation(:list_application_grants, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListApplicationGrants"
        operation.name = "ListApplicationGrants"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationGrantsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationGrantsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListApplicationGrants.new
      end)
      service.add_operation(:list_application_providers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListApplicationProviders"
        operation.name = "ListApplicationProviders"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationProvidersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationProvidersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListApplicationProviders.new
      end)
      service.add_operation(:list_applications, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListApplications"
        operation.name = "ListApplications"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListApplications.new
      end)
      service.add_operation(:list_customer_managed_policy_references_in_permission_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListCustomerManagedPolicyReferencesInPermissionSet"
        operation.name = "ListCustomerManagedPolicyReferencesInPermissionSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomerManagedPolicyReferencesInPermissionSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomerManagedPolicyReferencesInPermissionSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListCustomerManagedPolicyReferencesInPermissionSet.new
      end)
      service.add_operation(:list_instances, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListInstances"
        operation.name = "ListInstances"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInstancesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInstancesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListInstances.new
      end)
      service.add_operation(:list_managed_policies_in_permission_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListManagedPoliciesInPermissionSet"
        operation.name = "ListManagedPoliciesInPermissionSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListManagedPoliciesInPermissionSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListManagedPoliciesInPermissionSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListManagedPoliciesInPermissionSet.new
      end)
      service.add_operation(:list_permission_set_provisioning_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListPermissionSetProvisioningStatus"
        operation.name = "ListPermissionSetProvisioningStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPermissionSetProvisioningStatusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPermissionSetProvisioningStatusResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListPermissionSetProvisioningStatus.new
      end)
      service.add_operation(:list_permission_sets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListPermissionSets"
        operation.name = "ListPermissionSets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPermissionSetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPermissionSetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListPermissionSets.new
      end)
      service.add_operation(:list_permission_sets_provisioned_to_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListPermissionSetsProvisionedToAccount"
        operation.name = "ListPermissionSetsProvisionedToAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPermissionSetsProvisionedToAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPermissionSetsProvisionedToAccountResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListPermissionSetsProvisionedToAccount.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:list_trusted_token_issuers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListTrustedTokenIssuers"
        operation.name = "ListTrustedTokenIssuers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTrustedTokenIssuersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTrustedTokenIssuersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTrustedTokenIssuers.new
      end)
      service.add_operation(:provision_permission_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ProvisionPermissionSet"
        operation.name = "ProvisionPermissionSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionPermissionSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionPermissionSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:put_application_access_scope, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#PutApplicationAccessScope"
        operation.name = "PutApplicationAccessScope"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutApplicationAccessScopeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_application_assignment_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#PutApplicationAssignmentConfiguration"
        operation.name = "PutApplicationAssignmentConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutApplicationAssignmentConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutApplicationAssignmentConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_application_authentication_method, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#PutApplicationAuthenticationMethod"
        operation.name = "PutApplicationAuthenticationMethod"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutApplicationAuthenticationMethodRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_application_grant, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#PutApplicationGrant"
        operation.name = "PutApplicationGrant"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutApplicationGrantRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_application_session_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#PutApplicationSessionConfiguration"
        operation.name = "PutApplicationSessionConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutApplicationSessionConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutApplicationSessionConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_inline_policy_to_permission_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#PutInlinePolicyToPermissionSet"
        operation.name = "PutInlinePolicyToPermissionSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutInlinePolicyToPermissionSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutInlinePolicyToPermissionSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:put_permissions_boundary_to_permission_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#PutPermissionsBoundaryToPermissionSet"
        operation.name = "PutPermissionsBoundaryToPermissionSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutPermissionsBoundaryToPermissionSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutPermissionsBoundaryToPermissionSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#UpdateApplication"
        operation.name = "UpdateApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#UpdateInstance"
        operation.name = "UpdateInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateInstanceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateInstanceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_instance_access_control_attribute_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#UpdateInstanceAccessControlAttributeConfiguration"
        operation.name = "UpdateInstanceAccessControlAttributeConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateInstanceAccessControlAttributeConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateInstanceAccessControlAttributeConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_permission_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#UpdatePermissionSet"
        operation.name = "UpdatePermissionSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePermissionSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePermissionSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_trusted_token_issuer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#UpdateTrustedTokenIssuer"
        operation.name = "UpdateTrustedTokenIssuer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTrustedTokenIssuerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTrustedTokenIssuerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
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
