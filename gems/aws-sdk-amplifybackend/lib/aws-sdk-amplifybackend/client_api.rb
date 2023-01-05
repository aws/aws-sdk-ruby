# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AmplifyBackend
  # @api private
  module ClientApi

    include Seahorse::Model

    AdditionalConstraintsElement = Shapes::StringShape.new(name: 'AdditionalConstraintsElement')
    AuthResources = Shapes::StringShape.new(name: 'AuthResources')
    AuthenticatedElement = Shapes::StringShape.new(name: 'AuthenticatedElement')
    BackendAPIAppSyncAuthSettings = Shapes::StructureShape.new(name: 'BackendAPIAppSyncAuthSettings')
    BackendAPIAuthType = Shapes::StructureShape.new(name: 'BackendAPIAuthType')
    BackendAPICodegenReqObj = Shapes::StructureShape.new(name: 'BackendAPICodegenReqObj')
    BackendAPICodegenRespObj = Shapes::StructureShape.new(name: 'BackendAPICodegenRespObj')
    BackendAPIConflictResolution = Shapes::StructureShape.new(name: 'BackendAPIConflictResolution')
    BackendAPIReqObj = Shapes::StructureShape.new(name: 'BackendAPIReqObj')
    BackendAPIResourceConfig = Shapes::StructureShape.new(name: 'BackendAPIResourceConfig')
    BackendAPIRespObj = Shapes::StructureShape.new(name: 'BackendAPIRespObj')
    BackendAuthAppleProviderConfig = Shapes::StructureShape.new(name: 'BackendAuthAppleProviderConfig')
    BackendAuthRespObj = Shapes::StructureShape.new(name: 'BackendAuthRespObj')
    BackendAuthSocialProviderConfig = Shapes::StructureShape.new(name: 'BackendAuthSocialProviderConfig')
    BackendConfigRespObj = Shapes::StructureShape.new(name: 'BackendConfigRespObj')
    BackendJobReqObj = Shapes::StructureShape.new(name: 'BackendJobReqObj')
    BackendJobRespObj = Shapes::StructureShape.new(name: 'BackendJobRespObj')
    BackendStoragePermissions = Shapes::StructureShape.new(name: 'BackendStoragePermissions')
    BackendStorageRespObj = Shapes::StructureShape.new(name: 'BackendStorageRespObj')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    CloneBackendReqObj = Shapes::StructureShape.new(name: 'CloneBackendReqObj')
    CloneBackendRequest = Shapes::StructureShape.new(name: 'CloneBackendRequest')
    CloneBackendRespObj = Shapes::StructureShape.new(name: 'CloneBackendRespObj')
    CloneBackendResponse = Shapes::StructureShape.new(name: 'CloneBackendResponse')
    CreateBackendAPIReqObj = Shapes::StructureShape.new(name: 'CreateBackendAPIReqObj')
    CreateBackendAPIRequest = Shapes::StructureShape.new(name: 'CreateBackendAPIRequest')
    CreateBackendAPIResponse = Shapes::StructureShape.new(name: 'CreateBackendAPIResponse')
    CreateBackendAuthForgotPasswordConfig = Shapes::StructureShape.new(name: 'CreateBackendAuthForgotPasswordConfig')
    CreateBackendAuthIdentityPoolConfig = Shapes::StructureShape.new(name: 'CreateBackendAuthIdentityPoolConfig')
    CreateBackendAuthMFAConfig = Shapes::StructureShape.new(name: 'CreateBackendAuthMFAConfig')
    CreateBackendAuthOAuthConfig = Shapes::StructureShape.new(name: 'CreateBackendAuthOAuthConfig')
    CreateBackendAuthPasswordPolicyConfig = Shapes::StructureShape.new(name: 'CreateBackendAuthPasswordPolicyConfig')
    CreateBackendAuthReqObj = Shapes::StructureShape.new(name: 'CreateBackendAuthReqObj')
    CreateBackendAuthRequest = Shapes::StructureShape.new(name: 'CreateBackendAuthRequest')
    CreateBackendAuthResourceConfig = Shapes::StructureShape.new(name: 'CreateBackendAuthResourceConfig')
    CreateBackendAuthResponse = Shapes::StructureShape.new(name: 'CreateBackendAuthResponse')
    CreateBackendAuthUserPoolConfig = Shapes::StructureShape.new(name: 'CreateBackendAuthUserPoolConfig')
    CreateBackendAuthVerificationMessageConfig = Shapes::StructureShape.new(name: 'CreateBackendAuthVerificationMessageConfig')
    CreateBackendConfigReqObj = Shapes::StructureShape.new(name: 'CreateBackendConfigReqObj')
    CreateBackendConfigRequest = Shapes::StructureShape.new(name: 'CreateBackendConfigRequest')
    CreateBackendConfigRespObj = Shapes::StructureShape.new(name: 'CreateBackendConfigRespObj')
    CreateBackendConfigResponse = Shapes::StructureShape.new(name: 'CreateBackendConfigResponse')
    CreateBackendReqObj = Shapes::StructureShape.new(name: 'CreateBackendReqObj')
    CreateBackendRequest = Shapes::StructureShape.new(name: 'CreateBackendRequest')
    CreateBackendRespObj = Shapes::StructureShape.new(name: 'CreateBackendRespObj')
    CreateBackendResponse = Shapes::StructureShape.new(name: 'CreateBackendResponse')
    CreateBackendStorageReqObj = Shapes::StructureShape.new(name: 'CreateBackendStorageReqObj')
    CreateBackendStorageRequest = Shapes::StructureShape.new(name: 'CreateBackendStorageRequest')
    CreateBackendStorageResourceConfig = Shapes::StructureShape.new(name: 'CreateBackendStorageResourceConfig')
    CreateBackendStorageResponse = Shapes::StructureShape.new(name: 'CreateBackendStorageResponse')
    CreateTokenRequest = Shapes::StructureShape.new(name: 'CreateTokenRequest')
    CreateTokenRespObj = Shapes::StructureShape.new(name: 'CreateTokenRespObj')
    CreateTokenResponse = Shapes::StructureShape.new(name: 'CreateTokenResponse')
    DeleteBackendAPIRequest = Shapes::StructureShape.new(name: 'DeleteBackendAPIRequest')
    DeleteBackendAPIResponse = Shapes::StructureShape.new(name: 'DeleteBackendAPIResponse')
    DeleteBackendAuthRequest = Shapes::StructureShape.new(name: 'DeleteBackendAuthRequest')
    DeleteBackendAuthResponse = Shapes::StructureShape.new(name: 'DeleteBackendAuthResponse')
    DeleteBackendRequest = Shapes::StructureShape.new(name: 'DeleteBackendRequest')
    DeleteBackendRespObj = Shapes::StructureShape.new(name: 'DeleteBackendRespObj')
    DeleteBackendResponse = Shapes::StructureShape.new(name: 'DeleteBackendResponse')
    DeleteBackendStorageRequest = Shapes::StructureShape.new(name: 'DeleteBackendStorageRequest')
    DeleteBackendStorageResponse = Shapes::StructureShape.new(name: 'DeleteBackendStorageResponse')
    DeleteTokenRequest = Shapes::StructureShape.new(name: 'DeleteTokenRequest')
    DeleteTokenRespObj = Shapes::StructureShape.new(name: 'DeleteTokenRespObj')
    DeleteTokenResponse = Shapes::StructureShape.new(name: 'DeleteTokenResponse')
    DeliveryMethod = Shapes::StringShape.new(name: 'DeliveryMethod')
    EmailSettings = Shapes::StructureShape.new(name: 'EmailSettings')
    GatewayTimeoutException = Shapes::StructureShape.new(name: 'GatewayTimeoutException')
    GenerateBackendAPIModelsRequest = Shapes::StructureShape.new(name: 'GenerateBackendAPIModelsRequest')
    GenerateBackendAPIModelsResponse = Shapes::StructureShape.new(name: 'GenerateBackendAPIModelsResponse')
    GetBackendAPIModelsRequest = Shapes::StructureShape.new(name: 'GetBackendAPIModelsRequest')
    GetBackendAPIModelsResponse = Shapes::StructureShape.new(name: 'GetBackendAPIModelsResponse')
    GetBackendAPIRequest = Shapes::StructureShape.new(name: 'GetBackendAPIRequest')
    GetBackendAPIRespObj = Shapes::StructureShape.new(name: 'GetBackendAPIRespObj')
    GetBackendAPIResponse = Shapes::StructureShape.new(name: 'GetBackendAPIResponse')
    GetBackendAuthReqObj = Shapes::StructureShape.new(name: 'GetBackendAuthReqObj')
    GetBackendAuthRequest = Shapes::StructureShape.new(name: 'GetBackendAuthRequest')
    GetBackendAuthRespObj = Shapes::StructureShape.new(name: 'GetBackendAuthRespObj')
    GetBackendAuthResponse = Shapes::StructureShape.new(name: 'GetBackendAuthResponse')
    GetBackendJobRequest = Shapes::StructureShape.new(name: 'GetBackendJobRequest')
    GetBackendJobResponse = Shapes::StructureShape.new(name: 'GetBackendJobResponse')
    GetBackendReqObj = Shapes::StructureShape.new(name: 'GetBackendReqObj')
    GetBackendRequest = Shapes::StructureShape.new(name: 'GetBackendRequest')
    GetBackendRespObj = Shapes::StructureShape.new(name: 'GetBackendRespObj')
    GetBackendResponse = Shapes::StructureShape.new(name: 'GetBackendResponse')
    GetBackendStorageReqObj = Shapes::StructureShape.new(name: 'GetBackendStorageReqObj')
    GetBackendStorageRequest = Shapes::StructureShape.new(name: 'GetBackendStorageRequest')
    GetBackendStorageResourceConfig = Shapes::StructureShape.new(name: 'GetBackendStorageResourceConfig')
    GetBackendStorageRespObj = Shapes::StructureShape.new(name: 'GetBackendStorageRespObj')
    GetBackendStorageResponse = Shapes::StructureShape.new(name: 'GetBackendStorageResponse')
    GetTokenRequest = Shapes::StructureShape.new(name: 'GetTokenRequest')
    GetTokenRespObj = Shapes::StructureShape.new(name: 'GetTokenRespObj')
    GetTokenResponse = Shapes::StructureShape.new(name: 'GetTokenResponse')
    ImportBackendAuthReqObj = Shapes::StructureShape.new(name: 'ImportBackendAuthReqObj')
    ImportBackendAuthRequest = Shapes::StructureShape.new(name: 'ImportBackendAuthRequest')
    ImportBackendAuthResponse = Shapes::StructureShape.new(name: 'ImportBackendAuthResponse')
    ImportBackendStorageReqObj = Shapes::StructureShape.new(name: 'ImportBackendStorageReqObj')
    ImportBackendStorageRequest = Shapes::StructureShape.new(name: 'ImportBackendStorageRequest')
    ImportBackendStorageResponse = Shapes::StructureShape.new(name: 'ImportBackendStorageResponse')
    InternalServiceException = Shapes::StructureShape.new(name: 'InternalServiceException')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListBackendJobReqObj = Shapes::StructureShape.new(name: 'ListBackendJobReqObj')
    ListBackendJobRespObj = Shapes::StructureShape.new(name: 'ListBackendJobRespObj')
    ListBackendJobsRequest = Shapes::StructureShape.new(name: 'ListBackendJobsRequest')
    ListBackendJobsResponse = Shapes::StructureShape.new(name: 'ListBackendJobsResponse')
    ListOfAdditionalConstraintsElement = Shapes::ListShape.new(name: 'ListOfAdditionalConstraintsElement')
    ListOfAuthenticatedElement = Shapes::ListShape.new(name: 'ListOfAuthenticatedElement')
    ListOfBackendAPIAuthType = Shapes::ListShape.new(name: 'ListOfBackendAPIAuthType')
    ListOfBackendJobRespObj = Shapes::ListShape.new(name: 'ListOfBackendJobRespObj')
    ListOfMfaTypesElement = Shapes::ListShape.new(name: 'ListOfMfaTypesElement')
    ListOfOAuthScopesElement = Shapes::ListShape.new(name: 'ListOfOAuthScopesElement')
    ListOfRequiredSignUpAttributesElement = Shapes::ListShape.new(name: 'ListOfRequiredSignUpAttributesElement')
    ListOfS3BucketInfo = Shapes::ListShape.new(name: 'ListOfS3BucketInfo')
    ListOfUnAuthenticatedElement = Shapes::ListShape.new(name: 'ListOfUnAuthenticatedElement')
    ListOf__string = Shapes::ListShape.new(name: 'ListOf__string')
    ListS3BucketsReqObj = Shapes::StructureShape.new(name: 'ListS3BucketsReqObj')
    ListS3BucketsRequest = Shapes::StructureShape.new(name: 'ListS3BucketsRequest')
    ListS3BucketsRespObj = Shapes::StructureShape.new(name: 'ListS3BucketsRespObj')
    ListS3BucketsResponse = Shapes::StructureShape.new(name: 'ListS3BucketsResponse')
    LoginAuthConfigReqObj = Shapes::StructureShape.new(name: 'LoginAuthConfigReqObj')
    MFAMode = Shapes::StringShape.new(name: 'MFAMode')
    MfaTypesElement = Shapes::StringShape.new(name: 'MfaTypesElement')
    Mode = Shapes::StringShape.new(name: 'Mode')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    OAuthGrantType = Shapes::StringShape.new(name: 'OAuthGrantType')
    OAuthScopesElement = Shapes::StringShape.new(name: 'OAuthScopesElement')
    RemoveAllBackendsReqObj = Shapes::StructureShape.new(name: 'RemoveAllBackendsReqObj')
    RemoveAllBackendsRequest = Shapes::StructureShape.new(name: 'RemoveAllBackendsRequest')
    RemoveAllBackendsRespObj = Shapes::StructureShape.new(name: 'RemoveAllBackendsRespObj')
    RemoveAllBackendsResponse = Shapes::StructureShape.new(name: 'RemoveAllBackendsResponse')
    RemoveBackendAuthReqObj = Shapes::StructureShape.new(name: 'RemoveBackendAuthReqObj')
    RemoveBackendConfigRequest = Shapes::StructureShape.new(name: 'RemoveBackendConfigRequest')
    RemoveBackendConfigRespObj = Shapes::StructureShape.new(name: 'RemoveBackendConfigRespObj')
    RemoveBackendConfigResponse = Shapes::StructureShape.new(name: 'RemoveBackendConfigResponse')
    RemoveBackendStorageReqObj = Shapes::StructureShape.new(name: 'RemoveBackendStorageReqObj')
    RequiredSignUpAttributesElement = Shapes::StringShape.new(name: 'RequiredSignUpAttributesElement')
    ResolutionStrategy = Shapes::StringShape.new(name: 'ResolutionStrategy')
    ResourceConfig = Shapes::StructureShape.new(name: 'ResourceConfig')
    S3BucketInfo = Shapes::StructureShape.new(name: 'S3BucketInfo')
    Service = Shapes::StringShape.new(name: 'Service')
    ServiceName = Shapes::StringShape.new(name: 'ServiceName')
    Settings = Shapes::StructureShape.new(name: 'Settings')
    SignInMethod = Shapes::StringShape.new(name: 'SignInMethod')
    SmsSettings = Shapes::StructureShape.new(name: 'SmsSettings')
    SocialProviderSettings = Shapes::StructureShape.new(name: 'SocialProviderSettings')
    Status = Shapes::StringShape.new(name: 'Status')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    UnAuthenticatedElement = Shapes::StringShape.new(name: 'UnAuthenticatedElement')
    UpdateBackendAPIRequest = Shapes::StructureShape.new(name: 'UpdateBackendAPIRequest')
    UpdateBackendAPIResponse = Shapes::StructureShape.new(name: 'UpdateBackendAPIResponse')
    UpdateBackendAuthForgotPasswordConfig = Shapes::StructureShape.new(name: 'UpdateBackendAuthForgotPasswordConfig')
    UpdateBackendAuthIdentityPoolConfig = Shapes::StructureShape.new(name: 'UpdateBackendAuthIdentityPoolConfig')
    UpdateBackendAuthMFAConfig = Shapes::StructureShape.new(name: 'UpdateBackendAuthMFAConfig')
    UpdateBackendAuthOAuthConfig = Shapes::StructureShape.new(name: 'UpdateBackendAuthOAuthConfig')
    UpdateBackendAuthPasswordPolicyConfig = Shapes::StructureShape.new(name: 'UpdateBackendAuthPasswordPolicyConfig')
    UpdateBackendAuthReqObj = Shapes::StructureShape.new(name: 'UpdateBackendAuthReqObj')
    UpdateBackendAuthRequest = Shapes::StructureShape.new(name: 'UpdateBackendAuthRequest')
    UpdateBackendAuthResourceConfig = Shapes::StructureShape.new(name: 'UpdateBackendAuthResourceConfig')
    UpdateBackendAuthResponse = Shapes::StructureShape.new(name: 'UpdateBackendAuthResponse')
    UpdateBackendAuthUserPoolConfig = Shapes::StructureShape.new(name: 'UpdateBackendAuthUserPoolConfig')
    UpdateBackendAuthVerificationMessageConfig = Shapes::StructureShape.new(name: 'UpdateBackendAuthVerificationMessageConfig')
    UpdateBackendConfigReqObj = Shapes::StructureShape.new(name: 'UpdateBackendConfigReqObj')
    UpdateBackendConfigRequest = Shapes::StructureShape.new(name: 'UpdateBackendConfigRequest')
    UpdateBackendConfigResponse = Shapes::StructureShape.new(name: 'UpdateBackendConfigResponse')
    UpdateBackendJobRequest = Shapes::StructureShape.new(name: 'UpdateBackendJobRequest')
    UpdateBackendJobResponse = Shapes::StructureShape.new(name: 'UpdateBackendJobResponse')
    UpdateBackendStorageReqObj = Shapes::StructureShape.new(name: 'UpdateBackendStorageReqObj')
    UpdateBackendStorageRequest = Shapes::StructureShape.new(name: 'UpdateBackendStorageRequest')
    UpdateBackendStorageResourceConfig = Shapes::StructureShape.new(name: 'UpdateBackendStorageResourceConfig')
    UpdateBackendStorageResponse = Shapes::StructureShape.new(name: 'UpdateBackendStorageResponse')
    __boolean = Shapes::BooleanShape.new(name: '__boolean')
    __double = Shapes::FloatShape.new(name: '__double')
    __integer = Shapes::IntegerShape.new(name: '__integer')
    __integerMin1Max25 = Shapes::IntegerShape.new(name: '__integerMin1Max25')
    __long = Shapes::IntegerShape.new(name: '__long')
    __string = Shapes::StringShape.new(name: '__string')
    __timestampIso8601 = Shapes::TimestampShape.new(name: '__timestampIso8601', timestampFormat: "iso8601")
    __timestampUnix = Shapes::TimestampShape.new(name: '__timestampUnix', timestampFormat: "unixTimestamp")

    BackendAPIAppSyncAuthSettings.add_member(:cognito_user_pool_id, Shapes::ShapeRef.new(shape: __string, location_name: "cognitoUserPoolId"))
    BackendAPIAppSyncAuthSettings.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    BackendAPIAppSyncAuthSettings.add_member(:expiration_time, Shapes::ShapeRef.new(shape: __double, location_name: "expirationTime"))
    BackendAPIAppSyncAuthSettings.add_member(:open_id_auth_ttl, Shapes::ShapeRef.new(shape: __string, location_name: "openIDAuthTTL"))
    BackendAPIAppSyncAuthSettings.add_member(:open_id_client_id, Shapes::ShapeRef.new(shape: __string, location_name: "openIDClientId"))
    BackendAPIAppSyncAuthSettings.add_member(:open_id_iat_ttl, Shapes::ShapeRef.new(shape: __string, location_name: "openIDIatTTL"))
    BackendAPIAppSyncAuthSettings.add_member(:open_id_issue_url, Shapes::ShapeRef.new(shape: __string, location_name: "openIDIssueURL"))
    BackendAPIAppSyncAuthSettings.add_member(:open_id_provider_name, Shapes::ShapeRef.new(shape: __string, location_name: "openIDProviderName"))
    BackendAPIAppSyncAuthSettings.struct_class = Types::BackendAPIAppSyncAuthSettings

    BackendAPIAuthType.add_member(:mode, Shapes::ShapeRef.new(shape: Mode, location_name: "mode"))
    BackendAPIAuthType.add_member(:settings, Shapes::ShapeRef.new(shape: BackendAPIAppSyncAuthSettings, location_name: "settings"))
    BackendAPIAuthType.struct_class = Types::BackendAPIAuthType

    BackendAPICodegenReqObj.add_member(:resource_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "resourceName"))
    BackendAPICodegenReqObj.struct_class = Types::BackendAPICodegenReqObj

    BackendAPICodegenRespObj.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "appId"))
    BackendAPICodegenRespObj.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "backendEnvironmentName"))
    BackendAPICodegenRespObj.add_member(:error, Shapes::ShapeRef.new(shape: __string, location_name: "error"))
    BackendAPICodegenRespObj.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, location_name: "jobId"))
    BackendAPICodegenRespObj.add_member(:operation, Shapes::ShapeRef.new(shape: __string, location_name: "operation"))
    BackendAPICodegenRespObj.add_member(:status, Shapes::ShapeRef.new(shape: __string, location_name: "status"))
    BackendAPICodegenRespObj.struct_class = Types::BackendAPICodegenRespObj

    BackendAPIConflictResolution.add_member(:resolution_strategy, Shapes::ShapeRef.new(shape: ResolutionStrategy, location_name: "resolutionStrategy"))
    BackendAPIConflictResolution.struct_class = Types::BackendAPIConflictResolution

    BackendAPIReqObj.add_member(:resource_config, Shapes::ShapeRef.new(shape: BackendAPIResourceConfig, location_name: "resourceConfig"))
    BackendAPIReqObj.add_member(:resource_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "resourceName"))
    BackendAPIReqObj.struct_class = Types::BackendAPIReqObj

    BackendAPIResourceConfig.add_member(:additional_auth_types, Shapes::ShapeRef.new(shape: ListOfBackendAPIAuthType, location_name: "additionalAuthTypes"))
    BackendAPIResourceConfig.add_member(:api_name, Shapes::ShapeRef.new(shape: __string, location_name: "apiName"))
    BackendAPIResourceConfig.add_member(:conflict_resolution, Shapes::ShapeRef.new(shape: BackendAPIConflictResolution, location_name: "conflictResolution"))
    BackendAPIResourceConfig.add_member(:default_auth_type, Shapes::ShapeRef.new(shape: BackendAPIAuthType, location_name: "defaultAuthType"))
    BackendAPIResourceConfig.add_member(:service, Shapes::ShapeRef.new(shape: __string, location_name: "service"))
    BackendAPIResourceConfig.add_member(:transform_schema, Shapes::ShapeRef.new(shape: __string, location_name: "transformSchema"))
    BackendAPIResourceConfig.struct_class = Types::BackendAPIResourceConfig

    BackendAPIRespObj.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "appId"))
    BackendAPIRespObj.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "backendEnvironmentName"))
    BackendAPIRespObj.add_member(:error, Shapes::ShapeRef.new(shape: __string, location_name: "error"))
    BackendAPIRespObj.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, location_name: "jobId"))
    BackendAPIRespObj.add_member(:operation, Shapes::ShapeRef.new(shape: __string, location_name: "operation"))
    BackendAPIRespObj.add_member(:status, Shapes::ShapeRef.new(shape: __string, location_name: "status"))
    BackendAPIRespObj.struct_class = Types::BackendAPIRespObj

    BackendAuthAppleProviderConfig.add_member(:client_id, Shapes::ShapeRef.new(shape: __string, location_name: "client_id"))
    BackendAuthAppleProviderConfig.add_member(:key_id, Shapes::ShapeRef.new(shape: __string, location_name: "key_id"))
    BackendAuthAppleProviderConfig.add_member(:private_key, Shapes::ShapeRef.new(shape: __string, location_name: "private_key"))
    BackendAuthAppleProviderConfig.add_member(:team_id, Shapes::ShapeRef.new(shape: __string, location_name: "team_id"))
    BackendAuthAppleProviderConfig.struct_class = Types::BackendAuthAppleProviderConfig

    BackendAuthRespObj.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "appId"))
    BackendAuthRespObj.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "backendEnvironmentName"))
    BackendAuthRespObj.add_member(:error, Shapes::ShapeRef.new(shape: __string, location_name: "error"))
    BackendAuthRespObj.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, location_name: "jobId"))
    BackendAuthRespObj.add_member(:operation, Shapes::ShapeRef.new(shape: __string, location_name: "operation"))
    BackendAuthRespObj.add_member(:status, Shapes::ShapeRef.new(shape: __string, location_name: "status"))
    BackendAuthRespObj.struct_class = Types::BackendAuthRespObj

    BackendAuthSocialProviderConfig.add_member(:client_id, Shapes::ShapeRef.new(shape: __string, location_name: "client_id"))
    BackendAuthSocialProviderConfig.add_member(:client_secret, Shapes::ShapeRef.new(shape: __string, location_name: "client_secret"))
    BackendAuthSocialProviderConfig.struct_class = Types::BackendAuthSocialProviderConfig

    BackendConfigRespObj.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, location_name: "appId"))
    BackendConfigRespObj.add_member(:backend_manager_app_id, Shapes::ShapeRef.new(shape: __string, location_name: "backendManagerAppId"))
    BackendConfigRespObj.add_member(:error, Shapes::ShapeRef.new(shape: __string, location_name: "error"))
    BackendConfigRespObj.add_member(:login_auth_config, Shapes::ShapeRef.new(shape: LoginAuthConfigReqObj, location_name: "loginAuthConfig"))
    BackendConfigRespObj.struct_class = Types::BackendConfigRespObj

    BackendJobReqObj.add_member(:operation, Shapes::ShapeRef.new(shape: __string, location_name: "operation"))
    BackendJobReqObj.add_member(:status, Shapes::ShapeRef.new(shape: __string, location_name: "status"))
    BackendJobReqObj.struct_class = Types::BackendJobReqObj

    BackendJobRespObj.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "appId"))
    BackendJobRespObj.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "backendEnvironmentName"))
    BackendJobRespObj.add_member(:create_time, Shapes::ShapeRef.new(shape: __string, location_name: "createTime"))
    BackendJobRespObj.add_member(:error, Shapes::ShapeRef.new(shape: __string, location_name: "error"))
    BackendJobRespObj.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, location_name: "jobId"))
    BackendJobRespObj.add_member(:operation, Shapes::ShapeRef.new(shape: __string, location_name: "operation"))
    BackendJobRespObj.add_member(:status, Shapes::ShapeRef.new(shape: __string, location_name: "status"))
    BackendJobRespObj.add_member(:update_time, Shapes::ShapeRef.new(shape: __string, location_name: "updateTime"))
    BackendJobRespObj.struct_class = Types::BackendJobRespObj

    BackendStoragePermissions.add_member(:authenticated, Shapes::ShapeRef.new(shape: ListOfAuthenticatedElement, required: true, location_name: "authenticated"))
    BackendStoragePermissions.add_member(:un_authenticated, Shapes::ShapeRef.new(shape: ListOfUnAuthenticatedElement, location_name: "unAuthenticated"))
    BackendStoragePermissions.struct_class = Types::BackendStoragePermissions

    BackendStorageRespObj.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "appId"))
    BackendStorageRespObj.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "backendEnvironmentName"))
    BackendStorageRespObj.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "jobId"))
    BackendStorageRespObj.add_member(:status, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "status"))
    BackendStorageRespObj.struct_class = Types::BackendStorageRespObj

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    BadRequestException.struct_class = Types::BadRequestException

    CloneBackendReqObj.add_member(:target_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "targetEnvironmentName"))
    CloneBackendReqObj.struct_class = Types::CloneBackendReqObj

    CloneBackendRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "appId"))
    CloneBackendRequest.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "backendEnvironmentName"))
    CloneBackendRequest.add_member(:target_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "targetEnvironmentName"))
    CloneBackendRequest.struct_class = Types::CloneBackendRequest

    CloneBackendRespObj.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "appId"))
    CloneBackendRespObj.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "backendEnvironmentName"))
    CloneBackendRespObj.add_member(:error, Shapes::ShapeRef.new(shape: __string, location_name: "error"))
    CloneBackendRespObj.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, location_name: "jobId"))
    CloneBackendRespObj.add_member(:operation, Shapes::ShapeRef.new(shape: __string, location_name: "operation"))
    CloneBackendRespObj.add_member(:status, Shapes::ShapeRef.new(shape: __string, location_name: "status"))
    CloneBackendRespObj.struct_class = Types::CloneBackendRespObj

    CloneBackendResponse.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, location_name: "appId"))
    CloneBackendResponse.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, location_name: "backendEnvironmentName"))
    CloneBackendResponse.add_member(:error, Shapes::ShapeRef.new(shape: __string, location_name: "error"))
    CloneBackendResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, location_name: "jobId"))
    CloneBackendResponse.add_member(:operation, Shapes::ShapeRef.new(shape: __string, location_name: "operation"))
    CloneBackendResponse.add_member(:status, Shapes::ShapeRef.new(shape: __string, location_name: "status"))
    CloneBackendResponse.struct_class = Types::CloneBackendResponse

    CreateBackendAPIReqObj.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "backendEnvironmentName"))
    CreateBackendAPIReqObj.add_member(:resource_config, Shapes::ShapeRef.new(shape: BackendAPIResourceConfig, required: true, location_name: "resourceConfig"))
    CreateBackendAPIReqObj.add_member(:resource_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "resourceName"))
    CreateBackendAPIReqObj.struct_class = Types::CreateBackendAPIReqObj

    CreateBackendAPIRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "appId"))
    CreateBackendAPIRequest.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "backendEnvironmentName"))
    CreateBackendAPIRequest.add_member(:resource_config, Shapes::ShapeRef.new(shape: BackendAPIResourceConfig, required: true, location_name: "resourceConfig"))
    CreateBackendAPIRequest.add_member(:resource_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "resourceName"))
    CreateBackendAPIRequest.struct_class = Types::CreateBackendAPIRequest

    CreateBackendAPIResponse.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, location_name: "appId"))
    CreateBackendAPIResponse.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, location_name: "backendEnvironmentName"))
    CreateBackendAPIResponse.add_member(:error, Shapes::ShapeRef.new(shape: __string, location_name: "error"))
    CreateBackendAPIResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, location_name: "jobId"))
    CreateBackendAPIResponse.add_member(:operation, Shapes::ShapeRef.new(shape: __string, location_name: "operation"))
    CreateBackendAPIResponse.add_member(:status, Shapes::ShapeRef.new(shape: __string, location_name: "status"))
    CreateBackendAPIResponse.struct_class = Types::CreateBackendAPIResponse

    CreateBackendAuthForgotPasswordConfig.add_member(:delivery_method, Shapes::ShapeRef.new(shape: DeliveryMethod, required: true, location_name: "deliveryMethod"))
    CreateBackendAuthForgotPasswordConfig.add_member(:email_settings, Shapes::ShapeRef.new(shape: EmailSettings, location_name: "emailSettings"))
    CreateBackendAuthForgotPasswordConfig.add_member(:sms_settings, Shapes::ShapeRef.new(shape: SmsSettings, location_name: "smsSettings"))
    CreateBackendAuthForgotPasswordConfig.struct_class = Types::CreateBackendAuthForgotPasswordConfig

    CreateBackendAuthIdentityPoolConfig.add_member(:identity_pool_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "identityPoolName"))
    CreateBackendAuthIdentityPoolConfig.add_member(:unauthenticated_login, Shapes::ShapeRef.new(shape: __boolean, required: true, location_name: "unauthenticatedLogin"))
    CreateBackendAuthIdentityPoolConfig.struct_class = Types::CreateBackendAuthIdentityPoolConfig

    CreateBackendAuthMFAConfig.add_member(:mfa_mode, Shapes::ShapeRef.new(shape: MFAMode, required: true, location_name: "MFAMode"))
    CreateBackendAuthMFAConfig.add_member(:settings, Shapes::ShapeRef.new(shape: Settings, location_name: "settings"))
    CreateBackendAuthMFAConfig.struct_class = Types::CreateBackendAuthMFAConfig

    CreateBackendAuthOAuthConfig.add_member(:domain_prefix, Shapes::ShapeRef.new(shape: __string, location_name: "domainPrefix"))
    CreateBackendAuthOAuthConfig.add_member(:o_auth_grant_type, Shapes::ShapeRef.new(shape: OAuthGrantType, required: true, location_name: "oAuthGrantType"))
    CreateBackendAuthOAuthConfig.add_member(:o_auth_scopes, Shapes::ShapeRef.new(shape: ListOfOAuthScopesElement, required: true, location_name: "oAuthScopes"))
    CreateBackendAuthOAuthConfig.add_member(:redirect_sign_in_ur_is, Shapes::ShapeRef.new(shape: ListOf__string, required: true, location_name: "redirectSignInURIs"))
    CreateBackendAuthOAuthConfig.add_member(:redirect_sign_out_ur_is, Shapes::ShapeRef.new(shape: ListOf__string, required: true, location_name: "redirectSignOutURIs"))
    CreateBackendAuthOAuthConfig.add_member(:social_provider_settings, Shapes::ShapeRef.new(shape: SocialProviderSettings, location_name: "socialProviderSettings"))
    CreateBackendAuthOAuthConfig.struct_class = Types::CreateBackendAuthOAuthConfig

    CreateBackendAuthPasswordPolicyConfig.add_member(:additional_constraints, Shapes::ShapeRef.new(shape: ListOfAdditionalConstraintsElement, location_name: "additionalConstraints"))
    CreateBackendAuthPasswordPolicyConfig.add_member(:minimum_length, Shapes::ShapeRef.new(shape: __double, required: true, location_name: "minimumLength"))
    CreateBackendAuthPasswordPolicyConfig.struct_class = Types::CreateBackendAuthPasswordPolicyConfig

    CreateBackendAuthReqObj.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "backendEnvironmentName"))
    CreateBackendAuthReqObj.add_member(:resource_config, Shapes::ShapeRef.new(shape: CreateBackendAuthResourceConfig, required: true, location_name: "resourceConfig"))
    CreateBackendAuthReqObj.add_member(:resource_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "resourceName"))
    CreateBackendAuthReqObj.struct_class = Types::CreateBackendAuthReqObj

    CreateBackendAuthRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "appId"))
    CreateBackendAuthRequest.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "backendEnvironmentName"))
    CreateBackendAuthRequest.add_member(:resource_config, Shapes::ShapeRef.new(shape: CreateBackendAuthResourceConfig, required: true, location_name: "resourceConfig"))
    CreateBackendAuthRequest.add_member(:resource_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "resourceName"))
    CreateBackendAuthRequest.struct_class = Types::CreateBackendAuthRequest

    CreateBackendAuthResourceConfig.add_member(:auth_resources, Shapes::ShapeRef.new(shape: AuthResources, required: true, location_name: "authResources"))
    CreateBackendAuthResourceConfig.add_member(:identity_pool_configs, Shapes::ShapeRef.new(shape: CreateBackendAuthIdentityPoolConfig, location_name: "identityPoolConfigs"))
    CreateBackendAuthResourceConfig.add_member(:service, Shapes::ShapeRef.new(shape: Service, required: true, location_name: "service"))
    CreateBackendAuthResourceConfig.add_member(:user_pool_configs, Shapes::ShapeRef.new(shape: CreateBackendAuthUserPoolConfig, required: true, location_name: "userPoolConfigs"))
    CreateBackendAuthResourceConfig.struct_class = Types::CreateBackendAuthResourceConfig

    CreateBackendAuthResponse.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, location_name: "appId"))
    CreateBackendAuthResponse.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, location_name: "backendEnvironmentName"))
    CreateBackendAuthResponse.add_member(:error, Shapes::ShapeRef.new(shape: __string, location_name: "error"))
    CreateBackendAuthResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, location_name: "jobId"))
    CreateBackendAuthResponse.add_member(:operation, Shapes::ShapeRef.new(shape: __string, location_name: "operation"))
    CreateBackendAuthResponse.add_member(:status, Shapes::ShapeRef.new(shape: __string, location_name: "status"))
    CreateBackendAuthResponse.struct_class = Types::CreateBackendAuthResponse

    CreateBackendAuthUserPoolConfig.add_member(:forgot_password, Shapes::ShapeRef.new(shape: CreateBackendAuthForgotPasswordConfig, location_name: "forgotPassword"))
    CreateBackendAuthUserPoolConfig.add_member(:mfa, Shapes::ShapeRef.new(shape: CreateBackendAuthMFAConfig, location_name: "mfa"))
    CreateBackendAuthUserPoolConfig.add_member(:o_auth, Shapes::ShapeRef.new(shape: CreateBackendAuthOAuthConfig, location_name: "oAuth"))
    CreateBackendAuthUserPoolConfig.add_member(:password_policy, Shapes::ShapeRef.new(shape: CreateBackendAuthPasswordPolicyConfig, location_name: "passwordPolicy"))
    CreateBackendAuthUserPoolConfig.add_member(:required_sign_up_attributes, Shapes::ShapeRef.new(shape: ListOfRequiredSignUpAttributesElement, required: true, location_name: "requiredSignUpAttributes"))
    CreateBackendAuthUserPoolConfig.add_member(:sign_in_method, Shapes::ShapeRef.new(shape: SignInMethod, required: true, location_name: "signInMethod"))
    CreateBackendAuthUserPoolConfig.add_member(:user_pool_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "userPoolName"))
    CreateBackendAuthUserPoolConfig.add_member(:verification_message, Shapes::ShapeRef.new(shape: CreateBackendAuthVerificationMessageConfig, location_name: "verificationMessage"))
    CreateBackendAuthUserPoolConfig.struct_class = Types::CreateBackendAuthUserPoolConfig

    CreateBackendAuthVerificationMessageConfig.add_member(:delivery_method, Shapes::ShapeRef.new(shape: DeliveryMethod, required: true, location_name: "deliveryMethod"))
    CreateBackendAuthVerificationMessageConfig.add_member(:email_settings, Shapes::ShapeRef.new(shape: EmailSettings, location_name: "emailSettings"))
    CreateBackendAuthVerificationMessageConfig.add_member(:sms_settings, Shapes::ShapeRef.new(shape: SmsSettings, location_name: "smsSettings"))
    CreateBackendAuthVerificationMessageConfig.struct_class = Types::CreateBackendAuthVerificationMessageConfig

    CreateBackendConfigReqObj.add_member(:backend_manager_app_id, Shapes::ShapeRef.new(shape: __string, location_name: "backendManagerAppId"))
    CreateBackendConfigReqObj.struct_class = Types::CreateBackendConfigReqObj

    CreateBackendConfigRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "appId"))
    CreateBackendConfigRequest.add_member(:backend_manager_app_id, Shapes::ShapeRef.new(shape: __string, location_name: "backendManagerAppId"))
    CreateBackendConfigRequest.struct_class = Types::CreateBackendConfigRequest

    CreateBackendConfigRespObj.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "appId"))
    CreateBackendConfigRespObj.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, location_name: "backendEnvironmentName"))
    CreateBackendConfigRespObj.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, location_name: "jobId"))
    CreateBackendConfigRespObj.add_member(:status, Shapes::ShapeRef.new(shape: __string, location_name: "status"))
    CreateBackendConfigRespObj.struct_class = Types::CreateBackendConfigRespObj

    CreateBackendConfigResponse.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, location_name: "appId"))
    CreateBackendConfigResponse.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, location_name: "backendEnvironmentName"))
    CreateBackendConfigResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, location_name: "jobId"))
    CreateBackendConfigResponse.add_member(:status, Shapes::ShapeRef.new(shape: __string, location_name: "status"))
    CreateBackendConfigResponse.struct_class = Types::CreateBackendConfigResponse

    CreateBackendReqObj.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "appId"))
    CreateBackendReqObj.add_member(:app_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "appName"))
    CreateBackendReqObj.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "backendEnvironmentName"))
    CreateBackendReqObj.add_member(:resource_config, Shapes::ShapeRef.new(shape: ResourceConfig, location_name: "resourceConfig"))
    CreateBackendReqObj.add_member(:resource_name, Shapes::ShapeRef.new(shape: __string, location_name: "resourceName"))
    CreateBackendReqObj.struct_class = Types::CreateBackendReqObj

    CreateBackendRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "appId"))
    CreateBackendRequest.add_member(:app_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "appName"))
    CreateBackendRequest.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "backendEnvironmentName"))
    CreateBackendRequest.add_member(:resource_config, Shapes::ShapeRef.new(shape: ResourceConfig, location_name: "resourceConfig"))
    CreateBackendRequest.add_member(:resource_name, Shapes::ShapeRef.new(shape: __string, location_name: "resourceName"))
    CreateBackendRequest.struct_class = Types::CreateBackendRequest

    CreateBackendRespObj.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "appId"))
    CreateBackendRespObj.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "backendEnvironmentName"))
    CreateBackendRespObj.add_member(:error, Shapes::ShapeRef.new(shape: __string, location_name: "error"))
    CreateBackendRespObj.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, location_name: "jobId"))
    CreateBackendRespObj.add_member(:operation, Shapes::ShapeRef.new(shape: __string, location_name: "operation"))
    CreateBackendRespObj.add_member(:status, Shapes::ShapeRef.new(shape: __string, location_name: "status"))
    CreateBackendRespObj.struct_class = Types::CreateBackendRespObj

    CreateBackendResponse.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, location_name: "appId"))
    CreateBackendResponse.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, location_name: "backendEnvironmentName"))
    CreateBackendResponse.add_member(:error, Shapes::ShapeRef.new(shape: __string, location_name: "error"))
    CreateBackendResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, location_name: "jobId"))
    CreateBackendResponse.add_member(:operation, Shapes::ShapeRef.new(shape: __string, location_name: "operation"))
    CreateBackendResponse.add_member(:status, Shapes::ShapeRef.new(shape: __string, location_name: "status"))
    CreateBackendResponse.struct_class = Types::CreateBackendResponse

    CreateBackendStorageReqObj.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "backendEnvironmentName"))
    CreateBackendStorageReqObj.add_member(:resource_config, Shapes::ShapeRef.new(shape: CreateBackendStorageResourceConfig, required: true, location_name: "resourceConfig"))
    CreateBackendStorageReqObj.add_member(:resource_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "resourceName"))
    CreateBackendStorageReqObj.struct_class = Types::CreateBackendStorageReqObj

    CreateBackendStorageRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "appId"))
    CreateBackendStorageRequest.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "backendEnvironmentName"))
    CreateBackendStorageRequest.add_member(:resource_config, Shapes::ShapeRef.new(shape: CreateBackendStorageResourceConfig, required: true, location_name: "resourceConfig"))
    CreateBackendStorageRequest.add_member(:resource_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "resourceName"))
    CreateBackendStorageRequest.struct_class = Types::CreateBackendStorageRequest

    CreateBackendStorageResourceConfig.add_member(:bucket_name, Shapes::ShapeRef.new(shape: __string, location_name: "bucketName"))
    CreateBackendStorageResourceConfig.add_member(:permissions, Shapes::ShapeRef.new(shape: BackendStoragePermissions, required: true, location_name: "permissions"))
    CreateBackendStorageResourceConfig.add_member(:service_name, Shapes::ShapeRef.new(shape: ServiceName, required: true, location_name: "serviceName"))
    CreateBackendStorageResourceConfig.struct_class = Types::CreateBackendStorageResourceConfig

    CreateBackendStorageResponse.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, location_name: "appId"))
    CreateBackendStorageResponse.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, location_name: "backendEnvironmentName"))
    CreateBackendStorageResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, location_name: "jobId"))
    CreateBackendStorageResponse.add_member(:status, Shapes::ShapeRef.new(shape: __string, location_name: "status"))
    CreateBackendStorageResponse.struct_class = Types::CreateBackendStorageResponse

    CreateTokenRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "appId"))
    CreateTokenRequest.struct_class = Types::CreateTokenRequest

    CreateTokenRespObj.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "appId"))
    CreateTokenRespObj.add_member(:challenge_code, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "challengeCode"))
    CreateTokenRespObj.add_member(:session_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "sessionId"))
    CreateTokenRespObj.add_member(:ttl, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ttl"))
    CreateTokenRespObj.struct_class = Types::CreateTokenRespObj

    CreateTokenResponse.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, location_name: "appId"))
    CreateTokenResponse.add_member(:challenge_code, Shapes::ShapeRef.new(shape: __string, location_name: "challengeCode"))
    CreateTokenResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: __string, location_name: "sessionId"))
    CreateTokenResponse.add_member(:ttl, Shapes::ShapeRef.new(shape: __string, location_name: "ttl"))
    CreateTokenResponse.struct_class = Types::CreateTokenResponse

    DeleteBackendAPIRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "appId"))
    DeleteBackendAPIRequest.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "backendEnvironmentName"))
    DeleteBackendAPIRequest.add_member(:resource_config, Shapes::ShapeRef.new(shape: BackendAPIResourceConfig, location_name: "resourceConfig"))
    DeleteBackendAPIRequest.add_member(:resource_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "resourceName"))
    DeleteBackendAPIRequest.struct_class = Types::DeleteBackendAPIRequest

    DeleteBackendAPIResponse.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, location_name: "appId"))
    DeleteBackendAPIResponse.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, location_name: "backendEnvironmentName"))
    DeleteBackendAPIResponse.add_member(:error, Shapes::ShapeRef.new(shape: __string, location_name: "error"))
    DeleteBackendAPIResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, location_name: "jobId"))
    DeleteBackendAPIResponse.add_member(:operation, Shapes::ShapeRef.new(shape: __string, location_name: "operation"))
    DeleteBackendAPIResponse.add_member(:status, Shapes::ShapeRef.new(shape: __string, location_name: "status"))
    DeleteBackendAPIResponse.struct_class = Types::DeleteBackendAPIResponse

    DeleteBackendAuthRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "appId"))
    DeleteBackendAuthRequest.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "backendEnvironmentName"))
    DeleteBackendAuthRequest.add_member(:resource_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "resourceName"))
    DeleteBackendAuthRequest.struct_class = Types::DeleteBackendAuthRequest

    DeleteBackendAuthResponse.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, location_name: "appId"))
    DeleteBackendAuthResponse.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, location_name: "backendEnvironmentName"))
    DeleteBackendAuthResponse.add_member(:error, Shapes::ShapeRef.new(shape: __string, location_name: "error"))
    DeleteBackendAuthResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, location_name: "jobId"))
    DeleteBackendAuthResponse.add_member(:operation, Shapes::ShapeRef.new(shape: __string, location_name: "operation"))
    DeleteBackendAuthResponse.add_member(:status, Shapes::ShapeRef.new(shape: __string, location_name: "status"))
    DeleteBackendAuthResponse.struct_class = Types::DeleteBackendAuthResponse

    DeleteBackendRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "appId"))
    DeleteBackendRequest.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "backendEnvironmentName"))
    DeleteBackendRequest.struct_class = Types::DeleteBackendRequest

    DeleteBackendRespObj.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "appId"))
    DeleteBackendRespObj.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "backendEnvironmentName"))
    DeleteBackendRespObj.add_member(:error, Shapes::ShapeRef.new(shape: __string, location_name: "error"))
    DeleteBackendRespObj.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, location_name: "jobId"))
    DeleteBackendRespObj.add_member(:operation, Shapes::ShapeRef.new(shape: __string, location_name: "operation"))
    DeleteBackendRespObj.add_member(:status, Shapes::ShapeRef.new(shape: __string, location_name: "status"))
    DeleteBackendRespObj.struct_class = Types::DeleteBackendRespObj

    DeleteBackendResponse.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, location_name: "appId"))
    DeleteBackendResponse.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, location_name: "backendEnvironmentName"))
    DeleteBackendResponse.add_member(:error, Shapes::ShapeRef.new(shape: __string, location_name: "error"))
    DeleteBackendResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, location_name: "jobId"))
    DeleteBackendResponse.add_member(:operation, Shapes::ShapeRef.new(shape: __string, location_name: "operation"))
    DeleteBackendResponse.add_member(:status, Shapes::ShapeRef.new(shape: __string, location_name: "status"))
    DeleteBackendResponse.struct_class = Types::DeleteBackendResponse

    DeleteBackendStorageRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "appId"))
    DeleteBackendStorageRequest.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "backendEnvironmentName"))
    DeleteBackendStorageRequest.add_member(:resource_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "resourceName"))
    DeleteBackendStorageRequest.add_member(:service_name, Shapes::ShapeRef.new(shape: ServiceName, required: true, location_name: "serviceName"))
    DeleteBackendStorageRequest.struct_class = Types::DeleteBackendStorageRequest

    DeleteBackendStorageResponse.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, location_name: "appId"))
    DeleteBackendStorageResponse.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, location_name: "backendEnvironmentName"))
    DeleteBackendStorageResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, location_name: "jobId"))
    DeleteBackendStorageResponse.add_member(:status, Shapes::ShapeRef.new(shape: __string, location_name: "status"))
    DeleteBackendStorageResponse.struct_class = Types::DeleteBackendStorageResponse

    DeleteTokenRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "appId"))
    DeleteTokenRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "sessionId"))
    DeleteTokenRequest.struct_class = Types::DeleteTokenRequest

    DeleteTokenRespObj.add_member(:is_success, Shapes::ShapeRef.new(shape: __boolean, required: true, location_name: "isSuccess"))
    DeleteTokenRespObj.struct_class = Types::DeleteTokenRespObj

    DeleteTokenResponse.add_member(:is_success, Shapes::ShapeRef.new(shape: __boolean, location_name: "isSuccess"))
    DeleteTokenResponse.struct_class = Types::DeleteTokenResponse

    EmailSettings.add_member(:email_message, Shapes::ShapeRef.new(shape: __string, location_name: "emailMessage"))
    EmailSettings.add_member(:email_subject, Shapes::ShapeRef.new(shape: __string, location_name: "emailSubject"))
    EmailSettings.struct_class = Types::EmailSettings

    GatewayTimeoutException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    GatewayTimeoutException.struct_class = Types::GatewayTimeoutException

    GenerateBackendAPIModelsRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "appId"))
    GenerateBackendAPIModelsRequest.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "backendEnvironmentName"))
    GenerateBackendAPIModelsRequest.add_member(:resource_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "resourceName"))
    GenerateBackendAPIModelsRequest.struct_class = Types::GenerateBackendAPIModelsRequest

    GenerateBackendAPIModelsResponse.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, location_name: "appId"))
    GenerateBackendAPIModelsResponse.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, location_name: "backendEnvironmentName"))
    GenerateBackendAPIModelsResponse.add_member(:error, Shapes::ShapeRef.new(shape: __string, location_name: "error"))
    GenerateBackendAPIModelsResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, location_name: "jobId"))
    GenerateBackendAPIModelsResponse.add_member(:operation, Shapes::ShapeRef.new(shape: __string, location_name: "operation"))
    GenerateBackendAPIModelsResponse.add_member(:status, Shapes::ShapeRef.new(shape: __string, location_name: "status"))
    GenerateBackendAPIModelsResponse.struct_class = Types::GenerateBackendAPIModelsResponse

    GetBackendAPIModelsRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "appId"))
    GetBackendAPIModelsRequest.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "backendEnvironmentName"))
    GetBackendAPIModelsRequest.add_member(:resource_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "resourceName"))
    GetBackendAPIModelsRequest.struct_class = Types::GetBackendAPIModelsRequest

    GetBackendAPIModelsResponse.add_member(:models, Shapes::ShapeRef.new(shape: __string, location_name: "models"))
    GetBackendAPIModelsResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    GetBackendAPIModelsResponse.add_member(:model_introspection_schema, Shapes::ShapeRef.new(shape: __string, location_name: "modelIntrospectionSchema"))
    GetBackendAPIModelsResponse.struct_class = Types::GetBackendAPIModelsResponse

    GetBackendAPIRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "appId"))
    GetBackendAPIRequest.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "backendEnvironmentName"))
    GetBackendAPIRequest.add_member(:resource_config, Shapes::ShapeRef.new(shape: BackendAPIResourceConfig, location_name: "resourceConfig"))
    GetBackendAPIRequest.add_member(:resource_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "resourceName"))
    GetBackendAPIRequest.struct_class = Types::GetBackendAPIRequest

    GetBackendAPIRespObj.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "appId"))
    GetBackendAPIRespObj.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "backendEnvironmentName"))
    GetBackendAPIRespObj.add_member(:error, Shapes::ShapeRef.new(shape: __string, location_name: "error"))
    GetBackendAPIRespObj.add_member(:resource_config, Shapes::ShapeRef.new(shape: BackendAPIResourceConfig, location_name: "resourceConfig"))
    GetBackendAPIRespObj.add_member(:resource_name, Shapes::ShapeRef.new(shape: __string, location_name: "resourceName"))
    GetBackendAPIRespObj.struct_class = Types::GetBackendAPIRespObj

    GetBackendAPIResponse.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, location_name: "appId"))
    GetBackendAPIResponse.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, location_name: "backendEnvironmentName"))
    GetBackendAPIResponse.add_member(:error, Shapes::ShapeRef.new(shape: __string, location_name: "error"))
    GetBackendAPIResponse.add_member(:resource_config, Shapes::ShapeRef.new(shape: BackendAPIResourceConfig, location_name: "resourceConfig"))
    GetBackendAPIResponse.add_member(:resource_name, Shapes::ShapeRef.new(shape: __string, location_name: "resourceName"))
    GetBackendAPIResponse.struct_class = Types::GetBackendAPIResponse

    GetBackendAuthReqObj.add_member(:resource_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "resourceName"))
    GetBackendAuthReqObj.struct_class = Types::GetBackendAuthReqObj

    GetBackendAuthRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "appId"))
    GetBackendAuthRequest.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "backendEnvironmentName"))
    GetBackendAuthRequest.add_member(:resource_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "resourceName"))
    GetBackendAuthRequest.struct_class = Types::GetBackendAuthRequest

    GetBackendAuthRespObj.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "appId"))
    GetBackendAuthRespObj.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "backendEnvironmentName"))
    GetBackendAuthRespObj.add_member(:error, Shapes::ShapeRef.new(shape: __string, location_name: "error"))
    GetBackendAuthRespObj.add_member(:resource_config, Shapes::ShapeRef.new(shape: CreateBackendAuthResourceConfig, location_name: "resourceConfig"))
    GetBackendAuthRespObj.add_member(:resource_name, Shapes::ShapeRef.new(shape: __string, location_name: "resourceName"))
    GetBackendAuthRespObj.struct_class = Types::GetBackendAuthRespObj

    GetBackendAuthResponse.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, location_name: "appId"))
    GetBackendAuthResponse.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, location_name: "backendEnvironmentName"))
    GetBackendAuthResponse.add_member(:error, Shapes::ShapeRef.new(shape: __string, location_name: "error"))
    GetBackendAuthResponse.add_member(:resource_config, Shapes::ShapeRef.new(shape: CreateBackendAuthResourceConfig, location_name: "resourceConfig"))
    GetBackendAuthResponse.add_member(:resource_name, Shapes::ShapeRef.new(shape: __string, location_name: "resourceName"))
    GetBackendAuthResponse.struct_class = Types::GetBackendAuthResponse

    GetBackendJobRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "appId"))
    GetBackendJobRequest.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "backendEnvironmentName"))
    GetBackendJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "jobId"))
    GetBackendJobRequest.struct_class = Types::GetBackendJobRequest

    GetBackendJobResponse.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, location_name: "appId"))
    GetBackendJobResponse.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, location_name: "backendEnvironmentName"))
    GetBackendJobResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: __string, location_name: "createTime"))
    GetBackendJobResponse.add_member(:error, Shapes::ShapeRef.new(shape: __string, location_name: "error"))
    GetBackendJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, location_name: "jobId"))
    GetBackendJobResponse.add_member(:operation, Shapes::ShapeRef.new(shape: __string, location_name: "operation"))
    GetBackendJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: __string, location_name: "status"))
    GetBackendJobResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: __string, location_name: "updateTime"))
    GetBackendJobResponse.struct_class = Types::GetBackendJobResponse

    GetBackendReqObj.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, location_name: "backendEnvironmentName"))
    GetBackendReqObj.struct_class = Types::GetBackendReqObj

    GetBackendRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "appId"))
    GetBackendRequest.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, location_name: "backendEnvironmentName"))
    GetBackendRequest.struct_class = Types::GetBackendRequest

    GetBackendRespObj.add_member(:amplify_feature_flags, Shapes::ShapeRef.new(shape: __string, location_name: "amplifyFeatureFlags"))
    GetBackendRespObj.add_member(:amplify_meta_config, Shapes::ShapeRef.new(shape: __string, location_name: "amplifyMetaConfig"))
    GetBackendRespObj.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "appId"))
    GetBackendRespObj.add_member(:app_name, Shapes::ShapeRef.new(shape: __string, location_name: "appName"))
    GetBackendRespObj.add_member(:backend_environment_list, Shapes::ShapeRef.new(shape: ListOf__string, location_name: "backendEnvironmentList"))
    GetBackendRespObj.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, location_name: "backendEnvironmentName"))
    GetBackendRespObj.add_member(:error, Shapes::ShapeRef.new(shape: __string, location_name: "error"))
    GetBackendRespObj.struct_class = Types::GetBackendRespObj

    GetBackendResponse.add_member(:amplify_feature_flags, Shapes::ShapeRef.new(shape: __string, location_name: "amplifyFeatureFlags"))
    GetBackendResponse.add_member(:amplify_meta_config, Shapes::ShapeRef.new(shape: __string, location_name: "amplifyMetaConfig"))
    GetBackendResponse.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, location_name: "appId"))
    GetBackendResponse.add_member(:app_name, Shapes::ShapeRef.new(shape: __string, location_name: "appName"))
    GetBackendResponse.add_member(:backend_environment_list, Shapes::ShapeRef.new(shape: ListOf__string, location_name: "backendEnvironmentList"))
    GetBackendResponse.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, location_name: "backendEnvironmentName"))
    GetBackendResponse.add_member(:error, Shapes::ShapeRef.new(shape: __string, location_name: "error"))
    GetBackendResponse.struct_class = Types::GetBackendResponse

    GetBackendStorageReqObj.add_member(:resource_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "resourceName"))
    GetBackendStorageReqObj.struct_class = Types::GetBackendStorageReqObj

    GetBackendStorageRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "appId"))
    GetBackendStorageRequest.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "backendEnvironmentName"))
    GetBackendStorageRequest.add_member(:resource_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "resourceName"))
    GetBackendStorageRequest.struct_class = Types::GetBackendStorageRequest

    GetBackendStorageResourceConfig.add_member(:bucket_name, Shapes::ShapeRef.new(shape: __string, location_name: "bucketName"))
    GetBackendStorageResourceConfig.add_member(:imported, Shapes::ShapeRef.new(shape: __boolean, required: true, location_name: "imported"))
    GetBackendStorageResourceConfig.add_member(:permissions, Shapes::ShapeRef.new(shape: BackendStoragePermissions, location_name: "permissions"))
    GetBackendStorageResourceConfig.add_member(:service_name, Shapes::ShapeRef.new(shape: ServiceName, required: true, location_name: "serviceName"))
    GetBackendStorageResourceConfig.struct_class = Types::GetBackendStorageResourceConfig

    GetBackendStorageRespObj.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "appId"))
    GetBackendStorageRespObj.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "backendEnvironmentName"))
    GetBackendStorageRespObj.add_member(:resource_config, Shapes::ShapeRef.new(shape: GetBackendStorageResourceConfig, location_name: "resourceConfig"))
    GetBackendStorageRespObj.add_member(:resource_name, Shapes::ShapeRef.new(shape: __string, location_name: "resourceName"))
    GetBackendStorageRespObj.struct_class = Types::GetBackendStorageRespObj

    GetBackendStorageResponse.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, location_name: "appId"))
    GetBackendStorageResponse.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, location_name: "backendEnvironmentName"))
    GetBackendStorageResponse.add_member(:resource_config, Shapes::ShapeRef.new(shape: GetBackendStorageResourceConfig, location_name: "resourceConfig"))
    GetBackendStorageResponse.add_member(:resource_name, Shapes::ShapeRef.new(shape: __string, location_name: "resourceName"))
    GetBackendStorageResponse.struct_class = Types::GetBackendStorageResponse

    GetTokenRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "appId"))
    GetTokenRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "sessionId"))
    GetTokenRequest.struct_class = Types::GetTokenRequest

    GetTokenRespObj.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "appId"))
    GetTokenRespObj.add_member(:challenge_code, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "challengeCode"))
    GetTokenRespObj.add_member(:session_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "sessionId"))
    GetTokenRespObj.add_member(:ttl, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ttl"))
    GetTokenRespObj.struct_class = Types::GetTokenRespObj

    GetTokenResponse.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, location_name: "appId"))
    GetTokenResponse.add_member(:challenge_code, Shapes::ShapeRef.new(shape: __string, location_name: "challengeCode"))
    GetTokenResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: __string, location_name: "sessionId"))
    GetTokenResponse.add_member(:ttl, Shapes::ShapeRef.new(shape: __string, location_name: "ttl"))
    GetTokenResponse.struct_class = Types::GetTokenResponse

    ImportBackendAuthReqObj.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: __string, location_name: "identityPoolId"))
    ImportBackendAuthReqObj.add_member(:native_client_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "nativeClientId"))
    ImportBackendAuthReqObj.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "userPoolId"))
    ImportBackendAuthReqObj.add_member(:web_client_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "webClientId"))
    ImportBackendAuthReqObj.struct_class = Types::ImportBackendAuthReqObj

    ImportBackendAuthRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "appId"))
    ImportBackendAuthRequest.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "backendEnvironmentName"))
    ImportBackendAuthRequest.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: __string, location_name: "identityPoolId"))
    ImportBackendAuthRequest.add_member(:native_client_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "nativeClientId"))
    ImportBackendAuthRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "userPoolId"))
    ImportBackendAuthRequest.add_member(:web_client_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "webClientId"))
    ImportBackendAuthRequest.struct_class = Types::ImportBackendAuthRequest

    ImportBackendAuthResponse.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, location_name: "appId"))
    ImportBackendAuthResponse.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, location_name: "backendEnvironmentName"))
    ImportBackendAuthResponse.add_member(:error, Shapes::ShapeRef.new(shape: __string, location_name: "error"))
    ImportBackendAuthResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, location_name: "jobId"))
    ImportBackendAuthResponse.add_member(:operation, Shapes::ShapeRef.new(shape: __string, location_name: "operation"))
    ImportBackendAuthResponse.add_member(:status, Shapes::ShapeRef.new(shape: __string, location_name: "status"))
    ImportBackendAuthResponse.struct_class = Types::ImportBackendAuthResponse

    ImportBackendStorageReqObj.add_member(:bucket_name, Shapes::ShapeRef.new(shape: __string, location_name: "bucketName"))
    ImportBackendStorageReqObj.add_member(:service_name, Shapes::ShapeRef.new(shape: ServiceName, required: true, location_name: "serviceName"))
    ImportBackendStorageReqObj.struct_class = Types::ImportBackendStorageReqObj

    ImportBackendStorageRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "appId"))
    ImportBackendStorageRequest.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "backendEnvironmentName"))
    ImportBackendStorageRequest.add_member(:bucket_name, Shapes::ShapeRef.new(shape: __string, location_name: "bucketName"))
    ImportBackendStorageRequest.add_member(:service_name, Shapes::ShapeRef.new(shape: ServiceName, required: true, location_name: "serviceName"))
    ImportBackendStorageRequest.struct_class = Types::ImportBackendStorageRequest

    ImportBackendStorageResponse.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, location_name: "appId"))
    ImportBackendStorageResponse.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, location_name: "backendEnvironmentName"))
    ImportBackendStorageResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, location_name: "jobId"))
    ImportBackendStorageResponse.add_member(:status, Shapes::ShapeRef.new(shape: __string, location_name: "status"))
    ImportBackendStorageResponse.struct_class = Types::ImportBackendStorageResponse

    InternalServiceException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    InternalServiceException.struct_class = Types::InternalServiceException

    LimitExceededException.add_member(:limit_type, Shapes::ShapeRef.new(shape: __string, location_name: "limitType"))
    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListBackendJobReqObj.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, location_name: "jobId"))
    ListBackendJobReqObj.add_member(:max_results, Shapes::ShapeRef.new(shape: __integerMin1Max25, location_name: "maxResults"))
    ListBackendJobReqObj.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListBackendJobReqObj.add_member(:operation, Shapes::ShapeRef.new(shape: __string, location_name: "operation"))
    ListBackendJobReqObj.add_member(:status, Shapes::ShapeRef.new(shape: __string, location_name: "status"))
    ListBackendJobReqObj.struct_class = Types::ListBackendJobReqObj

    ListBackendJobRespObj.add_member(:jobs, Shapes::ShapeRef.new(shape: ListOfBackendJobRespObj, location_name: "jobs"))
    ListBackendJobRespObj.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListBackendJobRespObj.struct_class = Types::ListBackendJobRespObj

    ListBackendJobsRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "appId"))
    ListBackendJobsRequest.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "backendEnvironmentName"))
    ListBackendJobsRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, location_name: "jobId"))
    ListBackendJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __integerMin1Max25, location_name: "maxResults"))
    ListBackendJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListBackendJobsRequest.add_member(:operation, Shapes::ShapeRef.new(shape: __string, location_name: "operation"))
    ListBackendJobsRequest.add_member(:status, Shapes::ShapeRef.new(shape: __string, location_name: "status"))
    ListBackendJobsRequest.struct_class = Types::ListBackendJobsRequest

    ListBackendJobsResponse.add_member(:jobs, Shapes::ShapeRef.new(shape: ListOfBackendJobRespObj, location_name: "jobs"))
    ListBackendJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListBackendJobsResponse.struct_class = Types::ListBackendJobsResponse

    ListOfAdditionalConstraintsElement.member = Shapes::ShapeRef.new(shape: AdditionalConstraintsElement)

    ListOfAuthenticatedElement.member = Shapes::ShapeRef.new(shape: AuthenticatedElement)

    ListOfBackendAPIAuthType.member = Shapes::ShapeRef.new(shape: BackendAPIAuthType)

    ListOfBackendJobRespObj.member = Shapes::ShapeRef.new(shape: BackendJobRespObj)

    ListOfMfaTypesElement.member = Shapes::ShapeRef.new(shape: MfaTypesElement)

    ListOfOAuthScopesElement.member = Shapes::ShapeRef.new(shape: OAuthScopesElement)

    ListOfRequiredSignUpAttributesElement.member = Shapes::ShapeRef.new(shape: RequiredSignUpAttributesElement)

    ListOfS3BucketInfo.member = Shapes::ShapeRef.new(shape: S3BucketInfo)

    ListOfUnAuthenticatedElement.member = Shapes::ShapeRef.new(shape: UnAuthenticatedElement)

    ListOf__string.member = Shapes::ShapeRef.new(shape: __string)

    ListS3BucketsReqObj.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListS3BucketsReqObj.struct_class = Types::ListS3BucketsReqObj

    ListS3BucketsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListS3BucketsRequest.struct_class = Types::ListS3BucketsRequest

    ListS3BucketsRespObj.add_member(:buckets, Shapes::ShapeRef.new(shape: ListOfS3BucketInfo, required: true, location_name: "buckets"))
    ListS3BucketsRespObj.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListS3BucketsRespObj.struct_class = Types::ListS3BucketsRespObj

    ListS3BucketsResponse.add_member(:buckets, Shapes::ShapeRef.new(shape: ListOfS3BucketInfo, location_name: "buckets"))
    ListS3BucketsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListS3BucketsResponse.struct_class = Types::ListS3BucketsResponse

    LoginAuthConfigReqObj.add_member(:aws_cognito_identity_pool_id, Shapes::ShapeRef.new(shape: __string, location_name: "aws_cognito_identity_pool_id"))
    LoginAuthConfigReqObj.add_member(:aws_cognito_region, Shapes::ShapeRef.new(shape: __string, location_name: "aws_cognito_region"))
    LoginAuthConfigReqObj.add_member(:aws_user_pools_id, Shapes::ShapeRef.new(shape: __string, location_name: "aws_user_pools_id"))
    LoginAuthConfigReqObj.add_member(:aws_user_pools_web_client_id, Shapes::ShapeRef.new(shape: __string, location_name: "aws_user_pools_web_client_id"))
    LoginAuthConfigReqObj.struct_class = Types::LoginAuthConfigReqObj

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    NotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: __string, location_name: "resourceType"))
    NotFoundException.struct_class = Types::NotFoundException

    RemoveAllBackendsReqObj.add_member(:clean_amplify_app, Shapes::ShapeRef.new(shape: __boolean, location_name: "cleanAmplifyApp"))
    RemoveAllBackendsReqObj.struct_class = Types::RemoveAllBackendsReqObj

    RemoveAllBackendsRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "appId"))
    RemoveAllBackendsRequest.add_member(:clean_amplify_app, Shapes::ShapeRef.new(shape: __boolean, location_name: "cleanAmplifyApp"))
    RemoveAllBackendsRequest.struct_class = Types::RemoveAllBackendsRequest

    RemoveAllBackendsRespObj.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "appId"))
    RemoveAllBackendsRespObj.add_member(:error, Shapes::ShapeRef.new(shape: __string, location_name: "error"))
    RemoveAllBackendsRespObj.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, location_name: "jobId"))
    RemoveAllBackendsRespObj.add_member(:operation, Shapes::ShapeRef.new(shape: __string, location_name: "operation"))
    RemoveAllBackendsRespObj.add_member(:status, Shapes::ShapeRef.new(shape: __string, location_name: "status"))
    RemoveAllBackendsRespObj.struct_class = Types::RemoveAllBackendsRespObj

    RemoveAllBackendsResponse.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, location_name: "appId"))
    RemoveAllBackendsResponse.add_member(:error, Shapes::ShapeRef.new(shape: __string, location_name: "error"))
    RemoveAllBackendsResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, location_name: "jobId"))
    RemoveAllBackendsResponse.add_member(:operation, Shapes::ShapeRef.new(shape: __string, location_name: "operation"))
    RemoveAllBackendsResponse.add_member(:status, Shapes::ShapeRef.new(shape: __string, location_name: "status"))
    RemoveAllBackendsResponse.struct_class = Types::RemoveAllBackendsResponse

    RemoveBackendAuthReqObj.add_member(:resource_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "resourceName"))
    RemoveBackendAuthReqObj.struct_class = Types::RemoveBackendAuthReqObj

    RemoveBackendConfigRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "appId"))
    RemoveBackendConfigRequest.struct_class = Types::RemoveBackendConfigRequest

    RemoveBackendConfigRespObj.add_member(:error, Shapes::ShapeRef.new(shape: __string, location_name: "error"))
    RemoveBackendConfigRespObj.struct_class = Types::RemoveBackendConfigRespObj

    RemoveBackendConfigResponse.add_member(:error, Shapes::ShapeRef.new(shape: __string, location_name: "error"))
    RemoveBackendConfigResponse.struct_class = Types::RemoveBackendConfigResponse

    RemoveBackendStorageReqObj.add_member(:resource_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "resourceName"))
    RemoveBackendStorageReqObj.add_member(:service_name, Shapes::ShapeRef.new(shape: ServiceName, required: true, location_name: "serviceName"))
    RemoveBackendStorageReqObj.struct_class = Types::RemoveBackendStorageReqObj

    ResourceConfig.struct_class = Types::ResourceConfig

    S3BucketInfo.add_member(:creation_date, Shapes::ShapeRef.new(shape: __string, location_name: "creationDate"))
    S3BucketInfo.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    S3BucketInfo.struct_class = Types::S3BucketInfo

    Settings.add_member(:mfa_types, Shapes::ShapeRef.new(shape: ListOfMfaTypesElement, location_name: "mfaTypes"))
    Settings.add_member(:sms_message, Shapes::ShapeRef.new(shape: __string, location_name: "smsMessage"))
    Settings.struct_class = Types::Settings

    SmsSettings.add_member(:sms_message, Shapes::ShapeRef.new(shape: __string, location_name: "smsMessage"))
    SmsSettings.struct_class = Types::SmsSettings

    SocialProviderSettings.add_member(:facebook, Shapes::ShapeRef.new(shape: BackendAuthSocialProviderConfig, location_name: "Facebook"))
    SocialProviderSettings.add_member(:google, Shapes::ShapeRef.new(shape: BackendAuthSocialProviderConfig, location_name: "Google"))
    SocialProviderSettings.add_member(:login_with_amazon, Shapes::ShapeRef.new(shape: BackendAuthSocialProviderConfig, location_name: "LoginWithAmazon"))
    SocialProviderSettings.add_member(:sign_in_with_apple, Shapes::ShapeRef.new(shape: BackendAuthAppleProviderConfig, location_name: "SignInWithApple"))
    SocialProviderSettings.struct_class = Types::SocialProviderSettings

    TooManyRequestsException.add_member(:limit_type, Shapes::ShapeRef.new(shape: __string, location_name: "limitType"))
    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    UpdateBackendAPIRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "appId"))
    UpdateBackendAPIRequest.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "backendEnvironmentName"))
    UpdateBackendAPIRequest.add_member(:resource_config, Shapes::ShapeRef.new(shape: BackendAPIResourceConfig, location_name: "resourceConfig"))
    UpdateBackendAPIRequest.add_member(:resource_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "resourceName"))
    UpdateBackendAPIRequest.struct_class = Types::UpdateBackendAPIRequest

    UpdateBackendAPIResponse.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, location_name: "appId"))
    UpdateBackendAPIResponse.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, location_name: "backendEnvironmentName"))
    UpdateBackendAPIResponse.add_member(:error, Shapes::ShapeRef.new(shape: __string, location_name: "error"))
    UpdateBackendAPIResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, location_name: "jobId"))
    UpdateBackendAPIResponse.add_member(:operation, Shapes::ShapeRef.new(shape: __string, location_name: "operation"))
    UpdateBackendAPIResponse.add_member(:status, Shapes::ShapeRef.new(shape: __string, location_name: "status"))
    UpdateBackendAPIResponse.struct_class = Types::UpdateBackendAPIResponse

    UpdateBackendAuthForgotPasswordConfig.add_member(:delivery_method, Shapes::ShapeRef.new(shape: DeliveryMethod, location_name: "deliveryMethod"))
    UpdateBackendAuthForgotPasswordConfig.add_member(:email_settings, Shapes::ShapeRef.new(shape: EmailSettings, location_name: "emailSettings"))
    UpdateBackendAuthForgotPasswordConfig.add_member(:sms_settings, Shapes::ShapeRef.new(shape: SmsSettings, location_name: "smsSettings"))
    UpdateBackendAuthForgotPasswordConfig.struct_class = Types::UpdateBackendAuthForgotPasswordConfig

    UpdateBackendAuthIdentityPoolConfig.add_member(:unauthenticated_login, Shapes::ShapeRef.new(shape: __boolean, location_name: "unauthenticatedLogin"))
    UpdateBackendAuthIdentityPoolConfig.struct_class = Types::UpdateBackendAuthIdentityPoolConfig

    UpdateBackendAuthMFAConfig.add_member(:mfa_mode, Shapes::ShapeRef.new(shape: MFAMode, location_name: "MFAMode"))
    UpdateBackendAuthMFAConfig.add_member(:settings, Shapes::ShapeRef.new(shape: Settings, location_name: "settings"))
    UpdateBackendAuthMFAConfig.struct_class = Types::UpdateBackendAuthMFAConfig

    UpdateBackendAuthOAuthConfig.add_member(:domain_prefix, Shapes::ShapeRef.new(shape: __string, location_name: "domainPrefix"))
    UpdateBackendAuthOAuthConfig.add_member(:o_auth_grant_type, Shapes::ShapeRef.new(shape: OAuthGrantType, location_name: "oAuthGrantType"))
    UpdateBackendAuthOAuthConfig.add_member(:o_auth_scopes, Shapes::ShapeRef.new(shape: ListOfOAuthScopesElement, location_name: "oAuthScopes"))
    UpdateBackendAuthOAuthConfig.add_member(:redirect_sign_in_ur_is, Shapes::ShapeRef.new(shape: ListOf__string, location_name: "redirectSignInURIs"))
    UpdateBackendAuthOAuthConfig.add_member(:redirect_sign_out_ur_is, Shapes::ShapeRef.new(shape: ListOf__string, location_name: "redirectSignOutURIs"))
    UpdateBackendAuthOAuthConfig.add_member(:social_provider_settings, Shapes::ShapeRef.new(shape: SocialProviderSettings, location_name: "socialProviderSettings"))
    UpdateBackendAuthOAuthConfig.struct_class = Types::UpdateBackendAuthOAuthConfig

    UpdateBackendAuthPasswordPolicyConfig.add_member(:additional_constraints, Shapes::ShapeRef.new(shape: ListOfAdditionalConstraintsElement, location_name: "additionalConstraints"))
    UpdateBackendAuthPasswordPolicyConfig.add_member(:minimum_length, Shapes::ShapeRef.new(shape: __double, location_name: "minimumLength"))
    UpdateBackendAuthPasswordPolicyConfig.struct_class = Types::UpdateBackendAuthPasswordPolicyConfig

    UpdateBackendAuthReqObj.add_member(:resource_config, Shapes::ShapeRef.new(shape: UpdateBackendAuthResourceConfig, required: true, location_name: "resourceConfig"))
    UpdateBackendAuthReqObj.add_member(:resource_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "resourceName"))
    UpdateBackendAuthReqObj.struct_class = Types::UpdateBackendAuthReqObj

    UpdateBackendAuthRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "appId"))
    UpdateBackendAuthRequest.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "backendEnvironmentName"))
    UpdateBackendAuthRequest.add_member(:resource_config, Shapes::ShapeRef.new(shape: UpdateBackendAuthResourceConfig, required: true, location_name: "resourceConfig"))
    UpdateBackendAuthRequest.add_member(:resource_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "resourceName"))
    UpdateBackendAuthRequest.struct_class = Types::UpdateBackendAuthRequest

    UpdateBackendAuthResourceConfig.add_member(:auth_resources, Shapes::ShapeRef.new(shape: AuthResources, required: true, location_name: "authResources"))
    UpdateBackendAuthResourceConfig.add_member(:identity_pool_configs, Shapes::ShapeRef.new(shape: UpdateBackendAuthIdentityPoolConfig, location_name: "identityPoolConfigs"))
    UpdateBackendAuthResourceConfig.add_member(:service, Shapes::ShapeRef.new(shape: Service, required: true, location_name: "service"))
    UpdateBackendAuthResourceConfig.add_member(:user_pool_configs, Shapes::ShapeRef.new(shape: UpdateBackendAuthUserPoolConfig, required: true, location_name: "userPoolConfigs"))
    UpdateBackendAuthResourceConfig.struct_class = Types::UpdateBackendAuthResourceConfig

    UpdateBackendAuthResponse.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, location_name: "appId"))
    UpdateBackendAuthResponse.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, location_name: "backendEnvironmentName"))
    UpdateBackendAuthResponse.add_member(:error, Shapes::ShapeRef.new(shape: __string, location_name: "error"))
    UpdateBackendAuthResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, location_name: "jobId"))
    UpdateBackendAuthResponse.add_member(:operation, Shapes::ShapeRef.new(shape: __string, location_name: "operation"))
    UpdateBackendAuthResponse.add_member(:status, Shapes::ShapeRef.new(shape: __string, location_name: "status"))
    UpdateBackendAuthResponse.struct_class = Types::UpdateBackendAuthResponse

    UpdateBackendAuthUserPoolConfig.add_member(:forgot_password, Shapes::ShapeRef.new(shape: UpdateBackendAuthForgotPasswordConfig, location_name: "forgotPassword"))
    UpdateBackendAuthUserPoolConfig.add_member(:mfa, Shapes::ShapeRef.new(shape: UpdateBackendAuthMFAConfig, location_name: "mfa"))
    UpdateBackendAuthUserPoolConfig.add_member(:o_auth, Shapes::ShapeRef.new(shape: UpdateBackendAuthOAuthConfig, location_name: "oAuth"))
    UpdateBackendAuthUserPoolConfig.add_member(:password_policy, Shapes::ShapeRef.new(shape: UpdateBackendAuthPasswordPolicyConfig, location_name: "passwordPolicy"))
    UpdateBackendAuthUserPoolConfig.add_member(:verification_message, Shapes::ShapeRef.new(shape: UpdateBackendAuthVerificationMessageConfig, location_name: "verificationMessage"))
    UpdateBackendAuthUserPoolConfig.struct_class = Types::UpdateBackendAuthUserPoolConfig

    UpdateBackendAuthVerificationMessageConfig.add_member(:delivery_method, Shapes::ShapeRef.new(shape: DeliveryMethod, required: true, location_name: "deliveryMethod"))
    UpdateBackendAuthVerificationMessageConfig.add_member(:email_settings, Shapes::ShapeRef.new(shape: EmailSettings, location_name: "emailSettings"))
    UpdateBackendAuthVerificationMessageConfig.add_member(:sms_settings, Shapes::ShapeRef.new(shape: SmsSettings, location_name: "smsSettings"))
    UpdateBackendAuthVerificationMessageConfig.struct_class = Types::UpdateBackendAuthVerificationMessageConfig

    UpdateBackendConfigReqObj.add_member(:login_auth_config, Shapes::ShapeRef.new(shape: LoginAuthConfigReqObj, location_name: "loginAuthConfig"))
    UpdateBackendConfigReqObj.struct_class = Types::UpdateBackendConfigReqObj

    UpdateBackendConfigRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "appId"))
    UpdateBackendConfigRequest.add_member(:login_auth_config, Shapes::ShapeRef.new(shape: LoginAuthConfigReqObj, location_name: "loginAuthConfig"))
    UpdateBackendConfigRequest.struct_class = Types::UpdateBackendConfigRequest

    UpdateBackendConfigResponse.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, location_name: "appId"))
    UpdateBackendConfigResponse.add_member(:backend_manager_app_id, Shapes::ShapeRef.new(shape: __string, location_name: "backendManagerAppId"))
    UpdateBackendConfigResponse.add_member(:error, Shapes::ShapeRef.new(shape: __string, location_name: "error"))
    UpdateBackendConfigResponse.add_member(:login_auth_config, Shapes::ShapeRef.new(shape: LoginAuthConfigReqObj, location_name: "loginAuthConfig"))
    UpdateBackendConfigResponse.struct_class = Types::UpdateBackendConfigResponse

    UpdateBackendJobRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "appId"))
    UpdateBackendJobRequest.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "backendEnvironmentName"))
    UpdateBackendJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "jobId"))
    UpdateBackendJobRequest.add_member(:operation, Shapes::ShapeRef.new(shape: __string, location_name: "operation"))
    UpdateBackendJobRequest.add_member(:status, Shapes::ShapeRef.new(shape: __string, location_name: "status"))
    UpdateBackendJobRequest.struct_class = Types::UpdateBackendJobRequest

    UpdateBackendJobResponse.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, location_name: "appId"))
    UpdateBackendJobResponse.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, location_name: "backendEnvironmentName"))
    UpdateBackendJobResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: __string, location_name: "createTime"))
    UpdateBackendJobResponse.add_member(:error, Shapes::ShapeRef.new(shape: __string, location_name: "error"))
    UpdateBackendJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, location_name: "jobId"))
    UpdateBackendJobResponse.add_member(:operation, Shapes::ShapeRef.new(shape: __string, location_name: "operation"))
    UpdateBackendJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: __string, location_name: "status"))
    UpdateBackendJobResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: __string, location_name: "updateTime"))
    UpdateBackendJobResponse.struct_class = Types::UpdateBackendJobResponse

    UpdateBackendStorageReqObj.add_member(:resource_config, Shapes::ShapeRef.new(shape: UpdateBackendStorageResourceConfig, required: true, location_name: "resourceConfig"))
    UpdateBackendStorageReqObj.add_member(:resource_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "resourceName"))
    UpdateBackendStorageReqObj.struct_class = Types::UpdateBackendStorageReqObj

    UpdateBackendStorageRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "appId"))
    UpdateBackendStorageRequest.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "backendEnvironmentName"))
    UpdateBackendStorageRequest.add_member(:resource_config, Shapes::ShapeRef.new(shape: UpdateBackendStorageResourceConfig, required: true, location_name: "resourceConfig"))
    UpdateBackendStorageRequest.add_member(:resource_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "resourceName"))
    UpdateBackendStorageRequest.struct_class = Types::UpdateBackendStorageRequest

    UpdateBackendStorageResourceConfig.add_member(:permissions, Shapes::ShapeRef.new(shape: BackendStoragePermissions, required: true, location_name: "permissions"))
    UpdateBackendStorageResourceConfig.add_member(:service_name, Shapes::ShapeRef.new(shape: ServiceName, required: true, location_name: "serviceName"))
    UpdateBackendStorageResourceConfig.struct_class = Types::UpdateBackendStorageResourceConfig

    UpdateBackendStorageResponse.add_member(:app_id, Shapes::ShapeRef.new(shape: __string, location_name: "appId"))
    UpdateBackendStorageResponse.add_member(:backend_environment_name, Shapes::ShapeRef.new(shape: __string, location_name: "backendEnvironmentName"))
    UpdateBackendStorageResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, location_name: "jobId"))
    UpdateBackendStorageResponse.add_member(:status, Shapes::ShapeRef.new(shape: __string, location_name: "status"))
    UpdateBackendStorageResponse.struct_class = Types::UpdateBackendStorageResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-08-11"

      api.metadata = {
        "apiVersion" => "2020-08-11",
        "endpointPrefix" => "amplifybackend",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AmplifyBackend",
        "serviceId" => "AmplifyBackend",
        "signatureVersion" => "v4",
        "signingName" => "amplifybackend",
        "uid" => "amplifybackend-2020-08-11",
      }

      api.add_operation(:clone_backend, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CloneBackend"
        o.http_method = "POST"
        o.http_request_uri = "/backend/{appId}/environments/{backendEnvironmentName}/clone"
        o.input = Shapes::ShapeRef.new(shape: CloneBackendRequest)
        o.output = Shapes::ShapeRef.new(shape: CloneBackendResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:create_backend, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBackend"
        o.http_method = "POST"
        o.http_request_uri = "/backend"
        o.input = Shapes::ShapeRef.new(shape: CreateBackendRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBackendResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:create_backend_api, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBackendAPI"
        o.http_method = "POST"
        o.http_request_uri = "/backend/{appId}/api"
        o.input = Shapes::ShapeRef.new(shape: CreateBackendAPIRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBackendAPIResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:create_backend_auth, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBackendAuth"
        o.http_method = "POST"
        o.http_request_uri = "/backend/{appId}/auth"
        o.input = Shapes::ShapeRef.new(shape: CreateBackendAuthRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBackendAuthResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:create_backend_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBackendConfig"
        o.http_method = "POST"
        o.http_request_uri = "/backend/{appId}/config"
        o.input = Shapes::ShapeRef.new(shape: CreateBackendConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBackendConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:create_backend_storage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBackendStorage"
        o.http_method = "POST"
        o.http_request_uri = "/backend/{appId}/storage"
        o.input = Shapes::ShapeRef.new(shape: CreateBackendStorageRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBackendStorageResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:create_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateToken"
        o.http_method = "POST"
        o.http_request_uri = "/backend/{appId}/challenge"
        o.input = Shapes::ShapeRef.new(shape: CreateTokenRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTokenResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:delete_backend, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBackend"
        o.http_method = "POST"
        o.http_request_uri = "/backend/{appId}/environments/{backendEnvironmentName}/remove"
        o.input = Shapes::ShapeRef.new(shape: DeleteBackendRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteBackendResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:delete_backend_api, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBackendAPI"
        o.http_method = "POST"
        o.http_request_uri = "/backend/{appId}/api/{backendEnvironmentName}/remove"
        o.input = Shapes::ShapeRef.new(shape: DeleteBackendAPIRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteBackendAPIResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:delete_backend_auth, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBackendAuth"
        o.http_method = "POST"
        o.http_request_uri = "/backend/{appId}/auth/{backendEnvironmentName}/remove"
        o.input = Shapes::ShapeRef.new(shape: DeleteBackendAuthRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteBackendAuthResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:delete_backend_storage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBackendStorage"
        o.http_method = "POST"
        o.http_request_uri = "/backend/{appId}/storage/{backendEnvironmentName}/remove"
        o.input = Shapes::ShapeRef.new(shape: DeleteBackendStorageRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteBackendStorageResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:delete_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteToken"
        o.http_method = "POST"
        o.http_request_uri = "/backend/{appId}/challenge/{sessionId}/remove"
        o.input = Shapes::ShapeRef.new(shape: DeleteTokenRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTokenResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:generate_backend_api_models, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GenerateBackendAPIModels"
        o.http_method = "POST"
        o.http_request_uri = "/backend/{appId}/api/{backendEnvironmentName}/generateModels"
        o.input = Shapes::ShapeRef.new(shape: GenerateBackendAPIModelsRequest)
        o.output = Shapes::ShapeRef.new(shape: GenerateBackendAPIModelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_backend, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBackend"
        o.http_method = "POST"
        o.http_request_uri = "/backend/{appId}/details"
        o.input = Shapes::ShapeRef.new(shape: GetBackendRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBackendResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_backend_api, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBackendAPI"
        o.http_method = "POST"
        o.http_request_uri = "/backend/{appId}/api/{backendEnvironmentName}/details"
        o.input = Shapes::ShapeRef.new(shape: GetBackendAPIRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBackendAPIResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_backend_api_models, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBackendAPIModels"
        o.http_method = "POST"
        o.http_request_uri = "/backend/{appId}/api/{backendEnvironmentName}/getModels"
        o.input = Shapes::ShapeRef.new(shape: GetBackendAPIModelsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBackendAPIModelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_backend_auth, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBackendAuth"
        o.http_method = "POST"
        o.http_request_uri = "/backend/{appId}/auth/{backendEnvironmentName}/details"
        o.input = Shapes::ShapeRef.new(shape: GetBackendAuthRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBackendAuthResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_backend_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBackendJob"
        o.http_method = "GET"
        o.http_request_uri = "/backend/{appId}/job/{backendEnvironmentName}/{jobId}"
        o.input = Shapes::ShapeRef.new(shape: GetBackendJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBackendJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_backend_storage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBackendStorage"
        o.http_method = "POST"
        o.http_request_uri = "/backend/{appId}/storage/{backendEnvironmentName}/details"
        o.input = Shapes::ShapeRef.new(shape: GetBackendStorageRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBackendStorageResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetToken"
        o.http_method = "GET"
        o.http_request_uri = "/backend/{appId}/challenge/{sessionId}"
        o.input = Shapes::ShapeRef.new(shape: GetTokenRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTokenResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:import_backend_auth, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportBackendAuth"
        o.http_method = "POST"
        o.http_request_uri = "/backend/{appId}/auth/{backendEnvironmentName}/import"
        o.input = Shapes::ShapeRef.new(shape: ImportBackendAuthRequest)
        o.output = Shapes::ShapeRef.new(shape: ImportBackendAuthResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:import_backend_storage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportBackendStorage"
        o.http_method = "POST"
        o.http_request_uri = "/backend/{appId}/storage/{backendEnvironmentName}/import"
        o.input = Shapes::ShapeRef.new(shape: ImportBackendStorageRequest)
        o.output = Shapes::ShapeRef.new(shape: ImportBackendStorageResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:list_backend_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBackendJobs"
        o.http_method = "POST"
        o.http_request_uri = "/backend/{appId}/job/{backendEnvironmentName}"
        o.input = Shapes::ShapeRef.new(shape: ListBackendJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBackendJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_s3_buckets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListS3Buckets"
        o.http_method = "POST"
        o.http_request_uri = "/s3Buckets"
        o.input = Shapes::ShapeRef.new(shape: ListS3BucketsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListS3BucketsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:remove_all_backends, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveAllBackends"
        o.http_method = "POST"
        o.http_request_uri = "/backend/{appId}/remove"
        o.input = Shapes::ShapeRef.new(shape: RemoveAllBackendsRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveAllBackendsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:remove_backend_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveBackendConfig"
        o.http_method = "POST"
        o.http_request_uri = "/backend/{appId}/config/remove"
        o.input = Shapes::ShapeRef.new(shape: RemoveBackendConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveBackendConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:update_backend_api, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBackendAPI"
        o.http_method = "POST"
        o.http_request_uri = "/backend/{appId}/api/{backendEnvironmentName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateBackendAPIRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBackendAPIResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:update_backend_auth, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBackendAuth"
        o.http_method = "POST"
        o.http_request_uri = "/backend/{appId}/auth/{backendEnvironmentName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateBackendAuthRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBackendAuthResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:update_backend_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBackendConfig"
        o.http_method = "POST"
        o.http_request_uri = "/backend/{appId}/config/update"
        o.input = Shapes::ShapeRef.new(shape: UpdateBackendConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBackendConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:update_backend_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBackendJob"
        o.http_method = "POST"
        o.http_request_uri = "/backend/{appId}/job/{backendEnvironmentName}/{jobId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateBackendJobRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBackendJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:update_backend_storage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBackendStorage"
        o.http_method = "POST"
        o.http_request_uri = "/backend/{appId}/storage/{backendEnvironmentName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateBackendStorageRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBackendStorageResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)
    end

  end
end
