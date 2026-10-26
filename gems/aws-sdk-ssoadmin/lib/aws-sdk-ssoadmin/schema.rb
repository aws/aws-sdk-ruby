# frozen_string_literal: true

# This is generated code!

module Aws::SSOAdmin
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessControlAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#AccessControlAttribute", name: "AccessControlAttribute")
    AccessControlAttributeKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#AccessControlAttributeKey", name: "AccessControlAttributeKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@]+$"})
    AccessControlAttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssoadmin#AccessControlAttributeList", name: "AccessControlAttributeList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    AccessControlAttributeValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#AccessControlAttributeValue", name: "AccessControlAttributeValue")
    AccessControlAttributeValueSource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#AccessControlAttributeValueSource", name: "AccessControlAttributeValueSource", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@\\[\\]\\{\\}\\$\\\\\"]*$"})
    AccessControlAttributeValueSourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssoadmin#AccessControlAttributeValueSourceList", name: "AccessControlAttributeValueSourceList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessDeniedExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#AccessDeniedExceptionMessage", name: "AccessDeniedExceptionMessage")
    AccessDeniedExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssoadmin#AccessDeniedExceptionReason", name: "AccessDeniedExceptionReason")
    AccountAssignment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#AccountAssignment", name: "AccountAssignment")
    AccountAssignmentForPrincipal = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#AccountAssignmentForPrincipal", name: "AccountAssignmentForPrincipal")
    AccountAssignmentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssoadmin#AccountAssignmentList", name: "AccountAssignmentList")
    AccountAssignmentListForPrincipal = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssoadmin#AccountAssignmentListForPrincipal", name: "AccountAssignmentListForPrincipal")
    AccountAssignmentOperationStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#AccountAssignmentOperationStatus", name: "AccountAssignmentOperationStatus")
    AccountAssignmentOperationStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssoadmin#AccountAssignmentOperationStatusList", name: "AccountAssignmentOperationStatusList")
    AccountAssignmentOperationStatusMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#AccountAssignmentOperationStatusMetadata", name: "AccountAssignmentOperationStatusMetadata")
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    AccountList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssoadmin#AccountList", name: "AccountList")
    ActorPolicyDocument = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.ssoadmin#ActorPolicyDocument", name: "ActorPolicyDocument")
    AddRegionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#AddRegionRequest", name: "AddRegionRequest")
    AddRegionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#AddRegionResponse", name: "AddRegionResponse")
    Application = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#Application", name: "Application")
    ApplicationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#ApplicationArn", name: "ApplicationArn", traits: {"smithy.api#length" => {"min" => 10, "max" => 1224}, "smithy.api#pattern" => "^arn:aws(-[a-z]{1,5}){0,3}:sso::\\d{12}:application/(sso)?ins-[a-zA-Z0-9-.]{16}/apl-[a-zA-Z0-9]{16}$"})
    ApplicationAssignment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ApplicationAssignment", name: "ApplicationAssignment")
    ApplicationAssignmentForPrincipal = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ApplicationAssignmentForPrincipal", name: "ApplicationAssignmentForPrincipal")
    ApplicationAssignmentListForPrincipal = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssoadmin#ApplicationAssignmentListForPrincipal", name: "ApplicationAssignmentListForPrincipal")
    ApplicationAssignmentsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssoadmin#ApplicationAssignmentsList", name: "ApplicationAssignmentsList")
    ApplicationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssoadmin#ApplicationList", name: "ApplicationList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ApplicationNameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#ApplicationNameType", name: "ApplicationNameType", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    ApplicationProvider = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ApplicationProvider", name: "ApplicationProvider")
    ApplicationProviderArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#ApplicationProviderArn", name: "ApplicationProviderArn", traits: {"smithy.api#length" => {"min" => 10, "max" => 1224}, "smithy.api#pattern" => "^arn:aws(-[a-z]{1,5}){0,3}:sso::aws:applicationProvider/[a-zA-Z0-9-/]+$"})
    ApplicationProviderList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssoadmin#ApplicationProviderList", name: "ApplicationProviderList")
    ApplicationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssoadmin#ApplicationStatus", name: "ApplicationStatus")
    ApplicationUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#ApplicationUrl", name: "ApplicationUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^http(s)?:\\/\\/[-a-zA-Z0-9+&@#\\/%?=~_|!:,.;]*[-a-zA-Z0-9+&bb@#\\/%?=~_|]$"})
    ApplicationVisibility = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssoadmin#ApplicationVisibility", name: "ApplicationVisibility", traits: {"smithy.api#default" => "ENABLED"})
    AssignmentRequired = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.ssoadmin#AssignmentRequired", name: "AssignmentRequired", traits: {"smithy.api#default" => true})
    AttachCustomerManagedPolicyReferenceToPermissionSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#AttachCustomerManagedPolicyReferenceToPermissionSetRequest", name: "AttachCustomerManagedPolicyReferenceToPermissionSetRequest")
    AttachCustomerManagedPolicyReferenceToPermissionSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#AttachCustomerManagedPolicyReferenceToPermissionSetResponse", name: "AttachCustomerManagedPolicyReferenceToPermissionSetResponse")
    AttachManagedPolicyToPermissionSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#AttachManagedPolicyToPermissionSetRequest", name: "AttachManagedPolicyToPermissionSetRequest")
    AttachManagedPolicyToPermissionSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#AttachManagedPolicyToPermissionSetResponse", name: "AttachManagedPolicyToPermissionSetResponse")
    AttachedManagedPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#AttachedManagedPolicy", name: "AttachedManagedPolicy")
    AttachedManagedPolicyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssoadmin#AttachedManagedPolicyList", name: "AttachedManagedPolicyList")
    AuthenticationMethod = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.ssoadmin#AuthenticationMethod", name: "AuthenticationMethod")
    AuthenticationMethodItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#AuthenticationMethodItem", name: "AuthenticationMethodItem")
    AuthenticationMethodType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssoadmin#AuthenticationMethodType", name: "AuthenticationMethodType")
    AuthenticationMethods = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssoadmin#AuthenticationMethods", name: "AuthenticationMethods")
    AuthorizationCodeGrant = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#AuthorizationCodeGrant", name: "AuthorizationCodeGrant")
    AuthorizedTokenIssuer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#AuthorizedTokenIssuer", name: "AuthorizedTokenIssuer")
    AuthorizedTokenIssuers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssoadmin#AuthorizedTokenIssuers", name: "AuthorizedTokenIssuers", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ClaimAttributePath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#ClaimAttributePath", name: "ClaimAttributePath", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^\\p{L}+(?:(\\.|\\_)\\p{L}+){0,2}$"})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[!-~]+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#ConflictExceptionMessage", name: "ConflictExceptionMessage")
    CreateAccountAssignmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#CreateAccountAssignmentRequest", name: "CreateAccountAssignmentRequest")
    CreateAccountAssignmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#CreateAccountAssignmentResponse", name: "CreateAccountAssignmentResponse")
    CreateApplicationAssignmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#CreateApplicationAssignmentRequest", name: "CreateApplicationAssignmentRequest")
    CreateApplicationAssignmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#CreateApplicationAssignmentResponse", name: "CreateApplicationAssignmentResponse")
    CreateApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#CreateApplicationRequest", name: "CreateApplicationRequest")
    CreateApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#CreateApplicationResponse", name: "CreateApplicationResponse")
    CreateInstanceAccessControlAttributeConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#CreateInstanceAccessControlAttributeConfigurationRequest", name: "CreateInstanceAccessControlAttributeConfigurationRequest")
    CreateInstanceAccessControlAttributeConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#CreateInstanceAccessControlAttributeConfigurationResponse", name: "CreateInstanceAccessControlAttributeConfigurationResponse")
    CreateInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#CreateInstanceRequest", name: "CreateInstanceRequest")
    CreateInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#CreateInstanceResponse", name: "CreateInstanceResponse")
    CreatePermissionSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#CreatePermissionSetRequest", name: "CreatePermissionSetRequest")
    CreatePermissionSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#CreatePermissionSetResponse", name: "CreatePermissionSetResponse")
    CreateTrustedTokenIssuerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#CreateTrustedTokenIssuerRequest", name: "CreateTrustedTokenIssuerRequest")
    CreateTrustedTokenIssuerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#CreateTrustedTokenIssuerResponse", name: "CreateTrustedTokenIssuerResponse")
    CustomerManagedPolicyReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#CustomerManagedPolicyReference", name: "CustomerManagedPolicyReference")
    CustomerManagedPolicyReferenceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssoadmin#CustomerManagedPolicyReferenceList", name: "CustomerManagedPolicyReferenceList")
    Date = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.ssoadmin#Date", name: "Date")
    DeleteAccountAssignmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DeleteAccountAssignmentRequest", name: "DeleteAccountAssignmentRequest")
    DeleteAccountAssignmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DeleteAccountAssignmentResponse", name: "DeleteAccountAssignmentResponse")
    DeleteApplicationAccessScopeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DeleteApplicationAccessScopeRequest", name: "DeleteApplicationAccessScopeRequest")
    DeleteApplicationAssignmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DeleteApplicationAssignmentRequest", name: "DeleteApplicationAssignmentRequest")
    DeleteApplicationAssignmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DeleteApplicationAssignmentResponse", name: "DeleteApplicationAssignmentResponse")
    DeleteApplicationAuthenticationMethodRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DeleteApplicationAuthenticationMethodRequest", name: "DeleteApplicationAuthenticationMethodRequest")
    DeleteApplicationGrantRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DeleteApplicationGrantRequest", name: "DeleteApplicationGrantRequest")
    DeleteApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DeleteApplicationRequest", name: "DeleteApplicationRequest")
    DeleteApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DeleteApplicationResponse", name: "DeleteApplicationResponse")
    DeleteInlinePolicyFromPermissionSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DeleteInlinePolicyFromPermissionSetRequest", name: "DeleteInlinePolicyFromPermissionSetRequest")
    DeleteInlinePolicyFromPermissionSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DeleteInlinePolicyFromPermissionSetResponse", name: "DeleteInlinePolicyFromPermissionSetResponse")
    DeleteInstanceAccessControlAttributeConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DeleteInstanceAccessControlAttributeConfigurationRequest", name: "DeleteInstanceAccessControlAttributeConfigurationRequest")
    DeleteInstanceAccessControlAttributeConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DeleteInstanceAccessControlAttributeConfigurationResponse", name: "DeleteInstanceAccessControlAttributeConfigurationResponse")
    DeleteInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DeleteInstanceRequest", name: "DeleteInstanceRequest")
    DeleteInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DeleteInstanceResponse", name: "DeleteInstanceResponse")
    DeletePermissionSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DeletePermissionSetRequest", name: "DeletePermissionSetRequest")
    DeletePermissionSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DeletePermissionSetResponse", name: "DeletePermissionSetResponse")
    DeletePermissionsBoundaryFromPermissionSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DeletePermissionsBoundaryFromPermissionSetRequest", name: "DeletePermissionsBoundaryFromPermissionSetRequest")
    DeletePermissionsBoundaryFromPermissionSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DeletePermissionsBoundaryFromPermissionSetResponse", name: "DeletePermissionsBoundaryFromPermissionSetResponse")
    DeleteTrustedTokenIssuerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DeleteTrustedTokenIssuerRequest", name: "DeleteTrustedTokenIssuerRequest")
    DeleteTrustedTokenIssuerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DeleteTrustedTokenIssuerResponse", name: "DeleteTrustedTokenIssuerResponse")
    DescribeAccountAssignmentCreationStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DescribeAccountAssignmentCreationStatusRequest", name: "DescribeAccountAssignmentCreationStatusRequest")
    DescribeAccountAssignmentCreationStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DescribeAccountAssignmentCreationStatusResponse", name: "DescribeAccountAssignmentCreationStatusResponse")
    DescribeAccountAssignmentDeletionStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DescribeAccountAssignmentDeletionStatusRequest", name: "DescribeAccountAssignmentDeletionStatusRequest")
    DescribeAccountAssignmentDeletionStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DescribeAccountAssignmentDeletionStatusResponse", name: "DescribeAccountAssignmentDeletionStatusResponse")
    DescribeApplicationAssignmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DescribeApplicationAssignmentRequest", name: "DescribeApplicationAssignmentRequest")
    DescribeApplicationAssignmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DescribeApplicationAssignmentResponse", name: "DescribeApplicationAssignmentResponse")
    DescribeApplicationProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DescribeApplicationProviderRequest", name: "DescribeApplicationProviderRequest")
    DescribeApplicationProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DescribeApplicationProviderResponse", name: "DescribeApplicationProviderResponse")
    DescribeApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DescribeApplicationRequest", name: "DescribeApplicationRequest")
    DescribeApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DescribeApplicationResponse", name: "DescribeApplicationResponse")
    DescribeInstanceAccessControlAttributeConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DescribeInstanceAccessControlAttributeConfigurationRequest", name: "DescribeInstanceAccessControlAttributeConfigurationRequest")
    DescribeInstanceAccessControlAttributeConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DescribeInstanceAccessControlAttributeConfigurationResponse", name: "DescribeInstanceAccessControlAttributeConfigurationResponse")
    DescribeInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DescribeInstanceRequest", name: "DescribeInstanceRequest")
    DescribeInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DescribeInstanceResponse", name: "DescribeInstanceResponse")
    DescribePermissionSetProvisioningStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DescribePermissionSetProvisioningStatusRequest", name: "DescribePermissionSetProvisioningStatusRequest")
    DescribePermissionSetProvisioningStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DescribePermissionSetProvisioningStatusResponse", name: "DescribePermissionSetProvisioningStatusResponse")
    DescribePermissionSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DescribePermissionSetRequest", name: "DescribePermissionSetRequest")
    DescribePermissionSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DescribePermissionSetResponse", name: "DescribePermissionSetResponse")
    DescribeRegionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DescribeRegionRequest", name: "DescribeRegionRequest")
    DescribeRegionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DescribeRegionResponse", name: "DescribeRegionResponse")
    DescribeTrustedTokenIssuerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DescribeTrustedTokenIssuerRequest", name: "DescribeTrustedTokenIssuerRequest")
    DescribeTrustedTokenIssuerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DescribeTrustedTokenIssuerResponse", name: "DescribeTrustedTokenIssuerResponse")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    DetachCustomerManagedPolicyReferenceFromPermissionSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DetachCustomerManagedPolicyReferenceFromPermissionSetRequest", name: "DetachCustomerManagedPolicyReferenceFromPermissionSetRequest")
    DetachCustomerManagedPolicyReferenceFromPermissionSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DetachCustomerManagedPolicyReferenceFromPermissionSetResponse", name: "DetachCustomerManagedPolicyReferenceFromPermissionSetResponse")
    DetachManagedPolicyFromPermissionSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DetachManagedPolicyFromPermissionSetRequest", name: "DetachManagedPolicyFromPermissionSetRequest")
    DetachManagedPolicyFromPermissionSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DetachManagedPolicyFromPermissionSetResponse", name: "DetachManagedPolicyFromPermissionSetResponse")
    DisplayData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#DisplayData", name: "DisplayData")
    Duration = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#Duration", name: "Duration", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^(-?)P(?=\\d|T\\d)(?:(\\d+)Y)?(?:(\\d+)M)?(?:(\\d+)([DW]))?(?:T(?:(\\d+)H)?(?:(\\d+)M)?(?:(\\d+(?:\\.\\d+)?)S)?)?$"})
    EncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#EncryptionConfiguration", name: "EncryptionConfiguration")
    EncryptionConfigurationDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#EncryptionConfigurationDetails", name: "EncryptionConfigurationDetails")
    FederationProtocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssoadmin#FederationProtocol", name: "FederationProtocol")
    GetApplicationAccessScopeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#GetApplicationAccessScopeRequest", name: "GetApplicationAccessScopeRequest")
    GetApplicationAccessScopeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#GetApplicationAccessScopeResponse", name: "GetApplicationAccessScopeResponse")
    GetApplicationAssignmentConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#GetApplicationAssignmentConfigurationRequest", name: "GetApplicationAssignmentConfigurationRequest")
    GetApplicationAssignmentConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#GetApplicationAssignmentConfigurationResponse", name: "GetApplicationAssignmentConfigurationResponse")
    GetApplicationAuthenticationMethodRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#GetApplicationAuthenticationMethodRequest", name: "GetApplicationAuthenticationMethodRequest")
    GetApplicationAuthenticationMethodResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#GetApplicationAuthenticationMethodResponse", name: "GetApplicationAuthenticationMethodResponse")
    GetApplicationGrantRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#GetApplicationGrantRequest", name: "GetApplicationGrantRequest")
    GetApplicationGrantResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#GetApplicationGrantResponse", name: "GetApplicationGrantResponse")
    GetApplicationSessionConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#GetApplicationSessionConfigurationRequest", name: "GetApplicationSessionConfigurationRequest")
    GetApplicationSessionConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#GetApplicationSessionConfigurationResponse", name: "GetApplicationSessionConfigurationResponse")
    GetInlinePolicyForPermissionSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#GetInlinePolicyForPermissionSetRequest", name: "GetInlinePolicyForPermissionSetRequest")
    GetInlinePolicyForPermissionSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#GetInlinePolicyForPermissionSetResponse", name: "GetInlinePolicyForPermissionSetResponse")
    GetPermissionsBoundaryForPermissionSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#GetPermissionsBoundaryForPermissionSetRequest", name: "GetPermissionsBoundaryForPermissionSetRequest")
    GetPermissionsBoundaryForPermissionSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#GetPermissionsBoundaryForPermissionSetResponse", name: "GetPermissionsBoundaryForPermissionSetResponse")
    Grant = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.ssoadmin#Grant", name: "Grant")
    GrantItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#GrantItem", name: "GrantItem")
    GrantType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssoadmin#GrantType", name: "GrantType")
    Grants = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssoadmin#Grants", name: "Grants")
    IamAuthenticationMethod = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#IamAuthenticationMethod", name: "IamAuthenticationMethod")
    IconUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#IconUrl", name: "IconUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 768}, "smithy.api#pattern" => "^(http|https):\\/\\/.*$"})
    Id = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#Id", name: "Id", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-]*$"})
    IdentityStoreArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#IdentityStoreArn", name: "IdentityStoreArn")
    InstanceAccessControlAttributeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#InstanceAccessControlAttributeConfiguration", name: "InstanceAccessControlAttributeConfiguration")
    InstanceAccessControlAttributeConfigurationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssoadmin#InstanceAccessControlAttributeConfigurationStatus", name: "InstanceAccessControlAttributeConfigurationStatus")
    InstanceAccessControlAttributeConfigurationStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#InstanceAccessControlAttributeConfigurationStatusReason", name: "InstanceAccessControlAttributeConfigurationStatusReason")
    InstanceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#InstanceArn", name: "InstanceArn", traits: {"smithy.api#length" => {"min" => 10, "max" => 1224}, "smithy.api#pattern" => "^arn:aws(-[a-z]{1,5}){0,3}:sso:::instance/(sso)?ins-[a-zA-Z0-9-.]{16}$"})
    InstanceIdentityStoreArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#InstanceIdentityStoreArn", name: "InstanceIdentityStoreArn", traits: {"smithy.api#length" => {"min" => 62, "max" => 93}, "smithy.api#pattern" => "^arn:aws(-[a-z]{1,5}){0,3}:identitystore::\\d{12}:identitystore/(d-[0-9a-f]{10}|[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})$"})
    InstanceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssoadmin#InstanceList", name: "InstanceList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    InstanceMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#InstanceMetadata", name: "InstanceMetadata")
    InstanceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssoadmin#InstanceStatus", name: "InstanceStatus")
    InternalFailureMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#InternalFailureMessage", name: "InternalFailureMessage")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    IsPrimaryRegion = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.ssoadmin#IsPrimaryRegion", name: "IsPrimaryRegion", traits: {"smithy.api#default" => false})
    JMESPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#JMESPath", name: "JMESPath", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^\\p{L}+(?:\\.\\p{L}+){0,2}$"})
    JwksRetrievalOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssoadmin#JwksRetrievalOption", name: "JwksRetrievalOption")
    JwtBearerGrant = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#JwtBearerGrant", name: "JwtBearerGrant")
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#KmsKeyArn", name: "KmsKeyArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[a-z]{1,5}){0,3}:kms:([a-z]{2,}(-[a-z0-9]+)+){1}:[0-9]{12}:key/(mrk-[a-f0-9]{32}|[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})$"})
    KmsKeyStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssoadmin#KmsKeyStatus", name: "KmsKeyStatus")
    KmsKeyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssoadmin#KmsKeyType", name: "KmsKeyType")
    ListAccountAssignmentCreationStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListAccountAssignmentCreationStatusRequest", name: "ListAccountAssignmentCreationStatusRequest")
    ListAccountAssignmentCreationStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListAccountAssignmentCreationStatusResponse", name: "ListAccountAssignmentCreationStatusResponse")
    ListAccountAssignmentDeletionStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListAccountAssignmentDeletionStatusRequest", name: "ListAccountAssignmentDeletionStatusRequest")
    ListAccountAssignmentDeletionStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListAccountAssignmentDeletionStatusResponse", name: "ListAccountAssignmentDeletionStatusResponse")
    ListAccountAssignmentsFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListAccountAssignmentsFilter", name: "ListAccountAssignmentsFilter")
    ListAccountAssignmentsForPrincipalRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListAccountAssignmentsForPrincipalRequest", name: "ListAccountAssignmentsForPrincipalRequest")
    ListAccountAssignmentsForPrincipalResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListAccountAssignmentsForPrincipalResponse", name: "ListAccountAssignmentsForPrincipalResponse")
    ListAccountAssignmentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListAccountAssignmentsRequest", name: "ListAccountAssignmentsRequest")
    ListAccountAssignmentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListAccountAssignmentsResponse", name: "ListAccountAssignmentsResponse")
    ListAccountsForProvisionedPermissionSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListAccountsForProvisionedPermissionSetRequest", name: "ListAccountsForProvisionedPermissionSetRequest")
    ListAccountsForProvisionedPermissionSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListAccountsForProvisionedPermissionSetResponse", name: "ListAccountsForProvisionedPermissionSetResponse")
    ListApplicationAccessScopesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListApplicationAccessScopesRequest", name: "ListApplicationAccessScopesRequest")
    ListApplicationAccessScopesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListApplicationAccessScopesResponse", name: "ListApplicationAccessScopesResponse")
    ListApplicationAssignmentsFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListApplicationAssignmentsFilter", name: "ListApplicationAssignmentsFilter")
    ListApplicationAssignmentsForPrincipalRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListApplicationAssignmentsForPrincipalRequest", name: "ListApplicationAssignmentsForPrincipalRequest")
    ListApplicationAssignmentsForPrincipalResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListApplicationAssignmentsForPrincipalResponse", name: "ListApplicationAssignmentsForPrincipalResponse")
    ListApplicationAssignmentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListApplicationAssignmentsRequest", name: "ListApplicationAssignmentsRequest")
    ListApplicationAssignmentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListApplicationAssignmentsResponse", name: "ListApplicationAssignmentsResponse")
    ListApplicationAuthenticationMethodsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListApplicationAuthenticationMethodsRequest", name: "ListApplicationAuthenticationMethodsRequest")
    ListApplicationAuthenticationMethodsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListApplicationAuthenticationMethodsResponse", name: "ListApplicationAuthenticationMethodsResponse")
    ListApplicationGrantsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListApplicationGrantsRequest", name: "ListApplicationGrantsRequest")
    ListApplicationGrantsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListApplicationGrantsResponse", name: "ListApplicationGrantsResponse")
    ListApplicationProvidersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListApplicationProvidersRequest", name: "ListApplicationProvidersRequest")
    ListApplicationProvidersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListApplicationProvidersResponse", name: "ListApplicationProvidersResponse")
    ListApplicationsFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListApplicationsFilter", name: "ListApplicationsFilter")
    ListApplicationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListApplicationsRequest", name: "ListApplicationsRequest")
    ListApplicationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListApplicationsResponse", name: "ListApplicationsResponse")
    ListCustomerManagedPolicyReferencesInPermissionSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListCustomerManagedPolicyReferencesInPermissionSetRequest", name: "ListCustomerManagedPolicyReferencesInPermissionSetRequest")
    ListCustomerManagedPolicyReferencesInPermissionSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListCustomerManagedPolicyReferencesInPermissionSetResponse", name: "ListCustomerManagedPolicyReferencesInPermissionSetResponse")
    ListInstancesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListInstancesRequest", name: "ListInstancesRequest")
    ListInstancesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListInstancesResponse", name: "ListInstancesResponse")
    ListManagedPoliciesInPermissionSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListManagedPoliciesInPermissionSetRequest", name: "ListManagedPoliciesInPermissionSetRequest")
    ListManagedPoliciesInPermissionSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListManagedPoliciesInPermissionSetResponse", name: "ListManagedPoliciesInPermissionSetResponse")
    ListPermissionSetProvisioningStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListPermissionSetProvisioningStatusRequest", name: "ListPermissionSetProvisioningStatusRequest")
    ListPermissionSetProvisioningStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListPermissionSetProvisioningStatusResponse", name: "ListPermissionSetProvisioningStatusResponse")
    ListPermissionSetsProvisionedToAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListPermissionSetsProvisionedToAccountRequest", name: "ListPermissionSetsProvisionedToAccountRequest")
    ListPermissionSetsProvisionedToAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListPermissionSetsProvisionedToAccountResponse", name: "ListPermissionSetsProvisionedToAccountResponse")
    ListPermissionSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListPermissionSetsRequest", name: "ListPermissionSetsRequest")
    ListPermissionSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListPermissionSetsResponse", name: "ListPermissionSetsResponse")
    ListRegionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListRegionsRequest", name: "ListRegionsRequest")
    ListRegionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListRegionsResponse", name: "ListRegionsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListTrustedTokenIssuersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListTrustedTokenIssuersRequest", name: "ListTrustedTokenIssuersRequest")
    ListTrustedTokenIssuersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ListTrustedTokenIssuersResponse", name: "ListTrustedTokenIssuersResponse")
    ManagedPolicyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#ManagedPolicyArn", name: "ManagedPolicyArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[a-z]{1,5}){0,3}:iam::aws:policy((/[A-Za-z0-9\\.,\\+@=_-]+)*)/([A-Za-z0-9\\.,\\+=@_-]+)$"})
    ManagedPolicyName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#ManagedPolicyName", name: "ManagedPolicyName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w+=,.@-]+$"})
    ManagedPolicyPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#ManagedPolicyPath", name: "ManagedPolicyPath", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^((/[A-Za-z0-9\\.,\\+@=_-]+)*)/$"})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssoadmin#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#Name", name: "Name", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    NameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#NameType", name: "NameType", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[\\w+=,.@-]+$"})
    OidcJwtConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#OidcJwtConfiguration", name: "OidcJwtConfiguration")
    OidcJwtUpdateConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#OidcJwtUpdateConfiguration", name: "OidcJwtUpdateConfiguration")
    OperationStatusFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#OperationStatusFilter", name: "OperationStatusFilter")
    PermissionSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#PermissionSet", name: "PermissionSet")
    PermissionSetArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#PermissionSetArn", name: "PermissionSetArn", traits: {"smithy.api#length" => {"min" => 10, "max" => 1224}, "smithy.api#pattern" => "^arn:aws(-[a-z]{1,5}){0,3}:sso:::permissionSet/(sso)?ins-[a-zA-Z0-9-.]{16}/ps-[a-zA-Z0-9-./]{16}$"})
    PermissionSetDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#PermissionSetDescription", name: "PermissionSetDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 700}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u00A1-\\u00FF]*$"})
    PermissionSetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssoadmin#PermissionSetList", name: "PermissionSetList")
    PermissionSetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#PermissionSetName", name: "PermissionSetName", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[\\w+=,.@-]+$"})
    PermissionSetPolicyDocument = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#PermissionSetPolicyDocument", name: "PermissionSetPolicyDocument", traits: {"smithy.api#length" => {"min" => 1, "max" => 32768}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+$"})
    PermissionSetProvisioningStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#PermissionSetProvisioningStatus", name: "PermissionSetProvisioningStatus")
    PermissionSetProvisioningStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssoadmin#PermissionSetProvisioningStatusList", name: "PermissionSetProvisioningStatusList")
    PermissionSetProvisioningStatusMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#PermissionSetProvisioningStatusMetadata", name: "PermissionSetProvisioningStatusMetadata")
    PermissionsBoundary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#PermissionsBoundary", name: "PermissionsBoundary")
    PortalOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#PortalOptions", name: "PortalOptions")
    PrincipalId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#PrincipalId", name: "PrincipalId", traits: {"smithy.api#length" => {"min" => 1, "max" => 47}, "smithy.api#pattern" => "^([0-9a-f]{10}-|)[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}$"})
    PrincipalType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssoadmin#PrincipalType", name: "PrincipalType")
    ProvisionPermissionSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ProvisionPermissionSetRequest", name: "ProvisionPermissionSetRequest")
    ProvisionPermissionSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ProvisionPermissionSetResponse", name: "ProvisionPermissionSetResponse")
    ProvisionTargetType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssoadmin#ProvisionTargetType", name: "ProvisionTargetType")
    ProvisioningStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssoadmin#ProvisioningStatus", name: "ProvisioningStatus")
    PutApplicationAccessScopeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#PutApplicationAccessScopeRequest", name: "PutApplicationAccessScopeRequest")
    PutApplicationAssignmentConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#PutApplicationAssignmentConfigurationRequest", name: "PutApplicationAssignmentConfigurationRequest")
    PutApplicationAssignmentConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#PutApplicationAssignmentConfigurationResponse", name: "PutApplicationAssignmentConfigurationResponse")
    PutApplicationAuthenticationMethodRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#PutApplicationAuthenticationMethodRequest", name: "PutApplicationAuthenticationMethodRequest")
    PutApplicationGrantRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#PutApplicationGrantRequest", name: "PutApplicationGrantRequest")
    PutApplicationSessionConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#PutApplicationSessionConfigurationRequest", name: "PutApplicationSessionConfigurationRequest")
    PutApplicationSessionConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#PutApplicationSessionConfigurationResponse", name: "PutApplicationSessionConfigurationResponse")
    PutInlinePolicyToPermissionSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#PutInlinePolicyToPermissionSetRequest", name: "PutInlinePolicyToPermissionSetRequest")
    PutInlinePolicyToPermissionSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#PutInlinePolicyToPermissionSetResponse", name: "PutInlinePolicyToPermissionSetResponse")
    PutPermissionsBoundaryToPermissionSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#PutPermissionsBoundaryToPermissionSetRequest", name: "PutPermissionsBoundaryToPermissionSetRequest")
    PutPermissionsBoundaryToPermissionSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#PutPermissionsBoundaryToPermissionSetResponse", name: "PutPermissionsBoundaryToPermissionSetResponse")
    Reason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#Reason", name: "Reason", traits: {"smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{Z}\\p{S}\\p{N}\\p{P}]*$"})
    RedirectUris = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssoadmin#RedirectUris", name: "RedirectUris", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    RefreshTokenGrant = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#RefreshTokenGrant", name: "RefreshTokenGrant")
    RegionMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#RegionMetadata", name: "RegionMetadata")
    RegionMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssoadmin#RegionMetadataList", name: "RegionMetadataList")
    RegionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#RegionName", name: "RegionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^([a-z]+-){2,3}\\d$"})
    RegionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssoadmin#RegionStatus", name: "RegionStatus")
    RelayState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#RelayState", name: "RelayState", traits: {"smithy.api#length" => {"min" => 1, "max" => 240}, "smithy.api#pattern" => "^[a-zA-Z0-9&$@#\\\\\\/%?=~\\-_'\"|!:,.;*+\\[\\]\\ \\(\\)\\{\\}]+$"})
    RemoveRegionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#RemoveRegionRequest", name: "RemoveRegionRequest")
    RemoveRegionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#RemoveRegionResponse", name: "RemoveRegionResponse")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceNotFoundExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssoadmin#ResourceNotFoundExceptionReason", name: "ResourceNotFoundExceptionReason")
    ResourceNotFoundMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#ResourceNotFoundMessage", name: "ResourceNotFoundMessage")
    ResourceServerConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ResourceServerConfig", name: "ResourceServerConfig")
    ResourceServerScope = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#ResourceServerScope", name: "ResourceServerScope", traits: {"smithy.api#length" => {"min" => 1, "max" => 80}, "smithy.api#pattern" => "^[^:=\\-\\.\\s][0-9a-zA-Z_:\\-\\.]+$"})
    ResourceServerScopeDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ResourceServerScopeDetails", name: "ResourceServerScopeDetails")
    ResourceServerScopes = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ssoadmin#ResourceServerScopes", name: "ResourceServerScopes")
    Scope = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#Scope", name: "Scope", traits: {"smithy.api#pattern" => "^([A-Za-z0-9_]{1,50})(:[A-Za-z0-9_]{1,50}){0,1}(:[A-Za-z0-9_]{1,50}){0,1}$"})
    ScopeDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ScopeDetails", name: "ScopeDetails")
    ScopeTarget = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#ScopeTarget", name: "ScopeTarget", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^arn:aws(-[a-z]{1,5}){0,3}:sso::(\\d{12}:application/(sso)?ins-[a-zA-Z0-9-.]{16}/apl-[a-zA-Z0-9]{16}|:instance/(sso)?ins-[a-zA-Z0-9-.]{16})$"})
    ScopeTargets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssoadmin#ScopeTargets", name: "ScopeTargets", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Scopes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssoadmin#Scopes", name: "Scopes", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceQuotaExceededMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#ServiceQuotaExceededMessage", name: "ServiceQuotaExceededMessage")
    SignInOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#SignInOptions", name: "SignInOptions")
    SignInOrigin = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssoadmin#SignInOrigin", name: "SignInOrigin")
    StatusValues = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssoadmin#StatusValues", name: "StatusValues")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssoadmin#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 75}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssoadmin#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 75}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TaggableResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#TaggableResourceArn", name: "TaggableResourceArn", traits: {"smithy.api#length" => {"min" => 10, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[a-z]{1,5}){0,3}:sso::((:instance/(sso)?ins-[a-zA-Z0-9-.]{16})|(:permissionSet/(sso)?ins-[a-zA-Z0-9-.]{16}/ps-[a-zA-Z0-9-./]{16})|(\\d{12}:application/(sso)?ins-[a-zA-Z0-9-.]{16}/apl-[a-zA-Z0-9]{16})|(\\d{12}:trustedTokenIssuer/(sso)?ins-[a-zA-Z0-9-.]{16}/tti-[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}))$"})
    TargetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#TargetId", name: "TargetId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    TargetType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssoadmin#TargetType", name: "TargetType")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ThrottlingExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#ThrottlingExceptionMessage", name: "ThrottlingExceptionMessage")
    ThrottlingExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssoadmin#ThrottlingExceptionReason", name: "ThrottlingExceptionReason")
    Token = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#Token", name: "Token", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[-a-zA-Z0-9+=/_]*$"})
    TokenExchangeGrant = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#TokenExchangeGrant", name: "TokenExchangeGrant")
    TokenIssuerAudience = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#TokenIssuerAudience", name: "TokenIssuerAudience", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    TokenIssuerAudiences = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssoadmin#TokenIssuerAudiences", name: "TokenIssuerAudiences", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    TrustedTokenIssuerArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#TrustedTokenIssuerArn", name: "TrustedTokenIssuerArn", traits: {"smithy.api#length" => {"min" => 10, "max" => 1224}, "smithy.api#pattern" => "^arn:aws(-[a-z]{1,5}){0,3}:sso::\\d{12}:trustedTokenIssuer/(sso)?ins-[a-zA-Z0-9-.]{16}/tti-[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    TrustedTokenIssuerConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.ssoadmin#TrustedTokenIssuerConfiguration", name: "TrustedTokenIssuerConfiguration")
    TrustedTokenIssuerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssoadmin#TrustedTokenIssuerList", name: "TrustedTokenIssuerList")
    TrustedTokenIssuerMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#TrustedTokenIssuerMetadata", name: "TrustedTokenIssuerMetadata")
    TrustedTokenIssuerName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#TrustedTokenIssuerName", name: "TrustedTokenIssuerName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\w+=,.@-]+$"})
    TrustedTokenIssuerType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssoadmin#TrustedTokenIssuerType", name: "TrustedTokenIssuerType")
    TrustedTokenIssuerUpdateConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.ssoadmin#TrustedTokenIssuerUpdateConfiguration", name: "TrustedTokenIssuerUpdateConfiguration")
    TrustedTokenIssuerUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#TrustedTokenIssuerUrl", name: "TrustedTokenIssuerUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^https?:\\/\\/[-a-zA-Z0-9+&@\\/%=~_|!:,.;]*[-a-zA-Z0-9+&@\\/%=~_|]$"})
    URI = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#URI", name: "URI")
    UUId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#UUId", name: "UUId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^\\b[0-9a-f]{8}\\b-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-\\b[0-9a-f]{12}\\b$"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateApplicationPortalOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#UpdateApplicationPortalOptions", name: "UpdateApplicationPortalOptions")
    UpdateApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#UpdateApplicationRequest", name: "UpdateApplicationRequest")
    UpdateApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#UpdateApplicationResponse", name: "UpdateApplicationResponse")
    UpdateInstanceAccessControlAttributeConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#UpdateInstanceAccessControlAttributeConfigurationRequest", name: "UpdateInstanceAccessControlAttributeConfigurationRequest")
    UpdateInstanceAccessControlAttributeConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#UpdateInstanceAccessControlAttributeConfigurationResponse", name: "UpdateInstanceAccessControlAttributeConfigurationResponse")
    UpdateInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#UpdateInstanceRequest", name: "UpdateInstanceRequest")
    UpdateInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#UpdateInstanceResponse", name: "UpdateInstanceResponse")
    UpdatePermissionSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#UpdatePermissionSetRequest", name: "UpdatePermissionSetRequest")
    UpdatePermissionSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#UpdatePermissionSetResponse", name: "UpdatePermissionSetResponse")
    UpdateTrustedTokenIssuerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#UpdateTrustedTokenIssuerRequest", name: "UpdateTrustedTokenIssuerRequest")
    UpdateTrustedTokenIssuerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#UpdateTrustedTokenIssuerResponse", name: "UpdateTrustedTokenIssuerResponse")
    UserBackgroundSessionApplicationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssoadmin#UserBackgroundSessionApplicationStatus", name: "UserBackgroundSessionApplicationStatus")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssoadmin#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssoadmin#ValidationExceptionMessage", name: "ValidationExceptionMessage")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssoadmin#ValidationExceptionReason", name: "ValidationExceptionReason")

    AccessControlAttribute.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessControlAttributeKey, name: "Key", traits: {"smithy.api#required" => {}}))
    AccessControlAttribute.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessControlAttributeValue, name: "Value", traits: {"smithy.api#required" => {}}))
    AccessControlAttribute.type = Types::AccessControlAttribute
    AccessControlAttributeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessControlAttribute, name: "member"))
    AccessControlAttributeValue.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessControlAttributeValueSourceList, name: "Source", traits: {"smithy.api#required" => {}}))
    AccessControlAttributeValue.type = Types::AccessControlAttributeValue
    AccessControlAttributeValueSourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessControlAttributeValueSource, name: "member"))
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessDeniedExceptionMessage, name: "Message"))
    AccessDeniedException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessDeniedExceptionReason, name: "Reason"))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessDeniedExceptionReason.add_member(:kms_access_denied_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMS_ACCESS_DENIED_EXCEPTION", traits: {"smithy.api#enumValue" => "KMS_AccessDeniedException"}))
    AccountAssignment.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    AccountAssignment.add_member(:permission_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetArn, name: "PermissionSetArn"))
    AccountAssignment.add_member(:principal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalType, name: "PrincipalType"))
    AccountAssignment.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalId, name: "PrincipalId"))
    AccountAssignment.type = Types::AccountAssignment
    AccountAssignmentForPrincipal.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    AccountAssignmentForPrincipal.add_member(:permission_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetArn, name: "PermissionSetArn"))
    AccountAssignmentForPrincipal.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalId, name: "PrincipalId"))
    AccountAssignmentForPrincipal.add_member(:principal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalType, name: "PrincipalType"))
    AccountAssignmentForPrincipal.type = Types::AccountAssignmentForPrincipal
    AccountAssignmentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssignment, name: "member"))
    AccountAssignmentListForPrincipal.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssignmentForPrincipal, name: "member"))
    AccountAssignmentOperationStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusValues, name: "Status"))
    AccountAssignmentOperationStatus.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUId, name: "RequestId"))
    AccountAssignmentOperationStatus.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: Reason, name: "FailureReason"))
    AccountAssignmentOperationStatus.add_member(:target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetId, name: "TargetId"))
    AccountAssignmentOperationStatus.add_member(:target_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetType, name: "TargetType"))
    AccountAssignmentOperationStatus.add_member(:permission_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetArn, name: "PermissionSetArn"))
    AccountAssignmentOperationStatus.add_member(:principal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalType, name: "PrincipalType"))
    AccountAssignmentOperationStatus.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalId, name: "PrincipalId"))
    AccountAssignmentOperationStatus.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreatedDate"))
    AccountAssignmentOperationStatus.type = Types::AccountAssignmentOperationStatus
    AccountAssignmentOperationStatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssignmentOperationStatusMetadata, name: "member"))
    AccountAssignmentOperationStatusMetadata.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusValues, name: "Status"))
    AccountAssignmentOperationStatusMetadata.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUId, name: "RequestId"))
    AccountAssignmentOperationStatusMetadata.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreatedDate"))
    AccountAssignmentOperationStatusMetadata.type = Types::AccountAssignmentOperationStatusMetadata
    AccountList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member"))
    AddRegionRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    AddRegionRequest.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "RegionName", traits: {"smithy.api#required" => {}}))
    AddRegionRequest.type = Types::AddRegionRequest
    AddRegionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionStatus, name: "Status"))
    AddRegionResponse.type = Types::AddRegionResponse
    Application.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "ApplicationArn"))
    Application.add_member(:application_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationProviderArn, name: "ApplicationProviderArn"))
    Application.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationNameType, name: "Name"))
    Application.add_member(:application_account, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ApplicationAccount"))
    Application.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn"))
    Application.add_member(:identity_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreArn, name: "IdentityStoreArn"))
    Application.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationStatus, name: "Status"))
    Application.add_member(:portal_options, ::Smithy::Schema::Shapes::MemberShape.new(target: PortalOptions, name: "PortalOptions"))
    Application.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    Application.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreatedDate"))
    Application.add_member(:created_from, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "CreatedFrom"))
    Application.type = Types::Application
    ApplicationAssignment.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "ApplicationArn", traits: {"smithy.api#required" => {}}))
    ApplicationAssignment.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalId, name: "PrincipalId", traits: {"smithy.api#required" => {}}))
    ApplicationAssignment.add_member(:principal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalType, name: "PrincipalType", traits: {"smithy.api#required" => {}}))
    ApplicationAssignment.type = Types::ApplicationAssignment
    ApplicationAssignmentForPrincipal.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "ApplicationArn"))
    ApplicationAssignmentForPrincipal.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalId, name: "PrincipalId"))
    ApplicationAssignmentForPrincipal.add_member(:principal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalType, name: "PrincipalType"))
    ApplicationAssignmentForPrincipal.type = Types::ApplicationAssignmentForPrincipal
    ApplicationAssignmentListForPrincipal.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationAssignmentForPrincipal, name: "member"))
    ApplicationAssignmentsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationAssignment, name: "member"))
    ApplicationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Application, name: "member"))
    ApplicationProvider.add_member(:application_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationProviderArn, name: "ApplicationProviderArn", traits: {"smithy.api#required" => {}}))
    ApplicationProvider.add_member(:federation_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: FederationProtocol, name: "FederationProtocol"))
    ApplicationProvider.add_member(:display_data, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayData, name: "DisplayData"))
    ApplicationProvider.add_member(:resource_server_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceServerConfig, name: "ResourceServerConfig"))
    ApplicationProvider.type = Types::ApplicationProvider
    ApplicationProviderList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationProvider, name: "member"))
    ApplicationStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ApplicationStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ApplicationVisibility.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ApplicationVisibility.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    AttachCustomerManagedPolicyReferenceToPermissionSetRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    AttachCustomerManagedPolicyReferenceToPermissionSetRequest.add_member(:permission_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetArn, name: "PermissionSetArn", traits: {"smithy.api#required" => {}}))
    AttachCustomerManagedPolicyReferenceToPermissionSetRequest.add_member(:customer_managed_policy_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerManagedPolicyReference, name: "CustomerManagedPolicyReference", traits: {"smithy.api#required" => {}}))
    AttachCustomerManagedPolicyReferenceToPermissionSetRequest.type = Types::AttachCustomerManagedPolicyReferenceToPermissionSetRequest
    AttachCustomerManagedPolicyReferenceToPermissionSetResponse.type = Types::AttachCustomerManagedPolicyReferenceToPermissionSetResponse
    AttachManagedPolicyToPermissionSetRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    AttachManagedPolicyToPermissionSetRequest.add_member(:permission_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetArn, name: "PermissionSetArn", traits: {"smithy.api#required" => {}}))
    AttachManagedPolicyToPermissionSetRequest.add_member(:managed_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedPolicyArn, name: "ManagedPolicyArn", traits: {"smithy.api#required" => {}}))
    AttachManagedPolicyToPermissionSetRequest.type = Types::AttachManagedPolicyToPermissionSetRequest
    AttachManagedPolicyToPermissionSetResponse.type = Types::AttachManagedPolicyToPermissionSetResponse
    AttachedManagedPolicy.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    AttachedManagedPolicy.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedPolicyArn, name: "Arn"))
    AttachedManagedPolicy.type = Types::AttachedManagedPolicy
    AttachedManagedPolicyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachedManagedPolicy, name: "member"))
    AuthenticationMethod.add_member(:iam, Types::AuthenticationMethod::Iam, ::Smithy::Schema::Shapes::MemberShape.new(target: IamAuthenticationMethod, name: "Iam"))
    AuthenticationMethod.add_member(:unknown, Types::AuthenticationMethod::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AuthenticationMethod.type = Types::AuthenticationMethod
    AuthenticationMethodItem.add_member(:authentication_method_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationMethodType, name: "AuthenticationMethodType"))
    AuthenticationMethodItem.add_member(:authentication_method, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationMethod, name: "AuthenticationMethod"))
    AuthenticationMethodItem.type = Types::AuthenticationMethodItem
    AuthenticationMethodType.add_member(:iam, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM", traits: {"smithy.api#enumValue" => "IAM"}))
    AuthenticationMethods.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationMethodItem, name: "member"))
    AuthorizationCodeGrant.add_member(:redirect_uris, ::Smithy::Schema::Shapes::MemberShape.new(target: RedirectUris, name: "RedirectUris"))
    AuthorizationCodeGrant.type = Types::AuthorizationCodeGrant
    AuthorizedTokenIssuer.add_member(:trusted_token_issuer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedTokenIssuerArn, name: "TrustedTokenIssuerArn"))
    AuthorizedTokenIssuer.add_member(:authorized_audiences, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenIssuerAudiences, name: "AuthorizedAudiences"))
    AuthorizedTokenIssuer.type = Types::AuthorizedTokenIssuer
    AuthorizedTokenIssuers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizedTokenIssuer, name: "member"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictExceptionMessage, name: "Message"))
    ConflictException.type = Types::ConflictException
    CreateAccountAssignmentRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    CreateAccountAssignmentRequest.add_member(:target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetId, name: "TargetId", traits: {"smithy.api#required" => {}}))
    CreateAccountAssignmentRequest.add_member(:target_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetType, name: "TargetType", traits: {"smithy.api#required" => {}}))
    CreateAccountAssignmentRequest.add_member(:permission_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetArn, name: "PermissionSetArn", traits: {"smithy.api#required" => {}}))
    CreateAccountAssignmentRequest.add_member(:principal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalType, name: "PrincipalType", traits: {"smithy.api#required" => {}}))
    CreateAccountAssignmentRequest.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalId, name: "PrincipalId", traits: {"smithy.api#required" => {}}))
    CreateAccountAssignmentRequest.type = Types::CreateAccountAssignmentRequest
    CreateAccountAssignmentResponse.add_member(:account_assignment_creation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssignmentOperationStatus, name: "AccountAssignmentCreationStatus"))
    CreateAccountAssignmentResponse.type = Types::CreateAccountAssignmentResponse
    CreateApplicationAssignmentRequest.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "ApplicationArn", traits: {"smithy.api#required" => {}}))
    CreateApplicationAssignmentRequest.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalId, name: "PrincipalId", traits: {"smithy.api#required" => {}}))
    CreateApplicationAssignmentRequest.add_member(:principal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalType, name: "PrincipalType", traits: {"smithy.api#required" => {}}))
    CreateApplicationAssignmentRequest.type = Types::CreateApplicationAssignmentRequest
    CreateApplicationAssignmentResponse.type = Types::CreateApplicationAssignmentResponse
    CreateApplicationRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:application_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationProviderArn, name: "ApplicationProviderArn", traits: {"smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationNameType, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateApplicationRequest.add_member(:portal_options, ::Smithy::Schema::Shapes::MemberShape.new(target: PortalOptions, name: "PortalOptions"))
    CreateApplicationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateApplicationRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationStatus, name: "Status"))
    CreateApplicationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateApplicationRequest.type = Types::CreateApplicationRequest
    CreateApplicationResponse.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "ApplicationArn"))
    CreateApplicationResponse.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn"))
    CreateApplicationResponse.add_member(:identity_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreArn, name: "IdentityStoreArn"))
    CreateApplicationResponse.type = Types::CreateApplicationResponse
    CreateInstanceAccessControlAttributeConfigurationRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    CreateInstanceAccessControlAttributeConfigurationRequest.add_member(:instance_access_control_attribute_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceAccessControlAttributeConfiguration, name: "InstanceAccessControlAttributeConfiguration", traits: {"smithy.api#required" => {}}))
    CreateInstanceAccessControlAttributeConfigurationRequest.type = Types::CreateInstanceAccessControlAttributeConfigurationRequest
    CreateInstanceAccessControlAttributeConfigurationResponse.type = Types::CreateInstanceAccessControlAttributeConfigurationResponse
    CreateInstanceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameType, name: "Name"))
    CreateInstanceRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateInstanceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateInstanceRequest.type = Types::CreateInstanceRequest
    CreateInstanceResponse.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn"))
    CreateInstanceResponse.type = Types::CreateInstanceResponse
    CreatePermissionSetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreatePermissionSetRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetDescription, name: "Description"))
    CreatePermissionSetRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    CreatePermissionSetRequest.add_member(:session_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "SessionDuration"))
    CreatePermissionSetRequest.add_member(:relay_state, ::Smithy::Schema::Shapes::MemberShape.new(target: RelayState, name: "RelayState"))
    CreatePermissionSetRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreatePermissionSetRequest.type = Types::CreatePermissionSetRequest
    CreatePermissionSetResponse.add_member(:permission_set, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSet, name: "PermissionSet"))
    CreatePermissionSetResponse.type = Types::CreatePermissionSetResponse
    CreateTrustedTokenIssuerRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    CreateTrustedTokenIssuerRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedTokenIssuerName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateTrustedTokenIssuerRequest.add_member(:trusted_token_issuer_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedTokenIssuerType, name: "TrustedTokenIssuerType", traits: {"smithy.api#required" => {}}))
    CreateTrustedTokenIssuerRequest.add_member(:trusted_token_issuer_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedTokenIssuerConfiguration, name: "TrustedTokenIssuerConfiguration", traits: {"smithy.api#required" => {}}))
    CreateTrustedTokenIssuerRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateTrustedTokenIssuerRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateTrustedTokenIssuerRequest.type = Types::CreateTrustedTokenIssuerRequest
    CreateTrustedTokenIssuerResponse.add_member(:trusted_token_issuer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedTokenIssuerArn, name: "TrustedTokenIssuerArn"))
    CreateTrustedTokenIssuerResponse.type = Types::CreateTrustedTokenIssuerResponse
    CustomerManagedPolicyReference.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedPolicyName, name: "Name", traits: {"smithy.api#required" => {}}))
    CustomerManagedPolicyReference.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedPolicyPath, name: "Path"))
    CustomerManagedPolicyReference.type = Types::CustomerManagedPolicyReference
    CustomerManagedPolicyReferenceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerManagedPolicyReference, name: "member"))
    DeleteAccountAssignmentRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    DeleteAccountAssignmentRequest.add_member(:target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetId, name: "TargetId", traits: {"smithy.api#required" => {}}))
    DeleteAccountAssignmentRequest.add_member(:target_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetType, name: "TargetType", traits: {"smithy.api#required" => {}}))
    DeleteAccountAssignmentRequest.add_member(:permission_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetArn, name: "PermissionSetArn", traits: {"smithy.api#required" => {}}))
    DeleteAccountAssignmentRequest.add_member(:principal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalType, name: "PrincipalType", traits: {"smithy.api#required" => {}}))
    DeleteAccountAssignmentRequest.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalId, name: "PrincipalId", traits: {"smithy.api#required" => {}}))
    DeleteAccountAssignmentRequest.type = Types::DeleteAccountAssignmentRequest
    DeleteAccountAssignmentResponse.add_member(:account_assignment_deletion_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssignmentOperationStatus, name: "AccountAssignmentDeletionStatus"))
    DeleteAccountAssignmentResponse.type = Types::DeleteAccountAssignmentResponse
    DeleteApplicationAccessScopeRequest.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "ApplicationArn", traits: {"smithy.api#required" => {}}))
    DeleteApplicationAccessScopeRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    DeleteApplicationAccessScopeRequest.type = Types::DeleteApplicationAccessScopeRequest
    DeleteApplicationAssignmentRequest.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "ApplicationArn", traits: {"smithy.api#required" => {}}))
    DeleteApplicationAssignmentRequest.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalId, name: "PrincipalId", traits: {"smithy.api#required" => {}}))
    DeleteApplicationAssignmentRequest.add_member(:principal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalType, name: "PrincipalType", traits: {"smithy.api#required" => {}}))
    DeleteApplicationAssignmentRequest.type = Types::DeleteApplicationAssignmentRequest
    DeleteApplicationAssignmentResponse.type = Types::DeleteApplicationAssignmentResponse
    DeleteApplicationAuthenticationMethodRequest.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "ApplicationArn", traits: {"smithy.api#required" => {}}))
    DeleteApplicationAuthenticationMethodRequest.add_member(:authentication_method_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationMethodType, name: "AuthenticationMethodType", traits: {"smithy.api#required" => {}}))
    DeleteApplicationAuthenticationMethodRequest.type = Types::DeleteApplicationAuthenticationMethodRequest
    DeleteApplicationGrantRequest.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "ApplicationArn", traits: {"smithy.api#required" => {}}))
    DeleteApplicationGrantRequest.add_member(:grant_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantType, name: "GrantType", traits: {"smithy.api#required" => {}}))
    DeleteApplicationGrantRequest.type = Types::DeleteApplicationGrantRequest
    DeleteApplicationRequest.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "ApplicationArn", traits: {"smithy.api#required" => {}}))
    DeleteApplicationRequest.type = Types::DeleteApplicationRequest
    DeleteApplicationResponse.type = Types::DeleteApplicationResponse
    DeleteInlinePolicyFromPermissionSetRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    DeleteInlinePolicyFromPermissionSetRequest.add_member(:permission_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetArn, name: "PermissionSetArn", traits: {"smithy.api#required" => {}}))
    DeleteInlinePolicyFromPermissionSetRequest.type = Types::DeleteInlinePolicyFromPermissionSetRequest
    DeleteInlinePolicyFromPermissionSetResponse.type = Types::DeleteInlinePolicyFromPermissionSetResponse
    DeleteInstanceAccessControlAttributeConfigurationRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    DeleteInstanceAccessControlAttributeConfigurationRequest.type = Types::DeleteInstanceAccessControlAttributeConfigurationRequest
    DeleteInstanceAccessControlAttributeConfigurationResponse.type = Types::DeleteInstanceAccessControlAttributeConfigurationResponse
    DeleteInstanceRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    DeleteInstanceRequest.type = Types::DeleteInstanceRequest
    DeleteInstanceResponse.type = Types::DeleteInstanceResponse
    DeletePermissionSetRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    DeletePermissionSetRequest.add_member(:permission_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetArn, name: "PermissionSetArn", traits: {"smithy.api#required" => {}}))
    DeletePermissionSetRequest.type = Types::DeletePermissionSetRequest
    DeletePermissionSetResponse.type = Types::DeletePermissionSetResponse
    DeletePermissionsBoundaryFromPermissionSetRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    DeletePermissionsBoundaryFromPermissionSetRequest.add_member(:permission_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetArn, name: "PermissionSetArn", traits: {"smithy.api#required" => {}}))
    DeletePermissionsBoundaryFromPermissionSetRequest.type = Types::DeletePermissionsBoundaryFromPermissionSetRequest
    DeletePermissionsBoundaryFromPermissionSetResponse.type = Types::DeletePermissionsBoundaryFromPermissionSetResponse
    DeleteTrustedTokenIssuerRequest.add_member(:trusted_token_issuer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedTokenIssuerArn, name: "TrustedTokenIssuerArn", traits: {"smithy.api#required" => {}}))
    DeleteTrustedTokenIssuerRequest.type = Types::DeleteTrustedTokenIssuerRequest
    DeleteTrustedTokenIssuerResponse.type = Types::DeleteTrustedTokenIssuerResponse
    DescribeAccountAssignmentCreationStatusRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    DescribeAccountAssignmentCreationStatusRequest.add_member(:account_assignment_creation_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUId, name: "AccountAssignmentCreationRequestId", traits: {"smithy.api#required" => {}}))
    DescribeAccountAssignmentCreationStatusRequest.type = Types::DescribeAccountAssignmentCreationStatusRequest
    DescribeAccountAssignmentCreationStatusResponse.add_member(:account_assignment_creation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssignmentOperationStatus, name: "AccountAssignmentCreationStatus"))
    DescribeAccountAssignmentCreationStatusResponse.type = Types::DescribeAccountAssignmentCreationStatusResponse
    DescribeAccountAssignmentDeletionStatusRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    DescribeAccountAssignmentDeletionStatusRequest.add_member(:account_assignment_deletion_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUId, name: "AccountAssignmentDeletionRequestId", traits: {"smithy.api#required" => {}}))
    DescribeAccountAssignmentDeletionStatusRequest.type = Types::DescribeAccountAssignmentDeletionStatusRequest
    DescribeAccountAssignmentDeletionStatusResponse.add_member(:account_assignment_deletion_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssignmentOperationStatus, name: "AccountAssignmentDeletionStatus"))
    DescribeAccountAssignmentDeletionStatusResponse.type = Types::DescribeAccountAssignmentDeletionStatusResponse
    DescribeApplicationAssignmentRequest.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "ApplicationArn", traits: {"smithy.api#required" => {}}))
    DescribeApplicationAssignmentRequest.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalId, name: "PrincipalId", traits: {"smithy.api#required" => {}}))
    DescribeApplicationAssignmentRequest.add_member(:principal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalType, name: "PrincipalType", traits: {"smithy.api#required" => {}}))
    DescribeApplicationAssignmentRequest.type = Types::DescribeApplicationAssignmentRequest
    DescribeApplicationAssignmentResponse.add_member(:principal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalType, name: "PrincipalType"))
    DescribeApplicationAssignmentResponse.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalId, name: "PrincipalId"))
    DescribeApplicationAssignmentResponse.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "ApplicationArn"))
    DescribeApplicationAssignmentResponse.type = Types::DescribeApplicationAssignmentResponse
    DescribeApplicationProviderRequest.add_member(:application_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationProviderArn, name: "ApplicationProviderArn", traits: {"smithy.api#required" => {}}))
    DescribeApplicationProviderRequest.type = Types::DescribeApplicationProviderRequest
    DescribeApplicationProviderResponse.add_member(:application_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationProviderArn, name: "ApplicationProviderArn", traits: {"smithy.api#required" => {}}))
    DescribeApplicationProviderResponse.add_member(:federation_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: FederationProtocol, name: "FederationProtocol"))
    DescribeApplicationProviderResponse.add_member(:display_data, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayData, name: "DisplayData"))
    DescribeApplicationProviderResponse.add_member(:resource_server_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceServerConfig, name: "ResourceServerConfig"))
    DescribeApplicationProviderResponse.type = Types::DescribeApplicationProviderResponse
    DescribeApplicationRequest.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "ApplicationArn", traits: {"smithy.api#required" => {}}))
    DescribeApplicationRequest.type = Types::DescribeApplicationRequest
    DescribeApplicationResponse.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "ApplicationArn"))
    DescribeApplicationResponse.add_member(:application_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationProviderArn, name: "ApplicationProviderArn"))
    DescribeApplicationResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationNameType, name: "Name"))
    DescribeApplicationResponse.add_member(:application_account, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ApplicationAccount"))
    DescribeApplicationResponse.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn"))
    DescribeApplicationResponse.add_member(:identity_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreArn, name: "IdentityStoreArn"))
    DescribeApplicationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationStatus, name: "Status"))
    DescribeApplicationResponse.add_member(:portal_options, ::Smithy::Schema::Shapes::MemberShape.new(target: PortalOptions, name: "PortalOptions"))
    DescribeApplicationResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    DescribeApplicationResponse.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreatedDate"))
    DescribeApplicationResponse.add_member(:created_from, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "CreatedFrom"))
    DescribeApplicationResponse.type = Types::DescribeApplicationResponse
    DescribeInstanceAccessControlAttributeConfigurationRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    DescribeInstanceAccessControlAttributeConfigurationRequest.type = Types::DescribeInstanceAccessControlAttributeConfigurationRequest
    DescribeInstanceAccessControlAttributeConfigurationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceAccessControlAttributeConfigurationStatus, name: "Status"))
    DescribeInstanceAccessControlAttributeConfigurationResponse.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceAccessControlAttributeConfigurationStatusReason, name: "StatusReason"))
    DescribeInstanceAccessControlAttributeConfigurationResponse.add_member(:instance_access_control_attribute_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceAccessControlAttributeConfiguration, name: "InstanceAccessControlAttributeConfiguration"))
    DescribeInstanceAccessControlAttributeConfigurationResponse.type = Types::DescribeInstanceAccessControlAttributeConfigurationResponse
    DescribeInstanceRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    DescribeInstanceRequest.type = Types::DescribeInstanceRequest
    DescribeInstanceResponse.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn"))
    DescribeInstanceResponse.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "IdentityStoreId"))
    DescribeInstanceResponse.add_member(:identity_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceIdentityStoreArn, name: "IdentityStoreArn"))
    DescribeInstanceResponse.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "OwnerAccountId"))
    DescribeInstanceResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameType, name: "Name"))
    DescribeInstanceResponse.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreatedDate"))
    DescribeInstanceResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceStatus, name: "Status"))
    DescribeInstanceResponse.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: Reason, name: "StatusReason"))
    DescribeInstanceResponse.add_member(:primary_region, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "PrimaryRegion"))
    DescribeInstanceResponse.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionMetadataList, name: "Regions"))
    DescribeInstanceResponse.add_member(:encryption_configuration_details, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfigurationDetails, name: "EncryptionConfigurationDetails"))
    DescribeInstanceResponse.add_member(:permission_sets_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "PermissionSetsEnabled"))
    DescribeInstanceResponse.type = Types::DescribeInstanceResponse
    DescribePermissionSetProvisioningStatusRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    DescribePermissionSetProvisioningStatusRequest.add_member(:provision_permission_set_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUId, name: "ProvisionPermissionSetRequestId", traits: {"smithy.api#required" => {}}))
    DescribePermissionSetProvisioningStatusRequest.type = Types::DescribePermissionSetProvisioningStatusRequest
    DescribePermissionSetProvisioningStatusResponse.add_member(:permission_set_provisioning_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetProvisioningStatus, name: "PermissionSetProvisioningStatus"))
    DescribePermissionSetProvisioningStatusResponse.type = Types::DescribePermissionSetProvisioningStatusResponse
    DescribePermissionSetRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    DescribePermissionSetRequest.add_member(:permission_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetArn, name: "PermissionSetArn", traits: {"smithy.api#required" => {}}))
    DescribePermissionSetRequest.type = Types::DescribePermissionSetRequest
    DescribePermissionSetResponse.add_member(:permission_set, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSet, name: "PermissionSet"))
    DescribePermissionSetResponse.type = Types::DescribePermissionSetResponse
    DescribeRegionRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    DescribeRegionRequest.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "RegionName", traits: {"smithy.api#required" => {}}))
    DescribeRegionRequest.type = Types::DescribeRegionRequest
    DescribeRegionResponse.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "RegionName"))
    DescribeRegionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionStatus, name: "Status"))
    DescribeRegionResponse.add_member(:added_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "AddedDate"))
    DescribeRegionResponse.add_member(:is_primary_region, ::Smithy::Schema::Shapes::MemberShape.new(target: IsPrimaryRegion, name: "IsPrimaryRegion", traits: {"smithy.api#default" => false}))
    DescribeRegionResponse.type = Types::DescribeRegionResponse
    DescribeTrustedTokenIssuerRequest.add_member(:trusted_token_issuer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedTokenIssuerArn, name: "TrustedTokenIssuerArn", traits: {"smithy.api#required" => {}}))
    DescribeTrustedTokenIssuerRequest.type = Types::DescribeTrustedTokenIssuerRequest
    DescribeTrustedTokenIssuerResponse.add_member(:trusted_token_issuer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedTokenIssuerArn, name: "TrustedTokenIssuerArn"))
    DescribeTrustedTokenIssuerResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedTokenIssuerName, name: "Name"))
    DescribeTrustedTokenIssuerResponse.add_member(:trusted_token_issuer_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedTokenIssuerType, name: "TrustedTokenIssuerType"))
    DescribeTrustedTokenIssuerResponse.add_member(:trusted_token_issuer_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedTokenIssuerConfiguration, name: "TrustedTokenIssuerConfiguration"))
    DescribeTrustedTokenIssuerResponse.type = Types::DescribeTrustedTokenIssuerResponse
    DetachCustomerManagedPolicyReferenceFromPermissionSetRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    DetachCustomerManagedPolicyReferenceFromPermissionSetRequest.add_member(:permission_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetArn, name: "PermissionSetArn", traits: {"smithy.api#required" => {}}))
    DetachCustomerManagedPolicyReferenceFromPermissionSetRequest.add_member(:customer_managed_policy_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerManagedPolicyReference, name: "CustomerManagedPolicyReference", traits: {"smithy.api#required" => {}}))
    DetachCustomerManagedPolicyReferenceFromPermissionSetRequest.type = Types::DetachCustomerManagedPolicyReferenceFromPermissionSetRequest
    DetachCustomerManagedPolicyReferenceFromPermissionSetResponse.type = Types::DetachCustomerManagedPolicyReferenceFromPermissionSetResponse
    DetachManagedPolicyFromPermissionSetRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    DetachManagedPolicyFromPermissionSetRequest.add_member(:permission_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetArn, name: "PermissionSetArn", traits: {"smithy.api#required" => {}}))
    DetachManagedPolicyFromPermissionSetRequest.add_member(:managed_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedPolicyArn, name: "ManagedPolicyArn", traits: {"smithy.api#required" => {}}))
    DetachManagedPolicyFromPermissionSetRequest.type = Types::DetachManagedPolicyFromPermissionSetRequest
    DetachManagedPolicyFromPermissionSetResponse.type = Types::DetachManagedPolicyFromPermissionSetResponse
    DisplayData.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DisplayName"))
    DisplayData.add_member(:icon_url, ::Smithy::Schema::Shapes::MemberShape.new(target: IconUrl, name: "IconUrl"))
    DisplayData.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    DisplayData.type = Types::DisplayData
    EncryptionConfiguration.add_member(:key_type, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyType, name: "KeyType", traits: {"smithy.api#required" => {}}))
    EncryptionConfiguration.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "KmsKeyArn"))
    EncryptionConfiguration.type = Types::EncryptionConfiguration
    EncryptionConfigurationDetails.add_member(:key_type, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyType, name: "KeyType"))
    EncryptionConfigurationDetails.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "KmsKeyArn"))
    EncryptionConfigurationDetails.add_member(:encryption_status, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyStatus, name: "EncryptionStatus"))
    EncryptionConfigurationDetails.add_member(:encryption_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: Reason, name: "EncryptionStatusReason"))
    EncryptionConfigurationDetails.type = Types::EncryptionConfigurationDetails
    FederationProtocol.add_member(:saml, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAML", traits: {"smithy.api#enumValue" => "SAML"}))
    FederationProtocol.add_member(:oauth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OAUTH", traits: {"smithy.api#enumValue" => "OAUTH"}))
    GetApplicationAccessScopeRequest.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "ApplicationArn", traits: {"smithy.api#required" => {}}))
    GetApplicationAccessScopeRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    GetApplicationAccessScopeRequest.type = Types::GetApplicationAccessScopeRequest
    GetApplicationAccessScopeResponse.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    GetApplicationAccessScopeResponse.add_member(:authorized_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeTargets, name: "AuthorizedTargets"))
    GetApplicationAccessScopeResponse.type = Types::GetApplicationAccessScopeResponse
    GetApplicationAssignmentConfigurationRequest.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "ApplicationArn", traits: {"smithy.api#required" => {}}))
    GetApplicationAssignmentConfigurationRequest.type = Types::GetApplicationAssignmentConfigurationRequest
    GetApplicationAssignmentConfigurationResponse.add_member(:assignment_required, ::Smithy::Schema::Shapes::MemberShape.new(target: AssignmentRequired, name: "AssignmentRequired", traits: {"smithy.api#default" => true, "smithy.api#required" => {}}))
    GetApplicationAssignmentConfigurationResponse.type = Types::GetApplicationAssignmentConfigurationResponse
    GetApplicationAuthenticationMethodRequest.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "ApplicationArn", traits: {"smithy.api#required" => {}}))
    GetApplicationAuthenticationMethodRequest.add_member(:authentication_method_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationMethodType, name: "AuthenticationMethodType", traits: {"smithy.api#required" => {}}))
    GetApplicationAuthenticationMethodRequest.type = Types::GetApplicationAuthenticationMethodRequest
    GetApplicationAuthenticationMethodResponse.add_member(:authentication_method, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationMethod, name: "AuthenticationMethod"))
    GetApplicationAuthenticationMethodResponse.type = Types::GetApplicationAuthenticationMethodResponse
    GetApplicationGrantRequest.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "ApplicationArn", traits: {"smithy.api#required" => {}}))
    GetApplicationGrantRequest.add_member(:grant_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantType, name: "GrantType", traits: {"smithy.api#required" => {}}))
    GetApplicationGrantRequest.type = Types::GetApplicationGrantRequest
    GetApplicationGrantResponse.add_member(:grant, ::Smithy::Schema::Shapes::MemberShape.new(target: Grant, name: "Grant", traits: {"smithy.api#required" => {}}))
    GetApplicationGrantResponse.type = Types::GetApplicationGrantResponse
    GetApplicationSessionConfigurationRequest.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "ApplicationArn", traits: {"smithy.api#required" => {}}))
    GetApplicationSessionConfigurationRequest.type = Types::GetApplicationSessionConfigurationRequest
    GetApplicationSessionConfigurationResponse.add_member(:user_background_session_application_status, ::Smithy::Schema::Shapes::MemberShape.new(target: UserBackgroundSessionApplicationStatus, name: "UserBackgroundSessionApplicationStatus"))
    GetApplicationSessionConfigurationResponse.type = Types::GetApplicationSessionConfigurationResponse
    GetInlinePolicyForPermissionSetRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    GetInlinePolicyForPermissionSetRequest.add_member(:permission_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetArn, name: "PermissionSetArn", traits: {"smithy.api#required" => {}}))
    GetInlinePolicyForPermissionSetRequest.type = Types::GetInlinePolicyForPermissionSetRequest
    GetInlinePolicyForPermissionSetResponse.add_member(:inline_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetPolicyDocument, name: "InlinePolicy"))
    GetInlinePolicyForPermissionSetResponse.type = Types::GetInlinePolicyForPermissionSetResponse
    GetPermissionsBoundaryForPermissionSetRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    GetPermissionsBoundaryForPermissionSetRequest.add_member(:permission_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetArn, name: "PermissionSetArn", traits: {"smithy.api#required" => {}}))
    GetPermissionsBoundaryForPermissionSetRequest.type = Types::GetPermissionsBoundaryForPermissionSetRequest
    GetPermissionsBoundaryForPermissionSetResponse.add_member(:permissions_boundary, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionsBoundary, name: "PermissionsBoundary"))
    GetPermissionsBoundaryForPermissionSetResponse.type = Types::GetPermissionsBoundaryForPermissionSetResponse
    Grant.add_member(:authorization_code, Types::Grant::AuthorizationCode, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizationCodeGrant, name: "AuthorizationCode"))
    Grant.add_member(:jwt_bearer, Types::Grant::JwtBearer, ::Smithy::Schema::Shapes::MemberShape.new(target: JwtBearerGrant, name: "JwtBearer"))
    Grant.add_member(:refresh_token, Types::Grant::RefreshToken, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshTokenGrant, name: "RefreshToken"))
    Grant.add_member(:token_exchange, Types::Grant::TokenExchange, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenExchangeGrant, name: "TokenExchange"))
    Grant.add_member(:unknown, Types::Grant::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Grant.type = Types::Grant
    GrantItem.add_member(:grant_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantType, name: "GrantType", traits: {"smithy.api#required" => {}}))
    GrantItem.add_member(:grant, ::Smithy::Schema::Shapes::MemberShape.new(target: Grant, name: "Grant", traits: {"smithy.api#required" => {}}))
    GrantItem.type = Types::GrantItem
    GrantType.add_member(:authorization_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTHORIZATION_CODE", traits: {"smithy.api#enumValue" => "authorization_code"}))
    GrantType.add_member(:refresh_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REFRESH_TOKEN", traits: {"smithy.api#enumValue" => "refresh_token"}))
    GrantType.add_member(:jwt_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JWT_BEARER", traits: {"smithy.api#enumValue" => "urn:ietf:params:oauth:grant-type:jwt-bearer"}))
    GrantType.add_member(:token_exchange, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOKEN_EXCHANGE", traits: {"smithy.api#enumValue" => "urn:ietf:params:oauth:grant-type:token-exchange"}))
    Grants.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantItem, name: "member"))
    IamAuthenticationMethod.add_member(:actor_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ActorPolicyDocument, name: "ActorPolicy", traits: {"smithy.api#required" => {}}))
    IamAuthenticationMethod.type = Types::IamAuthenticationMethod
    InstanceAccessControlAttributeConfiguration.add_member(:access_control_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessControlAttributeList, name: "AccessControlAttributes", traits: {"smithy.api#required" => {}}))
    InstanceAccessControlAttributeConfiguration.type = Types::InstanceAccessControlAttributeConfiguration
    InstanceAccessControlAttributeConfigurationStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    InstanceAccessControlAttributeConfigurationStatus.add_member(:creation_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATION_IN_PROGRESS", traits: {"smithy.api#enumValue" => "CREATION_IN_PROGRESS"}))
    InstanceAccessControlAttributeConfigurationStatus.add_member(:creation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATION_FAILED", traits: {"smithy.api#enumValue" => "CREATION_FAILED"}))
    InstanceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceMetadata, name: "member"))
    InstanceMetadata.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn"))
    InstanceMetadata.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "IdentityStoreId"))
    InstanceMetadata.add_member(:identity_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceIdentityStoreArn, name: "IdentityStoreArn"))
    InstanceMetadata.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "OwnerAccountId"))
    InstanceMetadata.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameType, name: "Name"))
    InstanceMetadata.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreatedDate"))
    InstanceMetadata.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceStatus, name: "Status"))
    InstanceMetadata.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: Reason, name: "StatusReason"))
    InstanceMetadata.add_member(:primary_region, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "PrimaryRegion"))
    InstanceMetadata.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionMetadataList, name: "Regions"))
    InstanceMetadata.type = Types::InstanceMetadata
    InstanceStatus.add_member(:create_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    InstanceStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    InstanceStatus.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    InstanceStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: InternalFailureMessage, name: "Message"))
    InternalServerException.type = Types::InternalServerException
    JwksRetrievalOption.add_member(:open_id_discovery, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPEN_ID_DISCOVERY", traits: {"smithy.api#enumValue" => "OPEN_ID_DISCOVERY"}))
    JwtBearerGrant.add_member(:authorized_token_issuers, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizedTokenIssuers, name: "AuthorizedTokenIssuers"))
    JwtBearerGrant.type = Types::JwtBearerGrant
    KmsKeyStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    KmsKeyStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    KmsKeyStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    KmsKeyType.add_member(:aws_owned_kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_OWNED_KMS_KEY", traits: {"smithy.api#enumValue" => "AWS_OWNED_KMS_KEY"}))
    KmsKeyType.add_member(:customer_managed_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_MANAGED_KEY", traits: {"smithy.api#enumValue" => "CUSTOMER_MANAGED_KEY"}))
    ListAccountAssignmentCreationStatusRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    ListAccountAssignmentCreationStatusRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListAccountAssignmentCreationStatusRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListAccountAssignmentCreationStatusRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationStatusFilter, name: "Filter"))
    ListAccountAssignmentCreationStatusRequest.type = Types::ListAccountAssignmentCreationStatusRequest
    ListAccountAssignmentCreationStatusResponse.add_member(:account_assignments_creation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssignmentOperationStatusList, name: "AccountAssignmentsCreationStatus"))
    ListAccountAssignmentCreationStatusResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListAccountAssignmentCreationStatusResponse.type = Types::ListAccountAssignmentCreationStatusResponse
    ListAccountAssignmentDeletionStatusRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    ListAccountAssignmentDeletionStatusRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListAccountAssignmentDeletionStatusRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListAccountAssignmentDeletionStatusRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationStatusFilter, name: "Filter"))
    ListAccountAssignmentDeletionStatusRequest.type = Types::ListAccountAssignmentDeletionStatusRequest
    ListAccountAssignmentDeletionStatusResponse.add_member(:account_assignments_deletion_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssignmentOperationStatusList, name: "AccountAssignmentsDeletionStatus"))
    ListAccountAssignmentDeletionStatusResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListAccountAssignmentDeletionStatusResponse.type = Types::ListAccountAssignmentDeletionStatusResponse
    ListAccountAssignmentsFilter.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    ListAccountAssignmentsFilter.type = Types::ListAccountAssignmentsFilter
    ListAccountAssignmentsForPrincipalRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    ListAccountAssignmentsForPrincipalRequest.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalId, name: "PrincipalId", traits: {"smithy.api#required" => {}}))
    ListAccountAssignmentsForPrincipalRequest.add_member(:principal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalType, name: "PrincipalType", traits: {"smithy.api#required" => {}}))
    ListAccountAssignmentsForPrincipalRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAccountAssignmentsFilter, name: "Filter"))
    ListAccountAssignmentsForPrincipalRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListAccountAssignmentsForPrincipalRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 100}))
    ListAccountAssignmentsForPrincipalRequest.type = Types::ListAccountAssignmentsForPrincipalRequest
    ListAccountAssignmentsForPrincipalResponse.add_member(:account_assignments, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssignmentListForPrincipal, name: "AccountAssignments"))
    ListAccountAssignmentsForPrincipalResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListAccountAssignmentsForPrincipalResponse.type = Types::ListAccountAssignmentsForPrincipalResponse
    ListAccountAssignmentsRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    ListAccountAssignmentsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetId, name: "AccountId", traits: {"smithy.api#required" => {}}))
    ListAccountAssignmentsRequest.add_member(:permission_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetArn, name: "PermissionSetArn", traits: {"smithy.api#required" => {}}))
    ListAccountAssignmentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListAccountAssignmentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListAccountAssignmentsRequest.type = Types::ListAccountAssignmentsRequest
    ListAccountAssignmentsResponse.add_member(:account_assignments, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAssignmentList, name: "AccountAssignments"))
    ListAccountAssignmentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListAccountAssignmentsResponse.type = Types::ListAccountAssignmentsResponse
    ListAccountsForProvisionedPermissionSetRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    ListAccountsForProvisionedPermissionSetRequest.add_member(:permission_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetArn, name: "PermissionSetArn", traits: {"smithy.api#required" => {}}))
    ListAccountsForProvisionedPermissionSetRequest.add_member(:provisioning_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningStatus, name: "ProvisioningStatus"))
    ListAccountsForProvisionedPermissionSetRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListAccountsForProvisionedPermissionSetRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListAccountsForProvisionedPermissionSetRequest.type = Types::ListAccountsForProvisionedPermissionSetRequest
    ListAccountsForProvisionedPermissionSetResponse.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountList, name: "AccountIds"))
    ListAccountsForProvisionedPermissionSetResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListAccountsForProvisionedPermissionSetResponse.type = Types::ListAccountsForProvisionedPermissionSetResponse
    ListApplicationAccessScopesRequest.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "ApplicationArn", traits: {"smithy.api#required" => {}}))
    ListApplicationAccessScopesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 10, "smithy.api#range" => {"min" => 1, "max" => 10}}))
    ListApplicationAccessScopesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListApplicationAccessScopesRequest.type = Types::ListApplicationAccessScopesRequest
    ListApplicationAccessScopesResponse.add_member(:scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: Scopes, name: "Scopes", traits: {"smithy.api#required" => {}}))
    ListApplicationAccessScopesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListApplicationAccessScopesResponse.type = Types::ListApplicationAccessScopesResponse
    ListApplicationAssignmentsFilter.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "ApplicationArn"))
    ListApplicationAssignmentsFilter.type = Types::ListApplicationAssignmentsFilter
    ListApplicationAssignmentsForPrincipalRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    ListApplicationAssignmentsForPrincipalRequest.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalId, name: "PrincipalId", traits: {"smithy.api#required" => {}}))
    ListApplicationAssignmentsForPrincipalRequest.add_member(:principal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalType, name: "PrincipalType", traits: {"smithy.api#required" => {}}))
    ListApplicationAssignmentsForPrincipalRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ListApplicationAssignmentsFilter, name: "Filter"))
    ListApplicationAssignmentsForPrincipalRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListApplicationAssignmentsForPrincipalRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 100}))
    ListApplicationAssignmentsForPrincipalRequest.type = Types::ListApplicationAssignmentsForPrincipalRequest
    ListApplicationAssignmentsForPrincipalResponse.add_member(:application_assignments, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationAssignmentListForPrincipal, name: "ApplicationAssignments"))
    ListApplicationAssignmentsForPrincipalResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListApplicationAssignmentsForPrincipalResponse.type = Types::ListApplicationAssignmentsForPrincipalResponse
    ListApplicationAssignmentsRequest.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "ApplicationArn", traits: {"smithy.api#required" => {}}))
    ListApplicationAssignmentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListApplicationAssignmentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListApplicationAssignmentsRequest.type = Types::ListApplicationAssignmentsRequest
    ListApplicationAssignmentsResponse.add_member(:application_assignments, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationAssignmentsList, name: "ApplicationAssignments"))
    ListApplicationAssignmentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListApplicationAssignmentsResponse.type = Types::ListApplicationAssignmentsResponse
    ListApplicationAuthenticationMethodsRequest.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "ApplicationArn", traits: {"smithy.api#required" => {}}))
    ListApplicationAuthenticationMethodsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListApplicationAuthenticationMethodsRequest.type = Types::ListApplicationAuthenticationMethodsRequest
    ListApplicationAuthenticationMethodsResponse.add_member(:authentication_methods, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationMethods, name: "AuthenticationMethods"))
    ListApplicationAuthenticationMethodsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListApplicationAuthenticationMethodsResponse.type = Types::ListApplicationAuthenticationMethodsResponse
    ListApplicationGrantsRequest.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "ApplicationArn", traits: {"smithy.api#required" => {}}))
    ListApplicationGrantsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListApplicationGrantsRequest.type = Types::ListApplicationGrantsRequest
    ListApplicationGrantsResponse.add_member(:grants, ::Smithy::Schema::Shapes::MemberShape.new(target: Grants, name: "Grants", traits: {"smithy.api#required" => {}}))
    ListApplicationGrantsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListApplicationGrantsResponse.type = Types::ListApplicationGrantsResponse
    ListApplicationProvidersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListApplicationProvidersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListApplicationProvidersRequest.type = Types::ListApplicationProvidersRequest
    ListApplicationProvidersResponse.add_member(:application_providers, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationProviderList, name: "ApplicationProviders"))
    ListApplicationProvidersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListApplicationProvidersResponse.type = Types::ListApplicationProvidersResponse
    ListApplicationsFilter.add_member(:application_account, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ApplicationAccount"))
    ListApplicationsFilter.add_member(:application_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationProviderArn, name: "ApplicationProvider"))
    ListApplicationsFilter.type = Types::ListApplicationsFilter
    ListApplicationsRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    ListApplicationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListApplicationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListApplicationsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ListApplicationsFilter, name: "Filter"))
    ListApplicationsRequest.type = Types::ListApplicationsRequest
    ListApplicationsResponse.add_member(:applications, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationList, name: "Applications"))
    ListApplicationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListApplicationsResponse.type = Types::ListApplicationsResponse
    ListCustomerManagedPolicyReferencesInPermissionSetRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    ListCustomerManagedPolicyReferencesInPermissionSetRequest.add_member(:permission_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetArn, name: "PermissionSetArn", traits: {"smithy.api#required" => {}}))
    ListCustomerManagedPolicyReferencesInPermissionSetRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListCustomerManagedPolicyReferencesInPermissionSetRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListCustomerManagedPolicyReferencesInPermissionSetRequest.type = Types::ListCustomerManagedPolicyReferencesInPermissionSetRequest
    ListCustomerManagedPolicyReferencesInPermissionSetResponse.add_member(:customer_managed_policy_references, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerManagedPolicyReferenceList, name: "CustomerManagedPolicyReferences"))
    ListCustomerManagedPolicyReferencesInPermissionSetResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListCustomerManagedPolicyReferencesInPermissionSetResponse.type = Types::ListCustomerManagedPolicyReferencesInPermissionSetResponse
    ListInstancesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListInstancesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListInstancesRequest.type = Types::ListInstancesRequest
    ListInstancesResponse.add_member(:instances, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceList, name: "Instances"))
    ListInstancesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListInstancesResponse.type = Types::ListInstancesResponse
    ListManagedPoliciesInPermissionSetRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    ListManagedPoliciesInPermissionSetRequest.add_member(:permission_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetArn, name: "PermissionSetArn", traits: {"smithy.api#required" => {}}))
    ListManagedPoliciesInPermissionSetRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListManagedPoliciesInPermissionSetRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListManagedPoliciesInPermissionSetRequest.type = Types::ListManagedPoliciesInPermissionSetRequest
    ListManagedPoliciesInPermissionSetResponse.add_member(:attached_managed_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachedManagedPolicyList, name: "AttachedManagedPolicies"))
    ListManagedPoliciesInPermissionSetResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListManagedPoliciesInPermissionSetResponse.type = Types::ListManagedPoliciesInPermissionSetResponse
    ListPermissionSetProvisioningStatusRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    ListPermissionSetProvisioningStatusRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListPermissionSetProvisioningStatusRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListPermissionSetProvisioningStatusRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationStatusFilter, name: "Filter"))
    ListPermissionSetProvisioningStatusRequest.type = Types::ListPermissionSetProvisioningStatusRequest
    ListPermissionSetProvisioningStatusResponse.add_member(:permission_sets_provisioning_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetProvisioningStatusList, name: "PermissionSetsProvisioningStatus"))
    ListPermissionSetProvisioningStatusResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListPermissionSetProvisioningStatusResponse.type = Types::ListPermissionSetProvisioningStatusResponse
    ListPermissionSetsProvisionedToAccountRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    ListPermissionSetsProvisionedToAccountRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#required" => {}}))
    ListPermissionSetsProvisionedToAccountRequest.add_member(:provisioning_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningStatus, name: "ProvisioningStatus"))
    ListPermissionSetsProvisionedToAccountRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListPermissionSetsProvisionedToAccountRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListPermissionSetsProvisionedToAccountRequest.type = Types::ListPermissionSetsProvisionedToAccountRequest
    ListPermissionSetsProvisionedToAccountResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListPermissionSetsProvisionedToAccountResponse.add_member(:permission_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetList, name: "PermissionSets"))
    ListPermissionSetsProvisionedToAccountResponse.type = Types::ListPermissionSetsProvisionedToAccountResponse
    ListPermissionSetsRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    ListPermissionSetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListPermissionSetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListPermissionSetsRequest.type = Types::ListPermissionSetsRequest
    ListPermissionSetsResponse.add_member(:permission_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetList, name: "PermissionSets"))
    ListPermissionSetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListPermissionSetsResponse.type = Types::ListPermissionSetsResponse
    ListRegionsRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    ListRegionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListRegionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListRegionsRequest.type = Types::ListRegionsRequest
    ListRegionsResponse.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionMetadataList, name: "Regions"))
    ListRegionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListRegionsResponse.type = Types::ListRegionsResponse
    ListTagsForResourceRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn"))
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTrustedTokenIssuersRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    ListTrustedTokenIssuersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListTrustedTokenIssuersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListTrustedTokenIssuersRequest.type = Types::ListTrustedTokenIssuersRequest
    ListTrustedTokenIssuersResponse.add_member(:trusted_token_issuers, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedTokenIssuerList, name: "TrustedTokenIssuers"))
    ListTrustedTokenIssuersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListTrustedTokenIssuersResponse.type = Types::ListTrustedTokenIssuersResponse
    OidcJwtConfiguration.add_member(:issuer_url, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedTokenIssuerUrl, name: "IssuerUrl", traits: {"smithy.api#required" => {}}))
    OidcJwtConfiguration.add_member(:claim_attribute_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ClaimAttributePath, name: "ClaimAttributePath", traits: {"smithy.api#required" => {}}))
    OidcJwtConfiguration.add_member(:identity_store_attribute_path, ::Smithy::Schema::Shapes::MemberShape.new(target: JMESPath, name: "IdentityStoreAttributePath", traits: {"smithy.api#required" => {}}))
    OidcJwtConfiguration.add_member(:jwks_retrieval_option, ::Smithy::Schema::Shapes::MemberShape.new(target: JwksRetrievalOption, name: "JwksRetrievalOption", traits: {"smithy.api#required" => {}}))
    OidcJwtConfiguration.type = Types::OidcJwtConfiguration
    OidcJwtUpdateConfiguration.add_member(:claim_attribute_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ClaimAttributePath, name: "ClaimAttributePath"))
    OidcJwtUpdateConfiguration.add_member(:identity_store_attribute_path, ::Smithy::Schema::Shapes::MemberShape.new(target: JMESPath, name: "IdentityStoreAttributePath"))
    OidcJwtUpdateConfiguration.add_member(:jwks_retrieval_option, ::Smithy::Schema::Shapes::MemberShape.new(target: JwksRetrievalOption, name: "JwksRetrievalOption"))
    OidcJwtUpdateConfiguration.type = Types::OidcJwtUpdateConfiguration
    OperationStatusFilter.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusValues, name: "Status"))
    OperationStatusFilter.type = Types::OperationStatusFilter
    PermissionSet.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetName, name: "Name"))
    PermissionSet.add_member(:permission_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetArn, name: "PermissionSetArn"))
    PermissionSet.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetDescription, name: "Description"))
    PermissionSet.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreatedDate"))
    PermissionSet.add_member(:session_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "SessionDuration"))
    PermissionSet.add_member(:relay_state, ::Smithy::Schema::Shapes::MemberShape.new(target: RelayState, name: "RelayState"))
    PermissionSet.type = Types::PermissionSet
    PermissionSetList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetArn, name: "member"))
    PermissionSetProvisioningStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusValues, name: "Status"))
    PermissionSetProvisioningStatus.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUId, name: "RequestId"))
    PermissionSetProvisioningStatus.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    PermissionSetProvisioningStatus.add_member(:permission_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetArn, name: "PermissionSetArn"))
    PermissionSetProvisioningStatus.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: Reason, name: "FailureReason"))
    PermissionSetProvisioningStatus.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreatedDate"))
    PermissionSetProvisioningStatus.type = Types::PermissionSetProvisioningStatus
    PermissionSetProvisioningStatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetProvisioningStatusMetadata, name: "member"))
    PermissionSetProvisioningStatusMetadata.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusValues, name: "Status"))
    PermissionSetProvisioningStatusMetadata.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUId, name: "RequestId"))
    PermissionSetProvisioningStatusMetadata.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreatedDate"))
    PermissionSetProvisioningStatusMetadata.type = Types::PermissionSetProvisioningStatusMetadata
    PermissionsBoundary.add_member(:customer_managed_policy_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerManagedPolicyReference, name: "CustomerManagedPolicyReference"))
    PermissionsBoundary.add_member(:managed_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedPolicyArn, name: "ManagedPolicyArn"))
    PermissionsBoundary.type = Types::PermissionsBoundary
    PortalOptions.add_member(:sign_in_options, ::Smithy::Schema::Shapes::MemberShape.new(target: SignInOptions, name: "SignInOptions"))
    PortalOptions.add_member(:visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationVisibility, name: "Visibility", traits: {"smithy.api#default" => "ENABLED"}))
    PortalOptions.type = Types::PortalOptions
    PrincipalType.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER", traits: {"smithy.api#enumValue" => "USER"}))
    PrincipalType.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GROUP", traits: {"smithy.api#enumValue" => "GROUP"}))
    ProvisionPermissionSetRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    ProvisionPermissionSetRequest.add_member(:permission_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetArn, name: "PermissionSetArn", traits: {"smithy.api#required" => {}}))
    ProvisionPermissionSetRequest.add_member(:target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetId, name: "TargetId"))
    ProvisionPermissionSetRequest.add_member(:target_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionTargetType, name: "TargetType", traits: {"smithy.api#required" => {}}))
    ProvisionPermissionSetRequest.type = Types::ProvisionPermissionSetRequest
    ProvisionPermissionSetResponse.add_member(:permission_set_provisioning_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetProvisioningStatus, name: "PermissionSetProvisioningStatus"))
    ProvisionPermissionSetResponse.type = Types::ProvisionPermissionSetResponse
    ProvisionTargetType.add_member(:aws_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_ACCOUNT", traits: {"smithy.api#enumValue" => "AWS_ACCOUNT"}))
    ProvisionTargetType.add_member(:all_provisioned_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL_PROVISIONED_ACCOUNTS", traits: {"smithy.api#enumValue" => "ALL_PROVISIONED_ACCOUNTS"}))
    ProvisioningStatus.add_member(:latest_permission_set_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LATEST_PERMISSION_SET_PROVISIONED", traits: {"smithy.api#enumValue" => "LATEST_PERMISSION_SET_PROVISIONED"}))
    ProvisioningStatus.add_member(:latest_permission_set_not_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LATEST_PERMISSION_SET_NOT_PROVISIONED", traits: {"smithy.api#enumValue" => "LATEST_PERMISSION_SET_NOT_PROVISIONED"}))
    PutApplicationAccessScopeRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    PutApplicationAccessScopeRequest.add_member(:authorized_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeTargets, name: "AuthorizedTargets"))
    PutApplicationAccessScopeRequest.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "ApplicationArn", traits: {"smithy.api#required" => {}}))
    PutApplicationAccessScopeRequest.type = Types::PutApplicationAccessScopeRequest
    PutApplicationAssignmentConfigurationRequest.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "ApplicationArn", traits: {"smithy.api#required" => {}}))
    PutApplicationAssignmentConfigurationRequest.add_member(:assignment_required, ::Smithy::Schema::Shapes::MemberShape.new(target: AssignmentRequired, name: "AssignmentRequired", traits: {"smithy.api#default" => true, "smithy.api#required" => {}}))
    PutApplicationAssignmentConfigurationRequest.type = Types::PutApplicationAssignmentConfigurationRequest
    PutApplicationAssignmentConfigurationResponse.type = Types::PutApplicationAssignmentConfigurationResponse
    PutApplicationAuthenticationMethodRequest.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "ApplicationArn", traits: {"smithy.api#required" => {}}))
    PutApplicationAuthenticationMethodRequest.add_member(:authentication_method_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationMethodType, name: "AuthenticationMethodType", traits: {"smithy.api#required" => {}}))
    PutApplicationAuthenticationMethodRequest.add_member(:authentication_method, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationMethod, name: "AuthenticationMethod", traits: {"smithy.api#required" => {}}))
    PutApplicationAuthenticationMethodRequest.type = Types::PutApplicationAuthenticationMethodRequest
    PutApplicationGrantRequest.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "ApplicationArn", traits: {"smithy.api#required" => {}}))
    PutApplicationGrantRequest.add_member(:grant_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantType, name: "GrantType", traits: {"smithy.api#required" => {}}))
    PutApplicationGrantRequest.add_member(:grant, ::Smithy::Schema::Shapes::MemberShape.new(target: Grant, name: "Grant", traits: {"smithy.api#required" => {}}))
    PutApplicationGrantRequest.type = Types::PutApplicationGrantRequest
    PutApplicationSessionConfigurationRequest.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "ApplicationArn", traits: {"smithy.api#required" => {}}))
    PutApplicationSessionConfigurationRequest.add_member(:user_background_session_application_status, ::Smithy::Schema::Shapes::MemberShape.new(target: UserBackgroundSessionApplicationStatus, name: "UserBackgroundSessionApplicationStatus"))
    PutApplicationSessionConfigurationRequest.type = Types::PutApplicationSessionConfigurationRequest
    PutApplicationSessionConfigurationResponse.type = Types::PutApplicationSessionConfigurationResponse
    PutInlinePolicyToPermissionSetRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    PutInlinePolicyToPermissionSetRequest.add_member(:permission_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetArn, name: "PermissionSetArn", traits: {"smithy.api#required" => {}}))
    PutInlinePolicyToPermissionSetRequest.add_member(:inline_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetPolicyDocument, name: "InlinePolicy", traits: {"smithy.api#required" => {}}))
    PutInlinePolicyToPermissionSetRequest.type = Types::PutInlinePolicyToPermissionSetRequest
    PutInlinePolicyToPermissionSetResponse.type = Types::PutInlinePolicyToPermissionSetResponse
    PutPermissionsBoundaryToPermissionSetRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    PutPermissionsBoundaryToPermissionSetRequest.add_member(:permission_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetArn, name: "PermissionSetArn", traits: {"smithy.api#required" => {}}))
    PutPermissionsBoundaryToPermissionSetRequest.add_member(:permissions_boundary, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionsBoundary, name: "PermissionsBoundary", traits: {"smithy.api#required" => {}}))
    PutPermissionsBoundaryToPermissionSetRequest.type = Types::PutPermissionsBoundaryToPermissionSetRequest
    PutPermissionsBoundaryToPermissionSetResponse.type = Types::PutPermissionsBoundaryToPermissionSetResponse
    RedirectUris.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: URI, name: "member"))
    RefreshTokenGrant.type = Types::RefreshTokenGrant
    RegionMetadata.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "RegionName"))
    RegionMetadata.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionStatus, name: "Status"))
    RegionMetadata.add_member(:added_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "AddedDate"))
    RegionMetadata.add_member(:is_primary_region, ::Smithy::Schema::Shapes::MemberShape.new(target: IsPrimaryRegion, name: "IsPrimaryRegion", traits: {"smithy.api#default" => false}))
    RegionMetadata.type = Types::RegionMetadata
    RegionMetadataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionMetadata, name: "member"))
    RegionStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    RegionStatus.add_member(:adding, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADDING", traits: {"smithy.api#enumValue" => "ADDING"}))
    RegionStatus.add_member(:removing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REMOVING", traits: {"smithy.api#enumValue" => "REMOVING"}))
    RemoveRegionRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    RemoveRegionRequest.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "RegionName", traits: {"smithy.api#required" => {}}))
    RemoveRegionRequest.type = Types::RemoveRegionRequest
    RemoveRegionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionStatus, name: "Status"))
    RemoveRegionResponse.type = Types::RemoveRegionResponse
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNotFoundMessage, name: "Message"))
    ResourceNotFoundException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNotFoundExceptionReason, name: "Reason"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceNotFoundExceptionReason.add_member(:kms_not_found_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMS_NOT_FOUND_EXCEPTION", traits: {"smithy.api#enumValue" => "KMS_NotFoundException"}))
    ResourceServerConfig.add_member(:scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceServerScopes, name: "Scopes"))
    ResourceServerConfig.type = Types::ResourceServerConfig
    ResourceServerScopeDetails.add_member(:long_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "LongDescription"))
    ResourceServerScopeDetails.add_member(:detailed_title, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "DetailedTitle"))
    ResourceServerScopeDetails.type = Types::ResourceServerScopeDetails
    ResourceServerScopes.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceServerScope, name: "key"))
    ResourceServerScopes.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceServerScopeDetails, name: "value"))
    ScopeDetails.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    ScopeDetails.add_member(:authorized_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeTargets, name: "AuthorizedTargets"))
    ScopeDetails.type = Types::ScopeDetails
    ScopeTargets.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeTarget, name: "member"))
    Scopes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeDetails, name: "member"))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceQuotaExceededMessage, name: "Message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SignInOptions.add_member(:origin, ::Smithy::Schema::Shapes::MemberShape.new(target: SignInOrigin, name: "Origin", traits: {"smithy.api#required" => {}}))
    SignInOptions.add_member(:application_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationUrl, name: "ApplicationUrl"))
    SignInOptions.type = Types::SignInOptions
    SignInOrigin.add_member(:identity_center, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDENTITY_CENTER", traits: {"smithy.api#enumValue" => "IDENTITY_CENTER"}))
    SignInOrigin.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPLICATION", traits: {"smithy.api#enumValue" => "APPLICATION"}))
    StatusValues.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    StatusValues.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    StatusValues.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TargetType.add_member(:aws_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_ACCOUNT", traits: {"smithy.api#enumValue" => "AWS_ACCOUNT"}))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottlingExceptionMessage, name: "Message"))
    ThrottlingException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottlingExceptionReason, name: "Reason"))
    ThrottlingException.type = Types::ThrottlingException
    ThrottlingExceptionReason.add_member(:kms_throttling_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMS_THROTTLING_EXCEPTION", traits: {"smithy.api#enumValue" => "KMS_ThrottlingException"}))
    TokenExchangeGrant.type = Types::TokenExchangeGrant
    TokenIssuerAudiences.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenIssuerAudience, name: "member"))
    TrustedTokenIssuerConfiguration.add_member(:oidc_jwt_configuration, Types::TrustedTokenIssuerConfiguration::OidcJwtConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: OidcJwtConfiguration, name: "OidcJwtConfiguration"))
    TrustedTokenIssuerConfiguration.add_member(:unknown, Types::TrustedTokenIssuerConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    TrustedTokenIssuerConfiguration.type = Types::TrustedTokenIssuerConfiguration
    TrustedTokenIssuerList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedTokenIssuerMetadata, name: "member"))
    TrustedTokenIssuerMetadata.add_member(:trusted_token_issuer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedTokenIssuerArn, name: "TrustedTokenIssuerArn"))
    TrustedTokenIssuerMetadata.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedTokenIssuerName, name: "Name"))
    TrustedTokenIssuerMetadata.add_member(:trusted_token_issuer_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedTokenIssuerType, name: "TrustedTokenIssuerType"))
    TrustedTokenIssuerMetadata.type = Types::TrustedTokenIssuerMetadata
    TrustedTokenIssuerType.add_member(:oidc_jwt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OIDC_JWT", traits: {"smithy.api#enumValue" => "OIDC_JWT"}))
    TrustedTokenIssuerUpdateConfiguration.add_member(:oidc_jwt_configuration, Types::TrustedTokenIssuerUpdateConfiguration::OidcJwtConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: OidcJwtUpdateConfiguration, name: "OidcJwtConfiguration"))
    TrustedTokenIssuerUpdateConfiguration.add_member(:unknown, Types::TrustedTokenIssuerUpdateConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    TrustedTokenIssuerUpdateConfiguration.type = Types::TrustedTokenIssuerUpdateConfiguration
    UntagResourceRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn"))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateApplicationPortalOptions.add_member(:sign_in_options, ::Smithy::Schema::Shapes::MemberShape.new(target: SignInOptions, name: "SignInOptions"))
    UpdateApplicationPortalOptions.type = Types::UpdateApplicationPortalOptions
    UpdateApplicationRequest.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "ApplicationArn", traits: {"smithy.api#required" => {}}))
    UpdateApplicationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationNameType, name: "Name"))
    UpdateApplicationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateApplicationRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationStatus, name: "Status"))
    UpdateApplicationRequest.add_member(:portal_options, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateApplicationPortalOptions, name: "PortalOptions"))
    UpdateApplicationRequest.type = Types::UpdateApplicationRequest
    UpdateApplicationResponse.type = Types::UpdateApplicationResponse
    UpdateInstanceAccessControlAttributeConfigurationRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    UpdateInstanceAccessControlAttributeConfigurationRequest.add_member(:instance_access_control_attribute_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceAccessControlAttributeConfiguration, name: "InstanceAccessControlAttributeConfiguration", traits: {"smithy.api#required" => {}}))
    UpdateInstanceAccessControlAttributeConfigurationRequest.type = Types::UpdateInstanceAccessControlAttributeConfigurationRequest
    UpdateInstanceAccessControlAttributeConfigurationResponse.type = Types::UpdateInstanceAccessControlAttributeConfigurationResponse
    UpdateInstanceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameType, name: "Name"))
    UpdateInstanceRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    UpdateInstanceRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "EncryptionConfiguration"))
    UpdateInstanceRequest.add_member(:permission_sets_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "PermissionSetsEnabled"))
    UpdateInstanceRequest.type = Types::UpdateInstanceRequest
    UpdateInstanceResponse.type = Types::UpdateInstanceResponse
    UpdatePermissionSetRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#required" => {}}))
    UpdatePermissionSetRequest.add_member(:permission_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetArn, name: "PermissionSetArn", traits: {"smithy.api#required" => {}}))
    UpdatePermissionSetRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionSetDescription, name: "Description"))
    UpdatePermissionSetRequest.add_member(:session_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "SessionDuration"))
    UpdatePermissionSetRequest.add_member(:relay_state, ::Smithy::Schema::Shapes::MemberShape.new(target: RelayState, name: "RelayState"))
    UpdatePermissionSetRequest.type = Types::UpdatePermissionSetRequest
    UpdatePermissionSetResponse.type = Types::UpdatePermissionSetResponse
    UpdateTrustedTokenIssuerRequest.add_member(:trusted_token_issuer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedTokenIssuerArn, name: "TrustedTokenIssuerArn", traits: {"smithy.api#required" => {}}))
    UpdateTrustedTokenIssuerRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedTokenIssuerName, name: "Name"))
    UpdateTrustedTokenIssuerRequest.add_member(:trusted_token_issuer_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedTokenIssuerUpdateConfiguration, name: "TrustedTokenIssuerConfiguration"))
    UpdateTrustedTokenIssuerRequest.type = Types::UpdateTrustedTokenIssuerRequest
    UpdateTrustedTokenIssuerResponse.type = Types::UpdateTrustedTokenIssuerResponse
    UserBackgroundSessionApplicationStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    UserBackgroundSessionApplicationStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionMessage, name: "Message"))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "Reason"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionReason.add_member(:kms_invalid_key_usage_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMS_INVALID_KEY_USAGE_EXCEPTION", traits: {"smithy.api#enumValue" => "KMS_InvalidKeyUsageException"}))
    ValidationExceptionReason.add_member(:kms_invalid_state_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMS_INVALID_STATE_EXCEPTION", traits: {"smithy.api#enumValue" => "KMS_InvalidStateException"}))
    ValidationExceptionReason.add_member(:kms_disabled_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMS_DISABLED_EXCEPTION", traits: {"smithy.api#enumValue" => "KMS_DisabledException"}))

    SWBExternalService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.ssoadmin#SWBExternalService"
      service.name = "SWBExternalService"
      service.version = "2020-07-20"
      service.traits = {"aws.api#service" => {"sdkId" => "SSO Admin", "arnNamespace" => "sso", "cloudFormationName" => "SSO", "cloudTrailEventSource" => "sso.amazonaws.com", "endpointPrefix" => "sso"}, "aws.auth#sigv4" => {"name" => "sso"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Single Sign-On Admin", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-us-gov"]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://sso-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://sso.{Region}.amazonaws.com", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://sso-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://sso.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://sso.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 14, "nodes" => "/////wAAAAH/////AAAAAAAAAA0AAAADAAAAAQAAAAQF9eEMAAAAAgAAAAUF9eEMAAAAAwAAAAgAAAAGAAAABAAAAAcF9eELAAAABQX14QkF9eEKAAAABAAAAAsAAAAJAAAABgAAAAoF9eEIAAAABwX14QYF9eEHAAAABQAAAAwF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAAOAAAABAX14QIF9eED"}}
      service.add_operation(:add_region, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#AddRegion"
        operation.name = "AddRegion"
        operation.input = AddRegionRequest
        operation.output = AddRegionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:attach_customer_managed_policy_reference_to_permission_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#AttachCustomerManagedPolicyReferenceToPermissionSet"
        operation.name = "AttachCustomerManagedPolicyReferenceToPermissionSet"
        operation.input = AttachCustomerManagedPolicyReferenceToPermissionSetRequest
        operation.output = AttachCustomerManagedPolicyReferenceToPermissionSetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:attach_managed_policy_to_permission_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#AttachManagedPolicyToPermissionSet"
        operation.name = "AttachManagedPolicyToPermissionSet"
        operation.input = AttachManagedPolicyToPermissionSetRequest
        operation.output = AttachManagedPolicyToPermissionSetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_account_assignment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#CreateAccountAssignment"
        operation.name = "CreateAccountAssignment"
        operation.input = CreateAccountAssignmentRequest
        operation.output = CreateAccountAssignmentResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#CreateApplication"
        operation.name = "CreateApplication"
        operation.input = CreateApplicationRequest
        operation.output = CreateApplicationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_application_assignment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#CreateApplicationAssignment"
        operation.name = "CreateApplicationAssignment"
        operation.input = CreateApplicationAssignmentRequest
        operation.output = CreateApplicationAssignmentResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#CreateInstance"
        operation.name = "CreateInstance"
        operation.input = CreateInstanceRequest
        operation.output = CreateInstanceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_instance_access_control_attribute_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#CreateInstanceAccessControlAttributeConfiguration"
        operation.name = "CreateInstanceAccessControlAttributeConfiguration"
        operation.input = CreateInstanceAccessControlAttributeConfigurationRequest
        operation.output = CreateInstanceAccessControlAttributeConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_permission_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#CreatePermissionSet"
        operation.name = "CreatePermissionSet"
        operation.input = CreatePermissionSetRequest
        operation.output = CreatePermissionSetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_trusted_token_issuer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#CreateTrustedTokenIssuer"
        operation.name = "CreateTrustedTokenIssuer"
        operation.input = CreateTrustedTokenIssuerRequest
        operation.output = CreateTrustedTokenIssuerResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_account_assignment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DeleteAccountAssignment"
        operation.name = "DeleteAccountAssignment"
        operation.input = DeleteAccountAssignmentRequest
        operation.output = DeleteAccountAssignmentResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DeleteApplication"
        operation.name = "DeleteApplication"
        operation.input = DeleteApplicationRequest
        operation.output = DeleteApplicationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_application_access_scope, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DeleteApplicationAccessScope"
        operation.name = "DeleteApplicationAccessScope"
        operation.input = DeleteApplicationAccessScopeRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_application_assignment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DeleteApplicationAssignment"
        operation.name = "DeleteApplicationAssignment"
        operation.input = DeleteApplicationAssignmentRequest
        operation.output = DeleteApplicationAssignmentResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_application_authentication_method, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DeleteApplicationAuthenticationMethod"
        operation.name = "DeleteApplicationAuthenticationMethod"
        operation.input = DeleteApplicationAuthenticationMethodRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_application_grant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DeleteApplicationGrant"
        operation.name = "DeleteApplicationGrant"
        operation.input = DeleteApplicationGrantRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_inline_policy_from_permission_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DeleteInlinePolicyFromPermissionSet"
        operation.name = "DeleteInlinePolicyFromPermissionSet"
        operation.input = DeleteInlinePolicyFromPermissionSetRequest
        operation.output = DeleteInlinePolicyFromPermissionSetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DeleteInstance"
        operation.name = "DeleteInstance"
        operation.input = DeleteInstanceRequest
        operation.output = DeleteInstanceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_instance_access_control_attribute_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DeleteInstanceAccessControlAttributeConfiguration"
        operation.name = "DeleteInstanceAccessControlAttributeConfiguration"
        operation.input = DeleteInstanceAccessControlAttributeConfigurationRequest
        operation.output = DeleteInstanceAccessControlAttributeConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_permission_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DeletePermissionSet"
        operation.name = "DeletePermissionSet"
        operation.input = DeletePermissionSetRequest
        operation.output = DeletePermissionSetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_permissions_boundary_from_permission_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DeletePermissionsBoundaryFromPermissionSet"
        operation.name = "DeletePermissionsBoundaryFromPermissionSet"
        operation.input = DeletePermissionsBoundaryFromPermissionSetRequest
        operation.output = DeletePermissionsBoundaryFromPermissionSetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_trusted_token_issuer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DeleteTrustedTokenIssuer"
        operation.name = "DeleteTrustedTokenIssuer"
        operation.input = DeleteTrustedTokenIssuerRequest
        operation.output = DeleteTrustedTokenIssuerResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_account_assignment_creation_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DescribeAccountAssignmentCreationStatus"
        operation.name = "DescribeAccountAssignmentCreationStatus"
        operation.input = DescribeAccountAssignmentCreationStatusRequest
        operation.output = DescribeAccountAssignmentCreationStatusResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_account_assignment_deletion_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DescribeAccountAssignmentDeletionStatus"
        operation.name = "DescribeAccountAssignmentDeletionStatus"
        operation.input = DescribeAccountAssignmentDeletionStatusRequest
        operation.output = DescribeAccountAssignmentDeletionStatusResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DescribeApplication"
        operation.name = "DescribeApplication"
        operation.input = DescribeApplicationRequest
        operation.output = DescribeApplicationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_application_assignment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DescribeApplicationAssignment"
        operation.name = "DescribeApplicationAssignment"
        operation.input = DescribeApplicationAssignmentRequest
        operation.output = DescribeApplicationAssignmentResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_application_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DescribeApplicationProvider"
        operation.name = "DescribeApplicationProvider"
        operation.input = DescribeApplicationProviderRequest
        operation.output = DescribeApplicationProviderResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DescribeInstance"
        operation.name = "DescribeInstance"
        operation.input = DescribeInstanceRequest
        operation.output = DescribeInstanceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_instance_access_control_attribute_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DescribeInstanceAccessControlAttributeConfiguration"
        operation.name = "DescribeInstanceAccessControlAttributeConfiguration"
        operation.input = DescribeInstanceAccessControlAttributeConfigurationRequest
        operation.output = DescribeInstanceAccessControlAttributeConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_permission_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DescribePermissionSet"
        operation.name = "DescribePermissionSet"
        operation.input = DescribePermissionSetRequest
        operation.output = DescribePermissionSetResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_permission_set_provisioning_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DescribePermissionSetProvisioningStatus"
        operation.name = "DescribePermissionSetProvisioningStatus"
        operation.input = DescribePermissionSetProvisioningStatusRequest
        operation.output = DescribePermissionSetProvisioningStatusResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_region, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DescribeRegion"
        operation.name = "DescribeRegion"
        operation.input = DescribeRegionRequest
        operation.output = DescribeRegionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_trusted_token_issuer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DescribeTrustedTokenIssuer"
        operation.name = "DescribeTrustedTokenIssuer"
        operation.input = DescribeTrustedTokenIssuerRequest
        operation.output = DescribeTrustedTokenIssuerResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:detach_customer_managed_policy_reference_from_permission_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DetachCustomerManagedPolicyReferenceFromPermissionSet"
        operation.name = "DetachCustomerManagedPolicyReferenceFromPermissionSet"
        operation.input = DetachCustomerManagedPolicyReferenceFromPermissionSetRequest
        operation.output = DetachCustomerManagedPolicyReferenceFromPermissionSetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:detach_managed_policy_from_permission_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#DetachManagedPolicyFromPermissionSet"
        operation.name = "DetachManagedPolicyFromPermissionSet"
        operation.input = DetachManagedPolicyFromPermissionSetRequest
        operation.output = DetachManagedPolicyFromPermissionSetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_application_access_scope, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#GetApplicationAccessScope"
        operation.name = "GetApplicationAccessScope"
        operation.input = GetApplicationAccessScopeRequest
        operation.output = GetApplicationAccessScopeResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_application_assignment_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#GetApplicationAssignmentConfiguration"
        operation.name = "GetApplicationAssignmentConfiguration"
        operation.input = GetApplicationAssignmentConfigurationRequest
        operation.output = GetApplicationAssignmentConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_application_authentication_method, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#GetApplicationAuthenticationMethod"
        operation.name = "GetApplicationAuthenticationMethod"
        operation.input = GetApplicationAuthenticationMethodRequest
        operation.output = GetApplicationAuthenticationMethodResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_application_grant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#GetApplicationGrant"
        operation.name = "GetApplicationGrant"
        operation.input = GetApplicationGrantRequest
        operation.output = GetApplicationGrantResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_application_session_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#GetApplicationSessionConfiguration"
        operation.name = "GetApplicationSessionConfiguration"
        operation.input = GetApplicationSessionConfigurationRequest
        operation.output = GetApplicationSessionConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_inline_policy_for_permission_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#GetInlinePolicyForPermissionSet"
        operation.name = "GetInlinePolicyForPermissionSet"
        operation.input = GetInlinePolicyForPermissionSetRequest
        operation.output = GetInlinePolicyForPermissionSetResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_permissions_boundary_for_permission_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#GetPermissionsBoundaryForPermissionSet"
        operation.name = "GetPermissionsBoundaryForPermissionSet"
        operation.input = GetPermissionsBoundaryForPermissionSetRequest
        operation.output = GetPermissionsBoundaryForPermissionSetResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:list_account_assignment_creation_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListAccountAssignmentCreationStatus"
        operation.name = "ListAccountAssignmentCreationStatus"
        operation.input = ListAccountAssignmentCreationStatusRequest
        operation.output = ListAccountAssignmentCreationStatusResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAccountAssignmentCreationStatus.new
      end)
      service.add_operation(:list_account_assignment_deletion_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListAccountAssignmentDeletionStatus"
        operation.name = "ListAccountAssignmentDeletionStatus"
        operation.input = ListAccountAssignmentDeletionStatusRequest
        operation.output = ListAccountAssignmentDeletionStatusResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAccountAssignmentDeletionStatus.new
      end)
      service.add_operation(:list_account_assignments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListAccountAssignments"
        operation.name = "ListAccountAssignments"
        operation.input = ListAccountAssignmentsRequest
        operation.output = ListAccountAssignmentsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAccountAssignments.new
      end)
      service.add_operation(:list_account_assignments_for_principal, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListAccountAssignmentsForPrincipal"
        operation.name = "ListAccountAssignmentsForPrincipal"
        operation.input = ListAccountAssignmentsForPrincipalRequest
        operation.output = ListAccountAssignmentsForPrincipalResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAccountAssignmentsForPrincipal.new
      end)
      service.add_operation(:list_accounts_for_provisioned_permission_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListAccountsForProvisionedPermissionSet"
        operation.name = "ListAccountsForProvisionedPermissionSet"
        operation.input = ListAccountsForProvisionedPermissionSetRequest
        operation.output = ListAccountsForProvisionedPermissionSetResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAccountsForProvisionedPermissionSet.new
      end)
      service.add_operation(:list_application_access_scopes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListApplicationAccessScopes"
        operation.name = "ListApplicationAccessScopes"
        operation.input = ListApplicationAccessScopesRequest
        operation.output = ListApplicationAccessScopesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListApplicationAccessScopes.new
      end)
      service.add_operation(:list_application_assignments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListApplicationAssignments"
        operation.name = "ListApplicationAssignments"
        operation.input = ListApplicationAssignmentsRequest
        operation.output = ListApplicationAssignmentsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListApplicationAssignments.new
      end)
      service.add_operation(:list_application_assignments_for_principal, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListApplicationAssignmentsForPrincipal"
        operation.name = "ListApplicationAssignmentsForPrincipal"
        operation.input = ListApplicationAssignmentsForPrincipalRequest
        operation.output = ListApplicationAssignmentsForPrincipalResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListApplicationAssignmentsForPrincipal.new
      end)
      service.add_operation(:list_application_authentication_methods, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListApplicationAuthenticationMethods"
        operation.name = "ListApplicationAuthenticationMethods"
        operation.input = ListApplicationAuthenticationMethodsRequest
        operation.output = ListApplicationAuthenticationMethodsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListApplicationAuthenticationMethods.new
      end)
      service.add_operation(:list_application_grants, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListApplicationGrants"
        operation.name = "ListApplicationGrants"
        operation.input = ListApplicationGrantsRequest
        operation.output = ListApplicationGrantsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListApplicationGrants.new
      end)
      service.add_operation(:list_application_providers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListApplicationProviders"
        operation.name = "ListApplicationProviders"
        operation.input = ListApplicationProvidersRequest
        operation.output = ListApplicationProvidersResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListApplicationProviders.new
      end)
      service.add_operation(:list_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListApplications"
        operation.name = "ListApplications"
        operation.input = ListApplicationsRequest
        operation.output = ListApplicationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListApplications.new
      end)
      service.add_operation(:list_customer_managed_policy_references_in_permission_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListCustomerManagedPolicyReferencesInPermissionSet"
        operation.name = "ListCustomerManagedPolicyReferencesInPermissionSet"
        operation.input = ListCustomerManagedPolicyReferencesInPermissionSetRequest
        operation.output = ListCustomerManagedPolicyReferencesInPermissionSetResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListCustomerManagedPolicyReferencesInPermissionSet.new
      end)
      service.add_operation(:list_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListInstances"
        operation.name = "ListInstances"
        operation.input = ListInstancesRequest
        operation.output = ListInstancesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListInstances.new
      end)
      service.add_operation(:list_managed_policies_in_permission_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListManagedPoliciesInPermissionSet"
        operation.name = "ListManagedPoliciesInPermissionSet"
        operation.input = ListManagedPoliciesInPermissionSetRequest
        operation.output = ListManagedPoliciesInPermissionSetResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListManagedPoliciesInPermissionSet.new
      end)
      service.add_operation(:list_permission_set_provisioning_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListPermissionSetProvisioningStatus"
        operation.name = "ListPermissionSetProvisioningStatus"
        operation.input = ListPermissionSetProvisioningStatusRequest
        operation.output = ListPermissionSetProvisioningStatusResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListPermissionSetProvisioningStatus.new
      end)
      service.add_operation(:list_permission_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListPermissionSets"
        operation.name = "ListPermissionSets"
        operation.input = ListPermissionSetsRequest
        operation.output = ListPermissionSetsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListPermissionSets.new
      end)
      service.add_operation(:list_permission_sets_provisioned_to_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListPermissionSetsProvisionedToAccount"
        operation.name = "ListPermissionSetsProvisionedToAccount"
        operation.input = ListPermissionSetsProvisionedToAccountRequest
        operation.output = ListPermissionSetsProvisionedToAccountResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListPermissionSetsProvisionedToAccount.new
      end)
      service.add_operation(:list_regions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListRegions"
        operation.name = "ListRegions"
        operation.input = ListRegionsRequest
        operation.output = ListRegionsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListRegions.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:list_trusted_token_issuers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ListTrustedTokenIssuers"
        operation.name = "ListTrustedTokenIssuers"
        operation.input = ListTrustedTokenIssuersRequest
        operation.output = ListTrustedTokenIssuersResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListTrustedTokenIssuers.new
      end)
      service.add_operation(:provision_permission_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#ProvisionPermissionSet"
        operation.name = "ProvisionPermissionSet"
        operation.input = ProvisionPermissionSetRequest
        operation.output = ProvisionPermissionSetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:put_application_access_scope, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#PutApplicationAccessScope"
        operation.name = "PutApplicationAccessScope"
        operation.input = PutApplicationAccessScopeRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_application_assignment_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#PutApplicationAssignmentConfiguration"
        operation.name = "PutApplicationAssignmentConfiguration"
        operation.input = PutApplicationAssignmentConfigurationRequest
        operation.output = PutApplicationAssignmentConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_application_authentication_method, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#PutApplicationAuthenticationMethod"
        operation.name = "PutApplicationAuthenticationMethod"
        operation.input = PutApplicationAuthenticationMethodRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_application_grant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#PutApplicationGrant"
        operation.name = "PutApplicationGrant"
        operation.input = PutApplicationGrantRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_application_session_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#PutApplicationSessionConfiguration"
        operation.name = "PutApplicationSessionConfiguration"
        operation.input = PutApplicationSessionConfigurationRequest
        operation.output = PutApplicationSessionConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_inline_policy_to_permission_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#PutInlinePolicyToPermissionSet"
        operation.name = "PutInlinePolicyToPermissionSet"
        operation.input = PutInlinePolicyToPermissionSetRequest
        operation.output = PutInlinePolicyToPermissionSetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:put_permissions_boundary_to_permission_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#PutPermissionsBoundaryToPermissionSet"
        operation.name = "PutPermissionsBoundaryToPermissionSet"
        operation.input = PutPermissionsBoundaryToPermissionSetRequest
        operation.output = PutPermissionsBoundaryToPermissionSetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:remove_region, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#RemoveRegion"
        operation.name = "RemoveRegion"
        operation.input = RemoveRegionRequest
        operation.output = RemoveRegionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#UpdateApplication"
        operation.name = "UpdateApplication"
        operation.input = UpdateApplicationRequest
        operation.output = UpdateApplicationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#UpdateInstance"
        operation.name = "UpdateInstance"
        operation.input = UpdateInstanceRequest
        operation.output = UpdateInstanceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_instance_access_control_attribute_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#UpdateInstanceAccessControlAttributeConfiguration"
        operation.name = "UpdateInstanceAccessControlAttributeConfiguration"
        operation.input = UpdateInstanceAccessControlAttributeConfigurationRequest
        operation.output = UpdateInstanceAccessControlAttributeConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_permission_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#UpdatePermissionSet"
        operation.name = "UpdatePermissionSet"
        operation.input = UpdatePermissionSetRequest
        operation.output = UpdatePermissionSetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_trusted_token_issuer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssoadmin#UpdateTrustedTokenIssuer"
        operation.name = "UpdateTrustedTokenIssuer"
        operation.input = UpdateTrustedTokenIssuerRequest
        operation.output = UpdateTrustedTokenIssuerResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
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
