# frozen_string_literal: true

# This is generated code!

module Aws::AmplifyBackend
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AdditionalConstraintsElement = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplifybackend#AdditionalConstraintsElement', name: 'AdditionalConstraintsElement')
    AuthResources = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplifybackend#AuthResources', name: 'AuthResources')
    AuthenticatedElement = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplifybackend#AuthenticatedElement', name: 'AuthenticatedElement')
    BackendAPIAppSyncAuthSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#BackendAPIAppSyncAuthSettings', name: 'BackendAPIAppSyncAuthSettings')
    BackendAPIAuthType = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#BackendAPIAuthType', name: 'BackendAPIAuthType')
    BackendAPIConflictResolution = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#BackendAPIConflictResolution', name: 'BackendAPIConflictResolution')
    BackendAPIResourceConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#BackendAPIResourceConfig', name: 'BackendAPIResourceConfig')
    BackendAuthAppleProviderConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#BackendAuthAppleProviderConfig', name: 'BackendAuthAppleProviderConfig', traits: {"smithy.api#sensitive" => {}})
    BackendAuthSocialProviderConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#BackendAuthSocialProviderConfig', name: 'BackendAuthSocialProviderConfig', traits: {"smithy.api#sensitive" => {}})
    BackendJobRespObj = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#BackendJobRespObj', name: 'BackendJobRespObj')
    BackendStoragePermissions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#BackendStoragePermissions', name: 'BackendStoragePermissions')
    BadRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#BadRequestException', name: 'BadRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CloneBackendRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#CloneBackendRequest', name: 'CloneBackendRequest')
    CloneBackendResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#CloneBackendResponse', name: 'CloneBackendResponse')
    CreateBackendAPIRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#CreateBackendAPIRequest', name: 'CreateBackendAPIRequest')
    CreateBackendAPIResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#CreateBackendAPIResponse', name: 'CreateBackendAPIResponse')
    CreateBackendAuthForgotPasswordConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#CreateBackendAuthForgotPasswordConfig', name: 'CreateBackendAuthForgotPasswordConfig')
    CreateBackendAuthIdentityPoolConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#CreateBackendAuthIdentityPoolConfig', name: 'CreateBackendAuthIdentityPoolConfig')
    CreateBackendAuthMFAConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#CreateBackendAuthMFAConfig', name: 'CreateBackendAuthMFAConfig')
    CreateBackendAuthOAuthConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#CreateBackendAuthOAuthConfig', name: 'CreateBackendAuthOAuthConfig')
    CreateBackendAuthPasswordPolicyConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#CreateBackendAuthPasswordPolicyConfig', name: 'CreateBackendAuthPasswordPolicyConfig')
    CreateBackendAuthRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#CreateBackendAuthRequest', name: 'CreateBackendAuthRequest')
    CreateBackendAuthResourceConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#CreateBackendAuthResourceConfig', name: 'CreateBackendAuthResourceConfig')
    CreateBackendAuthResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#CreateBackendAuthResponse', name: 'CreateBackendAuthResponse')
    CreateBackendAuthUserPoolConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#CreateBackendAuthUserPoolConfig', name: 'CreateBackendAuthUserPoolConfig')
    CreateBackendAuthVerificationMessageConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#CreateBackendAuthVerificationMessageConfig', name: 'CreateBackendAuthVerificationMessageConfig')
    CreateBackendConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#CreateBackendConfigRequest', name: 'CreateBackendConfigRequest')
    CreateBackendConfigResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#CreateBackendConfigResponse', name: 'CreateBackendConfigResponse')
    CreateBackendRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#CreateBackendRequest', name: 'CreateBackendRequest')
    CreateBackendResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#CreateBackendResponse', name: 'CreateBackendResponse')
    CreateBackendStorageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#CreateBackendStorageRequest', name: 'CreateBackendStorageRequest')
    CreateBackendStorageResourceConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#CreateBackendStorageResourceConfig', name: 'CreateBackendStorageResourceConfig')
    CreateBackendStorageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#CreateBackendStorageResponse', name: 'CreateBackendStorageResponse')
    CreateTokenRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#CreateTokenRequest', name: 'CreateTokenRequest')
    CreateTokenResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#CreateTokenResponse', name: 'CreateTokenResponse')
    DeleteBackendAPIRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#DeleteBackendAPIRequest', name: 'DeleteBackendAPIRequest')
    DeleteBackendAPIResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#DeleteBackendAPIResponse', name: 'DeleteBackendAPIResponse')
    DeleteBackendAuthRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#DeleteBackendAuthRequest', name: 'DeleteBackendAuthRequest')
    DeleteBackendAuthResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#DeleteBackendAuthResponse', name: 'DeleteBackendAuthResponse')
    DeleteBackendRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#DeleteBackendRequest', name: 'DeleteBackendRequest')
    DeleteBackendResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#DeleteBackendResponse', name: 'DeleteBackendResponse')
    DeleteBackendStorageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#DeleteBackendStorageRequest', name: 'DeleteBackendStorageRequest')
    DeleteBackendStorageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#DeleteBackendStorageResponse', name: 'DeleteBackendStorageResponse')
    DeleteTokenRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#DeleteTokenRequest', name: 'DeleteTokenRequest')
    DeleteTokenResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#DeleteTokenResponse', name: 'DeleteTokenResponse')
    DeliveryMethod = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplifybackend#DeliveryMethod', name: 'DeliveryMethod')
    EmailSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#EmailSettings', name: 'EmailSettings', traits: {"smithy.api#sensitive" => {}})
    GatewayTimeoutException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#GatewayTimeoutException', name: 'GatewayTimeoutException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 504})
    GenerateBackendAPIModelsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#GenerateBackendAPIModelsRequest', name: 'GenerateBackendAPIModelsRequest')
    GenerateBackendAPIModelsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#GenerateBackendAPIModelsResponse', name: 'GenerateBackendAPIModelsResponse')
    GetBackendAPIModelsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#GetBackendAPIModelsRequest', name: 'GetBackendAPIModelsRequest')
    GetBackendAPIModelsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#GetBackendAPIModelsResponse', name: 'GetBackendAPIModelsResponse')
    GetBackendAPIRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#GetBackendAPIRequest', name: 'GetBackendAPIRequest')
    GetBackendAPIResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#GetBackendAPIResponse', name: 'GetBackendAPIResponse')
    GetBackendAuthRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#GetBackendAuthRequest', name: 'GetBackendAuthRequest')
    GetBackendAuthResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#GetBackendAuthResponse', name: 'GetBackendAuthResponse')
    GetBackendJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#GetBackendJobRequest', name: 'GetBackendJobRequest')
    GetBackendJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#GetBackendJobResponse', name: 'GetBackendJobResponse')
    GetBackendRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#GetBackendRequest', name: 'GetBackendRequest')
    GetBackendResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#GetBackendResponse', name: 'GetBackendResponse')
    GetBackendStorageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#GetBackendStorageRequest', name: 'GetBackendStorageRequest')
    GetBackendStorageResourceConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#GetBackendStorageResourceConfig', name: 'GetBackendStorageResourceConfig')
    GetBackendStorageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#GetBackendStorageResponse', name: 'GetBackendStorageResponse')
    GetTokenRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#GetTokenRequest', name: 'GetTokenRequest')
    GetTokenResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#GetTokenResponse', name: 'GetTokenResponse')
    ImportBackendAuthRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#ImportBackendAuthRequest', name: 'ImportBackendAuthRequest')
    ImportBackendAuthResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#ImportBackendAuthResponse', name: 'ImportBackendAuthResponse')
    ImportBackendStorageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#ImportBackendStorageRequest', name: 'ImportBackendStorageRequest')
    ImportBackendStorageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#ImportBackendStorageResponse', name: 'ImportBackendStorageResponse')
    ListBackendJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#ListBackendJobsRequest', name: 'ListBackendJobsRequest')
    ListBackendJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#ListBackendJobsResponse', name: 'ListBackendJobsResponse')
    ListOfAdditionalConstraintsElement = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplifybackend#ListOfAdditionalConstraintsElement', name: 'ListOfAdditionalConstraintsElement')
    ListOfAuthenticatedElement = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplifybackend#ListOfAuthenticatedElement', name: 'ListOfAuthenticatedElement')
    ListOfBackendAPIAuthType = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplifybackend#ListOfBackendAPIAuthType', name: 'ListOfBackendAPIAuthType')
    ListOfBackendJobRespObj = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplifybackend#ListOfBackendJobRespObj', name: 'ListOfBackendJobRespObj')
    ListOfMfaTypesElement = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplifybackend#ListOfMfaTypesElement', name: 'ListOfMfaTypesElement')
    ListOfOAuthScopesElement = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplifybackend#ListOfOAuthScopesElement', name: 'ListOfOAuthScopesElement')
    ListOfRequiredSignUpAttributesElement = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplifybackend#ListOfRequiredSignUpAttributesElement', name: 'ListOfRequiredSignUpAttributesElement')
    ListOfS3BucketInfo = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplifybackend#ListOfS3BucketInfo', name: 'ListOfS3BucketInfo')
    ListOfUnAuthenticatedElement = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplifybackend#ListOfUnAuthenticatedElement', name: 'ListOfUnAuthenticatedElement')
    ListOfString = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplifybackend#ListOf__string', name: 'ListOfString')
    ListS3BucketsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#ListS3BucketsRequest', name: 'ListS3BucketsRequest')
    ListS3BucketsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#ListS3BucketsResponse', name: 'ListS3BucketsResponse')
    LoginAuthConfigReqObj = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#LoginAuthConfigReqObj', name: 'LoginAuthConfigReqObj')
    MFAMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplifybackend#MFAMode', name: 'MFAMode')
    MfaTypesElement = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplifybackend#MfaTypesElement', name: 'MfaTypesElement')
    Mode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplifybackend#Mode', name: 'Mode')
    NotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#NotFoundException', name: 'NotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    OAuthGrantType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplifybackend#OAuthGrantType', name: 'OAuthGrantType')
    OAuthScopesElement = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplifybackend#OAuthScopesElement', name: 'OAuthScopesElement')
    RemoveAllBackendsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#RemoveAllBackendsRequest', name: 'RemoveAllBackendsRequest')
    RemoveAllBackendsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#RemoveAllBackendsResponse', name: 'RemoveAllBackendsResponse')
    RemoveBackendConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#RemoveBackendConfigRequest', name: 'RemoveBackendConfigRequest')
    RemoveBackendConfigResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#RemoveBackendConfigResponse', name: 'RemoveBackendConfigResponse')
    RequiredSignUpAttributesElement = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplifybackend#RequiredSignUpAttributesElement', name: 'RequiredSignUpAttributesElement')
    ResolutionStrategy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplifybackend#ResolutionStrategy', name: 'ResolutionStrategy')
    ResourceConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#ResourceConfig', name: 'ResourceConfig')
    S3BucketInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#S3BucketInfo', name: 'S3BucketInfo')
    Service = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplifybackend#Service', name: 'Service')
    ServiceName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplifybackend#ServiceName', name: 'ServiceName')
    Settings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#Settings', name: 'Settings')
    SignInMethod = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplifybackend#SignInMethod', name: 'SignInMethod')
    SmsSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#SmsSettings', name: 'SmsSettings', traits: {"smithy.api#sensitive" => {}})
    SocialProviderSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#SocialProviderSettings', name: 'SocialProviderSettings')
    Status = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplifybackend#Status', name: 'Status')
    TooManyRequestsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#TooManyRequestsException', name: 'TooManyRequestsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UnAuthenticatedElement = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplifybackend#UnAuthenticatedElement', name: 'UnAuthenticatedElement')
    UpdateBackendAPIRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#UpdateBackendAPIRequest', name: 'UpdateBackendAPIRequest')
    UpdateBackendAPIResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#UpdateBackendAPIResponse', name: 'UpdateBackendAPIResponse')
    UpdateBackendAuthForgotPasswordConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#UpdateBackendAuthForgotPasswordConfig', name: 'UpdateBackendAuthForgotPasswordConfig')
    UpdateBackendAuthIdentityPoolConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#UpdateBackendAuthIdentityPoolConfig', name: 'UpdateBackendAuthIdentityPoolConfig')
    UpdateBackendAuthMFAConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#UpdateBackendAuthMFAConfig', name: 'UpdateBackendAuthMFAConfig')
    UpdateBackendAuthOAuthConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#UpdateBackendAuthOAuthConfig', name: 'UpdateBackendAuthOAuthConfig')
    UpdateBackendAuthPasswordPolicyConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#UpdateBackendAuthPasswordPolicyConfig', name: 'UpdateBackendAuthPasswordPolicyConfig')
    UpdateBackendAuthRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#UpdateBackendAuthRequest', name: 'UpdateBackendAuthRequest')
    UpdateBackendAuthResourceConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#UpdateBackendAuthResourceConfig', name: 'UpdateBackendAuthResourceConfig')
    UpdateBackendAuthResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#UpdateBackendAuthResponse', name: 'UpdateBackendAuthResponse')
    UpdateBackendAuthUserPoolConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#UpdateBackendAuthUserPoolConfig', name: 'UpdateBackendAuthUserPoolConfig')
    UpdateBackendAuthVerificationMessageConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#UpdateBackendAuthVerificationMessageConfig', name: 'UpdateBackendAuthVerificationMessageConfig')
    UpdateBackendConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#UpdateBackendConfigRequest', name: 'UpdateBackendConfigRequest')
    UpdateBackendConfigResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#UpdateBackendConfigResponse', name: 'UpdateBackendConfigResponse')
    UpdateBackendJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#UpdateBackendJobRequest', name: 'UpdateBackendJobRequest')
    UpdateBackendJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#UpdateBackendJobResponse', name: 'UpdateBackendJobResponse')
    UpdateBackendStorageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#UpdateBackendStorageRequest', name: 'UpdateBackendStorageRequest')
    UpdateBackendStorageResourceConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#UpdateBackendStorageResourceConfig', name: 'UpdateBackendStorageResourceConfig')
    UpdateBackendStorageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifybackend#UpdateBackendStorageResponse', name: 'UpdateBackendStorageResponse')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.amplifybackend#__boolean', name: 'Boolean')
    Double = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.amplifybackend#__double', name: 'Double')
    Integermin1max25 = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.amplifybackend#__integerMin1Max25', name: 'Integermin1max25', traits: {"smithy.api#range" => {"min" => 1, "max" => 25}})
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplifybackend#__string', name: 'String')

    AdditionalConstraintsElement.add_member(:require_digit, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUIRE_DIGIT', traits: {"smithy.api#enumValue" => "REQUIRE_DIGIT"}))
    AdditionalConstraintsElement.add_member(:require_lowercase, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUIRE_LOWERCASE', traits: {"smithy.api#enumValue" => "REQUIRE_LOWERCASE"}))
    AdditionalConstraintsElement.add_member(:require_symbol, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUIRE_SYMBOL', traits: {"smithy.api#enumValue" => "REQUIRE_SYMBOL"}))
    AdditionalConstraintsElement.add_member(:require_uppercase, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUIRE_UPPERCASE', traits: {"smithy.api#enumValue" => "REQUIRE_UPPERCASE"}))
    AuthResources.add_member(:user_pool_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER_POOL_ONLY', traits: {"smithy.api#enumValue" => "USER_POOL_ONLY"}))
    AuthResources.add_member(:identity_pool_and_user_pool, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IDENTITY_POOL_AND_USER_POOL', traits: {"smithy.api#enumValue" => "IDENTITY_POOL_AND_USER_POOL"}))
    AuthenticatedElement.add_member(:read, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READ', traits: {"smithy.api#enumValue" => "READ"}))
    AuthenticatedElement.add_member(:create_and_update, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_AND_UPDATE', traits: {"smithy.api#enumValue" => "CREATE_AND_UPDATE"}))
    AuthenticatedElement.add_member(:delete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE', traits: {"smithy.api#enumValue" => "DELETE"}))
    BackendAPIAppSyncAuthSettings.add_member(:cognito_user_pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CognitoUserPoolId', traits: {"smithy.api#documentation" => "<p>The Amazon Cognito user pool ID, if Amazon Cognito was used as an authentication setting to access your data models.</p>", "smithy.api#jsonName" => "cognitoUserPoolId"}))
    BackendAPIAppSyncAuthSettings.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The API key description for API_KEY, if it was used as an authentication mechanism to access your data models.</p>", "smithy.api#jsonName" => "description"}))
    BackendAPIAppSyncAuthSettings.add_member(:expiration_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'ExpirationTime', traits: {"smithy.api#documentation" => "<p>The API key expiration time for API_KEY, if it was used as an authentication mechanism to access your data models.</p>", "smithy.api#jsonName" => "expirationTime"}))
    BackendAPIAppSyncAuthSettings.add_member(:open_id_auth_ttl, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OpenIDAuthTTL', traits: {"smithy.api#documentation" => "<p>The expiry time for the OpenID authentication mechanism.</p>", "smithy.api#jsonName" => "openIDAuthTTL"}))
    BackendAPIAppSyncAuthSettings.add_member(:open_id_client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OpenIDClientId', traits: {"smithy.api#documentation" => "<p>The clientID for openID, if openID was used as an authentication setting to access your data models.</p>", "smithy.api#jsonName" => "openIDClientId"}))
    BackendAPIAppSyncAuthSettings.add_member(:open_id_iat_ttl, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OpenIDIatTTL', traits: {"smithy.api#documentation" => "<p>The expiry time for the OpenID authentication mechanism.</p>", "smithy.api#jsonName" => "openIDIatTTL"}))
    BackendAPIAppSyncAuthSettings.add_member(:open_id_issue_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OpenIDIssueURL', traits: {"smithy.api#documentation" => "<p>The openID issuer URL, if openID was used as an authentication setting to access your data models.</p>", "smithy.api#jsonName" => "openIDIssueURL"}))
    BackendAPIAppSyncAuthSettings.add_member(:open_id_provider_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OpenIDProviderName', traits: {"smithy.api#documentation" => "<p>The OpenID provider name, if OpenID was used as an authentication mechanism to access your data models.</p>", "smithy.api#jsonName" => "openIDProviderName"}))
    BackendAPIAppSyncAuthSettings.type = Types::BackendAPIAppSyncAuthSettings
    BackendAPIAuthType.add_member(:mode, Smithy::Schema::Shapes::ShapeRef.new(shape: Mode, location_name: 'Mode', traits: {"smithy.api#documentation" => "<p>Describes the authentication mode.</p>", "smithy.api#jsonName" => "mode"}))
    BackendAPIAuthType.add_member(:settings, Smithy::Schema::Shapes::ShapeRef.new(shape: BackendAPIAppSyncAuthSettings, location_name: 'Settings', traits: {"smithy.api#documentation" => "<p>Describes settings for the authentication mode.</p>", "smithy.api#jsonName" => "settings"}))
    BackendAPIAuthType.type = Types::BackendAPIAuthType
    BackendAPIConflictResolution.add_member(:resolution_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolutionStrategy, location_name: 'ResolutionStrategy', traits: {"smithy.api#documentation" => "<p>The strategy for conflict resolution.</p>", "smithy.api#jsonName" => "resolutionStrategy"}))
    BackendAPIConflictResolution.type = Types::BackendAPIConflictResolution
    BackendAPIResourceConfig.add_member(:additional_auth_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfBackendAPIAuthType, location_name: 'AdditionalAuthTypes', traits: {"smithy.api#documentation" => "<p>Additional authentication methods used to interact with your data models.</p>", "smithy.api#jsonName" => "additionalAuthTypes"}))
    BackendAPIResourceConfig.add_member(:api_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApiName', traits: {"smithy.api#documentation" => "<p>The API name used to interact with the data model, configured as a part of your Amplify project.</p>", "smithy.api#jsonName" => "apiName"}))
    BackendAPIResourceConfig.add_member(:conflict_resolution, Smithy::Schema::Shapes::ShapeRef.new(shape: BackendAPIConflictResolution, location_name: 'ConflictResolution', traits: {"smithy.api#documentation" => "<p>The conflict resolution strategy for your data stored in the data models.</p>", "smithy.api#jsonName" => "conflictResolution"}))
    BackendAPIResourceConfig.add_member(:default_auth_type, Smithy::Schema::Shapes::ShapeRef.new(shape: BackendAPIAuthType, location_name: 'DefaultAuthType', traits: {"smithy.api#documentation" => "<p>The default authentication type for interacting with the configured data models in your Amplify project.</p>", "smithy.api#jsonName" => "defaultAuthType"}))
    BackendAPIResourceConfig.add_member(:service, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Service', traits: {"smithy.api#documentation" => "<p>The service used to provision and interact with the data model.</p>", "smithy.api#jsonName" => "service"}))
    BackendAPIResourceConfig.add_member(:transform_schema, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TransformSchema', traits: {"smithy.api#documentation" => "<p>The definition of the data model in the annotated transform of the GraphQL schema.</p>", "smithy.api#jsonName" => "transformSchema"}))
    BackendAPIResourceConfig.type = Types::BackendAPIResourceConfig
    BackendAuthAppleProviderConfig.add_member(:client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClientId', traits: {"smithy.api#documentation" => "<p>Describes the client_id (also called Services ID) that comes from Apple.</p>", "smithy.api#jsonName" => "client_id"}))
    BackendAuthAppleProviderConfig.add_member(:key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KeyId', traits: {"smithy.api#documentation" => "<p>Describes the key_id that comes from Apple.</p>", "smithy.api#jsonName" => "key_id"}))
    BackendAuthAppleProviderConfig.add_member(:private_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrivateKey', traits: {"smithy.api#documentation" => "<p>Describes the private_key that comes from Apple.</p>", "smithy.api#jsonName" => "private_key"}))
    BackendAuthAppleProviderConfig.add_member(:team_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TeamId', traits: {"smithy.api#documentation" => "<p>Describes the team_id that comes from Apple.</p>", "smithy.api#jsonName" => "team_id"}))
    BackendAuthAppleProviderConfig.type = Types::BackendAuthAppleProviderConfig
    BackendAuthSocialProviderConfig.add_member(:client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClientId', traits: {"smithy.api#documentation" => "<p>Describes the client_id, which can be obtained from the third-party social federation provider.</p>", "smithy.api#jsonName" => "client_id"}))
    BackendAuthSocialProviderConfig.add_member(:client_secret, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClientSecret', traits: {"smithy.api#documentation" => "<p>Describes the client_secret, which can be obtained from third-party social federation providers.</p>", "smithy.api#jsonName" => "client_secret"}))
    BackendAuthSocialProviderConfig.type = Types::BackendAuthSocialProviderConfig
    BackendJobRespObj.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#jsonName" => "appId", "smithy.api#required" => {}}))
    BackendJobRespObj.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#jsonName" => "backendEnvironmentName", "smithy.api#required" => {}}))
    BackendJobRespObj.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreateTime', traits: {"smithy.api#documentation" => "<p>The time when the job was created.</p>", "smithy.api#jsonName" => "createTime"}))
    BackendJobRespObj.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>If the request fails, this error is returned.</p>", "smithy.api#jsonName" => "error"}))
    BackendJobRespObj.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The ID for the job.</p>", "smithy.api#jsonName" => "jobId"}))
    BackendJobRespObj.add_member(:operation, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Operation', traits: {"smithy.api#documentation" => "<p>The name of the operation.</p>", "smithy.api#jsonName" => "operation"}))
    BackendJobRespObj.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the request.</p>", "smithy.api#jsonName" => "status"}))
    BackendJobRespObj.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UpdateTime', traits: {"smithy.api#documentation" => "<p>The time when the job was last updated.</p>", "smithy.api#jsonName" => "updateTime"}))
    BackendJobRespObj.type = Types::BackendJobRespObj
    BackendStoragePermissions.add_member(:authenticated, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfAuthenticatedElement, location_name: 'Authenticated', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Lists all authenticated user read, write, and delete permissions for your S3 bucket.</p>", "smithy.api#jsonName" => "authenticated", "smithy.api#required" => {}}))
    BackendStoragePermissions.add_member(:un_authenticated, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfUnAuthenticatedElement, location_name: 'UnAuthenticated', traits: {"smithy.api#documentation" => "<p>Lists all unauthenticated user read, write, and delete permissions for your S3 bucket.</p>", "smithy.api#jsonName" => "unAuthenticated"}))
    BackendStoragePermissions.type = Types::BackendStoragePermissions
    BadRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>An error message to inform that the request failed.</p>", "smithy.api#jsonName" => "message"}))
    BadRequestException.type = Types::BadRequestException
    CloneBackendRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CloneBackendRequest.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CloneBackendRequest.add_member(:target_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetEnvironmentName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the destination backend environment to be created.</p>", "smithy.api#jsonName" => "targetEnvironmentName", "smithy.api#required" => {}}))
    CloneBackendRequest.type = Types::CloneBackendRequest
    CloneBackendResponse.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#jsonName" => "appId"}))
    CloneBackendResponse.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#jsonName" => "backendEnvironmentName"}))
    CloneBackendResponse.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>If the request fails, this error is returned.</p>", "smithy.api#jsonName" => "error"}))
    CloneBackendResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The ID for the job.</p>", "smithy.api#jsonName" => "jobId"}))
    CloneBackendResponse.add_member(:operation, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Operation', traits: {"smithy.api#documentation" => "<p>The name of the operation.</p>", "smithy.api#jsonName" => "operation"}))
    CloneBackendResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the request.</p>", "smithy.api#jsonName" => "status"}))
    CloneBackendResponse.type = Types::CloneBackendResponse
    CreateBackendAPIRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateBackendAPIRequest.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#jsonName" => "backendEnvironmentName", "smithy.api#required" => {}}))
    CreateBackendAPIRequest.add_member(:resource_config, Smithy::Schema::Shapes::ShapeRef.new(shape: BackendAPIResourceConfig, location_name: 'ResourceConfig', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The resource configuration for this request.</p>", "smithy.api#jsonName" => "resourceConfig", "smithy.api#required" => {}}))
    CreateBackendAPIRequest.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of this resource.</p>", "smithy.api#jsonName" => "resourceName", "smithy.api#required" => {}}))
    CreateBackendAPIRequest.type = Types::CreateBackendAPIRequest
    CreateBackendAPIResponse.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#jsonName" => "appId"}))
    CreateBackendAPIResponse.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#jsonName" => "backendEnvironmentName"}))
    CreateBackendAPIResponse.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>If the request fails, this error is returned.</p>", "smithy.api#jsonName" => "error"}))
    CreateBackendAPIResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The ID for the job.</p>", "smithy.api#jsonName" => "jobId"}))
    CreateBackendAPIResponse.add_member(:operation, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Operation', traits: {"smithy.api#documentation" => "<p>The name of the operation.</p>", "smithy.api#jsonName" => "operation"}))
    CreateBackendAPIResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the request.</p>", "smithy.api#jsonName" => "status"}))
    CreateBackendAPIResponse.type = Types::CreateBackendAPIResponse
    CreateBackendAuthForgotPasswordConfig.add_member(:delivery_method, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryMethod, location_name: 'DeliveryMethod', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p><b>(DEPRECATED)</b> Describes which mode to use (either SMS or email) to deliver messages to app users who want to recover their password.</p>", "smithy.api#jsonName" => "deliveryMethod", "smithy.api#required" => {}}))
    CreateBackendAuthForgotPasswordConfig.add_member(:email_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailSettings, location_name: 'EmailSettings', traits: {"smithy.api#documentation" => "<p><b>(DEPRECATED)</b> The configuration for the email sent when an app user forgets their password.</p>", "smithy.api#jsonName" => "emailSettings"}))
    CreateBackendAuthForgotPasswordConfig.add_member(:sms_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: SmsSettings, location_name: 'SmsSettings', traits: {"smithy.api#documentation" => "<p><b>(DEPRECATED)</b> The configuration for the SMS message sent when an app user forgets their password.</p>", "smithy.api#jsonName" => "smsSettings"}))
    CreateBackendAuthForgotPasswordConfig.type = Types::CreateBackendAuthForgotPasswordConfig
    CreateBackendAuthIdentityPoolConfig.add_member(:identity_pool_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IdentityPoolName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Name of the Amazon Cognito identity pool used for authorization.</p>", "smithy.api#jsonName" => "identityPoolName", "smithy.api#required" => {}}))
    CreateBackendAuthIdentityPoolConfig.add_member(:unauthenticated_login, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UnauthenticatedLogin', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Set to true or false based on whether you want to enable guest authorization to your Amplify app.</p>", "smithy.api#jsonName" => "unauthenticatedLogin", "smithy.api#required" => {}}))
    CreateBackendAuthIdentityPoolConfig.type = Types::CreateBackendAuthIdentityPoolConfig
    CreateBackendAuthMFAConfig.add_member(:mfa_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: MFAMode, location_name: 'MFAMode', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Describes whether MFA should be [ON, OFF, or OPTIONAL] for authentication in your Amplify project.</p>", "smithy.api#required" => {}}))
    CreateBackendAuthMFAConfig.add_member(:settings, Smithy::Schema::Shapes::ShapeRef.new(shape: Settings, location_name: 'Settings', traits: {"smithy.api#documentation" => "<p>Describes the configuration settings and methods for your Amplify app users to use MFA.</p>", "smithy.api#jsonName" => "settings"}))
    CreateBackendAuthMFAConfig.type = Types::CreateBackendAuthMFAConfig
    CreateBackendAuthOAuthConfig.add_member(:domain_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DomainPrefix', traits: {"smithy.api#documentation" => "<p>The domain prefix for your Amplify app.</p>", "smithy.api#jsonName" => "domainPrefix"}))
    CreateBackendAuthOAuthConfig.add_member(:o_auth_grant_type, Smithy::Schema::Shapes::ShapeRef.new(shape: OAuthGrantType, location_name: 'OAuthGrantType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The OAuth grant type that you use to allow app users to authenticate from your Amplify app.</p>", "smithy.api#jsonName" => "oAuthGrantType", "smithy.api#required" => {}}))
    CreateBackendAuthOAuthConfig.add_member(:o_auth_scopes, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfOAuthScopesElement, location_name: 'OAuthScopes', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>List of OAuth-related flows used to allow your app users to authenticate from your Amplify app.</p>", "smithy.api#jsonName" => "oAuthScopes", "smithy.api#required" => {}}))
    CreateBackendAuthOAuthConfig.add_member(:redirect_sign_in_ur_is, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'RedirectSignInURIs', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The redirected URI for signing in to your Amplify app.</p>", "smithy.api#jsonName" => "redirectSignInURIs", "smithy.api#required" => {}}))
    CreateBackendAuthOAuthConfig.add_member(:redirect_sign_out_ur_is, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'RedirectSignOutURIs', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Redirect URLs that OAuth uses when a user signs out of an Amplify app.</p>", "smithy.api#jsonName" => "redirectSignOutURIs", "smithy.api#required" => {}}))
    CreateBackendAuthOAuthConfig.add_member(:social_provider_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: SocialProviderSettings, location_name: 'SocialProviderSettings', traits: {"smithy.api#documentation" => "<p>The settings for using social providers to access your Amplify app.</p>", "smithy.api#jsonName" => "socialProviderSettings"}))
    CreateBackendAuthOAuthConfig.type = Types::CreateBackendAuthOAuthConfig
    CreateBackendAuthPasswordPolicyConfig.add_member(:additional_constraints, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfAdditionalConstraintsElement, location_name: 'AdditionalConstraints', traits: {"smithy.api#documentation" => "<p>Additional constraints for the password used to access the backend of your Amplify project.</p>", "smithy.api#jsonName" => "additionalConstraints"}))
    CreateBackendAuthPasswordPolicyConfig.add_member(:minimum_length, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'MinimumLength', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The minimum length of the password used to access the backend of your Amplify project.</p>", "smithy.api#jsonName" => "minimumLength", "smithy.api#required" => {}}))
    CreateBackendAuthPasswordPolicyConfig.type = Types::CreateBackendAuthPasswordPolicyConfig
    CreateBackendAuthRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateBackendAuthRequest.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#jsonName" => "backendEnvironmentName", "smithy.api#required" => {}}))
    CreateBackendAuthRequest.add_member(:resource_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBackendAuthResourceConfig, location_name: 'ResourceConfig', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The resource configuration for this request object.</p>", "smithy.api#jsonName" => "resourceConfig", "smithy.api#required" => {}}))
    CreateBackendAuthRequest.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of this resource.</p>", "smithy.api#jsonName" => "resourceName", "smithy.api#required" => {}}))
    CreateBackendAuthRequest.type = Types::CreateBackendAuthRequest
    CreateBackendAuthResourceConfig.add_member(:auth_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthResources, location_name: 'AuthResources', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Defines whether you want to configure only authentication or both authentication and authorization settings.</p>", "smithy.api#jsonName" => "authResources", "smithy.api#required" => {}}))
    CreateBackendAuthResourceConfig.add_member(:identity_pool_configs, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBackendAuthIdentityPoolConfig, location_name: 'IdentityPoolConfigs', traits: {"smithy.api#documentation" => "<p>Describes the authorization configuration for the Amazon Cognito identity pool, provisioned as a part of your auth resource in the Amplify project.</p>", "smithy.api#jsonName" => "identityPoolConfigs"}))
    CreateBackendAuthResourceConfig.add_member(:service, Smithy::Schema::Shapes::ShapeRef.new(shape: Service, location_name: 'Service', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Defines the service name to use when configuring an authentication resource in your Amplify project.</p>", "smithy.api#jsonName" => "service", "smithy.api#required" => {}}))
    CreateBackendAuthResourceConfig.add_member(:user_pool_configs, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBackendAuthUserPoolConfig, location_name: 'UserPoolConfigs', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Describes authentication configuration for the Amazon Cognito user pool, provisioned as a part of your auth resource in the Amplify project.</p>", "smithy.api#jsonName" => "userPoolConfigs", "smithy.api#required" => {}}))
    CreateBackendAuthResourceConfig.type = Types::CreateBackendAuthResourceConfig
    CreateBackendAuthResponse.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#jsonName" => "appId"}))
    CreateBackendAuthResponse.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#jsonName" => "backendEnvironmentName"}))
    CreateBackendAuthResponse.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>If the request fails, this error is returned.</p>", "smithy.api#jsonName" => "error"}))
    CreateBackendAuthResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The ID for the job.</p>", "smithy.api#jsonName" => "jobId"}))
    CreateBackendAuthResponse.add_member(:operation, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Operation', traits: {"smithy.api#documentation" => "<p>The name of the operation.</p>", "smithy.api#jsonName" => "operation"}))
    CreateBackendAuthResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the request.</p>", "smithy.api#jsonName" => "status"}))
    CreateBackendAuthResponse.type = Types::CreateBackendAuthResponse
    CreateBackendAuthUserPoolConfig.add_member(:forgot_password, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBackendAuthForgotPasswordConfig, location_name: 'ForgotPassword', traits: {"smithy.api#documentation" => "<p><b>(DEPRECATED)</b> Describes the forgotten password policy for your Amazon Cognito user pool, configured as a part of your Amplify project.</p>", "smithy.api#jsonName" => "forgotPassword"}))
    CreateBackendAuthUserPoolConfig.add_member(:mfa, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBackendAuthMFAConfig, location_name: 'Mfa', traits: {"smithy.api#documentation" => "<p>Describes whether to apply multi-factor authentication policies for your Amazon Cognito user pool configured as a part of your Amplify project.</p>", "smithy.api#jsonName" => "mfa"}))
    CreateBackendAuthUserPoolConfig.add_member(:o_auth, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBackendAuthOAuthConfig, location_name: 'OAuth', traits: {"smithy.api#documentation" => "<p>Describes the OAuth policy and rules for your Amazon Cognito user pool, configured as a part of your Amplify project.</p>", "smithy.api#jsonName" => "oAuth"}))
    CreateBackendAuthUserPoolConfig.add_member(:password_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBackendAuthPasswordPolicyConfig, location_name: 'PasswordPolicy', traits: {"smithy.api#documentation" => "<p>Describes the password policy for your Amazon Cognito user pool, configured as a part of your Amplify project.</p>", "smithy.api#jsonName" => "passwordPolicy"}))
    CreateBackendAuthUserPoolConfig.add_member(:required_sign_up_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfRequiredSignUpAttributesElement, location_name: 'RequiredSignUpAttributes', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The required attributes to sign up new users in the user pool.</p>", "smithy.api#jsonName" => "requiredSignUpAttributes", "smithy.api#required" => {}}))
    CreateBackendAuthUserPoolConfig.add_member(:sign_in_method, Smithy::Schema::Shapes::ShapeRef.new(shape: SignInMethod, location_name: 'SignInMethod', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Describes the sign-in methods that your Amplify app users use to log in using the Amazon Cognito user pool, configured as a part of your Amplify project.</p>", "smithy.api#jsonName" => "signInMethod", "smithy.api#required" => {}}))
    CreateBackendAuthUserPoolConfig.add_member(:user_pool_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserPoolName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Cognito user pool name.</p>", "smithy.api#jsonName" => "userPoolName", "smithy.api#required" => {}}))
    CreateBackendAuthUserPoolConfig.add_member(:verification_message, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBackendAuthVerificationMessageConfig, location_name: 'VerificationMessage', traits: {"smithy.api#documentation" => "<p>Describes the email or SMS verification message for your Amazon Cognito user pool, configured as a part of your Amplify project.</p>", "smithy.api#jsonName" => "verificationMessage"}))
    CreateBackendAuthUserPoolConfig.type = Types::CreateBackendAuthUserPoolConfig
    CreateBackendAuthVerificationMessageConfig.add_member(:delivery_method, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryMethod, location_name: 'DeliveryMethod', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The type of verification message to send.</p>", "smithy.api#jsonName" => "deliveryMethod", "smithy.api#required" => {}}))
    CreateBackendAuthVerificationMessageConfig.add_member(:email_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailSettings, location_name: 'EmailSettings', traits: {"smithy.api#documentation" => "<p>The settings for the email message.</p>", "smithy.api#jsonName" => "emailSettings"}))
    CreateBackendAuthVerificationMessageConfig.add_member(:sms_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: SmsSettings, location_name: 'SmsSettings', traits: {"smithy.api#documentation" => "<p>The settings for the SMS message.</p>", "smithy.api#jsonName" => "smsSettings"}))
    CreateBackendAuthVerificationMessageConfig.type = Types::CreateBackendAuthVerificationMessageConfig
    CreateBackendConfigRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateBackendConfigRequest.add_member(:backend_manager_app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendManagerAppId', traits: {"smithy.api#documentation" => "<p>The app ID for the backend manager.</p>", "smithy.api#jsonName" => "backendManagerAppId"}))
    CreateBackendConfigRequest.type = Types::CreateBackendConfigRequest
    CreateBackendConfigResponse.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#jsonName" => "appId"}))
    CreateBackendConfigResponse.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#jsonName" => "backendEnvironmentName"}))
    CreateBackendConfigResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The ID for the job.</p>", "smithy.api#jsonName" => "jobId"}))
    CreateBackendConfigResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the request.</p>", "smithy.api#jsonName" => "status"}))
    CreateBackendConfigResponse.type = Types::CreateBackendConfigResponse
    CreateBackendRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#jsonName" => "appId", "smithy.api#required" => {}}))
    CreateBackendRequest.add_member(:app_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the app.</p>", "smithy.api#jsonName" => "appName", "smithy.api#required" => {}}))
    CreateBackendRequest.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#jsonName" => "backendEnvironmentName", "smithy.api#required" => {}}))
    CreateBackendRequest.add_member(:resource_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConfig, location_name: 'ResourceConfig', traits: {"smithy.api#documentation" => "<p>The resource configuration for creating a backend.</p>", "smithy.api#jsonName" => "resourceConfig"}))
    CreateBackendRequest.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#documentation" => "<p>The name of the resource.</p>", "smithy.api#jsonName" => "resourceName"}))
    CreateBackendRequest.type = Types::CreateBackendRequest
    CreateBackendResponse.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#jsonName" => "appId"}))
    CreateBackendResponse.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#jsonName" => "backendEnvironmentName"}))
    CreateBackendResponse.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>If the request fails, this error is returned.</p>", "smithy.api#jsonName" => "error"}))
    CreateBackendResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The ID for the job.</p>", "smithy.api#jsonName" => "jobId"}))
    CreateBackendResponse.add_member(:operation, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Operation', traits: {"smithy.api#documentation" => "<p>The name of the operation.</p>", "smithy.api#jsonName" => "operation"}))
    CreateBackendResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the request.</p>", "smithy.api#jsonName" => "status"}))
    CreateBackendResponse.type = Types::CreateBackendResponse
    CreateBackendStorageRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateBackendStorageRequest.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#jsonName" => "backendEnvironmentName", "smithy.api#required" => {}}))
    CreateBackendStorageRequest.add_member(:resource_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBackendStorageResourceConfig, location_name: 'ResourceConfig', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The resource configuration for creating backend storage.</p>", "smithy.api#jsonName" => "resourceConfig", "smithy.api#required" => {}}))
    CreateBackendStorageRequest.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the storage resource.</p>", "smithy.api#jsonName" => "resourceName", "smithy.api#required" => {}}))
    CreateBackendStorageRequest.type = Types::CreateBackendStorageRequest
    CreateBackendStorageResourceConfig.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BucketName', traits: {"smithy.api#documentation" => "<p>The name of the S3 bucket.</p>", "smithy.api#jsonName" => "bucketName"}))
    CreateBackendStorageResourceConfig.add_member(:permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: BackendStoragePermissions, location_name: 'Permissions', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The authorization configuration for the storage S3 bucket.</p>", "smithy.api#jsonName" => "permissions", "smithy.api#required" => {}}))
    CreateBackendStorageResourceConfig.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: 'ServiceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the storage service.</p>", "smithy.api#jsonName" => "serviceName", "smithy.api#required" => {}}))
    CreateBackendStorageResourceConfig.type = Types::CreateBackendStorageResourceConfig
    CreateBackendStorageResponse.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#jsonName" => "appId"}))
    CreateBackendStorageResponse.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#jsonName" => "backendEnvironmentName"}))
    CreateBackendStorageResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The ID for the job.</p>", "smithy.api#jsonName" => "jobId"}))
    CreateBackendStorageResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the request.</p>", "smithy.api#jsonName" => "status"}))
    CreateBackendStorageResponse.type = Types::CreateBackendStorageResponse
    CreateTokenRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateTokenRequest.type = Types::CreateTokenRequest
    CreateTokenResponse.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#jsonName" => "appId"}))
    CreateTokenResponse.add_member(:challenge_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ChallengeCode', traits: {"smithy.api#documentation" => "<p>One-time challenge code for authenticating into the Amplify Admin UI.</p>", "smithy.api#jsonName" => "challengeCode"}))
    CreateTokenResponse.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SessionId', traits: {"smithy.api#documentation" => "<p>A unique ID provided when creating a new challenge token.</p>", "smithy.api#jsonName" => "sessionId"}))
    CreateTokenResponse.add_member(:ttl, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Ttl', traits: {"smithy.api#documentation" => "<p>The expiry time for the one-time generated token code.</p>", "smithy.api#jsonName" => "ttl"}))
    CreateTokenResponse.type = Types::CreateTokenResponse
    DeleteBackendAPIRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBackendAPIRequest.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBackendAPIRequest.add_member(:resource_config, Smithy::Schema::Shapes::ShapeRef.new(shape: BackendAPIResourceConfig, location_name: 'ResourceConfig', traits: {"smithy.api#documentation" => "<p>Defines the resource configuration for the data model in your Amplify project.</p>", "smithy.api#jsonName" => "resourceConfig"}))
    DeleteBackendAPIRequest.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of this resource.</p>", "smithy.api#jsonName" => "resourceName", "smithy.api#required" => {}}))
    DeleteBackendAPIRequest.type = Types::DeleteBackendAPIRequest
    DeleteBackendAPIResponse.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#jsonName" => "appId"}))
    DeleteBackendAPIResponse.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#jsonName" => "backendEnvironmentName"}))
    DeleteBackendAPIResponse.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>If the request fails, this error is returned.</p>", "smithy.api#jsonName" => "error"}))
    DeleteBackendAPIResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The ID for the job.</p>", "smithy.api#jsonName" => "jobId"}))
    DeleteBackendAPIResponse.add_member(:operation, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Operation', traits: {"smithy.api#documentation" => "<p>The name of the operation.</p>", "smithy.api#jsonName" => "operation"}))
    DeleteBackendAPIResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the request.</p>", "smithy.api#jsonName" => "status"}))
    DeleteBackendAPIResponse.type = Types::DeleteBackendAPIResponse
    DeleteBackendAuthRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBackendAuthRequest.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBackendAuthRequest.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of this resource.</p>", "smithy.api#jsonName" => "resourceName", "smithy.api#required" => {}}))
    DeleteBackendAuthRequest.type = Types::DeleteBackendAuthRequest
    DeleteBackendAuthResponse.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#jsonName" => "appId"}))
    DeleteBackendAuthResponse.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#jsonName" => "backendEnvironmentName"}))
    DeleteBackendAuthResponse.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>If the request fails, this error is returned.</p>", "smithy.api#jsonName" => "error"}))
    DeleteBackendAuthResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The ID for the job.</p>", "smithy.api#jsonName" => "jobId"}))
    DeleteBackendAuthResponse.add_member(:operation, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Operation', traits: {"smithy.api#documentation" => "<p>The name of the operation.</p>", "smithy.api#jsonName" => "operation"}))
    DeleteBackendAuthResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the request.</p>", "smithy.api#jsonName" => "status"}))
    DeleteBackendAuthResponse.type = Types::DeleteBackendAuthResponse
    DeleteBackendRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBackendRequest.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBackendRequest.type = Types::DeleteBackendRequest
    DeleteBackendResponse.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#jsonName" => "appId"}))
    DeleteBackendResponse.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#jsonName" => "backendEnvironmentName"}))
    DeleteBackendResponse.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>If the request fails, this error is returned.</p>", "smithy.api#jsonName" => "error"}))
    DeleteBackendResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The ID for the job.</p>", "smithy.api#jsonName" => "jobId"}))
    DeleteBackendResponse.add_member(:operation, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Operation', traits: {"smithy.api#documentation" => "<p>The name of the operation.</p>", "smithy.api#jsonName" => "operation"}))
    DeleteBackendResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the request.</p>", "smithy.api#jsonName" => "status"}))
    DeleteBackendResponse.type = Types::DeleteBackendResponse
    DeleteBackendStorageRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBackendStorageRequest.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBackendStorageRequest.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the storage resource.</p>", "smithy.api#jsonName" => "resourceName", "smithy.api#required" => {}}))
    DeleteBackendStorageRequest.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: 'ServiceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the storage service.</p>", "smithy.api#jsonName" => "serviceName", "smithy.api#required" => {}}))
    DeleteBackendStorageRequest.type = Types::DeleteBackendStorageRequest
    DeleteBackendStorageResponse.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#jsonName" => "appId"}))
    DeleteBackendStorageResponse.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#jsonName" => "backendEnvironmentName"}))
    DeleteBackendStorageResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The ID for the job.</p>", "smithy.api#jsonName" => "jobId"}))
    DeleteBackendStorageResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the request.</p>", "smithy.api#jsonName" => "status"}))
    DeleteBackendStorageResponse.type = Types::DeleteBackendStorageResponse
    DeleteTokenRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTokenRequest.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SessionId', traits: {"smithy.api#documentation" => "<p>The session ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTokenRequest.type = Types::DeleteTokenRequest
    DeleteTokenResponse.add_member(:is_success, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsSuccess', traits: {"smithy.api#documentation" => "<p>Indicates whether the request succeeded or failed.</p>", "smithy.api#jsonName" => "isSuccess"}))
    DeleteTokenResponse.type = Types::DeleteTokenResponse
    DeliveryMethod.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL', traits: {"smithy.api#enumValue" => "EMAIL"}))
    DeliveryMethod.add_member(:sms, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SMS', traits: {"smithy.api#enumValue" => "SMS"}))
    EmailSettings.add_member(:email_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EmailMessage', traits: {"smithy.api#documentation" => "<p>The contents of the email message.</p>", "smithy.api#jsonName" => "emailMessage"}))
    EmailSettings.add_member(:email_subject, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EmailSubject', traits: {"smithy.api#documentation" => "<p>The contents of the subject line of the email message.</p>", "smithy.api#jsonName" => "emailSubject"}))
    EmailSettings.type = Types::EmailSettings
    GatewayTimeoutException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>An error message to inform that the request failed.</p>", "smithy.api#jsonName" => "message"}))
    GatewayTimeoutException.type = Types::GatewayTimeoutException
    GenerateBackendAPIModelsRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GenerateBackendAPIModelsRequest.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GenerateBackendAPIModelsRequest.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of this resource.</p>", "smithy.api#jsonName" => "resourceName", "smithy.api#required" => {}}))
    GenerateBackendAPIModelsRequest.type = Types::GenerateBackendAPIModelsRequest
    GenerateBackendAPIModelsResponse.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#jsonName" => "appId"}))
    GenerateBackendAPIModelsResponse.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#jsonName" => "backendEnvironmentName"}))
    GenerateBackendAPIModelsResponse.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>If the request fails, this error is returned.</p>", "smithy.api#jsonName" => "error"}))
    GenerateBackendAPIModelsResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The ID for the job.</p>", "smithy.api#jsonName" => "jobId"}))
    GenerateBackendAPIModelsResponse.add_member(:operation, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Operation', traits: {"smithy.api#documentation" => "<p>The name of the operation.</p>", "smithy.api#jsonName" => "operation"}))
    GenerateBackendAPIModelsResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the request.</p>", "smithy.api#jsonName" => "status"}))
    GenerateBackendAPIModelsResponse.type = Types::GenerateBackendAPIModelsResponse
    GetBackendAPIModelsRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBackendAPIModelsRequest.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBackendAPIModelsRequest.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of this resource.</p>", "smithy.api#jsonName" => "resourceName", "smithy.api#required" => {}}))
    GetBackendAPIModelsRequest.type = Types::GetBackendAPIModelsRequest
    GetBackendAPIModelsResponse.add_member(:models, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Models', traits: {"smithy.api#documentation" => "<p>Stringified JSON of the datastore model.</p>", "smithy.api#jsonName" => "models"}))
    GetBackendAPIModelsResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the request.</p>", "smithy.api#jsonName" => "status"}))
    GetBackendAPIModelsResponse.add_member(:model_introspection_schema, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ModelIntrospectionSchema', traits: {"smithy.api#documentation" => "<p>Stringified JSON of the model introspection schema for an existing backend API resource.</p>", "smithy.api#jsonName" => "modelIntrospectionSchema"}))
    GetBackendAPIModelsResponse.type = Types::GetBackendAPIModelsResponse
    GetBackendAPIRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBackendAPIRequest.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBackendAPIRequest.add_member(:resource_config, Smithy::Schema::Shapes::ShapeRef.new(shape: BackendAPIResourceConfig, location_name: 'ResourceConfig', traits: {"smithy.api#documentation" => "<p>Defines the resource configuration for the data model in your Amplify project.</p>", "smithy.api#jsonName" => "resourceConfig"}))
    GetBackendAPIRequest.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of this resource.</p>", "smithy.api#jsonName" => "resourceName", "smithy.api#required" => {}}))
    GetBackendAPIRequest.type = Types::GetBackendAPIRequest
    GetBackendAPIResponse.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#jsonName" => "appId"}))
    GetBackendAPIResponse.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#jsonName" => "backendEnvironmentName"}))
    GetBackendAPIResponse.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>If the request fails, this error is returned.</p>", "smithy.api#jsonName" => "error"}))
    GetBackendAPIResponse.add_member(:resource_config, Smithy::Schema::Shapes::ShapeRef.new(shape: BackendAPIResourceConfig, location_name: 'ResourceConfig', traits: {"smithy.api#documentation" => "<p>The resource configuration for this response object.</p>", "smithy.api#jsonName" => "resourceConfig"}))
    GetBackendAPIResponse.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#documentation" => "<p>The name of this resource.</p>", "smithy.api#jsonName" => "resourceName"}))
    GetBackendAPIResponse.type = Types::GetBackendAPIResponse
    GetBackendAuthRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBackendAuthRequest.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBackendAuthRequest.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of this resource.</p>", "smithy.api#jsonName" => "resourceName", "smithy.api#required" => {}}))
    GetBackendAuthRequest.type = Types::GetBackendAuthRequest
    GetBackendAuthResponse.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#jsonName" => "appId"}))
    GetBackendAuthResponse.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#jsonName" => "backendEnvironmentName"}))
    GetBackendAuthResponse.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>If the request fails, this error is returned.</p>", "smithy.api#jsonName" => "error"}))
    GetBackendAuthResponse.add_member(:resource_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBackendAuthResourceConfig, location_name: 'ResourceConfig', traits: {"smithy.api#documentation" => "<p>The resource configuration for authorization requests to the backend of your Amplify project.</p>", "smithy.api#jsonName" => "resourceConfig"}))
    GetBackendAuthResponse.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#documentation" => "<p>The name of this resource.</p>", "smithy.api#jsonName" => "resourceName"}))
    GetBackendAuthResponse.type = Types::GetBackendAuthResponse
    GetBackendJobRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBackendJobRequest.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBackendJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The ID for the job.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBackendJobRequest.type = Types::GetBackendJobRequest
    GetBackendJobResponse.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#jsonName" => "appId"}))
    GetBackendJobResponse.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#jsonName" => "backendEnvironmentName"}))
    GetBackendJobResponse.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreateTime', traits: {"smithy.api#documentation" => "<p>The time when the job was created.</p>", "smithy.api#jsonName" => "createTime"}))
    GetBackendJobResponse.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>If the request fails, this error is returned.</p>", "smithy.api#jsonName" => "error"}))
    GetBackendJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The ID for the job.</p>", "smithy.api#jsonName" => "jobId"}))
    GetBackendJobResponse.add_member(:operation, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Operation', traits: {"smithy.api#documentation" => "<p>The name of the operation.</p>", "smithy.api#jsonName" => "operation"}))
    GetBackendJobResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the request.</p>", "smithy.api#jsonName" => "status"}))
    GetBackendJobResponse.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UpdateTime', traits: {"smithy.api#documentation" => "<p>The time when the job was last updated.</p>", "smithy.api#jsonName" => "updateTime"}))
    GetBackendJobResponse.type = Types::GetBackendJobResponse
    GetBackendRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBackendRequest.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#jsonName" => "backendEnvironmentName"}))
    GetBackendRequest.type = Types::GetBackendRequest
    GetBackendResponse.add_member(:amplify_feature_flags, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AmplifyFeatureFlags', traits: {"smithy.api#documentation" => "<p>A stringified version of the cli.json file for your Amplify project.</p>", "smithy.api#jsonName" => "amplifyFeatureFlags"}))
    GetBackendResponse.add_member(:amplify_meta_config, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AmplifyMetaConfig', traits: {"smithy.api#documentation" => "<p>A stringified version of the current configs for your Amplify project.</p>", "smithy.api#jsonName" => "amplifyMetaConfig"}))
    GetBackendResponse.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#jsonName" => "appId"}))
    GetBackendResponse.add_member(:app_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppName', traits: {"smithy.api#documentation" => "<p>The name of the app.</p>", "smithy.api#jsonName" => "appName"}))
    GetBackendResponse.add_member(:backend_environment_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'BackendEnvironmentList', traits: {"smithy.api#documentation" => "<p>A list of backend environments in an array.</p>", "smithy.api#jsonName" => "backendEnvironmentList"}))
    GetBackendResponse.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#jsonName" => "backendEnvironmentName"}))
    GetBackendResponse.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>If the request failed, this is the returned error.</p>", "smithy.api#jsonName" => "error"}))
    GetBackendResponse.type = Types::GetBackendResponse
    GetBackendStorageRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBackendStorageRequest.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBackendStorageRequest.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the storage resource.</p>", "smithy.api#jsonName" => "resourceName", "smithy.api#required" => {}}))
    GetBackendStorageRequest.type = Types::GetBackendStorageRequest
    GetBackendStorageResourceConfig.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BucketName', traits: {"smithy.api#documentation" => "<p>The name of the S3 bucket.</p>", "smithy.api#jsonName" => "bucketName"}))
    GetBackendStorageResourceConfig.add_member(:imported, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Imported', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Returns True if the storage resource has been imported.</p>", "smithy.api#jsonName" => "imported", "smithy.api#required" => {}}))
    GetBackendStorageResourceConfig.add_member(:permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: BackendStoragePermissions, location_name: 'Permissions', traits: {"smithy.api#documentation" => "<p>The authorization configuration for the storage S3 bucket.</p>", "smithy.api#jsonName" => "permissions"}))
    GetBackendStorageResourceConfig.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: 'ServiceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the storage service.</p>", "smithy.api#jsonName" => "serviceName", "smithy.api#required" => {}}))
    GetBackendStorageResourceConfig.type = Types::GetBackendStorageResourceConfig
    GetBackendStorageResponse.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#jsonName" => "appId"}))
    GetBackendStorageResponse.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#jsonName" => "backendEnvironmentName"}))
    GetBackendStorageResponse.add_member(:resource_config, Smithy::Schema::Shapes::ShapeRef.new(shape: GetBackendStorageResourceConfig, location_name: 'ResourceConfig', traits: {"smithy.api#documentation" => "<p>The resource configuration for the backend storage resource.</p>", "smithy.api#jsonName" => "resourceConfig"}))
    GetBackendStorageResponse.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#documentation" => "<p>The name of the storage resource.</p>", "smithy.api#jsonName" => "resourceName"}))
    GetBackendStorageResponse.type = Types::GetBackendStorageResponse
    GetTokenRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTokenRequest.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SessionId', traits: {"smithy.api#documentation" => "<p>The session ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTokenRequest.type = Types::GetTokenRequest
    GetTokenResponse.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#jsonName" => "appId"}))
    GetTokenResponse.add_member(:challenge_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ChallengeCode', traits: {"smithy.api#documentation" => "<p>The one-time challenge code for authenticating into the Amplify Admin UI.</p>", "smithy.api#jsonName" => "challengeCode"}))
    GetTokenResponse.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SessionId', traits: {"smithy.api#documentation" => "<p>A unique ID provided when creating a new challenge token.</p>", "smithy.api#jsonName" => "sessionId"}))
    GetTokenResponse.add_member(:ttl, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Ttl', traits: {"smithy.api#documentation" => "<p>The expiry time for the one-time generated token code.</p>", "smithy.api#jsonName" => "ttl"}))
    GetTokenResponse.type = Types::GetTokenResponse
    ImportBackendAuthRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ImportBackendAuthRequest.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ImportBackendAuthRequest.add_member(:identity_pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IdentityPoolId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Cognito identity pool.</p>", "smithy.api#jsonName" => "identityPoolId"}))
    ImportBackendAuthRequest.add_member(:native_client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NativeClientId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The ID of the Amazon Cognito native client.</p>", "smithy.api#jsonName" => "nativeClientId", "smithy.api#required" => {}}))
    ImportBackendAuthRequest.add_member(:user_pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserPoolId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The ID of the Amazon Cognito user pool.</p>", "smithy.api#jsonName" => "userPoolId", "smithy.api#required" => {}}))
    ImportBackendAuthRequest.add_member(:web_client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'WebClientId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The ID of the Amazon Cognito web client.</p>", "smithy.api#jsonName" => "webClientId", "smithy.api#required" => {}}))
    ImportBackendAuthRequest.type = Types::ImportBackendAuthRequest
    ImportBackendAuthResponse.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#jsonName" => "appId"}))
    ImportBackendAuthResponse.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#jsonName" => "backendEnvironmentName"}))
    ImportBackendAuthResponse.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>If the request fails, this error is returned.</p>", "smithy.api#jsonName" => "error"}))
    ImportBackendAuthResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The ID for the job.</p>", "smithy.api#jsonName" => "jobId"}))
    ImportBackendAuthResponse.add_member(:operation, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Operation', traits: {"smithy.api#documentation" => "<p>The name of the operation.</p>", "smithy.api#jsonName" => "operation"}))
    ImportBackendAuthResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the request.</p>", "smithy.api#jsonName" => "status"}))
    ImportBackendAuthResponse.type = Types::ImportBackendAuthResponse
    ImportBackendStorageRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ImportBackendStorageRequest.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ImportBackendStorageRequest.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BucketName', traits: {"smithy.api#documentation" => "<p>The name of the S3 bucket.</p>", "smithy.api#jsonName" => "bucketName"}))
    ImportBackendStorageRequest.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: 'ServiceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the storage service.</p>", "smithy.api#jsonName" => "serviceName", "smithy.api#required" => {}}))
    ImportBackendStorageRequest.type = Types::ImportBackendStorageRequest
    ImportBackendStorageResponse.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#jsonName" => "appId"}))
    ImportBackendStorageResponse.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#jsonName" => "backendEnvironmentName"}))
    ImportBackendStorageResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The ID for the job.</p>", "smithy.api#jsonName" => "jobId"}))
    ImportBackendStorageResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the request.</p>", "smithy.api#jsonName" => "status"}))
    ImportBackendStorageResponse.type = Types::ImportBackendStorageResponse
    ListBackendJobsRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBackendJobsRequest.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBackendJobsRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The ID for the job.</p>", "smithy.api#jsonName" => "jobId"}))
    ListBackendJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integermin1max25, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results that you want in the response.</p>", "smithy.api#jsonName" => "maxResults"}))
    ListBackendJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results.</p>", "smithy.api#jsonName" => "nextToken"}))
    ListBackendJobsRequest.add_member(:operation, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Operation', traits: {"smithy.api#documentation" => "<p>Filters the list of response objects to include only those with the specified operation name.</p>", "smithy.api#jsonName" => "operation"}))
    ListBackendJobsRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Filters the list of response objects to include only those with the specified status.</p>", "smithy.api#jsonName" => "status"}))
    ListBackendJobsRequest.type = Types::ListBackendJobsRequest
    ListBackendJobsResponse.add_member(:jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfBackendJobRespObj, location_name: 'Jobs', traits: {"smithy.api#documentation" => "<p>An array of jobs and their properties.</p>", "smithy.api#jsonName" => "jobs"}))
    ListBackendJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results.</p>", "smithy.api#jsonName" => "nextToken"}))
    ListBackendJobsResponse.type = Types::ListBackendJobsResponse
    ListOfAdditionalConstraintsElement.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalConstraintsElement)
    ListOfAuthenticatedElement.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticatedElement)
    ListOfBackendAPIAuthType.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BackendAPIAuthType)
    ListOfBackendJobRespObj.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BackendJobRespObj)
    ListOfMfaTypesElement.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MfaTypesElement)
    ListOfOAuthScopesElement.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OAuthScopesElement)
    ListOfRequiredSignUpAttributesElement.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RequiredSignUpAttributesElement)
    ListOfS3BucketInfo.member = Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketInfo)
    ListOfUnAuthenticatedElement.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UnAuthenticatedElement)
    ListOfString.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ListS3BucketsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Reserved for future use.</p>", "smithy.api#jsonName" => "nextToken"}))
    ListS3BucketsRequest.type = Types::ListS3BucketsRequest
    ListS3BucketsResponse.add_member(:buckets, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfS3BucketInfo, location_name: 'Buckets', traits: {"smithy.api#documentation" => "<p>The list of S3 buckets.</p>", "smithy.api#jsonName" => "buckets"}))
    ListS3BucketsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Reserved for future use.</p>", "smithy.api#jsonName" => "nextToken"}))
    ListS3BucketsResponse.type = Types::ListS3BucketsResponse
    LoginAuthConfigReqObj.add_member(:aws_cognito_identity_pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AwsCognitoIdentityPoolId', traits: {"smithy.api#documentation" => "<p>The Amazon Cognito identity pool ID used for the Amplify Admin UI login authorization.</p>", "smithy.api#jsonName" => "aws_cognito_identity_pool_id"}))
    LoginAuthConfigReqObj.add_member(:aws_cognito_region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AwsCognitoRegion', traits: {"smithy.api#documentation" => "<p>The AWS Region for the Amplify Admin UI login.</p>", "smithy.api#jsonName" => "aws_cognito_region"}))
    LoginAuthConfigReqObj.add_member(:aws_user_pools_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AwsUserPoolsId', traits: {"smithy.api#documentation" => "<p>The Amazon Cognito user pool ID used for Amplify Admin UI login authentication.</p>", "smithy.api#jsonName" => "aws_user_pools_id"}))
    LoginAuthConfigReqObj.add_member(:aws_user_pools_web_client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AwsUserPoolsWebClientId', traits: {"smithy.api#documentation" => "<p>The web client ID for the Amazon Cognito user pools.</p>", "smithy.api#jsonName" => "aws_user_pools_web_client_id"}))
    LoginAuthConfigReqObj.type = Types::LoginAuthConfigReqObj
    MFAMode.add_member(:on, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ON', traits: {"smithy.api#enumValue" => "ON"}))
    MFAMode.add_member(:off, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OFF', traits: {"smithy.api#enumValue" => "OFF"}))
    MFAMode.add_member(:optional, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPTIONAL', traits: {"smithy.api#enumValue" => "OPTIONAL"}))
    MfaTypesElement.add_member(:sms, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SMS', traits: {"smithy.api#enumValue" => "SMS"}))
    MfaTypesElement.add_member(:totp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TOTP', traits: {"smithy.api#enumValue" => "TOTP"}))
    Mode.add_member(:api_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'API_KEY', traits: {"smithy.api#enumValue" => "API_KEY"}))
    Mode.add_member(:aws_iam, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_IAM', traits: {"smithy.api#enumValue" => "AWS_IAM"}))
    Mode.add_member(:amazon_cognito_user_pools, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AMAZON_COGNITO_USER_POOLS', traits: {"smithy.api#enumValue" => "AMAZON_COGNITO_USER_POOLS"}))
    Mode.add_member(:openid_connect, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPENID_CONNECT', traits: {"smithy.api#enumValue" => "OPENID_CONNECT"}))
    NotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>An error message to inform that the request has failed.</p>", "smithy.api#jsonName" => "message"}))
    NotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The type of resource that is not found.</p>", "smithy.api#jsonName" => "resourceType"}))
    NotFoundException.type = Types::NotFoundException
    OAuthGrantType.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CODE', traits: {"smithy.api#enumValue" => "CODE"}))
    OAuthGrantType.add_member(:implicit, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPLICIT', traits: {"smithy.api#enumValue" => "IMPLICIT"}))
    OAuthScopesElement.add_member(:phone, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PHONE', traits: {"smithy.api#enumValue" => "PHONE"}))
    OAuthScopesElement.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL', traits: {"smithy.api#enumValue" => "EMAIL"}))
    OAuthScopesElement.add_member(:openid, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPENID', traits: {"smithy.api#enumValue" => "OPENID"}))
    OAuthScopesElement.add_member(:profile, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROFILE', traits: {"smithy.api#enumValue" => "PROFILE"}))
    OAuthScopesElement.add_member(:aws_cognito_signin_user_admin, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_COGNITO_SIGNIN_USER_ADMIN', traits: {"smithy.api#enumValue" => "AWS_COGNITO_SIGNIN_USER_ADMIN"}))
    RemoveAllBackendsRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveAllBackendsRequest.add_member(:clean_amplify_app, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'CleanAmplifyApp', traits: {"smithy.api#documentation" => "<p>Cleans up the Amplify Console app if this value is set to true.</p>", "smithy.api#jsonName" => "cleanAmplifyApp"}))
    RemoveAllBackendsRequest.type = Types::RemoveAllBackendsRequest
    RemoveAllBackendsResponse.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#jsonName" => "appId"}))
    RemoveAllBackendsResponse.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>If the request fails, this error is returned.</p>", "smithy.api#jsonName" => "error"}))
    RemoveAllBackendsResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The ID for the job.</p>", "smithy.api#jsonName" => "jobId"}))
    RemoveAllBackendsResponse.add_member(:operation, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Operation', traits: {"smithy.api#documentation" => "<p>The name of the operation.</p>", "smithy.api#jsonName" => "operation"}))
    RemoveAllBackendsResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the request.</p>", "smithy.api#jsonName" => "status"}))
    RemoveAllBackendsResponse.type = Types::RemoveAllBackendsResponse
    RemoveBackendConfigRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveBackendConfigRequest.type = Types::RemoveBackendConfigRequest
    RemoveBackendConfigResponse.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>If the request fails, this error is returned.</p>", "smithy.api#jsonName" => "error"}))
    RemoveBackendConfigResponse.type = Types::RemoveBackendConfigResponse
    RequiredSignUpAttributesElement.add_member(:address, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADDRESS', traits: {"smithy.api#enumValue" => "ADDRESS"}))
    RequiredSignUpAttributesElement.add_member(:birthdate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BIRTHDATE', traits: {"smithy.api#enumValue" => "BIRTHDATE"}))
    RequiredSignUpAttributesElement.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL', traits: {"smithy.api#enumValue" => "EMAIL"}))
    RequiredSignUpAttributesElement.add_member(:family_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAMILY_NAME', traits: {"smithy.api#enumValue" => "FAMILY_NAME"}))
    RequiredSignUpAttributesElement.add_member(:gender, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GENDER', traits: {"smithy.api#enumValue" => "GENDER"}))
    RequiredSignUpAttributesElement.add_member(:given_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GIVEN_NAME', traits: {"smithy.api#enumValue" => "GIVEN_NAME"}))
    RequiredSignUpAttributesElement.add_member(:locale, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOCALE', traits: {"smithy.api#enumValue" => "LOCALE"}))
    RequiredSignUpAttributesElement.add_member(:middle_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MIDDLE_NAME', traits: {"smithy.api#enumValue" => "MIDDLE_NAME"}))
    RequiredSignUpAttributesElement.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NAME', traits: {"smithy.api#enumValue" => "NAME"}))
    RequiredSignUpAttributesElement.add_member(:nickname, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NICKNAME', traits: {"smithy.api#enumValue" => "NICKNAME"}))
    RequiredSignUpAttributesElement.add_member(:phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PHONE_NUMBER', traits: {"smithy.api#enumValue" => "PHONE_NUMBER"}))
    RequiredSignUpAttributesElement.add_member(:picture, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PICTURE', traits: {"smithy.api#enumValue" => "PICTURE"}))
    RequiredSignUpAttributesElement.add_member(:preferred_username, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PREFERRED_USERNAME', traits: {"smithy.api#enumValue" => "PREFERRED_USERNAME"}))
    RequiredSignUpAttributesElement.add_member(:profile, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROFILE', traits: {"smithy.api#enumValue" => "PROFILE"}))
    RequiredSignUpAttributesElement.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATED_AT', traits: {"smithy.api#enumValue" => "UPDATED_AT"}))
    RequiredSignUpAttributesElement.add_member(:website, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEBSITE', traits: {"smithy.api#enumValue" => "WEBSITE"}))
    RequiredSignUpAttributesElement.add_member(:zone_info, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZONE_INFO', traits: {"smithy.api#enumValue" => "ZONE_INFO"}))
    ResolutionStrategy.add_member(:optimistic_concurrency, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPTIMISTIC_CONCURRENCY', traits: {"smithy.api#enumValue" => "OPTIMISTIC_CONCURRENCY"}))
    ResolutionStrategy.add_member(:lambda, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAMBDA', traits: {"smithy.api#enumValue" => "LAMBDA"}))
    ResolutionStrategy.add_member(:automerge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTOMERGE', traits: {"smithy.api#enumValue" => "AUTOMERGE"}))
    ResolutionStrategy.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    ResourceConfig.type = Types::ResourceConfig
    S3BucketInfo.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>The creation date of the S3 bucket.</p>", "smithy.api#jsonName" => "creationDate"}))
    S3BucketInfo.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the S3 bucket.</p>", "smithy.api#jsonName" => "name"}))
    S3BucketInfo.type = Types::S3BucketInfo
    Service.add_member(:cognito, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COGNITO', traits: {"smithy.api#enumValue" => "COGNITO"}))
    ServiceName.add_member(:s3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3', traits: {"smithy.api#enumValue" => "S3"}))
    Settings.add_member(:mfa_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfMfaTypesElement, location_name: 'MfaTypes', traits: {"smithy.api#documentation" => "<p>The supported MFA types.</p>", "smithy.api#jsonName" => "mfaTypes"}))
    Settings.add_member(:sms_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SmsMessage', traits: {"smithy.api#documentation" => "<p>The body of the SMS message.</p>", "smithy.api#jsonName" => "smsMessage"}))
    Settings.type = Types::Settings
    SignInMethod.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL', traits: {"smithy.api#enumValue" => "EMAIL"}))
    SignInMethod.add_member(:email_and_phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL_AND_PHONE_NUMBER', traits: {"smithy.api#enumValue" => "EMAIL_AND_PHONE_NUMBER"}))
    SignInMethod.add_member(:phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PHONE_NUMBER', traits: {"smithy.api#enumValue" => "PHONE_NUMBER"}))
    SignInMethod.add_member(:username, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USERNAME', traits: {"smithy.api#enumValue" => "USERNAME"}))
    SmsSettings.add_member(:sms_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SmsMessage', traits: {"smithy.api#documentation" => "<p>The contents of the SMS message.</p>", "smithy.api#jsonName" => "smsMessage"}))
    SmsSettings.type = Types::SmsSettings
    SocialProviderSettings.add_member(:facebook, Smithy::Schema::Shapes::ShapeRef.new(shape: BackendAuthSocialProviderConfig, location_name: 'Facebook'))
    SocialProviderSettings.add_member(:google, Smithy::Schema::Shapes::ShapeRef.new(shape: BackendAuthSocialProviderConfig, location_name: 'Google'))
    SocialProviderSettings.add_member(:login_with_amazon, Smithy::Schema::Shapes::ShapeRef.new(shape: BackendAuthSocialProviderConfig, location_name: 'LoginWithAmazon'))
    SocialProviderSettings.add_member(:sign_in_with_apple, Smithy::Schema::Shapes::ShapeRef.new(shape: BackendAuthAppleProviderConfig, location_name: 'SignInWithApple'))
    SocialProviderSettings.type = Types::SocialProviderSettings
    Status.add_member(:latest, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LATEST', traits: {"smithy.api#enumValue" => "LATEST"}))
    Status.add_member(:stale, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STALE', traits: {"smithy.api#enumValue" => "STALE"}))
    TooManyRequestsException.add_member(:limit_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LimitType', traits: {"smithy.api#documentation" => "<p>The type of limit that was exceeded.</p>", "smithy.api#jsonName" => "limitType"}))
    TooManyRequestsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>An error message to inform that the request has failed.</p>", "smithy.api#jsonName" => "message"}))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UnAuthenticatedElement.add_member(:read, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READ', traits: {"smithy.api#enumValue" => "READ"}))
    UnAuthenticatedElement.add_member(:create_and_update, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_AND_UPDATE', traits: {"smithy.api#enumValue" => "CREATE_AND_UPDATE"}))
    UnAuthenticatedElement.add_member(:delete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE', traits: {"smithy.api#enumValue" => "DELETE"}))
    UpdateBackendAPIRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBackendAPIRequest.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBackendAPIRequest.add_member(:resource_config, Smithy::Schema::Shapes::ShapeRef.new(shape: BackendAPIResourceConfig, location_name: 'ResourceConfig', traits: {"smithy.api#documentation" => "<p>Defines the resource configuration for the data model in your Amplify project.</p>", "smithy.api#jsonName" => "resourceConfig"}))
    UpdateBackendAPIRequest.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of this resource.</p>", "smithy.api#jsonName" => "resourceName", "smithy.api#required" => {}}))
    UpdateBackendAPIRequest.type = Types::UpdateBackendAPIRequest
    UpdateBackendAPIResponse.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#jsonName" => "appId"}))
    UpdateBackendAPIResponse.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#jsonName" => "backendEnvironmentName"}))
    UpdateBackendAPIResponse.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>If the request fails, this error is returned.</p>", "smithy.api#jsonName" => "error"}))
    UpdateBackendAPIResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The ID for the job.</p>", "smithy.api#jsonName" => "jobId"}))
    UpdateBackendAPIResponse.add_member(:operation, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Operation', traits: {"smithy.api#documentation" => "<p>The name of the operation.</p>", "smithy.api#jsonName" => "operation"}))
    UpdateBackendAPIResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the request.</p>", "smithy.api#jsonName" => "status"}))
    UpdateBackendAPIResponse.type = Types::UpdateBackendAPIResponse
    UpdateBackendAuthForgotPasswordConfig.add_member(:delivery_method, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryMethod, location_name: 'DeliveryMethod', traits: {"smithy.api#documentation" => "<p><b>(DEPRECATED)</b> Describes which mode to use (either SMS or email) to deliver messages to app users that want to recover their password.</p>", "smithy.api#jsonName" => "deliveryMethod"}))
    UpdateBackendAuthForgotPasswordConfig.add_member(:email_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailSettings, location_name: 'EmailSettings', traits: {"smithy.api#documentation" => "<p><b>(DEPRECATED)</b> The configuration for the email sent when an app user forgets their password.</p>", "smithy.api#jsonName" => "emailSettings"}))
    UpdateBackendAuthForgotPasswordConfig.add_member(:sms_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: SmsSettings, location_name: 'SmsSettings', traits: {"smithy.api#documentation" => "<p><b>(DEPRECATED)</b> The configuration for the SMS message sent when an Amplify app user forgets their password.</p>", "smithy.api#jsonName" => "smsSettings"}))
    UpdateBackendAuthForgotPasswordConfig.type = Types::UpdateBackendAuthForgotPasswordConfig
    UpdateBackendAuthIdentityPoolConfig.add_member(:unauthenticated_login, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UnauthenticatedLogin', traits: {"smithy.api#documentation" => "<p>A boolean value that can be set to allow or disallow guest-level authorization into your Amplify app.</p>", "smithy.api#jsonName" => "unauthenticatedLogin"}))
    UpdateBackendAuthIdentityPoolConfig.type = Types::UpdateBackendAuthIdentityPoolConfig
    UpdateBackendAuthMFAConfig.add_member(:mfa_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: MFAMode, location_name: 'MFAMode', traits: {"smithy.api#documentation" => "<p>The MFA mode for the backend of your Amplify project.</p>"}))
    UpdateBackendAuthMFAConfig.add_member(:settings, Smithy::Schema::Shapes::ShapeRef.new(shape: Settings, location_name: 'Settings', traits: {"smithy.api#documentation" => "<p>The settings of your MFA configuration for the backend of your Amplify project.</p>", "smithy.api#jsonName" => "settings"}))
    UpdateBackendAuthMFAConfig.type = Types::UpdateBackendAuthMFAConfig
    UpdateBackendAuthOAuthConfig.add_member(:domain_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DomainPrefix', traits: {"smithy.api#documentation" => "<p>The Amazon Cognito domain prefix used to create a hosted UI for authentication.</p>", "smithy.api#jsonName" => "domainPrefix"}))
    UpdateBackendAuthOAuthConfig.add_member(:o_auth_grant_type, Smithy::Schema::Shapes::ShapeRef.new(shape: OAuthGrantType, location_name: 'OAuthGrantType', traits: {"smithy.api#documentation" => "<p>The OAuth grant type to allow app users to authenticate from your Amplify app.</p>", "smithy.api#jsonName" => "oAuthGrantType"}))
    UpdateBackendAuthOAuthConfig.add_member(:o_auth_scopes, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfOAuthScopesElement, location_name: 'OAuthScopes', traits: {"smithy.api#documentation" => "<p>The list of OAuth-related flows that can allow users to authenticate from your Amplify app.</p>", "smithy.api#jsonName" => "oAuthScopes"}))
    UpdateBackendAuthOAuthConfig.add_member(:redirect_sign_in_ur_is, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'RedirectSignInURIs', traits: {"smithy.api#documentation" => "<p>Redirect URLs that OAuth uses when a user signs in to an Amplify app.</p>", "smithy.api#jsonName" => "redirectSignInURIs"}))
    UpdateBackendAuthOAuthConfig.add_member(:redirect_sign_out_ur_is, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'RedirectSignOutURIs', traits: {"smithy.api#documentation" => "<p>Redirect URLs that OAuth uses when a user signs out of an Amplify app.</p>", "smithy.api#jsonName" => "redirectSignOutURIs"}))
    UpdateBackendAuthOAuthConfig.add_member(:social_provider_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: SocialProviderSettings, location_name: 'SocialProviderSettings', traits: {"smithy.api#documentation" => "<p>Describes third-party social federation configurations for allowing your users to sign in with OAuth.</p>", "smithy.api#jsonName" => "socialProviderSettings"}))
    UpdateBackendAuthOAuthConfig.type = Types::UpdateBackendAuthOAuthConfig
    UpdateBackendAuthPasswordPolicyConfig.add_member(:additional_constraints, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfAdditionalConstraintsElement, location_name: 'AdditionalConstraints', traits: {"smithy.api#documentation" => "<p>Describes additional constraints on password requirements to sign in to the auth resource, configured as a part of your Amplify project.</p>", "smithy.api#jsonName" => "additionalConstraints"}))
    UpdateBackendAuthPasswordPolicyConfig.add_member(:minimum_length, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'MinimumLength', traits: {"smithy.api#documentation" => "<p>Describes the minimum length of the password required to sign in to the auth resource, configured as a part of your Amplify project.</p>", "smithy.api#jsonName" => "minimumLength"}))
    UpdateBackendAuthPasswordPolicyConfig.type = Types::UpdateBackendAuthPasswordPolicyConfig
    UpdateBackendAuthRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBackendAuthRequest.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBackendAuthRequest.add_member(:resource_config, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBackendAuthResourceConfig, location_name: 'ResourceConfig', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The resource configuration for this request object.</p>", "smithy.api#jsonName" => "resourceConfig", "smithy.api#required" => {}}))
    UpdateBackendAuthRequest.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of this resource.</p>", "smithy.api#jsonName" => "resourceName", "smithy.api#required" => {}}))
    UpdateBackendAuthRequest.type = Types::UpdateBackendAuthRequest
    UpdateBackendAuthResourceConfig.add_member(:auth_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthResources, location_name: 'AuthResources', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Defines the service name to use when configuring an authentication resource in your Amplify project.</p>", "smithy.api#jsonName" => "authResources", "smithy.api#required" => {}}))
    UpdateBackendAuthResourceConfig.add_member(:identity_pool_configs, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBackendAuthIdentityPoolConfig, location_name: 'IdentityPoolConfigs', traits: {"smithy.api#documentation" => "<p>Describes the authorization configuration for the Amazon Cognito identity pool, provisioned as a part of your auth resource in the Amplify project.</p>", "smithy.api#jsonName" => "identityPoolConfigs"}))
    UpdateBackendAuthResourceConfig.add_member(:service, Smithy::Schema::Shapes::ShapeRef.new(shape: Service, location_name: 'Service', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Defines the service name to use when configuring an authentication resource in your Amplify project.</p>", "smithy.api#jsonName" => "service", "smithy.api#required" => {}}))
    UpdateBackendAuthResourceConfig.add_member(:user_pool_configs, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBackendAuthUserPoolConfig, location_name: 'UserPoolConfigs', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Describes the authentication configuration for the Amazon Cognito user pool, provisioned as a part of your auth resource in the Amplify project.</p>", "smithy.api#jsonName" => "userPoolConfigs", "smithy.api#required" => {}}))
    UpdateBackendAuthResourceConfig.type = Types::UpdateBackendAuthResourceConfig
    UpdateBackendAuthResponse.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#jsonName" => "appId"}))
    UpdateBackendAuthResponse.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#jsonName" => "backendEnvironmentName"}))
    UpdateBackendAuthResponse.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>If the request fails, this error is returned.</p>", "smithy.api#jsonName" => "error"}))
    UpdateBackendAuthResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The ID for the job.</p>", "smithy.api#jsonName" => "jobId"}))
    UpdateBackendAuthResponse.add_member(:operation, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Operation', traits: {"smithy.api#documentation" => "<p>The name of the operation.</p>", "smithy.api#jsonName" => "operation"}))
    UpdateBackendAuthResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the request.</p>", "smithy.api#jsonName" => "status"}))
    UpdateBackendAuthResponse.type = Types::UpdateBackendAuthResponse
    UpdateBackendAuthUserPoolConfig.add_member(:forgot_password, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBackendAuthForgotPasswordConfig, location_name: 'ForgotPassword', traits: {"smithy.api#documentation" => "<p><b>(DEPRECATED)</b> Describes the forgot password policy for your Amazon Cognito user pool, configured as a part of your Amplify project.</p>", "smithy.api#jsonName" => "forgotPassword"}))
    UpdateBackendAuthUserPoolConfig.add_member(:mfa, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBackendAuthMFAConfig, location_name: 'Mfa', traits: {"smithy.api#documentation" => "<p>Describes whether to apply multi-factor authentication policies for your Amazon Cognito user pool configured as a part of your Amplify project.</p>", "smithy.api#jsonName" => "mfa"}))
    UpdateBackendAuthUserPoolConfig.add_member(:o_auth, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBackendAuthOAuthConfig, location_name: 'OAuth', traits: {"smithy.api#documentation" => "<p>Describes the OAuth policy and rules for your Amazon Cognito user pool, configured as a part of your Amplify project.</p>", "smithy.api#jsonName" => "oAuth"}))
    UpdateBackendAuthUserPoolConfig.add_member(:password_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBackendAuthPasswordPolicyConfig, location_name: 'PasswordPolicy', traits: {"smithy.api#documentation" => "<p>Describes the password policy for your Amazon Cognito user pool, configured as a part of your Amplify project.</p>", "smithy.api#jsonName" => "passwordPolicy"}))
    UpdateBackendAuthUserPoolConfig.add_member(:verification_message, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBackendAuthVerificationMessageConfig, location_name: 'VerificationMessage', traits: {"smithy.api#documentation" => "<p>Describes the email or SMS verification message for your Amazon Cognito user pool, configured as a part of your Amplify project.</p>", "smithy.api#jsonName" => "verificationMessage"}))
    UpdateBackendAuthUserPoolConfig.type = Types::UpdateBackendAuthUserPoolConfig
    UpdateBackendAuthVerificationMessageConfig.add_member(:delivery_method, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryMethod, location_name: 'DeliveryMethod', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The type of verification message to send.</p>", "smithy.api#jsonName" => "deliveryMethod", "smithy.api#required" => {}}))
    UpdateBackendAuthVerificationMessageConfig.add_member(:email_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailSettings, location_name: 'EmailSettings', traits: {"smithy.api#documentation" => "<p>The settings for the email message.</p>", "smithy.api#jsonName" => "emailSettings"}))
    UpdateBackendAuthVerificationMessageConfig.add_member(:sms_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: SmsSettings, location_name: 'SmsSettings', traits: {"smithy.api#documentation" => "<p>The settings for the SMS message.</p>", "smithy.api#jsonName" => "smsSettings"}))
    UpdateBackendAuthVerificationMessageConfig.type = Types::UpdateBackendAuthVerificationMessageConfig
    UpdateBackendConfigRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBackendConfigRequest.add_member(:login_auth_config, Smithy::Schema::Shapes::ShapeRef.new(shape: LoginAuthConfigReqObj, location_name: 'LoginAuthConfig', traits: {"smithy.api#documentation" => "<p>Describes the Amazon Cognito configuration for Admin UI access.</p>", "smithy.api#jsonName" => "loginAuthConfig"}))
    UpdateBackendConfigRequest.type = Types::UpdateBackendConfigRequest
    UpdateBackendConfigResponse.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#jsonName" => "appId"}))
    UpdateBackendConfigResponse.add_member(:backend_manager_app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendManagerAppId', traits: {"smithy.api#documentation" => "<p>The app ID for the backend manager.</p>", "smithy.api#jsonName" => "backendManagerAppId"}))
    UpdateBackendConfigResponse.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>If the request fails, this error is returned.</p>", "smithy.api#jsonName" => "error"}))
    UpdateBackendConfigResponse.add_member(:login_auth_config, Smithy::Schema::Shapes::ShapeRef.new(shape: LoginAuthConfigReqObj, location_name: 'LoginAuthConfig', traits: {"smithy.api#documentation" => "<p>Describes the Amazon Cognito configurations for the Admin UI auth resource to log in with.</p>", "smithy.api#jsonName" => "loginAuthConfig"}))
    UpdateBackendConfigResponse.type = Types::UpdateBackendConfigResponse
    UpdateBackendJobRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBackendJobRequest.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBackendJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The ID for the job.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBackendJobRequest.add_member(:operation, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Operation', traits: {"smithy.api#documentation" => "<p>Filters the list of response objects to include only those with the specified operation name.</p>", "smithy.api#jsonName" => "operation"}))
    UpdateBackendJobRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Filters the list of response objects to include only those with the specified status.</p>", "smithy.api#jsonName" => "status"}))
    UpdateBackendJobRequest.type = Types::UpdateBackendJobRequest
    UpdateBackendJobResponse.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#jsonName" => "appId"}))
    UpdateBackendJobResponse.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#jsonName" => "backendEnvironmentName"}))
    UpdateBackendJobResponse.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreateTime', traits: {"smithy.api#documentation" => "<p>The time when the job was created.</p>", "smithy.api#jsonName" => "createTime"}))
    UpdateBackendJobResponse.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>If the request fails, this error is returned.</p>", "smithy.api#jsonName" => "error"}))
    UpdateBackendJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The ID for the job.</p>", "smithy.api#jsonName" => "jobId"}))
    UpdateBackendJobResponse.add_member(:operation, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Operation', traits: {"smithy.api#documentation" => "<p>The name of the operation.</p>", "smithy.api#jsonName" => "operation"}))
    UpdateBackendJobResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the request.</p>", "smithy.api#jsonName" => "status"}))
    UpdateBackendJobResponse.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UpdateTime', traits: {"smithy.api#documentation" => "<p>The time when the job was last updated.</p>", "smithy.api#jsonName" => "updateTime"}))
    UpdateBackendJobResponse.type = Types::UpdateBackendJobResponse
    UpdateBackendStorageRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBackendStorageRequest.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBackendStorageRequest.add_member(:resource_config, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBackendStorageResourceConfig, location_name: 'ResourceConfig', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The resource configuration for updating backend storage.</p>", "smithy.api#jsonName" => "resourceConfig", "smithy.api#required" => {}}))
    UpdateBackendStorageRequest.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the storage resource.</p>", "smithy.api#jsonName" => "resourceName", "smithy.api#required" => {}}))
    UpdateBackendStorageRequest.type = Types::UpdateBackendStorageRequest
    UpdateBackendStorageResourceConfig.add_member(:permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: BackendStoragePermissions, location_name: 'Permissions', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The authorization configuration for the storage S3 bucket.</p>", "smithy.api#jsonName" => "permissions", "smithy.api#required" => {}}))
    UpdateBackendStorageResourceConfig.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: 'ServiceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the storage service.</p>", "smithy.api#jsonName" => "serviceName", "smithy.api#required" => {}}))
    UpdateBackendStorageResourceConfig.type = Types::UpdateBackendStorageResourceConfig
    UpdateBackendStorageResponse.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#jsonName" => "appId"}))
    UpdateBackendStorageResponse.add_member(:backend_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackendEnvironmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment.</p>", "smithy.api#jsonName" => "backendEnvironmentName"}))
    UpdateBackendStorageResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The ID for the job.</p>", "smithy.api#jsonName" => "jobId"}))
    UpdateBackendStorageResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the request.</p>", "smithy.api#jsonName" => "status"}))
    UpdateBackendStorageResponse.type = Types::UpdateBackendStorageResponse

    AmplifyBackend = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.amplifybackend#AmplifyBackend"
      service.name = "AmplifyBackend"
      service.version = "2020-08-11"
      service.traits = {"aws.api#service" => {"sdkId" => "AmplifyBackend", "arnNamespace" => "amplifybackend", "cloudFormationName" => "AmplifyBackend", "cloudTrailEventSource" => "amplifybackend.amazonaws.com", "endpointPrefix" => "amplifybackend"}, "aws.auth#sigv4" => {"name" => "amplifybackend"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AmplifyBackend"}
      service.add_operation(:clone_backend, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifybackend#CloneBackend"
        operation.name = "CloneBackend"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CloneBackendRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CloneBackendResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backend/{AppId}/environments/{BackendEnvironmentName}/clone", "code" => 200}}
      end)
      service.add_operation(:create_backend, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifybackend#CreateBackend"
        operation.name = "CreateBackend"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBackendRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBackendResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backend", "code" => 200}}
      end)
      service.add_operation(:create_backend_api, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifybackend#CreateBackendAPI"
        operation.name = "CreateBackendAPI"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBackendAPIRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBackendAPIResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backend/{AppId}/api", "code" => 200}}
      end)
      service.add_operation(:create_backend_auth, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifybackend#CreateBackendAuth"
        operation.name = "CreateBackendAuth"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBackendAuthRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBackendAuthResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backend/{AppId}/auth", "code" => 200}}
      end)
      service.add_operation(:create_backend_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifybackend#CreateBackendConfig"
        operation.name = "CreateBackendConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBackendConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBackendConfigResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backend/{AppId}/config", "code" => 200}}
      end)
      service.add_operation(:create_backend_storage, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifybackend#CreateBackendStorage"
        operation.name = "CreateBackendStorage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBackendStorageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBackendStorageResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backend/{AppId}/storage", "code" => 200}}
      end)
      service.add_operation(:create_token, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifybackend#CreateToken"
        operation.name = "CreateToken"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTokenRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTokenResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backend/{AppId}/challenge", "code" => 200}}
      end)
      service.add_operation(:delete_backend, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifybackend#DeleteBackend"
        operation.name = "DeleteBackend"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBackendRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBackendResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backend/{AppId}/environments/{BackendEnvironmentName}/remove", "code" => 200}}
      end)
      service.add_operation(:delete_backend_api, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifybackend#DeleteBackendAPI"
        operation.name = "DeleteBackendAPI"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBackendAPIRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBackendAPIResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backend/{AppId}/api/{BackendEnvironmentName}/remove", "code" => 200}}
      end)
      service.add_operation(:delete_backend_auth, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifybackend#DeleteBackendAuth"
        operation.name = "DeleteBackendAuth"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBackendAuthRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBackendAuthResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backend/{AppId}/auth/{BackendEnvironmentName}/remove", "code" => 200}}
      end)
      service.add_operation(:delete_backend_storage, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifybackend#DeleteBackendStorage"
        operation.name = "DeleteBackendStorage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBackendStorageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBackendStorageResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backend/{AppId}/storage/{BackendEnvironmentName}/remove", "code" => 200}}
      end)
      service.add_operation(:delete_token, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifybackend#DeleteToken"
        operation.name = "DeleteToken"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTokenRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTokenResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backend/{AppId}/challenge/{SessionId}/remove", "code" => 200}}
      end)
      service.add_operation(:generate_backend_api_models, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifybackend#GenerateBackendAPIModels"
        operation.name = "GenerateBackendAPIModels"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GenerateBackendAPIModelsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GenerateBackendAPIModelsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backend/{AppId}/api/{BackendEnvironmentName}/generateModels", "code" => 200}}
      end)
      service.add_operation(:get_backend, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifybackend#GetBackend"
        operation.name = "GetBackend"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBackendRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBackendResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backend/{AppId}/details", "code" => 200}}
      end)
      service.add_operation(:get_backend_api, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifybackend#GetBackendAPI"
        operation.name = "GetBackendAPI"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBackendAPIRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBackendAPIResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backend/{AppId}/api/{BackendEnvironmentName}/details", "code" => 200}}
      end)
      service.add_operation(:get_backend_api_models, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifybackend#GetBackendAPIModels"
        operation.name = "GetBackendAPIModels"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBackendAPIModelsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBackendAPIModelsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backend/{AppId}/api/{BackendEnvironmentName}/getModels", "code" => 200}}
      end)
      service.add_operation(:get_backend_auth, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifybackend#GetBackendAuth"
        operation.name = "GetBackendAuth"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBackendAuthRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBackendAuthResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backend/{AppId}/auth/{BackendEnvironmentName}/details", "code" => 200}}
      end)
      service.add_operation(:get_backend_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifybackend#GetBackendJob"
        operation.name = "GetBackendJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBackendJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBackendJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backend/{AppId}/job/{BackendEnvironmentName}/{JobId}", "code" => 200}}
      end)
      service.add_operation(:get_backend_storage, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifybackend#GetBackendStorage"
        operation.name = "GetBackendStorage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBackendStorageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBackendStorageResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backend/{AppId}/storage/{BackendEnvironmentName}/details", "code" => 200}}
      end)
      service.add_operation(:get_token, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifybackend#GetToken"
        operation.name = "GetToken"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTokenRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTokenResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/backend/{AppId}/challenge/{SessionId}", "code" => 200}}
      end)
      service.add_operation(:import_backend_auth, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifybackend#ImportBackendAuth"
        operation.name = "ImportBackendAuth"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportBackendAuthRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportBackendAuthResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backend/{AppId}/auth/{BackendEnvironmentName}/import", "code" => 200}}
      end)
      service.add_operation(:import_backend_storage, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifybackend#ImportBackendStorage"
        operation.name = "ImportBackendStorage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportBackendStorageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportBackendStorageResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backend/{AppId}/storage/{BackendEnvironmentName}/import", "code" => 200}}
      end)
      service.add_operation(:list_backend_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifybackend#ListBackendJobs"
        operation.name = "ListBackendJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListBackendJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListBackendJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backend/{AppId}/job/{BackendEnvironmentName}", "code" => 200}}
      end)
      service.add_operation(:list_s3_buckets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifybackend#ListS3Buckets"
        operation.name = "ListS3Buckets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListS3BucketsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListS3BucketsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/s3Buckets", "code" => 200}}
      end)
      service.add_operation(:remove_all_backends, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifybackend#RemoveAllBackends"
        operation.name = "RemoveAllBackends"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveAllBackendsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveAllBackendsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backend/{AppId}/remove", "code" => 200}}
      end)
      service.add_operation(:remove_backend_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifybackend#RemoveBackendConfig"
        operation.name = "RemoveBackendConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveBackendConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveBackendConfigResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backend/{AppId}/config/remove", "code" => 200}}
      end)
      service.add_operation(:update_backend_api, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifybackend#UpdateBackendAPI"
        operation.name = "UpdateBackendAPI"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBackendAPIRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBackendAPIResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backend/{AppId}/api/{BackendEnvironmentName}", "code" => 200}}
      end)
      service.add_operation(:update_backend_auth, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifybackend#UpdateBackendAuth"
        operation.name = "UpdateBackendAuth"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBackendAuthRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBackendAuthResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backend/{AppId}/auth/{BackendEnvironmentName}", "code" => 200}}
      end)
      service.add_operation(:update_backend_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifybackend#UpdateBackendConfig"
        operation.name = "UpdateBackendConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBackendConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBackendConfigResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backend/{AppId}/config/update", "code" => 200}}
      end)
      service.add_operation(:update_backend_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifybackend#UpdateBackendJob"
        operation.name = "UpdateBackendJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBackendJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBackendJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backend/{AppId}/job/{BackendEnvironmentName}/{JobId}", "code" => 200}}
      end)
      service.add_operation(:update_backend_storage, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifybackend#UpdateBackendStorage"
        operation.name = "UpdateBackendStorage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBackendStorageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBackendStorageResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/backend/{AppId}/storage/{BackendEnvironmentName}", "code" => 200}}
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
